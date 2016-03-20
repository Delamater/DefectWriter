<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DefectEntry.aspx.cs" Inherits="DefectWriter.DefectEntry3" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
        }
        .auto-style3 {
        width: 27px;
    }
    .auto-style4 {
        height: 21px;
        width: 27px;
    }
    </style>

  <%--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">--%>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="../ckeditor/ckeditor.js"></script>
    <table style="width:100%;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:ValidationSummary ID="vsValidationSummary" runat="server" ForeColor="Red" ShowMessageBox="True" />
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Email Address:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtemailAddress" runat="server" Width="400px"></asp:TextBox>
                <input id="btnEmailAddressHelp" type="button" value="?" data-toggle="modal" data-target="#mdlEmailAddress" /></td>
            <!-- The Modal -->
            <div id="mdlEmailAddress" class="modal">
              <!-- Modal content -->
              <div class="modal-content">
                <div class="modal-header">
                  <h2>Email Address Help</h2>
                </div>
                <div class="modal-body">
                    <p>Enter your own <b>email address</b> to receive a copy of output generated</p>
                </div>
                <div class="modal-footer">
                  <h3>Email Address Help</h3>
                </div>
              </div>
            </div>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvEmailAddress" runat="server" ControlToValidate="txtemailAddress" ErrorMessage="An email address is required" ForeColor="Red" SetFocusOnError="True">***</asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="EmailAddrValid" runat="server" 
            ControlToValidate="txtemailAddress" Display="Dynamic" Font-Bold="False" 
            ForeColor="Red" SetFocusOnError="True" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="Please enter a valid email address or none at all">***</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label25" runat="server" Text="Case Number:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCaseNumber" runat="server" Width="150px"></asp:TextBox>
                <!-- The Modal -->
                <div id="mdlCaseNumber" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Case Number Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>The <b>case number</b> is the same number as the number within Fusion. Only one case number value should be provided.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Case Number Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnCaseNumber" type="button" value="?" data-toggle="modal" data-target="#mdlCaseNumber" /></td>
            <td class="auto-style3">
        <asp:RequiredFieldValidator ID="rfvCaseNumber" runat="server" 
            ControlToValidate="txtCaseNumber" Display="Dynamic" ErrorMessage="Case Number Is Required" 
            Font-Bold="False" ForeColor="Red" SetFocusOnError="True">***</asp:RequiredFieldValidator>
                <br />
        <asp:RegularExpressionValidator ID="regexCaseNumber" runat="server" 
            ControlToValidate="txtCaseNumber" ErrorMessage="Must be a valid case number" Font-Bold="False" 
            ForeColor="Red" SetFocusOnError="True" 
            ValidationExpression="\d{10}">***</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Summary:"></asp:Label>
            </td>
            <td class="auto-style1">
    <asp:TextBox ID="txtSummary" runat="server" Width="95%" MaxLength="66"></asp:TextBox>
                <div id="mdlSummary" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Summary Help</h2>
                        </div>
                        <div class="modal-body">
                        <p>The <b>summary</b> is limited to 66 characters, and is intended to be a short description of the problem, enough to remember this defect or question only</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Summary Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnSummary" type="button" value="?" data-toggle="modal" data-target="#mdlSummary" /></td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvSummary" runat="server" ControlToValidate="txtSummary" ErrorMessage="Summary is required" ForeColor="Red" SetFocusOnError="True">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label33" runat="server" Text="Function"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtFunction" runat="server" style="text-transform:uppercase;" OnTextChanged="txtFunction_TextChanged"></asp:TextBox>
                <div id="mdlFunctionHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Function Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>This is the <b>fuction code</b> for which your defect or question relates to. You can discover the function code by hovering your mouse over the link that starts your function within Sage X3.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Function Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnFunctionHelp" type="button" value="?" data-toggle="modal" data-target="#mdlFunctionHelp" /></td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label28" runat="server" Text="Major Version"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlMajorVersion" runat="server" OnSelectedIndexChanged="ddlMajorVersion_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem>v1.4</asp:ListItem>
                    <asp:ListItem>v1.3</asp:ListItem>
                    <asp:ListItem>v5</asp:ListItem>
                    <asp:ListItem Selected="True">v6</asp:ListItem>
                    <asp:ListItem>v7</asp:ListItem>
                    <asp:ListItem>PU8</asp:ListItem>
                    <asp:ListItem>PU9</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                    <asp:ListItem>X3 cloud</asp:ListItem>
                </asp:DropDownList>
                <div id="mdlMajorVersionHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Major Version Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>This is the <b>major</b> version of Sage X3, specific to the customer or partner for which you are reporting the defect or enhancement. Only one value is possible as the customer is only implemented in on one system at a time. This is also the major version for which you are requesting a hot fix for, in said circumstance.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Major Version Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnMajorVersionHelp" type="button" value="?" data-toggle="modal" data-target="#mdlMajorVersionHelp" /></td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label29" runat="server" Text="Minor Version (Patch Level)"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtMinorVersion" runat="server"></asp:TextBox>
                <div id="mdlMinorVersionHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Minor Version Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>This is the <b>minor</b> version of Sage X3, specific to the customer or partner for which you are reporting the defect or enhancement. Only one value is possible as the customer is only implemented in on one system at a time. This is also the major version for which you are requesting a hot fix for, in said circumstance.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Minor Version Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnMinorVersionHelp" type="button" value="?" data-toggle="modal" data-target="#mdlMinorVersionHelp" /></td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfvMinorVersion" runat="server" ControlToValidate="txtMinorVersion" ErrorMessage="Minor version is required" ForeColor="Red" SetFocusOnError="True">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Customer Company Name:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtCustomerCompanyName" runat="server" Width="95%"></asp:TextBox>
                <div id="mdlCustomerCompanyHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Customer Company Name Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Enter the <b>customer</b> name, not the <b>partner</b> name. This is the customer for which this case is tied to. Do not skip this value.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Customer Company Name Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnCustomerCompanyNameHelp" type="button" value="?" data-toggle="modal" data-target="#mdlCustomerCompanyHelp" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Partner Company Name:"></asp:Label>
            </td>
            <td>
    <asp:TextBox ID="txtPartnerCompanyName" runat="server" Width="95%"></asp:TextBox>
                <div id="mdlPartnerCompanyName" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Partner Company Name Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Enter the <b>partner</b> name tied to this case</b> Do not skip this value.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Partner Company Name Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnPartnerCompanyNameHelp" type="button" value="?" data-toggle="modal" data-target="#mdlPartnerCompanyName"/></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Database Type:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlDatabaseType" runat="server" Width="200px">
        <asp:ListItem Selected="True">SQL Server</asp:ListItem>
        <asp:ListItem>Oracle</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
                <div id="mdlDatabaseType" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Database Type Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Select the <b>database type</b> that the customer is using. <b>Do not</b> skip thi step.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Database Type Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnDatabaseTypeHelp" type="button" value="?" data-toggle="modal" data-target="#mdlDatabaseType"/></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label26" runat="server" Text="Database Version:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlSQLVersion" runat="server" Width="200px">
        <asp:ListItem>SQL 2016</asp:ListItem>
        <asp:ListItem>SQL 2014</asp:ListItem>
        <asp:ListItem>SQL 2012</asp:ListItem>
        <asp:ListItem Selected="True">SQL 2008 R2</asp:ListItem>
        <asp:ListItem>SQL 2008</asp:ListItem>
        <asp:ListItem>SQL 2005</asp:ListItem>
        <asp:ListItem>SQL 2000</asp:ListItem>
        <asp:ListItem>Unknown</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
        <asp:ListItem>Oracle</asp:ListItem>
    </asp:DropDownList>
                <div id="mdlSqlVersionHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Database Version Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Choose the <b>version</b> of the database used. If the <b>version</b> is not relevant to the case select <b>N/A</b>, but be certain this is the case before doing so.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Database Version Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnSqlVersionHelp" type="button" value="?" data-toggle="modal" data-target="#mdlSqlVersionHelp" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label9" runat="server" Text="Type Of Request:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlTypeOfRequest" runat="server" Width="300px">
        <asp:ListItem Selected="True">Defect</asp:ListItem>
        <asp:ListItem>Enhancement</asp:ListItem>
        <asp:ListItem>Question / Information Needed</asp:ListItem>
    </asp:DropDownList>
                <div id="mdlTypeOfRequest" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Type of Request Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Define the type of request for this submission. Valid values are <b>Defect</b>, <b>Enhancement</b>, or <b>Question</b>.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Type of Request Help</h3>
                        </div>
                    </div>
                </div> 
                <input id="btnTypeOfRequest" type="button" value="?" data-toggle="modal" data-target="#mdlTypeOfRequest" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label10" runat="server" Text="Frequency Of Occurrence:"></asp:Label>
            </td>
            <td>
    <asp:DropDownList ID="ddlFrequency" runat="server" Width="300px">
        <asp:ListItem>100%</asp:ListItem>
        <asp:ListItem>Weekly</asp:ListItem>
        <asp:ListItem>Monthly</asp:ListItem>
        <asp:ListItem>Intermittent (See additional info)</asp:ListItem>
        <asp:ListItem>N/A</asp:ListItem>
    </asp:DropDownList>
                <div id="mdlFrequency" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Frequency of Occurrence Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Define <b>how frequently</b> this problem occurs, if applicable. </p>
                        </div>
                        <div class="modal-footer">
                            <h3>Frequency of Occurrence Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnFrequencyHelp" type="button" value="?" data-toggle="modal" data-target="#mdlFrequency" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label30" runat="server" Text="Priority"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:DropDownList ID="ddlPriority" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlPriority_SelectedIndexChanged">
                    <asp:ListItem Value="1">Low</asp:ListItem>
                    <asp:ListItem Selected="True" Value="2">Medium</asp:ListItem>
                    <asp:ListItem Value="3">High</asp:ListItem>
                    <asp:ListItem Value="4">Critical</asp:ListItem>
                </asp:DropDownList>

                <div id="mdlPriorityHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Priority Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Follow the guidelines for priority defined on the sharepoint guide for submitting a LISA entry.</p>
                            <p><b>Note: Hot fixes are reserved for High and Critical Entries Only</b></p>
                        </div>
                        <div class="modal-footer">
                            <h3>Priorty Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnPriorityHelp" type="button" value="?" data-toggle="modal" data-target="#mdlPriorityHelp" /></td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:Label ID="Label31" runat="server" Text="Reason"></asp:Label>
            </td>
            <td class="auto-style1">
                <asp:TextBox ID="txtCriticalHighReason" runat="server" Rows="10" TextMode="MultiLine" Width="100%" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style4">
                <br />
                <br />
                <asp:RequiredFieldValidator ID="rfvCriticalOrHighReason" runat="server" ControlToValidate="txtCriticalHighReason" ErrorMessage="State a reason why this is critical / high" Enabled="False">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Steps To Duplicate (or question):"></asp:Label>
            &nbsp;
            <!-- Trigger/Open The Modal -->
            <input id="btnStepsToDupeHelp" type="button" value="?" data-toggle="modal" data-target="#mdlStepsToDupe"/>

            <!-- The Modal -->
            <div id="mdlStepsToDupe" class="modal">

              <!-- Modal content -->
              <div class="modal-content">
                <div class="modal-header">
                  <h2>Steps To Duplicate Help</h2>
                </div>
                <div class="modal-body">
                  <p><b>Steps to duplicate should contain a topic sentence</b>, and <b>simplified, enumerated steps</b>, example as follows:</p>
                  <p>"SQL Server Error" when executing a requester within GESALQ</p>
                  <p>1. Launch GESALQ</p>
                  <p>2. Create a new requester</p>
                  <p>3. Use the following syntax
                      "SELECT * FROM DEMO.ATABLES"
                  </p>
                  <p>4. Save the requester with the activation checkbox checked and validate</p>
                  <p>5. Run the requester </p>
                  <p>6. Receive the error specified</p>
                </div>
                <div class="modal-footer">
                  <h3>Steps To Duplicate Help</h3>
                </div>
              </div>
            </div>              
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">       
                <asp:TextBox ID="txtStepsToDuplicate" runat="server" Rows="20" TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style3">       
                <asp:RequiredFieldValidator ID="rvfStepsToDuplicate" runat="server" ControlToValidate="txtStepsToDuplicate" ErrorMessage="Steps to duplicate (or question) are required" ForeColor="Red">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label27" runat="server" Text="Additional Information:"></asp:Label>
                <div id="mdlAdditionalInfoHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Additional Infroamtion Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>The Additional Information section provides a space to augment the steps to duplicate, or provide details / clarity around the defect or question. </p>
                            <p><b>Note: The Additional Information section allows you to keep your steps to duplicate short, and provide any more details that are required to complete the entry.</b></p>
                        </div>
                        <div class="modal-footer">
                            <h3>Additional Information Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnAdditionalInfoHelp" type="button" value="?" data-toggle="modal" data-target="#mdlAdditionalInfoHelp" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
        <asp:TextBox ID="txtAdditionalInformation" runat="server" Height="50px" TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Expected Results:"></asp:Label>
                <div id="mdlExpectedResults" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Expected Results Help</h2>"
                        </div>
                        <div class="modal-body">
                            <p>Define the <b>expected results</b>, what <b>should occur</b> in a normal situation. </p>
                            <p><b>Note: "An error should not occur" isn't a valid customer expectation, be specific about what you want to happen instead.</b></p>
                        </div>
                        <div class="modal-footer">
                            <h3>Expected Results Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnExpectedResultsHelp" type="button" value="?"  data-toggle="modal" data-target="#mdlExpectedResults"/></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
        <asp:TextBox ID="txtExpectedResults" runat="server" Height="50px" TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label32" runat="server" Text="Customer Expectations for how the case should be handled (hot fix, next patch, etc.):"></asp:Label>
                <div id="mdlCustomerExpectations" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Customer Expectations Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>If this is a defect, then this is what the customer is expecting in terms of a fix, allbeit a hot fix or next patch. If this is an enhancement request then it should be entered on the Sage Ideation site. If this is a question, then this should define when the question needs to be answered by. </p>
                            <p><b>Note: Define what will happen if the expectations aren't met.</b> Example: A hot fix is requested for a delivery date in two weeks, what will happen to the project if that doesn't happen? What are the implications to Sage, the partner and the customer?</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Customer Expectations Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnCustomerExpectationsHelp" type="button" value="?" data-toggle="modal" data-target="#mdlCustomerExpectations" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
        <asp:TextBox ID="txtCustomerExpectations" runat="server" Height="50px" TextMode="MultiLine" Width="100%" ToolTip="Does the customer expect a hot fix on the current patch, a fix in the next available patch, or the next major version?"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:CheckBox ID="chkHasWorkAround" runat="server" AutoPostBack="True" OnCheckedChanged="chkWorkAround_CheckedChanged" Text="Has Workaround" />
                <div id="mdlHasWorkaround" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Has Workaround Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Check this if there is a workaround. If this is no workaround, leave this unchecked. <b>Do not</b> leave this unchecked if there is a workaround. <b>Do not</b> state a workaround in the additional information section or anywhere else without checking this box.</p>                            
                            <p>If there is a workaround a new checkbox will pop up asking if the workaround is acceptable from the customer's point of view. Check this box if it is acceptable, uncheck it if the customer finds the workaround is unacceptable.</p>
                            <p>If the workaround is not acceptable, define why <b>from the customer's perspective</b> the workaround is not acceptable. Do not explain from Sage's perspective why the workaround is not acceptable, retrieve the reason from the customer. You may be required to follow up with the customer more than one time to fully understand why it isn't acceptable.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Has Workaround Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnHasWorkaroundHelp" type="button" value="?" data-toggle="modal" data-target="#mdlHasWorkaround"/><br />
    <asp:TextBox ID="txtWorkaround" runat="server" Height="100px" 
        TextMode="MultiLine" Width="100%" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvHasWorkAround" runat="server" ControlToValidate="txtWorkaround" Enabled="False" ErrorMessage="Please describe the workaround" ForeColor="Red" SetFocusOnError="True">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
    <asp:CheckBox ID="chkIsWorkaroundAcceptable" runat="server" 
        Text="Workaround Acceptable (If not, why not?)" Checked="True" AutoPostBack="True" OnCheckedChanged="chkIsWorkaroundAcceptable_CheckedChanged" Visible="False" />
                <asp:TextBox ID="txtWorkaroundNotAcceptableReason" runat="server" Rows="5" TextMode="MultiLine" Width="100%" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvWhyIsWorkaroundNotAcceptable" runat="server" ControlToValidate="txtWorkaroundNotAcceptableReason" ErrorMessage="State a reason why the workaround is not acceptable" ForeColor="Red" Enabled="False">***</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td colspan="2">
    <asp:CheckBox ID="chkIsDuplicable" runat="server" Text="Duplicate In House?" AutoPostBack="True" Checked="True" OnCheckedChanged="chkIsDuplicable_CheckedChanged" />
                <div id="mdlIsDuplcableHelp" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Is Duplicable Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Check the box if you can duplicate. If you cannot duplicate <b>state the reason why you cannot</b>.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Is Duplicable Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnIsDuplicableHelp" type="button" value="?" data-toggle="modal" data-target="#mdlIsDuplcableHelp"/>
                <br />
                <asp:Label ID="lblReasonWhyCouldNotDuplicate" runat="server" Text="State a reason why you weren't able to duplicate in house" Visible="False"></asp:Label>
                <br />
    <asp:TextBox ID="txtNotDuplicableReason" runat="server" Height="100px" 
        TextMode="MultiLine" Width="100%" Enabled="False" Visible="False"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvWhyDidYouNotDuplicateInHouse" runat="server" ControlToValidate="txtNotDuplicableReason" ErrorMessage="State a reason why you weren't able to duplicate in house" ForeColor="Red" Enabled="False">***</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label12" runat="server" Text="Location where duplicated: (Name of vApp, IP Address)"></asp:Label>
                <div id="mdlLocationWhereDuped" class="modal">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h2>Location Where Duplicated Help</h2>
                        </div>
                        <div class="modal-body">
                            <p>Define the machine within Virtual Cloud Director where you duplicated this issue. In the situation where complex defects are submitted, and especially when the problem requires set up, the mentor team will leverage this machine to save time when reproducing an issue.</p>
                            <p><b>Note: You must make a valid attempt to reproduce the issue on your machine before submitting a defect</b>.</p>
                        </div>
                        <div class="modal-footer">
                            <h3>Location Where Duplicated Help</h3>
                        </div>
                    </div>
                </div>
                <input id="btnLocationWhereDupedHelp" type="button" value="?" data-toggle="modal" data-target="#mdlLocationWhereDuped" /></td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
    <asp:TextBox ID="txtLocationOfResource" runat="server" Height="50px" 
        TextMode="MultiLine" Width="100%"></asp:TextBox>
            </td>
            <td class="auto-style3">
                <asp:RequiredFieldValidator ID="rfvLocationOfDuplication" runat="server" ControlToValidate="txtLocationOfResource" ErrorMessage="Location where you duplicated it is required" ForeColor="Red" SetFocusOnError="True">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td rowspan="4">
                <asp:Label ID="Label13" runat="server" Text="Priority Checklist:"></asp:Label>
            </td>
            <td class="auto-style1">
    <asp:CheckBox ID="chkPreventsUseOfKeyFunction" runat="server" 
        Text="Prevents Use Of Key Function?" />
            </td>
            <td class="auto-style4">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:CheckBox ID="chkNo3rdPartyMods" runat="server" 
        Text="3rd Party Modifications" AutoPostBack="True" OnCheckedChanged="chkNo3rdPartyMods_CheckedChanged" />
                <br />
                <asp:TextBox ID="txt3rdPartyModsDesc" runat="server" Rows="4" TextMode="MultiLine" Width="100%" Visible="False"></asp:TextBox>
                </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="rfv3rdPartyReason" runat="server" ControlToValidate="txt3rdPartyModsDesc" ErrorMessage="Describe the 3rd party modifications" ForeColor="Red" SetFocusOnError="True" Enabled="False">***</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:CheckBox ID="chkReproducibleOnUnModifiedCode" runat="server" 
        Text="Reproducible In Unmodified Code" />
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style1">
    <asp:CheckBox ID="chkIsEnhancementRequest" runat="server" 
        Text="Enhancement Request" />
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>
    <asp:Button ID="btnBuildDefect" runat="server" onclick="btnBuildDefect_Click" 
        Text="Build Defect" />
            </td>
            <td>&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:TextBox ID="txtOutput" runat="server" Rows="10" TextMode="MultiLine" Width="100%" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>
