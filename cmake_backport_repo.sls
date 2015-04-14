cmake_backport_repo:
  pkgrepo.managed:
    - ppa: packetlost/cmake
    - require_in:
      - pkg: cmake
      - pkg: cmake-curses-gui
      - pkg: cmake-qt-gui

cmake:
  pkg.latest:
    - refresh: True

cmake-curses-gui:
  pkg.latest:
    - refresh: True

cmake-qt-gui:
  pkg.latest:
    - refresh: True

