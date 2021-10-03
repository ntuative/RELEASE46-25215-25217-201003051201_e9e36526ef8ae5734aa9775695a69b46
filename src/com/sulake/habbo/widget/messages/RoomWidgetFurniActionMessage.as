package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_269:String = "RWFAM_MOVE";
      
      public static const const_588:String = "RWFUAM_ROTATE";
      
      public static const const_498:String = "RWFAM_PICKUP";
       
      
      private var var_1838:int = 0;
      
      private var var_2165:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1838 = param2;
         var_2165 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1838;
      }
      
      public function get furniCategory() : int
      {
         return var_2165;
      }
   }
}
