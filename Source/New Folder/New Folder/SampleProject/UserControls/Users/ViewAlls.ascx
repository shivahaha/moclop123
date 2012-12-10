<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ViewAlls.ascx.cs" Inherits="SampleProject.UserControls.Users.ViewAlls" %>
<asp:Label ID="lbl" runat="server"></asp:Label>
<a href='javascript:void()' onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', '0-9');">0-9</a> <br />
<a href='javascript:void()' onclick="javascript:window.location.href=updateParameterByNameInURL('startwith', 'a');">a</a> <br />
<input type="checkbox" id="chkInActive" onchange="javascript:ChangInActive(this.checked);" />Include In-active
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