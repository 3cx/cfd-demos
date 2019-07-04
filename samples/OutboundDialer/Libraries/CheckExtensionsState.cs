using System;
using TCX.Configuration;

	  public class ExtensionStateHelper
	  {
		    public bool IsThereAnyFreeExtension()
		    {
			      return PhoneSystem.Root.GetDNByNumber("201").GetActiveConnections().Length == 0 ||
			             PhoneSystem.Root.GetDNByNumber("202").GetActiveConnections().Length == 0 ||
			             PhoneSystem.Root.GetDNByNumber("203").GetActiveConnections().Length == 0;
		    }
	  }
