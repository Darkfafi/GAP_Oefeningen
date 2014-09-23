package nl.berendweij.mvc_example.controller.command 
{
	import nl.berendweij.mvc_example.model.proxy.HighscoreProxy;
	import nl.berendweij.mvc_example.view.mediator.HighscoreMenuMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;


	
	public class ShowHighscoreCommand extends SimpleCommand
	{
		override public function execute(note: INotification) : void
		{
			// simpel commando
			// we halen alleen de referenties op naar de highscoreproxy en mediator.
			// we halen de relevantie data op in de proxy en geven die via de mediator door aan de viewcomponent
			// lekker los allemaal.
			var highscoreProxy : HighscoreProxy = facade.retrieveProxy(HighscoreProxy.NAME) as HighscoreProxy;
			var highscoreMenuMediator : HighscoreMenuMediator = facade.retrieveMediator(HighscoreMenuMediator.NAME) as HighscoreMenuMediator;
			
			var highscores : Array = highscoreProxy.highscores;
			highscoreMenuMediator.setHighscores(highscores);
			highscoreMenuMediator.show();
		}
	}
}