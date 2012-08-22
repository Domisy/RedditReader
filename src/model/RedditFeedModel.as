package model
{
    import mx.collections.ArrayCollection;
    
    import spark.managers.PersistenceManager;
    
    import valueObjects.Item;
    
    import views.DetailsView;
    import views.RedditFeed;
    import views.RedditReaderHomeView;
    import views.SubredditList;
	
    public class RedditFeedModel
    {
		private static var instance:RedditFeedModel = new RedditFeedModel();
			
		
        public var redditFeed : RedditFeed;
        public var subredditList : SubredditList;
        public var detailsView : DetailsView;
		public var homeView:RedditReaderHomeView;
		
        [Bindable] public var currentlySelectedRSSItem : Object;
		public var isPic:Boolean;
		public var isSearchResult:Boolean = false;
		[Bindable] public var loggedIn:Boolean = false;
		[Bindable] public var splitViewEnabled:Boolean = true;
		public var currentSub:String = "r/all/";
		
		public var voteLabelDictionary:Object = {};
		public var voteDictionary:Object = {}; 
		
		[Bindable] public var currentUserInfo : Object;
		[Bindable] public var isVisible:Boolean = false;
		[Bindable] public var modhash:String;
		[Bindable] public var cookie:String;
		public var currentFeedList:ArrayCollection;
		
		public static function getInstance():RedditFeedModel
		{
			return instance;
		}
		
		
        public function RedditFeedModel()
        {
			if(instance)
			{
				throw new Error ("We cannot create a new instance. Please use Singleton.getInstance()");
			}
        }
    }
}

