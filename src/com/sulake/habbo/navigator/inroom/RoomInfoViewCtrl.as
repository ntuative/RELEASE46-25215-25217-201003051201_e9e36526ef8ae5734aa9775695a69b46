package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_711:IWindowContainer;
      
      private var var_1049:ITextWindow;
      
      private var var_196:RoomSettingsCtrl;
      
      private var var_1289:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var _hideInfoTimer:Timer;
      
      private var var_1283:ITextWindow;
      
      private var var_353:IWindowContainer;
      
      private var var_2090:IWindowContainer;
      
      private var var_2089:ITextWindow;
      
      private var var_861:IWindowContainer;
      
      private var var_1518:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_649:ITextWindow;
      
      private var var_1521:IWindowContainer;
      
      private var var_1287:IWindowContainer;
      
      private var var_863:ITextWindow;
      
      private var var_1048:ITextFieldWindow;
      
      private var var_304:IWindowContainer;
      
      private var var_860:ITextWindow;
      
      private var var_1522:IButtonWindow;
      
      private var var_1047:ITextWindow;
      
      private var var_2315:int;
      
      private var var_1288:IContainerButtonWindow;
      
      private var var_862:IWindowContainer;
      
      private var var_1286:ITextWindow;
      
      private var var_1285:IContainerButtonWindow;
      
      private var var_1519:ITextWindow;
      
      private var var_1520:IButtonWindow;
      
      private var var_910:TagRenderer;
      
      private var var_2040:ITextWindow;
      
      private var var_352:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_712:ITextWindow;
      
      private var var_273:RoomThumbnailCtrl;
      
      private var var_1284:IContainerButtonWindow;
      
      private var var_2091:IWindowContainer;
      
      private var var_274:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_352 = new RoomEventViewCtrl(_navigator);
         var_196 = new RoomSettingsCtrl(_navigator,this,true);
         var_273 = new RoomThumbnailCtrl(_navigator);
         var_910 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_196);
         _hideInfoTimer = new Timer(6000,1);
         _hideInfoTimer.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_196.active = true;
         this.var_352.active = false;
         this.var_273.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1518.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1520.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1521.visible = Util.hasVisibleChildren(var_1521);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_649.text = param1.roomName;
         var_649.height = NaN;
         _ownerName.text = param1.ownerName;
         var_863.text = param1.description;
         var_910.refreshTags(var_353,param1.tags);
         var_863.visible = false;
         if(param1.description != "")
         {
            var_863.height = NaN;
            var_863.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_353,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_353,"thumb_down",_loc3_,onThumbDown,0);
         var_2089.visible = _loc3_;
         var_860.visible = !_loc3_;
         var_1519.visible = !_loc3_;
         var_1519.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_353,"home",param2,null,0);
         _navigator.refreshButton(var_353,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_353,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_649.y,0);
         var_353.visible = true;
         var_353.height = Util.getLowestPoint(var_353);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      public function dispose() : void
      {
         if(_hideInfoTimer)
         {
            _hideInfoTimer.removeEventListener(TimerEvent.TIMER,hideInfo);
            _hideInfoTimer.reset();
            _hideInfoTimer = null;
         }
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_389,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1522.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1289.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1284.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1288.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1285.visible = _navigator.data.canEditRoomSettings && param1;
         var_1287.visible = Util.hasVisibleChildren(var_1287);
      }
      
      public function open(param1:Boolean) : void
      {
         this._hideInfoTimer.reset();
         this.var_352.active = false;
         this.var_196.active = false;
         this.var_273.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this._hideInfoTimer.start();
         }
      }
      
      public function toggle() : void
      {
         this._hideInfoTimer.reset();
         this.var_352.active = false;
         this.var_196.active = false;
         this.var_273.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_45,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_389,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_304);
         var_304.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_196.refresh(var_304);
         this.var_273.refresh(var_304);
         Util.moveChildrenToColumn(var_304,["room_details","room_buttons"],0,2);
         var_304.height = Util.getLowestPoint(var_304);
         var_304.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1048.setSelection(0,var_1048.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_274);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_352.refresh(var_274);
         if(Util.hasVisibleChildren(var_274) && !this.var_273.active)
         {
            Util.moveChildrenToColumn(var_274,["event_details","event_buttons"],0,2);
            var_274.height = Util.getLowestPoint(var_274);
            var_274.visible = true;
         }
         else
         {
            var_274.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_352.active = true;
         this.var_196.active = false;
         this.var_273.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         _hideInfoTimer.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1049.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1049.height = NaN;
         var_1283.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1283.height = NaN;
         Util.moveChildrenToColumn(var_711,["public_space_name","public_space_desc"],var_1049.y,0);
         var_711.visible = true;
         var_711.height = Math.max(86,Util.getLowestPoint(var_711));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_862.visible = true;
            var_1048.text = this.getEmbedData();
         }
         else
         {
            var_862.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this._hideInfoTimer.reset();
         this.var_196.load(param1);
         this.var_196.active = true;
         this.var_352.active = false;
         this.var_273.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this._hideInfoTimer.reset();
         this.var_196.active = false;
         this.var_352.active = false;
         this.var_273.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_67,false);
         _window.setParamFlag(HabboWindowParam.const_1380,true);
         _window.visible = false;
         var_304 = IWindowContainer(find("room_info"));
         var_353 = IWindowContainer(find("room_details"));
         var_711 = IWindowContainer(find("public_space_details"));
         var_2091 = IWindowContainer(find("owner_name_cont"));
         var_2090 = IWindowContainer(find("rating_cont"));
         var_1287 = IWindowContainer(find("room_buttons"));
         var_649 = ITextWindow(find("room_name"));
         var_1049 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_863 = ITextWindow(find("room_desc"));
         var_1283 = ITextWindow(find("public_space_desc"));
         var_1047 = ITextWindow(find("owner_caption"));
         var_860 = ITextWindow(find("rating_caption"));
         var_2089 = ITextWindow(find("rate_caption"));
         var_1519 = ITextWindow(find("rating_txt"));
         var_274 = IWindowContainer(find("event_info"));
         var_861 = IWindowContainer(find("event_details"));
         var_1521 = IWindowContainer(find("event_buttons"));
         var_2040 = ITextWindow(find("event_name"));
         var_712 = ITextWindow(find("event_desc"));
         var_1289 = IContainerButtonWindow(find("add_favourite_button"));
         var_1284 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1288 = IContainerButtonWindow(find("make_home_button"));
         var_1285 = IContainerButtonWindow(find("unmake_home_button"));
         var_1522 = IButtonWindow(find("room_settings_button"));
         var_1518 = IButtonWindow(find("create_event_button"));
         var_1520 = IButtonWindow(find("edit_event_button"));
         var_862 = IWindowContainer(find("embed_info"));
         var_1286 = ITextWindow(find("embed_info_txt"));
         var_1048 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1289,onAddFavouriteClick);
         Util.setProcDirectly(var_1284,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1522,onRoomSettingsClick);
         Util.setProcDirectly(var_1288,onMakeHomeClick);
         Util.setProcDirectly(var_1285,onUnmakeHomeClick);
         Util.setProcDirectly(var_1518,onEventSettingsClick);
         Util.setProcDirectly(var_1520,onEventSettingsClick);
         Util.setProcDirectly(var_1048,onEmbedSrcClick);
         _navigator.refreshButton(var_1289,"favourite",true,null,0);
         _navigator.refreshButton(var_1284,"favourite",true,null,0);
         _navigator.refreshButton(var_1288,"home",true,null,0);
         _navigator.refreshButton(var_1285,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_304,onHover);
         Util.setProcDirectly(var_274,onHover);
         var_1047.width = var_1047.textWidth;
         Util.moveChildrenToRow(var_2091,["owner_caption","owner_name"],var_1047.x,var_1047.y,3);
         var_860.width = var_860.textWidth;
         Util.moveChildrenToRow(var_2090,["rating_caption","rating_txt"],var_860.x,var_860.y,3);
         var_1286.height = NaN;
         Util.moveChildrenToColumn(var_862,["embed_info_txt","embed_src_txt"],var_1286.y,2);
         var_862.height = Util.getLowestPoint(var_862) + 5;
         var_2315 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_2040.text = param1.eventName;
         var_712.text = param1.eventDescription;
         var_910.refreshTags(var_861,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_712.visible = false;
         if(param1.eventDescription != "")
         {
            var_712.height = NaN;
            var_712.y = Util.getLowestPoint(var_861) + 2;
            var_712.visible = true;
         }
         var_861.visible = true;
         var_861.height = Util.getLowestPoint(var_861);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_797,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
