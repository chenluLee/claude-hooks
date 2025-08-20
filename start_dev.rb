#!/usr/bin/env ruby

require 'json'

input = $stdin.read
json=JSON.parse(input)
# puts "input: #{input}"

audio_file = "~/dev/github.com/chenluLee/claude_hooks/start_dev.mp3"
if File.exist?(File.expand_path(audio_file)) && (json["prompt"].include?('/dev') || json["prompt"].include?('/BMad:agents:dev'))
    system("afplay #{audio_file}")
end