import yaml

config.load_autoconfig()

# c.aliases = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save', 'x': 'quit --save'}
c.auto_save.session = True
config.set('content.javascript.enabled', True, 'file://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# Tell websites to use dark mode
config.set('colors.webpage.darkmode.enabled', True)

# Password manager
config.bind('<Ctrl-p>', 'spawn --userscript /home/killermenpl/.config/qutebrowser/qute-lastpass');
config.bind('<Ctrl-p>', 'spawn --userscript /home/killermenpl/.config/qutebrowser/qute-lastpass', mode='insert');

# Send to phone with KDE connect
config.bind('<Ctrl-Shift-s>', 'spawn --userscript /home/killermenpl/.config/qutebrowser/send-to-kdeconnect {url}')

# Open youtube link in kodi
config.bind('<Ctrl-k>', 'hint links userscript open-in-kodi')

# Download youtube video
config.bind('<Ctrl-Shift-d>', 'hint links spawn /home/killermenpl/bin/yt-dl {hint-url}')

c.url.default_page = 'https://startpage.draganczuk.cloud'
c.url.start_pages = c.url.default_page

c.editor.command = ["st", "-e", "nvim", "{}"]
c.new_instance_open_target = "tab"
# c.prompt.filebrowser = False
c.completion.height = "30%"
c.completion.web_history.max_items = 1000
c.input.partial_timeout = 2000
c.tabs.background = True
c.tabs.favicons.show = "never"
c.tabs.title.format = "{audio}{current_title}"
c.tabs.new_position.related = "last"
c.content.cache.size = 52428800
c.hints.border = "1px solid #222222"


# searches
c.url.searchengines['a'] = 'https://wiki.archlinux.org/?search={}'
c.url.searchengines['w'] = 'https://pl.wikipedia.org/w/index.php?search={}'
c.url.searchengines['g'] = 'http://www.google.com/search?q={}'
c.url.searchengines['DEFAULT'] = c.url.searchengines['g']

ui_font = "SFNS Display"
mono_font = "DefaVu Sans Mono"
# fonts
# c.fonts.monospace = "Noto Sans Mono", "DejaVu Sans Mono", "Liberation Mono", monospace
c.fonts.tabs.selected = c.fonts.tabs.unselected = "10pt " + ui_font
c.fonts.statusbar = "10pt " + ui_font
c.fonts.downloads = c.fonts.statusbar
c.fonts.prompts = c.fonts.statusbar
c.fonts.hints = "14px " + mono_font
c.fonts.messages.info = "11pt " + ui_font
c.fonts.keyhint = c.fonts.messages.info
c.fonts.messages.warning = c.fonts.messages.info
c.fonts.messages.error = c.fonts.messages.info
c.fonts.completion.entry = c.fonts.statusbar
c.fonts.completion.category = c.fonts.statusbar

