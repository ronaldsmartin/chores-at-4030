class Notifications < ActionMailer::Base
  default from: "no-reply@chores-at-4030.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_chore.subject
  #
  def new_chore
    @greeting = "Hi roommate,"

    mail to: 'to@example.org'
  end
end
