import yaml

config.load_autoconfig()

# c.aliases = {'w': 'session-save', 'q': 'quit', 'wq': 'quit --save', 'x': 'quit --save'}
c.auto_save.session = True
config.set('content.javascript.enabled', True, 'file://*')
config.set('content.javascript.enabled', True, 'chrome://*/*')
config.set('content.javascript.enabled', True, 'qute://*/*')

# Password manager
config.bind('<Ctrl-p>', 'spawn --userscript /home/killermenpl/.config/qutebrowser/qute-lastpass');
config.bind('<Ctrl-p>', 'spawn --userscript /home/killermenpl/.config/qutebrowser/qute-lastpass', mode='insert');

# Send to phone with KDE connect
config.bind('<Ctrl-Shift-s>', 'spawn --userscript /home/killermenpl/.config/qutebrowser/send-to-kdeconnect {url}')

c.url.default_page = 'file:///home/killermenpl/dotfiles/.config/qutebrowser/startpage/index.html'
c.url.start_pages = 'file:///home/killermenpl/dotfiles/.config/qutebrowser/startpage/index.html'

c.editor.command = ["st", "-e", "nvim", "{}"]
c.new_instance_open_target = "tab"
# c.prompt.filebrowser = False
c.completion.height = "30%"
c.completion.web_history.max_items = 1000
c.input.partial_timeout = 2000
c.tabs.background = True
c.tabs.favicons.show = "never"
c.tabs.title.format = "{title}"
c.tabs.new_position.related = "last"
c.content.cache.size = 52428800
c.hints.border = "1px solid #222222"


# searches
c.url.searchengines['DEFAULT'] = 'https://duckduckgo.com/?q={}'
c.url.searchengines['a'] = 'https://wiki.archlinux.org/?search={}'
c.url.searchengines['w'] = 'https://pl.wikipedia.org/w/index.php?search={}'
c.url.searchengines['g'] = 'http://www.google.com/search?hl=en&source=hp&ie=ISO-8859-l&q={}'

# fonts
#c.fonts.monospace = "Noto Sans Mono", "DejaVu Sans Mono", "Liberation Mono", monospace
c.fonts.tabs = "10pt DejaVu Sans Mono"
c.fonts.statusbar = "8pt DejaVu Sans Mono"
c.fonts.downloads = c.fonts.statusbar
c.fonts.prompts = c.fonts.statusbar
c.fonts.hints = "13px DejaVu Sans Mono"
c.fonts.messages.info = "7pt DejaVu Sans Mono"
c.fonts.keyhint = c.fonts.messages.info
c.fonts.messages.warning = c.fonts.messages.info
c.fonts.messages.error = c.fonts.messages.info
c.fonts.completion.entry = c.fonts.statusbar
c.fonts.completion.category = c.fonts.statusbar

config.source('qutewal.py')
