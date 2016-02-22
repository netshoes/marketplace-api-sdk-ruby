#SDK Ruby - Marketplace Grupo Netshoes

Utilizando a SDK Ruby, é possível realizar as integrações necessárias com o marketplace do Grupo Netshoes de forma ágil e simples.

##Download e Instalação

Para utilização da SDK, faça o clone do projeto, utilizando o seguinte comando:

git clone https://github.com/netshoes/marketplace-api-sdk-ruby.git

... ou o download do arquivo zipado:

https://github.com/netshoes/marketplace-api-sdk-ruby/archive/master.zip

Em seguinda, faça o build do projeto 

```sh
gem build ./ApiMktpNetshoesV1.gemspec
```

Esse comando irá gerar o pacote para instalação do componente no repositório local do ruby. Faça a instalação do arquivo gerado:

```sh
gem install ./ApiMktpNetshoesV1-1.0.0.gem
```

Os arquivos DLL para importação em seu projeto de integração estarão disponiveis em _**<pasta_projeto>/bin**_

##Configuração das Informações de Acesso.

Antes de utilizar os recursos da API, é necessário realizar as configurações de base path e também as credenciais para acesso.
Abaixo segue o código de exemplo:

```ruby
require 'ApiMktpNetshoesV1'
require 'ApiMktpNetshoesV1/client'
require 'date'

ApiMktpNetshoesV1::Client.configure do |config|
  config.scheme                  = "http"
  config.host                    = "api-sandbox.netshoes.com.br"
  config.base_path               = "/api/v1"
  # Alterar a chave informada com o valor de client_id na APP
  config.api_key['client_id']    = 'Xd2UiK0niRme'
  # Alterar a chave informada com o valor de access_token na APP
  config.api_key['access_token'] = 'Kv6INzp01EvQ'
end
```

##Tratamento de Erro

Tratamento de estruturas de erros recebidas nas chamadas a API:

```ruby
def self.deserialize_error(error_json)

  error = nil;

  begin
    error = ApiMktpNetshoesV1::Model::ErrorResource.new() and error.build_from_hash(eval(error_json));
  rescue Exception => e
    error = nil;
  end

  return error;

end
```

##Recursos Disponíveis

A seguir, será apresentada a API e exemplos com as as principais operações do Marketplace do Grupo Netshoes.

###Product Template API

Contém os recursos utilizados para auxílio na configuração dos produtos que serão enviados ao marketplace.

####Lista de Departamentos
```ruby
begin
  department_list_resource = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_departments("NS");
  puts department_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

####Lista de Tipos de Produtos
```ruby
begin
  product_type_list_resource = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_product_types(10);
  puts product_type_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

####Lista de Marcas
```ruby
begin
  brand_list_resource = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_brands();
  puts brand_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

####Lista de Tamanhos
```ruby
begin
  size_list_resource  = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_sizes();
  puts size_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

####Lista de Sabores
```ruby
begin
  flavor_list_resource = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_flavors();
  puts flavor_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

####Lista de Cores
```ruby
begin
  color_list_resource  = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_colors();
  puts color_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

####Lista de Templates
```ruby
begin
  template_list_resource = ApiMktpNetshoesV1::Api::ProductsTemplatesApi.list_templates(10, 4);
  puts template_list_resource.inspect;
rescue => e
  puts e.inspect;
end
```

###Products API

Contém os recursos utilizados para criação e alteração de produtos enviados ao marketplace.

#### Criação de Novos Produtos

```ruby
product_resource = ApiMktpNetshoesV1::Model::ProductResource.new();
product_resource.product_id = '12345';
product_resource.department = 'Futebol';
product_resource.product_type = 'Agasalhos';
product_resource.brand  = 'Nike';

attribute_resource = ApiMktpNetshoesV1::Model::AttributeResource.new();
attribute_resource.name = 'SEXO';
attribute_resource.value = 'F';

product_resource.attributes = [
    attribute_resource
];

product_resource.skus = [];

sku_resource = ApiMktpNetshoesV1::Model::SkuResource.new();
sku_resource.sku = '111-0457-289-70';
sku_resource.name = 'Agasalho Teste 01 Nike';
sku_resource.description = 'Agasalho, Branco, Nike';
sku_resource.color = 'Branco';
sku_resource.gender = 'Mulher';
sku_resource.size = 'G';
sku_resource.ean_isbn = '16598198';

image_resource = ApiMktpNetshoesV1::Model::ImageResource.new();
image_resource.url = 'http://7-themes.com/data_images/out/42/6914793-tropical-beach-images.jpg';
sku_resource.images = [
    image_resource
];

sku_resource.video = 'http://video/video1';
sku_resource.height = 20.0;
sku_resource.width = 10.0;
sku_resource.depth = 44.0;
sku_resource.weight = 65.0;

product_resource.skus.push(sku_resource);

sku_resource = ApiMktpNetshoesV1::Model::SkuResource.new();
sku_resource.sku = '111-0457-289-71';
sku_resource.name = 'Agasalho Teste 01 Nike';
sku_resource.description = 'Agasalho, Branco, Nike';
sku_resource.color = 'Branco';
sku_resource.gender = 'Mulher';
sku_resource.size = 'M';
sku_resource.ean_isbn = '16598198';

image_resource = ApiMktpNetshoesV1::Model::ImageResource.new();
image_resource.url = 'http://7-themes.com/data_images/out/42/6914793-tropical-beach-images.jpg';
sku_resource.images = [
    image_resource
];

sku_resource.video = 'http://video/video1';
sku_resource.height = 20.0;
sku_resource.width = 10.0;
sku_resource.depth = 44.0;
sku_resource.weight = 65.0;

product_resource.skus.push(sku_resource);

begin

  product_response = ApiMktpNetshoesV1::Api::ProductsApi.save_product(product_resource);
  puts product_response.inspect;

rescue => e
  error_resource = self.deserialize_error(e.message);
  if error_resource == nil
    puts e.inspect;
  else
    puts error_resource.inspect;
  end
end
```

###SKUs API

Contém os recursos utilizados para checagem de SKUs relacionados aos produtos enviados ao marketplace.

####Verificação do Status de Sincronização Com o Marketplace

Após fazer o envio dos seus produtos no exemplo anterior, você poderá fazer a verificação de sincronização com o marketplace:

```ruby
begin
  business_unit_response = ApiMktpNetshoesV1::Api::SkusApi.get_status('111-0457-289-70', 'NS');
  puts business_unit_response.inspect;
rescue => e
  puts e.inspect;
end
```

Isso indica que seus produtos já podem ser comercializados nos portais de venda.
Mas antes, é necessário realizar os procedimentos de atualização de estoque, preço e status, conforme exibido nos exemplos abaixo:

####Configuração de Estoque

```ruby
stock_resource = ApiMktpNetshoesV1::Model::StockResource.new();
stock_resource.available = 20.0;
stock_resource.country = 'BR';

begin
  stock_response = ApiMktpNetshoesV1::Api::SkusApi.update_stock('111-0457-289-40', stock_resource);
  puts stock_response.inspect;
rescue => e
  puts e.inspect;
end
```

####Configuração de Preço

```ruby
price_resource = ApiMktpNetshoesV1::Model::PriceResource.new();
price_resource.price = 100.0;

begin
  price_response = ApiMktpNetshoesV1::Api::SkusApi.update_price('111-0457-289-40', price_resource);
  puts price_response.inspect;
rescue => e
  puts e.inspect;
end
```

####Ativação do Produto para Venda

```ruby
business_unit_resource = ApiMktpNetshoesV1::Model::BusinessUnitResource.new();
business_unit_resource.active = true;

begin
  business_unit_response =ApiMktpNetshoesV1::Api::SkusApi.update_status('111-0457-289-40', 'NS', business_unit_resource);
  puts business_unit_response.inspect;
rescue => e
  puts e.inspect;
end
```

###Orders API

Agora que os produtos já estão disponíveis para venda, é possível fazer a consulta de ordens geradas nos portais de venda Netshoes e Zattini.

```ruby
begin

  # Lista as ordens de D-1
  order_list_resource = ApiMktpNetshoesV1::Api::OrdersApi.list_orders(
    :page => 0, :size => 20, :expand => nil, 
    :orderStartDate => DateTime.now - 1, :orderEndDate => DateTime.now, 
    :orderStatus => 'Faturado', :orderType => 'Venda');

  puts order_list_resource.inspect;

rescue => e
  error_resource = self.deserialize_error(e.message);
  if error_resource == nil
    puts e.inspect;
  else
    puts error_resource.inspect;
  end
end
```
