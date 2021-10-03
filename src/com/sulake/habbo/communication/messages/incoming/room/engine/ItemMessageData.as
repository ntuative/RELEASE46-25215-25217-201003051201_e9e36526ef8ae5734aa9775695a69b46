package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_83:Number = 0;
      
      private var _data:String = "";
      
      private var var_1514:int = 0;
      
      private var var_33:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1699:Boolean = false;
      
      private var var_2350:String = "";
      
      private var _id:int = 0;
      
      private var var_183:Boolean = false;
      
      private var var_236:String = "";
      
      private var var_1702:int = 0;
      
      private var var_1703:int = 0;
      
      private var var_1701:int = 0;
      
      private var var_1700:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1699 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_183)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1699;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_183)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_236;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_183)
         {
            var_1701 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_183)
         {
            var_1702 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_183)
         {
            var_1703 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_183)
         {
            var_236 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_183)
         {
            var_1700 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_183)
         {
            var_33 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1701;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_183)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1702;
      }
      
      public function get wallY() : Number
      {
         return var_1703;
      }
      
      public function get localY() : Number
      {
         return var_1700;
      }
      
      public function setReadOnly() : void
      {
         var_183 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_183)
         {
            var_83 = param1;
         }
      }
   }
}
