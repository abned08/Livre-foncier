   M S B A M L   `   `   `  ����G  CLivreFoncier, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LivreFoncier.ViewLivreFoncier.View  5      ?$clr-namespace:LivreFoncier.ConverterLivreFoncier.Converter  5      ?$clr-namespace:LivreFoncier.ViewModelLivreFoncier.ViewModel  5      !    LivreFoncier.View.EntryView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:LivreFoncier.View     5      3cv$clr-namespace:LivreFoncier.Converter     5      3vm$clr-namespace:LivreFoncier.ViewModel     5      U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
      a ]Syncfusion.SfGrid.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89b ^Syncfusion.SfInput.Wpf, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89j fSyncfusion.SfBusyIndicator.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89j	 fSyncfusion.SfGridConverter.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89a
 ]Syncfusion.Shared.Wpf, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89l hSyncfusion.SfTextInputLayout.WPF, Version=17.4460.0.39, Culture=neutral, PublicKeyToken=3d67ed1f87d44c89<
syncfusion!http://schemas.syncfusion.com/wpf    	 
  5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5      $��323.685��5	      $��563.684��63      MaterialDesignBody#���   5      $��Regular"�5      $��15(�5      &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5         TextRenderingMode$
 Auto=�5        MaterialDesignPaper#���  5       � DataContext 5      +   %LivreFoncier.ViewModel.EntryViewModel  5   
    � 	Resources 5      .   (LivreFoncier.Converter.HasErrorConverter  HasError  btvc �� 
TargetType �� Property �� Value��%  &	       &	      '�� &       5   
   6   �� 5   
   6'   �� 5    
   " ��6   .�5!      ��  �@��Padding$ 0q�6(   �� 5"       � ��$ 25(�6)   �� 5#       � ��$ Arial)�6+   �� 5$       � ��$
 Bold"�6+   5%      5(      .��5*      )  #MaterialDesignThemes.Wpf.DialogHost    MaterialDesignDivider#���  6       IsOpen 6V   �� *IsDialogOpen+   DialogContent 5,   
   � 5.      -   5        	 �Name$	 	EntryGrid��5.      
 J� RenderTransformOrigin$
 0.5,0.5&�6&    � ColumnDefinitions 52      �� 53      $��* �6'   �� 54      $��* �6'   �� 55      $��50 �6'    � RowDefinitions 58      �� 59      $��50 �6$   �� 5:      $
��auto �6$   �� 5;      $��20 �6$   �� 5<      $��* �6$   .+�5@      :  4Syncfusion.UI.Xaml.TextInputLayout.SfTextInputLayout  $��	10,7,10,1q�6/   $��1��6B   $��1��6O   
��� � �$��Center=�6s      Hint$ ولايـــة ؟��5A         HasError 5B      ��  �� RelativeSource ��  �� Mode$
 Self=� �� Path$# InputView.(Validation.Errors)� �� 	Converter# [    	ErrorText 5C      �� *" (Validation.Errors)/ErrorContent+ �� ElementName$ 	txtWilaya��   	InputView. 5D      �� -   5         ��Name$ 	txtWilaya��5D       �� 	MaxLength$ 50��63   ��6B   �� *CurrentEntry.Wilaya+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� �� ValidatesOnDataErrors . .��5E       5G      5H        5J      $��	10,7,10,1q�6/   
��� � �$��1��6V   $��0��6c   $��Center=�6s   $2 ,المحافظــة العقاريــة ؟��5K       5L      ��  �� $
 Self=�$# InputView.(Validation.Errors)�# [  5M      �� *" (Validation.Errors)/ErrorContent+$ txtTown��. 5N      �� -   5        $ txtTown��5N      $ 50��61   ��6@   �� *CurrentEntry.Conservation+$ TwoWay=�$ PropertyChanged=� . .��5O       5P      5Q      �� 5R      $��185,4,178.5,146.5q�6   $	��150��5T      $
��Auto��5U      $��Center=�5V      $��0q�5W      ���#0d5fa3
�������$��حفــــظ��5Z      $��16(�5[      $��2��6   $��2��6,   $��2��6@   ��5S      �� *	SaveState+5[   @   �� 5]      
��� E��$��2��60   $��1��6=      CloseDialogCommand#��Z 6M    & "MaterialDesignFloatingActionButton#��[ 6�   $��4q�6�   $��Bottom=�6�   $��Right=�6�   .��5_      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�5`   %   $��15��5a   %   $��15��5b   %   5c      5f      .��5i   
   �� -   5         ��Name$ stack��5i       �� Orientation$ Vertical=�6$   ��5k      �� 5l      -   5        rectangleBrush�� �� Color$ White��5l   :     � Triggers  5o      :� 5p      ! :� RoutedEvent$! StackPanel.Loaded��6   .[�5q      �� .��5r      �� .��5s      �� " �� 
TargetName$" rectangleBrush��6-   # �� TargetProperty$# Color�6T   $ �� From$$ GreenX�6v   	% �� To$% HotPinkX�6�   & g� Duration$& 0:0:3D�6�   ' g� AutoReverse' . ( g� RepeatBehavior$( Forever��6�   5t      5u      5v      .+�5z      �� -   5        $ 
livreStack��5z      $	��600��6-   $	��679��69   ��5{      �� 5|      ) �� ImageSource$) ../Icon.jpg��6!   * j� Stretch$
* Fill=�6;   + �� Opacity$	+ 0.8Q�6J   .+�5~      �� $��Center=�6   $
��Wrap=�6:   $��مـــرحباً��6N   $
��Bold"�6_   $��48(�6q   
����+��$	��Top=�6�   $��57��6�   $��0,2,0,0q�6�   �� 5      $ 
Horizontal=�6   $��Right=�62   $��15 190q�6N   .+�5�      �� $��Right=�6   , �� TextAlignment$, Center=�68   $
��Wrap=�6O   $
��auto��6�   $
��Bold"�6�   $��38(�6�   
���  ��$��Bottom=�6�   $��57��6  $	��150��6  $
��12 0q�6+  ��6d   �� *LastEntry.Wilaya+$ TwoWay=�$ PropertyChanged=�6+  �� 5�      $��Right=�6   $
��Wrap=�69   $;��5:مديرية الحفظ العقاري لولاية ��6M   $
��Bold"�6r   $��38(�6�   
����  �$��Center=�6�   $��57��6�   $��0,12,0,0q�6�   5�      �� 5�      $ 
Horizontal=�6   $��Right=�62   $��15 -30q�6N   .+�5�      �� $��Right=�6    $
��Wrap=�6=   $
��auto��6�   $
��Bold"�6�   $��38(�6�   
���� ��$��Bottom=�6�   $��57��6  $	��150��6  $
��12 0q�6&  ��6Q   �� *LastEntry.Conservation+$ TwoWay=�$ PropertyChanged=�6&  �� 5�      $��Right=�6    $
��Wrap=�6=   $/��):المحافظة العقـــارية ��6Q   $
��Bold"�6o   $��38(�6�   
����  �$��Center=�6�   $��57��6�   $��0,12,0,0q�6�   5�      5�      5�      5�      *  $Microsoft.Xaml.Behaviors.Interaction-   Triggers- 5�      +  %Microsoft.Xaml.Behaviors.EventTrigger  5�   
   .   	EventName$. Loaded��6   *	  $Microsoft.Xaml.Behaviors.TriggerBase/ 	  Actions./ 5�      2
  ,Microsoft.Xaml.Behaviors.InvokeCommandAction
  0 
  Command0 6$   �� *ShowDialogCommand+5�      5�      