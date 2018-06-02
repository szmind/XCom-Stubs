class TickableStateObject extends StateObject
    native;

var native const noexport Pointer VfTable_FTickableObject;
var() bool bTickWhenGamePaused;
var const array<TimerData> Timers;


native final function SetTimer(float InRate, optional bool inbLoop, optional name inTimerFunc, optional Object inObj)
{                       
}


native final function ClearTimer(optional name inTimerFunc, optional Object inObj)
{
            
}


native final function PauseTimer(bool bPause, optional name inTimerFunc, optional Object inObj)
{
}


native final function bool IsTimerActive(optional name inTimerFunc, optional Object inObj)
{
                 
}

event Tick(float DeltaTime);
