class Application

  def call(env)
    resp = Rack::Response.new

    time = DateTime.now.strftime("%k:%M")
    noon = DateTime.now.change({hour: 12})

    if time > noon
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
