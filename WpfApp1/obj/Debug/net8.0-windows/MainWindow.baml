   M S B A M L   `   `   `  ����B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5   	       WpfApp1.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp1     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      .+�5      �� $��0��6   $��./Fonts/#Michroma)�6#    �� TextAlignment$ Center=�6B   $��Image To PDF Converter��6Y   $��20(�6w   $
��Bold"�6�   
�������$��Stretch=�6�   �� 5   
   $��1��6   $��14(�5      $
��Wrap=�5      $ Right=�5      ��5      �� 5       �� 
StartPoint$	 0,1&�6&    �� EndPoint$	 0,0&�67   .��5      �  � Color$ 	LightGray��6#    � Offset$ 0Q�65   � 5      $
 Gray��6#   $ 1Q�60   5      %#Select your images (JPG, PNG, BMP).�� 5   2   ,*They’ll be merged into one PDF in order.5      �� 5    
   -   5        $��2��5       $��10q�6   $��10q�6*   $
��Left=�67   $	��Top=�6R   $	��150��6j   $��Select Images��6v   6�   �� 5!   
   -   5        $��2��5!      $��10q�6   $��10q�6*   $��Right=�67   $	��Top=�6S   $	��150��6k   $��Convert to PDF��6w   6�   �� 5#   
   -   5        $��ImageListBox��5#   I   $��0q�6   $��2��6'   $��10,50,10,10q�64   $��Stretch=�6]   $��Stretch=�6{    �� SelectionMode$ Multiple=�6�   ��6�   �� *Image+��5$      �� 5%       �� 
TargetType" ��6   .�5&      �� 	 �� Property	 � ��
 �� Value$
 Stretch=�6C   5'      ��5)      �� 5*      .R�5+      �  � ColumnDefinitions 5,      �� 5-      $
��auto �6/   �� 5.      $
��auto �6/   �� 5/      $��* �6/   �� 50      $
��auto �6/   .+�53      �� $��50��6=   $��50��6H   $��5q�6T   $��0��6_   ��6    �� *	ImagePath+6_   �� 54      $��Center=�6?   $��5q�6Z   $��1��6e   ��6$   �� *	ImageName+6e   �� 55       �� Orientation$ 
Horizontal=�6%   $��2��6>   $��Right=�6N   $��10q�6j   .+�56      �� -   5        $��Arial)�56   &   $��0q�69   $��5q�6M   
������ .��57   "   �� $��/assets/up.png��6(   $��30��6@   $��30��6L   58      �� 59      -   5        $��Arial)�59   %   $��0q�68   $��5q�6L   
������ .��5:   &   �� $��/assets/down.png��6,   $��30��6G   $��30��6S   5;      5<      �� 5=      -   5        $��Right=�5=   !   $��Arial)�6>   
������ $��0q�6j   $��5q�6   $��3��6�   .��5>      �� $��/assets/cross.png��6$   $��Right=�6?   $��50��6[   $��50��6f   5?      5A      5C      5E      5H      5I      