package com.sulake.core.runtime
{
   class ComponentInterfaceQueue implements IDisposable
   {
       
      
      private var var_1149:IID;
      
      private var _isDisposed:Boolean;
      
      private var var_780:Array;
      
      function ComponentInterfaceQueue(param1:IID)
      {
         super();
         var_1149 = param1;
         var_780 = new Array();
         _isDisposed = false;
      }
      
      public function get receivers() : Array
      {
         return var_780;
      }
      
      public function get identifier() : IID
      {
         return var_1149;
      }
      
      public function get disposed() : Boolean
      {
         return _isDisposed;
      }
      
      public function dispose() : void
      {
         if(!_isDisposed)
         {
            _isDisposed = true;
            var_1149 = null;
            while(false)
            {
               var_780.pop();
            }
            var_780 = null;
         }
      }
   }
}
