module ApiMktpNetshoesV1
  module Model
	  # 
	  class PriceResource < BaseObject
	    attr_accessor :sku, :price, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'sku' => :'sku',
	        
	        # 
	        :'price' => :'price',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku' => :'string',
	        :'price' => :'double',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'sku']
	        @sku = attributes[:'sku']
	      end
	      
	      if attributes[:'price']
	        @price = attributes[:'price']
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
