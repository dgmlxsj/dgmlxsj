using System;
using System.Windows.Forms;
class ClipBoard{
	
	private static string GetClipBoardText(){
		string text="";
		if(Clipboard.ContainsText(TextDataFormat.Text|TextDataFormat.UnicodeText)){
			text=Clipboard.GetText(TextDataFormat.Text|TextDataFormat.UnicodeText);
		}
		return text;

	}

	[STAThread]
	public static void Main(string[] args){
		string text=GetClipBoardText();
		Console.WriteLine(text);
	}

}
