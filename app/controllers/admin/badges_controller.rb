class Admin::BadgesController < Admin::BaseController
  before_action :find_badge, only: %i[show edit update destroy]

  def index
    @badges = Badge.all
  end

  def show; end

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)

    if @badge.save
      redirect_to [:admin, @badge]
    else
      render :new
    end
  end

  def edit; end

  def update
    if @badge.update(badge_params)
      redirect_to admin_badges_path
    else
      render :edit
    end
  end

  def destroy
    @badge.destroy

    redirect_to admin_badges_path
  end

  private

  def badge_params
    params.require(:badge).permit(:name, :description, :image_link, :rule_type, :rule_value)
  end

  def find_badge
    @badge = Badge.find(params[:id])
  end
end
