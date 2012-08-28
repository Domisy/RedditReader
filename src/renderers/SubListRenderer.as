package renderers
{
	import spark.components.Label;
	import spark.components.LabelItemRenderer;
	
	
	/**
	 * 
	 * ASDoc comments for this item renderer class
	 * 
	 */
	public class SubListRenderer extends LabelItemRenderer
	{
		
		private var messageLabel:Label;
		private var titleLabel:Label;
		
		public function SubListRenderer()
		{
			//TODO: implement function
			super();
			height = 50;
		}
		
		
		override public function set selected(value:Boolean):void
		{
			super.selected = value; 
			if(value) {
				messageLabel.setStyle("color",0xFFFFFF);
				titleLabel.setStyle("color",0xFFFFFF);
			}
			else {
				messageLabel.setStyle("color",0x000000);
				titleLabel.setStyle("color",0x000000);
			}
		}
		
		/**
		 * @private
		 *
		 * Override this setter to respond to data changes
		 */
		override public function set data(value:Object):void
		{
			super.data = value;
			// the data has changed.  push these changes down in to the subcomponents here   
			labelDisplay.text = "";
			titleLabel.text = value.data.title;
			
			if (value.data.public_description == null) {
				messageLabel.text = value.data.author;
			}
			else
				messageLabel.text = value.data.public_description;
		} 
		
		/**
		 * @private
		 * 
		 * Override this method to create children for your item renderer 
		 */	
		override protected function createChildren():void
		{ 
			super.createChildren();
			// create any additional children for your item renderer here
			//labelDisplay.height = 30;
			//labelDisplay.width = 290;
			//labelDisplay.setStyle("fontSize", "18"); 
			
			titleLabel = new Label();
			titleLabel.height = 30;
			titleLabel.width = 290;
			titleLabel.setStyle("fontSize", "18"); 
			titleLabel.maxDisplayedLines = 1;
			addChild(titleLabel);
			
			messageLabel = new Label(); 
			messageLabel.width = 290;
			messageLabel.height = 20;
			messageLabel.setStyle("fontSize", "15"); 
			messageLabel.maxDisplayedLines = 1;
			addChild(messageLabel);
		}
		
		/**
		 * @private
		 * 
		 * Override this method to change how the item renderer 
		 * sizes itself. For performance reasons, do not call 
		 * super.measure() unless you need to.
		 */ 
		override protected function measure():void
		{
			super.measure();
			// measure all the subcomponents here and set measuredWidth, measuredHeight, 
			// measuredMinWidth, and measuredMinHeight      		
		}
		
		/**
		 * @private
		 * 
		 * Override this method to change how the background is drawn for 
		 * item renderer.  For performance reasons, do not call 
		 * super.drawBackground() if you do not need to.
		 */
		override protected function drawBackground(unscaledWidth:Number, 
												   unscaledHeight:Number):void
		{
			super.drawBackground(unscaledWidth, unscaledHeight);
			// do any drawing for the background of the item renderer here      		
		}
		
		/**
		 * @private
		 *  
		 * Override this method to change how the background is drawn for this 
		 * item renderer. For performance reasons, do not call 
		 * super.layoutContents() if you do not need to.
		 */
		override protected function layoutContents(unscaledWidth:Number, 
												   unscaledHeight:Number):void
		{
			super.layoutContents(unscaledWidth, unscaledHeight);
			// layout all the subcomponents here   
			//labelDisplay.x = 5;
			//labelDisplay.y = 3;
			
			titleLabel.x = 5;
			titleLabel.y = 8;
			
			messageLabel.x = 5;
			messageLabel.y = 30;
		}
		
	}
}