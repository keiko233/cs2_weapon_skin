## cs2服务器皮肤预览插件
### 更新内容
### 修复原始皮肤损坏,添加修改刀具（有bug）, 添加皮肤修改页面 [web](http://skin.ymos.top/)

### 使用方法
#### 下载 metamod dev版:
[metamod](http://www.metamodsource.net/downloads.php/?branch=master)

#### 安装 metamod
1、解压文件将 addons 文件夹移动到 game/csgo 目录 <br>
2、修改 game/csgo/gameinfo.gi 文件 找到 “Game    csgo” 在前面添加 "Game csgo/addons/metamod" <br> <br>
示例:

    "GameInfo"
    {
    game        "Counter-Strike 2"
    title       "Counter-Strike 2"
    title_pw    "E58F8DE68190E7B2BEE88BB1EFBC9AE585A8E79083E694BBE58ABF"

    LayeredOnMod    csgo_imported // Inherits the gameinfo.gi data from csgo_imported (which itself inherits from csgo_core)

    FileSystem
    {
        SearchPaths
        {
            Game_LowViolence    csgo_lv // Perfect World content override

            Game    csgo/addons/metamod
            Game    csgo
            Game    csgo_imported
            Game    csgo_core
            Game    core


#### 安装插件
1、下载发布版的 Windows.zip 或者 linux.zip  <br>
2、解压文件将 addons 文件夹移动到 game/csgo 目录  <br>
3、安装完成

#### 如何预览皮肤
打开控制台输入 “skin 编号 模板 磨损” 示例: "skin 38 0 0.00001"