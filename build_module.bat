:: @> hi there! I'm pretty honored to see you here,
::    please feel free to copy anything. -Greetings from Swyter
::   -------------------------------------------------------------

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
MODE CON: COLS=40

:init
@echo off
cls && color 71 && title [ ] swysdk -- building

:: this is to support paths with spaces and strange characters
set CD="!CD!"

:: setup our python and specify what folders are included in the search path for scripts
set PATH=!CD:~1,-1!\Builder\Python
set PYTHONPATH=%PYTHONPATH%;!CD:~1,-1!\ID;!CD:~1,-1!\Header;!CD:~1,-1!\Process;!CD:~1,-1!

:: the -B param overides the pyc/pyo bytecode generation, so there's no need for deleting them later :)
python -B Process/process_init.py
python -B Process/process_global_variables.py
python -B Process/process_strings.py
python -B Process/process_skills.py
python -B Process/process_music.py
python -B Process/process_animations.py
python -B Process/process_meshes.py
python -B Process/process_sounds.py
python -B Process/process_skins.py
python -B Process/process_map_icons.py
python -B Process/process_factions.py
python -B Process/process_items.py
python -B Process/process_scenes.py
python -B Process/process_troops.py
python -B Process/process_particle_sys.py
python -B Process/process_scene_props.py
python -B Process/process_tableau_materials.py
python -B Process/process_presentations.py
python -B Process/process_party_tmps.py
python -B Process/process_parties.py
python -B Process/process_quests.py
python -B Process/process_info_pages.py
python -B Process/process_scripts.py
python -B Process/process_mission_tmps.py
python -B Process/process_game_menus.py
python -B Process/process_simple_triggers.py
python -B Process/process_dialogs.py
python -B Process/process_global_variables_unused.py
python -B Process/process_postfx.py
title [X] swysdk -- finished
echo ______________________________
echo Script processing has ended.
echo Press any key to restart. . .
pause>nul
goto :init