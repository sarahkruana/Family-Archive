/*
This is the javascript file for the discovery page. Its functions are to either
transfer to the next page or handle the submit function which is explained
below.
*/

function mainMenuButton() {
     location.assign
     ("file:///Users/sarahruana/Documents/ScreenShots/School/ADV%20Prog/Ruana%20Archive/Main%20Menu/main_menu.html")
 }
 
 function aboutMeButton() {
     location.assign
     ("file:///Users/sarahruana/Documents/ScreenShots/School/ADV%20Prog/Ruana%20Archive/About%20Me/about_me.html")
}
 
/*
This function connects to a MySQL database that I set up. First, it gathers
the name and type from the drop down menus in the html file. 
Then, it sends that information to the api(which is connected to the database)
via a fetch method that parses the name and type previosuly mentioned.
Finally, with the information gathered, it first checks if its empty
(initiating the sorry message), then it sends it to a separate method to be 
rendered to be actually shown to the user. 
*/
function submit() {
    //get the element using the id
    var name = document.getElementById("people").value;
    var type = document.getElementById("subType").value;

    fetch('http://localhost:8080/artifacts/?name=' + name + '&type=' + type)
    .then(response => response.json())
    .then(artifacts => {
        console.log(artifacts);

        if(artifacts.length == 0) {
            document.getElementById('display_table').innerText = "";

            document.getElementById('sorryMessage').innerText = "Sorry! " +
            "Looks like we don't have any artifacts that match both that " +
            "person and type! Do you want to try again?";
        
        } else {
            document.getElementById('sorryMessage').innerText = "";

            renderArtifacts(artifacts)
        }
    });  
 }



const tableContainer = document.querySelector('#display_table');


/*
This is what the information from the api gets sent to. The main idea for this
method is that for each artifact, it will go through a process that converts
each artifact to a row, then a column, then an element within that column. 
After that, it adds everything to the row–after having applied specific css
rules– and adds that the the variable above which is connected to the html
*/
function renderArtifacts(artifacts) {
    document.getElementById('display_table').innerText = "";

    artifacts.forEach(artifact => {
        const row = document.createElement('tr');    

        const div_image = document.createElement('td');
        const div_data = document.createElement('td');

        const artifact_image = document.createElement('object');
        const description = document.createElement('p');
        const date = document.createElement('p');
    
        div_data.classList = 'card'
        artifact_image.classList = 'card-pdf'
        
        artifact_image.type = "application/pdf"
        artifact_image.data = `${artifact.artifact}`
        artifact_image.width = "400";
        artifact_image.height = "500";

        description.innerText = `${artifact.description}`
        date.innerText =`${artifact.date}`

        description.style.setProperty("font-size", "23px")
        date.style.setProperty("font-size", "26px")
    
        const descriptionTitle = document.createElement('p');
        const dateTitle = document.createElement('p')

        descriptionTitle.innerText = "Description"
        dateTitle.innerText = "Date"

        descriptionTitle.style.setProperty("font-size", "30px")
        descriptionTitle.style.setProperty("font-weight", "bold")
        descriptionTitle.style.setProperty("text-decoration", "underline")
        dateTitle.style.setProperty("font-size", "30px")
        dateTitle.style.setProperty("font-weight", "bold")
        dateTitle.style.setProperty("text-decoration", "underline")

        div_image.appendChild(artifact_image)

        div_data.appendChild(descriptionTitle)
        div_data.appendChild(description)
        div_data.appendChild(dateTitle)
        div_data.appendChild(date)
    
        row.appendChild(div_image)
        row.appendChild(div_data)
     
        row.style.setProperty("color", "#34351d")
        row.style.setProperty("text-align", "center")


        tableContainer.appendChild(row)

    }); 
    
}

 