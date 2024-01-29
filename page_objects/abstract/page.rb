
class Page
  include AppiumHelper

  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def to_s
    self.class.to_s.sub('Page', ' Page')
  end

  # Components

end
