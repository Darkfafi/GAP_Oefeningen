package nl.berendweij.mvc_example.view.component 
{
	import flash.display.Sprite;
	import flash.text.TextField;
	
	/**
	 * ...
	 * @author bweij
	 */
	public class HighscoreMenu extends Sprite 
	{
		
		private var _highscores : TextField;
		
		public function HighscoreMenu() 
		{
			super();
			
			// simpel menu dat een overzicht van de highscores kan geven
			
			this.graphics.beginFill(0xCCCCCC);
			this.graphics.drawRect(0, 0, 300, 300);
			
			_highscores = new TextField();
			_highscores.width = 200;
			_highscores.height = 200;
			_highscores.x = 50;
			_highscores.y = 50;
			
			
			addChild(_highscores);
		}
		
		public function setHighcores( value : Array ) : void
		{
			_highscores.text = value.join("\n");
		}
		
		public function show() : void
		{
			visible = true;
		}
		
		public function hide() : void
		{
			visible = false;
		}
	}

}