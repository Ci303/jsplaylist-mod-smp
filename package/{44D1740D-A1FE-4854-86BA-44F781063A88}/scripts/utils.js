'use strict';

let my_utils = {};

my_utils.scriptInfo = window.ScriptInfo;
my_utils.packageInfo = utils.GetPackageInfo(my_utils.scriptInfo.PackageId);
my_utils.packagePath = `${my_utils.packageInfo.Directories.Root}`.replace(/\//g, '\\');
my_utils.assetsPath = `${my_utils.packageInfo.Directories.Assets}`.replace(/\//g, '\\');
my_utils.getScriptPath = `${my_utils.packageInfo.Directories.Scripts}/`;
my_utils.getImagePath = `${my_utils.assetsPath}\\images\\`;
my_utils.getDefaultWallpaperPath = `${my_utils.getImagePath}default.jpg`;
