<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
			<div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-in-form">
						<div class="sign-in-form-top">
							<h1>Log in</h1>
						</div>
						<div class="signin">
							<div class="signin-rit">
								<span class="checkbox1">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked="">Forgot Password ?</label>
								</span>
								<p><a href="#">Click Here</a> </p>
								<div class="clearfix"> </div>
							</div>
							
							<div class="log-input">
								<div class="log-input-left">
								   
  								    <asp:TextBox ID="Txtemail" runat="server" class="user"></asp:TextBox>
                                 </div>
								<span class="checkbox2">
								</span>
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
								   <asp:TextBox ID="TxtPwd" runat="server" class="lock"></asp:TextBox>
                                  
								</div>
								<span class="checkbox2">
									 
								</span>
								<div class="clearfix"> </div>
							</div>
                            <asp:Label ID="Laberrordisp" runat="server" Text=""></asp:Label>

                            <asp:Button ID="BtnSubmit" runat="server" Text="Submit" 
                                onclick="BtnSubmit_Click"></asp:Button>
				
						</div>
						<div class="new_people">
							<h2>For New People</h2>
							<p>Having hands on experience in creating innovative designs,I do offer design 
								solutions which harness.</p>
							<a href="Register.aspx">Register Now!</a>
						</div>
					</div>
				</div>
			</div>
		
	</section>
    </label>
</asp:Content>

