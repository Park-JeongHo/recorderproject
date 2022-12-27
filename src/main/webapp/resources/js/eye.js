function DropFile(dropAreaId, fileListId) {
  let dropArea = document.getElementById(dropAreaId);
  let fileList = document.getElementById(fileListId);

  function preventDefaults(e) {
    e.preventDefault();
    e.stopPropagation();
  }

  function highlight(e) {
    preventDefaults(e);
    dropArea.classList.add("highlight");
  }

  function unhighlight(e) {
    preventDefaults(e);
    dropArea.classList.remove("highlight");
  }

  function handleDrop(e) {
    unhighlight(e);
    let dt = e.dataTransfer;
    let files = dt.files;

    handleFiles(files);

    const fileList = document.getElementById(fileListId);
    if (fileList) {
      fileList.scrollTo({ top: fileList.scrollHeight });
    }
  }

  function handleFiles(files) {
    files = [...files];
    files.forEach(previewFile);
  }

  function previewFile(file) {
    console.log(file);
    fileList.appendChild(renderFile(file));
  }

 

  

  return {
    handleFiles
  };
}

const dropFile = new DropFile("drop-file", "files");


$(document).ready(function(){ 
    $("#eyedog").click(function(){
        $("#eyedog").hide();
    });
});


$(document).ready(function(){ 
    $("#eyedog").click(function(){
        $("#eyecat").hide();
    });
});


$(document).ready(function(){ 
    $("#eyecat").click(function(){
        $("#eyedog").hide();
    });
});


$(document).ready(function(){ 
    $("#eyecat").click(function(){
        $("#eyecat").hide();
    });
});

$(document).ready(function(){ 
    $("#eyecat").click(function(){
        $("#eye_title").hide();
    });
});

$(document).ready(function(){ 
    $("#eyedog").click(function(){
        $("#eye_title").hide();
    });
});

$(document).ready(function(){ 
    $("#eyedog").click(function(){
        $("#page2").show();
         $("#modal1").show();
    });
});
$(document).ready(function(){ 
    $("#eyecat").click(function(){
        $("#page2").show();
        $("#modal1").show();
    });
});


$(document).ready(function(){ 
    $("#submitButton").click(function(){
        $(".close").click();
    });
    
});


var submit = document.getElementById('submitButton');

function showImage() {
    var newImage = document.getElementById('image-show').lastElementChild;
    newImage.style.visibility = "visible";
    
    document.getElementById('image-upload').style.visibility = 'hidden';

    document.getElementById('fileName').textContent = null;     //기존 파일 이름 지우기
}


function loadFile(input) {
    var file = input.files[0];

    var name = document.getElementById('fileName');
    name.textContent = file.name;

    var newImage = document.createElement("img");
    newImage.setAttribute("class", 'img');

    newImage.src = URL.createObjectURL(file);   

    newImage.style.width = "70%";
    newImage.style.height = "70%";
    newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지 숨기기
    newImage.style.objectFit = "contain";

    var container = document.getElementById('image-show');
    container.appendChild(newImage);
};





