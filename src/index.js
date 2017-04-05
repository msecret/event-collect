
// Require index.html so it gets copied to dist
require('./index.html');

const Elm = require('./Main.elm');
const mountNode = document.getElementById('main');

window.app = Elm.Main.embed(mountNode);
