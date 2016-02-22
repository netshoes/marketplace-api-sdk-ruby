require "uri"

module ApiMktpNetshoesV1
  module Api
	
	  class OrdersApi
	    basePath = "https://api-sandbox.netshoes.com.br/api/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Get a list of Orders.
	    # 
	    # @param [Hash] opts the optional parameters
	    # @option opts [int] :page 
	    # @option opts [int] :size 
	    # @option opts [string] :expand 
	    # @option opts [DateTime] :order_start_date 
	    # @option opts [DateTime] :order_end_date 
	    # @option opts [string] :order_status 
	    # @option opts [string] :order_type 
	    # @return [OrderListResource]
	    def self.list_orders(opts = {})
	      
	
	      # resource path
	      path = "/orders".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	      query_params[:'page'] = opts[:'page'] if opts[:'page']
	      query_params[:'size'] = opts[:'size'] if opts[:'size']
	      query_params[:'expand'] = opts[:'expand'] if opts[:'expand']
	      query_params[:'orderStartDate'] = opts[:'order_start_date'] if opts[:'order_start_date']
	      query_params[:'orderEndDate'] = opts[:'order_end_date'] if opts[:'order_end_date']
	      query_params[:'orderStatus'] = opts[:'order_status'] if opts[:'order_status']
	      query_params[:'orderType'] = opts[:'order_type'] if opts[:'order_type']
	
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
	     	obj = Model::OrderListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # 
	    # 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [OrderResource]
	    def self.save_order(body, opts = {})
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling save_order" if body.nil?
	      
	
	      # resource path
	      path = "/orders".sub('{format}','json')
	
	      # query parameters
	      query_params = {}
	
	      # header parameters
	      header_params = {}
	
	      # HTTP header 'Accept' (if needed)
	      _header_accept = []
	      _header_accept_result = Client::Request.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result
	
	      # HTTP header 'Content-Type'
	      _header_content_type = []
	      header_params['Content-Type'] = Client::Request.select_header_content_type(_header_content_type)
	
	      # form parameters
	      form_params = {}
	
	      # http body (model)
	      post_body = Client::Request.object_to_http_body(body)
	      
	
	      auth_names = ['client_id', 'access_token']
	      response = Client::Request.new(:POST, path, {:params => query_params, :headers => header_params, :form_params => form_params, :body => post_body, :auth_names => auth_names}).make.body
	      if response.is_a?(Hash)
	     	obj = Model::OrderResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get a order based on order number.
	    # 
	    # @param order_number 
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand 
	    # @return [OrderResource]
	    def self.get_order(order_number, opts = {})
	      
	      # verify the required parameter 'order_number' is set
	      raise "Missing the required parameter 'order_number' when calling get_order" if order_number.nil?
	      
	
	      # resource path
	      path = "/orders/{orderNumber}".sub('{format}','json').sub('{' + 'orderNumber' + '}', order_number.to_s)
	
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
	     	obj = Model::OrderResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get a list of shippings by order number.
	    # 
	    # @param order_number 
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand 
	    # @return [ShippingListResource]
	    def self.list_order_shippings(order_number, opts = {})
	      
	      # verify the required parameter 'order_number' is set
	      raise "Missing the required parameter 'order_number' when calling list_order_shippings" if order_number.nil?
	      
	
	      # resource path
	      path = "/orders/{orderNumber}/shippings".sub('{format}','json').sub('{' + 'orderNumber' + '}', order_number.to_s)
	
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
	     	obj = Model::ShippingListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get a shipping based on order number and shipping code.
	    # 
	    # @param order_number 
	    # @param shipping_code 
	    # @param [Hash] opts the optional parameters
	    # @option opts [string] :expand 
	    # @return [ShippingResource]
	    def self.get_order_shipping(order_number, shipping_code, opts = {})
	      
	      # verify the required parameter 'order_number' is set
	      raise "Missing the required parameter 'order_number' when calling get_order_shipping" if order_number.nil?
	      
	      # verify the required parameter 'shipping_code' is set
	      raise "Missing the required parameter 'shipping_code' when calling get_order_shipping" if shipping_code.nil?
	      
	
	      # resource path
	      path = "/orders/{orderNumber}/shippings/{shippingCode}".sub('{format}','json').sub('{' + 'orderNumber' + '}', order_number.to_s).sub('{' + 'shippingCode' + '}', shipping_code.to_s)
	
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
	     	obj = Model::ShippingResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Update status of item.
	    # 
	    # @param order_number 
	    # @param shipping_code 
	    # @param id_item 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [StatusResource]
	    def self.update_shipping_item_status(order_number, shipping_code, id_item, body, opts = {})
	      
	      # verify the required parameter 'order_number' is set
	      raise "Missing the required parameter 'order_number' when calling update_shipping_item_status" if order_number.nil?
	      
	      # verify the required parameter 'shipping_code' is set
	      raise "Missing the required parameter 'shipping_code' when calling update_shipping_item_status" if shipping_code.nil?
	      
	      # verify the required parameter 'id_item' is set
	      raise "Missing the required parameter 'id_item' when calling update_shipping_item_status" if id_item.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_shipping_item_status" if body.nil?
	      
	
	      # resource path
	      path = "/orders/{orderNumber}/shippings/{shippingCode}/item/{idItem}/status".sub('{format}','json').sub('{' + 'orderNumber' + '}', order_number.to_s).sub('{' + 'shippingCode' + '}', shipping_code.to_s).sub('{' + 'idItem' + '}', id_item.to_s)
	
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
	     	obj = Model::StatusResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Update status of shipping.
	    # 
	    # @param order_number 
	    # @param shipping_code 
	    # @param body 
	    # @param [Hash] opts the optional parameters
	    # @return [StatusResource]
	    def self.update_shipping_status(order_number, shipping_code, body, opts = {})
	      
	      # verify the required parameter 'order_number' is set
	      raise "Missing the required parameter 'order_number' when calling update_shipping_status" if order_number.nil?
	      
	      # verify the required parameter 'shipping_code' is set
	      raise "Missing the required parameter 'shipping_code' when calling update_shipping_status" if shipping_code.nil?
	      
	      # verify the required parameter 'body' is set
	      raise "Missing the required parameter 'body' when calling update_shipping_status" if body.nil?
	      
	
	      # resource path
	      path = "/orders/{orderNumber}/shippings/{shippingCode}/status".sub('{format}','json').sub('{' + 'orderNumber' + '}', order_number.to_s).sub('{' + 'shippingCode' + '}', shipping_code.to_s)
	
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
	     	obj = Model::StatusResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
