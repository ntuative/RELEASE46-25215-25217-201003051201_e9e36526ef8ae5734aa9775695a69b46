package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetCreditBalanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFrameUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_678:String = "me_menu_settings_view";
      
      private static const const_766:int = 10;
      
      public static const const_572:String = "me_menu_effects_view";
      
      public static const const_107:String = "me_menu_top_view";
      
      public static const const_1253:String = "me_menu_rooms_view";
      
      public static const const_915:String = "me_menu_dance_moves_view";
      
      public static const const_244:String = "me_menu_my_clothes_view";
       
      
      private var var_1985:Boolean = false;
      
      private var _isAnimating:Boolean = false;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1486:int = 0;
      
      private var var_1987:int = 0;
      
      private var var_1989:Boolean = false;
      
      private var var_260:Boolean = false;
      
      private var var_1988:int = 0;
      
      private var var_1846:Number = 0;
      
      private var _mainContainer:IWindowContainer;
      
      private var var_576:Boolean = false;
      
      private var var_93:ClubPromoView;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_1244:int = 0;
      
      private var var_1986:Boolean = false;
      
      private var var_1026:Point;
      
      private var var_28:IMeMenuView;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         _config = param5;
         var_1026 = new Point(0,0);
         _eventDispatcher = param4;
         if(param5 != null && false)
         {
            var_1986 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         changeView(const_107);
         hide();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_664,onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_540,onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_581,onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_503,onToolbarClicked);
         param1.addEventListener(RoomWidgetFrameUpdateEvent.const_323,onUpdate);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_565,onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_387,onShowAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_898,onHideAvatarEditorClubPromo);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_199,onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_202,onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_611,onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_192,onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_314,onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_95,onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_396,onTutorialEvent);
         param1.addEventListener(RoomWidgetCreditBalanceUpdateEvent.const_162,onCreditBalance);
         super.registerUpdateEvents(param1);
      }
      
      private function onUpdate(param1:Event = null) : void
      {
         if(!_isAnimating)
         {
            return;
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return _mainContainer;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return var_576;
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!var_260)
         {
            return;
         }
         if(var_28.window.name == const_678)
         {
            (var_28 as MeMenuSettingsView).updateSettings(param1);
         }
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return var_1244 > 0;
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onCreditBalance(param1:RoomWidgetCreditBalanceUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var_1486 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",var_1486.toString());
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(var_260 && var_28.window.name == const_244))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_533);
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_664,onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_540,onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_581,onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_503,onToolbarClicked);
         param1.removeEventListener(RoomWidgetFrameUpdateEvent.const_323,onUpdate);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_199,onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_202,onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_611,onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_565,onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_387,onShowAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_898,onHideAvatarEditorClubPromo);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_192,onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_314,onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_396,onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_95,onTutorialEvent);
         param1.removeEventListener(RoomWidgetCreditBalanceUpdateEvent.const_162,onCreditBalance);
      }
      
      override public function dispose() : void
      {
         hide();
         _eventDispatcher = null;
         if(var_28 != null)
         {
            var_28.dispose();
            var_28 = null;
         }
         super.dispose();
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return var_1985;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         var_1846 = new Date().valueOf();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      private function onHideAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_93 != null)
         {
            var_93.dispose();
            var_93 = null;
         }
         updateSize();
      }
      
      public function get isDancing() : Boolean
      {
         return var_1989;
      }
      
      public function get creditBalance() : int
      {
         return var_1486;
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_396:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + var_260 + " view: " + var_28.window.name);
               if(var_260 != true || var_28.window.name != const_107)
               {
                  return;
               }
               (var_28 as MeMenuMainView).setIconAssets("clothes_icon",const_107,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_95:
               hide();
         }
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = new Date().valueOf();
         return _loc1_ - var_1846 > 5000;
      }
      
      public function get habboClubPeriods() : int
      {
         return var_1987;
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               var_576 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               var_576 = false;
               break;
            default:
               trace("MeMenuWidget: unknown avatar action event: " + param1.actionType);
         }
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = var_1244 > 0;
         var_1244 = param1.daysLeft;
         var_1987 = param1.periodsLeft;
         var_1988 = param1.pastPeriods;
         var_1985 = param1.allowClubDances;
         if(_loc2_ != param1.daysLeft > 0)
         {
            if(var_28 != null)
            {
               changeView(var_28.window.name);
            }
         }
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         var_1989 = param1;
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(var_28 != null && var_28.window.name != const_244)
         {
            hide();
         }
      }
      
      private function onShowAvatarEditorClubPromo(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(var_28 != null && var_28.window.name == const_244)
         {
            if(param1.promoMode == RoomWidgetAvatarEditorUpdateEvent.const_917)
            {
               var_93 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_1190);
            }
            else
            {
               var_93 = new ClubPromoView(this,param1.promoImageUrl,ClubPromoView.const_408);
            }
            _loc2_ = _mainContainer.getChildByName(var_28.window.name);
            if(_loc2_ != null)
            {
               var_93.window.x = _loc2_.width + const_766;
               _mainContainer.addChild(var_93.window);
               _mainContainer.width = var_93.window.x + var_93.window.width;
            }
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         var_576 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               var_576 = true;
            }
         }
         if(var_28 != null && var_28.window.name == const_572)
         {
            (var_28 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      public function get habboClubPastPeriods() : int
      {
         return var_1988;
      }
      
      public function get habboClubDays() : int
      {
         return var_1244;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(_mainContainer == null)
         {
            _mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1378,HabboWindowStyle.const_927,HabboWindowParam.const_39,new Rectangle(0,0,170,260)) as IWindowContainer;
            _mainContainer.tags.push("room_widget_me_menu");
         }
         return _mainContainer;
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               var_260 = !var_260;
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               var_260 = false;
               break;
            default:
               return;
         }
         if(var_260)
         {
            show();
         }
         else
         {
            hide();
         }
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_555);
         _loc2_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc2_);
         }
         if(var_28 != null)
         {
            _mainContainer.removeChild(var_28.window);
            var_28.dispose();
            var_28 = null;
         }
         var_260 = false;
         _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(var_28 != null && var_28.window.name == const_244)
         {
            if(var_93 != null)
            {
               var_93.dispose();
               var_93 = null;
            }
            changeView(const_107);
         }
      }
      
      public function get method_4() : Boolean
      {
         return var_1986;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         if(var_93 != null)
         {
            var_93.dispose();
            var_93 = null;
         }
         switch(param1)
         {
            case const_107:
               _loc2_ = new MeMenuMainView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_572:
               _loc2_ = new MeMenuEffectsView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_915:
               _loc2_ = new MeMenuDanceView();
               _eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_244:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1253:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_678:
               _loc2_ = new MeMenuSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(var_28 != null)
            {
               _mainContainer.removeChild(var_28.window);
               var_28.dispose();
               var_28 = null;
            }
            var_28 = _loc2_;
            var_28.init(this,param1);
         }
         updateSize();
      }
      
      public function updateSize() : void
      {
         if(var_28 != null)
         {
            var_1026.x = var_28.window.width + 10;
            var_1026.y = var_28.window.height;
            var_28.window.x = 5;
            var_28.window.y = 0;
            _mainContainer.width = var_1026.x;
            _mainContainer.height = var_1026.y;
            if(var_93 != null)
            {
               _mainContainer.width = var_93.window.x + var_93.window.width + const_766;
            }
         }
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return _config;
      }
      
      private function show() : void
      {
         if(!_mainContainer || true)
         {
            return;
         }
         changeView(const_107);
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_643);
         _loc1_.window = _mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         var_260 = true;
      }
   }
}
