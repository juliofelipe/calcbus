using System;
using System.Collections.Generic;
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
using System.Data;
using System.Data.SqlServerCe;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Windows.Controls.Ribbon;

namespace CalcBus
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : RibbonWindow
    {

        Flexivel Bar = new Flexivel();
        public ObservableCollection<Cabo> Cabos;
        private static volatile MainWindow _instance = null;
        public static int idCondutor = 0;

        public static MainWindow Instance
        {
            get
            {
                if(_instance == null)
                {
                    _instance = new MainWindow();
                }
                return _instance;
            }
        }

        private MainWindow()
        {
            InitializeComponent();
            populaComboTipoCondutor();
            populaComboNumCondutor();
            populaComboAngulo();
            populaComboAtmosfera();

        }

        private void btnCalcFlexivel_Click(object sender, RoutedEventArgs e)
        {
            Container.Content = Bar;
            Bar.CalculaFlexivel();
        }

      
        private void btnSobre_Click(object sender, RoutedEventArgs e)
        {
            Sobre s = new Sobre();
            s.Show();
           
        }

        private void populaComboNumCondutor()
        {
            cboNumCondutores.Items.Add("1");
            cboNumCondutores.Items.Add("2");
            cboNumCondutores.Items.Add("3");
            cboNumCondutores.Items.Add("4");
            cboNumCondutores.SelectedIndex = 0;
        }

        private void populaComboTipoCondutor()
        {
            cboTipoCondutor.Items.Add("CA");
            cboTipoCondutor.Items.Add("CAA");
            cboTipoCondutor.Items.Add("CAL");
            cboTipoCondutor.Items.Add("ACAR");
            cboTipoCondutor.SelectedIndex = 0;
        }

        private void populaComboAngulo()
        {
            cboAnguloSolar.Items.Add("5");
            cboAnguloSolar.Items.Add("10");
            cboAnguloSolar.Items.Add("15");
            cboAnguloSolar.Items.Add("20");
            cboAnguloSolar.Items.Add("25");
            cboAnguloSolar.Items.Add("30");
            cboAnguloSolar.Items.Add("35");
            cboAnguloSolar.Items.Add("40");
            cboAnguloSolar.Items.Add("45");
            cboAnguloSolar.Items.Add("50");
            cboAnguloSolar.Items.Add("60");
            cboAnguloSolar.Items.Add("70");
            cboAnguloSolar.Items.Add("80");
            cboAnguloSolar.Items.Add("90");

        }
        private void populaComboAtmosfera()
        {
            cboAtmosfera.Items.Add("Clear");
            cboAtmosfera.Items.Add("Industrial");
        }
        public void RetornaCabo()
        {
            SqlCeConnection con = new SqlCeConnection();
            con.ConnectionString = "Data Source=|DataDirectory|\\Database\\DBCalcBus.sdf";
            try
            {

                con.Open();
                SqlCeCommand com = new SqlCeCommand();
                string tipoCondutor = cboTipoCondutor.SelectionBoxItem.ToString();
                com.CommandText = "SELECT Id, Condutor, Bitola, STTotal, DiamNominalTotal, PesoNominalTotal, PesoNominal1350, PesoNominal6201, ResistenciaEletricaCA_25, ResistenciaEletricaCA_75, Tipo FROM tblCabos  ORDER BY Condutor";
                com.CommandType = CommandType.Text;
                com.Connection = con;
                SqlCeDataReader DR = com.ExecuteReader();
                Cabos = new ObservableCollection<Cabo>();
                while (DR.Read())
                {
                    Cabo _cabo = new Cabo();
                    _cabo.ID = DR.GetInt32(0);
                    _cabo.CONDUTOR = DR.GetString(1);
                    _cabo.BITOLA = DR.GetString(2);
                    _cabo.STTOTAL = DR.GetString(3);
                    _cabo.DIAMNOMINAL = DR.GetString(4);
                    _cabo.PESONOMINAL = DR.GetString(5);
                    _cabo.PPT1350 = (!DR.IsDBNull(DR.GetOrdinal("PesoNominal1350")) ? DR.GetString(6) : "");
                    _cabo.PPT6201 = (!DR.IsDBNull(DR.GetOrdinal("PesoNominal6201")) ? DR.GetString(7) : "");
                    _cabo.RESISTCA25 = DR.GetString(8);
                    _cabo.RESISTCA75 = DR.GetString(9);
                    _cabo.TIPO = DR.GetString(10);
                    Cabos.Add(_cabo);

                }

                con.Close();
            }
            catch (Exception)
            {
                throw;
            }
        }


        private void populaComboCondutor()
        {

            RetornaCabo();

            var ComboCondutor = from _cabos in Cabos
                                where _cabos.TIPO == cboTipoCondutor.SelectedValue.ToString()
                                select new { ID = _cabos.ID, CONDUTOR = _cabos.CONDUTOR };

            cboCondutor.ItemsSource = ComboCondutor;
            cboCondutor.DisplayMemberPath = "CONDUTOR";
            cboCondutor.SelectedValuePath = "ID";
            cboCondutor.SelectedIndex = 0;
        }
        public class Cabo
        {
            public int ID { get; set; }
            public string CONDUTOR { get; set; }
            public string BITOLA { get; set; }
            public string STTOTAL { get; set; }
            public string DIAMNOMINAL { get; set; }
            public string PESONOMINAL { get; set; }
            public string PPT1350 { get; set; }
            public string PPT6201 { get; set; }
            public string RESISTCA25 { get; set; }
            public string RESISTCA75 { get; set; }
            public string TIPO { get; set; }
        }

        private void cboCondutor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            if (cboCondutor.SelectedValue != null)
            {

                var BitolaPesoDiam = (from _cabos in Cabos
                                      where _cabos.ID.Equals(cboCondutor.SelectedValue)
                                      select new { ID = _cabos.ID, Tipo = _cabos.TIPO, Bitola = _cabos.BITOLA, Diametro = _cabos.DIAMNOMINAL, Peso = _cabos.PESONOMINAL, PPT1350 = _cabos.PPT1350, PPT6201 = _cabos.PPT6201}).FirstOrDefault();

                idCondutor = BitolaPesoDiam.ID;

                if (BitolaPesoDiam != null)
                {

                    double gPorcentagem = 0;

                    if ((BitolaPesoDiam.Tipo == "CA") || (BitolaPesoDiam.Tipo == "CAA"))
                    {
                        gPorcentagem = 61;
                    }
                    else if (BitolaPesoDiam.Tipo == "CAL")

                    {
                        gPorcentagem = 52.5;
                    }

                    else

                    {
                        double pn1350 = Convert.ToDouble(BitolaPesoDiam.PPT1350);
                        double pn6201 = Convert.ToDouble(BitolaPesoDiam.PPT6201);
                        double pn = Convert.ToDouble(BitolaPesoDiam.Peso);
                        double mediaponderada = ((pn1350 * 61) + (pn6201 * 52.5)) /pn ;
                        gPorcentagem = mediaponderada;
                    }



                    lblBitola.Content = BitolaPesoDiam.Bitola;
                    lblPesoNominal.Content = BitolaPesoDiam.Peso;
                    lblDiametro.Content = BitolaPesoDiam.Diametro;
                    lblCondutividade.Content = Math.Round(gPorcentagem,1) ;
                }
            }
        }

        private void cboTipoCondutor_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            populaComboCondutor();
        }

        private void CalculaFlexivel_Click(object sender, RoutedEventArgs e)
        {
            Container.Content = Bar;
            Bar.CalculaFlexivel();
        }

        private void LimparFlexivel_Click(object sender, RoutedEventArgs e)
        {
            txtAltitude.Text = "";
            txtAlturaInstalacao.Text = "";
            txtAmpacidadeNecessaria.Text = "";
            txtCorrenteCurto.Text = "";
            txtEspacamentoFases.Text = "";
            txtEspacamentoSubCondutores.Text = "";
            txtFatorSuperficie.Text = "";
            txtTempAmbiente.Text = "";
            txtTempAtuacao.Text = "";
            txtTempCondutor.Text = "";
            txtTempMaxTrabCabos.Text = "";
            txtTensaoFaseFase.Text = "";
            txtVelMaxMedVento.Text = "";
            textoStatus.Text = "   Campos Limpos com Sucesso!";
          
        }
    }

}
