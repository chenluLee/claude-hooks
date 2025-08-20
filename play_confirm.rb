#!/usr/bin/env ruby

require 'open3'

AUDIO_DIR = File.expand_path("~/dev/github.com/chenluLee/claude_hooks")

def find_confirm_files
  Dir.glob(File.join(AUDIO_DIR, "confirm*.mp3"))
end

def play_audio(file)
  case RUBY_PLATFORM
  when /darwin/
    system("afplay", file)
  when /linux/
    system("aplay", file) || system("paplay", file) || system("mpg123", file)
  when /mswin|mingw/
    system("start", file)
  else
    puts "不支持的操作系统"
  end
end

def main
  files = find_confirm_files
  
  if files.empty?
    puts "没有找到confirm开头的mp3文件"
    exit 1
  end
  
  selected_file = files.sample
  # puts "正在播放: #{selected_file}"
  play_audio(selected_file)
end

main if __FILE__ == $0