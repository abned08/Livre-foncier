   M S B A M L   `   `   `  ����G  CLivreFoncier, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LivreFoncier.ViewLivreFoncier.View  5      ?$clr-namespace:LivreFoncier.ViewModelLivreFoncier.ViewModel  5      ?$clr-namespace:LivreFoncier.ConverterLivreFoncier.Converter  5	          LivreFoncier.View.AddPage   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:LivreFoncier.View     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      -vm$clr-namespace:LivreFoncier.ViewModel  5      -cv$clr-namespace:LivreFoncier.Converter  5	      a ]Syncfusion.SfGrid.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89j fSyncfusion.SfBusyIndicator.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89j	 fSyncfusion.SfGridConverter.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a
 ]Syncfusion.Shared.Wpf, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89l hSyncfusion.SfTextInputLayout.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89<
syncfusion!http://schemas.syncfusion.com/wpf    	 
  5
         MaterialDesignBody#���   5      $��Regular"�5      $��15(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5        MaterialDesignFont#���  5      $
��auto��6@   $	��630��6N    � DataContext 5      +   %LivreFoncier.ViewModel.LivreViewModel  5   
    � 	Resources 5      .   (LivreFoncier.Converter.HasErrorConverter  HasError)   #LivreFoncier.Converter.ConvertToInt  	converter �� 
TargetType �� Property �� Value��%�   &	       &	      '�� &       5   
   6     5   
   6   �� 5   
   " ��6   .�5      ��  � ��$ 0q�6(   �� 5        � ��$ 18(�6)   5!      5'      .��5)      � -   5         �Name$ mainGrid��5)      .+�5*   
   � $��15q�6   -  'System.Windows.Input.KeyboardNavigation   TabNavigation$ Cycle=�6   	 � ColumnDefinitions	 5+      �� 5,      �� 5-      
 � RowDefinitions
 50      �� 51      $
��Auto �6    �� 52      $
��Auto �6    �� 53      $
��Auto �6    �� 54      $
��Auto �6    .+�57      �� $��4��58      $��0,0,0,20q�59      $��25(�5:      $
��Bold"�5;      ���#0d5fa3$��إضافــــة��5=       �� TextAlignment$ Center=�5>      �� 5?      $��1��6   $��0��6&   $��0,0,10,0q�66   .+�5@      :  4Syncfusion.UI.Xaml.TextInputLayout.SfTextInputLayout  $��0,7,0,0q�6/   $��0��5B         Hint$" رقم سجل التسليم��5C         HasError 5D      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$# InputView.(Validation.Errors)� �� 	Converter# [    	ErrorText 5E      �� *.,(Validation.Errors).CurrentItem.ErrorContent+ �� ElementName$ 	recordNum��   	InputView. 5G      �� -   5         ��Name$ 	recordNum��5G      $��0��61    �� 	MaxLength$ 4��6>   ��6L   �� *CurrentLivre.RecordNum+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . # [ 5H        5J      $��0,7,0,0q�6/   $��1��5L      $ رقم الترتيبة��5M       5N      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5O      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ 
arrangeNum��. 5Q      �� -   5        $ 
arrangeNum��5Q      $��1��62   $ 5��6?   ��6M   �� *CurrentLivre.ArrangeNum+$ PropertyChanged=� . # [ 5R        5T      $��0,7,0,0q�6/   $��83��6@   $��2��6L    5U      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [ . 5V      (  "System.Windows.Controls.DatePicker  -   5          Name$ deliveryDate��5W      $��2��5V   !   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ تاريخ التسليم��5Y      $��Bottom=�6E   $��45��6`   $��
12,-7,10,7q�6l      SelectedDate 5X      �� *CurrentLivre.DeliveryDate+ . $ PropertyChanged=�5\      5_        5d      $��0,7,0,0q�6/   $��3��5f      $��2��6"   $ المالك��5g       J� RenderTransformOrigin$ 0.496,0.588&�5i   m   $	��135��6�    5h      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5i      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ deliveredTo��. 5k      �� -   5        $ deliveredTo��5k      $��3��63    �� AcceptsReturn .  �� TextAlignment$ Right=�6U   $��85��6k   $ 50��6w   $��Center=�6�    �� TextWrapping$
 Wrap=�6  $��10,0,8,9q�6,  ��6�   �� *CurrentLivre.DeliveredTo+$ PropertyChanged=� . 6,  5l      5m      �� 5n      $��1��6   $��1��6&   $��0,0,10,0q�66   .+�5o        $��0,7,0,0q�6/   $ البلدية��5p      $��72��5r   m    5q      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5r      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ txtTown��. 5s      4	  .Syncfusion.Windows.Controls.Input.SfTextBoxExt	  -   5          	 Name$  txtTown��5s   /   $��4��6@   $ 50��6o   ! 	  AutoCompleteMode$! Suggest=�5t      " 	  SearchItemPath$
" Town��5u      ��5s   ~   �� *CurrentLivre.Town+$ PropertyChanged=� . .��5v       # 	  AutoCompleteItemTemplate# 5w      �� 5x      .R�5y   "   �� $ �� Orientation$$ 
Horizontal=�6.   .+�5{   &   �� 
���������6C   �� *Town+5|   #   5}      .��5~   L   5      5�        5�      $��0,7,0,0q�6/   $��1��5�      %   CharMaxLength$% 3��5�      $ 
القسم��5�      $��76��5�   d    5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5�      �� *" (Validation.Errors)/ErrorContent+$ 
txtSection��. 5�      �� -   5        $ 
txtSection��5�      $��5��62   $ 3��6?   ��6M   �� *CurrentLivre.Section+& �� Mode$& TwoWay=�$ PropertyChanged=� . # [ 5�        5�      $��0,7,0,0q�6/   $��2��5�      $! مجموعة الملكية��5�       5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ txtIlot��. 5�      �� -   5        $ txtIlot��5�      $��6��6/   $ 3��6<   $
 Wrap=�6�   ��6J   �� *CurrentLivre.Ilot+$ PropertyChanged=� . # [ 6�   5�        5�      $��0,14,0,0q�6/   $��3��5�      $ 
الجزء��5�       5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ txtLot��. 5�      �� -	   5        $ txtLot��5�      $ 3��6.   $��7��6<   ��6I   �� *CurrentLivre.Lot+$ PropertyChanged=� . # [ 5�      �� 5�      -
   5        ' ��Name$' txtDoubling��5�      $��8��61   $��3��6>   $��30��6K   ( d� 	IsChecked( 6W   �� *CurrentLivre.Doubling+.��6�   ازدواج التسليم5�      �� 5�      -   5        $' 
txtRepeate��5�      $��9��60   $��3��6=   $��30��6J   ( 6V   �� *CurrentLivre.RepeateOrCopy+.��6�   نسخــة5�        5�      $��0,7,0,0q�6/   $ ملاحظــة��5�       5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$
 note��. 5�      �� -   5        $
 note��5�      $ 50��6,   $��10��6;   ��6I   �� *CurrentLivre.Note+$ PropertyChanged=� . 5�      5�      �� 5�      $��3��5�      $��2��5�      $��Center=�5�      $$ Vertical=�5�      .+�5�      �� $��0,10,0,0q�6   $��11��6+   $	��150��5�      $��45��5�      $��Center=�5�      $��0q�5�      ���#0d5fa3
�������$��حفــــظ��5�      $��16(�5�      ��5�      �� *SaveCommand+5�      �� 5�      -   5        ) ��Name$) Message��5�      $	��543��6-   $��78��69   $
��Wrap=�6E   $ Center=�6Y   
���  ��$��Center=�6�   ��6�   �� *	Message+5�      5�      5�      5�      