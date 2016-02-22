require "uri"

module ApiMktpNetshoesV1
  module Api
	
	  class SkusApi
	    basePath = "https://api-sandbox.netshoes.com.br/api/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Get the list of product skus.
	    # 
	    # @param product_id 
	    # @param [Hash] opts the optional parameters
	    # @option opts [int] :page 
	    # @option opts [int] :size 
	    # @option opts [string] :expand 
	    # @return [SkuListResource]
	    def self.list_product_skus(product_id, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling list_product_skus" if product_id.nil?
	      
	
	      # resource path
	      path = "/products/{productId}/skus".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s)
	
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
	     	obj = Model::SkuListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Create a new sku for a product.
	    # 
	    # @param product_id 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [SkuResource]
	    def self.save_product_sku(product_id, body, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling save_product_sku" if product_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling save_product_sku" if body.nil?
	      
	
	      # resource path
	      path = "/products/{productId}/skus".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s)
	
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
	     	obj = Model::SkuResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the a sku by product Id and sku Id.
	    # 
	    # @param product_id 
	    # @param sku 
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand 
	    # @return [SkuResource]
	    def self.get_product_sku(product_id, sku, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling get_product_sku" if product_id.nil?
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling get_product_sku" if sku.nil?
	      
	
	      # resource path
	      path = "/products/{productId}/skus/{sku}".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s).sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::SkuResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Update a product based on SKU.
	    # 
	    # @param product_id 
	    # @param sku 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [SkuResource]
	    def self.update_product_sku(product_id, sku, body, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling update_product_sku" if product_id.nil?
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling update_product_sku" if sku.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_product_sku" if body.nil?
	      
	
	      # resource path
	      path = "/products/{productId}/skus/{sku}".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s).sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::SkuResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of sku images.
	    # 
	    # @param product_id 
	    # @param sku 
	    # @param [Hash] opts the optional parameters
	    # @return [ImageListResource]
	    def self.list_sku_images(product_id, sku, opts = {})
	      
	      # verify the required parameter 'product_id' is set
	      raise "Missing the required parameter 'product_id' when calling list_sku_images" if product_id.nil?
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling list_sku_images" if sku.nil?
	      
	
	      # resource path
	      path = "/products/{productId}/skus/{sku}/images".sub('{format}','json').sub('{' + 'productId' + '}', product_id.to_s).sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::ImageListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get product status.
	    # 
	    # @param sku 
	    # @param bu_id 
	    # @param [Hash] opts the optional parameters
	    # @return [BusinessUnitResponse]
	    def self.get_status(sku, bu_id, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling get_status" if sku.nil?
	      
	      # verify the required parameter 'bu_id' is set
	      raise "Missing the required parameter 'bu_id' when calling get_status" if bu_id.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/bus/{buId}/status".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s).sub('{' + 'buId' + '}', bu_id.to_s)
	
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
	      post_body = nil
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:GET, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::BusinessUnitResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Enable or disable sku for sale.
	    # 
	    # @param sku 
	    # @param bu_id 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [BusinessUnitResource]
	    def self.update_status(sku, bu_id, body, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling update_status" if sku.nil?
	      
	      # verify the required parameter 'bu_id' is set
	      raise "Missing the required parameter 'bu_id' when calling update_status" if bu_id.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_status" if body.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/bus/{buId}/status".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s).sub('{' + 'buId' + '}', bu_id.to_s)
	
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
	     	obj = Model::BusinessUnitResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get a list of price schedules.
	    # 
	    # @param sku 
	    # @param [Hash] opts the optional parameters
	    # @return [PriceList]
	    def self.list_schedules(sku, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling list_schedules" if sku.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/priceSchedules".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::PriceList.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Save a price schedule.
	    # 
	    # @param sku 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [PriceScheduleResource]
	    def self.save_schedule(sku, body, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling save_schedule" if sku.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling save_schedule" if body.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/priceSchedules".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::PriceScheduleResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get a base price.
	    # 
	    # @param sku 
	    # @param [Hash] opts the optional parameters
	    # @return [PriceResource]
	    def self.list_prices(sku, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling list_prices" if sku.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/prices".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::PriceResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Save a base price.
	    # 
	    # @param sku 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [PriceResource]
	    def self.update_price(sku, body, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling update_price" if sku.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_price" if body.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/prices".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::PriceResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get stock info by sku.
	    # 
	    # @param sku 
	    # @param [Hash] opts the optional parameters
	    # @return [StockResponse]
	    def self.get_stock(sku, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling get_stock" if sku.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/stocks".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::StockResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Update stock quantity by sku.
	    # 
	    # @param sku 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [StockResponse]
	    def self.update_stock(sku, body, opts = {})
	      
	      # verify the required parameter 'sku' is set
	      raise "Missing the required parameter 'sku' when calling update_stock" if sku.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_stock" if body.nil?
	      
	
	      # resource path
	      path = "/skus/{sku}/stocks".sub('{format}','json').sub('{' + 'sku' + '}', sku.to_s)
	
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
	     	obj = Model::StockResponse.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
