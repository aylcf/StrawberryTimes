class StaticPagesController < ApplicationController
  skip_before_filter :authorize

  def about
  end

  def jianianhua
  end

  def worldcongress
  end

  def agencygarden

  end

  def contact
    @member = Member.new
    session[:contact_name]=''
    session[:contact_email]=''
  end

  def newslist
    # 应用了分页插件
    @newslists = Newslist.order('id').page(params[:page]).per(10)

  end

  def story
    # 应用了分页插件
    @stories = Story.order('id').page(params[:page]).per(5)

  end

  def input_garden_info
    @alliance_garden = AllianceGarden.new

  end

  def alliance_garden

    # 应用了分页插件,以显示莓园联盟数据库中数据。
    @alliance_gardens = AllianceGarden.order('id').page(params[:page]).per(10)
  end

  def tianrunyuan

  end

  def wandezhuangyuan

  end
end
