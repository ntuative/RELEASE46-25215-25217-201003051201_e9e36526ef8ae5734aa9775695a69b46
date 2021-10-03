package com.sulake.habbo.widget.messages
{
   import com.sulake.core.window.IWindowContainer;
   
   public class RoomWidgetAvatarEditorMessage extends RoomWidgetMessage
   {
      
      public static const const_674:String = "RWAEM_AVATAR_EDITOR_VIEW_DISPOSED";
      
      public static const const_531:String = "RWCM_OPEN_AVATAR_EDITOR";
      
      public static const const_1180:String = "RWCM_GET_WARDROBE";
       
      
      private var _context:IWindowContainer;
      
      public function RoomWidgetAvatarEditorMessage(param1:String, param2:IWindowContainer = null)
      {
         super(param1);
         _context = param2;
      }
      
      public function get context() : IWindowContainer
      {
         return _context;
      }
   }
}