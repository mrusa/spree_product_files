module MyStore
  module Spree
    module ProductDecorator
      def self.prepended(base)
        base.has_many :product_files, -> { order(:position) }, as: :viewable, dependent: :destroy
      end
    end
  end
end

::Spree::Product.prepend(MyStore::Spree::ProductDecorator)