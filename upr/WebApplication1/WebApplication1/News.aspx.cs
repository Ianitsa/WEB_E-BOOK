using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;

namespace WebApplication1
{
    public partial class News : Inherited
    {
        XmlTextReader XmlTextRssReader;
        XmlDocument XmlDocumentRss;
        XmlNode XmlNodeRss;
        XmlNode nodeChannel;
        XmlNode nodeItem;
        DataTable table = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataColumn col = table.Columns.Add("Заглавие на новина");
            DataColumn col1 = table.Columns.Add("Линк");
            XmlTextRssReader = new XmlTextReader("http://www.dnevnik.bg/rss/?page=index");
            XmlDocumentRss = new XmlDocument();
            // Loading XML content from the XmlDocument
            XmlDocumentRss.Load(XmlTextRssReader);
            // Loop for checking for <rss> tag
            for (int i = 0; i < XmlDocumentRss.ChildNodes.Count; i++)
            {
                if (XmlDocumentRss.ChildNodes[i].Name == "rss")
                { // found <rss> tag
                    XmlNodeRss = XmlDocumentRss.ChildNodes[i];
                }
            }
            // Checking if there are found tags in the RSS, perform the following commands
            if (XmlNodeRss.ChildNodes.Count != 0)
            { // Loop for checking for <channel> tag
                for (int i = 0; i < XmlNodeRss.ChildNodes.Count; i++)
                {
                    if (XmlNodeRss.ChildNodes[i].Name == "channel")
                    { // found <channel> tag
                        nodeChannel = XmlNodeRss.ChildNodes[i];
                    }
                }
                // Filling the data for the channel in the labels
                lblTitle.Text = "Title: " + nodeChannel["title"].InnerText;
                lblLanguage.Text = "Language: " + nodeChannel["language"].InnerText;
                lblLink.Text = "Link: " + nodeChannel["link"].InnerText;
                lblDescription.Text = "Description: " + nodeChannel["description"].InnerText;
                // Loop for filling the headlines and links to news in the GridView
                for (int i = 0; i < nodeChannel.ChildNodes.Count; i++)
                {
                    if (nodeChannel.ChildNodes[i].Name == "item")// Checking only for the news
                    {
                        nodeItem = nodeChannel.ChildNodes[i];
                        // Creating a row in GridView-containing information about the news (title and link) taken by tags
                        DataRow row = table.NewRow();
                        row[0] = nodeItem["title"].InnerText;
                        row[1] = nodeItem["link"].InnerText;
                        table.Rows.Add(row);
                        table.AcceptChanges();
                        GrViewNews.DataSource = table;
                        GrViewNews.DataBind();
                    }
                }
            }
        }
    }
}