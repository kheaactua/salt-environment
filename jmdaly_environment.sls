# This state sets up jmdaly's environment
# by cloning his dotfiles repo, and running
# the init scripts.
include:
  - development

https://github.com/jmdaly/dotfiles.git:
  git.latest:
    - rev: master
    - target: /home/jmdaly/dotfiles
    # The user to run the git operations as:
    - user: jmdaly

# Now run the script to set up the dotfiles:
/home/jmdaly/dotfiles/setup_dotfiles.sh:
  cmd.run:
    - cwd: /home/jmdaly/dotfiles
    - user: jmdaly
    # Only run it if it hasn't been run before:
    - creates: /home/jmdaly/dotfiles/last_check

# Now install all of jmdaly's vim plugins:
vim +PluginInstall +qall:
  cmd.run:
    - cwd: /home/jmdaly
    - user: jmdaly
    # Only run if it hasn't been run before, since this is
    # quite a slow operation:
    - creates: /home/jmdaly/.vim/bundle

# Compile YouCompleteMe:
/home/jmdaly/.vim/bundle/YouCompleteMe/install.sh --clang-completer:
  cmd.run:
    - cwd: /home/jmdaly/.vim/bundle/YouCompleteMe
    - user: jmdaly
    - creates: /home/jmdaly/.vim/bundle/YouCompleteMe/third_party/ycmd/build.py
    - require:
      - sls: development
