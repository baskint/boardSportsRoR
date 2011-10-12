class BoardSportsController < ApplicationController
  # GET /board_sports
  # GET /board_sports.xml
  def index
    @board_sports = BoardSport.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @board_sports }
    end
  end

  # GET /board_sports/1
  # GET /board_sports/1.xml
  def show
    @board_sport = BoardSport.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @board_sport }
    end
  end

  # GET /board_sports/new
  # GET /board_sports/new.xml
  def new
    @board_sport = BoardSport.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @board_sport }
    end
  end

  # GET /board_sports/1/edit
  def edit
    @board_sport = BoardSport.find(params[:id])
  end

  # POST /board_sports
  # POST /board_sports.xml
  def create
    @board_sport = BoardSport.new(params[:board_sport])

    respond_to do |format|
      if @board_sport.save
        format.html { redirect_to(@board_sport, :notice => 'Board sport was successfully created.') }
        format.xml  { render :xml => @board_sport, :status => :created, :location => @board_sport }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @board_sport.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /board_sports/1
  # PUT /board_sports/1.xml
  def update
    @board_sport = BoardSport.find(params[:id])

    respond_to do |format|
      if @board_sport.update_attributes(params[:board_sport])
        format.html { redirect_to(@board_sport, :notice => 'Board sport was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @board_sport.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /board_sports/1
  # DELETE /board_sports/1.xml
  def destroy
    @board_sport = BoardSport.find(params[:id])
    @board_sport.destroy

    respond_to do |format|
      format.html { redirect_to(board_sports_url) }
      format.xml  { head :ok }
    end
  end

  def windsurf

  end
end
