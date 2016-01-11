
def spaceship_panel
  puts """
You are in a locked room. The only entrance to the room is
behind you.
You see a metal panel with several different-colored buttons.
Each button has a set of partially alphanumeric characters.
The buttons are red, cyan, green, purple and yellow.
What do you do?
"""

  # Player has not checked anything yet. Initialize booleans.
  seen_screw = false

  while true
    print "\n> "
    input = $stdin.gets.chomp

    checking = input.include?("inspect") ||
      input.include?("look at")          ||
      input.include?("check")            ||
      input.include?("investigate")

    using = input.include?("use") ||
      input.include?("activate") ||
      input.include?("push")

    dying = input.include?("kill self") ||
      input.include?("die") ||
      input.include?("commit suicide")

    suicide = input.include?("suicide") && !input.include?("commit suicide")

    panel  = input.include?("panel")
    door = input.include?("door")

    red    = input.include?("red")
    cyan   = input.include?("cyan")
    green  = input.include?("green")
    purple = input.include?("purple")
    yellow = input.include?("yellow")

    screw  = input.include?("screw") && seen_screw

    if checking
    # Possible checking options.
      if panel
        puts """
The panel is made of steel and is cold to the touch.
The buttons form a uniform horizontal row. Each button is
surrounded by a square metal frame with a screw in each corner.
Each one has text written on it. The only other markings on
the panel are in black. They're an 'A' with an upward arrow,
pointing to a 'Q', and a set of three characters: '#HT'.
"""
        seen_screw = true
      elsif door
        puts """
The door is made of steel, and it's airtight. It has no handle.
"""
      elsif red
        puts """
The red button has a matte finish, and it says 'R*$#' in
bold white text. It is warm to the touch. It is surrounded by
a square metal frame with a screw in each corner.
"""
        seen_screw = true
      elsif cyan
        puts """
The cyan button has a glossy finish, and it says '@Q%#$' in
bold white text. It feels rubbery when you touch it. It is
surrounded by a square metal frame with a screw in each corner.
"""
        seen_screw = true
      elsif green
        puts """
The green button has a textured finish with straight grooves,
and it says '@*HE' in bold white text. It seems to softly push
your finger away with a cushion of air. It is surrounded by a
square metal frame with a screw in each corner.
"""
        seen_screw = true
      elsif purple
        puts """
The purple button has a fluffy finish, and it says ')*OO(@W' in
bold white text. It feels nice to touch. It is surrounded by a
square metal frame with a screw in each corner.
"""
        seen_screw = true
      elsif yellow
        puts """
The yellow button has a smooth finish, and it says '()#H_E(($' in
bold white text. It is surrounded by a square metal frame with a
screw in each corner.
"""
        seen_screw = true
      elsif screw
        puts """
The screw is made of cold steel and looks like it could come
off fairly easily.
"""
      else
        puts "I don't understand what you want to inspect."
      end

    elsif using
    # Possible using options.
      if panel
        puts "You can't use the entire panel at once!"
      elsif red
        die("""
The room starts to hum softly. The humming intensifies
until it is almost unbearable, then it suddenly stops as the
floor under your feet catches on fire.
You are burned to a crisp.
""")
      elsif cyan
        die("""
The panel slides upward to reveal a gaping cavity. Water flows
torrentially out of the new hole, quickly filling the room. The
doors will not open.
You run out of air, inhale, and drown.
""")
      elsif green
        die("""
Hatches on the left side of the room begin blowing in air from
an unknown source. The air blows faster and faster, blowing in
debris and shards of glass.
You're torn into bloody pieces by the influx of glass.
""")
      elsif purple
        die("""
A large hatch on the right wall slides open. Pillows of various
colors pours out of the large maw. They're comfortable, but 
they start to fill the room.
You suffocate slowly within the pillows.
""")
      elsif yellow
        puts """
You hear the whooshing sound of a generator powering up. The
door behind you lights up and slides open upwards. You
(willingly or unwillingly) walk out the door and escape. You
live your life.
"""

die("""
Years later, you die of old age.
""")
      elsif screw
        die("""
You remove a screw from one of the buttons. The panel explodes
violently.
You're blown apart by the explosion.
""")
      else
        puts "I don't understand what you want to activate."
      end

    elsif dying
      die("You will your vital organs to stop functioning.")
    elsif suicide
      die("Suicide isn't a verb, you git! It's 'commit suicide'.\nYou are pulled inside out by The Grammar Gods.")
    else
      puts "I don't understand what you mean. You can use or inspect things."
    end
  end
end

def die(why)
  puts why, "You are dead. Good job!"
  exit(0)
end

spaceship_panel