package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1507:BigInteger;
      
      private var var_935:BigInteger;
      
      private var var_2052:BigInteger;
      
      private var var_1506:BigInteger;
      
      private var var_2051:BigInteger;
      
      private var var_2022:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1507 = param1;
         var_2052 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2051.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1506 = new BigInteger();
         var_1506.fromRadix(param1,param2);
         var_2051 = var_1506.modPow(var_935,var_1507);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_2022.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_935 = new BigInteger();
         var_935.fromRadix(param1,param2);
         var_2022 = var_2052.modPow(var_935,var_1507);
         return true;
      }
   }
}
