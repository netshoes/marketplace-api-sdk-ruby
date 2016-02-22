module ApiMktpNetshoesV1
  module Model
	  # 
	  class SkuResource < BaseObject
	    attr_accessor :sku, :name, :description, :color, :flavor, :size, :gender, :ean_isbn, :images, :video, :height, :width, :depth, :weight, :links
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'sku' => :'sku',
	        
	        # 
	        :'name' => :'name',
	        
	        # 
	        :'description' => :'description',
	        
	        # 
	        :'color' => :'color',
	        
	        # 
	        :'flavor' => :'flavor',
	        
	        # 
	        :'size' => :'size',
	        
	        # 
	        :'gender' => :'gender',
	        
	        # 
	        :'ean_isbn' => :'eanIsbn',
	        
	        # 
	        :'images' => :'images',
	        
	        # 
	        :'video' => :'video',
	        
	        # 
	        :'height' => :'height',
	        
	        # 
	        :'width' => :'width',
	        
	        # 
	        :'depth' => :'depth',
	        
	        # 
	        :'weight' => :'weight',
	        
	        # 
	        :'links' => :'links'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'sku' => :'string',
	        :'name' => :'string',
	        :'description' => :'string',
	        :'color' => :'string',
	        :'flavor' => :'string',
	        :'size' => :'string',
	        :'gender' => :'string',
	        :'ean_isbn' => :'string',
	        :'images' => :'array[ImageResource]',
	        :'video' => :'string',
	        :'height' => :'double',
	        :'width' => :'double',
	        :'depth' => :'double',
	        :'weight' => :'double',
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
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'description']
	        @description = attributes[:'description']
	      end
	      
	      if attributes[:'color']
	        @color = attributes[:'color']
	      end
	      
	      if attributes[:'flavor']
	        @flavor = attributes[:'flavor']
	      end
	      
	      if attributes[:'size']
	        @size = attributes[:'size']
	      end
	      
	      if attributes[:'gender']
	        @gender = attributes[:'gender']
	      end
	      
	      if attributes[:'eanIsbn']
	        @ean_isbn = attributes[:'eanIsbn']
	      end
	      
	      if attributes[:'images']
	        if (value = attributes[:'images']).is_a?(Array)
	          @images = value
	        end
	      end
	      
	      if attributes[:'video']
	        @video = attributes[:'video']
	      end
	      
	      if attributes[:'height']
	        @height = attributes[:'height']
	      end
	      
	      if attributes[:'width']
	        @width = attributes[:'width']
	      end
	      
	      if attributes[:'depth']
	        @depth = attributes[:'depth']
	      end
	      
	      if attributes[:'weight']
	        @weight = attributes[:'weight']
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
