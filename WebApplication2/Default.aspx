<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>-Stacking configurator Tool</h1>
            </hgroup>
            <p>
                &nbsp;</p>
            <p>
                &nbsp;</p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Select&nbsp; the switches you want to stack :</h3>
    <p>Please select the switches you want to stack. Choose upto 8 switches and click stack to see incompatibilities and additional options: </p>
    <p style="height: 53px">
        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="Name" Enabled ="false" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Name] FROM [Switches]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Stack/Unstack switch " />
</p>
    <p style="height: 23px">
        &nbsp;</p>
    <p style="height: 45px">
        &nbsp;<asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name" style="margin-bottom: 0px" Enabled ="false" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
        </asp:DropDownList>
      
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Name] FROM [Switches]"></asp:SqlDataSource>
        <asp:Button ID="Button2" runat="server" Text="Stack/Unstack switch " OnClick="Button2_Click" />
</p>
    <p style="height: 24px">
        &nbsp;</p>
    <p style="height: 33px">
        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="Name" DataValueField="Name" Enabled ="false">
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Name] FROM [Switches]"></asp:SqlDataSource>

        <asp:Button ID="Button3" runat="server" Text="Stack/Unstack switch " OnClick="Button3_Click" />
    </p>
    <p></p>
<p style="height: 33px">
        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource4" DataTextField="Name" DataValueField="Name" Enabled ="false">
        </asp:DropDownList>
        
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Name] FROM [Switches]"></asp:SqlDataSource>

        <asp:Button ID="Button4" runat="server" Text="Stack/Unstack switch " OnClick="Button4_Click" />
</p>
    <p style="height: 33px">
        &nbsp;</p>
    <p style="height: 33px">
        &nbsp;</p>
    <p style="height: 33px">
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Validate Stacking" />
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Over10g] FROM [stacksWith10g] WHERE (([upperSwName] = @upperSwName) AND ([bottomSwName] = @bottomSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList2" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p style="height: 857px" id="Results">
        <div>
            <p>
                Compatibility between switches 1 and 2
            </p>
        </div>
        <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSource5" Visible ="False" CellPadding="4" ForeColor="#333333">
            <EditItemTemplate>
                Over10g:
                <asp:TextBox ID="Over10gTextBox" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Over10g:
                <asp:TextBox ID="Over10gTextBox" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Over10g:
                <asp:Label ID="Over10gLabel" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Over80g] FROM [stacksWith 80G] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList3" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Over80g] FROM [stacksWith 80G] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList5" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource13" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [over160g] FROM [stacksWith160g] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList5" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView2" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource6" GridLines="Both" Visible="false">
            <EditItemTemplate>
                Over80g:
                <asp:TextBox ID="Over80gTextBox" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Over80g:
                <asp:TextBox ID="Over80gTextBox" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Over80g:
                <asp:Label ID="Over80gLabel" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Over10g] FROM [stacksWith10g] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList4" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList5" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [over160g] FROM [stacksWith160g] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList4" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView3" runat="server" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="#333333" Visible ="false">
            <EditItemTemplate>
                over160g:
                <asp:TextBox ID="over160gTextBox" runat="server" Text='<%# Bind("over160g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                over160g:
                <asp:TextBox ID="over160gTextBox" runat="server" Text='<%# Bind("over160g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                over160g:
                <asp:Label ID="over160gLabel" runat="server" Text='<%# Bind("over160g") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
        </asp:FormView>
                <div>
            <p>
                Compatibility between switches 2 and 3
            </p>
        </div>
        <asp:FormView ID="FormView4" runat="server" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="#333333" Visible ="False">
            <EditItemTemplate>
                Over10g:
                <asp:TextBox ID="Over10gTextBox" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                Over10g:
                <asp:TextBox ID="Over10gTextBox" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Over10g:
                <asp:Label ID="Over10gLabel" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />

            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Over80g] FROM [stacksWith 80G] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList4" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Over10g] FROM [stacksWith10g] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList4" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:FormView ID="FormView5" runat="server" DataSourceID="SqlDataSource9" Visible ="False">
            <EditItemTemplate>
                Over80g:
                <asp:TextBox ID="Over80gTextBox" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Over80g:
                <asp:TextBox ID="Over80gTextBox" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Over80g:
                <asp:Label ID="Over80gLabel" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [over160g] FROM [stacksWith160g] WHERE (([bottomSwName] = @bottomSwName) AND ([upperSwName] = @upperSwName))">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="bottomSwName" PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DropDownList3" Name="upperSwName" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
                <div>
            <p>
                Compatibility between switches 3 and 4
            </p>
        </div>
        <asp:FormView ID="FormView6" runat="server" DataSourceID="SqlDataSource10" Visible ="False">
            <EditItemTemplate>
                over160g:
                <asp:TextBox ID="over160gTextBox" runat="server" Text='<%# Bind("over160g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                over160g:
                <asp:TextBox ID="over160gTextBox" runat="server" Text='<%# Bind("over160g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                over160g:
                <asp:Label ID="over160gLabel" runat="server" Text='<%# Bind("over160g") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:FormView ID="FormView7" runat="server" DataSourceID="SqlDataSource11" Visible ="False">
            <EditItemTemplate>
                Over10g:
                <asp:TextBox ID="Over10gTextBox" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Over10g:
                <asp:TextBox ID="Over10gTextBox" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Over10g:
                <asp:Label ID="Over10gLabel" runat="server" Text='<%# Bind("Over10g") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:FormView ID="FormView8" runat="server" DataSourceID="SqlDataSource12" Visible ="False">
            <EditItemTemplate>
                Over80g:
                <asp:TextBox ID="Over80gTextBox" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Over80g:
                <asp:TextBox ID="Over80gTextBox" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Over80g:
                <asp:Label ID="Over80gLabel" runat="server" Text='<%# Bind("Over80g") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:FormView ID="FormView9" runat="server" DataSourceID="SqlDataSource13" Visible ="False">
            <EditItemTemplate>
                over160g:
                <asp:TextBox ID="over160gTextBox" runat="server" Text='<%# Bind("over160g") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                over160g:
                <asp:TextBox ID="over160gTextBox" runat="server" Text='<%# Bind("over160g") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                over160g:
                <asp:Label ID="over160gLabel" runat="server" Text='<%# Bind("over160g") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
</p>
</asp:Content>
