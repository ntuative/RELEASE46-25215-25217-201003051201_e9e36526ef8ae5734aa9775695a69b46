package com.sulake.habbo.session
{
   public class HabboGroupDetails
   {
       
      
      private var _id:int = -1;
      
      private var var_649:String = "";
      
      private var var_684:String = "";
      
      private var _name:String = "";
      
      private var _roomId:int = -1;
      
      private var var_1192:String = "";
      
      public function HabboGroupDetails(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function set badgeId(param1:String) : void
      {
         var_684 = param1;
      }
      
      public function get roomName() : String
      {
         return var_649;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set roomName(param1:String) : void
      {
         var_649 = param1;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get badgeId() : String
      {
         return var_684;
      }
      
      public function dispose() : void
      {
         _id = -1;
         var_684 = "";
         _name = "";
         var_1192 = "";
         _roomId = -1;
         var_649 = "";
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set id(param1:int) : void
      {
         _id = param1;
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
