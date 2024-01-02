require 'net/http'
require 'uri'

class SimpleHttpClient
  def initialize(server_url)
    @uri = URI(server_url)
  end

  def send_request
    response = Net::HTTP.get_response(@uri)
    response.body
  end
end
