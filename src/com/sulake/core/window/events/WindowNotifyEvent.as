package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1356:String = "WN_CREATED";
      
      public static const const_825:String = "WN_DISABLE";
      
      public static const const_867:String = "WN_DEACTIVATED";
      
      public static const const_964:String = "WN_OPENED";
      
      public static const const_947:String = "WN_CLOSED";
      
      public static const const_821:String = "WN_DESTROY";
      
      public static const const_1558:String = "WN_ARRANGED";
      
      public static const const_418:String = "WN_PARENT_RESIZED";
      
      public static const const_999:String = "WN_ENABLE";
      
      public static const const_850:String = "WN_RELOCATE";
      
      public static const const_935:String = "WN_FOCUS";
      
      public static const const_790:String = "WN_PARENT_RELOCATED";
      
      public static const const_392:String = "WN_PARAM_UPDATED";
      
      public static const const_631:String = "WN_PARENT_ACTIVATED";
      
      public static const const_188:String = "WN_RESIZED";
      
      public static const const_962:String = "WN_CLOSE";
      
      public static const const_949:String = "WN_PARENT_REMOVED";
      
      public static const const_264:String = "WN_CHILD_RELOCATED";
      
      public static const const_729:String = "WN_ENABLED";
      
      public static const const_247:String = "WN_CHILD_RESIZED";
      
      public static const const_793:String = "WN_MINIMIZED";
      
      public static const const_591:String = "WN_DISABLED";
      
      public static const const_217:String = "WN_CHILD_ACTIVATED";
      
      public static const const_481:String = "WN_STATE_UPDATED";
      
      public static const const_599:String = "WN_UNSELECTED";
      
      public static const const_427:String = "WN_STYLE_UPDATED";
      
      public static const const_1454:String = "WN_UPDATE";
      
      public static const const_462:String = "WN_PARENT_ADDED";
      
      public static const const_602:String = "WN_RESIZE";
      
      public static const const_607:String = "WN_CHILD_REMOVED";
      
      public static const const_1501:String = "";
      
      public static const const_842:String = "WN_RESTORED";
      
      public static const const_332:String = "WN_SELECTED";
      
      public static const const_861:String = "WN_MINIMIZE";
      
      public static const const_943:String = "WN_FOCUSED";
      
      public static const const_1270:String = "WN_LOCK";
      
      public static const const_322:String = "WN_CHILD_ADDED";
      
      public static const const_796:String = "WN_UNFOCUSED";
      
      public static const const_362:String = "WN_RELOCATED";
      
      public static const const_934:String = "WN_DEACTIVATE";
      
      public static const const_1271:String = "WN_CRETAE";
      
      public static const const_798:String = "WN_RESTORE";
      
      public static const const_327:String = "WN_ACTVATED";
      
      public static const const_1148:String = "WN_LOCKED";
      
      public static const const_472:String = "WN_SELECT";
      
      public static const const_1003:String = "WN_MAXIMIZE";
      
      public static const const_888:String = "WN_OPEN";
      
      public static const const_499:String = "WN_UNSELECT";
      
      public static const const_1578:String = "WN_ARRANGE";
      
      public static const const_1201:String = "WN_UNLOCKED";
      
      public static const const_1459:String = "WN_UPDATED";
      
      public static const const_876:String = "WN_ACTIVATE";
      
      public static const const_1186:String = "WN_UNLOCK";
      
      public static const const_948:String = "WN_MAXIMIZED";
      
      public static const const_875:String = "WN_DESTROYED";
      
      public static const const_812:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1587,cancelable);
      }
   }
}
