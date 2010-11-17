
component{
	// Application properties
	this.name = hash(getCurrentTemplatePath());
	this.sessionManagement = true;
	this.sessionTimeout = createTimeSpan(0,0,30,0);
	this.setClientCookies = true;
	this.datasource = "cfartgallery";
	this.clientManagement = true;
	
	this.ormenabled = "true";
	this.ormsettings = {
			  logSQL 			= false
			 ,dbcreate			= 'update'
			 ,cfclocation		= 'model/object/'
	};


}