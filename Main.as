package
{
	import com.flashloaded.as3.PhotoFlow;
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.StageDisplayState;
	import flash.events.Event;
	
	//[SWF(frameRate = "30", width = "2560", height = "1600", backgroundColor = "#e9eaea")]
	[SWF(frameRate = "30", width = "800", height = "600", backgroundColor = "#e9eaea")]
	/**
	 * ...
	 * @author James Wang
	 */
	public class Main extends Sprite 
	{
		private var pf:PhotoFlow;
		
		public function Main() 
		{
			if (stage) init();
			else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			// entry point
			
			//fullscreen();			
			pf = new PhotoFlow();	
			configPhotoFlow();		
			
			addChild(pf);
			pf.x = 200;
			pf.y = 200;
			
		}
		
		private function configPhotoFlow():void 
		{
			pf.xmlURL = "photos.xml";
			pf.defaultIndex = 22;
			pf.showReflection = true;			
			pf.nameDistance = 0;
			pf.nameBold = false;
			pf.nameColor = 0x0;
			pf.nameEmbed = false;
			pf.nameItalic = false;
			pf.namePosition = "bottom center";
			pf.nameSize = 20;
			pf.showName = true;			
			pf.distance = 40;
			pf.motionSpeed = 5;
			pf.photoAngle = 20;
			pf.photoHeight = 150;
			pf.photoWidth = 150;
			pf.resizeImage = "toFit";
			pf.spacing = 60;
			pf.view = 60;
			pf.autoFlip = false;
			pf.flipSoundClass = "FlipSound";
			pf.playFlipSound = false;;
			pf.preloadSet = 0;
			pf.selectedScale = 2.2;
			pf.selectedY = 30;
			pf.useMouseWheel = true;
			
			pf.zoomScale = 1.1;
			pf.zoomType = "none";
			pf.preloadHolderAlpha = 70;
			pf.preloadHolderBorder = 1;
			pf.preloadHolderBorderColor = 0x0;
			pf.preloadHolderColor = 0xffffff;
			
			pf.useKeyboard = true;
			
			pf.reflectionAlpha = 30;
			pf.reflectionDepth = 50;
			pf.reflectionExtend = 30;
			pf.selectedReflectionAlpha = 70;
			pf.selectedReflectionDepth = 60;
		}
		
		private function fullscreen():void 
		{
			stage.displayState = StageDisplayState.FULL_SCREEN;
		}
		
	}
	
}