package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_119:DisplayObject;
      
      private var var_2325:uint;
      
      private var var_904:IWindowToolTipAgentService;
      
      private var var_906:IWindowMouseScalingService;
      
      private var var_213:IWindowContext;
      
      private var var_905:IWindowFocusManagerService;
      
      private var var_907:IWindowMouseListenerService;
      
      private var var_903:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2325 = 0;
         var_119 = param2;
         var_213 = param1;
         var_903 = new WindowMouseDragger(param2);
         var_906 = new WindowMouseScaler(param2);
         var_907 = new WindowMouseListener(param2);
         var_905 = new FocusManager(param2);
         var_904 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_906;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_905;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_904;
      }
      
      public function dispose() : void
      {
         if(var_903 != null)
         {
            var_903.dispose();
            var_903 = null;
         }
         if(var_906 != null)
         {
            var_906.dispose();
            var_906 = null;
         }
         if(var_907 != null)
         {
            var_907.dispose();
            var_907 = null;
         }
         if(var_905 != null)
         {
            var_905.dispose();
            var_905 = null;
         }
         if(var_904 != null)
         {
            var_904.dispose();
            var_904 = null;
         }
         var_213 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_907;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_903;
      }
   }
}
