 global.isPaused = !global.isPaused;

if (pauseAlpha == 0) {
	pauseAlpha = 0.8;
	pauseTextAlpha = 1;
	resumeTextSmallAlpha = 1;
	menuTextSmallAlpha = 1;
} else {
	pauseAlpha = 0;
	pauseTextAlpha = 0;
	resumeTextSmallAlpha = 0;
	resumeTextLargeAlpha = 0;
	menuTextSmallAlpha = 0;
	menuTextLargeAlpha = 0;
	helpTextSmallAlpha = 0;
	helpTextLargeAlpha = 0;
}