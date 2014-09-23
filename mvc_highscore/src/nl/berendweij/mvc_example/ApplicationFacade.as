package nl.berendweij.mvc_example {
	import nl.berendweij.mvc_example.controller.command.ShowHighscoreCommand;
	import nl.berendweij.mvc_example.controller.command.StartupCommand;
	import nl.berendweij.mvc_example.controller.constant.AppConstants;
	import org.puremvc.as3.patterns.facade.Facade;
	import nl.berendweij.mvc_example.controller.command.SaveHighscoreCommand;
	
	
	public class ApplicationFacade extends Facade
	{
		
		public static function getInstance() : ApplicationFacade 
		{
			if ( instance == null ) instance = new ApplicationFacade();
			return instance as ApplicationFacade;
		}

		/**
		 * Initialize the Controller and Register the Commands.
		 */
		override protected function initializeController() : void
		{
			// hier worden constants gekoppeld met commands
			// als vervolgens ergens in de app een notification wordt verzonden
			// dan wordt de desbetreffende command uitgevoerd
			super.initializeController();
			registerCommand(AppConstants.STARTUP, StartupCommand);
			registerCommand(AppConstants.SAVE_HIGHSCORE, SaveHighscoreCommand);
			registerCommand(AppConstants.SHOW_HIGHSCORES, ShowHighscoreCommand);
		}
		
		/**
		 * A convenience method for starting up the PureMVC * apparatus from the application.
		 */
		public function startup(game : Main) : void 
		{
			sendNotification(AppConstants.STARTUP, game);
		}

		
		
	}
}