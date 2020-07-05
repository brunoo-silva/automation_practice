
Dado('que o usuário acessou o site de compras') do
    @new_user_page.go
end
  
Quando('realizar um cadastro informando {string}') do |user_code|
    file = YAML.load_file(File.join(Dir.pwd, "features/support/fixtures/user.yaml"))
    @user = file[user_code]

    @new_user_page.sign_in(@user)
    @new_user_page.create_user(@user)
    @new_user_page.click_create_user
end
  
Então('devo validar se o usuário está logado no site') do
    name_page = @new_user_page.is_login
    name_user = @new_user_page.name(@user)
    expect(name_page).to have_text name_user
end