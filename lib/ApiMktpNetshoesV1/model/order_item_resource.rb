module ApiMktpNetshoesV1
  module Model
	  # 
	  class OrderItemResource < BaseObject
	    attr_accessor :item_id, :manufacturer_code, :ean, :brand, :name, :quantity, :sku, :status, :department_name, :department_code, :total_gross, :total_commission, :total_discount, :total_freight, :total_net, :gross_unit_value, :discount_unit_value, :net_unit_value, :color, :flavor, :size
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
	        :'total_gross' => :'totalGross',
	        
	        # 
	        :'total_commission' => :'totalCommission',
	        
	        # 
	        :'total_discount' => :'totalDiscount',
	        
	        # 
	        :'total_freight' => :'totalFreight',
	        
	        # 
	        :'total_net' => :'totalNet',
	        
	        # 
	        :'gross_unit_value' => :'grossUnitValue',
	        
	        # 
	        :'discount_unit_value' => :'discountUnitValue',
	        
	        # 
	        :'net_unit_value' => :'netUnitValue',
	        
	        # 
	        :'color' => :'color',
	        
	        # 
	        :'flavor' => :'flavor',
	        
	        # 
	        :'size' => :'size'
	        
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
	        :'total_gross' => :'double',
	        :'total_commission' => :'double',
	        :'total_discount' => :'double',
	        :'total_freight' => :'double',
	        :'total_net' => :'double',
	        :'gross_unit_value' => :'double',
	        :'discount_unit_value' => :'double',
	        :'net_unit_value' => :'double',
	        :'color' => :'string',
	        :'flavor' => :'string',
	        :'size' => :'string'
	        
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
	      
	      if attributes[:'totalGross']
	        @total_gross = attributes[:'totalGross']
	      end
	      
	      if attributes[:'totalCommission']
	        @total_commission = attributes[:'totalCommission']
	      end
	      
	      if attributes[:'totalDiscount']
	        @total_discount = attributes[:'totalDiscount']
	      end
	      
	      if attributes[:'totalFreight']
	        @total_freight = attributes[:'totalFreight']
	      end
	      
	      if attributes[:'totalNet']
	        @total_net = attributes[:'totalNet']
	      end
	      
	      if attributes[:'grossUnitValue']
	        @gross_unit_value = attributes[:'grossUnitValue']
	      end
	      
	      if attributes[:'discountUnitValue']
	        @discount_unit_value = attributes[:'discountUnitValue']
	      end
	      
	      if attributes[:'netUnitValue']
	        @net_unit_value = attributes[:'netUnitValue']
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
	      
	    end
	  end
	
	
  end
end
