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
