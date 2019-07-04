using System.Xml;

		  public class Validator
		  {
			    public bool ValidateXML(string fileContent, string id, string pin)
			    {
			      XmlDocument xmlDocument = new XmlDocument();
			      xmlDocument.LoadXml(fileContent);
			
			      XmlNodeList customerElementList = xmlDocument.GetElementsByTagName("customer");
			      foreach (XmlNode xmlNode in customerElementList)
			      {
				        string customerID = xmlNode.Attributes["id"].Value;
				        string customerPIN = xmlNode.Attributes["pin"].Value;
				
				        if (id == customerID && pin == customerPIN) 
					          return true;
			      }
			
			      return false;
		    }
		    
		    public bool ValidateCSV(string fileContent, string id, string pin)
		    {
			      foreach (string line in fileContent.Split('\n'))
			      {
				        string[] lineParts = line.Trim().Split(',');
				        if (lineParts.Length == 2)
				        {
					          string customerID = lineParts[0];
					          string customerPIN = lineParts[1];
					
					          if (id == customerID && pin == customerPIN)
						            return true;
				        }
			      }
			
			      return false;
		    }
	  }
