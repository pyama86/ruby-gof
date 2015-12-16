class Command
  def execute; end
end

# 指定されたユーザーのドキュメントを開くコマンド
class OpenCommand < Command
  def initialize(a)
    @app = a
  end

  def ask_user
    puts "what your name?"
    STDIN.gets.chomp
  end

  def execute
    name = ask_user
    if name
      document = Document.new(name)
      @app.add(document)
      document.open
    end
  end
end

# 指定されたドキュメントをペーストするコマンド
class PasteCommand < Command
  def initialize(doc)
    @document = doc
  end

  def execute
    @document.paste
  end
end

class Application
  def add(obj)
    puts "add object #{obj.class.name}"
    @objects ||= []
    @objects << obj
  end
end

class Document
  def initialize(name)
    @name = name
  end

  def open
    puts "open #{@name} document"
  end

  def paste
    puts "paste #{@name} document"
  end
end
