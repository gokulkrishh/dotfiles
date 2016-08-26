module.exports = {
  config: {
    fontSize: 14,
    fontFamily: 'Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    termCSS: '::selection { background-color: rgba(233, 44, 108, 0.8); color: #fcfcfc; }',
    cursorColor: 'rgba(248,28,229,0.75)',
    cursorShape: 'BLOCK',
    padding: '12px 14px',
    windowSize: [900, 580]
  },
  plugins: [
    'hyperlinks',
    'hyperterm-bold-tab',
    'hyperterm-material',
    'hyperterm-tab-icons',
    'hyperterm-tab-numbers'
  ],
  localPlugins: []
};
