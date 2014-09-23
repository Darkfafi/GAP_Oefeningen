package nl.berendweij.mvc_example.controller.command {
	import nl.berendweij.mvc_example.controller.constant.AppConstants;
	import nl.berendweij.mvc_example.model.proxy.HighscoreProxy;
	import nl.berendweij.mvc_example.model.vo.HighscoreVO;
	import nl.berendweij.mvc_example.view.component.HighscoreMenu;
	import nl.berendweij.mvc_example.view.component.Menu;
	import nl.berendweij.mvc_example.view.mediator.GameMediator;
	import nl.berendweij.mvc_example.view.mediator.HighscoreMenuMediator;
	import nl.berendweij.mvc_example.view.mediator.MenuMediator;
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;

		
	/**
	 * Startup the PureMVC apparatus, preparing the app for use. */
	public class StartupCommand extends SimpleCommand
	{
		override public function execute(note : INotification) : void
		{
			// elk PureMVC project heeft een startupcommand
			// hierin registreer je alle proxies, mediators en je maakt alle viewcomponenten aan
			// als het een groot project is dan deel je de startupcommand op in
			// initmodelcommand & initviewcommand
			// als deze command is uitgevoerd dan kan de applicatie daadwerkelijk starten
			
			// Get the application instance from the note
			var game : Main = note.getBody() as Main;
			
			// Register the Proxys
			// we maken een nieuwe proxy aan waar we de highscores in gaan bij houden
			// we geven ook gelijk het 'data' object door. Dit is het object
			// dat deze Proxy mag beheren.
			facade.registerProxy(	new HighscoreProxy(	new HighscoreVO()	));
			
			// create new HighscoreMenu
			// we maken een highscore menu aan. Dit is een 'viewcomponent'
			var highscoreMenu : HighscoreMenu = new HighscoreMenu();
			highscoreMenu.x = 150;
			highscoreMenu.y = 150;
			highscoreMenu.hide();
			var menu : Menu = new Menu();
			menu.x = 10;
			menu.y = 10;
			
			// Register the Mediators
			// de mediator zit 'tussen' de MVC pattern en de viewcomponent in
			// zodoende is er 1 doorgeef luik naar je 'view'
			// je 'view' is je visuele representatie van je app / game
			var gameMediator : GameMediator = new GameMediator(	game	);
			facade.registerMediator(	gameMediator	);
			facade.registerMediator(	new HighscoreMenuMediator(	highscoreMenu	)	);
			facade.registerMediator(	new MenuMediator(	menu	)	);
			
			
			// add the viewcomponents to the stage
			gameMediator.addChild(menu);
			gameMediator.addChild(highscoreMenu);
			
			
		}
	}
}