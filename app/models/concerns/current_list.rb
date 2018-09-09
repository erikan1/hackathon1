module CurrentList

  private

    def set_list
      @list = List.find(session[:list_id]. user: session[:user_id])
      rescue ActiveRecord::RecordNotFound
      @list = List.create(:list_count=>0)
      session[:list_id] = @list.id
    end

end
