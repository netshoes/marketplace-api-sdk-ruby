module ApiMktpNetshoesV1
  module Model
	  # 
	  class PriceScheduleResource < BaseObject
	    attr_accessor :sku, :price_from, :price_to, :date_init, :date_end
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'sku' => :'sku',
	        
	        # 
	        :'price_from' => :'priceFrom',
	        
	        # 
	        :'price_to' => :'priceTo',
	        
	        # 
	        :'date_init' => :'dateInit',
	        
	        # 
	        :'date_end' => :'dateEnd'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku' => :'string',
	        :'price_from' => :'double',
	        :'price_to' => :'double',
	        :'date_init' => :'DateTime',
	        :'date_end' => :'DateTime'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'sku']
	        @sku = attributes[:'sku']
	      end
	      
	      if attributes[:'priceFrom']
	        @price_from = attributes[:'priceFrom']
	      end
	      
	      if attributes[:'priceTo']
	        @price_to = attributes[:'priceTo']
	      end
	      
	      if attributes[:'dateInit']
	        @date_init = attributes[:'dateInit']
	      end
	      
	      if attributes[:'dateEnd']
	        @date_end = attributes[:'dateEnd']
	      end
	      
	    end
	  end
	
	
  end
end
