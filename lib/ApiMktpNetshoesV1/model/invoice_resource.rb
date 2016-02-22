module ApiMktpNetshoesV1
  module Model
	  # 
	  class InvoiceResource < BaseObject
	    attr_accessor :access_key, :date, :ship_date, :url
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'access_key' => :'accessKey',
	        
	        # 
	        :'date' => :'date',
	        
	        # 
	        :'ship_date' => :'shipDate',
	        
	        # 
	        :'url' => :'url'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'access_key' => :'string',
	        :'date' => :'DateTime',
	        :'ship_date' => :'DateTime',
	        :'url' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'accessKey']
	        @access_key = attributes[:'accessKey']
	      end
	      
	      if attributes[:'date']
	        @date = attributes[:'date']
	      end
	      
	      if attributes[:'shipDate']
	        @ship_date = attributes[:'shipDate']
	      end
	      
	      if attributes[:'url']
	        @url = attributes[:'url']
	      end
	      
	    end
	  end
	
	
  end
end
