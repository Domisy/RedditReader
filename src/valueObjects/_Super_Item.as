/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Item.as.
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
import valueObjects.Guid;
import valueObjects.Media_thumbnail;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Item extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Media_thumbnail.initRemoteClassAliasSingleChild();
        valueObjects.Guid.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ItemEntityMetadata;
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
    private var _internal_media_title : String;
    private var _internal_media_thumbnail : valueObjects.Media_thumbnail;
    private var _internal_dc_date : String;
    private var _internal_title : String;
    private var _internal_link : String;
    private var _internal_guid : valueObjects.Guid;
    private var _internal_pubDate : String;
    private var _internal_description : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Item()
    {
        _model = new _ItemEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "media_title", model_internal::setterListenerMedia_title));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "media_thumbnail", model_internal::setterListenerMedia_thumbnail));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "dc_date", model_internal::setterListenerDc_date));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "title", model_internal::setterListenerTitle));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "link", model_internal::setterListenerLink));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "guid", model_internal::setterListenerGuid));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "pubDate", model_internal::setterListenerPubDate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "description", model_internal::setterListenerDescription));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get media_title() : String
    {
        return _internal_media_title;
    }

    [Bindable(event="propertyChange")]
    public function get media_thumbnail() : valueObjects.Media_thumbnail
    {
        return _internal_media_thumbnail;
    }

    [Bindable(event="propertyChange")]
    public function get dc_date() : String
    {
        return _internal_dc_date;
    }

    [Bindable(event="propertyChange")]
    public function get title() : String
    {
        return _internal_title;
    }

    [Bindable(event="propertyChange")]
    public function get link() : String
    {
        return _internal_link;
    }

    [Bindable(event="propertyChange")]
    public function get guid() : valueObjects.Guid
    {
        return _internal_guid;
    }

    [Bindable(event="propertyChange")]
    public function get pubDate() : String
    {
        return _internal_pubDate;
    }

    [Bindable(event="propertyChange")]
    public function get description() : String
    {
        return _internal_description;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set media_title(value:String) : void
    {
        var oldValue:String = _internal_media_title;
        if (oldValue !== value)
        {
            _internal_media_title = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "media_title", oldValue, _internal_media_title));
        }
    }

    public function set media_thumbnail(value:valueObjects.Media_thumbnail) : void
    {
        var oldValue:valueObjects.Media_thumbnail = _internal_media_thumbnail;
        if (oldValue !== value)
        {
            _internal_media_thumbnail = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "media_thumbnail", oldValue, _internal_media_thumbnail));
        }
    }

    public function set dc_date(value:String) : void
    {
        var oldValue:String = _internal_dc_date;
        if (oldValue !== value)
        {
            _internal_dc_date = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dc_date", oldValue, _internal_dc_date));
        }
    }

    public function set title(value:String) : void
    {
        var oldValue:String = _internal_title;
        if (oldValue !== value)
        {
            _internal_title = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "title", oldValue, _internal_title));
        }
    }

    public function set link(value:String) : void
    {
        var oldValue:String = _internal_link;
        if (oldValue !== value)
        {
            _internal_link = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "link", oldValue, _internal_link));
        }
    }

    public function set guid(value:valueObjects.Guid) : void
    {
        var oldValue:valueObjects.Guid = _internal_guid;
        if (oldValue !== value)
        {
            _internal_guid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "guid", oldValue, _internal_guid));
        }
    }

    public function set pubDate(value:String) : void
    {
        var oldValue:String = _internal_pubDate;
        if (oldValue !== value)
        {
            _internal_pubDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "pubDate", oldValue, _internal_pubDate));
        }
    }

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
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

    model_internal function setterListenerMedia_title(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMedia_title();
    }

    model_internal function setterListenerMedia_thumbnail(value:flash.events.Event):void
    {
        _model.invalidateDependentOnMedia_thumbnail();
    }

    model_internal function setterListenerDc_date(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDc_date();
    }

    model_internal function setterListenerTitle(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTitle();
    }

    model_internal function setterListenerLink(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLink();
    }

    model_internal function setterListenerGuid(value:flash.events.Event):void
    {
        _model.invalidateDependentOnGuid();
    }

    model_internal function setterListenerPubDate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnPubDate();
    }

    model_internal function setterListenerDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescription();
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
        if (!_model.media_titleIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_media_titleValidationFailureMessages);
        }
        if (!_model.media_thumbnailIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_media_thumbnailValidationFailureMessages);
        }
        if (!_model.dc_dateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_dc_dateValidationFailureMessages);
        }
        if (!_model.titleIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_titleValidationFailureMessages);
        }
        if (!_model.linkIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_linkValidationFailureMessages);
        }
        if (!_model.guidIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_guidValidationFailureMessages);
        }
        if (!_model.pubDateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_pubDateValidationFailureMessages);
        }
        if (!_model.descriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descriptionValidationFailureMessages);
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
    public function get _model() : _ItemEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ItemEntityMetadata) : void
    {
        var oldValue : _ItemEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfMedia_title : Array = null;
    model_internal var _doValidationLastValOfMedia_title : String;

    model_internal function _doValidationForMedia_title(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfMedia_title != null && model_internal::_doValidationLastValOfMedia_title == value)
           return model_internal::_doValidationCacheOfMedia_title ;

        _model.model_internal::_media_titleIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMedia_titleAvailable && _internal_media_title == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "media_title is required"));
        }

        model_internal::_doValidationCacheOfMedia_title = validationFailures;
        model_internal::_doValidationLastValOfMedia_title = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfMedia_thumbnail : Array = null;
    model_internal var _doValidationLastValOfMedia_thumbnail : valueObjects.Media_thumbnail;

    model_internal function _doValidationForMedia_thumbnail(valueIn:Object):Array
    {
        var value : valueObjects.Media_thumbnail = valueIn as valueObjects.Media_thumbnail;

        if (model_internal::_doValidationCacheOfMedia_thumbnail != null && model_internal::_doValidationLastValOfMedia_thumbnail == value)
           return model_internal::_doValidationCacheOfMedia_thumbnail ;

        _model.model_internal::_media_thumbnailIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isMedia_thumbnailAvailable && _internal_media_thumbnail == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "media_thumbnail is required"));
        }

        model_internal::_doValidationCacheOfMedia_thumbnail = validationFailures;
        model_internal::_doValidationLastValOfMedia_thumbnail = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDc_date : Array = null;
    model_internal var _doValidationLastValOfDc_date : String;

    model_internal function _doValidationForDc_date(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDc_date != null && model_internal::_doValidationLastValOfDc_date == value)
           return model_internal::_doValidationCacheOfDc_date ;

        _model.model_internal::_dc_dateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDc_dateAvailable && _internal_dc_date == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "dc_date is required"));
        }

        model_internal::_doValidationCacheOfDc_date = validationFailures;
        model_internal::_doValidationLastValOfDc_date = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTitle : Array = null;
    model_internal var _doValidationLastValOfTitle : String;

    model_internal function _doValidationForTitle(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTitle != null && model_internal::_doValidationLastValOfTitle == value)
           return model_internal::_doValidationCacheOfTitle ;

        _model.model_internal::_titleIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTitleAvailable && _internal_title == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "title is required"));
        }

        model_internal::_doValidationCacheOfTitle = validationFailures;
        model_internal::_doValidationLastValOfTitle = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLink : Array = null;
    model_internal var _doValidationLastValOfLink : String;

    model_internal function _doValidationForLink(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLink != null && model_internal::_doValidationLastValOfLink == value)
           return model_internal::_doValidationCacheOfLink ;

        _model.model_internal::_linkIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLinkAvailable && _internal_link == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "link is required"));
        }

        model_internal::_doValidationCacheOfLink = validationFailures;
        model_internal::_doValidationLastValOfLink = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfGuid : Array = null;
    model_internal var _doValidationLastValOfGuid : valueObjects.Guid;

    model_internal function _doValidationForGuid(valueIn:Object):Array
    {
        var value : valueObjects.Guid = valueIn as valueObjects.Guid;

        if (model_internal::_doValidationCacheOfGuid != null && model_internal::_doValidationLastValOfGuid == value)
           return model_internal::_doValidationCacheOfGuid ;

        _model.model_internal::_guidIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isGuidAvailable && _internal_guid == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "guid is required"));
        }

        model_internal::_doValidationCacheOfGuid = validationFailures;
        model_internal::_doValidationLastValOfGuid = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfPubDate : Array = null;
    model_internal var _doValidationLastValOfPubDate : String;

    model_internal function _doValidationForPubDate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfPubDate != null && model_internal::_doValidationLastValOfPubDate == value)
           return model_internal::_doValidationCacheOfPubDate ;

        _model.model_internal::_pubDateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isPubDateAvailable && _internal_pubDate == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "pubDate is required"));
        }

        model_internal::_doValidationCacheOfPubDate = validationFailures;
        model_internal::_doValidationLastValOfPubDate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfDescription : Array = null;
    model_internal var _doValidationLastValOfDescription : String;

    model_internal function _doValidationForDescription(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfDescription != null && model_internal::_doValidationLastValOfDescription == value)
           return model_internal::_doValidationCacheOfDescription ;

        _model.model_internal::_descriptionIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isDescriptionAvailable && _internal_description == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "description is required"));
        }

        model_internal::_doValidationCacheOfDescription = validationFailures;
        model_internal::_doValidationLastValOfDescription = value;

        return validationFailures;
    }
    

}

}
