# frozen_string_literal: true

# Products CRUD
class Api::V1::ProductsController < ApplicationController
  before_action :current_product, only: %i[show update destroy]

  def index
    @products = Product.all
    render json: @products, include: [:category]
    # render json: @products, except: %i[created_at updated_at], include: { category: { only: %i[name desc] } },
    #        status: 200
    # render json: { status: 200, message: 'All Products',
    #                data: @products.to_json(except: %i[created_at updated_at], include: { category: { only: %i[name desc] } }) }
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def update
    if @product.update(product_params)
      render json: @product
    else
      render json: @product.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @product
  end

  private

  def current_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :brand, :price, :desc, :category_id)
  end
end
