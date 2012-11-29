using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace SD.Entities
{
    /// <summary>
    /// Created by LocNB and QuanNH
    /// </summary>
    
    public class User
    {
        public int Id { get; set; }
        public string Account { get; set; }
        public string Email { get; set; }
        public String Role { get; set; }
        public string Password { get; set; }
    }
}
