# Memory Lucia 发布步骤

## 🚀 一键发布

在 `memory-v2-skill` 目录下执行：

### Windows
```bash
publish.bat
```

### Linux/Mac
```bash
bash publish.sh
```

---

## 📋 手动发布步骤

### 步骤 1: 进入目录
```bash
cd C:\Users\snowya\.openclaw\workspace-chief_of_staff\memory-v2-skill
```

### 步骤 2: 登录 npm
```bash
npm login --auth-type=legacy
```

**输入信息：**
- Username: `712724810@qq.com`
- Password: `Q6Ymk#x_4dqM#T@`
- Email: `712724810@qq.com`
- Enter one-time password: (如果开启 2FA，输入验证码)

### 步骤 3: 发布
```bash
npm publish --access=public
```

---

## ✅ 验证发布

发布成功后，访问：
https://www.npmjs.com/package/memory-lucia

---

## 📦 用户使用

发布后，用户可以直接安装：

```bash
npm install memory-lucia
```

```javascript
const MemoryAPI = require('memory-lucia');
const api = new MemoryAPI('./memory.db');
await api.init();
```

---

## 🔧 如果发布失败

### 错误 1: 包名已存在
```bash
# 修改 package.json 中的 name
# 或者使用 scoped name: @yourname/memory-lucia
```

### 错误 2: 未登录
```bash
npm login --auth-type=legacy
# 重新登录
```

### 错误 3: 版本已存在
```bash
# 更新版本号
npm version patch  # 2.0.0 -> 2.0.1
npm publish
```

---

## 📊 发布信息

| 属性 | 值 |
|------|-----|
| 包名 | `memory-lucia` |
| 版本 | `2.0.0` |
| 大小 | 14.4 KB |
| 主入口 | `api/index.js` |
| 依赖 | `sqlite3` |

---

**执行 `publish.bat` 或 `publish.sh` 即可发布！**
