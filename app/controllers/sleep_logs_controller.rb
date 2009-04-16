class SleepLogsController < ApplicationController
  # GET /sleep_logs
  # GET /sleep_logs.xml
  def index
    @sleep_logs = SleepLog.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sleep_logs }
    end
  end

  # GET /sleep_logs/1
  # GET /sleep_logs/1.xml
  def show
    @sleep_log = SleepLog.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sleep_log }
    end
  end

  # GET /sleep_logs/new
  # GET /sleep_logs/new.xml
  def new
    @sleep_log = SleepLog.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sleep_log }
    end
  end

  # GET /sleep_logs/1/edit
  def edit
    @sleep_log = SleepLog.find(params[:id])
  end

  # POST /sleep_logs
  # POST /sleep_logs.xml
  def create
    @sleep_log = SleepLog.new(params[:sleep_log])

    respond_to do |format|
      if @sleep_log.save
        flash[:notice] = 'SleepLog was successfully created.'
        format.html { redirect_to(@sleep_log) }
        format.xml  { render :xml => @sleep_log, :status => :created, :location => @sleep_log }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sleep_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sleep_logs/1
  # PUT /sleep_logs/1.xml
  def update
    @sleep_log = SleepLog.find(params[:id])

    respond_to do |format|
      if @sleep_log.update_attributes(params[:sleep_log])
        flash[:notice] = 'SleepLog was successfully updated.'
        format.html { redirect_to(@sleep_log) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sleep_log.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sleep_logs/1
  # DELETE /sleep_logs/1.xml
  def destroy
    @sleep_log = SleepLog.find(params[:id])
    @sleep_log.destroy

    respond_to do |format|
      format.html { redirect_to(sleep_logs_url) }
      format.xml  { head :ok }
    end
  end
end
