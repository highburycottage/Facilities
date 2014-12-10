﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MBCFM.Models
{
    public class User
    {
        [Key]
        [Required]
        [Display(Name="User Name")]
        public string UserName { get; set; }
        [Required]
        public string Password { get; set; }
        public string FullName { get; set; }
    }
}