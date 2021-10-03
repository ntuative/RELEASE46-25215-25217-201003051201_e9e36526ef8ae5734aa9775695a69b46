package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   
   public class UserInfoFrameCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_911:UserInfoCtrl;
      
      private var _disposed:Boolean;
      
      private var _userId:int;
      
      private var var_52:IFrameWindow;
      
      private var var_49:ModerationManager;
      
      public function UserInfoFrameCtrl(param1:ModerationManager, param2:int)
      {
         super();
         var_49 = param1;
         _userId = param2;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_52 != null)
         {
            var_52.destroy();
            var_52 = null;
         }
         if(var_911 != null)
         {
            var_911.dispose();
            var_911 = null;
         }
         var_49 = null;
      }
      
      public function getId() : String
      {
         return "" + _userId;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1337;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      public function show() : void
      {
         var_52 = IFrameWindow(var_49.getXmlWindow("user_info_frame"));
         var_52.caption = "User Info";
         var _loc1_:IWindow = var_52.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_911 = new UserInfoCtrl(var_52,var_49,"",true);
         var_911.load(var_52.content,_userId);
         var_52.visible = true;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_52;
      }
   }
}
