   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  ? ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Test.Views
Test.Views )clr-namespace:Test.ModelsTest.Models 1clr-namespace:Test.ViewModelsTest.ViewModels 1clr-namespace:Test.ConvertersTest.Converters '   !Test.Views.CustomizeDataEntryView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     6sys&clr-namespace:System;assembly=mscorlib     *localclr-namespace:Test.Views     ,modelsclr-namespace:Test.Models     3	viewmodelclr-namespace:Test.ViewModels     4
convertersclr-namespace:Test.Converters       � 	Resources  >  8Test.Converters.ForComboboxItemChosenVisibilityConverter   comboboxchosenvalue)  #Test.Converters.ForDefaultConverter  defaultconverter9  3Test.Converters.ForEnumTextboxtoVisibilityConverter  	istextbox S� 
MethodName S� 
ObjectType   System.Enum  datafromenum S� MethodParameters M� TypeName��%r   &	        &	      &	 
     &	            S� $ 	GetValues��"   M� $ models:entryTypes��.���  � RowDefinitions �� $��* ��� $��30 �.+��� $
��Auto=�$
��Auto=�.���� $��0��$��Stretch=���.  $��5q� �� AlternationCount$ 2������ *ObjectInformation+���� .R���  ��Name$ ICBorder��
������ ._���  �� Orientation$ Vertical=�$��0,0,0,10q�.+�� $��0,5,0,0q�	 � ColumnDefinitions	 �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��Name:��$
��Bold"�$��0,0,7,0q�$��Center=��� $��1��$��Center=�$��Stretch=�
������ ���� *ObjectDetailName+
 �� Mode$
 TwoWay=� �� NotifyOnSourceUpdated . ��  ��Name$ RemoveField��-   $��2����.  $��15��$��15��$��5q�
������ 
����ح�$��Right=�$��Center=�
 � Tag �� *key+.���� $��-��
���  ��$��Center=�$��Center=��� $ 
Horizontal=�$��0,10,0,0q�.+��� $��Entry Method:��$
��Bold"�$��0,0,10,0q�� .+���  ��Name$ cbselect��$	��110������  �� Source# [  �� SelectedItem �� *OptionsEntryMethod+ . �� 
������ $��--Please Select--�� J� IsHitTestVisible .  $��Center=�$��7,0,0,0q�y���  �� Path$ SelectedItem� �� ElementName$ cbselect�� �� 	Converter# [  �� $ Vertical=�$��0,10,0,0q�y��� *OptionsEntryMethod+# [ .+��� $ 
Horizontal=�$��0,0,0,10q�.+��� $��Entry Method Arguments:��$
��Bold"�$��0,0,10,0q��� $ AddField��-    �� *key+.���� $��	Add Entry��$��Center=�$��Center=��� $��Stretch=����� *OptionsEntryNames+ �� UpdateSourceTrigger$ PropertyChanged=����� .R�]� .+��� $ RemoveDataField��-   $��15��$��15��$��3q�
������ 
������ ��.   �� *DataContext.key+ �� RelativeSource �� *FindAncestor+ �� AncestorType" ��.���� $��-��
���  ��$��Center=�$��Center=���  ��Name$ CurrentItem��$��Stretch=�$��Center=�
������ ���� *
DataName+$
 TwoWay=� .  �� *
innerKey+ �� Triggers P�  P� Property �@��AlternationIndex P� Value$ 1��. ���  �� 
TargetName$ ICBorder�� �� Property � �� �� Value
 �����P�  �@J�IsMouseOver . . ��� $ ICBorder�� � �� �#F3FAFF�� $ ICBorder�� � �� �#B2CCFF�� $��1��
�������$ 
Horizontal=�$��Center=�$��Center=�.+��� -   $ AddItem��$��20��$	��100��$��Center=�$��0,0,30,0q�.���� $	��Add��$��Center=��� -   $ SaveInfo��$��20��$	��100��$��Center=�.���� $
��Save��$��Center=�