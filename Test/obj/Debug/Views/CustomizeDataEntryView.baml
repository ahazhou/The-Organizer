   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5      ? ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Test.Views
Test.Views 5      )clr-namespace:Test.ModelsTest.Models 5      1clr-namespace:Test.ViewModelsTest.ViewModels 5	      1clr-namespace:Test.ConvertersTest.Converters 5
      '   !Test.Views.CustomizeDataEntryView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      6sys&clr-namespace:System;assembly=mscorlib     5      *localclr-namespace:Test.Views     5      ,modelsclr-namespace:Test.Models     5      3	viewmodelclr-namespace:Test.ViewModels     5	      4
convertersclr-namespace:Test.Converters     5
        � 	Resources  5      >  8Test.Converters.ForComboboxItemChosenVisibilityConverter   comboboxchosenvalue)  #Test.Converters.ForDefaultConverter  defaultconverter9  3Test.Converters.ForEnumTextboxtoVisibilityConverter  	istextbox S� 
MethodName S� 
ObjectType   System.Enum  datafromenum S� MethodParameters M� TypeName��%�   &	        &	      &	 &     &	 9       5   
   6>     5   
   6)     5   
   69   S� 5   
   $ 	GetValues��6   "  64    5      M� 5      $ models:entryTypes��6   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   �� $
��Auto=�6   $
��Auto=�6:   .��5      �� $��0��6   $��Stretch=�6R   ��.  $��5q�6�    �� AlternationCount$ 2��6�   ��6(   �� *ObjectInformation+��5      �� 5      .R�5       ��  ��Name$ ICBorder��6!   
������ ._�5!      ��  �� Orientation$ Vertical=�6)   $��0,0,0,10q�6@   .+�5#   "   � $��0,5,0,0q�6'   	 � ColumnDefinitions	 5$   &   �� 5%   *   $
��Auto �6;   �� 5&   *   $��* �6;   �� 5'   *   $
��Auto �6;   .+�5)   &   �� $��0��60   $��Name:��6@   $
��Bold"�6M   $��0,0,7,0q�6_   $��Center=�6p   �� 5*   &   $��1��6.   $��Center=�6�   $��Stretch=�6�   
������ ��6>   �� *ObjectDetailName+
 �� Mode$
 TwoWay=� �� NotifyOnSourceUpdated . 6�   �� 5+   &    ��Name$ RemoveField��6=   -   5        $��2��5+   -   ��.  $��15��5,   -   $��15��69   $��5q�6D   
������ 
����ح�$��Right=�6�   $��Center=�6�   
 � Tag 5+   l   �� *key+.��5-   *   �� $��-��64   
���  ��$��Center=�6N   $��Center=�6i   5.   '   5/   #   �� 52   "   $ 
Horizontal=�6-   $��0,10,0,0q�6F   .+�53   &   �� $��Entry Method:��60   $
��Bold"�6E   $��0,0,10,0q�6W   � 55   &   .+�56   *   ��  ��Name$ cbselect��63   $	��110��6E   ��6Q   ��  �� Source# [  �� SelectedItem 6�   �� *OptionsEntryMethod+ . �� 57   *   
������ $��--Please Select--��6M    J� IsHitTestVisible .  $��Center=�58   I   $��7,0,0,0q�6d   y�57   f   ��  �� Path$ SelectedItem� �� ElementName$ cbselect�� �� 	Converter# [  58   d   59   '   5;   #   �� 5>   "   $ Vertical=�6-   $��0,10,0,0q�6D   y�6V   �� *OptionsEntryMethod+# [ .+�5?   &   �� $ 
Horizontal=�61   $��0,0,0,10q�6J   .+�5@   *   �� $��Entry Method Arguments:��64   $
��Bold"�6S   $��0,0,10,0q�6e   �� 5A   *   $ AddField��61   -   5         5A   Z   �� *key+.��5B   .   �� $��	Add Entry��68   $��Center=�6I   $��Center=�6d   5C   +   5D   '   �� 5E   &   $��Stretch=�6�   ��63   �� *OptionsEntryNames+ �� UpdateSourceTrigger$ PropertyChanged=���5F   *   �� 5G   .   .R�5H   2   ]� .+�5I   6   �� $ RemoveDataField��6=   -   5        $��15��5I   t   $��15��6�   $��3q�6�   
������ 
������ ��.   5J   =   �� *DataContext.key+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��.��5K   :   �� $��-��6D   
���  ��$��Center=�6^   $��Center=�6y   5L   7   �� 5M   6    ��Name$ CurrentItem��6>   $��Stretch=�6�   $��Center=�6�   
������ ��6S   �� *
DataName+$
 TwoWay=� .  5N   >   �� *
innerKey+5O   3   5P   /   5R   '   5S   #   5U      5V       �� Triggers 5W      P� 5X       P� Property �@��AlternationIndex P� Value$ 1��6O   . �5Y   "   ��  �� 
TargetName$ ICBorder��6Q    �� Property � �� �� Value
 �����5Z      P� 5[       �@J�IsMouseOver . . �5\   "   �� $ ICBorder��6O    � �� �#F3FAFF�� 5]   "   $ ICBorder��6P    � �� �#B2CCFF5^      5`      5b      5c      �� 5d   
   $��1��6   
�������$ 
Horizontal=�6:   $��Center=�6S   $��Center=�6n   .+�5e      �� -   5        $ AddItem��5e      $��20��6<   $	��100��6H   $��Center=�6T   $��0,0,30,0q�6o   .��5f      �� $	��Add��6   $��Center=�6'   5g      �� 5h      -   5        $ SaveInfo��5h      $��20��6>   $	��100��6J   $��Center=�6V   .��5i      �� $
��Save��6   $��Center=�6(   5j      5k      5l      5m      