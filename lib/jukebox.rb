require "pry"

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  #this method should be the same as in jukebox.rb
puts  "I accept the following commands:"
puts  "- help : displays this help message"
puts  "- list : displays a list of songs you can play"
puts  "- play : lets you choose a song to play"
puts  "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  play_song_input = gets.chomp
  if(1..songs.length).to_a.include?(play_song_input.to_i)
    puts "Playing #{songs[play_song_input.to_i - 1]}"
  elsif songs.include?(play_song_input) #validate
    puts "Playing #{play_song_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  while input
    puts "Please enter a command:"
    entered_command = gets.downcase.strip
    if entered_command == 'list'
      list(songs)
    elsif entered_command == 'play'
      list(songs)
      play(songs)
    elsif entered_command == 'help'
      help
    elsif entered_command == 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
