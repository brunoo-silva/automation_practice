Dado('que o usuário realizou login {string}, clicou no link {string}') do |user_code, link|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/user.yaml"))
    @user = file[user_code]

    @login_buy.go
    @login_buy.login_site(@user)
    @login_buy.go_link(link)  
end

Quando('realizar a compra do produto {string}, quantidade {string}, tamanho {string}, cor {string}') do |product, quantity, size, color|
    @login_buy.select_dress(product)
    @login_buy.select_quantity(quantity)
    @login_buy.select_size(size)
    @login_buy.select_color(color)
    @login_buy.add_to_cart
end
  
Quando('finalizar o pagamento com a opção {string}') do |payment|
    @login_buy.confirm_product_checkout
    @login_buy.confirm_product_checkout
    @login_buy.click_buttton_confirm
    @login_buy.terms_of_service
    @login_buy.click_buttton_confirm
    @login_buy.form_payment(payment)
    @login_buy.confirm_order
end

Então('devo validar se a minha compra foi finalizada') do
    expect(page).to have_text 'Your order on My Store is complete.'
end

Quando('adicionou no carrinho de compras o produto {string}') do |product|
    @login_buy.select_dress(product)
    @login_buy.add_to_cart
end
  
Então('o cliente decidiu remover o produto do seu carrinho') do
    @login_buy.click_cart
    @login_buy.delete_product
    expect(page).to have_text 'Your shopping cart is empty.'
end


						