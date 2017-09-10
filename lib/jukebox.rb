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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i + 1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  song = gets.chomp
  if songs.include?(song)
    puts "Playing #{song}"
  elsif song.to_i == 1 || song.to_i == 2 || song.to_i == 3 || song.to_i == 4 || song.to_i == 5 || song.to_i == 6 || song.to_i == 7 || song.to_i == 8 || song.to_i == 9
    puts songs[song.to_i - 1]
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  while true
    puts "Please enter a command:"
    response = gets.chomp
    if response == "exit"
      exit_jukebox
      break
    elsif response == "list"
      list(songs)
    elsif response == "play"
      play(songs)
    elsif response == "help"
      help
    end
  end
end
