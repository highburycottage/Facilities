﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MBCFM.Models
{
    public class JobView
    {
        public MergedJob JobData { get; set; }
        public User User { get; set; }
    }
}