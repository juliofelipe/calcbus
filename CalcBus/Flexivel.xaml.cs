using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace CalcBus
{
    /// <summary>
    /// Interaction logic for Flexivel.xaml
    /// </summary>
    public partial class Flexivel : UserControl
    {
        
        Ampacidade itemListAmpacidade = new Ampacidade();
        CollectionViewSource _itemSourceListAmpacidade;
        ICollectionView ItemListAmpacidade;

        CurtoCircuito itemListCurto = new CurtoCircuito();
        CollectionViewSource _itemSourceListCurto;
        ICollectionView ItemListCurto;

        CriterioCorona itemListCorona = new CriterioCorona();
        CollectionViewSource _itemSourceListCorona;
        ICollectionView ItemListCorona;



        public const double pol = 25.4;
        public const double T0 = 288.15;
        public const double g = 9.80665;
        public const double L = 0.0065;
        public const double R = 8.31447;
        public const double M = 0.028964;
        public const double p0 = 101.325 * 1000;
        public const double ft = 16.018463;
        public const int ft_hr = 11811;
        public const double absorcaoSolar = 0.5;
        public const double coeficienteTerm = 0.5;
        public const double miles = 0.000189393939;
        public const int TH = 75;
        public const int TL = 25;
        public double UnidadeMetrica = 0.000232;
        public string condutor;
        public double diametro;
        public double diametroIn;
        public double velocidadeAr;
        public double velocidadeArFT;
        public double temperaturaAmbiente;
        public double temperaturaCondutor;
        public double viscosidadeAbsoluta;
        public double condutividadeTermica;
        public double ro;
        public double tFinal;
        public double h;
        public double T;
        public double p;
        public double qc;
        public double reynholds;
        public double Ka;
        public double Kc;
        public double qr;
        public string anguloSolar;
        public double aProjetadaCondutor;
        public int n;
        public double fatorGanho;
        public double qs;
        public string qsClear;
        public string qsInsdustrial;
        public double Rth;
        public double Rtl;
        public double rtc;
        public double resistca25;
        public double resistca75;
        public double ampacid;
        public string criterioampacidade;
        public double ampacidadenecessaria;
        public double Icc;
        public double secaocabo;
        public double aCabo;
        public double tIniCabo;
        public double tFinCabo;
        public double tAtuacao;
        public double gPorcentagem;
        public double cCircuito;
        public string criterioCurto;
        public double r;
        public double hInstalacao;
        public double espSubCondut;
        public double espFases;
        public double tFaseFase;
        public double tFaseNeutro;
        public double fSuperficie;
        public double dRelativaAr;
        public double ga;
        public double gc;
        public double gv;
        public string criterioCorona;

        public Flexivel()
        {
            InitializeComponent();

        }

        public void Qc()
        {
            String Condutor = (from res in MainWindow.Instance.Cabos
                               where res.ID.Equals(MainWindow.idCondutor)
                               select res.CONDUTOR).Single<String>();
            String Diametro = (from res in MainWindow.Instance.Cabos
                               where res.ID.Equals(MainWindow.idCondutor)
                               select res.DIAMNOMINAL).Single<String>();

            condutor = Condutor;
            diametro = Convert.ToDouble(Diametro);
            n = Convert.ToInt32(MainWindow.Instance.cboNumCondutores.Text);
            h = Convert.ToDouble(MainWindow.Instance.txtAltitude.Value);
            velocidadeAr = Convert.ToDouble(MainWindow.Instance.txtVelMaxMedVento.Value);
            temperaturaAmbiente = Convert.ToDouble(MainWindow.Instance.txtTempAmbiente.Value);
            velocidadeArFT = velocidadeAr * ft_hr;
            temperaturaCondutor = Convert.ToDouble(MainWindow.Instance.txtTempCondutor.Value);
            T = T0 - L * h;
            p = p0 * Math.Pow(1 - (L * h) / (T0), (g * M) / (R * L));
            ro = ((p * M) / (R * T)) / ft;
            tFinal = (temperaturaAmbiente + temperaturaCondutor) / 2;
            double X1_CT, X0_CT, Y1_CT, Y0_CT, X_CT;
            X0_CT = 0;
            X1_CT = 100;
            Y0_CT = 0.00739;
            Y1_CT = 0.00966;
            X_CT = tFinal;
            condutividadeTermica = (Y0_CT + ((Y1_CT - Y0_CT) / (X1_CT - X0_CT)) * (X_CT - X0_CT));
            double X1_VA, X0_VA, Y1_VA, Y0_VA, X_VA;
            X0_VA = 0;
            X1_VA = 100;
            Y0_VA = 0.0415;
            Y1_VA = 0.0526;
            X_VA = tFinal;
            viscosidadeAbsoluta = (Y0_VA + ((Y1_VA - Y0_VA) / (X1_VA - X0_VA)) * (X_VA - X0_VA));

            reynholds = Convert.ToDouble(((diametro / pol) * ro * velocidadeArFT) / viscosidadeAbsoluta);
            if ((reynholds >= 1) && (reynholds <= 50000))
            {
                qc = Math.Round((0.1695 * (Math.Pow(reynholds, 0.6)) * condutividadeTermica * (temperaturaCondutor - temperaturaAmbiente)), 4);
            }
            else
            {
                qc = Math.Round((1.01 + 0.371 * (Math.Pow(reynholds, 0.62)) * condutividadeTermica * (temperaturaCondutor - temperaturaAmbiente)), 4);
            }
        }

                public void Qr()
                {
                    Ka = temperaturaAmbiente + 273;
                    Kc = temperaturaCondutor + 273;
                    diametroIn = diametro /pol;
                    qr = 0.138 * diametroIn * coeficienteTerm * ((Math.Pow(Kc / 100, 4) - Math.Pow(Ka / 100, 4)));
                }

                        public void Qs()
                        {
                            string[,] QsTBL = new string[14, 3] {
                                             {"5","21,7","12,6"},
                                             {"10","40,2","22,3"},
                                             {"15","54,2","30,5"},
                                             {"20","64,4","39,2"},
                                             {"25","71,5","46,6"},
                                             {"30","77","53"},
                                             {"35","81,5","57,5"},
                                             {"40","84,8","61,5"},
                                             {"45","87,4","64,5"},
                                             {"50","90","67,5"},
                                             {"60","92,9","71,6"},
                                             {"70","95","75,2"},
                                             {"80","95,8","77,4"},
                                             {"90","96,4","78,9"}
                                        };

                            anguloSolar = MainWindow.Instance.cboAnguloSolar.Text;
                            aProjetadaCondutor = diametroIn / 12;
                            qsClear = (QsTBL[MainWindow.Instance.cboAnguloSolar.SelectedIndex, 1]);
                            qsInsdustrial = (QsTBL[MainWindow.Instance.cboAnguloSolar.SelectedIndex, 2]);

                            if (MainWindow.Instance.cboAtmosfera.Text == "Clear Atmosfere")
                            {
                                if ((h >= 0) && (h <= 1500))
                                {
                                    fatorGanho = 1.00 * Convert.ToDouble(qsClear);
                                    qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                                else if ((h > 1500) && (h <= 3000))
                                {
                                    fatorGanho = 1.15 * Convert.ToDouble(qsClear);
                                    qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                                else if ((h > 3000) && (h <= 4500))
                                {
                                    fatorGanho = 1.25 * Convert.ToDouble(qsClear);
                                    qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                                else
                                {
                                    fatorGanho = 1.30 * Convert.ToDouble(qsClear);
                                   qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                            }
                            else
                            {
                                if ((h >= 0) && (h <= 5000))
                                {
                                    fatorGanho = 1.00 * Convert.ToDouble(qsInsdustrial);
                                   qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                                else if ((h > 5000) && (h <= 10000))
                                {
                                    fatorGanho = 1.15 * Convert.ToDouble(qsInsdustrial);
                                    qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                                else if ((h > 1000) && (h <= 15000))
                                {
                                    fatorGanho = 1.25 * Convert.ToDouble(qsInsdustrial);
                                   qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                                else
                                {
                                    fatorGanho = 1.30 * Convert.ToDouble(qsInsdustrial);
                                    qs = absorcaoSolar * fatorGanho * aProjetadaCondutor;
                                }
                            }
                        }

                                        public void Rtc()
                                        {
                                            String ResistCA25 = (from res in MainWindow.Instance.Cabos
                                                                 where res.ID.Equals(MainWindow.idCondutor)
                                                                 select res.RESISTCA25).Single<String>();
                                            resistca25 = Convert.ToDouble(ResistCA25);

                                            String ResistCA75 = (from res in MainWindow.Instance.Cabos
                                                                 where res.ID.Equals(MainWindow.idCondutor)
                                                                 select res.RESISTCA75).Single<String>();
                                            resistca75 = Convert.ToDouble(ResistCA75);
                                            Rth = Convert.ToDouble(resistca75 * miles);
                                            Rtl = Convert.ToDouble(resistca25 * miles);
                                            rtc = (((Rth - Rtl) / (TH - TL)) * (temperaturaCondutor - TL)) + Rtl;
                                        }

                                               public void Amp()
                                                {
                                                    ampacid = Math.Sqrt((qc + qr - qs) / rtc) * n;
                                                    ampacidadenecessaria = Convert.ToDouble(MainWindow.Instance.txtAmpacidadeNecessaria.Value);
                                                    if (ampacidadenecessaria > ampacid)
                                                    {
                                                        criterioampacidade = "NÃO ATENDE";
                                                    }
                                                    else
                                                    {
                                                        criterioampacidade = "ATENDE";
                                                    }
                                                }

        public void CCircuito()
        {
            Icc = Convert.ToDouble(MainWindow.Instance.txtCorrenteCurto.Value);
                  String SecaoCabo = (from res in MainWindow.Instance.Cabos
                                where res.ID.Equals(MainWindow.idCondutor)
                                select res.STTOTAL).Single<String>();
            secaocabo = Convert.ToDouble(SecaoCabo);
            aCabo = Convert.ToDouble(secaocabo) * 2;
            tIniCabo = Convert.ToDouble(MainWindow.Instance.txtTempCondutor.Value);
            tFinCabo = Convert.ToDouble(MainWindow.Instance.txtTempMaxTrabCabos.Value);
            tAtuacao = Convert.ToDouble(MainWindow.Instance.txtTempAtuacao.Value);
           
            gPorcentagem = Convert.ToDouble(MainWindow.Instance.lblCondutividade.Content);
            cCircuito = ((Math.Pow(UnidadeMetrica, 2) * Math.Pow(10, 12) * Math.Pow(aCabo, 2) * Math.Log10((tFinCabo - 20 + (15150 / gPorcentagem)) / (tIniCabo - 20 + (15150 / gPorcentagem))))) / Math.Pow(Icc, 2);
           
            if (tAtuacao < cCircuito)
            {
                criterioCurto = "ATENDE";
            }
            else
            {
                criterioCurto = "NÃO ATENDE";
            }
        }

        public void CCorona()
        {
            r = Convert.ToDouble(diametro) / 20;
            hInstalacao = Convert.ToDouble(MainWindow.Instance.txtAlturaInstalacao.Value);
            espSubCondut = Convert.ToDouble(MainWindow.Instance.txtEspacamentoSubCondutores.Value);
            espFases = Convert.ToDouble(MainWindow.Instance.txtEspacamentoFases.Value);
            tFaseFase = Convert.ToDouble(MainWindow.Instance.txtTensaoFaseFase.Value);
            tFaseNeutro = tFaseFase / Math.Sqrt(3);
            fSuperficie = Convert.ToDouble(MainWindow.Instance.txtFatorSuperficie.Value);
            dRelativaAr = 0.386 * (760 - 0.086 * h) / (273 + temperaturaAmbiente);
            gv = 30 / Math.Sqrt(2) * fSuperficie * dRelativaAr * (1 + 0.426 / Math.Sqrt(dRelativaAr * r));
           

            if (tFaseFase > 220)
            {
                if (n == 1)
                {
                    
                    //GA_E_GC 1CABOS(New)
                    ga = (1 / ((Math.Log(((2 * hInstalacao) / (Math.Sqrt(((Math.Pow(2 * hInstalacao, 2) / Math.Pow(espFases, 2)) + 1) * r))))) * r)) * tFaseNeutro;
                    gc = (1 / ((Math.Log(((2 * hInstalacao) / (Math.Sqrt(((Math.Pow(4 * hInstalacao, 2) / Math.Pow(espFases, 2)) + 1) * r))))) * r)) * tFaseNeutro;
                }
                else if (n == 2)
                {

                   
                    //GA_E_GC 2CABOS(New)
                    ga = ((1 + (2 * (r / espSubCondut))) / ((Math.Log(((2 * hInstalacao) / (Math.Sqrt(((Math.Pow(2 * hInstalacao, 2) / Math.Pow(espFases, 2)) + 1) * r * espSubCondut))))) * 2 * r)) * tFaseNeutro;
                    gc = ((1 + (2 * (r / espSubCondut))) / ((Math.Log(((2 * hInstalacao) / (Math.Sqrt(((Math.Pow(4 * hInstalacao, 2) / Math.Pow(espFases, 2)) + 1) * r * espSubCondut))))) * 2 * r)) * tFaseNeutro;
                }
               
                    
                else if (n == 3)
                {
                    //GA_E_GC 3CABOS(New)
                    ga = (1 + (3.464 * (r / espSubCondut))) / (3 * r * Math.Log(((2 * hInstalacao) / ((((Math.Pow(r * (Math.Pow(espSubCondut, 2)), (1.0 / 3.0)) * Math.Sqrt((((2 * (Math.Pow(hInstalacao, 2))) / (Math.Pow(espFases, 2))) + 1))))))))) * tFaseNeutro;
                    gc = (1 + (3.464 * (r / espSubCondut))) / (3 * r * Math.Log(((2 * hInstalacao) / ((((Math.Pow(r * (Math.Pow(espSubCondut, 2)), (1.0 / 3.0)) * Math.Sqrt((((4 * (Math.Pow(hInstalacao, 2))) / (Math.Pow(espFases, 2))) + 1))))))))) * tFaseNeutro;
                }

               
                else
                {
                    //GA_E_GC 4CABOS(New)
                    ga = (1 + (4.242 * (r / espSubCondut))) / (4 * r * Math.Log(((2 * hInstalacao) / ((((Math.Pow(r * (Math.Pow(1.12 * espSubCondut, 3)), (1.0 / 4.0)) * Math.Sqrt((((2 * (Math.Pow(hInstalacao, 2))) / (Math.Pow(espFases, 2))) + 1))))))))) * tFaseNeutro;
                    gc = (1 + (4.242 * (r / espSubCondut))) / (4 * r * Math.Log(((2 * hInstalacao) / ((((Math.Pow(r * (Math.Pow(1.12 * espSubCondut, 3)), (1.0 / 4.0)) * Math.Sqrt((((4 * Math.Pow(hInstalacao, 2))) / (Math.Pow(espFases, 2))) + 1)))))))) * tFaseNeutro;
                }
            }
            else
            {
               ampacid = 0;
            }

           
            if ((gv > ga) && (gv > gc))
            {
                criterioCorona = "ATENDE";
            }
            else
            {
                criterioCorona = "NÃO ATENDE";
            }

        }

     

        private void carregaGridAmpacidade()
        {
            _itemSourceListAmpacidade = new CollectionViewSource() { Source = itemListAmpacidade };
            ItemListAmpacidade = _itemSourceListAmpacidade.View;
            dgvAmpacidade.ItemsSource = ItemListAmpacidade;
        }

        private void carregaGridCurto()
        {
            _itemSourceListCurto = new CollectionViewSource() { Source = itemListCurto };
            ItemListCurto = _itemSourceListCurto.View;
            dgvCurto.ItemsSource = ItemListCurto;
        }

        private void carregaGridCorona()

        {
            _itemSourceListCorona = new CollectionViewSource() { Source = itemListCorona };
            ItemListCorona = _itemSourceListCorona.View;
            dgvCorona.ItemsSource = ItemListCorona;
        }

        


        public class CurtoFlex
        {
            public string CONDUTOR { get; set; }
            public int NCONDUTORES { get; set; }
            public double CURTOCIRCUITO { get; set; }
            public string CRITERIOCURTO { get; set; }
        }


        public class AmpacidadeFlex
        {
            public string CONDUTOR { get; set; }
            public int NCONDUTORES { get; set; }
            public double RTC { get; set; }
            public double QC { get; set; }
            public double QR { get; set; }
            public double QS { get; set; }
            public double AMPACIDADE { get; set; }
            public string CRITERIOAMPACIDADE { get; set; }
        }

        public class CoronaFlex
        {
            public string CONDUTOR { get; set; }
            public int NCONDUTORES { get; set; }
            public double GA { get; set; }
            public double GC { get; set; }
            public double GV { get; set; }
            public string CRITERIOCORONA { get; set; }
        }

        public void CalculaFlexivel()
        {
            try
            {

                Qc();
                Qr();
                Qs();
                Rtc();
                Amp();
                itemListAmpacidade.Add(new AmpacidadeFlex() { CONDUTOR = condutor, NCONDUTORES = n, RTC = Math.Round(rtc, 8), QC = Math.Round(qc, 4), QR = Math.Round(qr, 4), QS = Math.Round(qs, 4), AMPACIDADE = Math.Round(ampacid, 4), CRITERIOAMPACIDADE = criterioampacidade });
                carregaGridAmpacidade();

                CCircuito();
                itemListCurto.Add(new CurtoFlex() { CONDUTOR = condutor, NCONDUTORES = n, CURTOCIRCUITO = Math.Round(cCircuito,4), CRITERIOCURTO = criterioCurto });
                carregaGridCurto();

                CCorona();
                itemListCorona.Add(new CoronaFlex() { CONDUTOR = condutor, NCONDUTORES = n, GA = Math.Round(ga,4), GC = Math.Round(gc, 4), GV = Math.Round(gv, 4), CRITERIOCORONA = criterioCorona });
                carregaGridCorona();
                MainWindow.Instance.textoStatus.Text = "   Calculo realizado com Sucesso!";

            }

            catch (Exception e)
            {
                //throw e;
                MessageBox.Show("Existe campos a serem preenchidos!");
            }
        }

        public class Ampacidade : ObservableCollection<AmpacidadeFlex>
        {

        }

        public class CurtoCircuito : ObservableCollection<CurtoFlex>
        {

        }

        public class CriterioCorona : ObservableCollection<CoronaFlex>
        {

        }
        

    }
}

