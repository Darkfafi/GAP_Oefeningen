package nl.berendweij.mvc_example.view.component 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	import flash.text.TextFormat;
	
	/**
	 * ...
	 * @author bweij
	 */
	public class Button extends Sprite 
	{
		
		private var _label : TextField;
		
		public function Button() 
		{
			super();
			
			// we maken een basis button aan met een zwarte achtergrond en met witte tekst
			this.graphics.beginFill(0x000000);
			this.graphics.drawRect(0, 0, 100, 20);
			_label = new TextField();
			_label.width = 100;
			_label.height = 20;
			addChild(_label);
		}
		
		public function setLabel(value : String) : void
		{
			var textFormat : TextFormat = new TextFormat();
			textFormat.color = 0xFFFFFF;
			textFormat.align = "center";
			
			_label.text = value;
			_label.setTextFormat(textFormat);
			
		}
		
	}

}