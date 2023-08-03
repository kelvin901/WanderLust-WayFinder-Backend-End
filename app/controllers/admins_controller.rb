class AdminsController < ApplicationController


    def index
        admin = Admin.all
        render json: admin
    end

    # CREATE NEW ADMIN 

    def create
        admin = Admin.new(admin_params)
    
        if admin.save
          render json: { message: 'Sign up successful!' }, status: :created
        else
          render json: { error: 'Failed to sign up' }, status: :unprocessable_entity
        end
      end
 

       def show
         admin = Admin.find_by(id: session[:admin_id])
         if admin
           render json: admin
         else
           render json: { error: "Not authorized" }, status: :unauthorized
         end
       end
     
   

        # PATCH /admin/:id

        def update
          admin = Admin.find_by(id: params[:id])
          if user.update(admin_params)
            render json: admin
          else
            render json: { error: 'Failed to update user information' }, status: :unprocessable_entity
          end
        end


              # DELETE /attraction/:id
      def destroy
        admin = find_admin
        admin
        admin.destroy
        head :no_content
        
      end


        private

        def admin_params
          params.permit(:first_name, :last_name, :username, :email, :password, :avatar)
        end


        def find_admin
            Admin.find(params[:id])
          end

end
