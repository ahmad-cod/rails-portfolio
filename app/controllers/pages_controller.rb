class PagesController < ApplicationController
  def home
    current_user = {
      name: "Ahmad",
      full_name: "Ahmad Aroyehun"
    }
  end

  def about
  end

  def contact
  end

  def works
  end
end