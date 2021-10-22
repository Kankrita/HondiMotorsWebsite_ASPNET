using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermWebServer_2015233
{
    public partial class Midterm_2015233 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            panResume.Visible = panFinalInfo.Visible = false;

            if (!Page.IsPostBack)
            {
                txtPhone.Visible = lblPhone.Visible = false;

                cboModel.Items.Add(new ListItem("Civoc", "25000"));
                cboModel.Items.Add(new ListItem("DR-V", "30000"));
                cboModel.Items.Add(new ListItem("Appord", "33000"));
                cboModel.Items.Add(new ListItem("Cilot", "45000"));
                cboModel.Items.Add(new ListItem("Odirrey", "54000"));

                listInterior.Items.Add(new ListItem("White", "0"));
                listInterior.Items.Add(new ListItem("Dark", "300"));
                listInterior.Items.Add(new ListItem("Pearl", "900"));

                // to start with selected value on index 0 by default
                listInterior.SelectedIndex = 0;

                chkBoxAccessories.Items.Add(new ListItem("Aero Kit", "1300"));
                chkBoxAccessories.Items.Add(new ListItem("Film", "600"));
                chkBoxAccessories.Items.Add(new ListItem("Cold Weather", "900"));
                chkBoxAccessories.Items.Add(new ListItem("Hondi Emblem", "150"));
                chkBoxAccessories.Items.Add(new ListItem("Snow Tire PAckage", "1800"));

                rdLstWarranty.Items.Add(new ListItem("3 years", "0"));
                rdLstWarranty.Items.Add(new ListItem("5 years", "1000"));
                rdLstWarranty.Items.Add(new ListItem("7 years", "1500"));

                rdLstWarranty.SelectedIndex = 0;

            }
            if (cboModel.SelectedIndex > 0)
            {
                calculatePrice();
            }
        }

        private void calculatePrice()
        {
            decimal carP = 0, total = 0, accessories = 0, interior=0, warranty=0, subTotal = 0, tax = 0;
            carP = Convert.ToDecimal(cboModel.SelectedItem.Value);
            
            interior = Convert.ToDecimal(listInterior.SelectedItem.Value);

            warranty = Convert.ToDecimal(rdLstWarranty.SelectedItem.Value);
            
            litResume.Text = "<br><b>Car Price: $" + carP + "</b></br>";

            foreach (ListItem item in chkBoxAccessories.Items)
            {
                // if an item is selected, add the value to the accessories, else add 0
                accessories += (item.Selected) ? Convert.ToDecimal(item.Value) : 0; // ( ? : ) is called Ternary operation    
            }

           

            litResume.Text += "<b> Interior Color: $" + interior + "</br>";

            litResume.Text += "<b> Accessories: $" + accessories + "</br>";

            litResume.Text += "<b> Warranty: $" + warranty + "</br>";

            subTotal = carP + accessories + warranty + interior;
            litResume.Text += "</br><b> Price Without Taxes: $</b>" + subTotal + "</br></br>";

            tax = Math.Round(subTotal * Convert.ToDecimal(0.15), 2);

            total = Math.Round(subTotal + tax, 2);
            litResume.Text += "<b> Total With Taxes(15%): $" + total + "<br/>";

            panResume.Visible = true;
        }

        protected void chkContact_CheckedChanged(object sender, EventArgs e)
        {
            txtPhone.Visible = lblPhone.Visible = chkContact.Checked;
        }



        protected void cboModel_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnConclude_Click(object sender, EventArgs e)
        {
            panFinalInfo.Visible = true;

            litFinal.Text = "Congratulations on your new Hondi " + cboModel.SelectedItem.Text + " in " + txtCity.Text + ", " + txtZip.Text + ". <br/><br/> Your car comes with ";
            foreach (ListItem item in chkBoxAccessories.Items)
            {
                litFinal.Text += item.Selected ? item.Text + ", " : "";
            }
            litFinal.Text += "as accessories. <br/><br/>You chose a " + rdLstWarranty.SelectedItem.Text + " warranty ";

            litFinal.Text += chkContact.Checked ? "and our dealer will contact you by phone at: " + txtPhone.Text + "." : "and our dealer will wait for you to contact us in order to confirm the transaction.";
        }
    }
}