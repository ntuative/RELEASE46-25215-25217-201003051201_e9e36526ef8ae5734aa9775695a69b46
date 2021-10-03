package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_144:int = 1;
      
      public static const const_1206:int = 3;
      
      public static const const_366:int = 2;
       
      
      private var var_2237:int;
      
      private var var_1640:int;
      
      private var var_2232:int;
      
      private var var_1642:int;
      
      private var var_33:int;
      
      private var var_378:int;
      
      private var var_1200:int;
      
      private var var_2035:int;
      
      private var var_982:int;
      
      private var _roomResources:String;
      
      private var var_2236:int;
      
      private var var_2231:int;
      
      private var var_2234:String;
      
      private var var_2034:String;
      
      private var var_2235:int = 0;
      
      private var var_1158:String;
      
      private var _message:String;
      
      private var var_1765:int;
      
      private var var_2233:String;
      
      private var var_1197:int;
      
      private var var_649:String;
      
      private var var_2230:String;
      
      private var var_1479:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_982 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2235 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2231;
      }
      
      public function set roomName(param1:String) : void
      {
         var_649 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2236 = param1;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_649;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1642 = param1;
      }
      
      public function set state(param1:int) : void
      {
         var_33 = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1640;
      }
      
      public function get priority() : int
      {
         return var_2237 + var_2235;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2035 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2034;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1479) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1197;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2231 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1200;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2234 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2236;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1642;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2230 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1158 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2035;
      }
      
      public function set priority(param1:int) : void
      {
         var_2237 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1640 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2234;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2232 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2034 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1765 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1158;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1200 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2232;
      }
      
      public function set flatId(param1:int) : void
      {
         var_378 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1197 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1479 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1765;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2233 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1479;
      }
      
      public function get reportedUserId() : int
      {
         return var_982;
      }
      
      public function get flatId() : int
      {
         return var_378;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2230;
      }
      
      public function get reporterUserName() : String
      {
         return var_2233;
      }
   }
}
