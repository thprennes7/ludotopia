module DonationsHelper
  def find_donations(game)
    Donation.where(game_id: game.id).sort.reverse
  end
end
