# frozen_string_literal: true

class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def alphabetical
    @customers = Customer.order(:full_name)
  end

  def no_email
    @customer = Cudtomer.where(email: null)
  end
end
