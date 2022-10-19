
function popupButton(id){
    getPopupText(id);
}

function showNews(){
    returnNumberOfRows();
}


function insertToDatabase(i,btn_id, source_name, article_url, article_title, article_description, article_content, article_publish_date, publish_hour, publish_minute, publish_second){
   
   
    var xhttpr = new XMLHttpRequest();
    xhttpr.open("POST", "insert_into_database.php", true);

    //Send the proper header information along with the request
    xhttpr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        xhttpr.onreadystatechange = () => { // Call a function when the state changes.
            if (xhttpr.readyState === XMLHttpRequest.DONE && xhttpr.status === 200) {
            // Request finished. Do processing here.
                if(i==19){
                    selectFromDatabase(i);
                }
            }
        }
    xhttpr.send("i="+i+"&btn_id="+btn_id+"&source_name="+source_name+"&article_url="+article_url+"&article_title="+article_title+"&article_description="+article_description+"&article_content="+article_content+"&article_publish_date="+article_publish_date+"&publish_hour="+publish_hour+"&publish_minute="+publish_minute+"&publish_second="+publish_second);
    
}


function updateDatabase(i,btn_id, source_name, article_url, article_title, article_description, article_content, article_publish_date, publish_hour, publish_minute, publish_second){
    
    var xhttpr = new XMLHttpRequest();
    xhttpr.open("POST", "update_database.php", true);

    //Send the proper header information along with the request
    xhttpr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");

        xhttpr.onreadystatechange = () => { // Call a function when the state changes.
            if (xhttpr.readyState === XMLHttpRequest.DONE && xhttpr.status === 200) {
            // Request finished. Do processing here.
                if(i==19){
                    selectFromDatabase(i);
                }
            }
        }
    xhttpr.send("i="+i+"&btn_id="+btn_id+"&source_name="+source_name+"&article_url="+article_url+"&article_title="+article_title+"&article_description="+article_description+"&article_content="+article_content+"&article_publish_date="+article_publish_date+"&publish_hour="+publish_hour+"&publish_minute="+publish_minute+"&publish_second="+publish_second);
    
}



function selectFromDatabase(i){
    var ajax = new XMLHttpRequest();
    var myArray = [];
    ajax.open("GET", "select_from_database.php", true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            
            var btn_id;
            var source_name;
            var article_url;
            var article_title;
            var article_description;
            var article_publish_date;

            if(i==19){
                for(var a=0;a<=19;a++){
		// expand to have the correct amount or rows
                    myArray.push( [] )
		////////////
                    btn_id = data[a].btn_id;
                    source_name = data[a].source_name;
                    article_url = data[a].article_url;
                    article_title = data[a].article_title;
                    article_description = data[a].article_description;
                    article_publish_date = data[a].article_publish_date;
			
		// expand all rows to have the correct amount of cols
                    myArray[a].push(article_title);
                    myArray[a].push(article_description);
                    myArray[a].push(source_name);
                    myArray[a].push(article_url);
                    myArray[a].push(article_publish_date);
                    myArray[a].push(btn_id);
                    displaySelectedItems(myArray,a);
    
                }
            }
                
    }
};

}


function returnNumberOfRows(){
    var ajax = new XMLHttpRequest();
    var count=0;
    ajax.open("GET", "count_row_db_table.php", true);
    ajax.send();

    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            count=data[0].row_count;
            getApiNews(count);
        }
    };
}

function insertOrUpdateApiNews(count,newsApiData){
    if(count>0){
        for(var i=0; i<newsApiData.length; i++)
        {
            updateDatabase(i,newsApiData[i][0], newsApiData[i][1], newsApiData[i][2], newsApiData[i][3], newsApiData[i][4], newsApiData[i][5], newsApiData[i][6], newsApiData[i][7], newsApiData[i][8], newsApiData[i][9]);
        }
        
    }
    else if(count==0){
        for(var i=0; i<newsApiData.length; i++)
        {
            insertToDatabase(i,newsApiData[i][0], newsApiData[i][1], newsApiData[i][2], newsApiData[i][3], newsApiData[i][4], newsApiData[i][5], newsApiData[i][6], newsApiData[i][7], newsApiData[i][8], newsApiData[i][9]);
            
        }
    }
}

function getApiNews(count){

    var btn_id;
    var url_source_name ;
    var article_url ;
    var article_title ;
    var article_description;
    var article_content ;
    var article_publish_date;
    var date;
    var article_year;
    var article_month;
    var article_day;
    var article_hour;//=10; 
    var article_minute;//=15; 
    var article_second;//=5;
    var newsArray=[]; 
    var i;  

    //after (apiKey=) put your apiKey
    fetch('https://newsapi.org/v2/everything?q=tesla&from=2022-09-11&sortBy=publishedAt&apiKey=')
    .then(response => response.json())
    .then(response=>{

        for(i=0;i<20;i++)
        {
            btn_id= i+1;
            url_source_name= response.articles[i].source.name;
            article_url= response.articles[i].url;
            article_title= response.articles[i].title; 
            article_description= response.articles[i].description; 
            article_content= response.articles[i].content;
            article_publish_date = response.articles[i].publishedAt;
            date = new Date(article_publish_date);
            article_year = date.getFullYear();
            article_month = date.getMonth()+1;
            article_day = date.getDate();
            article_hour   = date.getUTCHours();
            article_minute = date.getUTCMinutes();
            article_second = date.getUTCSeconds();
            article_publish_date = article_year+'-' + article_month + '-'+article_day;
            newsArray.push( [] );
            newsArray[i].push(btn_id);
            newsArray[i].push(url_source_name);
            newsArray[i].push(article_url);
            newsArray[i].push(article_title);
            newsArray[i].push(article_description);
            newsArray[i].push(article_content);
            newsArray[i].push(article_publish_date);
            newsArray[i].push(article_hour);
            newsArray[i].push(article_minute);
            newsArray[i].push(article_second);
            //insertOrUpdateApiNews(count,newsArray);
        }
        insertOrUpdateApiNews(count,newsArray);
    })

    
}

function getPopupText(id){
    var ajax = new XMLHttpRequest();
    var text="";
    ajax.open("GET","show_popup.php?q="+id,true);
    ajax.send();
    ajax.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var data = JSON.parse(this.responseText);
            text = data[0].article_content;
            showPopup(text);
        }
    };
}

function showPopup(text){

var popupText = document.getElementById("popup_text");
popupText.innerHTML="";
var textNode = document.createTextNode(text);
popupText.appendChild(textNode);

    // Get the modal
var modal = document.getElementById("myModal");


// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks the button, open the modal 

modal.style.display = "block";


// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
    
}

function displaySelectedItems(array,a){

    var localArray=[];
    localArray = array;
    if(a==0){
        document.getElementById("body_content").innerHTML = "";
    }
    for(var i=a;i<localArray.length;i++){

        var domain = (new URL(localArray[i][3]));
        domain = domain.hostname;
        article_url = domain.replace('www.','');

        date = new Date(localArray[i][4]);
            article_year = date.getFullYear();
            article_month = date.getMonth()+1;
            article_day = date.getDate();
            article_publish_date = article_day+'.' + article_month + '.'+article_year;

        var div1 = document.createElement("div");
        div1.id = "content";
        
        var h2 = document.createElement("h2");
        var title = document.createTextNode(localArray[i][0]);
        h2.appendChild(title);
        
        var div2 = document.createElement("div");
        div2.id = "news-content";
        
        var p = document.createElement("p");
        var news_text = document.createTextNode(localArray[i][1]);
        p.appendChild(news_text);
        div2.appendChild(p);
        
        var div3 = document.createElement("div");
        div3.id = "link-Date-btn";
        
        var div4 = document.createElement("div");
        div4.id = "linkAndDate";
        
        var link_label = document.createElement("label");
        var link_label_text = document.createTextNode(localArray[i][2]+": ");
        link_label.appendChild(link_label_text);
        
        var a = document.createElement("a");
        var a_text_link = document.createTextNode(article_url);
        a.appendChild(a_text_link);
        a.href = localArray[i][3];
        
        var br = document.createElement('br');
        
        var date_label = document.createElement("label");
        var date = document.createTextNode(article_publish_date);
        date_label.appendChild(date);
        
        div4.appendChild(link_label);
        div4.appendChild(a);
        div4.appendChild(br);
        div4.appendChild(date_label);
        
        
        var btn = document.createElement("button");
        btn.id = localArray[i][5];
        btn.className = "popup_btn";
        btn.style.float = "right";
        btn.style.backgroundColor = "palegreen";
        btn.style.borderRadius = "10px";
        btn.style.padding = "0 1.5%";
        btn.style.marginBottom = "10px";
        btn.onclick = function(){
            popupButton(this.id);
        };
        var btn_text1 = document.createTextNode("Gesamten Artikel");
        var btn_br = document.createElement('br');
        var btn_text2 = document.createTextNode("Anzeigen");
        btn.appendChild(btn_text1);
        btn.appendChild(btn_br);
        btn.appendChild(btn_text2);
                            
        div3.appendChild(div4);
        div3.appendChild(btn);
        
        var hr = document.createElement('hr');
        
        
        div1.appendChild(h2);
        div1.appendChild(div2);
        div1.appendChild(div3);
        div1.appendChild(hr);
        
        document.getElementById("body_content").appendChild(div1);
    
    }

}
