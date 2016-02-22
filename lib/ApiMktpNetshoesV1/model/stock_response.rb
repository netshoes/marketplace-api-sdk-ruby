module ApiMktpNetshoesV1
  module Model
	  # 
	  class StockResponse < BaseObject
	    attr_accessor :country, :available, :total, :reserved, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'country' => :'country',
	        
	        # 
	        :'available' => :'available',
	        
	        # 
	        :'total' => :'total',
	        
	        # 
	        :'reserved' => :'reserved',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'country' => :'string',
	        :'available' => :'int',
	        :'total' => :'int',
	        :'reserved' => :'int',
	        :'links' => :'array[Link]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'country']
	        @country = attributes[:'country']
	      end
	      
	      if attributes[:'available']
	        @available = attributes[:'available']
	      end
	      
	      if attributes[:'total']
	        @total = attributes[:'total']
	      end
	      
	      if attributes[:'reserved']
	        @reserved = attributes[:'reserved']
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
