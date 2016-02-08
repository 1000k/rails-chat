class User < ActiveRecord::Base
  def hello
    self.name += ' is here'
  end
end
