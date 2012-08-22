/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - RedditFeedGrabber.as.
 */
package services.redditfeedgrabber
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;
import valueObjects.Children;
import valueObjects.Item;

import com.adobe.serializers.json.JSONSerializationFilter;
import com.adobe.serializers.xml.XMLSerializationFilter;

[ExcludeClass]
internal class _Super_RedditFeedGrabber extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer1:JSONSerializationFilter = new JSONSerializationFilter();
    private static var serializer0:XMLSerializationFilter = new XMLSerializationFilter();

    // Constructor
    public function _Super_RedditFeedGrabber()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService();
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "getRedditFeed");
         operation.url = "http://www.reddit.com/{url}.xml";
         operation.method = "GET";
         argsArray = new Array("url");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::channel/::item";
         operation.properties["urlParamNames"] = ["url"];
         operation.resultElementType = valueObjects.Item;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getSubreddits");
         operation.url = "http://www.reddit.com/reddits/popular.json";
         operation.method = "GET";
         operation.serializationFilter = serializer1;
         operation.properties = new Object();
         operation.properties["xPath"] = "/";
         operation.resultType = valueObjects.Children;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "getRedditSearch");
         operation.url = "http://www.reddit.com/search.json";
         operation.method = "GET";
         argsArray = new Array("q");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer1;
         operation.properties = new Object();
         operation.properties["xPath"] = "/::channel/::item";
         operation.resultElementType = valueObjects.Item;
         operations.push(operation);

         _serviceControl.operationList = operations;  


         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
      
    }
    

    /**
      * This method is a generated wrapper used to call the 'getRedditFeed' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getRedditFeed(url:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getRedditFeed");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(url) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getSubreddits' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getSubreddits() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getSubreddits");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getRedditSearch' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getRedditSearch(q:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getRedditSearch");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(q) ;
        return _internal_token;
    }
     
}

}
