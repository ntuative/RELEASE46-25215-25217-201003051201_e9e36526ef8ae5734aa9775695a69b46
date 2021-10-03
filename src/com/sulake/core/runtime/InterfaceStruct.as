package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_381:uint;
      
      private var var_968:IUnknown;
      
      private var var_1141:String;
      
      private var var_969:IID;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_969 = param1;
         var_1141 = getQualifiedClassName(var_969);
         var_968 = param2;
         var_381 = 0;
      }
      
      public function get iid() : IID
      {
         return var_969;
      }
      
      public function get disposed() : Boolean
      {
         return var_968 == null;
      }
      
      public function get references() : uint
      {
         return var_381;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_381) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_968;
      }
      
      public function get iis() : String
      {
         return var_1141;
      }
      
      public function reserve() : uint
      {
         return ++var_381;
      }
      
      public function dispose() : void
      {
         var_969 = null;
         var_1141 = null;
         var_968 = null;
         var_381 = 0;
      }
   }
}
