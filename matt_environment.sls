# This state sets up matt's environment
# by cloning his dotfiles repo, and running
# the init scripts.
include:
  - development

https://github.com/kheaactua/dotfiles.git:
  git.latest:
    - rev: master
    - target: /home/matt/dotfiles
    # The user to run the git operations as:
    - user: matt

# Now run the script to set up the dotfiles:
/home/matt/dotfiles/setup_dotfiles.sh:
  cmd.run:
    - cwd: /home/matt/dotfiles
    - user: matt
    # Only run it if it hasn't been run before:
    - creates: /home/matt/dotfiles/last_check

# Now install all of matt's vim plugins:
vim +PluginInstall +qall:
  cmd.run:
    - cwd: /home/matt
    - user: matt
    # Only run if it hasn't been run before, since this is
    # quite a slow operation:
    - creates: /home/matt/dotfiles/bundles

# Compile YouCompleteMe:
/home/matt/dotfiles/bundles/YouCompleteMe/install.sh --clang-completer:
  cmd.run:
    - cwd: /home/matt/dotfiles/bundles/YouCompleteMe
    - user: matt
    - creates: /home/matt/dotfiles/bundles/YouCompleteMe/third_party/ycmd/build.py
    - require:
      - sls: development
