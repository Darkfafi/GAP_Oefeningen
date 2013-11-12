package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Berend Weij
	 */
	public class Ball extends Sprite
	{
		
		private var _velocity	:	Vector2D	=	new Vector2D(3, 3);
		private var _position	:	Vector2D	=	new Vector2D(0, 0);
		
		private var _maxSpeed	:	Number		=	10;
		private var _mass		:	Number		=	50;
		
		public function Ball() 
		{
			this.graphics.beginFill(0xFF0000);
			this.graphics.drawCircle(0, 0, 15);
		}
		
		public function update():void {
			
			// keep it witin its max speed
			_velocity.truncate(_maxSpeed);
			
			
			// move it
			_position = _position.add(_velocity);
			
			// set the x and y, using the super call to avoid this class's implementation
			x = _position.x;
			y = _position.y;
			
			/*
			// rotation = the velocity's angle converted to degrees
			rotation = _velocity.angle * 180 / Math.PI;*/
		}
		
		public function seek(target:Vector2D) : void
		{
			var desiredVelocity:Vector2D = target.subtract(_position).normalize().multiply(_maxSpeed); //subtract the position from the target to get the vector from the vehicles position to the target. Normalize it then multiply by max speed to get the maximum velocity from your position to the target.
			var steeringForce:Vector2D = desiredVelocity.subtract(_velocity); //subtract velocity from the desired velocity to get the force vector
			_velocity.add(steeringForce.divide(_mass)); //divide the steeringForce by the mass(which makes it the acceleration), then add it to velocity to get the new velocity
		}
	}

}