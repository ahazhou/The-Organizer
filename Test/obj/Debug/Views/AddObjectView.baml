   M S B A M L   `   `   `  ����?  ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Test.Views
Test.Views  5      1clr-namespace:Test.ConvertersTest.Converters  5      1clr-namespace:Test.ViewModelsTest.ViewModels  5          Test.Views.AddObjectView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      *localclr-namespace:Test.Views     5      4
convertersclr-namespace:Test.Converters     5      3	viewmodelclr-namespace:Test.ViewModels     5        � 	Resources  5      2   ,Test.Converters.ForEnumtoVisibilityConverter   enumtovisibility>   8Test.Converters.ForComboboxItemChosenVisibilityConverter  comboboxchosenvalue.   (Test.Converters.ForTextAddColonConverter  addcolon-   'Test.Converters.ForTextisEmptyConverter  	textempty��%t   &	        &	      &	 &     &	 9       5   
   62     5   
   6>     5   
   6.     5   
   6-   5      .��5      �  � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $��30 �6   .+�5   
   �� $��0��6   $
��Auto=�6$   $
��Auto=�6I   .��5      �  5      �� 5      $��* �6$   �� 5      $��30 �6$   .+�5      �� $��0��6   $��Stretch=�6O   ��.  $��5q�6�   ��6,   �� *
Collection+��5      �� 5      .R�5      ��  ��Name$ border��6%   
������ 
������ $��1q�6h   ._�5    "   ��  �� Orientation$ Vertical=�6-   .+�5!   &   �  � ColumnDefinitions 5"   *   �� 5#   .   $��* �6?   �� 5$   .   $
��Auto �6?   .+�5&   *   �� $��0��62   $
��Bold"�6X   $��Stretch=�6j   $��Center=�6�   $��11(�6�   ��6B   �� *Name+6�   �� 5'   *    ��Name$ RemoveField��6A   -   5        $��1��5'   1   ��.  $��15��5(   -   $��15��69   $��5,5,10,5q�6D   
������ 
����ح�$��Right=�6�   $��Center=�6�   
 � Tag 5'   p   �� *Name+.��5)   .   �� $��-��68   
���  ��$��Center=�6R   $��Center=�6m   5*   +   5+   '   �� 5,   &   ��63   �� *ObjectDetails+��5-   *   �� 5.   .   .R�5/   2   A�  A� Columns$ 2��6>   .+�50   6   �� $
��Bold"�51   4   $
��Left=�6F   $��10,0,0,0q�6a   $��Center=�52   4   $��7(�6O   ��50   @   �� *ObjectDetailName+ �� 	Converter# [ 52   O   � 53   6   $��Stretch=�6;   $��0,2,10,5q�6Y   $��Center=�6k   .+�55   :   �� $��Stretch=�6�   ��6B   �� *Choice+y�6Z   �� *OptionsEntryMethod+# [  	 �� ConverterParameter$	 TextBox��6�   � 58   :   y�6?   �� *OptionsEntryMethod+# [  $	 ComboBox��.+�59   >   �� 
 ��Name$
 cbselect��6G   $	��110��6Y   $
��Left=�6�   ��6e   �� *OptionsEntryNames+ �� Mode$ OneWay=� �� SelectedIndex 5:   =   ��  �� Path$ Choice��� 5;   >   
������ $��--Please Select--��6a    J� IsHitTestVisible .  $��Center=�5<   V   $��7,0,0,0q�6q   $
��Left=�6�   y�5;   z   �� $ SelectedItem� �� ElementName$ cbselect��# [ 5<   �   5=   ;   �� 5@   :   $��0q�6G   
������ 
������ y�6�   �� *OptionsEntryMethod+# [  $	 RadioButton����5A   �   �� *OptionsEntryNames+$ OneWay=���5B   >   �� 5C   B   .R�5D   F   �  �Name$ 	wrappanel��6P   
������ .+�5E   J   �� $ 
Horizontal=�6U   .+�5F   N   	�  	� 	GroupName$ OptionsChoice��6Z   �� 5G   N   $��0,0,10,0q�6�   ��6X   �� *.+# [ 6�   5H   K   5I   G    �� Triggers 5J   F   P� 5K   J    P� Property �@J�IsMouseOver P� Value . . �5L   N   ��  �� 
TargetName$ 	wrappanel��6}    �� Property � �� �� Value
 ��ح�5M   K   5O   C   5Q   ;   5S   7   5T   3   5U   /   5W   '   5X   #   5Y       5Z      P� 5[   "    �@J�IsMouseOver . . �5\   &   �� $ border��6U    � ��
 ��ح��� 5]   &   $ border��6Q    � ��
 ��  �5^   #   5`      5b      � 5c      $��1��6   $��Stretch=�6$   $��Center=�6B   .+�5d      �� -   5        $ 	AddObject��5d      $��20��6H   $	��100��6T   $��Center=�6`   $��Center=�6}   .��5e      �� $��Add Item��6$   5f      5g      5h      5i      �� 5j   
   $��2��6   $ 
Horizontal=�6"   $��Center=�6;   
�������.+�5k      �� -   5        $ SubmitObject��5k      $��20��6F   $	��100��6R   $��Center=�6^   $��0,0,30,0q�6y   .��5l      �� $��Submit��6   5m      �� 5n      -   5        $ CancelObject��5n      $��20��6F   $	��100��6R   $��Center=�6^   .��5o      �� $��Cancel��6   5p      5q      5r      5s      