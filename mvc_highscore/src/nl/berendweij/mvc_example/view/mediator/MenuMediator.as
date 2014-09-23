package nl.berendweij.mvc_example.view.mediator 
{
	import flash.events.Event;
	import nl.berendweij.mvc_example.controller.constant.AppConstants;
	import nl.berendweij.mvc_example.view.component.HighscoreMenu;
	import nl.berendweij.mvc_example.view.component.Menu;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;

	
	public class MenuMediator extends Mediator
	{
		public static const NAME : String = "MenuMediator";
	
		public function MenuMediator(viewComponent : Object = null)
		{
			super(NAME, viewComponent);
			
			menu.addEventListener(Menu.ADD_HIGHSCORE, addHighscore);
			menu.addEventListener(Menu.SHOW_HIGHSCORE, showHighscore);
		}
		
		private function showHighscore(e:Event):void 
		{
			facade.sendNotification(AppConstants.SHOW_HIGHSCORES);
		}
		
		private function addHighscore(e:Event):void 
		{
			// deze score zou uiteraard normaal gezien vanuit de game komen
			// als de game (de view component) een event dispatcht dat hij klaar is
			// dan pakt de GameMediator dat op en send de notification SAVE_HIGHSCORE
			// maar voor nu 'faken' we het als je op de knop klikt in dit voorbeeld
			var score : String = "speler " + Math.round(Math.random() * 500);
			facade.sendNotification(AppConstants.SAVE_HIGHSCORE, score);
		}
		
		public function set menu(value : Menu) : void
		{
			viewComponent	=	value;
		}
		
		public function get menu() : Menu
		{
			return viewComponent as Menu;
		}
		
	}
}