class Application

  def call(env)
    resp = Rack::Response.new

    time = Datetime.now.strftime("%k:%M")
    noon = Datetime.now.noon

    if time >= noon
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
