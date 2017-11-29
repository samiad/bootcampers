class Projects::SignedoffsController < ApplicationController
  before_action :set_project

  def create
    customer = Stripe::Customer.create(
      source: params[:stripeToken],
      email:  params[:stripeEmail]
    )

    charge = Stripe::Charge.create(
      customer:     customer.id,   # You should store this customer id and re-use it.
      amount:       @project.price_cents,
      description:  "Payment for project #{@project.title}",
      currency:     @project.price.currency
    )

    @project.update(payment: charge.to_json, state: 'paid', signed_off_at: DateTime.now)

    redirect_to company_projects_path

  # rescue Stripe::CardError => e
  #   flash[:alert] = e.message
  #   redirect_to new_project_payment_path(@project)
  end

  private

  def set_project
     @project = Project.find(params[:project_id])
  end

end
