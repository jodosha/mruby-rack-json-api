class Hardcoded
  def call(env)
    [200, {}, ['foo']]
  end
end

Hardcoded.new
