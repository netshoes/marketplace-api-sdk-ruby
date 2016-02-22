module ApiMktpNetshoesV1
  module Model
	  # 
	  class BrandResource < BaseObject
	    attr_accessor :code, :name, :external_code, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'code' => :'code',
	        
	        # 
	        :'name' => :'name',
	        
	        # 
	        :'external_code' => :'externalCode',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'code' => :'int',
	        :'name' => :'string',
	        :'external_code' => :'string',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'code']
	        @code = attributes[:'code']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'externalCode']
	        @external_code = attributes[:'externalCode']
	      end
	      
	      if attributes[:'links']
	        if (value = attributes[:'links']).is_a?(Array)
	          @links = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
