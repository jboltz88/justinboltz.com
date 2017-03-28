class LandingController < ApplicationController
  def download_pdf
    send_file "#{Rails.root}/app/assets/images/Justin-Boltz-Resume.pdf", type: "application/pdf", x_sendfile: true
  end

  def index
    @projects = Project.take(3)
    @posts = Post.order(params[:date]).take(3)
  end
end
