require 'rack'
class MiPrimeraWebApp
  def call(env)
  	@env = env['REQUEST_PATH']
    if @env == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en el Index! </h1>']]
    elsif @env == '/otro'
    	[200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en otro landing! </h1>']]
    else
    	[400, { 'Content-Type' => 'text/html' }, [File.read('404.html')]]
    end
  end
end
run MiPrimeraWebApp.new