class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :prefecture
  belongs_to :sales_status
  belongs_to :scheduled_delivery
  belongs_to :shipping_fee_status
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :item_name
    validates :info
    validates :price
    validates :image

    with_options numericality: { other_than: 1, message: "can't be blank" } do
      validates :category_id
      validates :prefecture_id
      validates :sales_status_id
      validates :scheduled_delivery_id
      validates :shipping_fee_status_id
    end

  end

end
