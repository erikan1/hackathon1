class List < ApplicationRecord
  has_many :line_items, dependent: :destroy
  belongs_to :user, optional: true

  def duplicate
    @product = Product.find(params[:id])
    @line_item = @product.dup
  end

  def add_product(product_params)
    current_item = line_items.find_by(product_id: product_params[:product][:product_id])

    if current_item
      flash[:error] = 'Item already in your list'
      redirect_to @product
    else
      current_item = line_items.create(product_id: product_params[:product][:product_id], quantity: product_params[:product][:quantity], list_id: self.id)
    end
    current_item
    redirect_to @line_items
  end
end
