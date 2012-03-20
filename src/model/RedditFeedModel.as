package model
{
    import mx.collections.ArrayCollection;
    
    import valueObjects.Item;
    
    import views.DetailsView;
    import views.RedditFeed;
    import views.SubredditList;

    public class RedditFeedModel
    {
        public var redditFeed : RedditFeed;
        public var subredditList : SubredditList;
        public var detailsView : DetailsView;
        [Bindable] public var currentlySelectedRSSItem : Object;
		public var isPic:Boolean;
		
		public var currentFeedList:ArrayCollection;
		
        public function RedditFeedModel()
        {
        }
    }
}
