using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjWebCsIntroductionApsNet
{
    public partial class webPizza : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Page.IsPostBack == false)// si c'est la premiere fois
            {
                panPrix.Visible = false;
                panCommande.Visible = false;
                lblAdresse.Visible = txtAdresse.Visible = false;
                RemplirListePizzas();
                RemplirTaille();
                RemplirGarnitures();
                RemplirCroutes();
            }
            else
            {
                if (cboPizzas.SelectedIndex != 0)
                {
                    panPrix.Visible = true;
                    CalculerPrix();

                }
                else { 
                    panPrix.Visible = false;
                }

                panCommande.Visible = false;
            }

        }

        private void RemplirCroutes()
        {
            lstRadCroutes.Items.Add(new ListItem("Normal", "1-0"));
            lstRadCroutes.Items.Add(new ListItem("Epaisse", "2-0"));
            lstRadCroutes.Items.Add(new ListItem("Mince", "3-0"));
            
            //lstRadCroutes.Items[0].Selected = true;
            lstRadCroutes.SelectedIndex = 0;
        }
        private void RemplirGarnitures()
        {
            lstChkGarnitures.Items.Add(new ListItem("Champignons (1 $)", "1"));
            lstChkGarnitures.Items.Add(new ListItem("Bacon Halal (2 $)", "2"));
            lstChkGarnitures.Items.Add(new ListItem("Extra Fromage (1.5 $)", "1.5"));
            lstChkGarnitures.Items.Add(new ListItem("Peperoni (2.5 $)", "2.5"));

        }
        private void RemplirTaille()
        {
            ListItem t1 = new ListItem("Petite", "1");
            t1.Selected = true;
            lstTailles.Items.Add(t1);

            lstTailles.Items.Add(new ListItem("Moyenne", "1.5"));
            lstTailles.Items.Add(new ListItem("Grande", "2"));

        }
        private void RemplirListePizzas()
        {
            ListItem p0 = new ListItem();
            p0.Text = "Faites votre choix";
            p0.Value = "0";
            p0.Selected = true;
            cboPizzas.Items.Add(p0);

            ListItem p1 = new ListItem();
            p1.Text = "La Napolitana";
            p1.Value = "10";
            cboPizzas.Items.Add(p1);

            ListItem p2 = new ListItem("La Vegetarienne", "12");
            cboPizzas.Items.Add(p2);

            cboPizzas.Items.Add(new ListItem("La Quebecoise", "8"));
            
            cboPizzas.Items.Add(new ListItem("La Halal", "5"));

        }

        protected void chkLivraison_CheckedChanged(object sender, EventArgs e)
        {
            if (chkLivraison.Checked==true)
            {
                txtAdresse.Visible = true;
                lblAdresse.Visible=true;
                txtAdresse.Focus();
            }
            else
            {
                txtAdresse.Visible = false;
                lblAdresse.Visible =false;
            }

         //   txtAdresse.Visible = lblAdresse.Visible = chkLivraison.Checked;
        }

       

        private void CalculerPrix()
        {
            
            decimal prixbase = 0, total =0;
            decimal livraison = 0, tax = 0.14M, soustotal = 0;
            decimal garni = 0, crout = 0;
            // M = decimal, F = float , D = Double
            
            prixbase = Convert.ToDecimal(cboPizzas.SelectedItem.Value);
            
            prixbase = prixbase * Convert.ToDecimal(lstTailles.SelectedItem.Value);

            litPrix.Text = "Prix de base " + prixbase + " $ <br />";
            if (chkLivraison.Checked)
            {
                livraison = 5;
                litPrix.Text += "Livraison " + livraison + " $ <br />";
            }

            // calcul du montant des garnitures
            foreach(ListItem elmt in lstChkGarnitures.Items)
            {
                if(elmt.Selected == true)
                {
                    garni += Convert.ToDecimal(elmt.Value);
                }
            }
            litPrix.Text += "Garnitures " + garni + " $ <br />";

            // calcul de la valeur de la croute
            crout = Convert.ToDecimal(lstRadCroutes.SelectedValue.Substring(lstRadCroutes.SelectedValue.IndexOf("-") + 1));


            soustotal = prixbase + livraison + garni + crout;
            tax = soustotal * tax;
            total = soustotal + tax;

            litPrix.Text += "----------------------- <br />";
            litPrix.Text += "Sous-Total   " + soustotal + " $ <br />";
            litPrix.Text += "Taxes (14%)   " + tax + " $ <br />";
            litPrix.Text += "----------------------- <br />";
            litPrix.Text += "Total         " + total + " $ <br />";
            

        }

        protected void btnCommander_Click(object sender, EventArgs e)
        {
            panCommande.Visible = true;
            string info = "La commande d'une " + lstTailles.SelectedItem.Text +
                "<br /> pizza " + cboPizzas.SelectedItem.Text + " sur une <br />croute " +
                lstRadCroutes.SelectedItem.Text + " par " + txtNom.Text + "<br />";
            if (chkLivraison.Checked)
            {
                info += "A livrer au <br />" + txtAdresse.Text + "<br />" +
                    "Telephone " + txtTelephone.Text + "<br />";
            }
            else
            {
                info += "A ramasser au comptoir<br />";
            }

            if(lstChkGarnitures.SelectedIndex != -1)
            {
                info += "Garnitures <br /><ul type='square'>";
                foreach(ListItem garn in lstChkGarnitures.Items)
                {
                    if (garn.Selected == true)
                    {
                        info += "  <li>" + garn.Text + "</li>";
                    }
                }
                info += "</ul>";
            }
            litCommande.Text = info;
     
        }
    }
}