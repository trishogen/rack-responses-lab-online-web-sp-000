class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.new.strftime("%k:%M")
    noon = Time.parse "12:00 pm"

    if time >= noon
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
