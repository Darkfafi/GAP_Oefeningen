package 
{
	import flash.display.Sprite;
	import flash.events.Event;
<<<<<<< HEAD
=======
	import flash.events.MouseEvent;
>>>>>>> 8af08b0f305f863f57d4e6aaa1b3e8c60230381a
	
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Main extends Sprite 
	{
<<<<<<< HEAD
		private var allBalls : Array = [];
=======
		
		private var _paraglider : Paraglider;
>>>>>>> 8af08b0f305f863f57d4e6aaa1b3e8c60230381a
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
<<<<<<< HEAD
			generateBalls(5);
			
			
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function generateBalls(amount : int):void 
		{
			for (var i : int = 0; i < amount; i++) {
				var ball : Ball;
				
				var mass : int = Math.floor(Math.random() * 20) + 10;
				var speed : int = Math.floor(Math.random() * 20) + 5;
				
				ball = new Ball(mass, speed);
				ball.x = 50 * i;
				ball.y = 200;
				addChild(ball);
				allBalls.push(ball);
				
				ball.target = allBalls[i - 1]; // <-- gives the target
			}
=======
			
			_paraglider = new Paraglider();
			
			addChild(_paraglider);
			
			stage.addEventListener(MouseEvent.CLICK, setTarget);
			addEventListener(Event.ENTER_FRAME, update);
		}
		
		private function setTarget(e:MouseEvent):void 
		{
			_paraglider.setTarget( new Vector2D(e.stageX, e.stageY) );
>>>>>>> 8af08b0f305f863f57d4e6aaa1b3e8c60230381a
		}
		
		private function update(e : Event) : void
		{
<<<<<<< HEAD
			for (var i : int = allBalls.length - 1; i >= 0; i--) {
				allBalls[i].update();
			}
=======
			_paraglider.update();
>>>>>>> 8af08b0f305f863f57d4e6aaa1b3e8c60230381a
		}
		
	}
	
}