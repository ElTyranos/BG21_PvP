#define framework

#include "modules\modules.sqf"
#include "BG21\bloodlust.sqf"

execVM "BG21\kill_logger.sqf";

//blooslust cleanup - activate if respawns
//execVM "BloodSplatter\Scripts\Cleanup.sqf"; 

// Intro camera
#include "intro\intro.sqf";

// Artillery
// _nul = ["Bo_GBU12_LGB",-1,5,180,240,2,6,120,"f0","f1"] execVM "BG21\exploArty.sqf";

