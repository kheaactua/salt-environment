base:
  '*':
    - essentials
  'tinder':
    # Treat the above comma-separated names as a list of hosts:
    - match: list
    - gui_essentials
    - development
    - ntc_build_requirements
    - users
    - matt_environment
  'ntcbuild*':
    - development
    - ntc_build_requirements
    - users
    - matt_environment
