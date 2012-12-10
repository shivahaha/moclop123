﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SampleProject.Entity;
using SampleProject.Commons;
using SampleProject.DAO;

namespace SampleProject.Biz
{
    public class TrustRegionBiz: BaseBiz<TrustRegionsEntity>
    {
        public TrustRegionBiz() : base(Constants.TrustRegions.TableName) { }
    }
}