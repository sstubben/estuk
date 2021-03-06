# == Schema Information
#
# Table name: books
#
#  id                    :integer          not null, primary key
#  name                  :string(255)
#  author                :string(255)
#  description           :text
#  price                 :integer
#  availability          :boolean          default(TRUE)
#  created_at            :datetime
#  updated_at            :datetime
#  user_id               :integer
#  image_file_name       :string(255)
#  image_content_type    :string(255)
#  image_file_size       :integer
#  image_updated_at      :datetime
#  resource_file_name    :string(255)
#  resource_content_type :string(255)
#  resource_file_size    :integer
#  resource_updated_at   :datetime
#

class Book < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image
	has_attached_file :resource
end
