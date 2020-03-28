module Intrigue
module Ident
module Check
class Acquia < Intrigue::Ident::Check::Base

  def generate_checks(url)
    [
      {
        :type => "fingerprint",
        :category => "service",
        :tags => ["Hosting", "CDN", "PaaS"],
        :vendor => "Acquia",
        :product => "Acquia",
        :references => ["https://docs.acquia.com/acquia-cloud/performance/varnish/headers/"],
        :version => nil,
        :match_type => :content_headers,
        :match_content => /X-AH-Environment:/i,
        :match_details => "Header contains Acquia environment",
        :hide => false,
        :paths => ["#{url}"],
        :inference => false
      }
    ]
  end
end
end
end
end
