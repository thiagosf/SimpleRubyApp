class HomeController < WEBrick::HTTPServlet::AbstractServlet
  def do_GET (request, response)
    input = File.read("views/home/home.erb")
    eruby = Erubis::Eruby.new(input)
    content = eruby.result( :title => "Home", :message => "Lorem ipsum" )

    response.status = 200
    response.content_type = "text/html"
    response.body = content
  end
end
