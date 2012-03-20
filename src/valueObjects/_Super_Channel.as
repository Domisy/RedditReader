/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Channel.as.
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
import valueObjects.Data;
import valueObjects.Image;
import valueObjects.Item;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[ExcludeClass]
public class _Super_Channel extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
        valueObjects.Item.initRemoteClassAliasSingleChild();
        valueObjects.Media_thumbnail.initRemoteClassAliasSingleChild();
        valueObjects.Guid.initRemoteClassAliasSingleChild();
        valueObjects.Data.initRemoteClassAliasSingleChild();
        valueObjects.Children.initRemoteClassAliasSingleChild();
        valueObjects.Image.initRemoteClassAliasSingleChild();
    }

    model_internal var _dminternal_model : _ChannelEntityMetadata;
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
    private var _internal_copyright : String;
    private var _internal_language : String;
    private var _internal_lastBuildDate : String;
    private var _internal_item : ArrayCollection;
    model_internal var _internal_item_leaf:valueObjects.Item;
    private var _internal_data : valueObjects.Data;
    private var _internal_kind : String;
    private var _internal_title : String;
    private var _internal_link : String;
    private var _internal_description : String;
    private var _internal_image : valueObjects.Image;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Channel()
    {
        _model = new _ChannelEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "copyright", model_internal::setterListenerCopyright));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "language", model_internal::setterListenerLanguage));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "lastBuildDate", model_internal::setterListenerLastBuildDate));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "item", model_internal::setterListenerItem));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "data", model_internal::setterListenerData));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "kind", model_internal::setterListenerKind));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "title", model_internal::setterListenerTitle));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "link", model_internal::setterListenerLink));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "description", model_internal::setterListenerDescription));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "image", model_internal::setterListenerImage));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get copyright() : String
    {
        return _internal_copyright;
    }

    [Bindable(event="propertyChange")]
    public function get language() : String
    {
        return _internal_language;
    }

    [Bindable(event="propertyChange")]
    public function get lastBuildDate() : String
    {
        return _internal_lastBuildDate;
    }

    [Bindable(event="propertyChange")]
    public function get item() : ArrayCollection
    {
        return _internal_item;
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
    public function get description() : String
    {
        return _internal_description;
    }

    [Bindable(event="propertyChange")]
    public function get image() : valueObjects.Image
    {
        return _internal_image;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set copyright(value:String) : void
    {
        var oldValue:String = _internal_copyright;
        if (oldValue !== value)
        {
            _internal_copyright = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "copyright", oldValue, _internal_copyright));
        }
    }

    public function set language(value:String) : void
    {
        var oldValue:String = _internal_language;
        if (oldValue !== value)
        {
            _internal_language = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "language", oldValue, _internal_language));
        }
    }

    public function set lastBuildDate(value:String) : void
    {
        var oldValue:String = _internal_lastBuildDate;
        if (oldValue !== value)
        {
            _internal_lastBuildDate = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lastBuildDate", oldValue, _internal_lastBuildDate));
        }
    }

    public function set item(value:*) : void
    {
        var oldValue:ArrayCollection = _internal_item;
        if (oldValue !== value)
        {
            if (value is ArrayCollection)
            {
                _internal_item = value;
            }
            else if (value is Array)
            {
                _internal_item = new ArrayCollection(value);
            }
            else if (value == null)
            {
                _internal_item = null;
            }
            else
            {
                throw new Error("value of item must be a collection");
            }
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "item", oldValue, _internal_item));
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

    public function set description(value:String) : void
    {
        var oldValue:String = _internal_description;
        if (oldValue !== value)
        {
            _internal_description = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "description", oldValue, _internal_description));
        }
    }

    public function set image(value:valueObjects.Image) : void
    {
        var oldValue:valueObjects.Image = _internal_image;
        if (oldValue !== value)
        {
            _internal_image = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "image", oldValue, _internal_image));
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

    model_internal function setterListenerCopyright(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCopyright();
    }

    model_internal function setterListenerLanguage(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLanguage();
    }

    model_internal function setterListenerLastBuildDate(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLastBuildDate();
    }

    model_internal function setterListenerItem(value:flash.events.Event):void
    {
        if (value is mx.events.PropertyChangeEvent)
        {
            if (mx.events.PropertyChangeEvent(value).newValue)
            {
                mx.events.PropertyChangeEvent(value).newValue.addEventListener(mx.events.CollectionEvent.COLLECTION_CHANGE, model_internal::setterListenerItem);
            }
        }
        _model.invalidateDependentOnItem();
    }

    model_internal function setterListenerData(value:flash.events.Event):void
    {
        _model.invalidateDependentOnData();
    }

    model_internal function setterListenerKind(value:flash.events.Event):void
    {
        _model.invalidateDependentOnKind();
    }

    model_internal function setterListenerTitle(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTitle();
    }

    model_internal function setterListenerLink(value:flash.events.Event):void
    {
        _model.invalidateDependentOnLink();
    }

    model_internal function setterListenerDescription(value:flash.events.Event):void
    {
        _model.invalidateDependentOnDescription();
    }

    model_internal function setterListenerImage(value:flash.events.Event):void
    {
        _model.invalidateDependentOnImage();
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
        if (!_model.copyrightIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_copyrightValidationFailureMessages);
        }
        if (!_model.languageIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_languageValidationFailureMessages);
        }
        if (!_model.lastBuildDateIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_lastBuildDateValidationFailureMessages);
        }
        if (!_model.itemIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_itemValidationFailureMessages);
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
        if (!_model.descriptionIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_descriptionValidationFailureMessages);
        }
        if (!_model.imageIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_imageValidationFailureMessages);
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
    public function get _model() : _ChannelEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _ChannelEntityMetadata) : void
    {
        var oldValue : _ChannelEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfCopyright : Array = null;
    model_internal var _doValidationLastValOfCopyright : String;

    model_internal function _doValidationForCopyright(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCopyright != null && model_internal::_doValidationLastValOfCopyright == value)
           return model_internal::_doValidationCacheOfCopyright ;

        _model.model_internal::_copyrightIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCopyrightAvailable && _internal_copyright == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "copyright is required"));
        }

        model_internal::_doValidationCacheOfCopyright = validationFailures;
        model_internal::_doValidationLastValOfCopyright = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLanguage : Array = null;
    model_internal var _doValidationLastValOfLanguage : String;

    model_internal function _doValidationForLanguage(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLanguage != null && model_internal::_doValidationLastValOfLanguage == value)
           return model_internal::_doValidationCacheOfLanguage ;

        _model.model_internal::_languageIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLanguageAvailable && _internal_language == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "language is required"));
        }

        model_internal::_doValidationCacheOfLanguage = validationFailures;
        model_internal::_doValidationLastValOfLanguage = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfLastBuildDate : Array = null;
    model_internal var _doValidationLastValOfLastBuildDate : String;

    model_internal function _doValidationForLastBuildDate(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfLastBuildDate != null && model_internal::_doValidationLastValOfLastBuildDate == value)
           return model_internal::_doValidationCacheOfLastBuildDate ;

        _model.model_internal::_lastBuildDateIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isLastBuildDateAvailable && _internal_lastBuildDate == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "lastBuildDate is required"));
        }

        model_internal::_doValidationCacheOfLastBuildDate = validationFailures;
        model_internal::_doValidationLastValOfLastBuildDate = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfItem : Array = null;
    model_internal var _doValidationLastValOfItem : ArrayCollection;

    model_internal function _doValidationForItem(valueIn:Object):Array
    {
        var value : ArrayCollection = valueIn as ArrayCollection;

        if (model_internal::_doValidationCacheOfItem != null && model_internal::_doValidationLastValOfItem == value)
           return model_internal::_doValidationCacheOfItem ;

        _model.model_internal::_itemIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isItemAvailable && _internal_item == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "item is required"));
        }

        model_internal::_doValidationCacheOfItem = validationFailures;
        model_internal::_doValidationLastValOfItem = value;

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
    
    model_internal var _doValidationCacheOfImage : Array = null;
    model_internal var _doValidationLastValOfImage : valueObjects.Image;

    model_internal function _doValidationForImage(valueIn:Object):Array
    {
        var value : valueObjects.Image = valueIn as valueObjects.Image;

        if (model_internal::_doValidationCacheOfImage != null && model_internal::_doValidationLastValOfImage == value)
           return model_internal::_doValidationCacheOfImage ;

        _model.model_internal::_imageIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isImageAvailable && _internal_image == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "image is required"));
        }

        model_internal::_doValidationCacheOfImage = validationFailures;
        model_internal::_doValidationLastValOfImage = value;

        return validationFailures;
    }
    

}

}
