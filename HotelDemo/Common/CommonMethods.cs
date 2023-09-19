using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;
using System.Web;
using System.Xml;

namespace HotelDemo.Common
{
    public static class CommonMethods
    {
        public static String GetIPAddress()
        {
            string myExternalIP;
            string strHostName = System.Net.Dns.GetHostName();
            string clientIPAddress = System.Net.Dns.GetHostAddresses(strHostName).GetValue(0).ToString();
            string clientip = clientIPAddress.ToString();
            System.Net.HttpWebRequest request = (System.Net.HttpWebRequest)System.Net.HttpWebRequest.Create("http://www.whatismyip.org");

            request.UserAgent = "User-Agent: Mozilla/4.0 (compatible; MSIE" +
                "6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)";
            System.Net.HttpWebResponse response = (System.Net.HttpWebResponse)request.GetResponse();

            using (System.IO.StreamReader reader = new StreamReader(response.GetResponseStream()))
            {
                myExternalIP = reader.ReadToEnd();
                reader.Close();
            }
            Regex _firstRegex = new Regex("<span style=\"color: blue; font-size: 36px; font-weight: 600;\">(.*?)</span>");
            Match _match = _firstRegex.Match(myExternalIP);
            String IP = "";
            if (_match.Success)
            {
                IP = _match.Groups[1].Value;
            }
            return IP;
        }

        public static String GetCountryName(string ipaddress)
        {
            WebRequest rssReq = WebRequest.Create("http://www.freegeoip.net/xml/" + ipaddress);
            try
            {
                WebResponse rep = rssReq.GetResponse();
                XmlTextReader xtr = new XmlTextReader(rep.GetResponseStream());
                DataSet ds = new DataSet();
                ds.ReadXml(xtr);
                return Convert.ToString(ds.Tables[0].Rows[0]["CountryName"]);
            }
            catch (Exception ex)
            {
                return "";
            }
        }
    }
}