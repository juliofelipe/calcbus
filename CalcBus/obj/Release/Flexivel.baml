   M S B A M L   `   `   `  ���� B  >CalcBus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CalcBusCalcBus      CalcBus.Flexivel   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     'localclr-namespace:CalcBus     .��� 
�������  � RowDefinitions  �� $	��300 ���  � ColumnDefinitions �� $	��400 ��� $	��500 ��� $	��242 �.+��� -    ��Name$ groupAmpacidade��$��0��$��0��$$��Conclusões Sobre a Ampacidade��$
��Left=�$	��882��$��
10,10,0,10q�$��2��.��&   System.Windows.Controls.DataGrid  -     Name$ dgvAmpacidade��$ �� IsSynchronizedWithCurrentItem$
 TrueY�   AutoGenerateColumns .     CanUserAddRows .  $
��Left=�$��
0,10,-2,10q�$	��872��
�������   Columns 0  *System.Windows.Controls.DataGridTextColumn  ,  &System.Windows.Controls.DataGridColumn   Header$ Condutor  
Utilizado��1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 �� *
CONDUTOR+  $  Número de 
SubCondutores��
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 100 	 �� *NCONDUTORES+  $ Rtc [Ω/ft]��$
 80 	 �� *RTC+  $ 	qc [W/ft]��$
 80 	 �� *QC+  $ 	qr [W/ft]��$
 80 	 �� *QR+  $ 	qs [W/ft]��$
 80 	 �� *QS+  $ I [A]��$
 80 	 �� *
AMPACIDADE+  $ Critério de Ampacidade��	 �� *CRITERIOAMPACIDADE+�� -   $ groupCorona��$��1��$��1��$)��#Critério Elétrico - Efeito Corona��$
��Left=�$	��482��$��	9,10,0,10q�.��  -   $ 	dgvCorona��$
 TrueY� .   .  $
��Left=�$��
0,10,-2,10q�$	��472��
�������   $ Condutor  
Utilizado��	 �� *
CONDUTOR+  $  Número de 
SubCondutores��$	
 100 	 �� *NCONDUTORES+  $ Ga 
[kV/cm]��$
 60 	 �� *GA+  $ Gc 
[kV/cm]��$
 60 	 �� *GC+  $ Gv 
[kV/cm]��$
 60 	 �� *GV+  $ Critério Corona��	 �� *CRITERIOCORONA+�� -   $ 
groupCurto��$��1��$��0��$*��$Critério Elétrico - Curto-circuito��$
��Left=�$	��381��$��
10,10,0,10q�.��  -   $ dgvCurto��$
 TrueY� .   .  $
��Left=�$��
0,10,-2,10q�$	��371��
�������   $ Condutor  
Utilizado��	 �� *
CONDUTOR+  $  Número de 
SubCondutores��$	
 100 	 �� *NCONDUTORES+  $ Curto-Circuito [t]��$	
 100 	 �� *CURTOCIRCUITO+  $ Critério de
Curto��	 �� *CRITERIOCURTO+�� -   $ groupBox��$��2��$��Observações��$
��Left=�$	��580��$��10,10,-145,0q�$	��Top=�$	��378��$��2��.���� -    ��Name$ richTextBox��$��10q�. �/� .T�J�  W� CultureSource$
 User=�.*�.*��� $
��Bold"�$��14(�$/�)Ângulo de Incidência dos Raios Solares:����  �� MarkerStyle$	 Box=� �� MarkerOffset$ 1��.<��� .9�J� $
 User=�.*�.*��� $��14(�$� �� �� $� �� �� $��Italic$�$��14(�$=�7Θ igual a 90º pior caso referente ao sol do meio dia.��J� $
 User=�.*�.*��� $
��Bold"�$��14(�$ �Condutividade do Condutor:���� $	 Box=�$ 1��.<��� .9�J� $
 User=�.*�.*��� $��14(�$� �� �� $� �� �� $��Italic$�$��14(�$x�rA condutividade do cabo CA e CAA é definida   como 61%, 52,5% para CAL e para o ACAR o valor é obtido por média�� �� $��Italic$�$��14(�$� �� �� $��Italic$�$��14(�$6�0ponderada em função da formação do condutor.��J� $
 User=�.*�.*��� $
��Bold"�$��14(�$� ��J� $
 User=�.*�.*��� $
��Bold"�$��14(�J� $
 User=�.*�.*��� $��Italic$�$��14(�$� ��