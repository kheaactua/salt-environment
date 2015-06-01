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
newarmn:
  user.present:
    - uid: 1001
    - fullname: newarmn environment
    - shell: /bin/bash
    - home: /home/newarmn
    - groups:
      - gm
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False
david:
  user.present:
    - uid: 1003
    - gid: 1003
    - fullname: David Russell
    - shell: /bin/bash
    - home: /data/home/dave
    - groups:
      - mayofest
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False
gid:
  user.present:
    - uid: 1010
    - gid: 1012
    - fullname: Gitolite User
    - shell: /bin/bash
    - home: /home/git
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False
dave:
  user.present:
    - uid: 1002
    - gid: 1008
    - fullname: David Lawson
    - shell: /bin/bash
    - home: /home/dave
    - groups:
      - mayofest
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False
jmdaly:
  user.present:
    - uid: 1005
    - gid: 1006
    - fullname: John M Daly
    - shell: /bin/zsh
    - home: /home/jmdaly
    - groups:
      - sudo
    # Don't remove groups the user would normally be part of
    # that aren't specified in the list above:
    - remove_groups: False

