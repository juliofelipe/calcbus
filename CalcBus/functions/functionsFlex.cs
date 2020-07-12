using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CalcBus.functions
{

    

    class functionsFlex
    {
        const double pol = 25.4;
        double qc = 0;
        const double T0 = 288.15;
        const double g = 9.80665;
        const double L = 0.0065;
        const double R = 8.31447;
        const double M = 0.028964;
        const double p0 = 101.325 * 1000;
        const double ft = 16.018463;
        int n = Convert.ToInt32(MainWindow.Instance.cboNumCondutores.Text);

        public object Diametro { get; private set; }
    

        public void valorBD()
        {
            String Diametro = (from res in MainWindow.Instance.Cabos
                               where res.ID.Equals(MainWindow.idCondutor)
                               select res.DIAMNOMINAL).Single<String>();
            String Condutor = (from res in MainWindow.Instance.Cabos
                               where res.ID.Equals(MainWindow.idCondutor)
                               select res.CONDUTOR).Single<String>();
        }
       

        private void calculaQc()
        { 
                
                double h = Convert.ToDouble(MainWindow.Instance.txtAltitude.Text);
                double velocidadeAr = Convert.ToDouble(MainWindow.Instance.txtVelMaxMedVento.Text);
                double velocidadeArConvertida = velocidadeAr * 11811;
                double T = T0 - L * h;
                double p = p0 * Math.Pow(1 - (L * h) / (T0), (g * M) / (R * L));
                double ro = ((p * M) / (R * T)) / ft;
                double temperaturaAmbiente = Convert.ToDouble(MainWindow.Instance.txtTempAmbiente.Text);
                double temperaturaCondutor = Convert.ToDouble(MainWindow.Instance.txtTempCondutor.Text);
                double TFinal = (temperaturaAmbiente + temperaturaCondutor) / 2;

                //ViscosidadeAbsoluta--------------------------------------------------------------------
                double X1_VA, X0_VA, Y1_VA, Y0_VA, X_VA, ViscosidadeAbsoluta;
                X0_VA = 0;
                X1_VA = 100;
                Y0_VA = 0.0415;
                Y1_VA = 0.0526;
                X_VA = TFinal;
                ViscosidadeAbsoluta = (Y0_VA + ((Y1_VA - Y0_VA) / (X1_VA - X0_VA)) * (X_VA - X0_VA));

                //CondutividadeTermica-------------------------------------------------------------------
                double X1_CT, X0_CT, Y1_CT, Y0_CT, X_CT, CondutividadeTermica;
                X0_CT = 0;
                X1_CT = 100;
                Y0_CT = 0.00739;
                Y1_CT = 0.00966;
                X_CT = TFinal;
                CondutividadeTermica = (Y0_CT + ((Y1_CT - Y0_CT) / (X1_CT - X0_CT)) * (X_CT - X0_CT));
                //Qc---------------------------------------------------------------------------------------

                double reynholds = (((Convert.ToDouble(Diametro)) / (pol)) * ro * velocidadeArConvertida) / ViscosidadeAbsoluta;
                if ((reynholds >= 1) && (reynholds <= 50000))
                {
                    qc = Math.Round((0.1695 * (Math.Pow(reynholds, 0.6)) * CondutividadeTermica* (temperaturaCondutor - temperaturaAmbiente)), 4);
                }
                else
                {
                    qc = Math.Round((1.01 + 0.371 * (Math.Pow(reynholds, 0.62)) * CondutividadeTermica * (temperaturaCondutor - temperaturaAmbiente)), 4);
                }
        }
        
        private void calculaQr()
        {
            double temperaturaAmbiente = Convert.ToDouble(MainWindow.Instance.txtTempAmbiente.Text);
            double temperaturaCondutor = Convert.ToDouble(MainWindow.Instance.txtTempCondutor.Text);
            
            double DiametroIn = Convert.ToDouble(Diametro) / (pol)
            double Ka = temperaturaAmbiente + 273;
            double Kc = temperaturaCondutor + 273;
            double coeficienteTermico = 0.5;
            double diametroConvertido = (Convert.ToDouble(Diametro) / (pol));
            double qr = 0.138 * diametroConvertido * coeficienteTermico * ((Math.Pow(Kc / 100, 4) - Math.Pow(Ka / 100, 4)));
        }





    }
}
