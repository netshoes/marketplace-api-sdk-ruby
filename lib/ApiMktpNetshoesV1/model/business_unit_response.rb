module ApiMktpNetshoesV1
  module Model
	  # 
	  class BusinessUnitResponse < BaseObject
	    attr_accessor :active, :sku_synchronized, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'active' => :'active',
	        
	        # 
	        :'sku_synchronized' => :'skuSynchronized',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'active' => :'boolean',
	        :'sku_synchronized' => :'boolean',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'active']
	        @active = attributes[:'active']
	      end
	      
	      if attributes[:'skuSynchronized']
	        @sku_synchronized = attributes[:'skuSynchronized']
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
