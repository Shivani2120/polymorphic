class PlayersMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.players_mailer.new_players.subject
  #
  def new_players
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
