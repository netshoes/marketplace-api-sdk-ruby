module ApiMktpNetshoesV1
  module Model
	  # 
	  class DevolutionItemResource < BaseObject
	    attr_accessor :item_id, :manufacturer_code, :ean, :brand, :name, :quantity, :sku, :status, :department_name, :department_code, :exchange_process_code, :checkin_data, :devolution_data, :total_gross, :color, :flavor, :size, :devolution_exchange_status
	    # attribute mapping from ruby-style variable name to JSON key
	    def self.attribute_map
	      {
	        
	        # 
	        :'item_id' => :'itemId',
	        
	        # 
	        :'manufacturer_code' => :'manufacturerCode',
	        
	        # 
	        :'ean' => :'ean',
	        
	        # 
	        :'brand' => :'brand',
	        
	        # 
	        :'name' => :'name',
	        
	        # 
	        :'quantity' => :'quantity',
	        
	        # 
	        :'sku' => :'sku',
	        
	        # 
	        :'status' => :'status',
	        
	        # 
	        :'department_name' => :'departmentName',
	        
	        # 
	        :'department_code' => :'departmentCode',
	        
	        # 
	        :'exchange_process_code' => :'exchangeProcessCode',
	        
	        # 
	        :'checkin_data' => :'checkinData',
	        
	        # 
	        :'devolution_data' => :'devolutionData',
	        
	        # 
	        :'total_gross' => :'totalGross',
	        
	        # 
	        :'color' => :'color',
	        
	        # 
	        :'flavor' => :'flavor',
	        
	        # 
	        :'size' => :'size',
	        
	        # 
	        :'devolution_exchange_status' => :'devolutionExchangeStatus'
	        
	      }
	    end
	
	    # attribute type
	    def self.swagger_types
	      {
	        :'item_id' => :'int',
	        :'manufacturer_code' => :'string',
	        :'ean' => :'string',
	        :'brand' => :'string',
	        :'name' => :'string',
	        :'quantity' => :'int',
	        :'sku' => :'string',
	        :'status' => :'string',
	        :'department_name' => :'string',
	        :'department_code' => :'int',
	        :'exchange_process_code' => :'int',
	        :'checkin_data' => :'DateTime',
	        :'devolution_data' => :'DateTime',
	        :'total_gross' => :'double',
	        :'color' => :'string',
	        :'flavor' => :'string',
	        :'size' => :'string',
	        :'devolution_exchange_status' => :'string'
	        
	      }
	    end
	
	    def initialize(attributes = {})
	      return if !attributes.is_a?(Hash) || attributes.empty?
	
	      # convert string to symbol for hash key
	      attributes = attributes.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
	
	      
	      if attributes[:'itemId']
	        @item_id = attributes[:'itemId']
	      end
	      
	      if attributes[:'manufacturerCode']
	        @manufacturer_code = attributes[:'manufacturerCode']
	      end
	      
	      if attributes[:'ean']
	        @ean = attributes[:'ean']
	      end
	      
	      if attributes[:'brand']
	        @brand = attributes[:'brand']
	      end
	      
	      if attributes[:'name']
	        @name = attributes[:'name']
	      end
	      
	      if attributes[:'quantity']
	        @quantity = attributes[:'quantity']
	      end
	      
	      if attributes[:'sku']
	        @sku = attributes[:'sku']
	      end
	      
	      if attributes[:'status']
	        @status = attributes[:'status']
	      end
	      
	      if attributes[:'departmentName']
	        @department_name = attributes[:'departmentName']
	      end
	      
	      if attributes[:'departmentCode']
	        @department_code = attributes[:'departmentCode']
	      end
	      
	      if attributes[:'exchangeProcessCode']
	        @exchange_process_code = attributes[:'exchangeProcessCode']
	      end
	      
	      if attributes[:'checkinData']
	        @checkin_data = attributes[:'checkinData']
	      end
	      
	      if attributes[:'devolutionData']
	        @devolution_data = attributes[:'devolutionData']
	      end
	      
	      if attributes[:'totalGross']
	        @total_gross = attributes[:'totalGross']
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
	      
	      if attributes[:'devolutionExchangeStatus']
	        @devolution_exchange_status = attributes[:'devolutionExchangeStatus']
	      end
	      
	    end
	  end
	
	
  end
end
