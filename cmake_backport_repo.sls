cmake_backport_repo:
  pkgrepo.managed:
    - ppa: packetlost/cmake
    - require_in:
      - pkg: cmake-tools

cmake-tools:
  pkg.latest:
    - pkgs:
      - cmake
      - cmake-curses-gui
      - cmake-qt-gui
    - refresh: True
