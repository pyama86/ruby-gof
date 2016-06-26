class Graphic
  def move(delta)
    @current ||= 0
    @current += delta
    puts "move to #{@current}"
  end
end

class Point
  attr_reader :pos
  def initialize(pos)
    @pos = pos
  end
end

class MoveCommand
  def initialize
    @_target = Graphic.new
    @_delta = Point.new(8)
  end

  def execute
    solver = ConstraintSolver.instance()
    @_state = solver.create_mement()
    @_target.move(@_delta.pos)
    solver.solve()
  end

  def unexecute
    solver = ConstraintSolver.instance()
    @_target.move(-@_delta.pos)
    solver.set_memento(@_state)
    solver.solve()
  end
end
