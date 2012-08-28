package classes
{
	import spark.components.List;
	
	public class NestedList extends List
	{
		[Bindable]
		public var nestedDataField:String;
		
		public function NestedList()
		{
			super();
		}
	
		override public function itemToLabel(data:Object):String
		{
			var fields:Array;
			var label:String;
			
			var dataFieldSplit:String = nestedDataField;
			var currentData:Object = data;
			
			//check if the nestedDataField value contains a '.' (i.e. is accessing a nested value)
			if(nestedDataField.indexOf(".") != -1)
			{
				//get all the fields that need to be accessed
				fields = dataFieldSplit.split("."); 
				
				for each(var f:String in fields)
				//loop through the fields one by one and get the final value, going one field deep every iteration
				currentData = currentData[f]; 
				
				if(currentData is String)
					//return the final value
					return String(currentData);
			}
				
				//if there is no nesting involved
			else
			{
				if(dataFieldSplit != "")
					currentData = currentData[dataFieldSplit];
			}
			
			//if our method hasn't worked as expected, resort to calling the default function
			try
			{
				label = currentData.toString();
			}
			catch(e:Error)
			{
				label = super.itemToLabel(data);
			}
			
			//return the result
			return label;
		}

	}
}