require "report_builder"
require "date"

Before do
    @new_user_page = NewUserPage.new
    @login_buy= BuySitePage.new
    page.current_window.resize_to(1440,900)
end

After do |scenario|
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
    attach(screenshot, "image/png")
end

d = DateTime.now 
@current_date = d.to_s.tr(":","-")

at_exit do    
ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/" + @current_date
    config.report_types = [:html]
    config.report_title = "Site Automation Practice"
    config.compress_image = true
    config.additional_info = {"App" => "Web", "Date:" => @current_date }
  end
    ReportBuilder.build_report
end