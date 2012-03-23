
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
import mx.collections.ArrayCollection;
import mx.events.ValidationResultEvent;
import valueObjects.Children;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _DataEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("after", "before", "children", "cookie", "modhash", "id", "comment_karma", "has_mod_mail", "created", "is_gold", "name", "is_mod", "link_karma", "created_utc", "has_mail");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("after", "before", "children", "cookie", "modhash", "id", "comment_karma", "has_mod_mail", "created", "is_gold", "name", "is_mod", "link_karma", "created_utc", "has_mail");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("after", "before", "children", "cookie", "modhash", "id", "comment_karma", "has_mod_mail", "created", "is_gold", "name", "is_mod", "link_karma", "created_utc", "has_mail");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("after", "before", "children", "cookie", "modhash", "id", "comment_karma", "has_mod_mail", "created", "is_gold", "name", "is_mod", "link_karma", "created_utc", "has_mail");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("after", "before", "children", "cookie", "modhash", "id", "comment_karma", "has_mod_mail", "created", "is_gold", "name", "is_mod", "link_karma", "created_utc", "has_mail");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array("children");
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Data";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _afterIsValid:Boolean;
    model_internal var _afterValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _afterIsValidCacheInitialized:Boolean = false;
    model_internal var _afterValidationFailureMessages:Array;
    
    model_internal var _beforeIsValid:Boolean;
    model_internal var _beforeValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _beforeIsValidCacheInitialized:Boolean = false;
    model_internal var _beforeValidationFailureMessages:Array;
    
    model_internal var _childrenIsValid:Boolean;
    model_internal var _childrenValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _childrenIsValidCacheInitialized:Boolean = false;
    model_internal var _childrenValidationFailureMessages:Array;
    
    model_internal var _cookieIsValid:Boolean;
    model_internal var _cookieValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _cookieIsValidCacheInitialized:Boolean = false;
    model_internal var _cookieValidationFailureMessages:Array;
    
    model_internal var _modhashIsValid:Boolean;
    model_internal var _modhashValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _modhashIsValidCacheInitialized:Boolean = false;
    model_internal var _modhashValidationFailureMessages:Array;
    
    model_internal var _idIsValid:Boolean;
    model_internal var _idValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _idIsValidCacheInitialized:Boolean = false;
    model_internal var _idValidationFailureMessages:Array;
    
    model_internal var _has_mod_mailIsValid:Boolean;
    model_internal var _has_mod_mailValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _has_mod_mailIsValidCacheInitialized:Boolean = false;
    model_internal var _has_mod_mailValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _has_mailIsValid:Boolean;
    model_internal var _has_mailValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _has_mailIsValidCacheInitialized:Boolean = false;
    model_internal var _has_mailValidationFailureMessages:Array;

    model_internal var _instance:_Super_Data;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _DataEntityMetadata(value : _Super_Data)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["after"] = new Array();
            model_internal::dependentsOnMap["before"] = new Array();
            model_internal::dependentsOnMap["children"] = new Array();
            model_internal::dependentsOnMap["cookie"] = new Array();
            model_internal::dependentsOnMap["modhash"] = new Array();
            model_internal::dependentsOnMap["id"] = new Array();
            model_internal::dependentsOnMap["comment_karma"] = new Array();
            model_internal::dependentsOnMap["has_mod_mail"] = new Array();
            model_internal::dependentsOnMap["created"] = new Array();
            model_internal::dependentsOnMap["is_gold"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["is_mod"] = new Array();
            model_internal::dependentsOnMap["link_karma"] = new Array();
            model_internal::dependentsOnMap["created_utc"] = new Array();
            model_internal::dependentsOnMap["has_mail"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
            model_internal::collectionBaseMap["children"] = "valueObjects.Children";
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["after"] = "String";
        model_internal::propertyTypeMap["before"] = "Object";
        model_internal::propertyTypeMap["children"] = "ArrayCollection";
        model_internal::propertyTypeMap["cookie"] = "String";
        model_internal::propertyTypeMap["modhash"] = "String";
        model_internal::propertyTypeMap["id"] = "String";
        model_internal::propertyTypeMap["comment_karma"] = "int";
        model_internal::propertyTypeMap["has_mod_mail"] = "Object";
        model_internal::propertyTypeMap["created"] = "Number";
        model_internal::propertyTypeMap["is_gold"] = "Boolean";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["is_mod"] = "Boolean";
        model_internal::propertyTypeMap["link_karma"] = "int";
        model_internal::propertyTypeMap["created_utc"] = "Number";
        model_internal::propertyTypeMap["has_mail"] = "Object";

        model_internal::_instance = value;
        model_internal::_afterValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForAfter);
        model_internal::_afterValidator.required = true;
        model_internal::_afterValidator.requiredFieldError = "after is required";
        //model_internal::_afterValidator.source = model_internal::_instance;
        //model_internal::_afterValidator.property = "after";
        model_internal::_beforeValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForBefore);
        model_internal::_beforeValidator.required = true;
        model_internal::_beforeValidator.requiredFieldError = "before is required";
        //model_internal::_beforeValidator.source = model_internal::_instance;
        //model_internal::_beforeValidator.property = "before";
        model_internal::_childrenValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForChildren);
        model_internal::_childrenValidator.required = true;
        model_internal::_childrenValidator.requiredFieldError = "children is required";
        //model_internal::_childrenValidator.source = model_internal::_instance;
        //model_internal::_childrenValidator.property = "children";
        model_internal::_cookieValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCookie);
        model_internal::_cookieValidator.required = true;
        model_internal::_cookieValidator.requiredFieldError = "cookie is required";
        //model_internal::_cookieValidator.source = model_internal::_instance;
        //model_internal::_cookieValidator.property = "cookie";
        model_internal::_modhashValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForModhash);
        model_internal::_modhashValidator.required = true;
        model_internal::_modhashValidator.requiredFieldError = "modhash is required";
        //model_internal::_modhashValidator.source = model_internal::_instance;
        //model_internal::_modhashValidator.property = "modhash";
        model_internal::_idValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForId);
        model_internal::_idValidator.required = true;
        model_internal::_idValidator.requiredFieldError = "id is required";
        //model_internal::_idValidator.source = model_internal::_instance;
        //model_internal::_idValidator.property = "id";
        model_internal::_has_mod_mailValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForHas_mod_mail);
        model_internal::_has_mod_mailValidator.required = true;
        model_internal::_has_mod_mailValidator.requiredFieldError = "has_mod_mail is required";
        //model_internal::_has_mod_mailValidator.source = model_internal::_instance;
        //model_internal::_has_mod_mailValidator.property = "has_mod_mail";
        model_internal::_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForName);
        model_internal::_nameValidator.required = true;
        model_internal::_nameValidator.requiredFieldError = "name is required";
        //model_internal::_nameValidator.source = model_internal::_instance;
        //model_internal::_nameValidator.property = "name";
        model_internal::_has_mailValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForHas_mail);
        model_internal::_has_mailValidator.required = true;
        model_internal::_has_mailValidator.requiredFieldError = "has_mail is required";
        //model_internal::_has_mailValidator.source = model_internal::_instance;
        //model_internal::_has_mailValidator.property = "has_mail";
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
            throw new Error(propertyName + " is not a data property of entity Data");
            
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
            throw new Error(propertyName + " is not a collection property of entity Data");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Data");

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
            throw new Error(propertyName + " does not exist for entity Data");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Data");
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
            throw new Error(propertyName + " does not exist for entity Data");
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
    public function get isAfterAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isBeforeAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isChildrenAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCookieAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isModhashAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isComment_karmaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHas_mod_mailAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreatedAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIs_goldAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIs_modAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isLink_karmaAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCreated_utcAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isHas_mailAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnAfter():void
    {
        if (model_internal::_afterIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfAfter = null;
            model_internal::calculateAfterIsValid();
        }
    }
    public function invalidateDependentOnBefore():void
    {
        if (model_internal::_beforeIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfBefore = null;
            model_internal::calculateBeforeIsValid();
        }
    }
    public function invalidateDependentOnChildren():void
    {
        if (model_internal::_childrenIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfChildren = null;
            model_internal::calculateChildrenIsValid();
        }
    }
    public function invalidateDependentOnCookie():void
    {
        if (model_internal::_cookieIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCookie = null;
            model_internal::calculateCookieIsValid();
        }
    }
    public function invalidateDependentOnModhash():void
    {
        if (model_internal::_modhashIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfModhash = null;
            model_internal::calculateModhashIsValid();
        }
    }
    public function invalidateDependentOnId():void
    {
        if (model_internal::_idIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfId = null;
            model_internal::calculateIdIsValid();
        }
    }
    public function invalidateDependentOnHas_mod_mail():void
    {
        if (model_internal::_has_mod_mailIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfHas_mod_mail = null;
            model_internal::calculateHas_mod_mailIsValid();
        }
    }
    public function invalidateDependentOnName():void
    {
        if (model_internal::_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfName = null;
            model_internal::calculateNameIsValid();
        }
    }
    public function invalidateDependentOnHas_mail():void
    {
        if (model_internal::_has_mailIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfHas_mail = null;
            model_internal::calculateHas_mailIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get afterStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get afterValidator() : StyleValidator
    {
        return model_internal::_afterValidator;
    }

    model_internal function set _afterIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_afterIsValid;         
        if (oldValue !== value)
        {
            model_internal::_afterIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "afterIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get afterIsValid():Boolean
    {
        if (!model_internal::_afterIsValidCacheInitialized)
        {
            model_internal::calculateAfterIsValid();
        }

        return model_internal::_afterIsValid;
    }

    model_internal function calculateAfterIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_afterValidator.validate(model_internal::_instance.after)
        model_internal::_afterIsValid_der = (valRes.results == null);
        model_internal::_afterIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::afterValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::afterValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get afterValidationFailureMessages():Array
    {
        if (model_internal::_afterValidationFailureMessages == null)
            model_internal::calculateAfterIsValid();

        return _afterValidationFailureMessages;
    }

    model_internal function set afterValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_afterValidationFailureMessages;

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
            model_internal::_afterValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "afterValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get beforeStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get beforeValidator() : StyleValidator
    {
        return model_internal::_beforeValidator;
    }

    model_internal function set _beforeIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_beforeIsValid;         
        if (oldValue !== value)
        {
            model_internal::_beforeIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "beforeIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get beforeIsValid():Boolean
    {
        if (!model_internal::_beforeIsValidCacheInitialized)
        {
            model_internal::calculateBeforeIsValid();
        }

        return model_internal::_beforeIsValid;
    }

    model_internal function calculateBeforeIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_beforeValidator.validate(model_internal::_instance.before)
        model_internal::_beforeIsValid_der = (valRes.results == null);
        model_internal::_beforeIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::beforeValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::beforeValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get beforeValidationFailureMessages():Array
    {
        if (model_internal::_beforeValidationFailureMessages == null)
            model_internal::calculateBeforeIsValid();

        return _beforeValidationFailureMessages;
    }

    model_internal function set beforeValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_beforeValidationFailureMessages;

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
            model_internal::_beforeValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "beforeValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get childrenStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get childrenValidator() : StyleValidator
    {
        return model_internal::_childrenValidator;
    }

    model_internal function set _childrenIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_childrenIsValid;         
        if (oldValue !== value)
        {
            model_internal::_childrenIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "childrenIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get childrenIsValid():Boolean
    {
        if (!model_internal::_childrenIsValidCacheInitialized)
        {
            model_internal::calculateChildrenIsValid();
        }

        return model_internal::_childrenIsValid;
    }

    model_internal function calculateChildrenIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_childrenValidator.validate(model_internal::_instance.children)
        model_internal::_childrenIsValid_der = (valRes.results == null);
        model_internal::_childrenIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::childrenValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::childrenValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get childrenValidationFailureMessages():Array
    {
        if (model_internal::_childrenValidationFailureMessages == null)
            model_internal::calculateChildrenIsValid();

        return _childrenValidationFailureMessages;
    }

    model_internal function set childrenValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_childrenValidationFailureMessages;

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
            model_internal::_childrenValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "childrenValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get cookieStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get cookieValidator() : StyleValidator
    {
        return model_internal::_cookieValidator;
    }

    model_internal function set _cookieIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_cookieIsValid;         
        if (oldValue !== value)
        {
            model_internal::_cookieIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cookieIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get cookieIsValid():Boolean
    {
        if (!model_internal::_cookieIsValidCacheInitialized)
        {
            model_internal::calculateCookieIsValid();
        }

        return model_internal::_cookieIsValid;
    }

    model_internal function calculateCookieIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_cookieValidator.validate(model_internal::_instance.cookie)
        model_internal::_cookieIsValid_der = (valRes.results == null);
        model_internal::_cookieIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::cookieValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::cookieValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get cookieValidationFailureMessages():Array
    {
        if (model_internal::_cookieValidationFailureMessages == null)
            model_internal::calculateCookieIsValid();

        return _cookieValidationFailureMessages;
    }

    model_internal function set cookieValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_cookieValidationFailureMessages;

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
            model_internal::_cookieValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cookieValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get modhashStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get modhashValidator() : StyleValidator
    {
        return model_internal::_modhashValidator;
    }

    model_internal function set _modhashIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_modhashIsValid;         
        if (oldValue !== value)
        {
            model_internal::_modhashIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modhashIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get modhashIsValid():Boolean
    {
        if (!model_internal::_modhashIsValidCacheInitialized)
        {
            model_internal::calculateModhashIsValid();
        }

        return model_internal::_modhashIsValid;
    }

    model_internal function calculateModhashIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_modhashValidator.validate(model_internal::_instance.modhash)
        model_internal::_modhashIsValid_der = (valRes.results == null);
        model_internal::_modhashIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::modhashValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::modhashValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get modhashValidationFailureMessages():Array
    {
        if (model_internal::_modhashValidationFailureMessages == null)
            model_internal::calculateModhashIsValid();

        return _modhashValidationFailureMessages;
    }

    model_internal function set modhashValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_modhashValidationFailureMessages;

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
            model_internal::_modhashValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modhashValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get idValidator() : StyleValidator
    {
        return model_internal::_idValidator;
    }

    model_internal function set _idIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_idIsValid;         
        if (oldValue !== value)
        {
            model_internal::_idIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get idIsValid():Boolean
    {
        if (!model_internal::_idIsValidCacheInitialized)
        {
            model_internal::calculateIdIsValid();
        }

        return model_internal::_idIsValid;
    }

    model_internal function calculateIdIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_idValidator.validate(model_internal::_instance.id)
        model_internal::_idIsValid_der = (valRes.results == null);
        model_internal::_idIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::idValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::idValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get idValidationFailureMessages():Array
    {
        if (model_internal::_idValidationFailureMessages == null)
            model_internal::calculateIdIsValid();

        return _idValidationFailureMessages;
    }

    model_internal function set idValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_idValidationFailureMessages;

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
            model_internal::_idValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "idValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get comment_karmaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get has_mod_mailStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get has_mod_mailValidator() : StyleValidator
    {
        return model_internal::_has_mod_mailValidator;
    }

    model_internal function set _has_mod_mailIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_has_mod_mailIsValid;         
        if (oldValue !== value)
        {
            model_internal::_has_mod_mailIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "has_mod_mailIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get has_mod_mailIsValid():Boolean
    {
        if (!model_internal::_has_mod_mailIsValidCacheInitialized)
        {
            model_internal::calculateHas_mod_mailIsValid();
        }

        return model_internal::_has_mod_mailIsValid;
    }

    model_internal function calculateHas_mod_mailIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_has_mod_mailValidator.validate(model_internal::_instance.has_mod_mail)
        model_internal::_has_mod_mailIsValid_der = (valRes.results == null);
        model_internal::_has_mod_mailIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::has_mod_mailValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::has_mod_mailValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get has_mod_mailValidationFailureMessages():Array
    {
        if (model_internal::_has_mod_mailValidationFailureMessages == null)
            model_internal::calculateHas_mod_mailIsValid();

        return _has_mod_mailValidationFailureMessages;
    }

    model_internal function set has_mod_mailValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_has_mod_mailValidationFailureMessages;

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
            model_internal::_has_mod_mailValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "has_mod_mailValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get createdStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get is_goldStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nameValidator() : StyleValidator
    {
        return model_internal::_nameValidator;
    }

    model_internal function set _nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nameIsValid():Boolean
    {
        if (!model_internal::_nameIsValidCacheInitialized)
        {
            model_internal::calculateNameIsValid();
        }

        return model_internal::_nameIsValid;
    }

    model_internal function calculateNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nameValidator.validate(model_internal::_instance.name)
        model_internal::_nameIsValid_der = (valRes.results == null);
        model_internal::_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nameValidationFailureMessages():Array
    {
        if (model_internal::_nameValidationFailureMessages == null)
            model_internal::calculateNameIsValid();

        return _nameValidationFailureMessages;
    }

    model_internal function set nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nameValidationFailureMessages;

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
            model_internal::_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get is_modStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get link_karmaStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get created_utcStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get has_mailStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get has_mailValidator() : StyleValidator
    {
        return model_internal::_has_mailValidator;
    }

    model_internal function set _has_mailIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_has_mailIsValid;         
        if (oldValue !== value)
        {
            model_internal::_has_mailIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "has_mailIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get has_mailIsValid():Boolean
    {
        if (!model_internal::_has_mailIsValidCacheInitialized)
        {
            model_internal::calculateHas_mailIsValid();
        }

        return model_internal::_has_mailIsValid;
    }

    model_internal function calculateHas_mailIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_has_mailValidator.validate(model_internal::_instance.has_mail)
        model_internal::_has_mailIsValid_der = (valRes.results == null);
        model_internal::_has_mailIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::has_mailValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::has_mailValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get has_mailValidationFailureMessages():Array
    {
        if (model_internal::_has_mailValidationFailureMessages == null)
            model_internal::calculateHas_mailIsValid();

        return _has_mailValidationFailureMessages;
    }

    model_internal function set has_mailValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_has_mailValidationFailureMessages;

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
            model_internal::_has_mailValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "has_mailValidationFailureMessages", oldValue, value));
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
            case("after"):
            {
                return afterValidationFailureMessages;
            }
            case("before"):
            {
                return beforeValidationFailureMessages;
            }
            case("children"):
            {
                return childrenValidationFailureMessages;
            }
            case("cookie"):
            {
                return cookieValidationFailureMessages;
            }
            case("modhash"):
            {
                return modhashValidationFailureMessages;
            }
            case("id"):
            {
                return idValidationFailureMessages;
            }
            case("has_mod_mail"):
            {
                return has_mod_mailValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("has_mail"):
            {
                return has_mailValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}
