package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_1012:int = 0;
      
      private var var_1168:int = 0;
      
      private var var_1778:String = "";
      
      private var var_1011:int = 0;
      
      private var var_1779:String = "";
      
      private var var_1781:int = 0;
      
      private var var_1467:String = "";
      
      private var var_1783:int = 0;
      
      private var var_1780:int = 0;
      
      private var var_1784:String = "";
      
      private var var_1782:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1783 = param1;
         var_1784 = param2;
         var_1467 = param3;
         var_1778 = param4;
         var_1779 = param5;
         if(param6)
         {
            var_1168 = 1;
         }
         else
         {
            var_1168 = 0;
         }
         var_1781 = param7;
         var_1780 = param8;
         var_1011 = param9;
         var_1782 = param10;
         var_1012 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1783,var_1784,var_1467,var_1778,var_1779,var_1168,var_1781,var_1780,var_1011,var_1782,var_1012];
      }
      
      public function dispose() : void
      {
      }
   }
}
