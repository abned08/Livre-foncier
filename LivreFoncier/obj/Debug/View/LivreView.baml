   M S B A M L   `   `   `  ����G  CLivreFoncier, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LivreFoncier.ViewLivreFoncier.View  5      ?$clr-namespace:LivreFoncier.ViewModelLivreFoncier.ViewModel  5      h dSyncfusion.SfSkinManager.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89iLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPFSyncfusion.SfSkinManager 5	      ?$clr-namespace:LivreFoncier.ConverterLivreFoncier.Converter  5      !    LivreFoncier.View.LivreView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:LivreFoncier.View     5      3vm$clr-namespace:LivreFoncier.ViewModel     5      a ]Syncfusion.SfGrid.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89j fSyncfusion.SfBusyIndicator.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89j	 fSyncfusion.SfGridConverter.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a
 ]Syncfusion.Shared.Wpf, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89l hSyncfusion.SfTextInputLayout.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89<
syncfusion!http://schemas.syncfusion.com/wpf    	 
  5      hskinManagerLclr-namespace:Syncfusion.SfSkinManager;assembly=Syncfusion.SfSkinManager.WPF    	 
  5	      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      -cv$clr-namespace:LivreFoncier.Converter  5        � 	Resources  5      .   (LivreFoncier.Converter.HasErrorConverter   HasError)   #LivreFoncier.Converter.ConvertToInt  	converter3  -Syncfusion.UI.Xaml.Grid.GridHeaderCellControl �� 
TargetType �� Property �� Value+  %Syncfusion.UI.Xaml.Grid.GroupDropArea��%�  &	        &	      '  &     '  �       5   
   6     5   
   6   �� 5   
   "  6   .�5      ��  � ��$ Arial)�6+   �� 5       � ��$
 Bold"�6+   �� 5       � �� �	#FF2B579A6+   �� 5       � ��
 �����6+   5      �� 5   
   "  6   .�5      ��  � �� �	#FFA9CA426+   �� 5       � ��
 �   �6+   �� 5       � ��$
 Bold"�6+   5      5       .��5#      � .+�5%   
   )  #MaterialDesignThemes.Wpf.DialogHost    MaterialDesignDivider#���  6$      IsOpen 6Z   �� *IsDialogOpen+   DialogContent 5&      � 5'      $
��auto��6   $
��auto��6$   $��Center=�62     5(      ��%u   '��       �� 5)      " ��6    .�5*      ��  � ��$ 0q�68   �� 5+       � ��$ 18(�69   5,      5-      .+�5.      ��  �� Orientation$ 
Horizontal=�6!   $��15q�6:   .+�50      � -   5         �Name$ mainGrid��50      .+�51      � $��15q�6#    � ColumnDefinitions 52   "   �� 53   &   �� 54   &   	 � RowDefinitions	 57   "   �� 58   &   $
��Auto �64   �� 59   &   $
��Auto �64   �� 5:   &   $
��Auto �64   �� 5;   &   $
��Auto �64   .+�5>   "   �� $��4��5?      $��0,0,0,20q�5@      $��25(�5A      $
��Bold"�5B      ���#0d5fa3$��تعـــديل��5D      
 �� TextAlignment$
 Center=�5E      �� 5G   "   $��1��6-   $��0,0,10,0q�6:   .+�5H   &   :  4Syncfusion.UI.Xaml.TextInputLayout.SfTextInputLayout  $	��0.1��6C    J� Opacity$ 0Q�6P   $��0,-5,0,0q�6]      Hint$ البلدية��5I         HasError 5J      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$# InputView.(Validation.Errors)� �� 	Converter# [     	ErrorText 5K      �� *.,(Validation.Errors).CurrentItem.ErrorContent+ �� ElementName$ txtTown1��   	InputView. 5L   *   �� -   5         ��Name$ txtTown1��5L   3    �� 	MaxLength$ 50��6F   ��6U   �� *CurrentLivre.Town+ �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . 5N   '     5P   &   $��0,7,0,0q�6C   $��0��6T   $ البلدية��5Q      $��72��5S   a    5R      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5S      �� *" (Validation.Errors)/ErrorContent+$ txtTown��. 5T   *   �� -   5        $ txtTown��5T   3    �� TextAlignment$ Right=�6D   $ 50��6Z   ��6i   �� *CurrentLivre.Town+$ PropertyChanged=� . 5V   '     5X   &   $��0,7,0,0q�6C   $��1��5Z         CharMaxLength$ 3��5[      $ 
القسم��5\      $��76��5_   d    5]      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5_      �� *" (Validation.Errors)/ErrorContent+$ 
txtSection��. 5a   *   �� -   5        $ 
txtSection��5a   2   $ 3��6F   ��6T   �� *CurrentLivre.Section+ �� Mode$ TwoWay=�$ PropertyChanged=� . # [ 5b   '     5d   &   $��0,7,0,0q�6C   $��2��5f      $! مجموعة الملكية��5g       5h      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5i      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ txtIlot��. 5l   *   �� -   5        $ txtIlot��5l   2   $ 3��6C    �� TextWrapping$
 Wrap=�6�   ��6Q   �� *CurrentLivre.Ilot+$ PropertyChanged=� . # [ 6�   5m   '     5o   &   $��0,14,0,0q�6C   $��3��5q      $ 
الجزء��5r       5s      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5t      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ txtLot��. 5w   *   �� -   5        $ txtLot��5w   2   $ 3��6B   ��6P   �� *CurrentLivre.Lot+$ PropertyChanged=� . # [ 5x   '   �� 5}   &   -   5         ��Name$ txtDoubling��5}   0   $��3��6E   $��30��6R    d� 	IsChecked 6^   �� *CurrentLivre.Doubling+.��6�   ازدواج التسليم5   '   �� 5�   &   -   5        $ 
txtRepeate��5�   0   $��3��6D   $��30��6Q    6]   �� *CurrentLivre.RepeateOrCopy+.��6�   نسخــة5�   '   5�   #   �� 5�   "   $��1��6-   $��1��6:   .+�5�   &     $��0,7,0,0q�6C   $��0��5�      $" رقم سجل التسليم��5�       5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ 	recordNum��. 5�   *   �� -	   5        $ 	recordNum��5�   2   $ 4��6E   ��6S   �� *CurrentLivre.RecordNum+$ PropertyChanged=� . # [ 5�   '     5�   &   $��0,7,0,0q�6C   $��1��5�      $ رقم الترتيبة��5�       5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ 
arrangeNum��. 5�   *   �� -
   5        $ 
arrangeNum��5�   2   $ 5��6F   ��6T   �� *CurrentLivre.ArrangeNum+$ PropertyChanged=� . # [ 5�   '     5�   &   $��0,7,0,0q�6C   $��83��6T   $��2��6`    5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  . 5�   *   (  "System.Windows.Controls.DatePicker  -   5          Name$ deliveryDate��5�      )  #MaterialDesignThemes.Wpf.HintAssist    Hint$  تاريخ التسليم��5�      $��Bottom=�6E   $��45��6`   $��
12,-7,10,7q�6l   !   SelectedDate! 5�      �� *CurrentLivre.DeliveryDate+ . $ PropertyChanged=�5�   +   5�   '     5�   &   $��0,7,0,0q�6C   $��3��5�      $��2��6"   $ المالك��5�      " J� RenderTransformOrigin$" 0.496,0.588&�5�   m   $	��135��6�    5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$ deliveredTo��. 5�   *   �� -   5        $ deliveredTo��5�   2   # �� AcceptsReturn# . $ Right=�6\   $��85��6r   $ 50��6~   $��Center=�6�   $
 Wrap=�6  $��10,0,8,9q�63  ��6�   �� *CurrentLivre.DeliveredTo+$ PropertyChanged=� . 63  5�   '     5�   &   $��0,7,0,0q�6C   $ ملاحظــة��5�       5�      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [   5�      �� *.,(Validation.Errors).CurrentItem.ErrorContent+$
 note��. 5�   *   �� -   5        $
 note��5�   2   $ 50��6@   ��6O   �� *CurrentLivre.Note+$ PropertyChanged=� . 5�   '   5�   #   �� 5�   "   $��3��5�      $��2��5�      $��Center=�5�      $ Vertical=�5�      .+�5�   &   �� $��0,10,0,0q�6-   $	��150��5�      $��45��5�      $��Center=�5�      $��0q�5�      ���#0d5fa3
�������$��حفــــظ��5�      $��16(�5�      ��5�      �� *UpdateCommand+5�      �� 5�   &   -   5        $ ��Name$$ Message��5�   0   $	��543��6A   $��78��6M   $
��Wrap=�6Y   $
 Center=�6m   
���  ��$��Center=�6�   ��6�   �� *	Message+5�   #   5�      5�      5�      �� 5�      $ 
Horizontal=�6!   $��Right=�6:   $��Bottom=�6V   $��15q�6q   .+�5�      �� 
��� E��%   CloseDialogCommand#��Z% 68    & "MaterialDesignFloatingActionButton#��[ 6z   $��4q�6�   $��Bottom=�6�   $��Right=�6�   .��5�      '	  !MaterialDesignThemes.Wpf.PackIcon	  & 	  Kind$& Close=�5�   %   $��24��5�   %   $��24��5�   %   5�      5�      5�      .��5�      � .+�5�      (
  "Syncfusion.UI.Xaml.Grid.SfDataGrid
  -   5        ' 
 Name$' 
sfdataGrid��5�   (   ( � ToolTip$5( /للتعديل اضغط بيمين الفأرة��6<   ) 
  GroupCaptionTextFormat8  2Syncfusion.UI.Xaml.Grid.GridSummaryFormatConverter$3) -يوجد في : {Key} - {ItemsCount} دفتر 6`   $��Arial)�6�   (  "Syncfusion.UI.Xaml.Grid.SfGridBase*   AutoGenerateColumns* .  $��5,0,0,20q�6�   + 
  AllowFiltering+ . , 
  FilterRowPosition$, FixedTop=�5�   6   - 
  LiveDataUpdateMode$- AllowDataShaping=�6S   . 
  EnableDataVirtualization. . /   HeaderRowHeight$/ 45Q�5�       0   NavigationMode$	0 Row=�65   1   SelectionMode$1 Single=�5�   (   2 
  AllowDeleting2 .  3   AllowEditing3 .  4   AllowResizingColumns4 . 5   	RowHeight$5 35Q�5�   (   $��20(�67   6 
  ShowBusyIndicator6 . 7 
  IsGroupDropAreaExpanded7 . 8 
  ShowGroupDropArea8 . 9 
  GroupDropAreaText$E9 ?اسحب العمود هنا للتجميع بناءا عليه��6�   |�. : 
  ColumnSizer$: SizeToHeader=�6�   ;   SelectedItem; 5�   J   �� *CurrentLivre+< 
  RowSelectionBrush< 5�      �� 5�      = �� EndPoint$	= 1,1&�6.   > �� 
StartPoint$	> 0,0&�6=   .��5�      � ? � Color$? 	#FF81A9E6��6+   @ � Offset$@ 0Q�6=   � 5�      $? 	#FFADC7F1��6+   $@ 1Q�6=   5�       A 
  RowHoverHighlightingBrushA 5�      �� 5�      $	= 1,1&�6.   $	> 0,0&�6=   .��5�      � $? 	#FFE55298��6+   $@ 0Q�6=   � 5�      $? 	#FF74E553��6+   $@ 1Q�6=   5�      B 
  ColumnsB 5�      ,  &Syncfusion.UI.Xaml.Grid.GridTextColumn  ,  &Syncfusion.UI.Xaml.Grid.GridColumnBaseC   
HeaderText$C البلدية��64   D   TextAlignment$D Right=�6I   E   MappingName$
E Town��6_   (  "Syncfusion.UI.Xaml.Grid.GridColumn"F   ImmediateUpdateColumnFilterF . G   	CellStyleG 5�      �� 5�   "   &   Syncfusion.UI.Xaml.Grid.GridCell"  6(   .�5�   &   ��  � ��
 �   �6C   �� 5�   &    � ��$
 Bold"�6C   5�   #   5�      /  )Syncfusion.UI.Xaml.Grid.GridNumericColumn  5�      -   5        
colSection��H   Width$H 80Q�5�   K   $C 
القسم��6V   $D Center=�6i   $E Section��6�   F . I   NumberDecimalDigits$I 0��6�   G 5�      �� 5�   "   "  6(   .�5�   &   ��  � �� �#b300006C   �� 5�   &    � ��$
 Bold"�6C   �� 5   &     �@ SelectionForegroundBrush
 �����6Q   5  #   5       5     -   5        colIlot��$H 80Q�5  I   $C مج الملكية��6T   $D Center=�6l   $
E Ilot��6�   F . $I 0��6�   G 5     �� 5  "   "  6(   .�5  &   ��  � ��
 � � �6C   �� 5  &    � ��$
 Bold"�6C   5	  #   5       5     $C 
الجزء��67   $H 80Q�6K   $D Center=�6V   $	E Lot��6m   F . $I 0��6�   G 5     �� 5  "   "  6(   .�5  &   ��  � ��
 ��  �6C   �� 5  &    � ��$
 Bold"�6C   �� 5  &    �@ CellSelectionBrush
 �����6K   5  #   5     0  *Syncfusion.UI.Xaml.Grid.GridCheckBoxColumn  5     $!C ازدواج التسليم��68   $H 80Q�6U   $E Doubling��6a   F . G 5     �� 5  "   "  6(   J �� 	ResourcesJ 5  &   ��%X   '��       �� 5  *   " ��60   .�5  .   ��  � ��
 �  ��5  /   5  +   5  '   5  #   5      0  *Syncfusion.UI.Xaml.Grid.GridDateTimeColumn  5!     $C تاريخ التسليم��68   $E DeliveryDate��6S   F . K   ValueBindingK 6�   �� $ DeliveryDate�L �� StringFormat$L 
dd/MM/yyyy��  5"     $C رقم السجل��67   $H 80Q�6N   $E 	RecordNum��6Z   F . $I 0��6�   G 5#     �� 5$  "   "  6(   .�5%  &   ��  � ��
 ����6C   �� 5&  &    �@ CellSelectionBrush
 �����6K   5'  #   5)       5*     $C رقم الترتيبة��67   $H 80Q�6Q   $E 
ArrangeNum��6]   F . $I 0��6�   G 5+     �� 5,  "   "  6(   .�5-  &   ��  � ��
 ����6C   �� 5.  &    �@ CellSelectionBrush
 �����6K   5/  #   51       52     $C نسخة��68   $H 80Q�6J   $E RepeateOrCopy��6V   F . G 53     �� 54  "   "  6(   .�55  &   ��  � ��
 � d �6C   �� 56  &    �@ CellSelectionBrush
 �����6K   57  #   59       5:     $C مسلم إلى��64   $E DeliveredTo��6K   M   ShowToolTipM . F . N   ColumnSizer$N AutoWithLastColumnFill=�6�     5;     $C ملاحظـة��64   $
E Note��6I   M . F . 6o   O J� InputBindingsO 5@     d� 5A     P d� Gesture$P 
RightClicka�6'   Q   OpenDialogCommandR �� Command#R ZQ 6<   S 
  TableSummaryRowsS 5G     ,  &Syncfusion.UI.Xaml.Grid.GridSummaryRow  T   Title$+T % العدد الكلي: {colSection}  64   U   ShowSummaryInRowU . V   SummaryColumnsV 5I  "   /  )Syncfusion.UI.Xaml.Grid.GridSummaryColumn  W   Name$W 
colSection��6?   X   Format$X '{Count:d}' 5J  7   Y   MappingName$Y Section��5K  7   Z   SummaryType$Z CountAggregate=�5M  7   [   Template[ 5N  &   �� 5O  *   .R�5P  .   �� 
���  ��$
 Right=�6I   
����ح�6x   5Q  +   5S  #   5W     5Y     >  8Syncfusion.Windows.Controls.Notification.SfBusyIndicator  5[     -   5        \  Name$\ sfBusyIndicator��5[  -   ]   ViewboxWidth$	] 100Q�6F   ^   ViewboxHeight$	^ 100Q�6Y   $��Center=�6m   $��Center=�6�   _   AnimationType$
_ Gear=�6�   `   IsBusy` . $��403,285,451,255q�6�   $	��160��6�   $	��170��6�   5^     5`     �� 5b  
   -   5         * &MaterialDesignFloatingActionMiniButton#���  5b     $/( )تصدير القائمة إلى إكسل��6R   +  %MaterialDesignThemes.Wpf.ShadowAssista   ShadowDepth$a Depth5=�6s   $��Right=�6�   $	��Top=�6�   $��50��6�   $��50��6�   $��	0,12,48,0q�6  ��5d     �� 5e     b �� ImageSource$b ../excelIcon.png��6   5g     5h     5j     