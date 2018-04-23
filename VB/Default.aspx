<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>ASPxImageSlider</title>
	<script type="text/javascript">
		function ImageSliderOnInit(s, e) {
			var items = document.getElementsByClassName("dxis-nbItem");
			assingMouseOverEventToItemCollection(items, s, 0);
		}
		function assingMouseOverEventToItemCollection(collection, slider, index) {
			if (collection.length > index) {
				_aspxAttachEventToElement(collection[index], "mouseover", function () { slider.SetActiveItemIndex(index); });
				assingMouseOverEventToItemCollection(collection, slider, index + 1);
			}
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<dx:ASPxImageSlider ID="ASPxImageSlider1" runat="server" ImageSourceFolder="~\Images\">
			<ClientSideEvents Init="ImageSliderOnInit" />
		</dx:ASPxImageSlider>
	</div>
	</form>
</body>
</html>