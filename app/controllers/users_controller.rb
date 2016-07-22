class UsersController < ApplicationController
    authorize_resource
    
    def new
        @user = User.new
        
    end
    
    def edit
        @user = User.friendly.find(params[:id]) 
    end
    
    def show
        @user = User.friendly.find(params[:id])
        @organizations = current_user.organizations
    end

    def add
        # render "new"
        @user = User.new(user_params)
        if @user.save 
            redirect_to  current_user.organization(user_params)
        else
            render("new")
        end
    end

    def destroy
        @user = User.friendly.find(params[:id])
        @user.destroy
        redirect_to :back
    end

    private
    def user_params
      params.require(:user).permit(:first_name,:last_name, :organization_id, :position, :telephone, :email, :password)
    end


end
