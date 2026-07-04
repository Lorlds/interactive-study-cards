# Interactive Study Cards

[English](README.md)

Interactive Study Cards 是一个 Codex skill，用于把用户提供的笔记、概念、代码片段、公式或学习材料转换成一个自包含的交互式 HTML 学习页面。

生成的页面面向主动回忆，而不是被动阅读。卡片会尽量锁定用户提供的材料来源，保持知识点原子化，并支持移动端阅读。根据输出等级不同，页面可以包含 MathML 公式、内联 SVG 图示、弱项卡片复习、键盘快捷键、搜索和筛选等功能。

## 功能

- 生成一个完整 HTML 文件，CSS 和 JavaScript 全部内联。
- 默认使用 source-locked 生成，避免加入没有来源支持的事实。
- 从笔记、公式、代码、比较关系和机制说明中生成主动回忆卡片。
- 支持 Mini、Pro、Max 三种输出等级。
- 尽可能使用 MathML 显示公式。
- 使用内联 SVG 制作简单图示和视觉解释。
- 默认不使用外部库、CDN、MathJax、KaTeX 或外部资源，除非用户明确允许。
- Pro 和 Max 模式支持弱项卡片标记和本地复习记忆。
- Max 模式支持搜索、标签筛选、洗牌、统计信息和弱项卡片 JSON 导出。

## 安装

把 skill 安装到 Codex 的 skill 自动发现目录：

```bash
git clone https://github.com/Lorlds/interactive-study-cards.git ~/.codex/skills/interactive-study-cards
```

如果你已经把仓库克隆到了其他位置，也可以创建符号链接：

```bash
mkdir -p ~/.codex/skills
ln -s /path/to/interactive-study-cards ~/.codex/skills/interactive-study-cards
```

安装后重启 Codex，让新的 skill 生效。

## 使用

向 Codex 提供学习材料，并要求生成交互式学习卡片：

```text
Use $interactive-study-cards to make Pro HTML study cards from these microeconomics notes:
...
```

也可以明确指定输出等级：

```text
Create Max interactive study cards from this calculus review sheet. Focus on graph interpretation and common mistakes.
```

如果请求里缺少关键信息，这个 skill 会询问学科、源材料、目标深度、HTML 等级和特殊关注点。

## 输出等级

Mini 是最快的简单复习页面。它包含单卡片复习、隐藏答案、上一张/下一张按钮、进度、标签、移动端布局、公式显示，以及在确实有帮助时加入的简单图示。

Pro 是默认等级。它在 Mini 基础上增加随机复习、键盘快捷键、弱项卡片标记、localStorage 弱项记忆、仅复习弱项模式，并为可视化概念更频繁地加入图示。

Max 是更完整的复习工具。它增加标签筛选、搜索、洗牌模式、重置进度、弱项卡片 JSON 导出、会话统计，以及在来源材料支持时加入更丰富的视觉解释，例如坐标图、数轴、流程图、力图和过程图。

## 仓库结构

```text
.
├── LICENSE
├── SKILL.md
├── agents/
│   └── openai.yaml
├── README.zh-CN.md
└── README.md
```

## 来源约束

这个 skill 会把用户材料作为主要来源。它不应静默添加没有来源支持的事实、公式、例子、机制或图示。如果某个说法不确定且无法可靠验证，skill 应该省略该内容或向用户请求澄清。

## 许可证

MIT。详见 [LICENSE](LICENSE)。
