class reportsController < ApplireportionController
  def new
  end

  def show
    @report = report.find(params[:id])
  end

  def index
    @reports = report.all
  end


  def create
    @report = report.new(report_params)

    @report.save
    redirect_to @report
  end

  def destroy
    @report = report.find(params[:id])
    @report.destroy

    redirect_to reports_path
  end

  private
    def report_params
      params.require(:report).permit(:text, :link)
    end
end
