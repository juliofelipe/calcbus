   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   B >CalcBus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CalcBusCalcBus 5   	      CalcBus.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4s&clr-namespace:System;assembly=mscorlib     5   	   Z VWPFToolkit.Extended, Version=1.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   !localclr-namespace:CalcBus  5   	     � Title$  CalcBus��5
   	   $	��768��6   $
��1350��6&    � Icon$ img/calcbus.png��63   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      �� 5      $��30 �6   .+�5   
   +  %System.Windows.Controls.Ribbon.Ribbon  -   5          Name$ ribbon��5      $��Center=�6!   $��0,0,0,0q�6<   $��0��6M   $	��137��6Z      ApplicationMenu 5      :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5      5  /System.Windows.Controls.Ribbon.RibbonMenuButton   KeyTip$ F��6(      SmallImageSource$ img\calculator.png��63   .@�5      >  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem  -   5        $��Novo Cálculo de Flexivel��5   0   3  -System.Windows.Controls.Ribbon.RibbonMenuItem   ImageSource$ img\flexivel.png��6R   6r     5      $��Novo Cálculo de Rígido��60   {�. $ img\rigido.png��6a   4  .System.Windows.Controls.Ribbon.RibbonSeparator  5        5      -   5        $��Sobre o Programa��5   0   $ img\sobreCalcBus.png��6J   6m   5      .@�5      .  (System.Windows.Controls.Ribbon.RibbonTab  $��Barramento Flexível��6   $��88��65   $��Center=�6A   $��0,0,-2,0q�6\   .@�5      0  *System.Windows.Controls.Ribbon.RibbonGroup  $��Condutor��6   $��88��60   $��0q�6<   $	��Top=�6G   $	��368��6_   .@�5      � $��0,0,-357,-78q�6   .+�5      �� -   5         ��Name$ cboTipoCondutor��5   #   	 � ToolTip$	 Tipo do Condutor��6<   $
��Left=�6W   $��23��6r   $��	10,10,0,0q�6~   $	��Top=�6�   $��84��6�   
�������$��0q�6�   ���	#FFB9C9DA6�   �� 5       -   5        $ cboCondutor��5    #   $	 Nome do Condutor��68   $
��Left=�6S   $��23��6n   $��	99,10,0,0q�6z   $	��Top=�6�   $	��190��6�   
�������$��0q�6�   ���	#FFB9C9DA6�   �� 5!      -   5        $ cboNumCondutores��5!   #   $	 Numero de Condutores��6=   $
��Left=�6\   $��23��6w   $��294,10,0,45q�6�   $��Center=�6�   $��57��6�   
�������$��0q�6�   ���	#FFB9C9DA
 J� RenderTransformOrigin$
 
0.13,0.769&�6�   �� 5"      -   5         ��Name$ 	lblBitola��5"       $	 Bitola [AWG ou kcmil]��63   $��-��6S   $
��Left=�6_   $��
40,39,0,13q�6z   $��Center=�6�   $��54��6�   $��26��6�   �� 5#      ���	#FFB9C9DA$��1q�69   $
��Left=�6M   $��23��6h   $��
40,40,0,12q�6t   $��Center=�6�   $��54��6�    �� CornerRadius$ 3��6�   �� 5$      ���	#FFB9C9DA$��1q�69   $
��Left=�6M   $��23��6h   $��129,40,0,12q�6t   $��Center=�6�   $��52��6�   $ 3��6�   �� 5%      -   5        $ lblPesoNominal��5%       $	 Peso Nominal [kg/km]��68   $��-��6W   $
��Left=�6c   $��129,39,0,16q�6~   $��Center=�6�   $��52��6�   $��23��6�   $
 0.674,-0.923&�6�   �� 5&      ���	#FFB9C9DA$��1q�69   $
��Left=�6M   $��23��6h   $��216,41,0,11q�6t   $��Center=�6�   $��45��6�   $ 3��6�   �� 5'      -	   5        $ lblDiametro��5'       $	 Diametro Nominal [mm]��65   $��-��6U   $
��Left=�6a   $��Center=�6}   $��45��6�   $��26��6�   $��216,39,0,13q�6�   �� 5(      -
   5        $ lblCondutividade��5(       $��-��6:   $ 	 Condutividade do cabo [%];��6F   $
��Left=�6l   $	��Top=�6�   $��54��6�   $��26��6�   $
 0.5,0.5&�6�   $��
296,39,0,0q�6�   �� 5)      ���	#FFB9C9DA$��1q�69   $
��Left=�6M   $��23��6h   $	��Top=�6t   $��57��6�   $ 3��6�   $��
294,42,0,0q�6�   �� 5*      -   5         ��Name$ 	imgbitola��5*       $
��Left=�63   $��23��6N   $	��Top=�6Z   $��25��6r   $��img/bitola.png��6}   $��	11,41,0,0q�6�   �� 5+      -   5        $ imgpeso��5+       $
��Left=�61   $��23��6L   $	��Top=�6X   $��25��6p   $��img/peso.png��6{   $��
100,41,0,0q�6�   �� 5,      -   5        $ imgdiametro��5,       $
��Left=�65   $��25��6P   $	��Top=�6\   $��25��6t   $��img/diametro.png��6   $��
186,43,0,0q�6�   �� 5-      -   5        $ imgcondutividade��5-       $
��Left=�6:   $��25��6U   $	��Top=�6a   $��25��6y   $��img/condutividade.png��6�   $��
264,43,0,0q�6�   5.      5/        50      $(��"Dados Gerais para Todos os Setores��6   $��88��6J   $��0q�6V   $	��Top=�6a   $	��416��6y   .@�51      � $��0,0,-395,-78q�6   .+�52      �� -   5        $ imgvar��52       $
��Left=�60   $��25��6K   $	��Top=�6W   $��25��6o   $��img/var.png��6z   $��
323,41,0,0q�6�   $	  Xceed.Wpf.Toolkit.DoubleUpDown	  53      -   5         	 Name$ txtTempAmbiente��53   ,   $ 	 Temperatura Ambiente [ºC]��6E   $
��Left=�6i   $��23��6�   �
  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] 
  FormatString$ N0��6�    
  	Increment$ 1X�6�    
  Maximum$	 100X�6�   $	��Top=�6�   $��45��6�   $��	31,10,0,0q�6�   ���	#FFB9C9DA6�   	  54      -   5        $ txtTempCondutor��54   ,   $#	 Temperatura do Condutor [ºC]��6E   $
��Left=�6l   $��23��6�   $ N0��6�   $ 1X�6�   $	 100X�6�   $	��Top=�6�   $��45��6�   $��
109,10,0,0q�6�   ���	#FFB9C9DA6�   	  55      -   5        $ txtTempMaxTrabCabos��55   ,   $5	 /Temperatura Máxima de Trabalho dos Cabos [ºC]��6I   $
��Left=�6�   $��23��6�   $ N0��6�   $ 1X�6�   $	 999X�6�   $	��Top=�6�   $��50��6�   $��	187,9,0,0q�6�   ���	#FFB9C9DA6  �� 56      -   5        $ cboAtmosfera��56   #   $	 Tipo de Atmosfera��69   $
��Left=�6U   $��23��6p   $��
271,9,-3,0q�6|   $	��Top=�6�   $	��127��6�   
�������$��0q�6�   ���	#FFB9C9DA6�   	  57      -   5        $ txtCoefEmissCabos��57   ,   $C	 =𝜀 – Coeficiente Térmico de Emissividade para Condutores��6G   $
��Left=�6�   $��23��6�   $ N2��6�   $	 0.1X�6�   �  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$
 0.50X�6�   $	��Top=�6�   $��45��6�   $��	31,42,0,0q�6  ���	#FFB9C9DA6  	  58      -   5        $ txtCoefAbsSolar��58   ,   $)	 #a - Coeficiente de Absorção Solar��6E   $
��Left=�6q   $��23��6�   $��
109,42,0,0q�6�   $ N2��6�   $	 0.1X�6�   $
 0.50X�6�   $	��Top=�6�   $��45��6�   ���	#FFB9C9DA$
 -0.088,0.478&�6  	  59      -   5        $ txtAltitude��59   ,   $	 H - Altitude [m]��6A   $
��Left=�6\   $��23��6w   $��
187,42,0,0q�6�   $ N0��6�   $ 1X�6�   $
 9999X�6�   $	��Top=�6�   $��50��6�   ���	#FFB9C9DA$
 0.5,0.5&�6  �� 5:      -   5        $ cboAnguloSolar��5:   #   $	 Angulo Solar [θ]��6;   $
��Left=�6V   $��23��6q   $��
270,42,0,0q�6}   $	��Top=�6�   $��48��6�   
�������$��0q�6�   ���	#FFB9C9DA6�   	  5;      -   5        $ txtVelMaxMedVento��5;   ,   $.	 (Velocidade Máxima Média do Vento [m/s]��6G   $
��Left=�6x   $��23��6�   $��353,41,-3,0q�6�   $ N2��6�   $	 0.1X�6�   $	��Top=�6�   $��45��6�   ���	#FFB9C9DA6�   �� 5<      -   5        $ imgtamb��5<       $
��Left=�61   $��22��6L   $	��Top=�6X   $��23��6p   $��img/tamb.png��6{   $��3,10,0,0q�6�   $
 0,0.636&�6�   �� 5=      -   5        $ imgtCondutor��5=       $
��Left=�66   $��22��6Q   $	��Top=�6]   $��23��6u   $��img/tcondutor.png��6�   $��	81,10,0,0q�6�   �� 5>      -   5        $ 
imgEpsilon��5>       $
��Left=�64   $��22��6O   $	��Top=�6[   $��23��6s   $��img/Epsilon.png��6~   $��3,42,0,0q�6�   �� 5?      -   5        $ imgtCondutor_Copy��5?       $
��Left=�6;   $��22��6V   $	��Top=�6b   $��23��6z   $��img/109-cloud-32.png��6�   $��
243,11,0,0q�6�   �� 5@      -   5        $ imgtCondutor_Copy1��5@       $
��Left=�6<   $��22��6W   $	��Top=�6c   $��23��6{   $��img/rulertriangle-32.png��6�   $��
242,42,0,0q�6�   $
 -0.435,0.545&�6�   �� 5A      -   5        $ imgtCondutor_Copy2��5A       $
��Left=�6<   $��22��6W   $	��Top=�6c   $��23��6{   $��img/altitude.png��6�   $��
159,42,0,0q�6�   �� 5B      -   5        $ imgEpsilon_Copy��5B       $
��Left=�69   $��22��6T   $	��Top=�6`   $��23��6x   $��img/1469204739_sun.png��6�   $��	81,42,0,0q�6�   $
 0.522,0&�6�   �� 5C      -    5        $ imgtCondutor_Copy7��5C       $
��Left=�6<   $��22��6W   $	��Top=�6c   $��23��6{   $#��img/1469209292_weather-22.png��6�   $��
159,10,0,0q�6�   5D      5E        5F      $��Dados Gerais por Setor��6   $��88��6>   $��0q�6J   $	��Top=�6U   $	��247��6m   .@�5G      � $��0,0,-236,-78q�6   .+�5H      �� -!   5        $ imgtCondutor_Copy3��5H       $
��Left=�6<   $��17��6W   $	��Top=�6c   $��18��6{   $"��img/caution_high_voltage.png��6�   $��0,14,0,0q�6�   	  5I      -"   5        $ txtTensaoFaseFase��5I   ,   $ 	 V - Tensão Fase/Fase [kV]��6G   $
��Left=�6k   $��23��6�   $��	23,11,0,0q�6�   $ N2��6�   $	 0.1X�6�   $	��Top=�6�   $	��136��6�   ���	#FFB9C9DA6�   	  5J      -#   5        $ txtFatorSuperficie��5J   ,   $	 m - Fator de Superfície��6H   $
��Left=�6j   $��23��6�   $��
179,11,0,0q�6�   $ N2��6�   $	 0.1X�6�   $	��Top=�6�   $��50��6�   ���	#FFB9C9DA6�   	  5K      -$   5        $ txtAlturaInstalacao��5K   ,   $1	 +h - Altura de Instalação do Condutor [cm]��6I   $
��Left=�6}   $��23��6�   $ N1��6�   $	 0.1X�6�   $	��Top=�6�   $��63��6�   $��	23,43,0,0q�6�   ���	#FFB9C9DA6�   	  5L      -%   5        $! txtEspacamentoSubCondutores��5L   ,   $-	 's - Distância entre SubCondutores [cm]��6Q   $
��Left=�6�   $��23��6�   $��
109,43,0,0q�6�   $ N1��6�   $	 0.1X�6�   $
 9999X�6�   $	��Top=�6�   $��50��6  ���	#FFB9C9DA6  	  5M      -&   5        $ txtEspacamentoFases��5M   ,   $%	 d - Distância entre fases [cm]��6I   $
��Left=�6r   $��23��6�   $��
178,44,0,0q�6�   $ N1��6�   $	 0.1X�6�   $	��Top=�6�   $��51��6�   ���	#FFB9C9DA6�   �� 5N      -'   5        $
 lblm��5N       $��m��6.   $
��Left=�6:   $	��Top=�6U   $��
159,10,0,0q�6m   �� 5O      -(   5        $ imgtCondutor_Copy4��5O       $
��Left=�6<   $��22��6W   $	��Top=�6c   $��23��6{   $0��*img/847-dimension-line-height-short-32.png��6�   $��0,43,0,0q�6�   $
 	2.5,0.682&�6�   �� 5P      -)   5        $ imgtCondutor_Copy5��5P       $
��Left=�6<   $��22��6W   $	��Top=�6c   $��23��6{   $/��)img/845-dimension-line-width-short-32.png��6�   $��	86,43,0,0q�6�   �� 5Q      -*   5        $ imgtCondutor_Copy6��5Q       $
��Left=�6<   $��22��6W   $	��Top=�6c   $��23��6{   $5��/img/851-dimension-arrow-line-width-thick-32.png��6�   $��
156,44,0,0q�6�   $
 2.217,0.864&�6�   5R      5S        5U      $��
Ampacidade��6   $��88��62   $��0q�6>   $	��Top=�6I   $��87��6a   .@�5V      �� -+   5        $ lblCriterioAmpacidade��5V      $��Ampacidade
Necessária:��6;   $
��Left=�6`   $	��Top=�6{   $��-3,0,-8,-42q�6�   $��42��6�   $��80��6�   	  5W      -,   5        $ txtAmpacidadeNecessaria��5W   (   $
��Left=�6I   $��23��6d   $��2,40,-31,-41q�6p   $ N0��6�   $ 1X�6�   $	��Top=�6�   $��72��6�   ���	#FFB9C9DA6�   5X        5Y      $��Curto-circuito��6   $��88��66   $��0q�6B   $	��Top=�6M   $��94��6e   .@�5Z      	  --   5        $ txtCorrenteCurto��5Z   (   $*	 $I - Corrente de Circuito Máximo [A]��6B   $
��Left=�6p   $��23��6�   $��18,10,-35,-11q�6�   $ N0��6�   $ 1X�6�   $	��Top=�6�   $��60��6�   ���	#FFB9C9DA6�   �� 5[      -.   5        $ lblCorrenteCurto��5[      $��I��66   $
��Left=�6B   $	��Top=�6]   $��0,-14,0,-12q�6u   	  5\      -/   5        $ txtTempAtuacao��5\   (   $/	 )tf - Tempo de Atuação da Proteção [s]��6@   $
��Left=�6p   $��23��6�   $��18,20,-35,-21q�6�   $ N2��6�   $	 0.1X�6�   ,  &Xceed.Wpf.Toolkit.Primitives.InputBase   Text$  ��6�   $	��Top=�6�   $��60��6�   ���	#FFB9C9DA6�   �� 5]      -0   5        $ lblTempAtuacao��5]      $��t��64   $
��Left=�6@   $	��Top=�6[   $��
0,-6,0,-20q�6s   5^        5`      $��	Resultado��6   $��88��61   $��0q�6=   $	��Top=�6H   $	��121��6`   .@�5a      1  +System.Windows.Controls.Ribbon.RibbonButton  -1   5          Name$ CalculaFlexivel��5a   #      LargeImageSource$ img\calcular.png��6=      Label$ Calcular��6a   $	��Top=�6r   $��0,5,0,0q�6�   $��60��6�     5b      -2   5        $ img\clear.png��5b   #   $ Limpar��6D   $	��Top=�6S   $��
10,5,-10,0q�6k   $��60��6   $
��Left=�6�   $��44��6�   6�   5d      5e      5i      �� 5j   
   -3   5         ��Name$ 	Container��5j       J� OpacityMask
 �   �$��1��6B   �� 5k   
   $��30��6   $��2��6    $	��Top=�6-   .@�5l      �� ���	#FFCFDBE9.��5m      �� -4   5        $��textoStatus��5m      61   5n      5o      5r      5s      