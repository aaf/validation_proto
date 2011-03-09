class OrangesController < ApplicationController
  # GET /oranges
  # GET /oranges.xml
  def index
    @oranges = Orange.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @oranges }
    end
  end

  # GET /oranges/1
  # GET /oranges/1.xml
  def show
    @orange = Orange.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @orange }
    end
  end

  # GET /oranges/new
  # GET /oranges/new.xml
  def new
    @orange = Orange.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @orange }
    end
  end

  # GET /oranges/1/edit
  def edit
    @orange = Orange.find(params[:id])
  end

  # POST /oranges
  # POST /oranges.xml
  def create
    @orange = Orange.new(params[:orange])

    respond_to do |format|
      if @orange.save
        format.html { redirect_to(@orange, :notice => 'Orange was successfully created.') }
        format.xml  { render :xml => @orange, :status => :created, :location => @orange }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @orange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /oranges/1
  # PUT /oranges/1.xml
  def update
    @orange = Orange.find(params[:id])

    respond_to do |format|
      if @orange.update_attributes(params[:orange])
        format.html { redirect_to(@orange, :notice => 'Orange was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @orange.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /oranges/1
  # DELETE /oranges/1.xml
  def destroy
    @orange = Orange.find(params[:id])
    @orange.destroy

    respond_to do |format|
      format.html { redirect_to(oranges_url) }
      format.xml  { head :ok }
    end
  end
end
