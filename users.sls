jmdaly:
  user.present:
    - fullname: John M Daly
    - shell: /bin/zsh
    - home: /home/jmdaly
    - groups:
      - sudo
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False
matt:
  user.present:
    - uid: 1000
    - fullname: Matthew Russell
    - shell: /bin/zsh
    - home: /home/matt
    - groups:
      - sudo
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False
