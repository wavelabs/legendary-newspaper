class DolarService
  def GetDolar
    response = HTTParty.get("https://www.dolarsi.com/api/api.php?type=cotizador")
    data = response.body
    dolar_buy = response.first['casa']['compra']
    dolar_sale = response.first['casa']['venta']

    dolar = {dolar_buy: dolar_buy, dolar_sale: dolar_sale}    
  end
end