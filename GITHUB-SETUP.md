# GitHub 发布步骤

## 🚀 创建 GitHub 仓库

### 方式 1: 命令行 (推荐)

```bash
cd C:\Users\snowya\.openclaw\workspace-chief_of_staff\memory-v2-skill

# 初始化 git
git init

# 添加所有文件
git add .

# 提交
git commit -m "Initial commit: Memory Lucia v2.0.0"

# 创建 GitHub 仓库 (需要安装 gh CLI)
# 或者手动在 https://github.com/new 创建

# 关联远程仓库
git remote add origin https://github.com/snowya/memory-lucia.git

# 推送
git push -u origin main
```

### 方式 2: 网页操作

1. 访问 https://github.com/new
2. 填写信息：
   - **Repository name**: `memory-lucia`
   - **Description**: `Advanced memory system for OpenClaw agents`
   - **Public** (勾选)
   - **Add a README file** (不要勾选，已有 README)
3. 点击 **Create repository**
4. 按页面提示推送代码

## 📦 创建 Release

1. 访问 https://github.com/snowya/memory-lucia/releases
2. 点击 **"Create a new release"**
3. 填写信息：
   - **Tag**: `v2.0.0`
   - **Title**: `Memory Lucia v2.0.0`
   - **Description**:
```markdown
## Memory Lucia v2.0.0

Advanced memory system for OpenClaw agents.

### Features
- Priority Analysis
- Learning Tracking
- Decision Recording
- Skill Evolution
- Version Management

### Installation
```bash
npm install memory-lucia
```

### Links
- npm: https://www.npmjs.com/package/memory-lucia
```
4. 点击 **Publish release**

## ✅ 完成检查

- [ ] GitHub 仓库已创建
- [ ] 代码已推送
- [ ] Release 已发布
- [ ] README 中的链接可点击
- [ ] npm 页面显示 GitHub 链接

## 🔗 相关链接

- GitHub: https://github.com/snowya/memory-lucia
- npm: https://www.npmjs.com/package/memory-lucia
