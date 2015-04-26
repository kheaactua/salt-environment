# This state installs the dependencies required
# to build rtags, clones the rtags repo, builds
# it, and then installs it.
include:
  - development

rtags_build_requirements:
  pkg:
    - installed
    # We need the build tools in order to compile:
    - require:
      - sls: development
    - pkgs:
      - llvm
      - libncurses5-dev
      - libssl-dev
      - libclang-dev

# Clone the git repo for rtags:
https://github.com/Andersbakken/rtags.git:
  git.latest:
    - target: /usr/local/src/rtags

git submodule init && git submodule update:
  cmd.run:
    - cwd: /usr/local/src/rtags
    - creates: /usr/local/src/rtags/src/rct/CMakeLists.txt

# Make a build directory:
mkdir /usr/local/src/rtags/build:
  cmd.run:
    - creates: /usr/local/src/rtags/build

# Run cmake:
cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ..:
  cmd.run:
    - cwd: /usr/local/src/rtags/build
    - creates: /usr/local/src/rtags/build/CMakeCache.txt

# Build and install rtags:
make -j install:
  cmd.run:
  - cwd: /usr/local/src/rtags/build
  - creates: /usr/local/bin/rc
