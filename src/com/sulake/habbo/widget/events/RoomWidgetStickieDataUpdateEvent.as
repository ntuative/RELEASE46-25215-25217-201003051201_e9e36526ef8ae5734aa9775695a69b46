package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_537:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_189:String;
      
      private var var_740:String;
      
      private var var_1577:String;
      
      private var var_152:int = -1;
      
      private var var_11:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_152 = param2;
         var_1577 = param3;
         var_189 = param4;
         var_740 = param5;
         var_11 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1577;
      }
      
      public function get colorHex() : String
      {
         return var_740;
      }
      
      public function get text() : String
      {
         return var_189;
      }
      
      public function get objectId() : int
      {
         return var_152;
      }
      
      public function get controller() : Boolean
      {
         return var_11;
      }
   }
}
