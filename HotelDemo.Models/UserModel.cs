using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HotelDemo.Models
{
    public class UserModel
    {
        public int ID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Email { get; set; }
        public string Password { get; set; }
        public Nullable<int> UserTypeID { get; set; }
        public string IPAddress { get; set; }
        public string Country { get; set; }
        public Nullable<bool> IsCurrentLogin { get; set; }
        public Nullable<int> WrongTry { get; set; }
        public Nullable<System.DateTime> CreatedOn { get; set; }
        public string UserTypeName { get; set; }
    }
}
