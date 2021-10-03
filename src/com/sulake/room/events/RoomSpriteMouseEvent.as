package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1833:Boolean = false;
      
      private var var_1831:Boolean = false;
      
      private var var_1637:String = "";
      
      private var _type:String = "";
      
      private var var_1836:Boolean = false;
      
      private var var_1701:Number = 0;
      
      private var var_1832:Number = 0;
      
      private var var_1835:Number = 0;
      
      private var var_1837:String = "";
      
      private var var_1700:Number = 0;
      
      private var var_1834:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1837 = param2;
         var_1637 = param3;
         var_1832 = param4;
         var_1835 = param5;
         var_1701 = param6;
         var_1700 = param7;
         var_1834 = param8;
         var_1831 = param9;
         var_1836 = param10;
         var_1833 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1834;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1833;
      }
      
      public function get localX() : Number
      {
         return var_1701;
      }
      
      public function get localY() : Number
      {
         return var_1700;
      }
      
      public function get canvasId() : String
      {
         return var_1837;
      }
      
      public function get altKey() : Boolean
      {
         return var_1831;
      }
      
      public function get spriteTag() : String
      {
         return var_1637;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1832;
      }
      
      public function get screenY() : Number
      {
         return var_1835;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1836;
      }
   }
}
