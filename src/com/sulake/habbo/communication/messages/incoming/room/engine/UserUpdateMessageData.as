package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_83:Number = 0;
      
      private var var_236:int = 0;
      
      private var var_1796:int = 0;
      
      private var var_1799:Number = 0;
      
      private var var_1798:Number = 0;
      
      private var var_1797:Number = 0;
      
      private var var_1795:Number = 0;
      
      private var var_1800:Boolean = false;
      
      private var var_82:Number = 0;
      
      private var _id:int = 0;
      
      private var var_201:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_201 = [];
         super();
         _id = param1;
         var_82 = param2;
         _y = param3;
         var_83 = param4;
         var_1795 = param5;
         var_236 = param6;
         var_1796 = param7;
         var_1799 = param8;
         var_1798 = param9;
         var_1797 = param10;
         var_1800 = param11;
         var_201 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_83;
      }
      
      public function get dir() : int
      {
         return var_236;
      }
      
      public function get localZ() : Number
      {
         return var_1795;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1800;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1796;
      }
      
      public function get targetX() : Number
      {
         return var_1799;
      }
      
      public function get targetY() : Number
      {
         return var_1798;
      }
      
      public function get targetZ() : Number
      {
         return var_1797;
      }
      
      public function get x() : Number
      {
         return var_82;
      }
      
      public function get actions() : Array
      {
         return var_201.slice();
      }
   }
}
