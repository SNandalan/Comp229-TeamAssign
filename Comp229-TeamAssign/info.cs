using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Comp229_TeamAssign
{
    public class Info
    {
        public string BookTitle { get; set; }
        public string AuthorName { get; set; }
        public int ISBN { get; set; }
        public string Genre { get; set; }
        public double Rating { get; set; }

        public Info(string bookTitle, string authorName, int isbn, string genre, double rating)
        {
            BookTitle = bookTitle;
            AuthorName = authorName;
            ISBN = isbn;
            Genre = genre;
            Rating = rating;
        }
    }
}