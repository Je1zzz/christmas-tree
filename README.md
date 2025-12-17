# ChristmasTree（部署/打开指南）

本项目使用 `type="module"`（ESM 模块），**不能双击用 `file://` 直接打开**，必须通过 `http://` 或 `https://` 访问。

## 本地打开（无需 VS Code 插件）

- 双击运行 `start.bat`
- 浏览器会打开 `index.html`，再选择对应版本

> 若提示找不到 Python：安装 Python 3 并勾选 “Add to PATH”，或使用 VS Code Live Server。

## 部署到网站（手机可访问，推荐）

手机浏览器要允许摄像头，一般需要 **HTTPS**（安全上下文），所以推荐用静态托管平台部署。

### 方案 A：Netlify（最简单，拖拽即部署）

1. 打开 Netlify 并注册/登录（可用 GitHub/邮箱）。
2. 进入 “Add new site” → “Deploy manually”（或类似入口）。
3. **把整个项目文件夹**（包含 `index.html`、`assets/`、各个 `*.html`）直接拖拽上传。
4. 等待构建完成，拿到 `https://xxxxx.netlify.app` 链接。
5. 手机访问该链接即可。

### 方案 B：GitHub Pages（免费稳定，适合长期维护）

1. 在 GitHub 新建一个仓库（public/private 均可）。
2. 把本文件夹内容上传到仓库根目录（确保根目录存在 `index.html`）。
3. 进入仓库 Settings → Pages：
   - Source 选择 “Deploy from a branch”
   - Branch 选择 `main`（或 `master`） + `/ (root)`
4. 保存后等待 1~3 分钟，Pages 会给你一个 `https://xxx.github.io/仓库名/` 链接。

> 注意：GitHub Pages 的访问路径通常带 “仓库名/”，所以启动入口是 `https://xxx.github.io/仓库名/index.html`

## 常见问题

- **手机打开但摄像头不可用**：请确认是 `https://` 链接；HTTP/本地局域网 IP 通常不允许摄像头。
- **页面加载很慢**：项目依赖 three/mediapipe 是从 CDN 拉取；要“完全离线”，需要把依赖下载到本地并改成本地引用。


