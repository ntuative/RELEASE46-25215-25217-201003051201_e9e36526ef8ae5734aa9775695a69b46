package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1244:String = "F";
      
      public static const const_852:String = "M";
       
      
      private var var_82:Number = 0;
      
      private var var_604:String = "";
      
      private var var_1613:int = 0;
      
      private var var_1609:String = "";
      
      private var var_1611:int = 0;
      
      private var var_1612:int = 0;
      
      private var var_1608:String = "";
      
      private var var_1342:String = "";
      
      private var _id:int = 0;
      
      private var var_183:Boolean = false;
      
      private var var_236:int = 0;
      
      private var var_1607:String = "";
      
      private var _name:String = "";
      
      private var var_1610:int = 0;
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_183)
         {
            var_236 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_183)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1613;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_183)
         {
            var_1611 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1607;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_183)
         {
            var_1608 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_183)
         {
            var_1607 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_183)
         {
            var_1612 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_183)
         {
            var_604 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_183)
         {
            var_1613 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_183)
         {
            var_1342 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1611;
      }
      
      public function get groupID() : String
      {
         return var_1608;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_183)
         {
            var_1610 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_183)
         {
            var_1609 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_183 = true;
      }
      
      public function get sex() : String
      {
         return var_1342;
      }
      
      public function get figure() : String
      {
         return var_604;
      }
      
      public function get webID() : int
      {
         return var_1610;
      }
      
      public function get custom() : String
      {
         return var_1609;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_183)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_183)
         {
            var_83 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_183)
         {
            var_82 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1612;
      }
   }
}
