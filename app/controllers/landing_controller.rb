class LandingController < ApplicationController
  def download_pdf
    send_file "#{Rails.root}/app/assets/images/Justin-Boltz-Resume.pdf", type: "application/pdf", x_sendfile: true
  end
end
