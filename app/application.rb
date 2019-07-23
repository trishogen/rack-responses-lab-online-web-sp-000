class Application

  def call(env)
    resp = Rack::Response.new

    time = DateTime.now.strftime("%k:%M")

    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
