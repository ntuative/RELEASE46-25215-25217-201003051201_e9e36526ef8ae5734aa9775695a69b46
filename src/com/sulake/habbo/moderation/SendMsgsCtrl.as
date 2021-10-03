package com.sulake.habbo.moderation
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IDropMenuWindow;
   import com.sulake.core.window.components.IFrameWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.outgoing.moderator.ModMessageMessageComposer;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import flash.events.Event;
   
   public class SendMsgsCtrl implements IDisposable, TrackedWindow
   {
       
      
      private var var_1231:String;
      
      private var _disposed:Boolean;
      
      private var var_1463:String;
      
      private var var_1230:int;
      
      private var var_49:ModerationManager;
      
      private var var_818:IDropMenuWindow;
      
      private var var_398:ITextFieldWindow;
      
      private var var_52:IFrameWindow;
      
      private var var_294:Boolean = true;
      
      public function SendMsgsCtrl(param1:ModerationManager, param2:int, param3:String, param4:String)
      {
         super();
         var_49 = param1;
         var_1230 = param2;
         var_1463 = param3;
         var_1231 = param4;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_186)
         {
            return;
         }
         if(!var_294)
         {
            return;
         }
         var_398.text = "";
         var_294 = false;
      }
      
      public function getFrame() : IFrameWindow
      {
         return var_52;
      }
      
      public function getId() : String
      {
         return var_1463;
      }
      
      private function onSendMessageButton(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("Sending message...");
         if(var_294 || false)
         {
            var_49.windowManager.alert("Alert","You must input a message to the user",0,onAlertClose);
            return;
         }
         var_49.connection.send(new ModMessageMessageComposer(var_1230,var_398.text,var_1231));
         this.dispose();
      }
      
      public function show() : void
      {
         var_52 = IFrameWindow(var_49.getXmlWindow("send_msgs"));
         var_52.caption = "Msg To: " + var_1463;
         var_52.findChildByName("send_message_but").procedure = onSendMessageButton;
         var_398 = ITextFieldWindow(var_52.findChildByName("message_input"));
         var_398.procedure = onInputClick;
         var_818 = IDropMenuWindow(var_52.findChildByName("msgTemplatesSelect"));
         prepareMsgSelect(var_818);
         var_818.procedure = onSelectTemplate;
         var _loc1_:IWindow = var_52.findChildByTag("close");
         _loc1_.procedure = onClose;
         var_52.visible = true;
      }
      
      private function prepareMsgSelect(param1:IDropMenuWindow) : void
      {
         Logger.log("MSG TEMPLATES: " + var_49.initMsg.messageTemplates.length);
         param1.populate(var_49.initMsg.messageTemplates);
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
         var_818 = null;
         var_398 = null;
         var_49 = null;
      }
      
      private function onSelectTemplate(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_50)
         {
            return;
         }
         var _loc3_:String = var_49.initMsg.messageTemplates["null"];
         if(_loc3_ != null)
         {
            var_294 = false;
            var_398.text = _loc3_;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      private function onClose(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         dispose();
      }
      
      private function onAlertClose(param1:IAlertDialog, param2:Event) : void
      {
         param1.dispose();
      }
      
      public function getType() : int
      {
         return WindowTracker.const_1169;
      }
   }
}
