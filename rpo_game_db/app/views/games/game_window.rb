require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Gosu Tutorial Game"
  end
end


window=GameWindow.new
window.show


