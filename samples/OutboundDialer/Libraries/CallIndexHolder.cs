using System;

  public class CallIndexHolder
  {
	    private static int callIndex = 0;
	    
	    public int GetCallIndex()
	    {
		      return callIndex;
	    }
	    
	    public void SetCallIndex(int index)
	    {
		      callIndex = index;
	    }
  }
