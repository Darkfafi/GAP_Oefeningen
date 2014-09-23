package nl.berendweij.mvc_example.view.mediator 
{
	import flash.display.DisplayObject;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class GameMediator extends Mediator
	{
		
		// dit is de 'mediator' van de Game
		
		public static const NAME : String = "GameMediator";
	
		public function GameMediator(viewComponent : Object = null)
		{
			super(NAME, viewComponent);
		}
	
		override public function listNotificationInterests() : Array
		{
			return	[
				
			];
		}
		
		override public function handleNotification(note : INotification) : void
		{
			
		}
		
		override public function onRegister() : void
		{
			
		}
		
		override public function onRemove() : void
		{
			
		}
		
		public function get game() : Main
		{
			return viewComponent as Main;
		}
		
		public function set game(value : Main) : void
		{
			viewComponent	=	value;
		}
		
		public function addChild(value : DisplayObject) : void
		{
			game.addChild(value);
		}
	}
}