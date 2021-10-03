package com.sulake.habbo.avatar.pets
{
   public class PetEditorInfo
   {
       
      
      private var var_1818:Boolean;
      
      private var var_1690:Boolean;
      
      public function PetEditorInfo(param1:XML)
      {
         super();
         var_1818 = Boolean(parseInt(param1.@club));
         var_1690 = Boolean(parseInt(param1.@selectable));
      }
      
      public function get isClub() : Boolean
      {
         return var_1818;
      }
      
      public function get isSelectable() : Boolean
      {
         return var_1690;
      }
   }
}
