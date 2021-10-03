package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_324:String = "WE_CHILD_RESIZED";
      
      public static const const_1267:String = "WE_CLOSE";
      
      public static const const_1147:String = "WE_DESTROY";
      
      public static const const_140:String = "WE_CHANGE";
      
      public static const const_1291:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1443:String = "WE_PARENT_RESIZE";
      
      public static const const_91:String = "WE_UPDATE";
      
      public static const const_1265:String = "WE_MAXIMIZE";
      
      public static const const_459:String = "WE_DESTROYED";
      
      public static const const_897:String = "WE_UNSELECT";
      
      public static const const_1210:String = "WE_MAXIMIZED";
      
      public static const const_1492:String = "WE_UNLOCKED";
      
      public static const const_428:String = "WE_CHILD_REMOVED";
      
      public static const const_152:String = "WE_OK";
      
      public static const const_42:String = "WE_RESIZED";
      
      public static const const_1303:String = "WE_ACTIVATE";
      
      public static const const_262:String = "WE_ENABLED";
      
      public static const const_377:String = "WE_CHILD_RELOCATED";
      
      public static const const_1280:String = "WE_CREATE";
      
      public static const const_630:String = "WE_SELECT";
      
      public static const const_154:String = "";
      
      public static const const_1533:String = "WE_LOCKED";
      
      public static const const_1543:String = "WE_PARENT_RELOCATE";
      
      public static const const_1460:String = "WE_CHILD_REMOVE";
      
      public static const const_1430:String = "WE_CHILD_RELOCATE";
      
      public static const const_1517:String = "WE_LOCK";
      
      public static const const_186:String = "WE_FOCUSED";
      
      public static const const_724:String = "WE_UNSELECTED";
      
      public static const const_838:String = "WE_DEACTIVATED";
      
      public static const const_1368:String = "WE_MINIMIZED";
      
      public static const const_1581:String = "WE_ARRANGED";
      
      public static const const_1529:String = "WE_UNLOCK";
      
      public static const const_1576:String = "WE_ATTACH";
      
      public static const const_1209:String = "WE_OPEN";
      
      public static const const_1288:String = "WE_RESTORE";
      
      public static const const_1457:String = "WE_PARENT_RELOCATED";
      
      public static const const_1245:String = "WE_RELOCATE";
      
      public static const const_1587:String = "WE_CHILD_RESIZE";
      
      public static const const_1526:String = "WE_ARRANGE";
      
      public static const const_1234:String = "WE_OPENED";
      
      public static const const_1381:String = "WE_CLOSED";
      
      public static const const_1544:String = "WE_DETACHED";
      
      public static const const_1603:String = "WE_UPDATED";
      
      public static const const_1307:String = "WE_UNFOCUSED";
      
      public static const const_445:String = "WE_RELOCATED";
      
      public static const const_1176:String = "WE_DEACTIVATE";
      
      public static const const_216:String = "WE_DISABLED";
      
      public static const const_723:String = "WE_CANCEL";
      
      public static const const_544:String = "WE_ENABLE";
      
      public static const const_1278:String = "WE_ACTIVATED";
      
      public static const const_1212:String = "WE_FOCUS";
      
      public static const const_1567:String = "WE_DETACH";
      
      public static const const_1227:String = "WE_RESTORED";
      
      public static const const_1207:String = "WE_UNFOCUS";
      
      public static const const_50:String = "WE_SELECTED";
      
      public static const const_1352:String = "WE_PARENT_RESIZED";
      
      public static const const_1179:String = "WE_CREATED";
      
      public static const const_1592:String = "WE_ATTACHED";
      
      public static const const_1250:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1587:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1360:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1587 = param3;
         var_1360 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1360;
      }
      
      public function get related() : IWindow
      {
         return var_1587;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1360 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
