#!/usr/bin/env python
"""Export the current tmux session as a tmuxinator YAML file.
"""
import subprocess
import yaml

def main():
    output = subprocess.check_output(['tmux', 'list-panes', '-s', '-F', "#{session_name} #{window_index} #{window_name} #{pane_index} #{pane_current_path}"], encoding='utf8')
    yaml_dict = {}
    lines = output.splitlines()
    session_name, _, _, _, _ = lines[0].split()
    windows = []
    yaml_dict['name'] = session_name
    yaml_dict['root'] = '~/'
    for line in lines:
        _, window_index, window_name, _, pane_current_path = line.split()
        window_index = int(window_index)
        if (window_index + 1) > len(windows):
            windows.append({
                    window_name:{
                    'layout': 'tiled',
                    'panes': [],
                }
            })
        w = windows[window_index][window_name]
        w['panes'].append(
            'cd {}'.format(pane_current_path)
        )
    yaml_dict['windows'] = windows
    print(yaml.dump(yaml_dict, default_flow_style=False))

if __name__ == "__main__":
    main()
