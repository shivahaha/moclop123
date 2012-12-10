<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Address.aspx.cs" Inherits="LocNB6A_MockProject._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 171px;
        }
    </style>
</head>
<body>
    <table style="width:100%;">
        <tr>
            <td class="style1">
                AddressID</td>
            <td>
                <input id="Text1" type="text" /></td>
        </tr>
        <tr>
            <td class="style1">
                Postcode</td>
            <td>
                <input id="Text2" type="text" /></td>
        </tr>
        <tr>
            <td class="style1">
                TownID</td>
            <td>
                <input id="Text3" type="text" /></td>
        </tr>
        <tr>
            <td class="style1">
                CountyID</td>
            <td>
                <input id="Text4" type="text" /></td>
        </tr>
        <tr>
            <td class="style1">
                CountryID</td>
            <td>
                <input id="Text5" type="text" /></td>
        </tr>
    </table>
    <div>
        <input id="Submit1" type="submit" value="submit" />&nbsp;&nbsp;&nbsp;
        <input id="Reset1" type="reset" value="reset" /></div>
</body>
</html>
