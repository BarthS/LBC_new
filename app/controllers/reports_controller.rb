class ReportsController < ApplicationController

  before_action :authenticate_user!


  def new
  end

  def show
    @report = Report.find(params[:id])
  end

  def index
    @reports = Report.all
    @users = User.all
  end


  def create
    @report = Report.new(report_params)

    @report.save
    if @report.save
        AdminMailer.new_report(@report).deliver
    end
    redirect_to @report
  end

  def destroy
    @report = Report.find(params[:id])
    @report.destroy

    redirect_to reports_path
  end

  private
    def report_params
      params.require(:report).permit(:text, :link)
    end
end
