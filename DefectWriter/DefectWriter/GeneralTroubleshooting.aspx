<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GeneralTroubleshooting.aspx.cs" Inherits="DefectWriter.GeneralTroubleshooting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 22px;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            width: 150px;
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    s<title>Bootstrap Case</title><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1"><link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"><script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script><script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script><div class="container" style="width:auto">
      <h2>General Troubleshooting</h2>
      <ul class="nav nav-tabs">
        <li class="active"><a data-toggle="tab" href="#home">Home</a></li>
        <li><a data-toggle="tab" href="#document">Document</a></li>
        <li><a data-toggle="tab" href="#webex">Webex</a></li>
            <%--<li><a data-toggle="tab" href="#environment">Environment</a></li>--%>
        <li><a data-toggle="tab" href="#search">Search</a></li>
            <%--<li><a data-toggle="tab" href="#screenshots">Screenshots</a></li>--%>
        <li><a data-toggle="tab" href="#duplicate">Duplicate</a></li>
        <li><a data-toggle="tab" href="#retrieve">Retrieve</a></li>
        <li><a data-toggle="tab" href="#notes">Notes</a></li>
      </ul>
  
        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <h3>General Troubleshooting Instructions</h3>
                <p>Fill out the form on each tab, then click the button to build your </p>
            </div>
            <div id="document" class="tab-pane fade">
                <div class="container" style="width:auto">
                    <ul class="nav nav-tabs">
                        <li><a data-toggle="tab" href="#environment">Environment</a></li>
                        <li><a data-toggle="tab" href="#IssueDetails">Issue Details</a></li>
                    </ul>
                    <div id="environment" class="tab-pane fade in active">
                        <table style="width: 100%;">
                            <tr >
                                <td class="control-label col-sm-2 text-nowrap text-right">
                                    <div class="form-group">
                                        <label class="control-label col-sm-2" for="rdoClientType">Client Type</label>
                                    </div>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rdoClientType" runat="server" RepeatDirection="Horizontal">
                                        <asp:ListItem>Desktop</asp:ListItem>
                                        <asp:ListItem>Web</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td class="control-label col-sm-2 text-nowrap text-right" style="width: 502px" align="right">
                                    <label class="control-label col-sm-2" for="txtClientType">Client environment</label></td>
                                <td class="auto-style2">
                                    <div class="form-group">
                                        <div class="col-sm-10">
                                            <asp:TextBox ID="txtClientType" class="form-control" runat="server" placeholder="Client Environment" ToolTip="Ex: Fat client 112 or Web Browser / Syracuse version 8.5.0"></asp:TextBox>
                                        </div>
                                    </div>
                                </td>
                                <td class="auto-style2"></td>
                            </tr>
                            <tr>
                                <td class="control-label col-sm-2 text-nowrap text-right" style="width: 502px" align="right">
                                    <label class="control-label col-sm-2" for="txtOperatingSystem">Server Operating system</label>
                                </td>
                                <td>
                                    <div class="col-sm-10">
                                        <asp:TextBox ID="txtServerOperSystem" class="form-control" runat="server" placeholder="Operating System Details"></asp:TextBox>
                                    </div>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </div>
                    <div id="IssueDetails" class="tab-pane fade">
                        <table style="width: 100%;">
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="tabDesc" for="description">Description:</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtDescription" CssClass="form-control" runat="server" placeholder="Detailed Description of Issue"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="tabWhat" for="txtWhat">What Were They Doing?</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtWhat" runat="server" CssClass="form-control" placeholder="What Were They Doing When They Got The Issue?"></asp:TextBox>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblVersion" for="txtVersion">Customer Version</label></td>
                            <td>
                                <asp:TextBox ID="txtVersion" CssClass="form-control" runat="server" placeholder="Document Client and Server Version"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="control-label col-sm-2 text-nowrap text-right" align="right">
                                <label class="control-label col-sm-2 text-justify=text-right id="lblPatchLevel" for="txtPatchLevel">Patch Level</label></td>
                            <td class="auto-style1">
                                <asp:TextBox ID="txtPatchLevel" CssClass="form-control" runat="server" placeholder="Document the patch level of X3"></asp:TextBox>
                            </td>
                            <td class="auto-style1">&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="tabWhere" for="what">Where Is It Happening?</label></td>
                            <td>
                                <asp:TextBox ID="txtWhereIsItHappening" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblFirstTime" for="what">First Time Happening?</label></td>
                            <td>
                                <asp:CheckBox ID="chkFirstTimeHappening" runat="server" CssClass="form-control" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblHowDatEntered" for="what">How Was the Data Entered?</label></td>
                            <td>
                                <asp:TextBox ID="txtHowWasDataEntered" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtWhatHasChanged">What Has Changed</label>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtWhatHasChanged" placeholder="What Has Changed?" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblFrequency" for="what">Frequency</label></td>
                            <td>
                                <asp:TextBox ID="txtFrequency" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblAllUsersOrSome" for="what">All Users or Some?</label></td>
                            <td>
                                <asp:TextBox ID="txtAllUsersOrSome" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblHasModifications" for="what">Has Modifications</label></td>
                            <td>
                                <asp:CheckBox ID="chkHasModifications" runat="server" CssClass="form-control" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblIfModifiedHow" for="what">If Modifications, What?</label></td>
                            <td>
                                <asp:TextBox ID="txtIfModificationsWhat" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblQuestionsAnswers" for="what">Questions/Answers</label></td>
                            <td>
                                <asp:TextBox ID="txtQuestionsAndAnswers" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblWhatHasBeenTried" for="what">What Have You Already Tried?</label></td>
                            <td>
                                <asp:TextBox ID="txtWhatHaveYouTried" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblWhatHaveTheyTried" for="what">What Have They Already Tried?</label></td>
                            <td>
                                <asp:TextBox ID="txtWhatHaveTheyTried" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblNextSteps" for="what">Next Steps</label></td>
                            <td>
                                <asp:TextBox ID="txtNextSteps" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="control-label col-sm-2 text-nowrap text-right">
                                <label class="control-label col-sm-2" id="lblSolution" for="what">Solution</label></td>
                            <td>
                                <asp:TextBox ID="txtSolution" runat="server" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right"><label class="control-label col-sm-2 text-nowrap text-right" id="lblAllScreenshotsAttached">Are All Pertinent Screenshots Attached To Case</label></td>
                            <td>
                                <asp:CheckBox runat="server" ID="chkAreScreenshotsAttached"/>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    </div>
                </div>

                <p>

                    <%-- <form class="form-horizontal" role="form">
                    <div class="form-group">
                      <label class="control-label col-sm-2" id="tabDesc" for="description">Description:</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="description" placeholder="Detailed Description of Issue" />
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" id="tabWhat" for="what">What?</label>
                      <div class="col-sm-10">
                        
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="control-label col-sm-2" id="tabVersion" for="version">Version</label>
                      <div class="col-sm-10">
                          <input type="text" class="form-control id="version" placeholder="Version" />
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-sm-offset-2 col-sm-10">
                    
                      </div>
                    </div>
                  </form>--%>
                </p>
            </div>
            <div id="webex" class="tab-pane fade">
                <h3>Connect Via web-ex</h3>
                <td class="control-label col-sm-2 text-nowrap text-right">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="txtWebExLink">Web-ex Link</label>
                        <asp:TextBox ID="txtWebExLink" runat="server" CssClass="form-control" Width="75%"></asp:TextBox>
                    </div>
                </td>                
            </div>
            <%--            <div id="environment" class="tab-pane fade">
                <h3>Document Environment</h3>

            </div>--%>
            <div id="search" class="tab-pane fade">
                <h3>Search</h3>
                <div class="form-group">
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtFusion">Fusion KB</label>
                            </td>
                            <td><asp:TextBox ID="txtFusion" runat="server" placeholder="Fusion KB Link" CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox></td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtLISA">LISA Search Terms</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtLISA" runat="server" placeholder="LISA Search Terms" CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right">SAM</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtSAM" runat="server" placeholder="SAM Search Terms" CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtPatchFinder">Patch Finder Search Terms</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtPatchFinder" placeholder="Patch Finder Search Terms" runat="server" CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtGoogle">Google Search Terms</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtGoogle" runat="server" placeholder="Google Search Terms, seperate different searches with semicolon" CssClass="form-control" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </div>              
            </div>
            <%--<div id="screenshots" class="tab-pane fade">
                <h3>Ask for Screenshots</h3>
                <p></p>
            </div>--%>
            <div id="duplicate" class="tab-pane fade">
                <h3>Attempt to duplicate issuein-house</h3>
                <div class="form-group">
                    <table style="width: 100%;">
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtStepsToDupe">Steps To Duplicate</label>
                            </td>
                            <td>
                                <asp:TextBox ID="txtStepsToDupe" CssClass="form-control" runat="server" placeholder="Best attempt to document steps to duplicate" Rows="4" TextMode="MultiLine"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right" for="txtVersionDuped">Version Duplicated</label>
                            </td>
                            <td>
                                <asp:CheckBox runat="server" ID="chkIsDuplicable" text="Is Duplicable"/>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td>
                                <asp:TextBox runat="server" ID="txtVersionDuped" CssClass="form-control" placeholder="Version Duplicated"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td>
                                <asp:CheckBox runat="server" ID="chkDiscussedWithMentor" Text="Discussed With Mentor?" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td>
                                <asp:TextBox ID="txtLisaTicketNumber" runat="server" CssClass="form-control" placeholder="LISA Ticket Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3"><label class="control-label col-sm-2 text-nowrap text-right">Not Duplicable</label></td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtAdditionalDetail" runat="server" placeholder="Additional Detail" CssClass="form-control" Rows="6" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td>
                                <asp:CheckBox ID="chkIsSQlProfilerAttached" runat="server" Text="SQL Profiler Attached" />
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 150px">&nbsp;</td>
                            <td>
                                <asp:CheckBox ID="chkIsX3DebuggerTraceAttached" runat="server" Text="X3 Debugger Trace Attached" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="retrieve" class="tab-pane fade">
                <h3>Retrieve</h3>
                <div class="form-group">
                    <table style="width:100%;">
                        <tr>
                            <%--<td style="width: 150px">&nbsp;</td>--%>
                            <td>
                                <asp:CheckBox ID="chkIsTraDirectoryRecovered" runat="server" Text="TRA Directory Recovered?" />
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <%--<td style="width: 150px">&nbsp;</td>--%>
                            <td>
                                <asp:CheckBox ID="chkIsALogSupRecovered" runat="server" Text="ALOGSUP Log Recovered?" />
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div id="notes" class="tab-pane fade">
                <h3>Document In Case Notes</h3>
                <div class="form-group">
                    <table style="width:100%;">
                        <tr>
                            <%--<td style="width: 150px">
                                <label class="control-label col-sm-2 text-nowrap text-right">Notes:</label>
                            </td>--%>
                            <td>
                                <asp:TextBox runat="server" ID="txtNotes" placeholder="Case Notes" TextMode="MultiLine" Rows="15" CssClass="form-control"></asp:TextBox>
                            </td>
                            <%--<td>&nbsp;</td>--%>
                        </tr>
                    </table>
                </div>

                <div class="container" style="width:auto">
                    <asp:HiddenField ID="TabName" runat="server" />
                </div>
            </div>
        </div>
        <p>&nbsp;</p>
        <p>&nbsp;</p>

    </div>
  


    <asp:Button ID="btnEmail" runat="server" Text="Email Template" OnClick="btnEmail_Click" />
    <%--<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%></asp:Content>
