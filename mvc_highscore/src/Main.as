package  {
	
	import flash.display.Sprite;
	import nl.berendweij.mvc_example.ApplicationFacade;
	
	public class Main extends Sprite
	{
		
		protected var facade : ApplicationFacade;
		
	    public function Main()
	    {
			startup();
	    }
		
		public function startup() : void
		{
			facade 					=	ApplicationFacade.getInstance();
			
			facade.startup(this);
			
		}
	}
}
