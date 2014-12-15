﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;

namespace MBCFM.Models
{
    public static class Helpers
    {
        /// <summary>
        /// Creates an IQueryable (lazy-evaluated) merging of job and extra job data.
        /// </summary>
        /// <param name="db"></param>
        /// <returns></returns>
        public static IQueryable<MergedJob> GetMergedJobsQuery(JobsContext db)
        {
            //this performs a left outer join in linq by placing the ExtraJobData table into a group and if the group is empty 
            //(as we don't have a corresponding extradata row yet) we return an empty extra data object (the DefaultIfEmpty method)
            //we can then use that data in the select that creates a mergedJob object that can be used in the views
            return from j in db.Jobs
                   join d in db.ExtraJobs on j.MbcJobNo equals d.MBCJobNo into dataGroup
                   from data in dataGroup.DefaultIfEmpty()
                   select new MergedJob
                       {
                           Job = j,
                           ExtraData = data
                       };
        }

        public static string ConvertDateTime(DateTime? dateTime)
        {
            if (!dateTime.HasValue)
                return string.Empty;
            else
            {
                return dateTime.Value.ToString("yyyy/MM/dd HH:mm");
            }
        }

        public static string GetUserType()
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var name = HttpContext.Current.User.Identity.Name;
                int pos = name.IndexOf('(');
                var type = name.Substring(pos+1, (name.Length - pos-2));
                return type;
            }
            else
                return string.Empty;
        }

        public static string GetUserName()
        {
            if (HttpContext.Current.User.Identity.IsAuthenticated)
            {
                var name = HttpContext.Current.User.Identity.Name;
                int pos = name.IndexOf('(');
                var type = name.Substring(0, pos);
                return type;
            }
            else
                return string.Empty;
        }

        public static JobsContext AddExtraJobData(JobsContext db, ExtraJobData extraData, int mbcJobNo, bool notify) 
        {
            extraData = new ExtraJobData
            {
                MBCJobNo = mbcJobNo,
                HelpDeskNotified = notify
            };
            db.ExtraJobs.Add(extraData);

            return db;
        }
    }
}