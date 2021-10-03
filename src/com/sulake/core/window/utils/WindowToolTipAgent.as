package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_314:Timer;
      
      protected var var_923:String;
      
      protected var var_922:uint;
      
      protected var var_1093:Point;
      
      protected var var_241:IToolTipWindow;
      
      protected var var_1094:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1093 = new Point();
         var_1094 = new Point(20,20);
         var_922 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_314 != null)
         {
            var_314.stop();
            var_314.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_314 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1093);
            if(var_241 != null && true)
            {
               var_241.x = param1 + var_1094.x;
               var_241.y = param2 + var_1094.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_314 != null)
         {
            var_314.reset();
         }
         if(_window && true)
         {
            if(var_241 == null || false)
            {
               var_241 = _window.context.create("undefined::ToolTip",var_923,WindowType.const_286,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_241.x = _loc2_.x + var_1093.x + var_1094.x;
            var_241.y = _loc2_.y + var_1093.y + var_1094.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_923 = IInteractiveWindow(param1).toolTipCaption;
               var_922 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_923 = param1.caption;
               var_922 = 500;
            }
            _mouse.x = var_119.mouseX;
            _mouse.y = var_119.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1093);
            if(var_923 != null && var_923 != "")
            {
               if(var_314 == null)
               {
                  var_314 = new Timer(var_922,1);
                  var_314.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_314.reset();
               var_314.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_241 != null && true)
         {
            var_241.destroy();
            var_241 = null;
         }
      }
   }
}
