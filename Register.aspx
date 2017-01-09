<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          
            <div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-up">
						<h1>Create an account</h1>
						<p class="creating">Having hands on experience in creating innovative designs,I do offer design 
							solutions which harness.</p>
						<h2>Personal Information</h2>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Email Address* :</h4>
							</div>
							<div class="sign-up2">
								
                                <asp:TextBox ID="TxtEmail" runat="server" placeholder="Email Id"></asp:TextBox>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Password* :</h4>
							</div>
							<div class="sign-up2">
								
									
                                <asp:TextBox ID="Txtpwd" runat="server" placeholder="***********"></asp:TextBox>
							
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Confirm Password* :</h4>
							</div>
							<div class="sign-up2">
								
                                    <asp:TextBox ID="TxtCpwd" runat="server" placeholder="***********"></asp:TextBox>
								
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sub_home">
							<div class="sub_home_left">
								
									
                                <asp:Button ID="submit" runat="server" Text="submit" value="Create" 
                                    onclick="submit_Click"/>
								
							</div>
							<div class="sub_home_right">
								<p>Go Back to <a href="Default.aspx">Home</a></p>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
				</div>
			</div>
          
</asp:Content>

