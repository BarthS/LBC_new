class AdminMailer < ActionMailer::Base
   default to: Proc.new { User.where(admin: 1).pluck(:email) },
          from: 'notification@caddiie.com'

  def new_registration(user)
    @user = user
    mail(subject: "Nouvel utilisateur: #{@user.email}")
  end

  def new_report(report)
    @report = report
    mail(subject: "Nouveau signalement")
  end
end
