module Ted
  class Api
    include HTTParty
    format :json
    base_uri 'http://api.ted.com/v1/'

    # Usage: ted = Ted::Api.new(API_KEY)
    # talks = ted.talks(params)
    def initialize(api_key)
      @api_key = api_key
    end

    def talks opts={}
      request = self.class.get('/talks/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    def events opts={}
      request = self.class.get('/events/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    def languages opts={}
      request = self.class.get('/languages/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    def quotes opts={}
      request = self.class.get('/quotes/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    def rating_words opts={}
      request = self.class.get('/rating_words/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    def speakers opts={}
      request = self.class.get('/speakers/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end


    def tags opts={}
      request = self.class.get('/tags/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    def themes opts={}
      request = self.class.get('/themes/', query: {'api-key' => api_key}.merge(opts))
      return hashie(request.parsed_response)
    end

    protected

    def api_key
      @api_key
    end

    def hashie(json)
      response = Hashie::Mash.new(json)
    end
  end
end