development:
  pkg:
    - installed
    - pkgs:
      - g++
      - clang
      # This is needed to build YouCompleteMe:
      - libpython-dev
      - ctags
      - cppcheck
      - cmake
      - cmake-curses-gui
      - cmake-qt-gui
      - make
      - ninja-build
      - build-essential
