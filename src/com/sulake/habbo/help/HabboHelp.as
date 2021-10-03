package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2082:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_139:TutorialUI;
      
      private var var_710:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_59:HelpUI;
      
      private var var_709:IHabboConfigurationManager;
      
      private var var_184:IHabboToolbar;
      
      private var var_287:IHabboCommunicationManager;
      
      private var var_858:FaqIndex;
      
      private var var_1809:String = "";
      
      private var var_1086:IncomingMessages;
      
      private var var_1281:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1281 = new CallForHelpData();
         var_2082 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_858 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_184;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_59 != null)
         {
            var_59.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_59 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_59.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_139 != null)
         {
            var_139.dispose();
            var_139 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1809;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1281.reportedUserId = param1;
         var_1281.reportedUserName = param2;
         var_59.showUI(HabboHelpViewEnum.const_318);
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_710;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_90:
               if(var_59 != null)
               {
                  var_59.setRoomSessionStatus(true);
               }
               if(var_139 != null)
               {
                  var_139.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_100:
               if(var_59 != null)
               {
                  var_59.setRoomSessionStatus(false);
               }
               if(var_139 != null)
               {
                  var_139.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_59 != null)
         {
            var_59.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2082;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_59 != null)
         {
            var_59.showCallForHelpResult(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(var_59 != null)
         {
            var_59.dispose();
            var_59 = null;
         }
         if(var_139 != null)
         {
            var_139.dispose();
            var_139 = null;
         }
         if(var_858 != null)
         {
            var_858.dispose();
            var_858 = null;
         }
         var_1086 = null;
         if(var_184)
         {
            var_184.release(new IIDHabboToolbar());
            var_184 = null;
         }
         if(var_710)
         {
            var_710.release(new IIDHabboLocalizationManager());
            var_710 = null;
         }
         if(var_287)
         {
            var_287.release(new IIDHabboCommunicationManager());
            var_287 = null;
         }
         if(var_709)
         {
            var_709.release(new IIDHabboConfigurationManager());
            var_709 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_184 != null)
         {
            var_184.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_116,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_139 == null && _assetLibrary != null && _windowManager != null)
         {
            var_139 = new TutorialUI(this);
         }
         return var_139 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_59 == null && _assetLibrary != null && _windowManager != null)
         {
            var_59 = new HelpUI(this,_assetLibrary,_windowManager,var_710,var_184);
         }
         return var_59 != null;
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1809 = param1;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1281;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_710 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_139 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_139.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_287 = IHabboCommunicationManager(param2);
         var_1086 = new IncomingMessages(this,var_287);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_59 != null)
         {
            var_59.showUI(param1);
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_287 != null && param1 != null)
         {
            var_287.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_858;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_59 != null)
         {
            var_59.updateCallForGuideBotUI(false);
         }
      }
      
      public function hideUI() : void
      {
         if(var_59 != null)
         {
            var_59.hideUI();
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_184 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_709 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_139;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_79)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_54)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_90,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_100,onRoomSessionEvent);
         var_184.events.addEventListener(HabboToolbarEvent.const_79,onHabboToolbarEvent);
         var_184.events.addEventListener(HabboToolbarEvent.const_54,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_59 != null)
         {
            var_59.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_709 == null)
         {
            return param1;
         }
         return var_709.getKey(param1,param2,param3);
      }
   }
}
