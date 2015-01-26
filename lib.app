module elib/elib-holder/lib

define holderImage( width : Int, height : Int, bgcolor : String, textcolor : String, text : String, asBackground : Bool) {
	includeJS("holder.js")
	var dataSrc := "holder.js/" + width + "x" + height + "/auto/#" + bgcolor + ":#" + textcolor + "/text:"
					+ ( if(text.length() > 0 ) filterUtils.escapeHtml(text) else " " )
	
	if(asBackground){
		<div data-background-src="?"+dataSrc class="holderjs" all attributes></div>
	} else {
		<img data-src=dataSrc all attributes></img>
	}
}

native class org.webdsl.tools.Utils as filterUtils{
	static escapeHtml(String) : String
}