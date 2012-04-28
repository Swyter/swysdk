from time import time
import sys
start = time()

def handler(test):
  exc_type, exc_value, exc_traceback = sys.exc_info()
  print("->%s"%(exc_value))
  #print("'%s'\r\n'%s'"%(test,exc_value))
  if test and test!=exc_value:
      print("!({0})".format(exc_value))
      i=exc_value
    
try:
 import process_init
except NameError:
 i=handler(None)

try:
 import process_global_variables
except NameError:
 i=handler(i)

try:
 import process_strings
except NameError:
 i=handler(i)

try:
 import process_skills
except NameError:
 i=handler(i)

try:
 import process_music
except NameError:
 i=handler(i)

try:
 import process_animations
except NameError:
 i=handler(i)

try:
 import process_meshes
except NameError:
 i=handler(i)

try:
 import process_sounds
except NameError:
 i=handler(i)

try:
 import process_skins
except NameError:
 i=handler(i)

try:
 import process_map_icons
except NameError:
 i=handler(i)

try:
 import process_factions
except NameError:
 i=handler(i)

try:
 import process_items
except NameError:
 i=handler(i)

try:
 import process_scenes
except NameError:
 i=handler(i)

try:
 import process_troops
except NameError:
 i=handler(i)

try:
 import process_particle_sys
except NameError:
 i=handler(i)

try:
 import process_scene_props
except NameError:
 i=handler(i)

try:
 import process_tableau_materials
except NameError:
 i=handler(i)

try:
 import process_presentations
except NameError:
 i=handler(i)

try:
 import process_party_tmps
except NameError:
 i=handler(i)

try:
 import process_parties
except NameError:
 i=handler(i)

try:
 import process_quests
except NameError:
 i=handler(i)

try:
 import process_info_pages
except NameError:
 i=handler(i)
 
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