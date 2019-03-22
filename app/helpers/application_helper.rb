module ApplicationHelper
	include TictactoeUsersHelper

	def is_admin?(user)
		user_signed_in? && user.status == Status.find_by(name: "Admin")
	end


	def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
			no_intra_emphasis: true,
			fenced_code_blocks: true,
			disable_indented_code_blocks: true,
			autolink: true,
			tables: true,
			underline: true,
			highlight: true
		)
		return markdown.render(text).html_safe
	end

	def tidy_date(date)
		"#{date.year}/#{date.month}/#{date.day} - #{date.hour}:#{date.min}"
	end

	def find_comment(article)
		Comment.where(article_id: article.id)
	end

	def find_like(article)
		like = Like.where(article_id: article.id, user_id: current_user.id)
	end

	def check_h2(text)
		md_to_html = text.gsub! '<h2>', '<h2 class="short-hr-left">'
		md_to_html.to_s
	end

	def user_liked?(article)

  	article.likes.each do |like|
    	if like.user == current_user
      	return false
    	end
  	end
	end

	def find_scores(scores)
    scores_list = Array.new
    scores.each do |score|
    	indice = 0
    	puts score.victory
    	if score.victory == true
      	scores_list.each_with_index do |list, index|
      		puts "-------------tic-------------"

        	if list[:game] == score.game && list[:player] == score.user
          	if score.victory == true
            	scores_list[index][:win] += 1
          	end
          	indice = 1
        	end
      	end
      	if indice == 0
        	puts "---------------tac------------"
        	scores_list << {game: score.game, player: score.user, win: 1}
      	end
    	end

    end
    puts "============================================="
    puts scores_list
    puts "============================================="
    return scores_list
  end

	def sum_amount(donations)
		x = 0
		donations.each do |donation|
			x += donation.amount
		end
		return x
	end
end
