   M S B A M L   `   `   `  ���� B  >CalcBus, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:CalcBusCalcBus       CalcBus.BarramentoFlexivel   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     @d2http://schemas.microsoft.com/expression/blend/2008     'localclr-namespace:CalcBus     .��� -   $��BarFlex��
�������.+�� 
�������$��0,0,-10               ,0q�  � RowDefinitions  �� $	��150 ��� $	��136 ��� $	��124 ��� .+��� -    ��Name$ gbDadosGerais��$��0��$1��+Dados Gerais Válidos para Todos os Setores��$
��Left=�$��
10,10,0,10q�$
��1290��.��� $��0,0,0,0q�.+��� -    ��Name$ lblVelMaxVento_Copy��$/��)Velocidade Mìnima 
Media do Vento (m/s):��$
��Left=�$	��Top=�$	��135��$��	10,32,0,0q��� -    ��Name$ txtVelMaxMedVento��$
��Left=�$��23��$��	10,75,0,0q� �� TextWrapping$
 Wrap=�$	��Top=�$	��140���� -   $ lblTempAmbiente��$"��Temperatura 
Ambiente (ºC):��$
��Left=�$	��Top=�$	��125��$��
155,34,0,0q��� -   $ txtTempAmbiente��$
��Left=�$��23��$��
155,75,0,0q�$
 Wrap=�$	��Top=�$��90���� -   $ txtTempCondutor��$
��Left=�$��24��$��
250,74,0,0q�$	��Top=�$	��109���� -   $ lblTempCondutor��$&�� Temperatura 
do Condutor(ºC)*:��$
��Left=�$	��Top=�$	��109��$��
250,34,0,0q��� -	   $ txtTempMaxTrabCabos��$
��Left=�$��23��$��
364,74,0,0q�$
 Wrap=�$	��Top=�$	��130���� -
   $ lblTrabCabos��$:��4Temperatura Máxima 
de Trabalho 
do Condutor(ºC):��$
��Left=�$	��Top=�$	��130��$��
364,16,0,0q��� -   $ txtCoefEmissCabos��$
��Left=�$��23��$��
499,74,0,0q�$
 Wrap=�$	��Top=�$��96��$	��0,5���� -   $ lblCoefEmissCabos��$0��*Coeficiente de 
Emissividade 
do Condutor:��$
��Left=�$	��Top=�$��87��$��
508,18,0,0q��� -   $ txtCoefAbsSolar��$
��Left=�$��23��$��
600,75,0,0q�$
 Wrap=�$	��Top=�$��99��$	��0,5���� -   $ lblCoefAbsSolar��$'��!Coeficiente de 
Absorção Solar:��$
��Left=�$	��Top=�$��99��$��
600,33,0,0q��� -   $ txtAltitude��$
��Left=�$��23��$��
704,75,0,0q�$
 Wrap=�$	��Top=�$	��129���� -   $ lblAltitude��$��Altitude (m):��$
��Left=�$	��Top=�$��99��$��
704,48,0,0q��� -    ��Name$ cboAtmosfera��$��23��$��838,74,154,0q�$	��Top=��� -   $ lblAtmosfera��$��
Atmosfera:��$
��Left=�$	��Top=�$	��144��$��
838,49,0,0q��� -   $ cboAnguloSolar��$
��Left=�$��23��$��1129,75,0,0q�$	��Top=�$	��139���� -   $ 	lblAngulo��$5��/Ângulo de Incidência 
dos Raios Solares (ʘ):��$
��Left=�$	��Top=�$	��129��$��1129,33,0,0q��� -   $ gbDadosSetor��$��1��$��Dados Gerais por Setor��$
��Left=�$��
10,10,0,10q�$	��650��.��� .+��� -   $ txtTensaoFaseFase��$
��Left=�$��24��$��	10,62,0,0q�$	��Top=�$	��125���� -   $ lblTensaoFaseFase��$��Tensão Fase/Fase (kV):��$
��Left=�$	��Top=�$	��153��$��	10,36,0,0q��� -   $ txtAlturaInstalacao��$
��Left=�$��24��$��
140,62,0,0q�$	��Top=�$	��116���� -   $ lblAlturaInstalacao��$/��)Altura de Instalação 
do Condutor (cm):��$
��Left=�$	��Top=�$	��116��$��
140,20,0,0q��� -   $! txtEspacamentoSubCondutores��$
��Left=�$��24��$��
261,61,0,0q�$	��Top=�$	��138���� -   $! lblEspacamentoSubCondutores��$-��'Espaçamento entre 
SubCondutores (cm):��$
��Left=�$	��Top=�$	��138��$��
261,19,0,0q��� -   $ txtEspacamentoFases��$
��Left=�$��24��$��
404,61,0,0q�$	��Top=�$��99���� -   $ lblEspaçamentoFases��$#��Distância entre 
Fases (cm):��$
��Left=�$	��Top=�$	��111��$��
404,19,0,0q��� -   $ txtFatorSuperficie��$
��Left=�$��24��$��
508,61,0,0q�$	��Top=�$	��123���� -   $ lblFatorSuperficie��$��Fator de Superfície:��$
��Left=�$	��Top=�$	��123��$��
508,36,0,0q�� $��3��$��0,0,0,80q��� -    $ gbCurtoCircuito_Copy��$��1��$��Dados para Ampacidade��$
��Left=�$��665,10,0,10q�$	��189��.��� .+��� -!   $ txtAmpacidadeNecessaria��$
��Left=�$��24��$��	10,62,0,0q�$	��Top=�$	��155�� J� RenderTransformOrigin$ 0.5,0.5&��� -"   $ lblAmpacidadeNecessaria��$!��Ampacidade Necessária (A):��$
��Left=�$	��Top=�$	��161��$��	10,36,0,0q��� -#   $ gbCurtoCircuito��$��1��$��Dados para Curto Circuito��$
��Left=�$��859,10,0,10q�$	��441��.��� .+��� -$   $ txtCorrenteCurto��$
��Left=�$��24��$��	10,62,0,0q�$	��Top=�$��87���� -%   $ lblCorrrentCurto��$/��)Corrente de 
Curto-Circuito 
Máximo (A):��$
��Left=�$	��Top=�$��87��$��10,4,0,0q��� -&   $ txtgPorcentagem��$
��Left=�$��24��$��
102,62,0,0q�$	��Top=�$	��116���� -'   $ lblgPorcentagem��$%��Condutividade 
do Condutor [%]:��$
��Left=�$	��Top=�$	��116��$��	97,20,0,0q��� -(   $ txtTempoAtuacao��$
��Left=�$��24��$��
223,62,0,0q�$	��Top=�$	��111���� -)   $ lblTempoAtuacao��$��Tempo Atuação:��$
��Left=�$	��Top=�$	��111��$��
223,36,0,0q��� -*   $ gbDadosCabo��$��2��$��Dados do Cabo��$
��Left=�$��
10,10,0,10q�$
��1290��.��� .+��� -+   $ cboTipoCondutor��$
��Left=�$��24��$��	10,54,0,0q�$	��Top=�$	��139���� -,   $ lblTipo��$��Tipo do Condutor:��$
��Left=�$	��Top=�$	��139��$��	10,26,0,0q��� --   $ cboCondutor��$
��Left=�$��24��$��
154,54,0,0q�$	��Top=�$	��219���� -.   $ label��$��Especifique o Cabo��$
��Left=�$	��Top=�$	��153��$��
154,28,0,0q��� -/   $ cboNumCondutores��$
��Left=�$��24��$��
378,54,0,0q�$	��Top=�$��80���� -0   $ lblNumCondutores��$��Nº de Cabos:��$
��Left=�$	��Top=�$��80��$��
378,28,0,0q��� -1   $ labelDiamIden��$��	Diametro:��$
��Left=�$��
517,18,0,0q�$	��Top=��� -2   $ lblDiametro��$��-��$
��Left=�$��
584,18,0,0q�$	��Top=��� -3   $ lblPesoNominalTotalIden��$��Peso Nominal Total:��$
��Left=�$��
463,49,0,0q�$	��Top=��� -4   $ lblDPesoNominalTotal��$��-��$
��Left=�$��
584,49,0,0q�$	��Top=��� -5   $ labelDiamIden_Copy��$��Bitola:��$
��Left=�$��
655,18,0,0q�$	��Top=��� -6   $ 	lblBitola��$��-��$
��Left=�$��
702,18,0,0q�$	��Top=�$ 6.133,0.808&��� -7   $ groupBox��$��3��$��
Resultados��$��
10,10,0,10q�$
��Left=�$
��1290��.��� .+�&   System.Windows.Controls.DataGrid  -8     Name$ dgvFlexivel��$��10q��� -9   $ Observacoes��$��Observações��$
��Left=�$��1305,10,0,10q�$	��395��$��4��.���� -:    ��Name$ richTextBox��$��10q�{�.  . �/� .T�J� 	 W� CultureSource$
	 User=�.*�.*��� $
��Bold"�$��14(�$/�)Ângulo de Incidência dos Raios Solares:���� 
 �� MarkerStyle$	
 Box=� �� MarkerOffset$ 1��.<��� .9�J� $
	 User=�.*�.*��� $��14(�$� �� �� $� �� �� $��Italic$�$��14(�$=�7Θ igual a 90º pior caso referente ao sol do meio dia.��J� $
	 User=�.*�.*��� $
��Bold"�$��14(�$ �Condutividade do Condutor:���� $	
 Box=�$ 1��.<��� .9�J� $
	 User=�.*�.*��� $��14(�$� �� �� $� �� �� $��Italic$�$��14(�$x�rA condutividade do cabo CA e CAA é definida   como 61%, 52,5% para CAL e para o ACAR o valor é obtido por média�� �� $��Italic$�$��14(�$� �� �� $��Italic$�$��14(�$6�0ponderada em função da formação do condutor.��J� $
	 User=�.*�.*��� $
��Bold"�$��14(�$� ��J� $
	 User=�.*�.*��� $
��Bold"�$��14(�J� $
	 User=�.*�.*��� $��Italic$�$��14(�$� ��