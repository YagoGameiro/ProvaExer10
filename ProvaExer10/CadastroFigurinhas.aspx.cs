using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProvaExer10
{
    public partial class CadastroFigurinhas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadGrid();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            figurinhaEntities context = new figurinhaEntities();

            figurinha figu = new figurinha()
            {
                id = int.Parse(txtId.Text),
                descricao = txtDesc.Text,
                ano = int.Parse(txtAno.Text)
            };

            context.figurinha.Add(figu);
            context.SaveChanges();
            loadGrid();

        }
        private void loadGrid()
        {
            figurinhaEntities context = new figurinhaEntities();

            GVFigu.DataSource = context.figurinha.ToList<figurinha>();
            GVFigu.DataBind();
        }
    }
}