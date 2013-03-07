class RepliesController < ApplicationController
  # GET /replies
  # GET /replies.json
  def index
    @question = Question.find(params[:question_id])
    @replies = @question.replies.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @replies }
    end
  end

  # GET /replies/1
  # GET /replies/1.json
  def show
    @question = Question.find(params[:question_id])
    @reply = @question.replies.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reply }
    end
  end

  # GET /replies/new
  # GET /replies/new.json
  def new
    @question = Question.find(params[:question_id])
    @reply = @question.replies.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reply }
    end
  end

  # GET /replies/1/edit
  def edit
    @question = Question.find(params[:question_id])
    @reply = @question.replies.find(params[:id])
  end

  # POST /replies
  # POST /replies.json
  def create
    @question = Question.find(params[:question_id])
    @reply = @question.replies.build(params[:reply])
    @reply.member = current_member

    respond_to do |format|
      if @reply.save
        format.html { redirect_to @question, notice: 'Reply was successfully created.' }
        format.json { render json: @question, status: :created, location: @reply }
      else
        format.html { render action: "new" }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /replies/1
  # PUT /replies/1.json
  def update
    @question = Question.find(params[:question_id])
    @reply = @question.replies.find(params[:id])

    respond_to do |format|
      if @reply.update_attributes(params[:reply])
        format.html { redirect_to @reply, notice: 'Reply was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @reply.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /replies/1
  # DELETE /replies/1.json
  def destroy
    @question = Question.find(params[:question_id])
    @reply = @question.replies.find(params[:id])
    @reply.destroy

    respond_to do |format|
      format.html { redirect_to replies_url }
      format.json { head :no_content }
    end
  end
end
