class TodoController < ApplicationController
before_filter :login_required

  def create
   task = current_user.tasks.find(params[:id])
   current_user.schedule.todos.create(:task_id => task.id)
   redirect_to(:controller => "today", :action => "index")
   end


  def todo_delete
@todo = Todo.find(params[:id])
current_user.schedule.todos.destroy(@todo)
redirect_to(:controller => "today", :action => "index")
end


#   def destroy
#    @todo.destroy
#    redirect_to(todos_url)
#  end
end
