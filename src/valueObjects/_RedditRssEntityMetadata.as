
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import valueObjects.Channel;
import valueObjects.Data;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _RedditRssEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("version", "channel", "data", "kind");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("version", "channel", "data", "kind");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("version", "channel", "data", "kind");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("version", "channel", "data", "kind");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("version", "channel", "data", "kind");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "RedditRss";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _versionIsValid:Boolean;
    model_internal var _versionValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _versionIsValidCacheInitialized:Boolean = false;
    model_internal var _versionValidationFailureMessages:Array;
    
    model_internal var _channelIsValid:Boolean;
    model_internal var _channelValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _channelIsValidCacheInitialized:Boolean = false;
    model_internal var _channelValidationFailureMessages:Array;
    
    model_internal var _dataIsValid:Boolean;
    model_internal var _dataValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _dataIsValidCacheInitialized:Boolean = false;
    model_internal var _dataValidationFailureMessages:Array;
    
    model_internal var _kindIsValid:Boolean;
    model_internal var _kindValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _kindIsValidCacheInitialized:Boolean = false;
    model_internal var _kindValidationFailureMessages:Array;

    model_internal var _instance:_Super_RedditRss;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _RedditRssEntityMetadata(value : _Super_RedditRss)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["version"] = new Array();
            model_internal::dependentsOnMap["channel"] = new Array();
            model_internal::dependentsOnMap["data"] = new Array();
            model_internal::dependentsOnMap["kind"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["version"] = "String";
        model_internal::propertyTypeMap["channel"] = "valueObjects.Channel";
        model_internal::propertyTypeMap["data"] = "valueObjects.Data";
        model_internal::propertyTypeMap["kind"] = "String";

        model_internal::_instance = value;
        model_internal::_versionValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForVersion);
        model_internal::_versionValidator.required = true;
        model_internal::_versionValidator.requiredFieldError = "version is required";
        //model_internal::_versionValidator.source = model_internal::_instance;
        //model_internal::_versionValidator.property = "version";
        model_internal::_channelValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChannel);
        model_internal::_channelValidator.required = true;
        model_internal::_channelValidator.requiredFieldError = "channel is required";
        //model_internal::_channelValidator.source = model_internal::_instance;
        //model_internal::_channelValidator.property = "channel";
        model_internal::_dataValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForData);
        model_internal::_dataValidator.required = true;
        model_internal::_dataValidator.requiredFieldError = "data is required";
        //model_internal::_dataValidator.source = model_internal::_instance;
        //model_internal::_dataValidator.property = "data";
        model_internal::_kindValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForKind);
        model_internal::_kindValidator.required = true;
        model_internal::_kindValidator.requiredFieldError = "kind is required";
        //model_internal::_kindValidator.source = model_internal::_instance;
        //model_internal::_kindValidator.property = "kind";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity RedditRss");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity RedditRss");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of RedditRss");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity RedditRss");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity RedditRss");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity RedditRss");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isVersionAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChannelAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isDataAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isKindAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnVersion():void
    {
        if (model_internal::_versionIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfVersion = null;
            model_internal::calculateVersionIsValid();
        }
    }
    public function invalidateDependentOnChannel():void
    {
        if (model_internal::_channelIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChannel = null;
            model_internal::calculateChannelIsValid();
        }
    }
    public function invalidateDependentOnData():void
    {
        if (model_internal::_dataIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfData = null;
            model_internal::calculateDataIsValid();
        }
    }
    public function invalidateDependentOnKind():void
    {
        if (model_internal::_kindIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfKind = null;
            model_internal::calculateKindIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get versionStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get versionValidator() : StyleValidator
    {
        return model_internal::_versionValidator;
    }

    model_internal function set _versionIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_versionIsValid;         
        if (oldValue !== value)
        {
            model_internal::_versionIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "versionIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get versionIsValid():Boolean
    {
        if (!model_internal::_versionIsValidCacheInitialized)
        {
            model_internal::calculateVersionIsValid();
        }

        return model_internal::_versionIsValid;
    }

    model_internal function calculateVersionIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_versionValidator.validate(model_internal::_instance.version)
        model_internal::_versionIsValid_der = (valRes.results == null);
        model_internal::_versionIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::versionValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::versionValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get versionValidationFailureMessages():Array
    {
        if (model_internal::_versionValidationFailureMessages == null)
            model_internal::calculateVersionIsValid();

        return _versionValidationFailureMessages;
    }

    model_internal function set versionValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_versionValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_versionValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "versionValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get channelStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get channelValidator() : StyleValidator
    {
        return model_internal::_channelValidator;
    }

    model_internal function set _channelIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_channelIsValid;         
        if (oldValue !== value)
        {
            model_internal::_channelIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "channelIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get channelIsValid():Boolean
    {
        if (!model_internal::_channelIsValidCacheInitialized)
        {
            model_internal::calculateChannelIsValid();
        }

        return model_internal::_channelIsValid;
    }

    model_internal function calculateChannelIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_channelValidator.validate(model_internal::_instance.channel)
        model_internal::_channelIsValid_der = (valRes.results == null);
        model_internal::_channelIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::channelValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::channelValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get channelValidationFailureMessages():Array
    {
        if (model_internal::_channelValidationFailureMessages == null)
            model_internal::calculateChannelIsValid();

        return _channelValidationFailureMessages;
    }

    model_internal function set channelValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_channelValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_channelValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "channelValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get dataStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get dataValidator() : StyleValidator
    {
        return model_internal::_dataValidator;
    }

    model_internal function set _dataIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_dataIsValid;         
        if (oldValue !== value)
        {
            model_internal::_dataIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get dataIsValid():Boolean
    {
        if (!model_internal::_dataIsValidCacheInitialized)
        {
            model_internal::calculateDataIsValid();
        }

        return model_internal::_dataIsValid;
    }

    model_internal function calculateDataIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_dataValidator.validate(model_internal::_instance.data)
        model_internal::_dataIsValid_der = (valRes.results == null);
        model_internal::_dataIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::dataValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::dataValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get dataValidationFailureMessages():Array
    {
        if (model_internal::_dataValidationFailureMessages == null)
            model_internal::calculateDataIsValid();

        return _dataValidationFailureMessages;
    }

    model_internal function set dataValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_dataValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_dataValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get kindStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get kindValidator() : StyleValidator
    {
        return model_internal::_kindValidator;
    }

    model_internal function set _kindIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_kindIsValid;         
        if (oldValue !== value)
        {
            model_internal::_kindIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kindIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get kindIsValid():Boolean
    {
        if (!model_internal::_kindIsValidCacheInitialized)
        {
            model_internal::calculateKindIsValid();
        }

        return model_internal::_kindIsValid;
    }

    model_internal function calculateKindIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_kindValidator.validate(model_internal::_instance.kind)
        model_internal::_kindIsValid_der = (valRes.results == null);
        model_internal::_kindIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::kindValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::kindValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get kindValidationFailureMessages():Array
    {
        if (model_internal::_kindValidationFailureMessages == null)
            model_internal::calculateKindIsValid();

        return _kindValidationFailureMessages;
    }

    model_internal function set kindValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_kindValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_kindValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kindValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("version"):
            {
                return versionValidationFailureMessages;
            }
            case("channel"):
            {
                return channelValidationFailureMessages;
            }
            case("data"):
            {
                return dataValidationFailureMessages;
            }
            case("kind"):
            {
                return kindValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
