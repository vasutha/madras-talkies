class Movie < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :reviews
	has_attached_file :movie_img, 
					  storage: :s3,
					  s3_region: ENV['AWS_REGION'],
					  s3_permissions: { original: 'public-read' },
					  s3_credentials: Proc.new{|a| a.instance.s3_credentials },
					  styles: { movie_index: "250x350>", movie_show: "325x475>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :movie_img, content_type: /\Aimage\/.*\z/
	validates :title, presence: true
	validates :description, presence: true
	validates :director, presence: true

	def s3_credentials
    	{ bucket: ENV['S3_BUCKET'], access_key_id: ENV['AWS_ACCESS_KEY_ID'], secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'] }
  	end

	def self.search(filter_params, page)
		if filter_params[:term].present?
			where('title LIKE ?', "%#{filter_params[:term]}%").paginate(page: page, per_page: 10)
		elsif filter_params[:category].present?
			where(:category_id => filter_params[:category]).paginate(page: page, per_page: 10)
		else
			paginate(page: page, per_page: 10)
		end
	end

end
