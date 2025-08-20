# Claude Hooks 音频反馈系统

Claude Code的音频反馈hook系统，为不同的操作状态提供音频确认。

## 功能特性

- 🎵 **音频反馈**: 为Claude Code的不同操作提供音频确认
- 🎯 **智能触发**: 基于用户输入和操作状态自动播放相应音频
- 🔊 **多场景支持**: 
  - 确认音频 (confirm): 用户输入特定关键词时播放
  - 完成音频 (finish): 任务完成时播放  
  - 开发模式音频 (start_dev): 开发相关操作触发时播放

## 文件结构

```
claude_hooks/
├── README.md               # 项目说明文档
├── voice_txt.md           # 音频文本内容和安装说明
├── play_confirm.rb        # 确认音频播放脚本
├── play_finish.rb         # 完成音频播放脚本
├── start_dev.rb          # 开发模式音频播放脚本
├── confirm01.mp3         # 确认音频文件1
├── confirm02.mp3         # 确认音频文件2
├── confirm03.mp3         # 确认音频文件3
├── confirm04.mp3         # 确认音频文件4
├── confirm05.mp3         # 确认音频文件5
├── finish01.mp3          # 完成音频文件1
├── finish02.mp3          # 完成音频文件2
├── finish03.mp3          # 完成音频文件3
├── finish04.mp3          # 完成音频文件4
├── start_dev.mp3         # 开发模式启动音频
└── start_sm.mp3          # 智能模式启动音频
```

## 安装说明

1. **克隆仓库**
   ```bash
   git clone https://github.com/chenluLee/claude-hooks.git
   cd claude-hooks
   ```

2. **设置可执行权限**
   ```bash
   chmod +x play_finish.rb play_confirm.rb start_dev.rb
   ```

3. **创建系统链接** (可选，方便全局使用)
   ```bash
   sudo ln -sf $(pwd)/play_finish.rb /usr/local/bin/play_finish
   sudo ln -sf $(pwd)/play_confirm.rb /usr/local/bin/play_confirm
   sudo ln -sf $(pwd)/start_dev.rb /usr/local/bin/start_dev
   ```

## 使用方法

### 作为Claude Code Hook使用

在Claude Code的配置中设置相应的hook脚本，系统会根据用户输入和操作状态自动触发音频播放。

### 手动运行

```bash
# 播放确认音频
./play_confirm.rb

# 播放完成音频  
./play_finish.rb

# 播放开发模式音频
./start_dev.rb
```

## 音频内容

### 确认音频 (Confirmation)
- "Awaiting your confirmation, Sir."
- "Confirmation required, Sir." 
- "Authorization needed, Sir."
- "Standing by for your confirmation, Sir."

### 完成音频 (Completion)
- "Mission accomplished."
- "Objective complete."
- "Directive fulfilled."
- "任務完了。" (日语)
- "指令を遂行しました。" (日语)

### 开发模式音频
- 开发相关操作的启动提示音

## 技术说明

- **音频格式**: MP3
- **脚本语言**: Ruby
- **音频播放**: 使用系统音频播放命令
- **触发机制**: 基于Claude Code的hook系统

## 系统要求

- macOS/Linux系统
- Ruby运行环境
- 音频播放支持 (afplay/mpg123等)

## 贡献

欢迎提交Issue和Pull Request来改进这个项目。

## 许可证

MIT License