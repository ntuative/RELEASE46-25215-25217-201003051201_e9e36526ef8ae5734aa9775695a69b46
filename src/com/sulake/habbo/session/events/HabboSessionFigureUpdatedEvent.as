package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_682:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var var_604:String;
      
      private var _userId:int;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:Boolean = false, param4:Boolean = false)
      {
         super(const_682,param3,param4);
         _userId = param1;
         var_604 = param2;
      }
      
      public function get figure() : String
      {
         return var_604;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
