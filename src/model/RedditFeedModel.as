package model
{
    import mx.collections.ArrayCollection;
    
    import renderers.BaseListRenderer;
    
    import views.DetailsView;
    import views.RedditFeed;
    import views.RedditReaderHomeView;
    import views.SubredditList;
	
    public class RedditFeedModel
    {
		//can't do true singleton enforcement due to automatic persistence
		private static var instance:RedditFeedModel = new RedditFeedModel();
			
		
        public var redditFeed : RedditFeed;
        public var subredditList : SubredditList;
        public var detailsView : DetailsView;
		public var homeView:RedditReaderHomeView;
		public var isPic:Boolean;
		public var isSearchResult:Boolean = false;
		public var currentSub:String = "r/all/";
		public var voteLabelDictionary:Object = {};
		public var voteDictionary:Object = {}; 
		public var currentFeedList:ArrayCollection;
		public var lastClickedRenderer:BaseListRenderer;
		public var updateRendererCallback:Function;
		
        [Bindable] public var currentlySelectedRSSItem : Object;
		[Bindable] public var loggedIn:Boolean = false;
		[Bindable] public var splitViewEnabled:Boolean = true;
		
		[Bindable] public var currentUserInfo : Object;
		[Bindable] public var isVisible:Boolean = false;
		[Bindable] public var modhash:String;
		[Bindable] public var cookie:String;
		
		public static function getInstance():RedditFeedModel
		{
			return instance;
		}
		
        public function RedditFeedModel(){if(instance)throw new Error("There can be only one SINGLETON!")}
    }
}
