class FestTrack::TrackController
  BASE_PATH = "http://metromontage.com"
  attr_accessor :event_list_url


  def run
    puts "Hello!"
    puts "Here is a list of music festivals in the DMV."
    puts "Enter a number between 1 to 15"
    puts "Enter 'list' to see the list again or type 'exit' to leave."
    event_list
    input = gets.chomp
    input = gets.chomp
    if input == 'list'
      event_details
    elsif input == 'exit'
      abort
    end
  end

  def user_input_loop
    run
    event_details
    puts "Enter a number between 1 to 50"
    elseif input != (1..50)
      puts ". . . . . . . . . . . . . . . . ."
      puts "Please enter a number listed"
    end
  end

  def event_list
    puts " L O A D I N G . . . . . . . . . . DMV FEST . . . . .  "
    FestTrack::Event.all.each.with_index(1) {|event, index| puts "#{index}. #{event.name}"}
  end

  def event_details
    input = gets.chomp.to_i
    if (1..50).include?(input)
      @chosen_event = Event.all.sort_by {|event| event.name}
      # [input -1]
      puts ". . . . . . . . . . . . . . . . ."
      puts "#{@chosen_event.name}".bold
      puts "#{@chosen_event.date}".bold
      puts "#{@chosen_event.location}".bold
      puts "#{@chosen_event.line_up}".bold
    elsif (1..50).include?(input) == false
      puts ". . . . . . . . . . . . . . . . ."
      puts "Enter 'list' to see the list again or type 'exit' to leave."
    end
  end
