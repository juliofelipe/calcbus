   M S B A M L   `   `   `  ���� O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  B >CalcBus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CalcBusCalcBus    CalcBus.MainWindow   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     4s&clr-namespace:System;assembly=mscorlib     Z VWPFToolkit.Extended, Version=1.8.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  !localclr-namespace:CalcBus    � Title$  CalcBus��$	��768��$
��1350�� � Icon$ img/calcbus.png��.���  � RowDefinitions �� $
��Auto ��� �� $��30 �.+�+  %System.Windows.Controls.Ribbon.Ribbon  -     Name$ ribbon��$��Center=�$��0,0,0,0q�$��0��$	��137��   ApplicationMenu :  4System.Windows.Controls.Ribbon.RibbonApplicationMenu  5  /System.Windows.Controls.Ribbon.RibbonMenuButton   KeyTip$ F��   SmallImageSource$ img\calculator.png��.@�>  8System.Windows.Controls.Ribbon.RibbonApplicationMenuItem  -   $��Novo Cálculo de Flexivel��3  -System.Windows.Controls.Ribbon.RibbonMenuItem   ImageSource$ img\flexivel.png��  $��Novo Cálculo de Rígido��{�. $ img\rigido.png��4  .System.Windows.Controls.Ribbon.RibbonSeparator    -   $��Sobre o Programa��$ img\sobreCalcBus.png��.@�.  (System.Windows.Controls.Ribbon.RibbonTab  $��Barramento Flexível��$��88��$��Center=�$��0,0,-2,0q�.@�0  *System.Windows.Controls.Ribbon.RibbonGroup  $��Condutor��$��88��$��0q�$	��Top=�$	��368��.@�� $��0,0,-357,-78q�.+��� -    ��Name$ cboTipoCondutor��	 � ToolTip$	 Tipo do Condutor��$
��Left=�$��23��$��	10,10,0,0q�$	��Top=�$��84��
�������$��0q����	#FFB9C9DA�� -   $ cboCondutor��$	 Nome do Condutor��$
��Left=�$��23��$��	99,10,0,0q�$	��Top=�$	��190��
�������$��0q����	#FFB9C9DA�� -   $ cboNumCondutores��$	 Numero de Condutores��$
��Left=�$��23��$��294,10,0,45q�$��Center=�$��57��
�������$��0q����	#FFB9C9DA
 J� RenderTransformOrigin$
 
0.13,0.769&��� -    ��Name$ 	lblBitola��$	 Bitola [AWG ou kcmil]��$��-��$
��Left=�$��
40,39,0,13q�$��Center=�$��54��$��26���� ���	#FFB9C9DA$��1q�$
��Left=�$��23��$��
40,40,0,12q�$��Center=�$��54�� �� CornerRadius$ 3���� ���	#FFB9C9DA$��1q�$
��Left=�$��23��$��129,40,0,12q�$��Center=�$��52��$ 3���� -   $ lblPesoNominal��$	 Peso Nominal [kg/km]��$��-��$
��Left=�$��129,39,0,16q�$��Center=�$��52��$��23��$
 0.674,-0.923&��� ���	#FFB9C9DA$��1q�$
��Left=�$��23��$��216,41,0,11q�$��Center=�$��45��$ 3���� -	   $ lblDiametro��$	 Diametro Nominal [mm]��$��-��$
��Left=�$��Center=�$��45��$��26��$��216,39,0,13q��� -
   $ lblCondutividade��$��-��$ 	 Condutividade do cabo [%];��$
��Left=�$	��Top=�$��54��$��26��$
 0.5,0.5&�$��
296,39,0,0q��� ���	#FFB9C9DA$��1q�$
��Left=�$��23��$	��Top=�$��57��$ 3��$��
294,42,0,0q��� -    ��Name$ 	imgbitola��$
��Left=�$��23��$	��Top=�$��25��$��img/bitola.png��$��	11,41,0,0q��� -   $ imgpeso��$
��Left=�$��23��$	��Top=�$��25��$��img/peso.png��$��
100,41,0,0q��� -   $ imgdiametro��$
��Left=�$��25��$	��Top=�$��25��$��img/diametro.png��$��
186,43,0,0q��� -   $ imgcondutividade��$
��Left=�$��25��$	��Top=�$��25��$��img/condutividade.png��$��
264,43,0,0q�  $(��"Dados Gerais para Todos os Setores��$��88��$��0q�$	��Top=�$	��416��.@�� $��0,0,-395,-78q�.+��� -   $ imgvar��$
��Left=�$��25��$	��Top=�$��25��$��img/var.png��$��
323,41,0,0q�$	  Xceed.Wpf.Toolkit.DoubleUpDown	  -    	 Name$ txtTempAmbiente��$ 	 Temperatura Ambiente [ºC]��$
��Left=�$��23���
  �Xceed.Wpf.Toolkit.NumericUpDown`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]] 
  FormatString$ N0�� 
  	Increment$ 1X� 
  Maximum$	 100X�$	��Top=�$��45��$��	31,10,0,0q����	#FFB9C9DA	  -   $ txtTempCondutor��$#	 Temperatura do Condutor [ºC]��$
��Left=�$��23��$ N0��$ 1X�$	 100X�$	��Top=�$��45��$��
109,10,0,0q����	#FFB9C9DA	  -   $ txtTempMaxTrabCabos��$5	 /Temperatura Máxima de Trabalho dos Cabos [ºC]��$
��Left=�$��23��$ N0��$ 1X�$	 999X�$	��Top=�$��50��$��	187,9,0,0q����	#FFB9C9DA�� -   $ cboAtmosfera��$	 Tipo de Atmosfera��$
��Left=�$��23��$��
271,9,-3,0q�$	��Top=�$	��127��
�������$��0q����	#FFB9C9DA	  -   $ txtCoefEmissCabos��$C	 =𝜀 – Coeficiente Térmico de Emissividade para Condutores��$
��Left=�$��23��$ N2��$	 0.1X��  �Xceed.Wpf.Toolkit.Primitives.UpDownBase`1[[System.Nullable`1[[System.Double, mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]], mscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089]]   Value$
 0.50X�$	��Top=�$��45��$��	31,42,0,0q����	#FFB9C9DA	  -   $ txtCoefAbsSolar��$)	 #a - Coeficiente de Absorção Solar��$
��Left=�$��23��$��
109,42,0,0q�$ N2��$	 0.1X�$
 0.50X�$	��Top=�$��45�����	#FFB9C9DA$
 -0.088,0.478&�	  -   $ txtAltitude��$	 H - Altitude [m]��$
��Left=�$��23��$��
187,42,0,0q�$ N0��$ 1X�$
 9999X�$	��Top=�$��50�����	#FFB9C9DA$
 0.5,0.5&��� -   $ cboAnguloSolar��$	 Angulo Solar [θ]��$
��Left=�$��23��$��
270,42,0,0q�$	��Top=�$��48��
�������$��0q����	#FFB9C9DA	  -   $ txtVelMaxMedVento��$.	 (Velocidade Máxima Média do Vento [m/s]��$
��Left=�$��23��$��353,41,-3,0q�$ N2��$	 0.1X�$	��Top=�$��45�����	#FFB9C9DA�� -   $ imgtamb��$
��Left=�$��22��$	��Top=�$��23��$��img/tamb.png��$��3,10,0,0q�$
 0,0.636&��� -   $ imgtCondutor��$
��Left=�$��22��$	��Top=�$��23��$��img/tcondutor.png��$��	81,10,0,0q��� -   $ 
imgEpsilon��$
��Left=�$��22��$	��Top=�$��23��$��img/Epsilon.png��$��3,42,0,0q��� -   $ imgtCondutor_Copy��$
��Left=�$��22��$	��Top=�$��23��$��img/109-cloud-32.png��$��
243,11,0,0q��� -   $ imgtCondutor_Copy1��$
��Left=�$��22��$	��Top=�$��23��$��img/rulertriangle-32.png��$��
242,42,0,0q�$
 -0.435,0.545&��� -   $ imgtCondutor_Copy2��$
��Left=�$��22��$	��Top=�$��23��$��img/altitude.png��$��
159,42,0,0q��� -   $ imgEpsilon_Copy��$
��Left=�$��22��$	��Top=�$��23��$��img/1469204739_sun.png��$��	81,42,0,0q�$
 0.522,0&��� -    $ imgtCondutor_Copy7��$
��Left=�$��22��$	��Top=�$��23��$#��img/1469209292_weather-22.png��$��
159,10,0,0q�  $��Dados Gerais por Setor��$��88��$��0q�$	��Top=�$	��247��.@�� $��0,0,-236,-78q�.+��� -!   $ imgtCondutor_Copy3��$
��Left=�$��17��$	��Top=�$��18��$"��img/caution_high_voltage.png��$��0,14,0,0q�	  -"   $ txtTensaoFaseFase��$ 	 V - Tensão Fase/Fase [kV]��$
��Left=�$��23��$��	23,11,0,0q�$ N2��$	 0.1X�$	��Top=�$	��136�����	#FFB9C9DA	  -#   $ txtFatorSuperficie��$	 m - Fator de Superfície��$
��Left=�$��23��$��
179,11,0,0q�$ N2��$	 0.1X�$	��Top=�$��50�����	#FFB9C9DA	  -$   $ txtAlturaInstalacao��$1	 +h - Altura de Instalação do Condutor [cm]��$
��Left=�$��23��$ N1��$	 0.1X�$	��Top=�$��63��$��	23,43,0,0q����	#FFB9C9DA	  -%   $! txtEspacamentoSubCondutores��$-	 's - Distância entre SubCondutores [cm]��$
��Left=�$��23��$��
109,43,0,0q�$ N1��$	 0.1X�$
 9999X�$	��Top=�$��50�����	#FFB9C9DA	  -&   $ txtEspacamentoFases��$%	 d - Distância entre fases [cm]��$
��Left=�$��23��$��
178,44,0,0q�$ N1��$	 0.1X�$	��Top=�$��51�����	#FFB9C9DA�� -'   $
 lblm��$��m��$
��Left=�$	��Top=�$��
159,10,0,0q��� -(   $ imgtCondutor_Copy4��$
��Left=�$��22��$	��Top=�$��23��$0��*img/847-dimension-line-height-short-32.png��$��0,43,0,0q�$
 	2.5,0.682&��� -)   $ imgtCondutor_Copy5��$
��Left=�$��22��$	��Top=�$��23��$/��)img/845-dimension-line-width-short-32.png��$��	86,43,0,0q��� -*   $ imgtCondutor_Copy6��$
��Left=�$��22��$	��Top=�$��23��$5��/img/851-dimension-arrow-line-width-thick-32.png��$��
156,44,0,0q�$
 2.217,0.864&�  $��
Ampacidade��$��88��$��0q�$	��Top=�$��87��.@��� -+   $ lblCriterioAmpacidade��$��Ampacidade
Necessária:��$
��Left=�$	��Top=�$��-3,0,-8,-42q�$��42��$��80��	  -,   $ txtAmpacidadeNecessaria��$
��Left=�$��23��$��2,40,-31,-41q�$ N0��$ 1X�$	��Top=�$��72�����	#FFB9C9DA  $��Curto-circuito��$��88��$��0q�$	��Top=�$��94��.@�	  --   $ txtCorrenteCurto��$*	 $I - Corrente de Circuito Máximo [A]��$
��Left=�$��23��$��18,10,-35,-11q�$ N0��$ 1X�$	��Top=�$��60�����	#FFB9C9DA�� -.   $ lblCorrenteCurto��$��I��$
��Left=�$	��Top=�$��0,-14,0,-12q�	  -/   $ txtTempAtuacao��$/	 )tf - Tempo de Atuação da Proteção [s]��$
��Left=�$��23��$��18,20,-35,-21q�$ N2��$	 0.1X�,  &Xceed.Wpf.Toolkit.Primitives.InputBase   Text$  ��$	��Top=�$��60�����	#FFB9C9DA�� -0   $ lblTempAtuacao��$��t��$
��Left=�$	��Top=�$��
0,-6,0,-20q�  $��	Resultado��$��88��$��0q�$	��Top=�$	��121��.@�1  +System.Windows.Controls.Ribbon.RibbonButton  -1     Name$ CalculaFlexivel��   LargeImageSource$ img\calcular.png��   Label$ Calcular��$	��Top=�$��0,5,0,0q�$��60��  -2   $ img\clear.png��$ Limpar��$	��Top=�$��
10,5,-10,0q�$��60��$
��Left=�$��44���� -3    ��Name$ 	Container�� J� OpacityMask
 �   �$��1���� $��30��$��2��$	��Top=�.@��� ���	#FFCFDBE9.���� -4   $��textoStatus��