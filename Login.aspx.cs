using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
//using DBC2;

namespace ckgl
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //判断用户名和密码是否为空
            if (TextBox1.Text == "" || TextBox2.Text == "")
            {
                Response.Write("<script language=javascript> alert('对不起，用户名或密码不得为空！');</script>");
                return;
            }

            //链接并打开数据库
            OdbcConnection con = DB.Lianjie();//这一行就用到了之前在App_Data文件夹中创建的DB.cs脚本
            con.Open();
            //定义查询sql，这里的glyb表是存放用户名和密码的表，根据自己实际情况做出修改！
            string sql = " select * from glyb where gno='" + TextBox1.Text + "' and gpass='" + TextBox2.Text + "'";
            //将Sql命令放入到执行缓冲区
            OdbcCommand mycommand = new OdbcCommand(sql, con);
            //执行SQL命令
            OdbcDataReader sdr = mycommand.ExecuteReader();
            //如果sql查询到的记录和用户输入的用户名和密码一致则跳转到主界面
            if (sdr.Read())
            {
                Response.Redirect("admin/default.aspx");  //调用其他网页用
            }
            else
            {
                Response.Write("<script language=javascript> alert('对不起，用户名或密码不正确，请重试！');</script>");
                return;
            }
            //if (DateC.IsConnection())
            //{
            //    TextBox1.Text = "OK";
            //}
        }
    }
}