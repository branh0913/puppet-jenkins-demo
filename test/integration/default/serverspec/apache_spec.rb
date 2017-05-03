require 'serverspec'

set :backend, :exec

describe package('httpd') do
    it {should be_installed}
end 

