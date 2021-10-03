package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1950:int;
      
      private var var_1948:int = 0;
      
      private var var_1947:String;
      
      private var var_1946:int;
      
      private var var_1949:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1950 = param1;
         var_1946 = param2;
         var_1949 = param3;
         var_1947 = param4;
      }
      
      public function get length() : int
      {
         return var_1946;
      }
      
      public function get name() : String
      {
         return var_1949;
      }
      
      public function get creator() : String
      {
         return var_1947;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1948;
      }
      
      public function get id() : int
      {
         return var_1950;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1948 = param1;
      }
   }
}
