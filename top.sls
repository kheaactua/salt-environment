base:
  '*':
    - essentials
  'khea':
    # Treat the above comma-separated names as a list of hosts:
    - match: list
    - gui_essentials
    - development
    - latex
    - ntc_build_requirements
    - users
    - matt_environment
    - webdevel
    - youtuber
    - rtags
  'ntcbuild*':
    - development
    - ntc_build_requirements
    - users
    - matt_environment
