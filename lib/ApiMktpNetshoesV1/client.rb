require 'logger'
require 'json'

module ApiMktpNetshoesV1
  module Client
    class << self
      attr_accessor :logger

      # A Client configuration object. Must act like a hash and return sensible
      # values for all Client configuration options. See Client::Configuration.
      attr_accessor :configuration

      attr_accessor :resources

      # Call this method to modify defaults in your initializers.
      #
      # @example
      #   Client.configure do |config|
      #     config.api_key['api_key'] = '1234567890abcdef'     # api key authentication
      #     config.username = 'wordlover'           # http basic authentication
      #     config.password = 'i<3words'            # http basic authentication
      #     config.format = 'json'                  # optional, defaults to 'json'
      #   end
      #
      def configure
        yield(configuration) if block_given?

        # Configure logger.  Default to use Rails
        self.logger ||= configuration.logger || (defined?(Rails) ? Rails.logger : Logger.new(STDOUT))

        # remove :// from scheme
        configuration.scheme.sub!(/:\/\//, '')

        # remove http(s):// and anything after a slash
        configuration.host.sub!(/https?:\/\//, '')
        configuration.host = configuration.host.split('/').first

        # Add leading and trailing slashes to base_path
        configuration.base_path = "/#{configuration.base_path}".gsub(/\/+/, '/')
        configuration.base_path = "" if configuration.base_path == "/"
      end

      def authenticated?
        Client.configuration.auth_token.present?
      end

      def de_authenticate
        Client.configuration.auth_token = nil
      end

      def authenticate
        return if Client.authenticated?

        if Client.configuration.username.blank? || Client.configuration.password.blank?
          raise ClientError, "Username and password are required to authenticate."
        end

        request = Client::Request.new(
          :get,
          "account/authenticate/{username}",
          :params => {
            :username => Client.configuration.username,
            :password => Client.configuration.password
          }
        )

        response_body = request.response.body
        Client.configuration.auth_token = response_body['token']
      end
    end
  end

  class ServerError < StandardError
  end

  class ClientError < StandardError
  end
end
