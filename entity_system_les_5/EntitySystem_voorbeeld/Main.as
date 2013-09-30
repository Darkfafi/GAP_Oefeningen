package 
{
	import systems.RenderSystem;
	import systems.MovementSystem;
	import flash.events.Event;
	import components.VelocityComponent;
	import components.PositionComponent;
	import components.DisplayComponent;
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		
		private var _engine	:	Engine;
		
		public function Main()
		{
			
			// we maken als eerste de engine aan. Deze is het belangrijkste
			_engine	=	new Engine();
			
			// vervolgens initieren wij de systemen
			_engine.addSystem(new MovementSystem());
			_engine.addSystem(new RenderSystem());			
			
			// we maken de componenten aan. Hier kan het systeem zijn 'data' in opslaan
			var display	:	DisplayComponent		=	new DisplayComponent();
			display.view							=	new CarImage();
			
			var position	:	PositionComponent	=	new PositionComponent();
			position.x								=	400;
			position.y								=	200;
			
			var velocity	:	VelocityComponent	=	new VelocityComponent();
			velocity.velocityX						=	-5;
			velocity.velocityY						=	0;
			
			// als laatste maken we onze entity aan
			var car	:	Entity						=	new Entity(display, position, velocity);
			
			// registreer de auto bij de engine
			_engine.addEntity(car);
			
			// laat de auto ook visueel zien
			addChild(display.view);
			
			// start het updaten van het spel
			stage.addEventListener(Event.ENTER_FRAME, updateEngine);
		}

		private function updateEngine(e : Event) : void
		{
			_engine.update();
		}
	}
}
