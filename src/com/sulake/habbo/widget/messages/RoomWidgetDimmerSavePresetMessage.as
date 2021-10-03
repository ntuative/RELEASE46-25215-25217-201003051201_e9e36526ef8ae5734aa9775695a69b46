package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_654:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_1626:int;
      
      private var var_1627:int;
      
      private var var_1625:Boolean;
      
      private var var_1033:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_654);
         var_1627 = param1;
         var_1626 = param2;
         _color = param3;
         var_1033 = param4;
         var_1625 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_1626;
      }
      
      public function get presetNumber() : int
      {
         return var_1627;
      }
      
      public function get brightness() : int
      {
         return var_1033;
      }
      
      public function get apply() : Boolean
      {
         return var_1625;
      }
   }
}
