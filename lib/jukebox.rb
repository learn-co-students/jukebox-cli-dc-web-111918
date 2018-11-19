require 'pry'

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

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  puts "Please enter a song name or number:"
  
  input = gets.chomp
  
  if(1 .. songs.length).to_a.include?(input.to_i)
    puts "Playing #{songs[input.to_i-1]}"
  elsif songs.include?(input) #validate
    puts "Playing #{input}"
  else
    puts "Invalid input, please try again"
  end
end

def list(songlist)
  songlist.each.with_index(1) do |name, i|
    puts "#{i}. #{name}"
  end
end

def help
  puts  "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program\n"
end


def run(songlist)
  help()
  while true
  puts "Please enter a command:"
    choice = gets.chomp
    if choice == 'exit'
      exit_jukebox()
      break
    elsif choice == 'list'
      list(songlist)
    elsif choice == 'play'
      list(songs)
      play(songs)
    else
      help()
    end
  end
end