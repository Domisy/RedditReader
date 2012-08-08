/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - RedditJson.as.
 */
package services.redditjson
{
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.HTTPServiceWrapper;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.http.HTTPMultiService;
import mx.rpc.http.Operation;
import valueObjects.JsonData;
import valueObjects.RedditUserInfoResponse;

import com.adobe.serializers.json.JSONSerializationFilter;

[ExcludeClass]
internal class _Super_RedditJson extends com.adobe.fiber.services.wrapper.HTTPServiceWrapper
{
    private static var serializer0:JSONSerializationFilter = new JSONSerializationFilter();

    // Constructor
    public function _Super_RedditJson()
    {
        // initialize service control
        _serviceControl = new mx.rpc.http.HTTPMultiService();
         var operations:Array = new Array();
         var operation:mx.rpc.http.Operation;
         var argsArray:Array;

         operation = new mx.rpc.http.Operation(null, "redditLogin");
         operation.url = "http://ssl.reddit.com/api/login/{username}";
         operation.method = "POST";
         argsArray = new Array("username","api_type","user","passwd");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["username"];
         operation.contentType = "application/x-www-form-urlencoded";
         operation.resultType = valueObjects.RedditUserInfoResponse;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "redditJsonFeed");
         operation.url = "http://www.reddit.com/.json";
         operation.method = "GET";
         argsArray = new Array("modhash");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.resultType = valueObjects.JsonData;
         operations.push(operation);

         operation = new mx.rpc.http.Operation(null, "aboutMe");
         operation.url = "http://www.reddit.com/user/{user}/about/.json";
         operation.method = "GET";
         argsArray = new Array("user");
         operation.argumentNames = argsArray;         
         operation.serializationFilter = serializer0;
         operation.properties = new Object();
         operation.properties["urlParamNames"] = ["user"];
         operation.resultType = valueObjects.RedditUserInfoResponse;
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
      * This method is a generated wrapper used to call the 'redditLogin' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function redditLogin(username:String, api_type:String, user:String, passwd:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("redditLogin");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(username,api_type,user,passwd) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'redditJsonFeed' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function redditJsonFeed(modhash:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("redditJsonFeed");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(modhash) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'aboutMe' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function aboutMe(user:String) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("aboutMe");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(user) ;
        return _internal_token;
    }
     
}

}
