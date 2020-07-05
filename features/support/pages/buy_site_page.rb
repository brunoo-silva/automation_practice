class BuySitePage
    include Capybara::DSL

    def go
        visit 'http://automationpractice.com/index.php?'
    end

    def login_site(user)
        find("a", text:"Sign in").click
        find('#email').set user["email_title"]
        find('#passwd').set user["Password"]
        find('#SubmitLogin').click
    end

    def go_link(link)
        find('a', text:link).click
    end

    def select_dress(product)
        find('a', text:product).click   
    end

    def select_quantity(quantity)
        find('#quantity_wanted').set quantity
    end

    def select_size(size)
       select = find('#uniform-group_1')
       select.find('option', text:size).select_option
    end

    def select_color(color)
        case color
        when "White"
            find('#color_8').click
        when "Black"
            find('#color_11').click
        when "Blue"
            find("#color_14").click
        when "Orange"
            find('#color_13').click
        end
    end

    def add_to_cart
        find('#add_to_cart').click
    end

    def confirm_product_checkout
        click_link 'Proceed to checkout'
    end

    def click_buttton_confirm
        click_button 'Proceed to checkout'
    end

    def terms_of_service
        find('#uniform-cgv').click
    end 

    def form_payment(payment)
        case payment
        when 'Pay by bank wire'
            find('.bankwire').click
        when 'Pay by check'
            find('.cheque').click
        end
    end

    def confirm_order
        click_button 'I confirm my order'
    end

    def click_cart
        click_link 'Cart'
    end

    def delete_product
       click_link 'Delete'
    end
end