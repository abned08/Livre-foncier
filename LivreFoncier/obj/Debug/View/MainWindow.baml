   M S B A M L   `   `   `  ����G  CLivreFoncier, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:LivreFoncierLivreFoncier  5   	   ?$clr-namespace:LivreFoncier.ViewModelLivreFoncier.ViewModel  5   	   5clr-namespace:LivreFoncier.ViewLivreFoncier.View  5   	   "    LivreFoncier.View.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:LivreFoncier     5   	   3vm$clr-namespace:LivreFoncier.ViewModel     5   	   0viewclr-namespace:LivreFoncier.View     5   	   U QMaterialDesignThemes.Wpf, Version=3.0.1.920, Culture=neutral, PublicKeyToken=nullFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	      MaterialDesignBody#���   5   	   $��Regular"�5   
   $��13(�5   
   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   
      TextRenderingMode$
 Auto=�5   
     MaterialDesignPaper#���  5   
     MaterialDesignFont#���  5   
   $	��600��5   
   $
��1024��6    � WindowStyle$
 None=�6$    � WindowStartupLocation$ CenterScreen=�67    � WindowState$ 	Maximized=�6\    � 
ResizeMode$ NoResize=�6t    � DataContext 5      0  *LivreFoncier.ViewModel.NavigationViewModel  5   
    � 	Resources 5       �� DataType+   %LivreFoncier.ViewModel.LivreViewModel!   LivreFoncier.View.LivreView-   'LivreFoncier.ViewModel.AddPageViewModel   LivreFoncier.View.AddPage+   %LivreFoncier.ViewModel.EntryViewModel!   LivreFoncier.View.EntryView(	   "LivreFoncier.ViewModel.DbViewModel
   LivreFoncier.View.dbView  OpenMenu	 �� TargetProperty
 �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value  	CloseMenu��%S  (��       5      *, +)(�� 2     5      *, +)(�� d     5       *, +)(�� �     5#      *,	 +)&	 �     &	     �� 5   
   "  6   .R�5        5      �� 5   
   "  6   .R�5        5      �� 5    
   "  6   .R�5!        5"      �� 5#   
   " 	 6   .R�5$      
  5%      �� 5&   
   .��5'      U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 GridMain��6�   .\�5(        $ 0��6'   $ 0Q�63     5)      $ 0:0:0.5��6'   $	 250Q�69   5*      U� 5+      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $
 GridMain��6�   .\�5,        $ 0��6'   $ 0Q�63     5-      $ 0:0:0.5��6'   $ 50Q�69   5.      U� 5/      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 StackPanelMenu��6�   .\�50        $ 0��6'   $ 0Q�63     51      $ 0:0:0.5��6'   $	 250Q�69   52      U� 53      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 listViewItem��6�   .\�54        $ 0��6'   $
 -250Q�63     55      $ 0:0:0.5��6'   $
 -250Q�69     56      $ 0:0:0.7��6'   $ 0Q�69   57      U� 58      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 listViewItem1��6�   .\�59        $ 0��6'   $
 -250Q�63     5:      $ 0:0:0.5��6'   $
 -250Q�69     5;      $ 0:0:0.9��6'   $ 0Q�69   5<      U� 5=      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 listViewItem2��6�   .\�5>        $ 0��6'   $
 -250Q�63     5?      $ 0:0:0.5��6'   $
 -250Q�69     5@      $ 0:0:1.1��6'   $ 0Q�69   5A      U� 5B      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 listViewItem3��6�   .\�5C        $ 0��6'   $
 -250Q�63     5D      $ 0:0:0.5��6'   $
 -250Q�69     5E      $ 0:0:1.3��6'   $ 0Q�69   5F      U� 5G      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 listViewItem4��6�   .\�5H        $ 0��6'   $
 -250Q�63     5I      $ 0:0:0.5��6'   $
 -250Q�69     5J      $ 0:0:1.5��6'   $ 0Q�69   5K      U� 5L      $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6,   $
 button��6�   .\�5M        $ 0��6'   $ 0Q�63     5N      $ 0:0:0.5��6'   $ 0Q�69     5O      $ 0:0:1.5��6'   $ 1Q�69   5P      U� 5Q      $V	 P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleY)�6,   $
 button��6�   .\�5R        $ 0��6'   $ 0Q�63     5S      $ 0:0:0.5��6'   $ 0Q�69     5T      $ 0:0:1.5��6'   $ 1Q�69   5U      5V      �� 5W   
   .��5X      U� $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 GridMain��6�   .\�5Y        $ 0��6'   $	 250Q�63     5Z      $ 0:0:0.5��6'   $ 0Q�69   5[      U� 5\      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.Y)�6,   $
 GridMain��6�   .\�5]        $ 0��6'   $ 50Q�63     5^      $ 0:0:0.5��6'   $ 0Q�69   5_      U� 5`      $U	 O(UIElement.RenderTransform).(TransformGroup.Children)[3].(TranslateTransform.X)�6,   $
 StackPanelMenu��6�   .\�5a        $ 0��6'   $	 250Q�63     5b      $ 0:0:0.5��6'   $ 0Q�69   5c      5d      5e       � Triggers 5f      :� 5g   
    :� RoutedEvent$ ButtonBase.Click��6    :� 
SourceName$ ButtonOpenMenu��66   .[�5h      �� -   5         ��Name$ OpenMenu_BeginStoryboard��5h      #��[ 6@   5i      :� 5j   
   $ ButtonBase.Click��6   $ ButtonCloseMenu��66   .[�5k      �� -   5        $ CloseMenu_BeginStoryboard��5k      #��[ 6A   5l      .��5w      )  #MaterialDesignThemes.Wpf.DialogHost    MaterialDesignDivider#���  6       DialogContent 5x   
   �� 5y       �� Orientation$ Vertical=�6   $	��8 8q�60   .+�5z      �� $��Stretch=�6    �� TextAlignment$ Justify=�6:   $��RightToLeft=�6R   $
��Bold"�6n   $��Arial)�6�   $��18(�6�   $��	10,74,0,0q�6�   $
��Wrap=�6�   $��SemiExpanded&�6�   $	��Top=�6�   $	��161��6�   $	��280��6	  
�5{      �� 5|      $��Italic$�6   $��18(�61   $���هذا البرنامج مخصص لعملية إعداد وتسليم وكذا إحصاء جميع الدفاتر العقارية على مستوى المحافظات العقارية، إذ من خلاله يمكن تتبع جميع الإجراءات الخاصة بالدفتر العقاري، البحث الدقيق والسريع، التعرف الآني على كل تسليم مزدوج للدفاتر العقارية ...الخ، مما يسهل على المحافظة العقارية عملها في هذا الاختصاص��6?   .�6l  ��5}      �� 5~   "   .��5   &   �  � Color$ Green��63    � Offset$	 0.0Q�6A   � 5�   &   $	 Red��63   $
 0.25Q�6?   � 5�   &   $ Green��63   $	 0.5Q�6A   � 5�   &   $
 Blue��63   $
 0.75Q�6@   5�   #   .�5�   .   5�      5�      �� 5�      
��� E��   CloseDialogCommand#��Z 60    & "MaterialDesignFloatingActionButton#��[ 6r   $��0,0,4,4q�6�   $��Bottom=�6�   $��Right=�6�   $��42��6�   $��42��6  .��5�      '  !MaterialDesignThemes.Wpf.PackIcon     Kind$ Close=�5�   %   $��24��5�   %   $��24��5�   %   5�      5�      .��5�   
   � ���	#FF3580BF.+�5�      �� $ 
Horizontal=�6   $��Center=�63   $	��Top=�6P   $
��15 0q�6h   .+�5�      �� $��Right=�6   $y�Hidden=�68   $
��Wrap=�6M   $/��):المحافظة العقـــارية ��6a   $
��Bold"�6   $��18(�6�   
����  �$��Center=�6�   $��57��6�   5�      �� 5�      -   5         ��Name$ StackPanelMenu��5�      $	��250��62   $
��Left=�6>   $��
-250 0 0 0q�6Y    J� RenderTransformOrigin$ 0.5,0.5&�6m   z�5�      V� 5�      .~�5�      �� �� 5�      �� 5�      T� 5�      5�      .+�5�      �� $ 
Horizontal=�6   $	��Top=�66   $��0��6N   $��Center=�6Y   .+�5�      �� $y�Hidden=�6    0 ,MaterialDesignFloatingActionMiniAccentButton#��[ 62   $��0q�6�   $��50��6�   $��50��6�   $��10q�6�   ��6x   Z� ��6�   Z� .��5�        $ Settings=�62   $��40��6B   $��40��6M   5�      �� 5�      -   5         ��Name$ button��5�      #��[ 6-   $��0q�6�   $��80��6�   $��80��6�   $��10q�6�   $ 0.5,0.5&�6�   ��6s   Z� z�5�      V� 5�      .~�5�   "   �� �� 5�   "   �� 5�   "   T� 5�   "   5�      ��5�      �� 5�       j� Stretch$ UniformToFill=�6*   5�      5�      �� 5�      $��	0,0,-20,0q�6   $
��auto��6/   .@�5�      �� #��[ 6    � ToolTip$* $معلومات عن البرنامج��6c      OpenDialogCommand#��Z 6�   $
��Left=�6�   $��0q�6
  $��50��6  $��50��6!  $��	0,100,0,0q�6-  ��6�   Z� ��6�   Z� .��5�        $ InformationCircleOutline=�62   
���/���$��40��6k   $��40��6v   5�      �� 5�      -   5         ��Name$ listViewItem��5�   #   $ الرئيسية��69   $��74��6L   ���#468C40$ 0.5,0.5&�6n    J� InputBindings 5�      d� 5�        d� Gesture$  	LeftClicka�6+   ! �� Command! 6?   �� *EntryPageCommand+z�5�      V� 5�      .~�5�   "   �� �� 5�   "   �� 5�   "   T� 5�   "   5�      .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�        $
 Home=�66   
����  �$��30��6T   $��30��6_   $��Center=�6k   $��5q�6�   �� 5�      $��الرئيسية��6(   $��25(�68   $��	ExtraBold"�6F   $��10q�6]   $��Center=�6i   $��36��6�   5�      5�      �� 5�      -   5        $ listViewItem1��5�   #   $ القائمة��6:   ���#FF56E8$��74��6a   $ 0.5,0.5&�6m    5�      d� 5�      $  	LeftClicka�6+   ! 6?   �� *LivrePageCommand+z�5�      V� 5�      .~�5�   "   �� �� 5�   "   �� 5�   "   T� 5�   "   5�      .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�        $ PlaylistEdit=�66   
����  �$��30��6\   $��30��6g   $��Center=�6s   $��5q�6�   �� 5�      $��القائمـــة��6(   $��25(�6:   $��	ExtraBold"�6H   $��10q�6_   $��Center=�6k   5�      5�      �� 5�      -   5        $ listViewItem2��5�   #   $ 
إضافة��6:   ���#606EFF$��74��6_   $ 0.5,0.5&�6k    5�      d� 5�      $  	LeftClicka�6+   ! 6?   �� *AddPageCommand+z�5�      V� 5�      .~�5�   "   �� �� 5�   "   �� 5�   "   T� 5�   "   5�      .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�        $ AddBox=�66   
����  �$��30��6V   $��30��6a   $��Center=�6m   $��5q�6�   �� 5�      $��إضــــافة��6(   $��25(�69   $��	ExtraBold"�6G   $��10q�6^   $��Center=�6j   5�      5�      �� 5�      -   5        $ listViewItem3��5�   #   ���#F2D94F$/ )نسخة من قاعدة البيانات��6O   $��74��6q   $ 0.5,0.5&�6}    5�      d� 5�      $  	LeftClicka�6+   ! 6?   �� *BackupCommand+z�5�      V� 5�      .~�5�   "   �� �� 5�   "   �� 5�   "   T� 5�   "   5�      .��5�      �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5�        $ DatabaseRefresh=�66   $��30��6M   
����  �$��30��6j   $��Center=�6v   $��5q�6�   �� 5�      $!��قاعدة البيانات��6(   $��25(�6>   $��	ExtraBold"�6L   $
��Wrap=�6c   $��10q�6w   $��Center=�6�   $	��150��6�   5�      5      �� 5     -	   5        $ listViewItem4��5  #   $y�Hidden=�6:   $��74��6N   $ 0.5,0.5&�6Z   z�5     V� 5     .~�5  "   �� �� 5  "   �� 5  "   T� 5  "   5     .��5
     �� $ 
Horizontal=�6%   $
��10 0q�6>   .+�5       $ Skype=�66   $��30��6C   $��30��6N   $��Center=�6Z   $��5q�6u   �� 5     $��Skype��6(   $��10q�65   $��Center=�6A   5     5     5     5     � 5     -
   5        " �Name$" GridMain��5     ���	#FFFBFBFB$ 0.5,0.5&�6<   $��15,0,0,0q�6\   z�5     V� 5     .~�5     �� �� 5     �� 5     T� 5     5     # � ColumnDefinitions# 5     �� 5     $��* �6'   .+�5     � $ � RowDefinitions$ 5     �� 5     $��40 �6(   �� 5      $��50 �6(   �� 5!     $��* �6(   �� 5"     $��* �6(   �� 5#     $��* �6(   # 5%     �� 5&     $��* �6+   �� 5'     $��* �6+   �� 5(     $��* �6+   .+�5+     �� -   5        $ ButtonCloseMenu��5+     #��[ 66   $��30��6|   $��30��6�   $��0q�6�   $	��Top=�6�   $
��Left=�6�   $��0��6�   $��3,7,10,0q�6  $y�	Collapsed=�6?  ��6�   Z� ��6�   Z� .��5,       $ 	ArrowBack=�62   $��30��6C   $��32��6O   ���	#FF3580BF6Z   5-     �� 5.     -   5        $ ButtonOpenMenu��5.     $y�Visible=�66   #��[ 6K   $��30��6�   $��30��6�   $��0q�6�   $	��Top=�6�   $��0��6�   $
��Left=�6	  $��3,7,10,0q�6$  ��6�   Z� ��6�   Z� .��50       $
 Menu=�62   ���	#FF3580BF$��30��6U   $��32��6a   51     �� 54     -   5        % ��Name$% 	txtHeader��54      ���	#FF3580BF$��30(�6x   $
��Bold"�6�   $��5q�6�   $��1��6�   ��63   �� *SelectedViewModel.HeaderText+6�   �� 56     -   5        & ��Name$& gridContent��56  P   $��0��6e   $��2��6u   
���   �$��3��6�   $��3��6�   ��6%   �� ' �� Path$' SelectedViewModel�58     �� 59     $
��Left=�6    $ Center=�6;   $��
336,14,0,0q�6R   $��12(�6f   
�������$
��Wrap=�6�   $J��DThis App was developed and designed by ©Aboubaker Nedjimi. W Bechar��6�   $	��Top=�6�   $��2��6�   $	��532��6  $��3��6  �� 5:     $
��Left=�6    $ Center=�6;   $��0,26,0,0q�6R   $��12(�6d   
�������$
��Wrap=�6�   $��Email: abned08@gmail.com��6�   $	��Top=�6�   $	��336��6�   $��1��6�   5<     5=     �� 5>     $ 
Horizontal=�6   $	��Top=�62   $��40��6J   $��Right=�6V   $��10q�6r   .+�5?     �� -   5        $ btnMinimize��5?     #��[ 6H   $��30��6�   $��30��6�   $��0q�6�   $��	0,-3,0,13q�6�   
��� � ���6�   Z� ��6�   Z� .��5A       $ WindowMinimize=�6.   5B     �� 5C     -   5        $ ButtonClose��5C     #��[ 6.   $��30��6t   $��30��6   $��0q�6�   $��	0,-3,0,13q�6�   ��6�   Z� ��6�   Z� .��5D       $ Power=�6.   
���  ��6;   5E     5F     5G     *  $Microsoft.Xaml.Behaviors.Interaction(   Triggers( 5I  
   +  %Microsoft.Xaml.Behaviors.EventTrigger  5J     )   	EventName$) Loaded��6   *  $Microsoft.Xaml.Behaviors.TriggerBase*   Actions.* 5K     2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction  +   Command+ 6(   �� *EntryPageCommand+5L     5N     5Q     