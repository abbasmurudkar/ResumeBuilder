<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Main_Project.WebForm2" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="./StyleSheet1.css" rel="stylesheet"/>
</head>
<body>
     <form id="form1"  runat="server">
    <div class="wh-body">
        <div class="navbar"> 
                <h2>ProResumeForge</h2>
            <section1 class="nav_links">
                <asp:HyperLink ID="HyperLink1" Text="Profile"   runat="server"></asp:HyperLink>
<asp:HyperLink ID="HyperLink2" Text="Resume Display" runat="server"></asp:HyperLink>
<asp:HyperLink ID="HyperLink3" Text="Update Resume" runat="server"></asp:HyperLink>
            </section1>
            <asp:Button ID="Logout"  CausesValidation="false"  runat="server" Text="Logout" />
        </div>
        <div class="templates">
            <div class="head">
                <h2>Templates</h2>
            </div>
            <div class="carousel">
                <div class="box">
                    <img class="resume" src="./CustomResume.png" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Custom Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
                <div class="box">
                    <img class="resume" src="./Resume2.png" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Nmims Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
                <div class="box">
                    <img class="resume" src="./Resume1.webp" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Basic Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
                <div class="box">
                    <img class="resume" src="./Resume4.webp" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Blueish Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
            </div>
            <div class="carousel">
                <div class="box">
                    <img class="resume" src="./Resume8.jpeg" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Fancy Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
                <div class="box">
                    <img class="resume" src="./Resume5.jpeg" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>BestUI Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
                <div class="box">
                    <img class="resume" src="./Resume6.avif" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Detailed Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
                </div>
                <div class="box">
                    <img class="resume" src="./Resume7.png" alt="loading"/>
                    <button class="btn">Select Theme</button>
                    <div class="themes_review">
                        <h3>Functional Resume</h3>
                        <img src="./review.png" alt="loading"/>
                    </div>
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

