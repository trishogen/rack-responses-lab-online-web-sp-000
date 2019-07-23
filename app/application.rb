class application

  def call(env)
    resp = Rack::Response.new

    time = Time.new.strftime("%k:%M") 
    noon = Time.new(12:00)

    if time > noon
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
