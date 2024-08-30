<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Main_Project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="./StyleSheet2.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1"  runat="server">
     <div class="wh-body">
        <div class="navbar">
            <div class="logo">
                <h2 style="margin-left:20px;">ProResumeForge</h2>
            </div>
            <div class="nav_links" >
        <asp:HyperLink ID="HyperLink1" Text="Profile"   runat="server"></asp:HyperLink>
        <asp:HyperLink ID="HyperLink2" Text="Resume Display" runat="server"></asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" Text="Update Resume" runat="server"></asp:HyperLink>
            </div>
            <asp:Button ID="Logout"  CausesValidation="false"  runat="server" Text="Logout" />

        </div>

        <div class="form_body">
            <div class="Personal_info"> <!--Flex column-->
                <div class="block1">
                    <h2>Personal Details</h2>
                </div>
                <div class="block2">  <!--Flex row-->
                    <div class="input">
                        <label for="Name">Name </label>
                        <asp:TextBox CssClass="text-input" ID="Name" runat="server" placeholder="Enter Your Name"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ValidationGroup="Submit"  ErrorMessage="Name is Empty*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input" style="display:flex;flex-direction:column;">
                        <div class="section">
                            <label for="uid">Uid </label>
<asp:TextBox CssClass="text-input" ID="uid" runat="server" TextMode="Number" placeholder="Enter Your UniqueID"></asp:TextBox>
                        </div>
                        <asp:RequiredFieldValidator CssClass="validator1"  ID="RequiredFieldValidator2" runat="server" ValidationGroup="Submit"  ErrorMessage="Uid is Empty*" ForeColor="#FF3300" ControlToValidate="uid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator CssClass="validator3" ID="RegularExpressionValidator3" runat="server" ControlToValidate="uid" ErrorMessage="5 Digits Number Allowed*" ForeColor="Blue" ValidationExpression="\d{5}"></asp:RegularExpressionValidator>                    
                    </div>
                </div>
                <div class="block2">  <!--Flex row-->
                    <div class="input">
                        <label for="Email">Email</label>
                        <asp:TextBox CssClass="text-input" ID="Email" runat="server" TextMode="Email" placeholder="Enter Your Email"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator" ID="RequiredFieldValidator3" runat="server" ControlToValidate="Email" ValidationGroup="Submit"  ErrorMessage="Email is Empty*" ForeColor="#FF3300"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator CssClass="validator" ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Invalid Email Id*" ForeColor="Blue" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>
                    <div class="input" style="display:flex;flex-direction:column;">
                        <div class="section">
                        <label for="MB">Mobile No </label>
                        <asp:TextBox CssClass="text-input" ID="MB" runat="server" TextMode="Number" placeholder="Enter Your MobileNo"></asp:TextBox><br />
                          </div>
                        <asp:RequiredFieldValidator CssClass="validator1" style="left:65px;"  ID="RequiredFieldValidator4" runat="server" ValidationGroup="Submit"  ErrorMessage="MobileNo is Empty*" ForeColor="#FF3300" ControlToValidate="MB"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator CssClass="validator3" ID="RegularExpressionValidator2" runat="server" ControlToValidate="MB" ErrorMessage="Invalid Number*" ForeColor="Blue" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </div>
                </div>
            </div>
            <div class="Objective"> <!--Flex column-->
                <div class="block1">
                    <h2>Objective For Resume</h2>
                </div>
                <div class="block2">  <!--Flex row-->
                    <textarea name="Objective_Text" id="Obj" cols="30" rows="10" placeholder="Enter Objective For Resume"></textarea>
                </div>
            </div>
            <div class="Education">
                <div class="block1">
                    <h2>Education Details</h2>
                </div>
                <div class="block2">  <!--Flex row-->
                    <div class="input">
                        <label for="Board">Board/Institue </label>
                        <asp:TextBox CssClass="text-input" ID="Board" runat="server" TextMode="SingleLine" placeholder="Enter Your Board"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator5" runat="server" ValidationGroup="University"  ErrorMessage="Board/University is Empty*" ForeColor="#FF3300" ControlToValidate="Board"></asp:RequiredFieldValidator>
                    </div>
                     <div class="input"  style="display:flex;flex-direction:column;">
     <div class="section">
     <label for="Year">Year</label>
     <asp:TextBox CssClass="text-input" ID="Year" runat="server" TextMode="Month" placeholder="Enter Month"  ></asp:TextBox>
         </div>
      <asp:RequiredFieldValidator CssClass="validator1" style="left:65px;"  ID="RequiredFieldValidator8" runat="server" ValidationGroup="University"  ErrorMessage="Year is Empty*" ForeColor="#FF3300" ControlToValidate="Year"></asp:RequiredFieldValidator>
 </div>
                </div>
                <div class="block2">  <!--Flex row-->
                    <div class="input">
                        <label for="Score">Final Score</label>
                        <asp:TextBox CssClass="text-input" ID="Score" runat="server" TextMode="Number" placeholder="Enter Your Grades"  style="margin-left:25px"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator6" runat="server" ValidationGroup="University" ErrorMessage="Score is Empty*" ForeColor="#FF3300" ControlToValidate="Score"></asp:RequiredFieldValidator>
                    </div>
                   
                </div>
                <div class="block2">
                    <div class="input">
                        <asp:Button ID="ADD"  CausesValidation="true" ValidationGroup="University" runat="server" Text="Add" OnClick="ADD_Click" />
                    </div>
                </div>
            </div>
            <div class="Skills">
                <div class="block1">
                    <h2>Add Your Skills</h2>
                </div>
                <div class="block2">  <!--Flex row-->
                    
                    <div class="input">
                        <label for="SoftSkill">SoftSkills </label>
                        <asp:TextBox CssClass="text-input" ID="SoftSkill" runat="server" TextMode="SingleLine" placeholder="Enter Your SoftSkills"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator9" runat="server" ValidationGroup="AddSoft"  ErrorMessage="SoftSkiils is Empty*" ForeColor="#FF3300" ControlToValidate="SoftSkill"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input" style="display:flex;flex-direction:column;">
                        <div class="section">
                        <label for="Technical">TechSkills</label>
                        <asp:TextBox CssClass="text-input" ID="Technical" runat="server" TextMode="SingleLine" placeholder="Enter Your TechnicalSkills"></asp:TextBox>
                            </div>
                     <asp:RequiredFieldValidator CssClass="validator1" style="left:65px;"  ID="RequiredFieldValidator10" runat="server" ValidationGroup="AddTech"  ErrorMessage="TechnicalSkills is Empty*" ForeColor="#FF3300" ControlToValidate="Technical"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="block2">
                    <div class="input">
                    <label for="Remove">Remove &nbsp;&nbsp;</label>
                    <asp:TextBox CssClass="text-input" ID="Remove" runat="server" TextMode="SingleLine" placeholder="Enter the SkillName"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator15" runat="server" ValidationGroup="Remove"  ErrorMessage="Enter the SkillName*" ForeColor="#FF3300" ControlToValidate="Remove"></asp:RequiredFieldValidator>
                    </div>
                </div>
               
                <div class="block2" style="justify-content: flex-start;">
                    <div class="input">
                        <asp:Button ID="AddSkills" ValidationGroup="AddSoft"  CausesValidation="true" runat="server" Text="AddSoft" OnClick="AddSoftSkills_Click" />
                    </div>
                    <div class="input">
                        <asp:Button ID="AddTechSkills" ValidationGroup="AddTech"  CausesValidation="true" runat="server" Text="AddTech" OnClick="AddTechSkills_Click" />
                    </div>
                    <div class="input" >
                        <asp:Button ID="RemoveSkills" ValidationGroup="Remove" CausesValidation="true" runat="server" Text="RemoveSoft" OnClick="RemoveSkills_Click1" />
                    </div>
                    <div class="input" >
                        <asp:Button ID="RemoveTech" ValidationGroup="Remove" CausesValidation="true" runat="server" Text="RemoveTech" OnClick="RemoveSkills_Click1"/>
                    </div>
                </div>
            </div>
            <div class="KeyProjects">
                <div class="block1">
                    <h2>Key Projects</h2>
                </div>
                <div class="block2">  <!--Flex row-->
                    
                    <div class="input">
                        <label for="Description">Description </label>
                          
                        <asp:TextBox CssClass="text-input" ID="Description" runat="server" TextMode="SingleLine" placeholder="Enter Project Description"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator11" runat="server" ValidationGroup="AddPr"  ErrorMessage="Description is Empty*" ForeColor="#FF3300" ControlToValidate="Description"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input" style="display:flex;flex-direction:column;">
                        <div class="section">
                        <label for="Title">Title</label>
                        <asp:TextBox CssClass="text-input" ID="Title" runat="server" TextMode="SingleLine" placeholder="Enter Project Title"></asp:TextBox>
                            </div>
                        <asp:RequiredFieldValidator CssClass="validator1" style="left:65px;"  ID="RequiredFieldValidator13" runat="server" ValidationGroup="AddPr"  ErrorMessage="Title is Empty*" ForeColor="#FF3300" ControlToValidate="Title"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="block2">
                    <div class="input">
                        <label for="Softwareuse">Software &nbsp;&nbsp;&nbsp;</label>
                         <asp:TextBox CssClass="text-input" ID="Softwareuse" runat="server" TextMode="SingleLine" placeholder="Enter Every Software Used By Specifying ,"></asp:TextBox>
                        <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator12" runat="server" ValidationGroup="AddPr"  ErrorMessage="Empty Field*" ForeColor="#FF3300" ControlToValidate="Softwareuse"></asp:RequiredFieldValidator>
                    </div>
                    <div class="input" style="display:flex;flex-direction:column;">
                        <div class="section">
                        <label for="SoftwareYear">Completion Year &nbsp;&nbsp;</label> 
                        <asp:TextBox CssClass="text-input" ID="SoftwareYear" runat="server" TextMode="Month" placeholder="Enter The Completion Year"></asp:TextBox>
                            </div>
                        <asp:RequiredFieldValidator CssClass="validator1" style="left:65px;"  ID="RequiredFieldValidator14" runat="server" ValidationGroup="AddPr"  ErrorMessage="Year is Empty*" ForeColor="#FF3300" ControlToValidate="SoftwareYear"></asp:RequiredFieldValidator>
                    </div>
                </div>
               
                <div class="block2" style="justify-content: start;">
                    <div class="input">
                         <asp:Button ID="AddProjects"  CausesValidation="true" ValidationGroup="AddPr" runat="server" Text="Add" OnClick="AddProjects_Click" />
                    </div>
                    <div class="input" >
                         <asp:Button ID="RemoveProject"  CausesValidation="false" ValidationGroup="RemovePr" runat="server" Text="Remove" OnClick="RemoveProject_Click" />
                    </div>
                </div>
            </div>
            <div class="KeyProjects">
    <div class="block1">
        <h2>Online Resources</h2>
    </div>
    <div class="block2">  <!--Flex row-->
        
        <div class="input">
            <label for="Github">Github Link </label>
              
            <asp:TextBox CssClass="text-input" ID="Github" runat="server" TextMode="SingleLine" placeholder="Enter GithubLink"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="validator"   ID="RequiredFieldValidator7" runat="server" ValidationGroup="Submit"  ErrorMessage="LinkField is Empty*" ForeColor="#FF3300" ControlToValidate="Github"></asp:RequiredFieldValidator>
        </div>
        <div class="input" style="display:flex;flex-direction:column;">
            <div class="section">
            <label for="LinkedIn">LinkedIn Link</label>
            <asp:TextBox CssClass="text-input" ID="LinkedIn" runat="server" TextMode="SingleLine" placeholder="Enter LinkedInLink"></asp:TextBox>
                </div>
            <asp:RequiredFieldValidator CssClass="validator1" style="left:65px;"  ID="RequiredFieldValidator16" runat="server" ValidationGroup="Submit"  ErrorMessage="LinkedInLink is Empty*" ForeColor="#FF3300" ControlToValidate="LinkedIn"></asp:RequiredFieldValidator>
        </div>
    </div>
</div>
            <div class="block2" style="justify-content: flex-end;">
                <div class="input" style="margin-top: 10px;">
                    <asp:Button style="background-color: #25d366;" ValidationGroup="Submit"  ID="Button10" runat="server" Text="Submit" OnClick="Button10_Click" />
                </div>
                <div class="input" style="margin-top: 10px;">
                     <asp:Button style="background-color: red;" ID="Button2" runat="server" Text="Reset" OnClick="Button2_Click" />
                </div>
            </div> 
        </div>
    </div>
     <footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-left">
                    <h3>ProResumeForge</h3>
                    <p>&copy; 2024 All rights reserved</p>
                </div>
                <div class="footer-right">
                    <ul class="footer-links">
                        <asp:HyperLink Text="Profile" NavigateUrl="./WebForm1.aspx" runat="server">
                        <li>Create Resume</a></li>
                            </asp:HyperLink>
                        <asp:HyperLink Text="Profile" NavigateUrl="./WebForm2.aspx" runat="server">
                            <li style="margin-right:20px;">Templates</li>
                        </asp:HyperLink>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    </form>
</body>
</html>
