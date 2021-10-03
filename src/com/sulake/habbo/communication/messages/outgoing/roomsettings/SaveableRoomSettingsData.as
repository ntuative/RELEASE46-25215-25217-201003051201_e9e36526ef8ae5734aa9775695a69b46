package com.sulake.habbo.communication.messages.outgoing.roomsettings
{
   public class SaveableRoomSettingsData
   {
       
      
      private var _password:String;
      
      private var var_2009:int;
      
      private var var_1912:int;
      
      private var var_2010:Boolean;
      
      private var var_2008:Boolean;
      
      private var var_2011:Array;
      
      private var var_1980:Boolean;
      
      private var var_1197:int;
      
      private var _name:String;
      
      private var _roomId:int;
      
      private var var_615:Array;
      
      private var var_1192:String;
      
      public function SaveableRoomSettingsData()
      {
         super();
      }
      
      public function get doorMode() : int
      {
         return var_1912;
      }
      
      public function get description() : String
      {
         return var_1192;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2008;
      }
      
      public function get maximumVisitors() : int
      {
         return var_2009;
      }
      
      public function set description(param1:String) : void
      {
         var_1192 = param1;
      }
      
      public function get password() : String
      {
         return _password;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1980 = param1;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2009 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get categoryId() : int
      {
         return var_1197;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2011;
      }
      
      public function get tags() : Array
      {
         return var_615;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1980;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1912 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2010 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_615 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2011 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1197 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2010;
      }
      
      public function set password(param1:String) : void
      {
         _password = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2008 = param1;
      }
   }
}
