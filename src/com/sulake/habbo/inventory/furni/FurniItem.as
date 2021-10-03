package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1628:int;
      
      private var var_2173:Boolean;
      
      private var var_1950:int;
      
      private var var_1363:String;
      
      private var var_2174:Boolean = false;
      
      private var var_1756:int;
      
      private var var_432:int;
      
      private var var_1062:String;
      
      private var var_1767:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1351:int;
      
      private var var_2175:Boolean;
      
      private var var_2176:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1628 = param1;
         var_1062 = param2;
         _objId = param3;
         var_1351 = param4;
         var_1363 = param5;
         var_2173 = param6;
         var_2175 = param7;
         var_1756 = param8;
         var_1767 = param9;
         var_1950 = param10;
         var_432 = -1;
      }
      
      public function get songId() : int
      {
         return var_1950;
      }
      
      public function get iconCallbackId() : int
      {
         return var_432;
      }
      
      public function get expiryTime() : int
      {
         return var_1756;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2176 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2174 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_432 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_2175;
      }
      
      public function get slotId() : String
      {
         return var_1767;
      }
      
      public function get classId() : int
      {
         return var_1351;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_2173;
      }
      
      public function get stuffData() : String
      {
         return var_1363;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1628;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2174;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2176;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_1062;
      }
   }
}
