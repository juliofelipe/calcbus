   M S B A M L   `   `   `  ����B  >CalcBus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CalcBusCalcBus  5          CalcBus.Flexivel   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:CalcBus     5      .��5	      � 
�������  � RowDefinitions  5
   
   �� 5      $	��300 �6   �� 5       � ColumnDefinitions 5   
   �� 5      $	��400 �6   �� 5      $	��500 �6   �� 5      $	��242 �6   .+�5   
   �� -   5         ��Name$ groupAmpacidade��5      $��0��6,   $��0��6:   $$��Conclusões Sobre a Ampacidade��6K   $
��Left=�6r   $	��882��6�   $��
10,10,0,10q�6�   $��2��6�   .��5      &   System.Windows.Controls.DataGrid  -   5          Name$ dgvAmpacidade��5      $ �� IsSynchronizedWithCurrentItem$
 TrueY�6.      AutoGenerateColumns .     CanUserAddRows .  $
��Left=�6�   $��
0,10,-2,10q�6�   $	��872��6�   
�������   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Condutor  
Utilizado��6)   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6Q   �� *
CONDUTOR+  5      $  Número de 
SubCondutores��6)   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 6u   	 6U   �� *NCONDUTORES+6u     5      $ Rtc [Ω/ft]��6)   $
 80 6V   	 6>   �� *RTC+6V     5      $ 	qc [W/ft]��6)   $
 80 6T   	 6=   �� *QC+6T     5      $ 	qr [W/ft]��6)   $
 80 6V   	 6?   �� *QR+6V     5      $ 	qs [W/ft]��6)   $
 80 6S   	 6<   �� *QS+6S     5       $ I [A]��6)   $
 80 6W   	 68   �� *
AMPACIDADE+6W     5!      $ Critério de Ampacidade��6)   	 6I   �� *CRITERIOAMPACIDADE+5$      5%      �� 5&   
   -   5        $ groupCorona��5&      $��1��6(   $��1��66   $)��#Critério Elétrico - Efeito Corona��6F   $
��Left=�6q   $	��482��6�   $��	9,10,0,10q�6�   .��5'        -   5        $ 	dgvCorona��5'      $
 TrueY�6*    .   .  $
��Left=�6�   $��
0,10,-2,10q�6�   $	��472��6�   
������� 5(        5)      $ Condutor  
Utilizado��6)   	 6Q   �� *
CONDUTOR+  5*      $  Número de 
SubCondutores��6)   $	
 100 6u   	 6U   �� *NCONDUTORES+6u     5+      $ Ga 
[kV/cm]��6)   $
 60 6^   	 6G   �� *GA+6^     5,      $ Gc 
[kV/cm]��6)   $
 60 6^   	 6G   �� *GC+6^     5-      $ Gv 
[kV/cm]��6)   $
 60 6^   	 6G   �� *GV+6^     5.      $ Critério Corona��6)   	 6B   �� *CRITERIOCORONA+50      51      �� 52   
   -   5        $ 
groupCurto��52      $��1��6(   $��0��66   $*��$Critério Elétrico - Curto-circuito��6F   $
��Left=�6r   $	��381��6�   $��
10,10,0,10q�6�   .��53        -   5        $ dgvCurto��53      $
 TrueY�6)    .   .  $
��Left=�6�   $��
0,10,-2,10q�6�   $	��371��6�   
������� 54        55      $ Condutor  
Utilizado��6)   	 6Q   �� *
CONDUTOR+  56      $  Número de 
SubCondutores��6)   $	
 100 6u   	 6U   �� *NCONDUTORES+6u     57      $ Curto-Circuito [t]��6)   $	
 100 6g   	 6E   �� *CURTOCIRCUITO+6g     58      $ Critério de
Curto��6)   	 6M   �� *CRITERIOCURTO+5:      5;      �� 5<   
   -   5        $ groupBox��5<      $��2��6%   $��Observações��65   $
��Left=�6J   $	��580��6e   $��10,10,-145,0q�6r   $	��Top=�6�   $	��378��6�   $��2��6�   .��5=      �� -   5         ��Name$ richTextBox��5=      $��10q�6/   . �5>      /� .T�5?      J�  W� CultureSource$
 User=�6    .*�6H   .*�5@      �� $
��Bold"�6   $��14(�60   $/�)Ângulo de Incidência dos Raios Solares:��6>   5A      �� 5B       �� MarkerStyle$	 Box=�6    �� MarkerOffset$ 1��6-   .<�5C      �� .9�5D      J� $
 User=�6(   .*�6P   .*�5E   "   �� $��14(�6&   $� ��64    �� 5F   "   $� ��6&    �� 5G   "   $��Italic$�6&   $��14(�69   $=�7Θ igual a 90º pior caso referente ao sol do meio dia.��6G   5H      5I      5J      J� 5K      $
 User=�6    .*�6H   .*�5L      �� $
��Bold"�6   $��14(�60   $ �Condutividade do Condutor:��6>   5M      �� 5N      $	 Box=�6   $ 1��6-   .<�5O      �� .9�5P      J� $
 User=�6(   .*�6P   .*�5Q   "   �� $��14(�6&   $� ��64    �� 5R   "   $� ��6&    �� 5S   "   $��Italic$�6&   $��14(�69   $x�rA condutividade do cabo CA e CAA é definida   como 61%, 52,5% para CAL e para o ACAR o valor é obtido por média��6G    �� 5T   "   $��Italic$�6&   $��14(�69   $� ��6G    �� 5U   "   $��Italic$�6&   $��14(�69   $6�0ponderada em função da formação do condutor.��6G   5V      5W      5X      J� 5Y      $
 User=�6    .*�6H   .*�5Z      �� $
��Bold"�6   $��14(�60   $� ��6>   5[      J� 5\      $
 User=�6    .*�6H   .*�5]      �� $
��Bold"�6   $��14(�60   5^      J� 5_      $
 User=�6    .*�6H   .*�5`      �� $��Italic$�6   $��14(�61   $� ��6?   5a      5b      5c      5d      5g      5h      