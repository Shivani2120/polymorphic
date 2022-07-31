# Preview all emails at http://localhost:3000/rails/mailers/players_mailer
class PlayersMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/players_mailer/new_players
  def new_players
    PlayersMailer.new_players
  end

end
