component {

  this.title = "Aylien NLP API";
  this.author = "Matthew J. Clemente";
  this.webURL = "https://github.com/mjclemente/aylien.cfc";
  this.description = "A wrapper for the Aylien NLP API";

  function configure(){
    settings = {
      applicationId = '', // Required
      applicationKey = '', // Required
      baseUrl = "https://api.aylien.com/api/v1", // Default value in init
      includeRaw = false // Default value in init
    };
  }

  function onLoad(){
    binder.map( "aylien@ayliencfc" )
      .to( "#moduleMapping#.aylien" )
      .asSingleton()
      .initWith(
        applicationId = settings.applicationId,
        applicationKey = settings.applicationKey,
        baseUrl = settings.baseUrl,
        includeRaw = settings.includeRaw
      );
  }

}