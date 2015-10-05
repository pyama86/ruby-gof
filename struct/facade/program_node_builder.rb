class ProgramNodeBuilder
  def new_variable; end
  def new_assignment; end
  def new_return_statement; end
  def new_condition; end
end

class ProgramNode
  def get_source_position(line, index); end
  def add(program_node); end
  def remove(program_node); end
  def traverse(code_generator); end
end

class CodeGenerator
  def visit(node); end
end

class ExpressionNode
  def traverse(code_generator)
    code_generator.visit(self)
    program_nodes.each do |pn|
      pn.traverce(code_generator)
    end
  end
end

