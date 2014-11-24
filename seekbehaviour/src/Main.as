package 
{
	import flash.display.Sprite;
	import flash.events.Event;
	
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Main extends Sprite 
	{
		private var allBalls : Array = [];
		
		public function Main():void 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
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
		}
		
		private function update(e : Event) : void
		{
			for (var i : int = allBalls.length - 1; i >= 0; i--) {
				allBalls[i].update();
			}
		}
		
	}
	
}