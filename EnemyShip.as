package {

	public class EnemyShip {
	
		private var name 		:	String;
		private var speed		:	Number;
		private var directionX	:	Number;
		private var directionY	:	Number;
		private var damage		:	Number;
		
		public function getName() : String
		{
			return name;
		}
		
		public function setName(newName : String) : void
		{
			name = newName;
		}
		
		public function getDamage() : Number
		{
			return damage;
		}
		public function setDamage(newDamage : Number) : void
		{
			damage	=	newDamage;
		}
		
		public function followHeroShip() : void
		{
			trace(getName() + " is following the hero");
		}
		
		public function displayEnemyShip() : void
		{
			trace(getName() + " is on the screen");
		}
		
		public function enemyShipShoots() : void
		{
			trace(getName() + " attacks and does " + getDamage() + " damage to hero");
		}
		
	}
}
