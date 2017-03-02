class OrderTemp < ApplicationRecord
  belongs_to :products, :class_name =>Product, :foreign_key=>'product_id'
end
