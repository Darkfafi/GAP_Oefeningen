package 
{
	import flash.display.Sprite;

	public class Main extends Sprite
	{
		public function Main()
		{
			// de factory wordt aangemaakt
			var enemyShipFactory : EnemyShipFactory = new EnemyShipFactory();
			
			// we kiezen random een getal (0, 1 of 2)
			var randomNumber : int = Math.random() * 3;
			
			// we vragen de ruimteschepen fabriek om een ruimteschip te maken
			var enemy : EnemyShip = enemyShipFactory.makeEnemyShip(randomNumber);
			
			// het nieuwe ruimteschip mag gelijk acties ondernemen
			doEnemyStuff(enemy);		
		}
		
		private function doEnemyStuff( enemy : EnemyShip ) : void
		{
			enemy.followHeroShip();
			enemy.shoot();
		}
	}
}
