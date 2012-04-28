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
# import process_scripts
# import process_mission_tmps
# import process_game_menus
# import process_simple_triggers
# import process_dialogs
# import process_global_variables_unused
# import process_postfx

try:
 import process_scripts
except NameError:
 i=handler(None)
 
try:
 import process_game_menus
except NameError:
 i=handler(None)
 
try:
 import process_simple_triggers
except NameError:
 i=handler(None)
 
try:
 import process_dialogs
except NameError:
 i=handler(None)
 
try:
 import process_global_variables_unused
except NameError:
 i=handler(None)
 
try:
 import process_postfx
except NameError:
 i=handler(None)

print("It took %ss"%(time()-start))