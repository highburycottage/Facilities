﻿using MBCFM.Models;
using PWDTK_DOTNET451;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;

namespace MBCFM.Controllers
{
    [Authorize]
    public class AccountController : Controller
    {
        //Number of hash iterations
        private const int iterations = 10002;

        //Salt length
        private const int saltSize = PWDTK.CDefaultSaltLength + 2;

        [AllowAnonymous]
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [AllowAnonymous]
        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            bool success = false;
            User user = null;
            //log on to the database and check user credentials
            using (var db = new JobsContext())
            {
                user = db.Users.Where(u => u.UserName == username).FirstOrDefault();
                if (user != null)
                {
                    success = PWDTK.ComparePasswordToHash(user.Salt, password, user.Password, iterations);
                }
            }

            if (success)
            {
                //creates a username based on the user name and the type
                //just as there can be only a sinlge type for as user and its silly to implment roles when there are not needed
                //so this seems a good compromise, as the type will be stored in the cookie along with the username,
                //so now need for a trip to the database for every user type check.
                var cookieName = string.Format("{0} ({1})", user.UserName, user.UserType);
                FormsAuthentication.SetAuthCookie(cookieName, false);
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.Error = "Username or password is invalid.";
                return View();
            }
        }

        public ActionResult LogOff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("Login");
        }

        [HttpGet]
        public ActionResult ChangePassword()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ChangePassword(string oldPassword, string newPassword, string confirmation)
        {
            var salt = PWDTK.GetRandomSalt(saltSize);
            using (var db = new JobsContext())
            {
                var username = Helpers.GetUserName();
                var user = db.Users.Where(u => u.UserName == username).FirstOrDefault();
                if (user != null && PWDTK.ComparePasswordToHash(user.Salt, oldPassword, user.Password, iterations))
                {
                    user.Salt = salt;
                    user.Password = PWDTK.PasswordToHash(salt, newPassword, iterations);
                    db.SaveChanges();
                }
                else
                {
                    ViewBag.Error = "Old Password is invalid";
                }
            }
            return RedirectToAction("Index", "Home");
        }


        [HttpGet]
        public ActionResult AddUser()
        {
            return View();
        }


        [HttpPost]
        public ActionResult AddUser(string userName, string password, string confirmation, string fullName, string userType)
        {
            if (userType == "-Select User Type-")
            {
                ModelState.AddModelError("UserType", "You must select a user type");
            }
            if (string.IsNullOrWhiteSpace(userName) && userName.Trim().Length <= 6)
            {
                ModelState.AddModelError("UserName", "User Name must be at least 6 characters in length");
            }
            if (string.IsNullOrWhiteSpace(password) && userName.Trim().Length <= 6)
            {
                ModelState.AddModelError("Password", "Password must be at least 6 characters in length");
            }
            if (string.IsNullOrWhiteSpace(fullName))
            {
                ModelState.AddModelError("FullName", "Full Name is required");
            }
            if (password != confirmation)
            {
                ModelState.AddModelError("Password", "Password and confirmation must match");
            }

            if (ModelState.IsValid)
            {
                var salt = PWDTK.GetRandomSalt(saltSize);
                using (var db = new JobsContext())
                {
                    if (db.Users.Where(u => u.UserName == userName).Any())
                    {
                        ModelState.AddModelError("UserName", "User Name already exits, please choose a different one");
                        return View();
                    }

                    var user = new User
                    {
                        Salt = salt,
                        UserName = userName,
                        FullName = fullName,
                        Password = PWDTK.PasswordToHash(salt, password, iterations),
                        UserType = userType
                    };
                    db.Users.Add(user);
                    db.SaveChanges();
                }
                return RedirectToAction("Index", "Home");
            }
            else
            {
                return View();
            }
        }

        public ActionResult ShowUsers()
        {
            if (Helpers.GetUserType() != "Administrator")
            {
                return RedirectToAction("Index");
            }

            IEnumerable<User> users = null;
            using (var db = new JobsContext())
            {
                users = db.Users.OrderBy(u => u.FullName).ToList();
            }

            return View(users);
        }
    }
}