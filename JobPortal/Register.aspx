<%@ Page Title="" Language="C#" MasterPageFile="~/JobPortalMasterPage.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JobPortal.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/register.css" rel="stylesheet" />
    <script type="text/javascript">
        function validatePassword() {
            var pass1 = document.getElementsByClassName('password')[0];
            var pass2 = document.getElementById("txtConfirmPassword");
            console.log(pass1.value + ' : ' + pass2.value);
            if (pass1.value !== pass2.value)
                pass2.setCustomValidity("Passwords Don't Match");
            else
                pass2.setCustomValidity('');
        }
    </script>
    <div>
        <table>
            <tr>
                <td>
                    <h3>Register New User</h3>
                </td>
                <td><span class="required_notification">* Denotes Required Field</span></td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" Visible="false"></asp:Label>
                </td>
            </tr>
        </table>
        <fieldset>
            <legend>Account Information</legend>
            <table>
                <tr>
                    <td>Account Type</td>
                    <td>
                        <select id="ddlAccountType" runat="server" required="required" title="Account Type is required">
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <input id="txtEmail" runat="server" type="email" placeholder="email@domain.com" required="required" title="Email is required" /></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input id="txtPassword" class="password" runat="server" type="password" onkeyup="validatePassword()" pattern=".{5,}" placeholder="min 5 characters" required="required"  title="Password is required(min 5 chars)"/></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input type="password" id="txtConfirmPassword" required="required" onkeyup="validatePassword()"  title="Confirm password"/>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Personal Information</legend>
            <table>
                <tr>
                    <td>First Name</td>
                    <td>
                        <input id="txtFirstName" runat="server" type="text" required="required" title="First Name is required" />
                    </td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td>
                        <input id="txtLastName" runat="server" type="text" required="required"  title="Last Name is required"/></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <input id="rdGender" runat="server" type="radio" name="gender" value="1" required="required" />Male
                    <input type="radio" runat="server" name="gender" value="0" required="required" />Female
                    </td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td>
                        <input id="dob" runat="server" type="date" required="required"  title="DOB is required"/>
                    </td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td class="tdcountrycitysection">
                        <select id="ddlPICountry" runat="server" required="required"  title="Country is required"/>
                        <select id="ddlPICity" runat="server" required="required"  title="City is required">
                            <option value="-1">- Select City -</option>
                        </select>
                        <div style="display:inline;"></div>
                    </td>
                </tr>
                <tr>
                    <td>CNIC</td>
                    <td>
                        <input id="txtCNIC" runat="server" type="text" />
                    </td>
                </tr>
                <tr>
                    <td>Mobile Phone</td>
                    <td>
                        <input id="txtMobileNo" runat="server" type="tel" required="required"  title="Mobile No is required"/>
                    </td>
                </tr>
                <tr>
                    <td>Home Phone</td>
                    <td>
                        <input id="txtHomeNo" runat="server" type="tel" required="required"  title="Contact No is required"/>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Academic Information</legend>
            <table>
                <tr>
                    <td>Degree Level</td>
                    <td>
                        <select id="ddlDegreeLevel" runat="server" required="required"  title="Degree Level is required"/>
                    </td>
                </tr>
                <tr name="trddlDegreeType">
                    <td>Degree Type</td>
                    <td>
                        <select id="ddlDegreeType" runat="server" required="required"  title="Degree Type is required"/>
                        <div id="divddlDegreeType" style="display:inline;"></div>
                    </td>
                </tr>
                <tr>
                    <td>Degree Title</td>
                    <td>
                        <input id="txtDegreeTitle" runat="server" type="text" required="required"  title="Degree Title is required" /></td>
                </tr>
                <tr>
                    <td>Location</td>
                    <td class="tdcountrycitysection">
                        <select id="ddlACountry" runat="server" required="required"  title="Country is required"/>
                        <select id="ddlACity" runat="server" required="required"  title="City is required"/>
                    </td>
                </tr>
                <tr>
                    <td>Institution</td>
                    <td>
                        <input id="txtInstitution" runat="server" type="text" required="required"  title="Institution Name is required"/>
                    </td>
                </tr>
                <tr>
                    <td>Completion Year</td>
                    <td>
                        <select id="ddlCompletionYear" runat="server" required="required"  title="Completion Year is required"/>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Professional Information</legend>
            <table>
                <tr>
                    <td>Do you have work experience?</td>
                    <td>
                        <input id="rdHasExperience" runat="server" type="radio" name="hasExperience" value="Yes" required="required" />Yes
                    <input type="radio" runat="server" name="hasExperience" value="No" required="required" />No
                    </td>
                </tr>
                <tr>
                    <td>Work Experience</td>
                    <td>
                        <select id="ddlWorkExperience" runat="server" required="required"  title="Work Experience is required"/></td>
                </tr>
                <tr>
                    <td>Professional Industry</td>
                    <td>
                        <select id="ddlProfessionalIndustry" runat="server" required="required"  title="Professional Industry is required"/>
                    </td>
                </tr>
                <tr>
                    <td>Functional Area</td>
                    <td>
                        <select id="ddlFunctionalArea" runat="server" required="required"  title="Functional Area is required"/><div id="divddlJobRole" style="display:inline;"></div>
                    </td>
                </tr>
                <tr name="trddlJobRole" style="display: none">
                    <td>Job Role</td>
                    <td>
                        <select id="ddlJobRole" runat="server" required="required"  title="Job Role is required">
                            <option value="-1">- Select Job Role -</option>
                        </select>
                        
                    </td>
                </tr>
                <tr>
                    <td>Career Level</td>
                    <td>
                        <select id="ddlCarerLevel" runat="server" required="required"  title="Career Level is required"/>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset>
            <legend>Professional Information</legend>
            <table>
                <tr>
                    <td>Upload CV</td>
                    <td>
                        <input id="fileCV" runat="server" type="file" required="required" accept=".doc,.docx,.pdf" title="Resume is required" />
                        <br />
                        <span>Upload file only in .doc, .docx or .pdf format</span>
                    </td>
                </tr>
            </table>
        </fieldset>
    </div>
    <input type="submit" class="register" value="Register" id="btnSubmit" runat="server" onserverclick="btnSubmit_ServerClick" aria-required="true" />

    
</asp:Content>
