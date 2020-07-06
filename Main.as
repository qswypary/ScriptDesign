package 
{
	import flash.display.MovieClip;
	import flash.events.MouseEvent;
	
	public class Main extends MovieClip
	{
		var startp:StartPage;
		var hillp:HillPage;
		var pondp:PondPage;
		
		public function Main()
		{
			startp = new StartPage();
			hillp = new HillPage();
			pondp = new PondPage();
			
			startp.bhill.addEventListener(MouseEvent.CLICK, onStartBhillClicked);
			startp.bpond.addEventListener(MouseEvent.CLICK, onStartBpondClicked);
			hillp.bback.addEventListener(MouseEvent.CLICK, onHillBbackClicked);
			pondp.bback.addEventListener(MouseEvent.CLICK, onPondBbackClicked);
			
			addChild(startp);
		}
		
		function onStartBhillClicked(event:MouseEvent):void
		{
			addChild(hillp);
			removeChild(startp);
		}
		
		function onStartBpondClicked(event:MouseEvent):void
		{
			addChild(pondp);
			removeChild(startp);
		}
		
		function onHillBbackClicked(event:MouseEvent):void
		{
			addChild(startp);
			removeChild(hillp);
		}
		
		function onPondBbackClicked(event:MouseEvent):void
		{
			addChild(startp);
			removeChild(pondp);
		}
	}
}