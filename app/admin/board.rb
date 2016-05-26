ActiveAdmin.register Board do

  actions :all
  config.clear_action_items!
  config.filters = false
  form partial: 'form'
  menu label: "Onboarding Form"

  index :title => "Onboarding Form" do
    column :legal_business_name
    column :company_name
    column :created_at

    actions defaults: false do |board|
      unless board.grants_access
        link_to 'Grant Access', grant_access_admin_boards_path(board)
      end

    end
    actions
  end

  show do
    render 'show_board'
  end

  action_item 'New Onboarding Form', only: :index do
    link_to 'New Onboarding Form', new_admin_board_path, method: :get
  end

  collection_action :grant_access, method: :get, title: 'Grant Access' do
    @board = Board.find(params[:format])
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    password_string = (0...20).map { o[rand(o.length)] }.join
    @user = User.new({email: @board.primary_business_email, password: password_string, password_confirmation: password_string, pas_decrypt: password_string})
    if @user.save
      @board = Board.find(params[:format])
      @board.update_attributes(grants_access: true, user_id: @user.id)
      BoardMailer.create_user(@board, @user).deliver
    end
    redirect_to admin_boards_path
  end

  controller do

    def show
      @board = Board.find(params[:id])
      # redirect_to admin_board_path(params[:id])
    end

    def create
      @board = Board.new(board_params)
      if @board.save
        redirect_to admin_board_path(@board.id)
      else
        render 'new'
      end
    end


    private
    def board_params
      params.require(:board).permit!
    end
  end


end
