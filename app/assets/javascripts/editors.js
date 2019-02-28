// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener('DOMContentLoaded', () => {
    // let body = document.querySelector('body');

    let editorBox = document.querySelector('.editor-box');
    // body.append(editorBox);

    let codeEditor = CodeMirror(editorBox, {
        mode: "javascript",
        lineWrapping: true,
        lineNumbers: true,
        matchBrackets: true,
        styleActiveLine: true,
        theme: "material"
    });

    codeEditor.setValue(`// Here's Some Demo Code To Get You Started (Feel Free To Delete)
let arr = ['one','two','three'];

for (let i  = 0; i < arr.length; i++) {
    console.log(arr[i]);
}`);
    
});
