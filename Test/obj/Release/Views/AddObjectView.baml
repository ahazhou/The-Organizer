   M S B A M L   `   `   `  ���� ?  ;Test, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:Test.Views
Test.Views  1clr-namespace:Test.ConvertersTest.Converters  1clr-namespace:Test.ViewModelsTest.ViewModels      Test.Views.AddObjectView   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     *localclr-namespace:Test.Views     4
convertersclr-namespace:Test.Converters     3	viewmodelclr-namespace:Test.ViewModels       � 	Resources  2   ,Test.Converters.ForEnumtoVisibilityConverter   enumtovisibility>   8Test.Converters.ForComboboxItemChosenVisibilityConverter  comboboxchosenvalue.   (Test.Converters.ForTextAddColonConverter  addcolon-   'Test.Converters.ForTextisEmptyConverter  	textempty��%<   &	        &	      &	 
     &	              .���  � RowDefinitions �� $��* ��� $��30 �.+��� $��0��$
��Auto=�$
��Auto=�.���  �� $��* ��� $��30 �.+��� $��0��$��Stretch=���.  $��5q����� *
Collection+���� .R���  ��Name$ border��
������ 
������ $��1q�._���  �� Orientation$ Vertical=�.+��  � ColumnDefinitions �� $��* ��� $
��Auto �.+��� $��0��$
��Bold"�$��Stretch=�$��Center=�$��11(����� *Name+��  ��Name$ RemoveField��-   $��1����.  $��15��$��15��$��5,5,10,5q�
������ 
����ح�$��Right=�$��Center=�
 � Tag �� *Name+.���� $��-��
���  ��$��Center=�$��Center=��� ���� *ObjectDetails+���� .R�A�  A� Columns$ 2��.+��� $
��Bold"�$
��Left=�$��10,0,0,0q�$��Center=�$��7(����� *ObjectDetailName+ �� 	Converter# [ � $��Stretch=�$��0,2,10,5q�$��Center=�.+��� $��Stretch=����� *Choice+y��� *OptionsEntryMethod+# [  	 �� ConverterParameter$	 TextBox��� y��� *OptionsEntryMethod+# [  $	 ComboBox��.+��� 
 ��Name$
 cbselect��$	��110��$
��Left=����� *OptionsEntryNames+ �� Mode$ OneWay=� �� SelectedIndex ��  �� Path$ Choice��� 
������ $��--Please Select--�� J� IsHitTestVisible .  $��Center=�$��7,0,0,0q�$
��Left=�y��� $ SelectedItem� �� ElementName$ cbselect��# [ �� $��0q�
������ 
������ y��� *OptionsEntryMethod+# [  $	 RadioButton������ *OptionsEntryNames+$ OneWay=����� .R��  �Name$ 	wrappanel��
������ .+��� $ 
Horizontal=�.+�	�  	� 	GroupName$ OptionsChoice���� $��0,0,10,0q����� *.+# [  �� Triggers P�  P� Property �@J�IsMouseOver P� Value . . ���  �� 
TargetName$ 	wrappanel�� �� Property � �� �� Value
 ��ح� P�  �@J�IsMouseOver . . ��� $ border�� � ��
 ��ح��� $ border�� � ��
 ��  �� $��1��$��Stretch=�$��Center=�.+��� -   $ 	AddObject��$��20��$	��100��$��Center=�$��Center=�.���� $��Add Item���� $��2��$ 
Horizontal=�$��Center=�
�������.+��� -   $ SubmitObject��$��20��$	��100��$��Center=�$��0,0,30,0q�.���� $��Submit���� -   $ CancelObject��$��20��$	��100��$��Center=�.���� $��Cancel��