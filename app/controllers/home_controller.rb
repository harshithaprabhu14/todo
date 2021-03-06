class HomeController < ApplicationController

  def trash_em
    @trash_em = Lists.where(:completed => true).destroy_all
    redirect_to root_url, notice: 'All Marked Items Were Successfully Deleted.'
  end

  def trash_em_all
    @trash_em_all = Lists.all.destroy_all
    redirect_to root_url, notice: 'All Items Were Successfully Deleted.'
  end

end