package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_570:int = 6;
      
      public static const const_195:int = 5;
      
      public static const const_587:int = 2;
      
      public static const const_328:int = 9;
      
      public static const const_326:int = 4;
      
      public static const const_271:int = 2;
      
      public static const const_666:int = 4;
      
      public static const const_219:int = 8;
      
      public static const const_577:int = 7;
      
      public static const const_266:int = 3;
      
      public static const const_294:int = 1;
      
      public static const const_213:int = 5;
      
      public static const const_449:int = 12;
      
      public static const const_285:int = 1;
      
      public static const const_725:int = 11;
      
      public static const const_644:int = 3;
      
      public static const const_1466:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_388:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_388 = new Array();
         var_388.push(new Tab(_navigator,const_294,const_449,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_476));
         var_388.push(new Tab(_navigator,const_271,const_285,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_476));
         var_388.push(new Tab(_navigator,const_326,const_725,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_924));
         var_388.push(new Tab(_navigator,const_266,const_195,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_476));
         var_388.push(new Tab(_navigator,const_213,const_219,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_560));
         setSelectedTab(const_294);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_388)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_388)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_388)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_326;
      }
      
      public function get tabs() : Array
      {
         return var_388;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
