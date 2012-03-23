package model
{
    import mx.collections.ArrayCollection;
    
    import valueObjects.Item;
    
    import views.DetailsView;
    import views.RedditFeed;
    import views.SubredditList;

    public class RedditFeedModel
    {
		private static var instance:RedditFeedModel = new RedditFeedModel();

		
        public var redditFeed : RedditFeed;
        public var subredditList : SubredditList;
        public var detailsView : DetailsView;
        [Bindable] public var currentlySelectedRSSItem : Object;
		public var isPic:Boolean;
		public var loggedIn:Boolean = false;
		[Bindable] public var splitViewEnabled:Boolean = true;
		
		[Bindable] public var currentUserInfo : Object;
		[Bindable] public var isVisible:Boolean = false;
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

