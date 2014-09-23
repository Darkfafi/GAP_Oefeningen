package nl.berendweij.mvc_example.model.proxy 
{
	import nl.berendweij.mvc_example.model.vo.HighscoreVO;
	import org.puremvc.as3.patterns.proxy.Proxy;
	
	public class HighscoreProxy extends Proxy
	{
		// elke proxy en mediator heeft een naam
		// daardoor kunnen we hem in runtime ophalen
		public static const NAME: String = "HighscoreProxy";
		
		// elke proxy krijgt altijd een data object door als hij wordt aangemaakt
		// dit is altijd een VO waarin de proxy zijn data op kan slaan
		public function HighscoreProxy(data : Object = null)
		{
			super(HighscoreProxy.NAME, data);
		}
		
		// standaard functie in PureMVC die wordt uitgevoerd als de proxy daadwerkelijk aangemaakt is
		override public function onRegister() : void
		{
		}
		
		override public function onRemove() :void
		{
		
		}
		
		// getter en setter om bij de VO te komen
		// een VO is een Value Object
		// oftewel: een simpel object waar alleen data in wordt opgeslagen
		private function get highscoreVO() : HighscoreVO
		{
			return data as HighscoreVO;
		}
		
		public function get highscores() : Array
		{
			return highscoreVO.highscores;
		}
		
		// publieke functie om highscores toe te kunnen voegen
		public function addHighscore(score : String) : void
		{
			highscoreVO.highscores.push(score);
		}
		
	}
}