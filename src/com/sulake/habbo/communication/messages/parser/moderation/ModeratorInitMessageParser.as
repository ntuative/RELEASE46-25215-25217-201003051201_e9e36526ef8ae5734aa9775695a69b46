package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2106:Boolean;
      
      private var var_1529:Array;
      
      private var var_2105:Boolean;
      
      private var var_2108:Boolean;
      
      private var var_2110:Boolean;
      
      private var var_148:Array;
      
      private var var_2109:Boolean;
      
      private var var_2112:Boolean;
      
      private var var_1530:Array;
      
      private var var_2111:Boolean;
      
      private var var_2107:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2107;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2106;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2105;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2109;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2112;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1529;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_148 = [];
         var_1529 = [];
         _roomMessageTemplates = [];
         var_1530 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_148.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1529.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1530.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2109 = param1.readBoolean();
         var_2110 = param1.readBoolean();
         var_2105 = param1.readBoolean();
         var_2108 = param1.readBoolean();
         var_2107 = param1.readBoolean();
         var_2112 = param1.readBoolean();
         var_2106 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2111 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2108;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1530;
      }
      
      public function get issues() : Array
      {
         return var_148;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2111;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2110;
      }
   }
}
