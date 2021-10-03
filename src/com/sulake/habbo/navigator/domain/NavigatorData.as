package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1423:int = 10;
       
      
      private var var_1565:NavigatorSettingsMessageParser;
      
      private var var_1325:int;
      
      private var var_2185:int;
      
      private var var_2188:Boolean;
      
      private var var_1070:Array;
      
      private var var_893:Dictionary;
      
      private var var_1069:Array;
      
      private var var_2318:int;
      
      private var var_2186:int;
      
      private var var_1643:int;
      
      private var var_2187:int;
      
      private var var_602:PublicRoomShortData;
      
      private var var_419:RoomEventData;
      
      private var var_142:MsgWithRequestId;
      
      private var var_1817:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_2184:Boolean;
      
      private var var_199:GuestRoomData;
      
      private var var_725:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_1070 = new Array();
         var_1069 = new Array();
         var_893 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_2185;
      }
      
      public function get eventMod() : Boolean
      {
         return var_2184;
      }
      
      public function startLoading() : void
      {
         this.var_725 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_2184 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_419 != null)
         {
            var_419.dispose();
         }
         var_419 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_142 != null && var_142 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_142 != null && var_142 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_142 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_199;
      }
      
      public function get allCategories() : Array
      {
         return var_1070;
      }
      
      public function onRoomExit() : void
      {
         if(var_419 != null)
         {
            var_419.dispose();
            var_419 = null;
         }
         if(var_602 != null)
         {
            var_602.dispose();
            var_602 = null;
         }
         if(var_199 != null)
         {
            var_199.dispose();
            var_199 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_142 = param1;
         var_725 = false;
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1565;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_142 = param1;
         var_725 = false;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_602 = null;
         var_199 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_602 = param1.publicSpace;
            var_419 = null;
         }
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2318 = param1.limit;
         this.var_1325 = param1.favouriteRoomIds.length;
         this.var_893 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_893[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_142 as PopularRoomTagsData;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_602;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_2188;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_142 = param1;
         var_725 = false;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1643 = param1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_199 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_725;
      }
      
      public function get visibleCategories() : Array
      {
         return var_1069;
      }
      
      public function set categories(param1:Array) : void
      {
         var _loc2_:* = null;
         var_1070 = param1;
         var_1069 = new Array();
         for each(_loc2_ in var_1070)
         {
            if(_loc2_.visible)
            {
               var_1069.push(_loc2_);
            }
         }
      }
      
      public function get currentRoomRating() : int
      {
         return var_2186;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_2187;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1565 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_142 == null)
         {
            return;
         }
         var_142.dispose();
         var_142 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_419;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_893[param1] = !!param2 ? "yes" : null;
         var_1325 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_142 as OfficialRoomsData;
      }
      
      public function get avatarId() : int
      {
         return var_1643;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_142 != null && var_142 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_2188 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_2186 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1817 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_199 != null)
         {
            var_199.dispose();
         }
         var_199 = param1;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_199 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1565.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1325 >= var_2318;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_2187 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1817;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_199 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_2185 = param1;
      }
   }
}
