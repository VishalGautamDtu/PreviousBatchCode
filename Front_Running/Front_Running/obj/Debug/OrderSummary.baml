   M S B A M L   `   `   `  ����H  DFront_Running, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Front_RunningFront_Running  5   	        Front_Running.OrderSummary   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Front_Running     5   	     � Title$  OrderSummary��5   	   ��5	   	   �� *&$SystemParameters.PrimaryScreenHeight+��5
   
   �� *%#SystemParameters.PrimaryScreenWidth+��5      �� 5   
    �� ImageSource$ login_background.jpg��6   .��5      � $	��300��6   $	��300��6   .+�5   
   �� -   5         ��Name$ label��5      
�������$=��7Hello user, this is your order summary, please confirm.��69   $
��Left=�6{   $��	10,10,0,0q�6�   $	��Top=�6�    J� RenderTransformOrigin$ 0.066,1.459&�6�   �� 5   
   -   5         ��Name$ 	textBlock��5      
�������$
��Left=�6A   $��	10,57,0,0q�6\   $
��Wrap=�6o   $	��Top=�6�   $��Security Type��6�   6�   �� 5   
   -   5        $ 
textBlock1��5      
�������$
��Wrap=�6B   $��Company��6V   $��10,78,231,176q�6e   �� 5   
   -   5        $ 
textBlock2��5      
�������$
��Left=�6B   $��	11,99,0,0q�6]   $
��Wrap=�6p   $��
Trade Type��6�   $	��Top=�6�   $ 0.459,1.386&�6�   �� 5   
   -   5        $ 
textBlock3��5      
�������$
��Left=�6B   $��
11,120,0,0q�6]   $
��Wrap=�6q   $��Quantity��6�   $	��Top=�6�   $ 0.308,1.512&�6�   �� 5   
   -   5        $ 
textBlock4��5      
�������$
��Left=�6B   $��
11,141,0,0q�6]   $
��Wrap=�6q   $��Price��6�   $	��Top=�6�   $ 0.576,0.009&�6�   �� 5   
   -   5        $ 
textBlock5��5      
�������$
��Left=�6B   $��
11,162,0,0q�6]   $
��Wrap=�6q   $��Value��6�   $	��Top=�6�   �� 5   
   -   5        $ 
textBlock6��5      
�������$
��Left=�6B   $��	7,183,0,0q�6]   $
��Wrap=�6p   $��	Timestamp��6�   $	��Top=�6�   �� 5   
   -	   5         ��Name$ button��5      $��Confirm��6!   $
��Left=�63   $��
61,217,0,0q�6N   $	��Top=�6b   $��75��6z   6�   �� 5   
   -
   5        $ button1��5      $��Cancel��6"   $
��Left=�63   $��184,217,0,0q�6N   $	��Top=�6c   $��75��6{   6�   �� 5   
   -   5        $ labelSecurity��5      
�������$��Security��6A   $
��Left=�6T   $��
171,52,0,0q�6o   $	��Top=�6�   �� 5   
   -   5        $ labelcompany��5      
�������$��company��6@   $
��Left=�6R   $��
171,78,0,0q�6m   $	��Top=�6�   �� 5   
   -   5        $ 	labeltype��5      
�������$
��Left=�6=   $��
171,99,0,0q�6X   $	��Top=�6l   $��
Trade type��6�   �� 5   
   -   5        $ labelquantity��5      
�������$��Quantity��6A   $
��Left=�6T   $��171,120,0,0q�6o   $	��Top=�6�   �� 5   
   -   5        $ 
labelPrice��5      
�������$��Price��6>   $
��Left=�6N   $��171,139,0,0q�6i   $	��Top=�6~   �� 5   
   -   5        $ 
labelValue��5      
�������$��Value��6>   $
��Left=�6N   $��171,165,0,0q�6i   $	��Top=�6~   �� 5    
   -   5        $ 	labeltime��5       
�������$
��Time��6=   $
��Left=�6L   $��173,186,0,0q�6g   $	��Top=�6|   5)      5*      