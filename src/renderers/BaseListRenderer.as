package renderers
{
    import classes.CalloutExtension;
    import classes.EventExtension;
    
    import flash.events.Event;
    import flash.events.MouseEvent;
    import flash.net.URLLoader;
    import flash.net.URLRequest;
    import flash.net.URLRequestHeader;
    import flash.net.URLRequestMethod;
    import flash.net.URLVariables;
    
    import model.RedditFeedModel;
    
    import mx.graphics.BitmapFillMode;
    
    import spark.components.Button;
    import spark.components.HGroup;
    import spark.components.Image;
    import spark.components.Label;
    import spark.components.LabelItemRenderer;
    import spark.layouts.VerticalLayout;
    
    import utils.DateUtil;


    /**
     *
     * ASDoc comments for this item renderer class
     */


    public class BaseListRenderer extends LabelItemRenderer
    {
        private var theImage:Image;
		private var messageLabel:Label;
		private var voteButton:CalloutExtension;
		private var hgroup:HGroup;
		private var modelInstance : RedditFeedModel;
		[Bindable] public var redditFeedModel : RedditFeedModel = RedditFeedModel.getInstance();
		[Bindable] public var newVote:String;
		

		private var voteButtons:Array= [
			{Button:"Up"},
			{Button:"Down"} ];
		
        public function BaseListRenderer()
        {
            super();
			height = 85;
			
        }

        /**
         * @private
         *
         * Override this setter to respond to data changes
         */
		
        override public function set data(value : Object) : void
        {
            super.data = value; 
			//var ups:int = value.data.ups - value.data.downs;
			//var votes:String = String(ups);
			var date:String = DateUtil.convertDateToPast(value.data.created);
			
		
			var messageString:String = "Submitted " + date + " by " + value.data.author + " to " + value.data.subreddit; 
       
            labelDisplay.text = value.data.title;
			voteButton.data = value.data;
			messageLabel.text = messageString;
			
			if (redditFeedModel.voteLabelDictionary[data.data.name] != null) {
				voteButton.label = redditFeedModel.voteLabelDictionary[data.data.name]
			}
			else {newVote = value.data.score; voteButton.label = newVote; }
			
            if (value.data.thumbnail) {
                theImage.source = value.data.thumbnail;
			}
			else  theImage.source = null;
			
			if (redditFeedModel.voteDictionary[data.data.name] != null) {
				if (redditFeedModel.voteDictionary[data.data.name] == 2) {voteButton.setStyle("color", "0xFF5E00")} 
				else if (redditFeedModel.voteDictionary[data.data.name] == 1) {voteButton.setStyle("color", "0x2F83FF")};
			}
			else voteButton.setStyle("color", "0x000000");
        }

        /**
         * @private
         *
         * Override this method to create children for your item renderer
         */
        override protected function createChildren() : void
        {
            super.createChildren();
            if (!theImage)
            {
                theImage = new Image();
                theImage.addEventListener(MouseEvent.CLICK, imageClickHandler);
                theImage.width = 70;
                theImage.height = 70;
                addChild(theImage);
            }
			
			messageLabel = new Label();
			messageLabel.width = 500;
			messageLabel.height = 20;
			addChild(messageLabel);
			
			
			var upButton:Button = new Button();
			var downButton:Button =  new Button();
			upButton.setStyle("icon", "assets/thumbsUp.png");
			upButton.addEventListener(MouseEvent.CLICK, voteUp);
			downButton.setStyle("icon", "assets/thumbsDown.png");
			downButton.addEventListener(MouseEvent.CLICK, voteDown);
			
			voteButton = new CalloutExtension();
			voteButton.calloutLayout = new VerticalLayout;;
			voteButton.calloutContent = [upButton, downButton]; 
			voteButton.width = 55;
			voteButton.height = 55;
			addChild(voteButton);
			voteButton.setStyle("fontSize", "12");
			voteButton.addEventListener(MouseEvent.CLICK, voteClickHandler);
			
	
			labelDisplay.height = 30;
            labelDisplay.addEventListener(MouseEvent.CLICK, labelClickHandler);
			labelDisplay.setStyle("fontSize", "20");
			
			
			addEventListener(MouseEvent.CLICK, backdropClickHandler);
            // create any additional children for your item renderer here
        }

		
		private function backdropClickHandler(event : MouseEvent) : void
		{
			dispatchEvent(new EventExtension("backdropClicked",data, true, false));
		}
		
        private function imageClickHandler(event : MouseEvent) : void
        {
            dispatchEvent(new EventExtension("imageClicked", data, true, false));
			event.stopImmediatePropagation();

        }

        private function labelClickHandler(event : MouseEvent) : void
        {
			dispatchEvent(new EventExtension("labelClicked", data, true, false));
        }
		
		public function voteClickHandler(event:MouseEvent):void
		{
			if (redditFeedModel.loggedIn == false) {
				dispatchEvent(new Event("voteButtonClicked", true, false));
				voteButton.callout.close();
			}
			
			else {
				dispatchEvent(new Event("voteClicked", true));
			}
			event.stopImmediatePropagation();
		}
		
		private function voteUp(event:MouseEvent):void
		{
			voteButton.callout.close();
			var urlLoader:URLLoader = new URLLoader();
			
			var urlRequest:URLRequest = new URLRequest("http://www.reddit.com/api/vote");
			urlRequest.method = URLRequestMethod.POST;
			
			var cookieHeader:URLRequestHeader = new URLRequestHeader("Cookie", "reddit_session=" + redditFeedModel.cookie);
			urlRequest.requestHeaders = [cookieHeader];
			
			var variables:URLVariables = new URLVariables();
			variables.id = event.target.parent.parent.parent.owner.data.name; 
			variables.dir = "1";
			variables.uh = redditFeedModel.modhash;
			urlRequest.data = variables;
			
			urlLoader.addEventListener(Event.COMPLETE, dataLoaded);
			urlLoader.load(urlRequest);
			
			redditFeedModel.voteDictionary[data.data.name] = 2;
			var tempVote:int = int(data.data.score) + 1;
			redditFeedModel.voteLabelDictionary[data.data.name] = String(tempVote); 
			data=data;
		}
		
		private function voteDown(event:MouseEvent):void
		{
			voteButton.callout.close();
			var urlLoader:URLLoader = new URLLoader();
			
			var urlRequest:URLRequest = new URLRequest("http://www.reddit.com/api/vote");
			urlRequest.method = URLRequestMethod.POST;
			
			var cookieHeader:URLRequestHeader = new URLRequestHeader("Cookie", "reddit_session=" + redditFeedModel.cookie);
			urlRequest.requestHeaders = [cookieHeader];
			
			var variables:URLVariables = new URLVariables();
			variables.id = event.target.parent.parent.parent.owner.data.name; 
			variables.dir = "-1";
			variables.uh = redditFeedModel.modhash;
			urlRequest.data = variables;
			
			urlLoader.addEventListener(Event.COMPLETE, dataLoaded);
			urlLoader.load(urlRequest);
			
			redditFeedModel.voteDictionary[data.data.name] = 1;
			var tempVote:int = int(event.target.parent.parent.parent.owner.data.score) - 1;
			redditFeedModel.voteLabelDictionary[data.data.name] = String(tempVote); 
			data=data;
		}
		
		private function dataLoaded(event:Event):void
		{
			trace(event.target.data);
		}

        /**
         * @private
         *
         * Override this method to change how the item renderer
         * sizes itself. For performance reasons, do not call
         * super.measure() unless you need to.
         */
        override protected function measure() : void
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
        override protected function drawBackground(unscaledWidth : Number, unscaledHeight : Number) : void
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
        override protected function layoutContents(unscaledWidth : Number, unscaledHeight : Number) : void
        {
            //super.layoutContents(unscaledWidth, unscaledHeight);
            theImage.x = 10;
			theImage.y = 7.5;
			theImage.scaleMode = BitmapFillMode.SCALE;
            labelDisplay.x = 90;
			labelDisplay.y = 7.5; 
			labelDisplay.width = unscaledWidth - (voteButton.width + theImage.width + 50);
			
			messageLabel.x = 92;
			messageLabel.y = 38;
			voteButton.x = unscaledWidth - voteButton.width - 8;
			voteButton.y = 16;
			
			//trace("Laying out contents width: " + unscaledWidth + " height: " + unscaledHeight);
            // layout all the subcomponents here      		
        }

    }
}
