# Qtile config file

from libqtile import hook
from settings.keys import mod, keys
from settings.groups import groups, dgroups_key_binder
from settings.layouts import layouts, floating_layout
from settings.widgets import widget_defaults, extension_defaults
from settings.screens import screens
from settings.mouse import mouse
#from settings.path import qtile_path

from os import path
import subprocess
from libqtile.log_utils import logger

#@hook.subscribe.startup_once
#def autostart():
#    home=path.expanduser('~/.config/qtile/autostart.sh')
#    subprocess.call([home])


main = None
# dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = True
auto_fullscreen = True
focus_on_window_activation = "urgent"
reconfigure_screens = True
auto_minimize = False
wl_input_rules = None
wmname = "LG3D"
