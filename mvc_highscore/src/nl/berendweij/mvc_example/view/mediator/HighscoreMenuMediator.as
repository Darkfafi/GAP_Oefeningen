package nl.berendweij.mvc_example.view.mediator 
{
	import nl.berendweij.mvc_example.controller.constant.AppConstants;
	import nl.berendweij.mvc_example.view.component.HighscoreMenu;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;

	
	public class HighscoreMenuMediator extends Mediator
	{
		public static const NAME : String = "HighscoreMenuMediator";
	
		public function HighscoreMenuMediator(viewComponent : Object = null)
		{
			super(NAME, viewComponent);
		}
		
		override public function listNotificationInterests():Array 
		{
			return [
						
					];
		}
		
		override public function handleNotification( note:INotification ):void 
		{
			
		}
		
		public function set highscoreMenu(value : HighscoreMenu) : void
		{
			viewComponent	=	value;
		}
		
		public function get highscoreMenu() : HighscoreMenu
		{
			return viewComponent as HighscoreMenu;
		}
		
		public function show() : void
		{
			highscoreMenu.show();
		}
		
		public function hide() : void
		{
			highscoreMenu.hide();
		}
		
		public function setHighscores(value : Array) : void
		{
			highscoreMenu.setHighcores(value);
		}
	}
}