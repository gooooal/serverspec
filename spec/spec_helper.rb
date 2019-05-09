require 'serverspec'
require 'docker'

set :backend, :docker
#set :docker_url, ENV["DOCKER_HOST"]
set :docker_image, ENV['DOCKER_IMAGE_NAME']
#set :docker_image, 'nginx'
#c.request_pty = true

Excon.defaults[:ssl_verify_peer] = false
