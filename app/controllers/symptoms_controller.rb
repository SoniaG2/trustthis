class SymptomsController < ApplicationController
  before_filter :authenticate, except: [:index, :show]

  def index
    if params[:q]
      @symptoms = Symptom.search_by_full_name(params[:q]).order("symptoms.order")
    else
      @symptoms = Symptom.order("symptoms.order").all
    end
  end

  def show
    @symptom = Symptom.find(params[:id])
    @next_symptom = Symptom.order("symptoms.order").where("symptoms.order > ?", @symptom.order).first
    @previous_symptom = Symptom.order("symptoms.order").where("symptoms.order < ?", @symptom.order).first
  end

  def new
    @symptom = Symptom.new
  end

  def edit
    @symptom = Symptom.find(params[:id])
  end

  def create
    @symptom = Symptom.new(params[:symptom])

    if @symptom.save
      redirect_to @symptom, notice: 'Symptom was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @symptom = Symptom.find(params[:id])

    if @symptom.update_attributes(params[:symptom])
      redirect_to @symptom, notice: 'Symptom was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @symptom = Symptom.find(params[:id])
    @symptom.destroy

    redirect_to symptoms_url
  end

  protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "Sonia" && password == "123qwe"
    end
  end
end
