require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Gosu Tutorial Game"
  end
end


window=GameWindow.new
window.show


<pre><%= File.read 'app/views/games/game_window.rb' %>
</pre>
