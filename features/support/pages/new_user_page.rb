class NewUserPage
    include Capybara::DSL

    def go
        visit 'http://automationpractice.com/index.php'
    end

    def sign_in(user)
        find("a", text:"Sign in").click
        find('#email_create').set user["email_title"]
        find('#SubmitCreate').click
    end
    
    def select_day(day)
        within '#uniform-days' do
            find("option[value='#{day}']").click
        end
    end

    def select_month(month)
        within '#uniform-months' do
            find("option[value='#{month}']").click
        end
    end

    def select_year(year)
        within '#uniform-years' do
            find("option[value='#{year}']").click
        end
    end

    def select_state(state)
        select = find('#uniform-id_state')
        select.find('option', text:state).select_option
    end

    def select_country(country)
        select = find('#uniform-id_country')
        select.find('option', text:country).select_option
    end

    def create_user(user)
        find('.top', text:(user["title"])).click
        find('#customer_firstname').set user["First_name"]
        find('#customer_lastname').set user["Last_name"]
        find('#passwd').set user["Password"]
        select_day(user['Date_Birth'])
        select_month(user["Month_Birth"])
        select_year(user["Year_Birth"])
        find('#uniform-newsletter').click
        find('#uniform-optin').click
        find('#company').set user["Company"]
        find('#address1').set user["Address"]
        find('#city').set user["City"]
        select_state(user["State"])
        find('#postcode').set user["Postal_Code"]
        select_country(user["Country"])
        find('#other').set user["Additional_information"]
        find('#phone_mobile').set user["Mobile_phone"]
    end

    def click_create_user
        find('#submitAccount').click
    end

    def name(user)
        fisrtName = user["First_name"]
        lastName =  user["Last_name"]
        name = fisrtName+lastName       
    end

    def is_login
        find('.account')
    end
end