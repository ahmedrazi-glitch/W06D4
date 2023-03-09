# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :name, presence: true

    has_many :artworks,
    foreign_key: :artist_id,
    inverse_of: :artist

    has_many :artwork_shares,
    foreign_key: :viewer_id,
    class_name: :ArtworkShares
end
