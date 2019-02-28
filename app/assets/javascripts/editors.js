// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener('DOMContentLoaded', () => {
    document.addEventListener('turbolinks:load', () => {
        let editorBox = document.querySelector('.editor-box');

        let codeEditor = CodeMirror(editorBox, {
            mode: "javascript",
            lineWrapping: true,
            lineNumbers: true,
            matchBrackets: true,
            styleActiveLine: true,
            theme: "material"
        });

        let saveEditorForm = document.querySelector('.save-editor-form');
        let saveEditorContentInput = document.querySelector('.save-editor-content-input');
        let saveEditorBtn = document.querySelector('.save-editor-btn');

        if (saveEditorContentInput.value.length == 0) {
            codeEditor.setValue(`// Here's Some Demo Code To Get You Started (Feel Free To Delete)
let arr = ['one','two','three'];

for (let i  = 0; i < arr.length; i++) {
    console.log(arr[i]);
}`);
        } else {
            codeEditor.setValue(saveEditorContentInput.value);
        }

        saveEditorBtn.addEventListener('click', (event) => {
            event.preventDefault();
            saveEditorContentInput.value = codeEditor.getValue();
            saveEditorForm.submit();
        });
    });
});
