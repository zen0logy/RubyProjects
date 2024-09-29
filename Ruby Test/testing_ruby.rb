class Test
  def initialize(test)
    @test = test
  end

  def callTest
    puts test
  end
end

call = Test.new("Hello")