class ConstraintSolver
  def self.instance
    @@_self ||= self.new(5)
    @@_self
  end

  def initialize(current)
    @current = current
  end

  def create_mement
    @current = 1
    ConstraintSolverMemento.new(@current)
  end

  def set_memento(memento)
    @current = memento.pos
  end

  def solve
    @current += 1
    puts "urrent state #{@current}"
  end
end

class ConstraintSolverMemento
  attr_reader :pos
  def initialize(pos)
    @pos = pos
  end
end
