#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => 'Users/rachelnovick/flatiron-coding//jukebox-cli/audio/Emerald-Park/01.mp3',
"LiberTeens" => 'Users/rachelnovick/flatiron-coding/jukebox-cli/audio/Emerald-Park/02.mp3',
"Hamburg" =>  'Users/rachelnovick/flatiron-coding/jukebox-cli/audio/Emerald-Park/03.mp3',
"Guiding Light" => 'Users/rachelnovick/flatiron-coding/jukebox-cli/audio/Emerald-Park/04.mp3',
"Wolf" => 'Users/rachelnovick/flatiron-coding/jukebox-cli/audio/Emerald-Park/05.mp3',
"Blue" => 'Users/rachelnovick/flatiron-coding/jukebox-cli/audio/Emerald-Park/06.mp3',
"Graduation Failed" => 'Users/rachelnovick/flatiron-coding/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:"
  puts "-help : displays this help message"
  puts "-list : displays a list of songs you can play"
  puts "-play : lets you choose a song to play"
  puts "-exit : exits this program"
end



def list(my_songs)
  my_songs.each do |name|
    puts "#{name}"
  end
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
end


def play(my_songs)
  puts "Please enter a song name:"
  answer = gets.chomp
  my_songs.each do |name, path|
    if my_songs[name] == answer
      filename = my_songs[name][path]
      system "open #{filename}"
    else
      puts "Invalid input"
    end
  end
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help
  puts "Please enter a command:"
  response = gets.chomp
  case response
  when "list"
    list(songs)
  when "play"
    list(songs)
    play(songs)
  when "help"
    help
  when "exit"
    exit_jukebox
  else
    help
  end
end
