#pragma warning disable 1591
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System.Collections.Generic;


namespace NorthwindOpenAccess	
{
	public partial class Region
	{
		private int _regionID;
		public virtual int RegionID 
		{ 
		    get
		    {
		        return this._regionID;
		    }
		    set
		    {
		        this._regionID = value;
		    }
		}
		
		private string _regionDescription;
		public virtual string RegionDescription 
		{ 
		    get
		    {
		        return this._regionDescription;
		    }
		    set
		    {
		        this._regionDescription = value;
		    }
		}
		
		private IList<Territory> _territories = new List<Territory>();
		public virtual IList<Territory> Territories 
		{ 
		    get
		    {
		        return this._territories;
		    }
		}
		
	}
}
