# ACP-Tool 发布页

实质战斗力（ACP）Windows 工具的**公开下载仓库**（仅 exe，不含源码）。

## 下载

请到右侧 **Releases** 下载最新 ACP-Tool-Vx.x.x.exe。

## 版本清单

根目录 `version.json` 供程序内「检查更新」读取。

字段：

| 字段 | 必填 | 说明 |
|------|------|------|
| `version` | 是 | 如 `V1.1.0` |
| `url` | 是 | exe 直链（GitHub Releases） |
| `notes` | 否 | 更新说明 |
| `sha256` | 推荐 | 小写 hex；新版客户端下载后校验 |
| `size` | 推荐 | 字节数；与 sha256 一并校验 |

发布新 exe 后可用源码库 `tools/hash_release_exe.py` 计算 `sha256`/`size` 再更新本文件。

源码仓库为私有，不在此公开。
