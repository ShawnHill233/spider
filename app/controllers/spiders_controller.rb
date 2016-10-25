class SpidersController < ApplicationController
  def index
    agent = Mechanize.new
    login_page = agent.get('https://www.tumblr.com/login')
    @loggedin_page = login_page.form_with(:id => 'signup_form') do |form|
      @form = form.fields
      email_field = form.field_with(:name => 'user[email]')
      email_field.value = 'a361162743@hotmail.com'
      password_field = form.field_with(:name => 'user[password]')
      password_field.value = '88siyang'
    end.submit

  end
end
