from time import time
start = time()

import process_scripts
import process_mission_tmps
import process_game_menus
import process_simple_triggers
import process_dialogs
import process_global_variables_unused
import process_postfx

print("It took %ss"%(time()-start))