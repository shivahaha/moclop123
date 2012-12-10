<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewAlls.ascx.cs" Inherits="SD.Web.UerControls.Directory.ViewAlls" %>


<asp:Label ID="lbl" runat="server"></asp:Label>
<a href="javascript:void()"  onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', '0-9');">
0-9</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'a');">
A</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'b');">
B</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'c');">
C</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'd');">
D</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'e');">
E</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'f');">
F</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'g');">
G</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'h');">
H</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'i');">
I</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'k');">
K</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'l');">
L</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'm');">
M</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'n');">
N</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'o');">
O</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'p');">
P</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'q');">
Q</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 's');">
S</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 't');">
T</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'v');">
U</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'w');">
W</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'x');">
X</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'y');">
Y</a>
<a href="javascript:void()" onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'z');">
Z</a>
<input id="chkInActive" onchange="javascript:ChangInActive(this.checked);" 
    type="checkbox" />Include In-active
<script type="text/javascript">
    $(document).ready(function () {
        var isActive = getParameterByNameFromURL('isActive');
        if (isActive == '0') {
            $('#chkInActive').attr('checked', 'checked');
        }
        else {
            $('#chkInActive').removeAttr('checked');
        }
    });

    function ChangInActive(isActive) {
        var url = isActive ? updateParameterByNameInURL('isActive', '0') : updateParameterByNameInURL('isActive', '1');
        window.location.href = url;
    }

    function getParameterByNameFromURL(name) {
        name = name.replace(/[\[]/, "\\\[").replace(/[\]]/, "\\\]");
        var regexS = "[\\?&]" + name + "=([^&#]*)";
        var regex = new RegExp(regexS);
        var results = regex.exec(window.location.search);
        if (results == null)
            return "";
        else
            return decodeURIComponent(results[1].replace(/\+/g, " "));
    }

    function updateParameterByNameInURL(name, value) {
        var retVal = window.location.href;
        var re = new RegExp("([?|&])" + name + "=.*?(&|$)", "i");
        if (retVal.match(re))
            retVal = retVal.replace(re, '$1' + name + "=" + value + '$2');
        else {
            if (retVal.indexOf('?') > -1) {
                retVal = retVal + '?' + name + '=' + value;
            }
            else {
                retVal = retVal + '&' + name + '=' + value;

            }
        }

        return retVal;
    }
</script>

<div>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
</div>


