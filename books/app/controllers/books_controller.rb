class BooksController < ApplicationController
   
 def index
   @books = Book.all
 end
 
 def show
  @book = Book.find_by(id: params[:id])
 end
   
 def new
	@book = Book.new
 end

 def edit
      @book = Book.find_by(id: params[:id])
 end
  
 def create
	@book = Book.new(book_params)
   
    if @book.save
        # 成功
        redirect_to books_path, notice: "success!"
      else
        # 失敗
        render :new
 end
 
 def update
      @book = Book.find_by(id: params[:id])

      if @book.update(book_params)
        # 成功
        redirect_to books_path, notice: "update success!"
      else
        # 失敗
        render :edit
      end
    end
   
   
   
   private
    def book_params
      params.require(:book).permit(:name, :introduction, :author, :price)
    end
end