module elib/elib-holder/lib

define holderImage( width : Int, height : Int, bgcolor : String, textcolor : String, text : String) {
	includeJS("holder.js")
	var textpart := if(text.length() > 0 ) "/text:" + text else "/text: "
	var classStr := "holder-image " + attribute("class","")
	
	<img class=classStr data-src="holder.js/" + width + "x" + height + "/auto/#" + bgcolor + ":#" + textcolor + textpart all attributes except "class" />
}