   M S B A M L   `   `   `  ����H  DFront_Running, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:Front_RunningFront_Running  5   	        Front_Running.Login_Trader   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:Front_Running     5   	     � Title$  Login_Trader��5   	   ��6   �� *&$SystemParameters.PrimaryScreenHeight+��5	   
   �� *%#SystemParameters.PrimaryScreenWidth+.��5      � .+�5   
   �� $��login_background.jpg��6   $
��Fill=�6.    J� Effect 5      -  'System.Windows.Media.Effects.BlurEffect  5         Radius$ 20Q�6   5      �� 5   
   -   5        $��LoginHeading��5   P   $��40��6   $��Center=�6    $��	10,25,0,0q�6=   $��Login:��6d   $	��Top=�6r   $��25(�6�   $��ExtraCondensed&�6�   $
��Bold"�6�   �� 5   
   -   5        $��textBlockHeading��5   Q   $��50��6   $��Center=�6    $��
24,100,0,0q�6=   $	��Top=�6i   $��12(�6�   $��Italic$�6�    �� Padding$ 5q�6�   ][Note: Please login here to view the features of this site. If you are new on this site then�� 5   j   please click on �� 5       �� 5"      -   5        $��20(�5"   :   $��Normal$�6H   .�6[   
Register6e   5$      	 button5*      �� 5.   
   -   5        $��
textBlock1��5.   T   $��23��6   $��Center=�6    $��255,170,438,0q�6=   $��	User Name��6f   $	��Top=�6w   $��67��6�   �� 50   
   -   5        $��
textBlock2��50   T   $��23��6   $��Center=�6    $��255,220,428,0q�6=   $��Password��6f   $	��Top=�6v   $��77��6�   �� 52   
   -   5        $��userName��52   P   $��23��6   $��Center=�6   $��118,170,0,0q�6;   $	��Top=�6`   $	��145��6x   G� 54   
   -   5        $��passwordBox1��54   V   $��23��6   $��Center=�6"   $��366,220,248,0q�6?   $	��Top=�6j   $	��146��6�   �� 56   
   -   5        $��button1��56   a   $��Login��6   $��23��6!   $��Center=�6-   $��399,300,257,0q�6J   $	��Top=�6p   $	��104��6�   6�   �� 58   
   -	   5         ��Name$ errormessage��58   =   $��23��6   $��Center=�6    $	��Top=�6T   $	��246��6l   $��260,250,254,0q�6x    J� OpacityMask
 �<�����	#FFE5572C J� RenderTransformOrigin$ 0.5,0.5&�6�   z�59      V� 5:      .~�5;      �� �� 5<      �� 5=       �� Angle$ -0.363Q�6&   T� 5>      5?      5A      �� 5B   
   -
   5         ��Name$ button3��5B      $��Reset��6"   $
��Left=�62   $��247,300,0,0q�6M   $	��Top=�6b   $��75��6z   6�   5D      5F      