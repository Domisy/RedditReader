/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Data.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.CollectionEvent;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import valueObjects.Children;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Data extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Children.initRemoteClassAliasSingleChild();
        valueObjects.Data.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _DataEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_cookie : String;
    private var _internal_after : String;
    private var _internal_before : Object;
    private var _internal_children : ArrayCollection;
    model_internal var _internal_children_leaf:valueObjects.Children;
    private var _internal_modhash : String;
    private var _internal_id : String;
    private var _internal_comment_karma : int;
    private var _internal_has_mod_mail : Object;
    private var _internal_created : Number = Number(0);
    private var _internal_is_gold : Boolean;
    private var _internal_name : String;
    private var _internal_is_mod : Boolean;
    private var _internal_link_karma : int;
    private var _internal_created_utc : Number = Number(0);
    private var _internal_has_mail : Object;

    private static var emptyArray:Array = new Array();

    // Change this value according to your application's floating-point precision
    private static var epsilon:Number = 0.0001;

    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Data()
    {
        _model = new _DataEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cookie", model_internal::setterListenerCookie));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "after", model_internal::setterListenerAfter));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "before", model_internal::setterListenerBefore));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "children", model_internal::setterListenerChildren));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "modhash", model_internal::setterListenerModhash));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "id", model_internal::setterListenerId));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "has_mod_mail", model_internal::setterListenerHas_mod_mail));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "has_mail", model_internal::setterListenerHas_mail));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get cookie() : String
    {
        return _internal_cookie;
    }

    [Bindable(event="propertyChange")]
    public function get after() : String
    {
        return _internal_after;
    }

    [Bindable(event="propertyChange")]
    public function get before() : Object
    {
        return _internal_before;
    }

    [Bindable(event="propertyChange")]
    public function get children() : ArrayCollection
    {
        return _internal_children;
    }

    [Bindable(event="propertyChange")]
    public function get modhash() : String
    {
        return _internal_modhash;
    }

    [Bindable(event="propertyChange")]
    public function get id() : String
    {
        return _internal_id;
    }

    [Bindable(event="propertyChange")]
    public function get comment_karma() : int
    {
        return _internal_comment_karma;
    }

    [Bindable(event="propertyChange")]
    public function get has_mod_mail() : Object
    {
        return _internal_has_mod_mail;
    }

    [Bindable(event="propertyChange")]
    public function get created() : Number
    {
        return _internal_created;
    }

    [Bindable(event="propertyChange")]
    public function get is_gold() : Boolean
    {
        return _internal_is_gold;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get is_mod() : Boolean
    {
        return _internal_is_mod;
    }

    [Bindable(event="propertyChange")]
    public function get link_karma() : int
    {
        return _internal_link_karma;
    }

    [Bindable(event="propertyChange")]
    public function get created_utc() : Number
    {
        return _internal_created_utc;
    }

    [Bindable(event="propertyChange")]
    public function get has_mail() : Object
    {
        return _internal_has_mail;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set cookie(value:String) : void
    {
        var oldValue:String = _internal_cookie;
        if (oldValue !== value)
        {
            _internal_cookie = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cookie", oldValue, _internal_cookie));
        }
    }

    public function set after(value:String) : void
    {
        var oldValue:String = _internal_after;
        if (oldValue !== value)
        {
            _internal_after = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "after", oldValue, _internal_after));
        }
    }

    public function set before(value:Object) : void
    {
        var oldValue:Object = _internal_before;
        if (oldValue !== value)
        {
            _internal_before = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "before", oldValue, _internal_before));
        }
    }

    public function set children(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_children;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_children = value;
            }
            else if (value is Array)
            {
                _internal_children = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_children = null;
            }
            else
            {
                throw new Error("value of children must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "children", oldValue, _internal_children));
        }
    }

    public function set modhash(value:String) : void
    {
        var oldValue:String = _internal_modhash;
        if (oldValue !== value)
        {
            _internal_modhash = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "modhash", oldValue, _internal_modhash));
        }
    }

    public function set id(value:String) : void
    {
        var oldValue:String = _internal_id;
        if (oldValue !== value)
        {
            _internal_id = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "id", oldValue, _internal_id));
        }
    }

    public function set comment_karma(value:int) : void
    {
        var oldValue:int = _internal_comment_karma;
        if (oldValue !== value)
        {
            _internal_comment_karma = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "comment_karma", oldValue, _internal_comment_karma));
        }
    }

    public function set has_mod_mail(value:Object) : void
    {
        var oldValue:Object = _internal_has_mod_mail;
        if (oldValue !== value)
        {
            _internal_has_mod_mail = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "has_mod_mail", oldValue, _internal_has_mod_mail));
        }
    }

    public function set created(value:Number) : void
    {
        var oldValue:Number = _internal_created;
        if (isNaN(_internal_created) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_created = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created", oldValue, _internal_created));
        }
    }

    public function set is_gold(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_is_gold;
        if (oldValue !== value)
        {
            _internal_is_gold = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_gold", oldValue, _internal_is_gold));
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "name", oldValue, _internal_name));
        }
    }

    public function set is_mod(value:Boolean) : void
    {
        var oldValue:Boolean = _internal_is_mod;
        if (oldValue !== value)
        {
            _internal_is_mod = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "is_mod", oldValue, _internal_is_mod));
        }
    }

    public function set link_karma(value:int) : void
    {
        var oldValue:int = _internal_link_karma;
        if (oldValue !== value)
        {
            _internal_link_karma = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "link_karma", oldValue, _internal_link_karma));
        }
    }

    public function set created_utc(value:Number) : void
    {
        var oldValue:Number = _internal_created_utc;
        if (isNaN(_internal_created_utc) == true || Math.abs(oldValue - value) > epsilon)
        {
            _internal_created_utc = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "created_utc", oldValue, _internal_created_utc));
        }
    }

    public function set has_mail(value:Object) : void
    {
        var oldValue:Object = _internal_has_mail;
        if (oldValue !== value)
        {
            _internal_has_mail = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "has_mail", oldValue, _internal_has_mail));
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */

    model_internal function setterListenerCookie(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCookie();
    }

    model_internal function setterListenerAfter(value:flash.events.Event):void
    {
        _model.invalidateDependentOnAfter();
    }

    model_internal function setterListenerBefore(value:flash.events.Event):void
    {
        _model.invalidateDependentOnBefore();
    }

    model_internal function setterListenerChildren(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerChildren);
            }
        }
        _model.invalidateDependentOnChildren();
    }

    model_internal function setterListenerModhash(value:flash.events.Event):void
    {
        _model.invalidateDependentOnModhash();
    }

    model_internal function setterListenerId(value:flash.events.Event):void
    {
        _model.invalidateDependentOnId();
    }

    model_internal function setterListenerHas_mod_mail(value:flash.events.Event):void
    {
        _model.invalidateDependentOnHas_mod_mail();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerHas_mail(value:flash.events.Event):void
    {
        _model.invalidateDependentOnHas_mail();
    }


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;
        if (!_model.cookieIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_cookieValidationFailureMessages);
        }
        if (!_model.afterIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_afterValidationFailureMessages);
        }
        if (!_model.beforeIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_beforeValidationFailureMessages);
        }
        if (!_model.childrenIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_childrenValidationFailureMessages);
        }
        if (!_model.modhashIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_modhashValidationFailureMessages);
        }
        if (!_model.idIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_idValidationFailureMessages);
        }
        if (!_model.has_mod_mailIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_has_mod_mailValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.has_mailIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_has_mailValidationFailureMessages);
        }

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _DataEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _DataEntityMetadata) : void
    {
        var oldValue : _DataEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }

    model_internal var _doValidationCacheOfCookie : Array = null;
    model_internal var _doValidationLastValOfCookie : String;

    model_internal function _doValidationForCookie(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCookie != null && model_internal::_doValidationLastValOfCookie == value)
           return model_internal::_doValidationCacheOfCookie ;

        _model.model_internal::_cookieIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCookieAvailable && _internal_cookie == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cookie is required"));
        }

        model_internal::_doValidationCacheOfCookie = validationFailures;
        model_internal::_doValidationLastValOfCookie = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfAfter : Array = null;
    model_internal var _doValidationLastValOfAfter : String;

    model_internal function _doValidationForAfter(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfAfter != null && model_internal::_doValidationLastValOfAfter == value)
           return model_internal::_doValidationCacheOfAfter ;

        _model.model_internal::_afterIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isAfterAvailable && _internal_after == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "after is required"));
        }

        model_internal::_doValidationCacheOfAfter = validationFailures;
        model_internal::_doValidationLastValOfAfter = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfBefore : Array = null;
    model_internal var _doValidationLastValOfBefore : Object;

    model_internal function _doValidationForBefore(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfBefore != null && model_internal::_doValidationLastValOfBefore == value)
           return model_internal::_doValidationCacheOfBefore ;

        _model.model_internal::_beforeIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isBeforeAvailable && _internal_before == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "before is required"));
        }

        model_internal::_doValidationCacheOfBefore = validationFailures;
        model_internal::_doValidationLastValOfBefore = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChildren : Array = null;
    model_internal var _doValidationLastValOfChildren : ArrayCollection;

    model_internal function _doValidationForChildren(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfChildren != null && model_internal::_doValidationLastValOfChildren == value)
           return model_internal::_doValidationCacheOfChildren ;

        _model.model_internal::_childrenIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChildrenAvailable && _internal_children == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "children is required"));
        }

        model_internal::_doValidationCacheOfChildren = validationFailures;
        model_internal::_doValidationLastValOfChildren = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfModhash : Array = null;
    model_internal var _doValidationLastValOfModhash : String;

    model_internal function _doValidationForModhash(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfModhash != null && model_internal::_doValidationLastValOfModhash == value)
           return model_internal::_doValidationCacheOfModhash ;

        _model.model_internal::_modhashIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isModhashAvailable && _internal_modhash == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "modhash is required"));
        }

        model_internal::_doValidationCacheOfModhash = validationFailures;
        model_internal::_doValidationLastValOfModhash = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfId : Array = null;
    model_internal var _doValidationLastValOfId : String;

    model_internal function _doValidationForId(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfId != null && model_internal::_doValidationLastValOfId == value)
           return model_internal::_doValidationCacheOfId ;

        _model.model_internal::_idIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isIdAvailable && _internal_id == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "id is required"));
        }

        model_internal::_doValidationCacheOfId = validationFailures;
        model_internal::_doValidationLastValOfId = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfHas_mod_mail : Array = null;
    model_internal var _doValidationLastValOfHas_mod_mail : Object;

    model_internal function _doValidationForHas_mod_mail(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfHas_mod_mail != null && model_internal::_doValidationLastValOfHas_mod_mail == value)
           return model_internal::_doValidationCacheOfHas_mod_mail ;

        _model.model_internal::_has_mod_mailIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isHas_mod_mailAvailable && _internal_has_mod_mail == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "has_mod_mail is required"));
        }

        model_internal::_doValidationCacheOfHas_mod_mail = validationFailures;
        model_internal::_doValidationLastValOfHas_mod_mail = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfHas_mail : Array = null;
    model_internal var _doValidationLastValOfHas_mail : Object;

    model_internal function _doValidationForHas_mail(valueIn:Object):Array
    {
        var value : Object = valueIn as Object;

        if (model_internal::_doValidationCacheOfHas_mail != null && model_internal::_doValidationLastValOfHas_mail == value)
           return model_internal::_doValidationCacheOfHas_mail ;

        _model.model_internal::_has_mailIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isHas_mailAvailable && _internal_has_mail == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "has_mail is required"));
        }

        model_internal::_doValidationCacheOfHas_mail = validationFailures;
        model_internal::_doValidationLastValOfHas_mail = value;

        return validationFailures;
    }
    

}

}
