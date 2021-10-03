package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1185:int = 4;
      
      public static const const_584:int = 3;
      
      public static const const_641:int = 2;
      
      public static const const_853:int = 1;
       
      
      private var var_2179:String;
      
      private var _disposed:Boolean;
      
      private var var_1962:int;
      
      private var var_2181:Boolean;
      
      private var var_855:String;
      
      private var var_891:PublicRoomData;
      
      private var var_2183:int;
      
      private var _index:int;
      
      private var var_2180:String;
      
      private var _type:int;
      
      private var var_1712:String;
      
      private var var_892:GuestRoomData;
      
      private var var_2182:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_2179 = param1.readString();
         var_2182 = param1.readString();
         var_2181 = param1.readInteger() == 1;
         var_2180 = param1.readString();
         var_855 = param1.readString();
         var_2183 = param1.readInteger();
         var_1962 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_853)
         {
            var_1712 = param1.readString();
         }
         else if(_type == const_584)
         {
            var_891 = new PublicRoomData(param1);
         }
         else if(_type == const_641)
         {
            var_892 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_2183;
      }
      
      public function get popupCaption() : String
      {
         return var_2179;
      }
      
      public function get userCount() : int
      {
         return var_1962;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_2181;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_853)
         {
            return 0;
         }
         if(this.type == const_641)
         {
            return this.var_892.maxUserCount;
         }
         if(this.type == const_584)
         {
            return this.var_891.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_2182;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_892 != null)
         {
            this.var_892.dispose();
            this.var_892 = null;
         }
         if(this.var_891 != null)
         {
            this.var_891.dispose();
            this.var_891 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_892;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_2180;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_891;
      }
      
      public function get picRef() : String
      {
         return var_855;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1712;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
