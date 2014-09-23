package nl.berendweij.mvc_example.controller.command 
{
	import nl.berendweij.mvc_example.model.proxy.HighscoreProxy;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;


	
	public class SaveHighscoreCommand extends SimpleCommand
	{
		override public function execute(note: INotification) : void
		{
			// dit command gaat af als de notification SAVE_HIGHSCORE wordt geroepen
			// een command is als een 'event'. Hij gaat 1 keer af
			// eerst slaan de de 'body' van de sendnotification op als string
			// zodoende hebben we een referentie naar hetgeen dat naar dit command is gestuurd (in dit geval
			// vanuit de MenuMediator)
			var score : String = note.getBody() as String;
			
			// we hebben geen 'directe' harde koppeling naar de highscoreproxy
			// dat is mooi want dat voorkomt een dependency
			// maar dan moeten we hem wel in runtime ophalen
			var highscoreProxy : HighscoreProxy = facade.retrieveProxy(HighscoreProxy.NAME) as HighscoreProxy;
			
			// vervolgens roepen we de functie aan op de proxy om de score op te slaan
			highscoreProxy.addHighscore(score);
		}
	}
}