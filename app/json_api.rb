class JsonApi
  def initialize
    @storage = Hiredis.new
    @storage['foo'] = 'bar'
  end

  def call(env)
    body = JSON.generate({foo: @storage['foo']})

    [
      200,
      {'Content-Type'   => 'application/json',
       'Content-Length' => body.size},
       [body]
    ]
  end
end

JsonApi.new
