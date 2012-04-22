:init
@echo off && cls && color 1f && title [ ] swysdk -- building
set PYTHONPATH=%CD%;%CD%\Header;%CD%\ID;%CD%\Process;%PYTHONPATH%
python process_init.py -B
python process_global_variables.py -B
python process_strings.py -B
python process_skills.py -B
python process_music.py -B
python process_animations.py -B
python process_meshes.py -B
python process_sounds.py -B
python process_skins.py -B
python process_map_icons.py -B
python process_factions.py -B
python process_items.py -B
python process_scenes.py -B
python process_troops.py -B
python process_particle_sys.py -B
python process_scene_props.py -B
python process_tableau_materials.py -B
python process_presentations.py -B
python process_party_tmps.py -B
python process_parties.py -B
python process_quests.py -B
python process_info_pages.py -B
python process_scripts.py -B
python process_mission_tmps.py -B
python process_game_menus.py -B
python process_simple_triggers.py -B
python process_dialogs.py -B
python process_global_variables_unused.py -B
python process_postfx.py -B
title [X] swysdk -- finished
echo ______________________________
echo Script processing has ended.
echo Press any key to restart. . .
pause>nul
goto :init