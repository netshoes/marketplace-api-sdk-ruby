require "uri"

module ApiMktpNetshoesV1
  module Api
	
	  class ProductsTemplatesApi
	    basePath = "https://api-sandbox.netshoes.com.br/api/v1"
	    # apiInvoker = APIInvoker
	
	
	    # Get the list of brands.
	    # 
	    # @param [Hash] opts the optional parameters
	    # @return [BrandListResource]
	    def self.list_brands(opts = {})
	      
	
	      # resource path
	      path = "/brands".sub('{format}','json')
	
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
	     	obj = Model::BrandListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of departments.
	    # 
	    # @param bu_id 
	    # @param [Hash] opts the optional parameters
	    # @return [DepartmentListResource]
	    def self.list_departments(bu_id, opts = {})
	      
	      # verify the required parameter 'bu_id' is set
	      raise "Missing the required parameter 'bu_id' when calling list_departments" if bu_id.nil?
	      
	
	      # resource path
	      path = "/bus/{buId}/departments".sub('{format}','json').sub('{' + 'buId' + '}', bu_id.to_s)
	
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
	     	obj = Model::DepartmentListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of colors.
	    # 
	    # @param [Hash] opts the optional parameters
	    # @return [ColorListResource]
	    def self.list_colors(opts = {})
	      
	
	      # resource path
	      path = "/colors".sub('{format}','json')
	
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
	     	obj = Model::ColorListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of sizes.
	    # 
	    # @param department_code 
	    # @param [Hash] opts the optional parameters
	    # @return [ProductTypeListResource]
	    def self.list_product_types(department_code, opts = {})
	      
	      # verify the required parameter 'department_code' is set
	      raise "Missing the required parameter 'department_code' when calling list_product_types" if department_code.nil?
	      
	
	      # resource path
	      path = "/department/{departmentCode}/productType".sub('{format}','json').sub('{' + 'departmentCode' + '}', department_code.to_s)
	
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
	     	obj = Model::ProductTypeListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of attributes.
	    # 
	    # @param department_code 
	    # @param product_type_code 
	    # @param [Hash] opts the optional parameters
	    # @return [TemplateListResource]
	    def self.list_templates(department_code, product_type_code, opts = {})
	      
	      # verify the required parameter 'department_code' is set
	      raise "Missing the required parameter 'department_code' when calling list_templates" if department_code.nil?
	      
	      # verify the required parameter 'product_type_code' is set
	      raise "Missing the required parameter 'product_type_code' when calling list_templates" if product_type_code.nil?
	      
	
	      # resource path
	      path = "/department/{departmentCode}/productType/{productTypeCode}/templates".sub('{format}','json').sub('{' + 'departmentCode' + '}', department_code.to_s).sub('{' + 'productTypeCode' + '}', product_type_code.to_s)
	
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
	     	obj = Model::TemplateListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of flavors.
	    # 
	    # @param [Hash] opts the optional parameters
	    # @return [FlavorListResource]
	    def self.list_flavors(opts = {})
	      
	
	      # resource path
	      path = "/flavors".sub('{format}','json')
	
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
	     	obj = Model::FlavorListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	
	    # Get the list of sizes.
	    # 
	    # @param [Hash] opts the optional parameters
	    # @return [SizeListResource]
	    def self.list_sizes(opts = {})
	      
	
	      # resource path
	      path = "/sizes".sub('{format}','json')
	
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
	     	obj = Model::SizeListResource.new() and obj.build_from_hash(response)
	      else
		    obj = response;
	      end
	      
	    end
	
	  end
	
  end
end
