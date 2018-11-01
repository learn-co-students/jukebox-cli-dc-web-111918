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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 

def list(array)
  array.each_with_index {|ele, index| puts "#{index + 1}. #{ele}"}
end 

def play(array)
  puts "Please enter a song name or number:"
  user_input = gets.chomp 
  output = ""
  array.each_with_index do |ele, index|
    index = index + 1
    if user_input.to_i == index || user_input == ele
      output = "Playing #{ele}"
    end 
  end 
  if output.length > 0
    puts output
  else
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(array)
  help
  puts "Please enter a command:"
  user_command = gets.chomp 
  if user_command != "exit"
    if user_command == "list"
      list(array)
    elsif user_command == "play"
      play(array)
    elsif user_command == "help"
      help
    end
  elsif user_command == "exit"
    exit_jukebox
  end 
end