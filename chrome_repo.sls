# This salt file adds the Google Chrome repo to the
# package manager.
chrome_repo:
  pkgrepo.managed:
    - name: deb http://dl.google.com/linux/chrome/deb/ stable main
    - file: /etc/apt/sources.list.d/google-chrome.list
    - key_url: https://dl-ssl.google.com/linux/linux_signing_key.pub
    # The following lines tell the system that apt-get update should
    # be run prior to running gui_essentials. This will make
    # sure the system can find the Chrome package.
    - require_in:
      - pkg: google-chrome-stable

  pkg.latest:
    - name: google-chrome-stable
    - refresh: True
