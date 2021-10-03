package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_947:int = 0;
      
      private var _data:String = "";
      
      private var var_1514:int = -1;
      
      private var var_33:int = 0;
      
      private var _type:int = 0;
      
      private var var_949:int = 0;
      
      private var var_2350:String = "";
      
      private var var_1756:int = 0;
      
      private var _id:int = 0;
      
      private var var_183:Boolean = false;
      
      private var var_236:int = 0;
      
      private var var_1755:String = null;
      
      private var var_82:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_183)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_183)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get extra() : int
      {
         return var_1514;
      }
      
      public function get state() : int
      {
         return var_33;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_183)
         {
            var_236 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_183)
         {
            var_82 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_183)
         {
            var_1514 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_183)
         {
            var_33 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1756;
      }
      
      public function get staticClass() : String
      {
         return var_1755;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_183)
         {
            var_1756 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_183)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_183)
         {
            var_1755 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_183 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_183)
         {
            var_947 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_183)
         {
            var_949 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_183)
         {
            var_83 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_947;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get sizeY() : int
      {
         return var_949;
      }
   }
}
