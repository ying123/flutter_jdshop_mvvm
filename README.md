# 易简商城 Flutter 版

A new Flutter application.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

##  screen shot for iOS

![IMG_0703](https://github.com/qpc2015/flutter_shop/blob/master/screenshot/001.png)

![IMG_0704](https://github.com/qpc2015/flutter_shop/blob/master/screenshot/002.png)

![IMG_0705](https://github.com/qpc2015/flutter_shop/blob/master/screenshot/003.png)


## Setup

1. **Clone the repo**

```
$ git clone https://github.com/qpc2015/flutter_shop.git
$ cd flutter_shop
```

2. **Running:**

```
$ flutter run
```




## 简介

这是一个用Flutter写的简易商城APP

###  武功太差，努力练习，减少代码的重复和便于维护
###  学好武功，迎娶白富美

#### 该项目使用mvvm
#### 自定义BasePageState 提取公共方法例如需要初始化的ScreenUtil,showToast,显示隐藏进度弹框，点击外部是否隐藏软键盘等
#### 自定义BaseDialog 提醒弹框(例如确定要退出登陆吗)
#### 自定义AppBar,CommonBackTopBar(可以设置左组件和点击事件默认返回图标返回事件，中间文字，右边组件右边点击默认为Container())
#### 定义BaseResponse，统一处理返回结果，根据code做不同的处理。例如状态码是-1,，就跳转到登录页面
#### 统一Button，方便后面使用
#### 加载组件（加载中，加载成功，加载失败（点击重新加载））
#### 自定义输入框(包含清除按钮，是否显示密码按钮，发送验证码按钮)，方便后面使用
#### 封装LoadImage组件，可以加载本地资源或者网路图片
#### 定义UserInfoData 存储用户信息,方便app使用获取用户相关信息


。

主要实现的功能有：
* 框架：App常用的Tab框架，UI根据screenutil按750*1334等比例适配；
* 首页：轮播图,滑动列表；
* 分类：两级列表；
* 购物车：购物车列表和结算订单；
* 我的：未登录/登录状态切换，用户注销,全部订单；
* 登录：获取验证码、用户登录、用户状态缓存；



## 第三方依赖

| 名称及版本                   |        作用        |
| ---------------------------- | :----------------: |
| flutter_swiper: ^1.1.6       |       轮播图       |
| flutter_screenutil: ^1.0.2   |      屏幕适配      |
| dio: ^3.0.9                  |      网络请求      |
| shared_preferences: ^0.5.6+3 |      本地储存      |
| webview_flutter: ^0.3.19+9   |  内置webview加载   |
| event_bus: ^1.1.1            |      事件传递      |
| provider: ^4.0.4             |      状态管理      |
| fluttertoast: ^3.1.3         |       提示框       |
| city_pickers: ^0.1.30        | 三级城市联动选择器 |
| crypto: ^2.1.3               |       加密库       |



## Contact

If you have any suggestions, leave a message here
[CSDN](https://blog.csdn.net/yujunlong3919)



## License

MIT

## 最后

如果你喜欢这个项目，欢迎给我一个star。里面可能还有许多需要修改的bug,欢迎大家提出来,我将持续更新这个项目)



