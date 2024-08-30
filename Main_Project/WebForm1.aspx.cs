using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Reflection;
using System.Collections;

namespace Main_Project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
       
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        Random random = new Random();
        private ArrayList SoftSkills
        {get{if (ViewState["SoftSkills"] == null)
                    ViewState["SoftSkills"] = new ArrayList();
                return (ArrayList)ViewState["SoftSkills"];}
            set {ViewState["SoftSkills"] = value;}}
        private ArrayList TechnicalSkills
        {get{if (ViewState["TechnicalSkills"] == null)
                    ViewState["TechnicalSkills"] = new ArrayList();
                return (ArrayList)ViewState["TechnicalSkills"];}
            set{ViewState["TechnicalSkills"] = value;}}

        private ArrayList UniversityBoard
        {
            get
            {
                if (ViewState["UniversityBoard"] == null)
                    ViewState["UniversityBoard"] = new ArrayList();
                return (ArrayList)ViewState["UniversityBoard"];
            }
            set { ViewState["UniversityBoard"] = value; }
        }
        private ArrayList CompletionYear
        {
            get
            {
                if (ViewState["CompletionYear"] == null)
                    ViewState["CompletionYear"] = new ArrayList();
                return (ArrayList)ViewState["CompletionYear"];
            }
            set { ViewState["CompletionYear"] = value; }
        }
        private ArrayList UserScore
        {
            get
            {
                if (ViewState["UserScore"] == null)
                    ViewState["UserScore"] = new ArrayList();
                return (ArrayList)ViewState["UserScore"];
            }
            set { ViewState["UserScore"] = value; }
        }
        private ArrayList Descriptions
        {
            get
            {
                if (ViewState["Descriptions"] == null)
                    ViewState["Descriptions"] = new ArrayList();
                return (ArrayList)ViewState["Descriptions"];
            }
            set { ViewState["Descriptions"] = value; }
        }

        private ArrayList ProjectTitle
        {
            get
            {
                if (ViewState["ProjectTitle"] == null)
                    ViewState["ProjectTitle"] = new ArrayList();
                return (ArrayList)ViewState["ProjectTitle"];
            }
            set { ViewState["ProjectTitle"] = value; }
        }

        private ArrayList ProjectSoftware
        {
            get
            {
                if (ViewState["ProjectSoftware"] == null)
                    ViewState["ProjectSoftware"] = new ArrayList();
                return (ArrayList)ViewState["ProjectSoftware"];
            }
            set { ViewState["ProjectSoftware"] = value; }
        }

        private ArrayList ProjectCompletionYear
        {
            get
            {
                if (ViewState["ProjectCompletionYear"] == null)
                    ViewState["ProjectCompletionYear"] = new ArrayList();
                return (ArrayList)ViewState["ProjectCompletionYear"];
            }
            set { ViewState["ProjectCompletionYear"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            string Institute = Board.Text.Trim().ToString();
            string CompleteYears = Year.Text.Trim().ToString();
            string UScore = Score.Text.Trim().ToString();
            //adding institute
            if (!UniversityBoard.Contains(Institute))
            {
                UniversityBoard.Add(Institute);
            }
            else
            {
                MessageBox.Show("Skill '" + Institute + "' already exists.");
            }
            //adding year
            if (!CompletionYear.Contains(CompleteYears))
            {
                CompletionYear.Add(CompleteYears);
            }
            else
            {
                MessageBox.Show("Skill '" + CompleteYears + "' already exists.");
            }

            //adding score
            if (!UserScore.Contains(UScore))
            {
                UserScore.Add(UScore);
                MessageBox.Show("Record Added Successfully");
            }
            else
            {
                MessageBox.Show("Skill '" + UScore + "' already exists.");
            }

            Board.Text = "";
            Score.Text = "";
            Year.Text = "";
        }
        protected void AddSoftSkills_Click(object sender, EventArgs e)
        {
            
            string skill = SoftSkill.Text.Trim().ToString();
            if (!SoftSkills.Contains(skill))
            {
                SoftSkills.Add(skill);
                MessageBox.Show("Skills Successfully Added");
            }
            else
            {
                MessageBox.Show("Skill '" + skill + "' already exists.");
            }
            SoftSkill.Text = "";
        }
        protected void AddTechSkills_Click(object sender, EventArgs e)
        {
            string skill = Technical.Text.Trim().ToString();
            if (!TechnicalSkills.Contains(skill))
            {
                TechnicalSkills.Add(skill);
                MessageBox.Show("Skills Successfully Added");
            }
            else
            {
                MessageBox.Show("Skill '" + skill + "' already exists.");
            }
            Technical.Text = "";
        }
        protected void RemoveSkills_Click1(object sender, EventArgs e)
        {
            string skillToRemove = Remove.Text.Trim().ToString();
            string TechskillRemove = Remove.Text.Trim().ToString();
            if (SoftSkills.Contains(skillToRemove))
            {
                SoftSkills.Remove(skillToRemove);
                MessageBox.Show("Skill '" + skillToRemove + "' removed successfully.");
            }
            else if (TechnicalSkills.Contains(TechskillRemove))
            {
                TechnicalSkills.Remove(TechskillRemove);
                MessageBox.Show("Skill '" + TechskillRemove + "' removed successfully.");
            }
            else
            {
                MessageBox.Show("Skill '" + skillToRemove + "' not found.");
            }
            Remove.Text = "";
        }
   
        protected void Button2_Click(object sender, EventArgs e)
        {
            Name.Text = "";
            uid.Text = "";
            Email.Text = "";
            MB.Text = "";
            Board.Text = "";
            Score.Text = "";
            Year.Text = "";
            SoftSkill.Text = "";
            Technical.Text = "";
            Description.Text = "";
            Title.Text = "";
            Softwareuse.Text = "";
            SoftwareYear.Text = "";
            Github.Text = "";
            LinkedIn.Text = "";
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            
            try
            { 
               
                SqlCommand cmd = new SqlCommand("insert into UserInformation values('" + uid.Text.ToString() + "','" + Name.Text.ToString() + "','" + Email.Text.ToString() + "','" + MB.Text.ToString() + "','"+Github.Text.ToString()+"','"+LinkedIn.Text.ToString()+"')", con);
                cmd.ExecuteNonQuery();
        
                SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM UserInformation WHERE UserId = '"+uid.Text.ToString()+"'", con);
                int userCount = (int)checkCmd.ExecuteScalar();
                if(userCount>0){
                    for (int i = 0; i <= TechnicalSkills.Count - 1; i++)
                    {
                        int randomValue = GenerateRandomInt(0, 1000); 
                        String Skillsid = randomValue.ToString();
                        string SfSkill = i < SoftSkills.Count ? SoftSkills[i].ToString() : " ";
                        string TcSkill = i < TechnicalSkills.Count ? TechnicalSkills[i].ToString() : " ";
                        SqlCommand cmd1 = new SqlCommand("insert into UserSkills values('" + Skillsid + "','" + SfSkill + "','" + TcSkill + "','" + uid.Text.ToString() + "')", con);
                        cmd1.ExecuteNonQuery();
                    }
                    for(int i=0;i<= UniversityBoard.Count - 1; i++)
                    {
                        int randomValue = GenerateRandomInt(0, 1000);
                        String Educationid = randomValue.ToString();
                        SqlCommand cmd2 = new SqlCommand("insert into EducationDetails values('" + Educationid + "','" + UniversityBoard[i].ToString() + "','" + CompletionYear[i].ToString() + "','" + UserScore[i].ToString()+"','"+uid.Text.ToString()+"')",con);
                        cmd2.ExecuteNonQuery();
                    }
                    for(int i=0;i<= ProjectTitle.Count - 1; i++)
                    {
                        SqlCommand cmd3 = new SqlCommand("insert into ProjectDetails values('" + ProjectTitle[i].ToString() + "','" + Descriptions[i].ToString() +"','"+ ProjectCompletionYear[i].ToString()+"','"+ ProjectSoftware[i].ToString()+"','"+uid.Text.ToString()+"')",con);
                        cmd3.ExecuteNonQuery();
                    }
                    TechnicalSkills.Clear();
                    SoftSkills.Clear();
                    UniversityBoard.Clear();
                    CompletionYear.Clear();
                    UserScore.Clear();
                    Descriptions.Clear();
                    ProjectTitle.Clear();
                    ProjectSoftware.Clear();
                    ProjectCompletionYear.Clear();
                    MessageBox.Show("All Record Added Successfully");
                }
                else
                {
                    MessageBox.Show("Error: User does not exist in UserInformation table.");
                }
                con.Close();
                Name.Text = "";
                uid.Text = "";
                Email.Text = "";
                MB.Text = "";
            }
            catch(Exception ex)
            {
                MessageBox.Show("Error:" + ex.Message);
            }
        }
        private int GenerateRandomInt(int minValue, int maxValue)
        {
            return random.Next(minValue, maxValue + 1);
        }

        protected void AddProjects_Click(object sender, EventArgs e)
        {
            try
            {
                String DesStr = Description.Text.ToString().Trim();
                String Tit = Title.Text.ToString().Trim();
                String PrSoftware = Softwareuse.Text.ToString().Trim();
                String ProjectYr = SoftwareYear.Text.ToString().Trim();
                if (!Descriptions.Contains(DesStr))
                {
                    Descriptions.Add(DesStr);
                    string message = "Elements in " + Descriptions + ":\n";

                    foreach (string element in Descriptions)
                    {
                        message += element + "\n";
                    }
                    MessageBox.Show(message);
                }

                if (!ProjectTitle.Contains(Tit))
                {
                    ProjectTitle.Add(Tit);
                    string message = "Elements in " + ProjectTitle + ":\n";

                    foreach (string element in ProjectTitle)
                    {
                        message += element + "\n";
                    }
                    MessageBox.Show(message);
                }
                else
                {
                    MessageBox.Show("Title '" + Tit + "' already exists.");
                }

                if (!ProjectSoftware.Contains(PrSoftware))
                {
                    ProjectSoftware.Add(PrSoftware);
                    string message = "Elements in " + ProjectSoftware + ":\n";

                    foreach (string element in ProjectSoftware)
                    {
                        message += element + "\n";
                    }
                    MessageBox.Show(message);
                }
                if (!ProjectCompletionYear.Contains(ProjectYr))
                {
                    ProjectCompletionYear.Add(ProjectYr);
                    string message = "Elements in " + ProjectCompletionYear + ":\n";

                    foreach (string element in ProjectCompletionYear)
                    {
                        message += element + "\n";
                    }
                    MessageBox.Show(message);
                    MessageBox.Show("Record Added Successfully");
                }
                Description.Text = "";
                Softwareuse.Text = "";
                SoftwareYear.Text = "";
                Title.Text = "";

            }catch(Exception ex)
            {
                MessageBox.Show("Something happen from our site"+ ex.Message);
            }
           
        }

        protected void RemoveProject_Click(object sender, EventArgs e)
        {
            try
            {
                String Tit = Title.Text.Trim(); 
                int index = ProjectTitle.IndexOf(Tit);
                if (index != -1)
                {
                    string message = "Project Title: " + ProjectTitle[index] + "\n" +
                         "Description: " + Descriptions[index] + "\n" +
                         "Project Software: " + ProjectSoftware[index] + "\n" +
                         "Project Completion Year: " + ProjectCompletionYear[index];

                    ProjectTitle.RemoveAt(index);
                    Descriptions.RemoveAt(index);
                    ProjectSoftware.RemoveAt(index);
                    ProjectCompletionYear.RemoveAt(index);
                    MessageBox.Show(message);
                }
                else
                {
                    MessageBox.Show("Project not found");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("Error: " + ex.Message);
            }


        }
    }
}