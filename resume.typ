#import "template.typ": *

// 主题颜色
#let theme-color = rgb("#26267d")
#let icon = icon.with(fill: theme-color)

// 设置图标, 来源: https://fontawesome.com/icons/
#let fa-award = icon("icons/fa-award.svg")
#let fa-building-columns = icon("icons/fa-building-columns.svg")
#let fa-code = icon("icons/fa-code.svg")
#let fa-envelope = icon("icons/fa-envelope.svg")
#let fa-github = icon("icons/fa-github.svg")
#let fa-graduation-cap = icon("icons/fa-graduation-cap.svg")
#let fa-linux = icon("icons/fa-linux.svg")
#let fa-phone = icon("icons/fa-phone.svg")
#let fa-apple=icon("icons/apple.svg")
#let fa-windows = icon("icons/fa-windows.svg")
#let fa-wrench = icon("icons/fa-wrench.svg")
#let fa-work = icon("icons/fa-work.svg")
#let fa-cet=icon("icons/r_cet.svg")
// 设置简历选项与头部
#show: resume.with(
  // 字体和基准大小
  size: 10pt,
  // 标题颜色
  theme-color: theme-color,
  // 控制纸张的边距
  margin: (
    top: 1.5cm,
    bottom: 2cm,
    left: 2cm,
    right: 2cm,
  ),

  // 如果需要姓名及联系信息居中，请删除下面关于头像的三行参数，并取消header-center的注释
  //header-center: true,

  // 如果不需要头像，则将下面三行的参数注释或删除
  photograph: "2025-05-04-23-18-29.png",
  photograph-width: 10em,
  gutter-width: 2em,
)[
  = 何文骁
  #v(4em)
  #info(
    color: theme-color,
    (
      icon: fa-phone,
      content: "(+86) 15198020682",
    ),
    (
      icon: fa-building-columns,
      content: "电子科技大学",
    ),
    (
      icon: fa-graduation-cap,
      content: "电子信息工程",
    ),
    (
      icon: fa-envelope,
      content: "stevehe6@gmail.com",
      link: "mailto:stevehe6@gmail.com",
    ),
    (
      icon: fa-github,
      content: "github.com/TamakoHe",
      link: "https://github.com/TamakoHe",
    ),
  )
][

]
== #fa-graduation-cap 教育背景

#sidebar(with-line: true, side-width: 12%)[
  2022.09 至今 
][
  *电子科技大学* · 格拉斯哥学院 · 电子信息工程

  GPA: 3.73/4 (RANK 2023-2024:12%)
]


== #fa-wrench 专业技能

#sidebar(with-line: false, side-width: 12%)[
  *操作系统*
  
  *掌握*

  *了解*
][
  #fa-linux Linux, #h(0.5em) #fa-windows Windows #h(0.5em) #fa-apple MacOs
  
  PyTorch，Latex，嵌入式开发, C++，Python
  
  

  Java，前端开发，x86 汇编
]


== #fa-award 获奖情况

#item(
  [*电子设计大赛*],
  [*三等奖*],
  date[2022年11月],
)

#item(
  [*美国大学生数学建模竞赛*],
  [*Meritorious Winner*],
  date[2025年2月],
)
#item([*学业奖学金*],[*二等*], date([2024年九月]))

== #fa-code 项目经历

#item(
  link(
    "",
    [*音游电子琴*],
  ),
  [*比赛项目*],
  date[2022年11月],
)

#tech[micropython,嵌入式,电路设计]

基于 esp32 芯片的音游电子琴

-  使用多个 LED 和按键来控制系统, 加装放大器与喇叭用 PWM系统发出声音
-  基于简单的并发技术实现了音游模式, 普通演奏模式的无缝切换和暂停重启功能


#item(
  link(
    "",
    [*嵌入式手写计算器*],
  ),
  [ *个人项目* ],
  date[2023年11月],
)

#tech[嵌入式,C++,tensorflow,tinyML,Python]

一个用 esp32 进行识别手写数字组成算式并进行运算的系统

- 使用 tensorflow lite 把用MNIST 训练的神经网络模型部署到esp32上
- 通过差样取值算法, 在有限内存的条件下提取图像特征
- 支持带括号的浮点数四则运算
#item(
  link(
    "https://github.com/TamakoHe/MY-Bird-Paper",
    [*RT-DETR鸟类检测*],
  ),
  [*个人项目*],
  date[2024年8月],
)
#tech[Python,PyTorch,labelme]
一个基于 RT-DETR 和自建数据集的鸟类目标检测系统
- 利用收集的 800 多张图片进行标记并转换为 COCO 格式
- 提出了随机生成模拟树枝遮挡的算法
- 改进损失函数, 使得更适合野生鸟类识别
- 改进 FPN 层, 使得对鸟类特征提取能力增强
- 新模型对鸟类的 ap50 有较明显的提升
== #fa-cet 证书
#text(size: 13pt)[#set align(left)
#table(columns: 3, stroke: none)[CET-4][605分][2022年11月][CET-6][536分][2023年6月][机动车驾驶证][C证][2023年8月]]
==  其他情况
喜欢机器学习和模板编程。2024年2月，在新加坡国立大学人工智能游学活动中，承担组长工作，小组在考核中获得优秀。

2024年参加由华中农业大学组织的观鸟营，多次参与成都市观鸟协会活动，观测并记录成都市猛禽活动情况，将收集的数据应用于RT-DETR鸟类检测项目，为保护鸟类做出自己的一点贡献。
