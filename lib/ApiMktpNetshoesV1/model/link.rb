module ApiMktpNetshoesV1
  module Model
	  # 
	  class Link < BaseObject
	    attr_accessor :rel, :href
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'rel' => :'rel',
	        
	        # 
	        :'href' => :'href'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'rel' => :'string',
	        :'href' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'rel']
	        @rel = attributes[:'rel']
	      end
	      
	      if attributes[:'href']
	        @href = attributes[:'href']
	      end
	      
	    end
	  end
	
	
  end
end
