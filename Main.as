
			import mx.rpc.events.ResultEvent;
			import mx.controls.Alert;
			private var lang:XML;
			[Bindable] public var careerLabel:String;
			[Bindable] public var contactusLabel:String;
			[Bindable] public var customersLabel:String;
			[Bindable] public var homeLabel:String;
			[Bindable] public var servicesLabel:String;
			[Bindable] public var solutionsLabel:String;
			
			public function creationCompleteFunctions():void{
			langReq.send();
		    }
			private function toXMLFormat(event:ResultEvent):void {
				lang = event.result as XML;
                homeLabel = lang.entry.(@key == 'main.home').@value;
                careerLabel = lang.entry.(@key == 'main.career').@value;
                customersLabel = lang.entry.(@key == 'main.customers').@value;
                solutionsLabel = lang.entry.(@key == 'main.solutions').@value;
                contactusLabel = lang.entry.(@key == 'main.contactus').@value;
                servicesLabel = lang.entry.(@key == 'main.services').@value;
                
			}
			private function XMLFaultHandle():void {
		        Alert.show("File Not Found");
	        }// ActionScript file
