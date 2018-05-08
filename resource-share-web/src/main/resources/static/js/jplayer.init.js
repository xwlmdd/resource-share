/**
 * jPlayer 初始化文件
 * @type {{jPlayer: string, cssSelectorAncestor: string}}
 */
var cssSelector = { jPlayer: "#jplayer_N", cssSelectorAncestor: "#jp_container_N" };
var autoPlay = false;
if (readData('playtime') >= 1 && !isNaN(readData('playIndex'))){
    autoPlay = true;
    $(cssSelector.cssSelectorAncestor).parents(".footer").removeClass('hidden').addClass('animated slideInUp');
}
var jPlayList = readData('his');
var options = {playlistOptions: {enableRemoveControls: true, autoPlay: autoPlay}, swfPath: "app/templates/default/js/jPlayer", supplied: "ogv, m4v, oga, mp3" , smoothPlayBar: true, keyEnabled: true, audioFullScreen: false, autoPlay: true};
var myPlaylist = new jPlayerPlaylist(cssSelector, jPlayList, options);

// 播放器本地存储信息
// 参数：键值、数据
function saveData(key, data) {
    key = 'ivusic_' + key;    // 添加前缀，防止串用
    data = JSON.stringify(data);
    // 存储，IE6~7 不支持HTML5本地存储
    if (window.localStorage) {
        localStorage.setItem(key, data);
    }
}

// 播放器读取本地存储信息
// 参数：键值
// 返回：数据
function readData(key) {
    if(!window.localStorage) return '';
    key = 'ivusic_' + key;
    if(localStorage.getItem(key) == ''){
        return [];
    }
    return JSON.parse(localStorage.getItem(key));
}