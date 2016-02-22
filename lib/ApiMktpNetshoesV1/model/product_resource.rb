module ApiMktpNetshoesV1
  module Model
	  # 
	  class ProductResource < BaseObject
	    attr_accessor :product_id, :skus, :department, :product_type, :brand, :attributes, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'product_id' => :'productId',
	        
	        # 
	        :'skus' => :'skus',
	        
	        # 
	        :'department' => :'department',
	        
	        # 
	        :'product_type' => :'productType',
	        
	        # 
	        :'brand' => :'brand',
	        
	        # 
	        :'attributes' => :'attributes',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'product_id' => :'string',
	        :'skus' => :'array[SkuResource]',
	        :'department' => :'string',
	        :'product_type' => :'string',
	        :'brand' => :'string',
	        :'attributes' => :'array[AttributeResource]',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'productId']
	        @product_id = attributes[:'productId']
	      end
	      
	      if attributes[:'skus']
	        if (value = attributes[:'skus']).is_a?(Array)
	          @skus = value
	        end
	      end
	      
	      if attributes[:'department']
	        @department = attributes[:'department']
	      end
	      
	      if attributes[:'productType']
	        @product_type = attributes[:'productType']
	      end
	      
	      if attributes[:'brand']
	        @brand = attributes[:'brand']
	      end
	      
	      if attributes[:'attributes']
	        if (value = attributes[:'attributes']).is_a?(Array)
	          @attributes = value
	        end
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
