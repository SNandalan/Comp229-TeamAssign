using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Comp229_TeamAssign
{
    public class Info
    {
        public int ClientID { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string PhoneNumber { get; set; }
        public string Address { get; set; }

        public Info(int infoID, string name, string lastName, string phoneNumber, string address)
        {
            ClientID = infoID;
            FirstName = name;
            LastName = lastName;
            PhoneNumber = phoneNumber;
            Address = address;
        }
    }
}