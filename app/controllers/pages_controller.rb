class PagesController < ApplicationController
  before_action :require_login, only: [:customers]

  def index
  end

  def about
  end

  def contact
  end

  def customers
  end

  def info_sys
  end

  def languages
  end

  def medical
  end

  def solutions
  end

  def specialized_training
  end

  def staffing
  end
end
