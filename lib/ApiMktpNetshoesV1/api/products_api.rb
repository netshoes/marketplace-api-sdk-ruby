require "uri"

module ApiMktpNetshoesV1
  module Api
	
	  class ProductsApi
	    basePath = "https://api-sandbox.netshoes.com.br/api/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Get the list of products.
	    # 
	    # @param [Hash] opts the optional parameters
	    # @option opts [int] :page 
	    # @option opts [int] :size 
	    # @option opts [string] :expand 
	    # @return [ProductListResource]
	    def self.list_products(opts = {})
	      
	
	      # resource path
	      path = "/products".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'page'] = opts[:'page'] if opts[:'page']
	      query_params[:'size'] = opts[:'size'] if opts[:'size']
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProductListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Create a new product.
	    # 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [ProductResource]
	    def self.save_product(body, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling save_product" if body.nil?
	      
	
	      # resource path
	      path = "/products".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProductResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the product by product id.
	    # 
	    # @param product_id 
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand 
	    # @return [ProductResource]
	    def self.get_product(product_id, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling get_product" if product_id.nil?
	      
	
	      # resource path
	      path = "/products/{productId}".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s)
	
	      # query parameters
	      query_params = {}
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProductResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Update the product.
	    # 
	    # @param product_id 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [ProductResource]
	    def self.update_product(product_id, body, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling update_product" if product_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_product" if body.nil?
	      
	
	      # resource path
	      path = "/products/{productId}".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PUT, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProductResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Partialy update the product.
	    # 
	    # @param product_id 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [ProductResource]
	    def self.patch_product(product_id, body, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling patch_product" if product_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling patch_product" if body.nil?
	      
	
	      # resource path
	      path = "/products/{productId}".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = ['application/json']
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:PATCH, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::ProductResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of product attributes.
	    # 
	    # @param product_id 
	    # @param [Hash] opts the optional parameters
	    # @return [AttributeListResource]
	    def self.list_product_attributes(product_id, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling list_product_attributes" if product_id.nil?
	      
	
	      # resource path
	      path = "/products/{productId}/attributes".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s)
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = ['application/json']
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::AttributeListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
