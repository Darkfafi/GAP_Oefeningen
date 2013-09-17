package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		public function Main()
		{
			/*
			 * 1. create UFOEnemy ship
			 * 	1.1 doEnemyStuff
			 * 2. Factory.makeEnemyShip(type : String)
			 * 	2.1 ook een BigEnemyShip aanmaken 
			 * 	
			 * 	
			 * 	setName("UFO Enemy Ship");
			06	         
			07	        setDamage(20.0);
			 */	

			//var ufo : UFOEnemyShip = new UFOEnemyShip();
			
			var enemyShipFactory : EnemyShipFactory = new EnemyShipFactory();
			var randomNumber : int = Math.random() * 2;
			var enemy : EnemyShip = enemyShipFactory.makeEnemyShip(randomNumber);
			
			
			doEnemyStuff(enemy);		
		}
		
		private function doEnemyStuff( enemy : EnemyShip ) : void
		{
			enemy.followHeroShip();
			enemy.enemyShipShoots();
		}
	}
}
