
var editor_id = "";
tinymce.PluginManager.add('instagram', function(editor, url) {
    // Add a button that opens a window
    editor.addButton('instagram', {
        text: 'Instagram',
        icon: false,
        onclick: function() {
            // Open window
            editor.windowManager.open({
                title: 'Instagram Embed',
                body: [
                    {   type: 'textbox',
                        size: 40,
                        height: '100px',
                        name: 'instagram',
                        label: 'instagram'
                    }
                ],
                onsubmit: function(e) {
                    // Insert content when the window form is submitted
                    var embedCode = e.data.instagram;
                    var script = embedCode.match(/<script.*<\/script>/)[0];
                    var scriptSrc = script.match(/".*\.js/)[0].split("\"")[1];
                    var sc = document.createElement("script");
                    sc.setAttribute("src", scriptSrc);
                    sc.setAttribute("type", "text/javascript");

                    var iframe = document.getElementById(editor_id + "_ifr");
                    var iframeHead = iframe.contentWindow.document.getElementsByTagName('head')[0];

                    tinyMCE.activeEditor.insertContent(e.data.instagram);
                    iframeHead.appendChild(sc);
                    // editor.insertContent('Title: ' + e.data.title);
                }
            });
        }
    });
});
tinymce.init({
    selector:'textarea',
    toolbar: 'bold italic | alignleft aligncenter alignright alignjustify | undo redo | link image media | code preview | fullscreen | instagram',
    plugins: "wordcount fullscreen link image code preview media instagram",
    menubar: "",
    extended_valid_elements : "script[language|type|async|src|charset]",
    setup: function (editor) {
        editor.on('init', function (args) {
            editor_id = args.target.id;
        });
    }
});