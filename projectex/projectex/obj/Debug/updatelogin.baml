   M S B A M L   `   `   `  ����D  @projectex, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null%clr-namespace:projectex	projectex  5   	       projectex.updatelogin   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   )localclr-namespace:projectex     5   	     � Title$  LoginUserUpdate��5   	   $	��550��6!   $	��900��6.   ���#e1f4f3$��Black"�6O   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��2* �6   �� 5      $��1* �6   �� 5      $��1* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	DataGrid1��5   )   $	��178��5      $��Center=�6    $��0��6=   $��3��6J   $��160,30,177,0q�5      $	��Top=�6<   $	��555��6T   6`   �� 5    
   -   5         ��Name$ 	User_name��5    %   $��
User_Name:��6   $��1��68   $��0��6E   $��Right=�6U   $��0 20 0 0q�6q   �� 5!   
   -   5         ��Name$ UserName��5!   ;    �� AcceptsReturn .  �� TextWrapping$
 Wrap=�6'   $��1��6M   $��1��6Z   $��
12,24,11,4q�6j   $	��200��6   �� 5#   
   -   5        $ password��5#   $   $��	Password:��6   $��2��66   $��0��6C   $��Right=�6S   �� 5$   
   -   5        $ Password��5$   ;    . $
 Wrap=�6'   $��2��6M   $��1��6Z   $��5q�6j   $	��200��6u   �� 5&   
   -   5        $ position��5&   $   $��	Position:��6   $��3��66   $��0��6C   $��Right=�6S   �� 5(   
   -   5         ��Name$ Position��5(   0   $��3��6   $��1��6    .@�5)      �� .��6   	Manager6$   �� 5*      .��6   
Instructor6'   �� 5+      .��6   	Student6$   5,      �� 51   
   -   5        	 ��Name$
	 save��51   E   $��10q�6   ���#333333
�������$
��Save��6S   $��5��6b   $��1��6o   6   �� 52   
   -	   5        $	 delete��52   E   $��10q�6   ���#333333
�������$��Delete��6U   $��6��6f   $��1��6s   6�   53      54      