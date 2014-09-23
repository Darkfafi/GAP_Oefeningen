package nl.berendweij.mvc_example.view.component 
{
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	/**
	 * ...
	 * @author bweij
	 */
	public class Menu extends Sprite 
	{
		
		public static const ADD_HIGHSCORE : String = "addHighscore";
		public static const SHOW_HIGHSCORE : String = "showHighcore";
		
		private var addButton : Button;
		private var showButton : Button;
		
		public function Menu() 
		{
			super();
			
			// simpel menu met maar 2 knoppen
			// de addHighscore button is nu alleen maar om de data echt te vullen
			// normaal zou dit vanuit de game komen uiteraard als je het spel hebt gespeeld
			
			addButton = new Button();
			showButton = new Button();
			
			addButton.setLabel("add highscore");
			showButton.setLabel("show highscore");
			
			showButton.x = 110;
			
			addChild(addButton);
			addChild(showButton);
			
			addButton.addEventListener(MouseEvent.CLICK, addHighscore);
			showButton.addEventListener(MouseEvent.CLICK, showHighscore);
		}
		
		private function showHighscore(e:MouseEvent):void 
		{
			dispatch(SHOW_HIGHSCORE);
		}
		
		private function addHighscore(e:MouseEvent):void 
		{
			dispatch(ADD_HIGHSCORE);
		}
		
		private function dispatch(event : String) : void
		{
			dispatchEvent(new Event(event));
		}
		
	}

}