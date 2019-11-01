using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Question1
{
    class Question1
    {
        // June 1st, 2014 was Sunday, December 1st, 2013 as well.
        // How many Sundays fell on the first day of the month between January 1st, 1901 and today?
        static void Main(string[] args)
        {
            // Count the Sundays that fell on the first of the month
            int sundaysCount = CountSundays(new DateTime(1901, 1, 1), DateTime.Now);

            // display it
            Console.WriteLine("The number of Sundays that fell on the first of the month is {0}", sundaysCount);

            // terminate the program
            Console.WriteLine("Click any key to exit...");
            Console.ReadKey();
        }

        // Implement this method
        private static int CountSundays(DateTime dateTime1, DateTime dateTime2)
        {
            //throw new NotImplementedException();
            int cntSunday = 0;
            if(dateTime1 > dateTime2)
            {
                DateTime temp = dateTime1;
                dateTime1 = dateTime2;
                dateTime2 = temp;

            }
            TimeSpan diff = dateTime2 - dateTime1;
            int days = diff.Days;
            for (var i = 0; i<=days; i++)
            {
                var testDate = dateTime1.AddDays(i);

                DateTime FirstDay = new DateTime(testDate.Year, testDate.Month, 1);
                if (testDate.DayOfWeek == DayOfWeek.Sunday && testDate.Date==FirstDay)
                {
                    //count sundays
                    cntSunday += 1;
                }
               
            }

            return cntSunday;
        }

    }
}
