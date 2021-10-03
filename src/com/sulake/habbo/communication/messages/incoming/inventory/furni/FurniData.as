package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1363:String;
      
      private var var_1062:String;
      
      private var var_2203:Boolean;
      
      private var var_1514:int;
      
      private var var_1628:int;
      
      private var var_2204:Boolean;
      
      private var var_1767:String = "";
      
      private var var_2173:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1351:int;
      
      private var var_2175:Boolean;
      
      private var var_1950:int = -1;
      
      private var var_1756:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1628 = param1;
         var_1062 = param2;
         _objId = param3;
         var_1351 = param4;
         _category = param5;
         var_1363 = param6;
         var_2203 = param7;
         var_2173 = param8;
         var_2175 = param9;
         var_2204 = param10;
         var_1756 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1767;
      }
      
      public function get extra() : int
      {
         return var_1514;
      }
      
      public function get classId() : int
      {
         return var_1351;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_2204;
      }
      
      public function get isGroupable() : Boolean
      {
         return var_2203;
      }
      
      public function get stripId() : int
      {
         return var_1628;
      }
      
      public function get stuffData() : String
      {
         return var_1363;
      }
      
      public function get songId() : int
      {
         return var_1950;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         var_1767 = param1;
         var_1514 = param2;
      }
      
      public function get itemType() : String
      {
         return var_1062;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get expiryTime() : int
      {
         return var_1756;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2175;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2173;
      }
   }
}
