package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_718:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_713:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_536:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_2098:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         var_2098 = param2;
      }
      
      public function get effectType() : int
      {
         return var_2098;
      }
   }
}
