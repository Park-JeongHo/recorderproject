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




$(document).ready(function(){ 
    $("#hide1").click(function(){
        $("#hide2").hide();
    });
});

$(document).ready(function(){ 
    $("#hide1").click(function(){
        $("#hide3").show();
    });
});

$(document).ready(function(){ 
    $("#hide1").click(function(){
        $("#title").show();
    });
});

$(document).ready(function(){ 
    $("#hide1").click(function(){
        $("#modal1").show();
    });
});

$(document).ready(function(){ 
    $("#submitButton").click(function(){
        $(".close").click();
    });
    
});









