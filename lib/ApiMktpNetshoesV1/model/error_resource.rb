module ApiMktpNetshoesV1
  module Model
	  # 
	  class ErrorResource < BaseObject
	    attr_accessor :type, :description, :notifications
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'type' => :'type',
	        
	        # 
	        :'description' => :'description',
	        
	        # 
	        :'notifications' => :'notifications'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'type' => :'string',
	        :'description' => :'string',
	        :'notifications' => :'array[string]'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'type']
	        @type = attributes[:'type']
	      end
	      
	      if attributes[:'description']
	        @description = attributes[:'description']
	      end
	      
	      if attributes[:'notifications']
	        if (value = attributes[:'notifications']).is_a?(Array)
	          @notifications = value
	        end
	      end
	      
	    end
	  end
	
	
  end
end
