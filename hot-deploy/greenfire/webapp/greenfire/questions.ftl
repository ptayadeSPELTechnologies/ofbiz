<html>
    <head>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js" type="text/javascript"></script> 
    <a href="#" id="question1" class="link">Question 1</a>
    <a href="#" id="question2" class="link">Question 2</a>
    <a href="#" id="question3" class="link">Question 3</a>
    <a href="#" id="question4" class="link">Question 4</a>
    <a href="#" id="question5" class="link">Question 5</a>
    <a href="#" id="question6" class="link">Question 6</a>
    <a href="#" id="question7" class="link">Question 7</a>
	</head>
	
	<body>            
    	<h3>Merscythe: Adventures with the Codue</h3>   
	<div id="dvContent"></div>
	
	<script>
		$(document).ready(function(){
		   // determine which tutorial link has been clicked
		   $(".link").click(function(e) {
		      var linkname = $(this).attr("id");
	    	  e.preventDefault();
	    	  e.stopPropagation();
	    	  console.log("clicked");
	    	  console.log(linkname);
	    	  
	    	  var datafile = "/greenfire/xml_files/" + linkname + ".xml";
  			  $("#dvContent").html("<ul></ul>");
  			  // read data from tutorial#.xml file
  			  $.ajax({
    			  type: "GET",
    			  url: datafile,
    			  dataType: "xml",
    			  success: function(xml){
      				  var title = $(xml).find('Title').text();
      				  var data = $(xml).find('Data').text();
      				  $("<li></li>").html(title + ", " + data).appendTo("#dvContent ul");
  			      },
  			      error: function() {
    			      alert("An error occurred while processing XML file.");
  			      }
  			  });
  			  
  			    var datafile1 = "/greenfire/xml_files/" + "question_examples" + ".xml";
  			    // parse the index from the name of link clicked; for example, question1 has index 1.
  			    console.log("linkname" +linkname.substr(8));
  			     var index = parseInt(linkname.substr(8)) - 1;
  			    //read data from questionExamples.xml file
  			    // this problem will be displayed in editor
  			      $.ajax({
    			  type: "GET",
    			  url: datafile1,
    			  dataType: "xml",
    			  success: function(xml){
    			      console.log(datafile1);
      				  var examples = $(xml).find("Examples");
      				  // find the relevant problem for current tutorial
      				  var data = examples.find("Data").eq(index).text();
      				  console.log(data);
      				 $("#loquacious").val(data);
      				 
  			      },
  			      error: function() {
    			      alert("An error occurred while processing XML file.");
  			      }
  			  });
  			  
  			    var datafile2 = "/greenfire/xml_files/" + "questionSolutions" + ".xml";
  			    // parse the index from the name of link clicked; for example, question1 has index 1.
  			    console.log("linkname" +linkname.substr(8));
  			     var index = parseInt(linkname.substr(8)) - 1;
  			    //read data from questionExamples.xml file
  			    // this problem will be displayed in editor
  			      $.ajax({
    			  type: "GET",
    			  url: datafile2,
    			  dataType: "xml",
    			  success: function(xml){
    			      console.log(datafile1);
      				  var examples = $(xml).find("Examples");
      				  // find the relevant problem for current tutorial
      				  var data = examples.find("Data").eq(index).text();
      				  //console.log("desired output read from XML file is " +data);
      				  //$("#desiredoutput").val(data);
      				 // insert the linkname into the hidden field
      				 $("#clickedLinkName").val(linkname);
  			      },
  			      error: function() {
    			      alert("An error occurred while processing XML file.");
  			      }
  			  });
  			      
  		  });
	  });               
	</script>
	</body>
</html>