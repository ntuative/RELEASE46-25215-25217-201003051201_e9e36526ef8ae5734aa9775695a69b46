package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_665:String = "RWUAM_RESPECT_USER";
      
      public static const const_562:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_735:String = "RWUAM_START_TRADING";
      
      public static const const_690:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_672:String = "RWUAM_WHISPER_USER";
      
      public static const const_535:String = "RWUAM_IGNORE_USER";
      
      public static const const_458:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_513:String = "RWUAM_BAN_USER";
      
      public static const const_561:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_411:String = "RWUAM_KICK_USER";
      
      public static const const_601:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_592:String = " RWUAM_RESPECT_PET";
      
      public static const const_384:String = "RWUAM_KICK_BOT";
      
      public static const const_1320:String = "RWUAM_TRAIN_PET";
      
      public static const const_693:String = "RWUAM_PICKUP_PET";
      
      public static const const_596:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_733:String = "RWUAM_REPORT";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         _userId = param2;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
   }
}
