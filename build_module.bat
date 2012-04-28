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
python -B  -OO Process/process__swybuildmix.py
python -B  -OO Process/process__swybuildmixb.py

REM python -B Process/process_init.py
REM python -B Process/process_global_variables.py
REM python -B Process/process_strings.py
REM python -B Process/process_skills.py
REM python -B Process/process_music.py
REM python -B Process/process_animations.py
REM python -B Process/process_meshes.py
REM python -B Process/process_sounds.py
REM python -B Process/process_skins.py
REM python -B Process/process_map_icons.py
REM python -B Process/process_factions.py
REM python -B Process/process_items.py
REM python -B Process/process_scenes.py
REM python -B Process/process_troops.py
REM python -B Process/process_particle_sys.py
REM python -B Process/process_scene_props.py
REM python -B Process/process_tableau_materials.py
REM python -B Process/process_presentations.py
REM python -B Process/process_party_tmps.py
REM python -B Process/process_parties.py
REM python -B Process/process_quests.py
REM python -B Process/process_info_pages.py
REM python -B Process/process_scripts.py
REM python -B Process/process_mission_tmps.py
REM python -B Process/process_game_menus.py
REM python -B Process/process_simple_triggers.py
REM python -B Process/process_dialogs.py
REM python -B Process/process_global_variables_unused.py
REM python -B Process/process_postfx.py

title [X] swysdk -- finished
echo ______________________________
echo Script processing has ended.
echo Press any key to restart. . .
pause>nul
goto :init