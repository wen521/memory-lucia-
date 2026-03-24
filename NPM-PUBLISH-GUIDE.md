# Memory V2 Skill - NPM 发布指南

> 将 Memory V2 发布为 npm 包，供 ClawHub Skill 使用

---

## 📋 发现：ClawHub Skill 格式

**ClawHub 上的 Skill 只有 SKILL.md**，代码通过 npm 安装。

### 标准结构

```
clawhub-skill/
└── SKILL.md          # 只有描述文件
```

### npm 包结构

```
memory-v2/            # npm 包
├── package.json
├── README.md
├── LICENSE
├── api/
│   └── index.js      # 主入口
├── modules/          # 核心模块
└── ...
```

---

## 🚀 发布流程

### 步骤 1: 准备 npm 包

```bash
cd memory-v2-skill

# 1. 确保 package.json 正确
# 2. 更新版本号
npm version 2.0.0

# 3. 创建 .npmignore
echo "tests/" > .npmignore
echo "backups/" >> .npmignore
echo "*.db" >> .npmignore

# 4. 发布到 npm
npm publish
```

### 步骤 2: 创建 ClawHub Skill

创建 `clawhub-memory-v2/` 目录，只包含 SKILL.md：

```yaml
---
name: memory-v2
description: |
  Advanced memory system for OpenClaw agents with priority analysis, 
  learning tracking, decision recording, and skill evolution.
  Use when: (1) Tracking learning progress and milestones, (2) Recording decisions with outcomes, 
  (3) Analyzing message priorities, (4) Monitoring skill usage and growth.
  Requires: npm install memory-v2-skill
---

# Memory V2

## Installation

```bash
npm install memory-v2-skill
```

## Usage

```javascript
const MemoryAPI = require('memory-v2-skill');

const api = new MemoryAPI('./memory-v2.db');
await api.init();

// Track learning
await api.startLearning(msgId, convId, message);

// Record decision
await api.recordDecision(msgId, convId, decisionData);

// Get dashboard
const dashboard = await api.getDashboard();
```

## API

See: https://github.com/YOUR_USERNAME/memory-v2-skill#api
```

### 步骤 3: 打包并提交

```bash
# 打包 ClawHub Skill
cd clawhub-memory-v2
zip ../memory-v2.skill SKILL.md

# 提交到 ClawHub
# 上传 memory-v2.skill 文件
```

---

## 📦 两种发布方式对比

| 方式 | 适用场景 | 复杂度 |
|------|---------|--------|
| **npm + ClawHub** | 正式发布，用户易安装 | 高 |
| **GitHub 直接安装** | 快速分享，开发者使用 | 低 |

---

## 🎯 推荐方案：GitHub 直接安装

对于 Memory V2，推荐直接 GitHub 安装：

### 用户使用

```bash
# 克隆到 skills 目录
cd ~/.openclaw/skills
git clone https://github.com/YOUR_USERNAME/memory-v2-skill.git memory-v2

# 安装依赖
cd memory-v2
npm install

# 使用
const MemoryAPI = require('memory-v2');
```

### 优点
- 无需 npm 账号
- 无需打包
- 用户可直接修改
- 适合自用和分享

---

## ✅ 当前状态

您的 `memory-v2-skill/` 已经可以直接使用：

```bash
# 本地测试
cd memory-v2-skill
npm install
node -e "const M = require('./api'); console.log('OK')"

# 打包 (zip 格式)
zip -r memory-v2.skill . -x "*.db" "node_modules/*"
```

**用户安装后可以直接使用！**

---

## 📚 参考

- npm 发布: https://docs.npmjs.com/packages-and-modules/contributing-packages-to-the-registry
- ClawHub: https://clawhub.com
