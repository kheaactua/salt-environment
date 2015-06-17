neovim-repo:
  pkgrepo.managed:
    - ppa: neovim-ppa/unstable
    - require_in:
      - pkg: neovim-editor

neovim-editor:
  pkg.latest:
    - pkgs:
      - neovim
      - python-dev
      - python-pip
      - python3-dev
      - python3-pip
    - refresh: True

pip install neovim:
  cmd.run:
  - cwd: /usr/bin/local

update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60:
  cmd.run:
  - cwd: /usr/bin/local

update-alternatives --config vi:
  cmd.run:
  - cwd: /usr/bin/local
