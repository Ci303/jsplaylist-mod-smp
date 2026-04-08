'use strict';

if (typeof my_utils === 'undefined') include('utils.js');

[
    'WSHcommon.js',
    'WSHinputbox.js',
    'WSHtopbar.js',
    'WSHscrollbar.js',
    'WSHheaderbar.js',
    'WSHplaylist.js',
    'WSHplaylistmanager.js',
    'WSHsettings.js',
    'main.js'
].forEach(function (item) {
    include(my_utils.getScriptPath + item);
});
