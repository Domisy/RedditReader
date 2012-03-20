/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - RedditRss.as.
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
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;
import valueObjects.Channel;
import valueObjects.Data;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_RedditRss extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Channel.initRemoteClassAliasSingleChild();
        valueObjects.Item.initRemoteClassAliasSingleChild();
        valueObjects.Media_thumbnail.initRemoteClassAliasSingleChild();
        valueObjects.Guid.initRemoteClassAliasSingleChild();
        valueObjects.Data.initRemoteClassAliasSingleChild();
        valueObjects.Children.initRemoteClassAliasSingleChild();
        valueObjects.Image.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _RedditRssEntityMetadata;
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
    private var _internal_version : String;
    private var _internal_channel : valueObjects.Channel;
    private var _internal_data : valueObjects.Data;
    private var _internal_kind : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_RedditRss()
    {
        _model = new _RedditRssEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "version", model_internal::setterListenerVersion));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "channel", model_internal::setterListenerChannel));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "data", model_internal::setterListenerData));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "kind", model_internal::setterListenerKind));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get version() : String
    {
        return _internal_version;
    }

    [Bindable(event="propertyChange")]
    public function get channel() : valueObjects.Channel
    {
        return _internal_channel;
    }

    [Bindable(event="propertyChange")]
    public function get data() : valueObjects.Data
    {
        return _internal_data;
    }

    [Bindable(event="propertyChange")]
    public function get kind() : String
    {
        return _internal_kind;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set version(value:String) : void
    {
        var oldValue:String = _internal_version;
        if (oldValue !== value)
        {
            _internal_version = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "version", oldValue, _internal_version));
        }
    }

    public function set channel(value:valueObjects.Channel) : void
    {
        var oldValue:valueObjects.Channel = _internal_channel;
        if (oldValue !== value)
        {
            _internal_channel = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "channel", oldValue, _internal_channel));
        }
    }

    public function set data(value:valueObjects.Data) : void
    {
        var oldValue:valueObjects.Data = _internal_data;
        if (oldValue !== value)
        {
            _internal_data = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "data", oldValue, _internal_data));
        }
    }

    public function set kind(value:String) : void
    {
        var oldValue:String = _internal_kind;
        if (oldValue !== value)
        {
            _internal_kind = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "kind", oldValue, _internal_kind));
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

    model_internal function setterListenerVersion(value:flash.events.Event):void
    {
        _model.invalidateDependentOnVersion();
    }

    model_internal function setterListenerChannel(value:flash.events.Event):void
    {
        _model.invalidateDependentOnChannel();
    }

    model_internal function setterListenerData(value:flash.events.Event):void
    {
        _model.invalidateDependentOnData();
    }

    model_internal function setterListenerKind(value:flash.events.Event):void
    {
        _model.invalidateDependentOnKind();
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
        if (!_model.versionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_versionValidationFailureMessages);
        }
        if (!_model.channelIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_channelValidationFailureMessages);
        }
        if (!_model.dataIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dataValidationFailureMessages);
        }
        if (!_model.kindIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_kindValidationFailureMessages);
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
    public function get _model() : _RedditRssEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _RedditRssEntityMetadata) : void
    {
        var oldValue : _RedditRssEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfVersion : Array = null;
    model_internal var _doValidationLastValOfVersion : String;

    model_internal function _doValidationForVersion(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfVersion != null && model_internal::_doValidationLastValOfVersion == value)
           return model_internal::_doValidationCacheOfVersion ;

        _model.model_internal::_versionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isVersionAvailable && _internal_version == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "version is required"));
        }

        model_internal::_doValidationCacheOfVersion = validationFailures;
        model_internal::_doValidationLastValOfVersion = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfChannel : Array = null;
    model_internal var _doValidationLastValOfChannel : valueObjects.Channel;

    model_internal function _doValidationForChannel(valueIn:Object):Array
    {
        var value : valueObjects.Channel = valueIn as valueObjects.Channel;

        if (model_internal::_doValidationCacheOfChannel != null && model_internal::_doValidationLastValOfChannel == value)
           return model_internal::_doValidationCacheOfChannel ;

        _model.model_internal::_channelIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isChannelAvailable && _internal_channel == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "channel is required"));
        }

        model_internal::_doValidationCacheOfChannel = validationFailures;
        model_internal::_doValidationLastValOfChannel = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfData : Array = null;
    model_internal var _doValidationLastValOfData : valueObjects.Data;

    model_internal function _doValidationForData(valueIn:Object):Array
    {
        var value : valueObjects.Data = valueIn as valueObjects.Data;

        if (model_internal::_doValidationCacheOfData != null && model_internal::_doValidationLastValOfData == value)
           return model_internal::_doValidationCacheOfData ;

        _model.model_internal::_dataIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDataAvailable && _internal_data == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "data is required"));
        }

        model_internal::_doValidationCacheOfData = validationFailures;
        model_internal::_doValidationLastValOfData = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfKind : Array = null;
    model_internal var _doValidationLastValOfKind : String;

    model_internal function _doValidationForKind(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfKind != null && model_internal::_doValidationLastValOfKind == value)
           return model_internal::_doValidationCacheOfKind ;

        _model.model_internal::_kindIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isKindAvailable && _internal_kind == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "kind is required"));
        }

        model_internal::_doValidationCacheOfKind = validationFailures;
        model_internal::_doValidationLastValOfKind = value;

        return validationFailures;
    }
    

}

}
