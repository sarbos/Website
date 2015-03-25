
use Rack::Static, 
  :urls => ["/img", "/css"],
  :root => "public"

map "/" do
  run lambda { |env|
  [
    200, 
    {
      'Content-Type'  => 'text/html', 
    },
    File.open('public/index.html', File::RDONLY)
  ]
}
end