package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenCatalogMessage extends RoomWidgetMessage
   {
      
      public static const const_538:String = "RWOCM_CLUB_MAIN";
      
      public static const const_676:String = "RWGOI_MESSAGE_OPEN_CATALOG";
       
      
      private var var_1704:String = "";
      
      public function RoomWidgetOpenCatalogMessage(param1:String)
      {
         super(const_676);
         var_1704 = param1;
      }
      
      public function get pageKey() : String
      {
         return var_1704;
      }
   }
}
