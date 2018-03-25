class Logger
  attr_reader :log

  def initialize
    @log = 'initialize logger'
  end

  @@instance = Logger.new

  def self.instance
    @@instance
  end

  private_class_method :new
end

