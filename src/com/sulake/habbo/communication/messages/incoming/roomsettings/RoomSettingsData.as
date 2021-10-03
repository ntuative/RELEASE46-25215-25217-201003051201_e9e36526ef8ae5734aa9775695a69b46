package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_448:int = 0;
      
      public static const const_108:int = 2;
      
      public static const const_169:int = 1;
      
      public static const const_673:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2010:Boolean;
      
      private var var_2008:Boolean;
      
      private var var_2100:int;
      
      private var var_2011:Array;
      
      private var var_2101:int;
      
      private var var_1980:Boolean;
      
      private var var_1192:String;
      
      private var var_2009:int;
      
      private var var_1912:int;
      
      private var var_1197:int;
      
      private var _roomId:int;
      
      private var var_615:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2009;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2009 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_615;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1980;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2101 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2011 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_615 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2010;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2008;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2100;
      }
      
      public function get categoryId() : int
      {
         return var_1197;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1980 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2101;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2011;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1912 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2010 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2008 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2100 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1912;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1197 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1192 = param1;
      }
      
      public function get description() : String
      {
         return var_1192;
      }
   }
}
