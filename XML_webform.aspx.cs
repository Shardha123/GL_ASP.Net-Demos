using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace XML_DataSource_Demo
{
    public partial class XML_webform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void CountryChanged(object sender, EventArgs e)
        {
            //ddlCountries.SelectedIndex = -1;

            string country = ddlCountries.SelectedItem.Value;
            if (country != string.Empty)
            {
                XmlDataSource1.XPath = "/Employees/Employee[ Country='" + country + "']";
            }
            else
            {
                XmlDataSource1.XPath = "/Employees/Employee";
            }
        }
        protected void CityChanged(object sender, EventArgs e)
        {
            //ddlCities.SelectedIndex = -1;
            string city = ddlCities.SelectedItem.Value;
            if (city != string.Empty)
            {
                XmlDataSource1.XPath = "/Employees/Employee[ @City='" + city + "']";
            }
            else
            {
                XmlDataSource1.XPath = "/Employees/Employee";
            }
        }
    }
}