package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_581:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_247:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_581,param2,param3);
         var_247 = param1;
      }
      
      public function get effects() : Array
      {
         return var_247;
      }
   }
}
