## pages
用于存放页面文件（新增页面请在此文件中添加信息）
- basicData: 是用户信息填报页
- index: 首页(tabbar页)
- login: 登录页
- personal: 我的页(tabbar页)
- photo: 拍照选项页(tabbar页)
- sign: 注册页
- social: 智食圈页(tabbar页)
- wiki: 智食百科页(tabbar页)

## static
用于存放静态资源（新增文件夹请在此文件中添加信息）
- images: 用于存放图片
- images/tab: 用于存放tabbar的icon

## App.vue
uni-app主组件，页面入口文件，书写app的生命周期函数以及全局变量，全局样式等。

## main.js
uni-app入口文件，用于初始化vue实例，定义全局组件、引入插件等。

## manifest.json
应用的配置文件，用于指定应用的名称、图标、权限等。

## pages.json
用于配置页面文件的路径、导航栏、tabbar、窗口样式等

## uni.scss
预置uniapp样式风格scss变量