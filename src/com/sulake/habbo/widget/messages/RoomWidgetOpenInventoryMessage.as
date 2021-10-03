package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_938:String = "inventory_badges";
      
      public static const const_1283:String = "inventory_clothes";
      
      public static const const_1377:String = "inventory_furniture";
      
      public static const const_700:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_993:String = "inventory_effects";
       
      
      private var var_1785:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_700);
         var_1785 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_1785;
      }
   }
}
