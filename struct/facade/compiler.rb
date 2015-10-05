class Compiler
  def compile(input)
    scanner = Scanner.new
    builde = ProgramNodeBuilder.new
    parser = Parser.new
    parser.parse(scanner, builder)
  end
end
