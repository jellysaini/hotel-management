using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelDemo.Models
{
    public class UserLogModel
    {

        public int ID { get; set; }
        public Nullable<int> UserID { get; set; }
        public string UserName { get; set; }
        public string IPAddress { get; set; }
        public string Country { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
    }
}
