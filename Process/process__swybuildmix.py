from time import time
start = time()

import process_init
import process_global_variables
import process_strings
import process_skills
import process_music
import process_animations
import process_meshes
import process_sounds
import process_skins
import process_map_icons
import process_factions
import process_items
import process_scenes
import process_troops
import process_particle_sys
import process_scene_props
import process_tableau_materials
import process_presentations
import process_party_tmps
import process_parties
import process_quests
import process_info_pages

# don't ask me why, but there's a sort of variable overwrite in process_scripts that corrupts some objects...
# it goes nuts and starts throwing warnings about "unable to find anim_***" that's why we have to divide the processing in two separate python batches. :/

# import process_scripts
# import process_mission_tmps
# import process_game_menus
# import process_simple_triggers
# import process_dialogs
# import process_global_variables_unused
# import process_postfx

print("It took %ss"%(time()-start))