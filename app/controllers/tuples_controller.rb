class TuplesController < ApplicationController
  # GET /tuples
  # GET /tuples.xml
  def index
    @tuples = Tuple.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tuples }
    end
  end

  # GET /tuples/1
  # GET /tuples/1.xml
  def show
    @tuple = Tuple.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tuple }
    end
  end

  # GET /tuples/new
  # GET /tuples/new.xml
  def new
    @tuple = Tuple.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tuple }
    end
  end

  # GET /tuples/1/edit
  def edit
    @tuple = Tuple.find(params[:id])
  end

  # POST /tuples
  # POST /tuples.xml
  def create
    @tuple = Tuple.new(params[:tuple])

    respond_to do |format|
      if @tuple.save
        format.html { redirect_to(@tuple, :notice => 'Tuple was successfully created.') }
        format.xml  { render :xml => @tuple, :status => :created, :location => @tuple }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tuple.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tuples/1
  # PUT /tuples/1.xml
  def update
    @tuple = Tuple.find(params[:id])

    respond_to do |format|
      if @tuple.update(params[:tuple])
        format.html { redirect_to(@tuple, :notice => 'Tuple was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tuple.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tuples/1
  # DELETE /tuples/1.xml
  def destroy
    @tuple = Tuple.find(params[:id])
    @tuple.destroy

    respond_to do |format|
      format.html { redirect_to(tuples_url) }
      format.xml  { head :ok }
    end
  end
end
