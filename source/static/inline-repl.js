class Repl extends HTMLElement {
    constructor() {
        super();

        // Get the passed parameters (editor and render heights) if they exist
        this.renderHeight = this.getAttribute('render-height') ? parseInt(this.getAttribute('render-height'), 10) : 300;
        this.editorHeight = this.getAttribute('editor-height') ? parseInt(this.getAttribute('editor-height'), 10) : 200;
        this.totalHeight = this.renderHeight + this.editorHeight;

        const htmlSlot = this.querySelector('[slot="html"]');
        const cssSlot = this.querySelector('[slot="css"]');
        const jsSlot = this.querySelector('[slot="javascript"]');

        // State
        this.isExpanded = false;

        // Processing HTML
        this.htmlContent = htmlSlot ? htmlSlot.innerHTML : `
        <div class="frame">
            <h1>Hello</h1>
        </div>`;

        // Remove excessive indentation and trim
        this.htmlContent = this.reindent(this.htmlContent);

        // Processing CSS
        this.cssContent = cssSlot ? cssSlot.innerHTML : `
        .frame {
            display: flex;
            flex-flow: column nowrap;
            align-items: center;
            justify-content: center;
            height: 100vh;
            width: 100vw;
        }
        
        h1 { color: rebeccaPurple; }`;
        this.cssContent = this.cssContent.replace(/\u2018/g, '')
        this.cssContent = css_beautify(this.cssContent, {
            indent_size: 2
        });

        // Processing JS
        this.jsContent = jsSlot ? jsSlot.innerHTML : ``;
        this.jsContent = this.jsContent.replace(/\u2018/g, '')
        this.jsContent = js_beautify(this.jsContent, {});

        // Template HTML
        this.attachShadow({ mode: 'open' });
        this.shadowRoot.innerHTML = `<style>
            :host {
                display: block;
                padding: 0;
                margin: 0;
                border-radius: 16px;
                overflow: hidden;
                position: relative;
                margin: 0;
                display: grid;
                grid-template-columns: 1fr;
                grid-template-rows: ${this.renderHeight}px ${this.editorHeight}px;
                width: 100%;
                height: ${this.totalHeight}px;
                background-color: var(--track);
            }

            :root {
                --paper: white;
                --track: #f8f8f8;
                --ink: #242424;
                --faded: #666;
            
                --accent: hsl(260, 100%, 75%);
                --accent-text: hsl(260, 84%, 40%);
                --center: hsl(230, 100%, 70%);
                --alt-accent: hsl(200, 70%, 65%);
                --alt-accent-text: hsl(200, 100%, 30%);
            
                --border: #00000011;
            }
            
            @media (prefers-color-scheme:dark) {
                :root {
                    --paper: #141414;
                    --track: #000;
                    --ink: #f8f8f8;
                    --faded: #888888;
            
                    --accent: hsl(245, 100%, 75%);
                    --accent-text: hsl(245, 100%, 80%);
                    --center: hsl(268, 100%, 75%);
                    --alt-accent: hsl(290, 100%, 75%);
                    --alt-accent-text: hsl(290, 100%, 80%);
            
                    --border: #FFFFFF22;
                }
            }

            nav {
                display: flex;
                flex-flow: row nowrap;
                position: absolute;
                top: ${this.renderHeight}px;
                left: 50%;
                transform: translate(-50%, -50%);
                z-index: 99;
                border-radius: 6px;
                overflow: hidden;
            }

            .tabs {
                background-color: var(--paper);
                color: var(--ink);
                padding: .5rem .75rem;
                font-size: 12px;
                font-weight: 700;
                line-height: 1;
                display: flex;
                align-items: center;
                justify-content: center;
                text-decoration: none;
                border: none;
                gap: 6px;
                border-bottom: 3px solid var(--border);
            }

            .tabs:hover {
                border-bottom: 3px solid var(--accent);
            }

            .tabs:active {
                background-color: var(--paper);
                border-bottom: 3px solid var(--accent-text);
            }

            .tabs.selected {
                border-bottom: 3px solid var(--alt-accent);
            }

            .wrapper {
                position: relative;
                height: ${this.editorHeight}px;
            }

            .ace_editor, .ace_gutter {
                background-color: var(--track) !important;
            }

            .ace_gutter-cell {
                color: var(--faded) !important;
                font-size: 12px !important;
            }

            .ace_editor {
                font-family: monospace !important;
                font-size: 14px !important;
                font-weight: 400 !important;
                letter-spacing: 0 !important;
                line-height: 150%;
            }

            .ace_gutter-active-line {
                background: none !important;
            }            

            iframe {
                width: 100%;
                height: 100%;
                border: none;
            }

            #button_refresh {
                position: absolute;
                top: 1rem;
                right: 3.5rem;
                width: 2rem;
                height: 2rem;
                padding: 0.5rem;
                border-radius: 50%;
                top: ${this.renderHeight}px;
                transform: translate(0%, -50%);
                z-index: 9999;
            }

            #button_open {
                position: absolute;
                top: 1rem;
                right: 1rem;
                width: 2rem;
                height: 2rem;
                padding: 0.5rem;
                border-radius: 50%;
                top: ${this.renderHeight}px;
                transform: translate(0%, -50%);
                z-index: 9999;
            }

            @media only screen and (max-width: 600px) {
                nav {
                    left: 1rem;
                    transform: translate(0%, -50%);
                }
            }

            </style>
            
            <iframe id="render"></iframe>
            
            <aside>
                <div id="html" class="wrapper"></div>
                <div id="css" class="wrapper"></div>
                <div id="javascript" class="wrapper"></div>
            </aside>
            
            <nav>
                <button class="tabs" id="button_html">
                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                        <g style="fill: none; stroke-linecap: round; stroke-linejoin: round; stroke-width: 2px; stroke: rgb(255, 57, 61);">
                            <path d="M 6 13 L 2 8 L 6 3"/>
                            <path d="M 10 13 L 14 8 L 10 3"/>
                        </g>
                    </svg>
                    HTML
                </button>
                <button class="tabs" id="button_css">
                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                        <g style="fill: none; stroke-linecap: round; stroke-linejoin: round; stroke-width: 2px; stroke: rgb(84, 209, 255);">
                            <path d="M 8 13.5 L 8 2.5"></path>
                            <path d="M 2.5 8 L 13.5 8"></path>
                            <path d="M 11.9 11.9 L 4.1 4.1"></path>
                            <path d="M 4.1 11.9 L 11.9 4.1"></path>
                        </g>
                    </svg>
                    CSS
                </button>
                <button class="tabs" id="button_js">
                    <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                        <g style="stroke-linecap: round; stroke-linejoin: round; fill: none; stroke-width: 2px; stroke: rgb(249, 159, 0);">
                            <path d="M 6 3 C 6 3 6 3 5 3 C 4.356 3 4 3.409 4 4 C 4 4.907 4 5.092 4 6 C 4 6.909 2 8 2 8 C 2 8 4 9.091 4 10 C 4 10.909 4 11.093 4 12 C 4 12.699 4.257 13 5 13 C 6 13 6 13 6 13"/>
                            <path d="M 10 3 C 10 3 10 3 11 3 C 11.644 3 12 3.409 12 4 C 12 4.907 12 5.092 12 6 C 12 6.909 14 8 14 8 C 14 8 12 9.091 12 10 C 12 10.909 12 11.093 12 12 C 12 12.699 11.743 13 11 13 C 10 13 10 13 10 13"/>
                        </g>
                    </svg>
                    JS
                </button>
            </nav>

            <button class="tabs" id="button_refresh">
                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                    <g style="stroke: var(--ink); stroke-linecap: round; fill: none; stroke-width: 1.5px;">
                        <path d="M 13.8 9 C 13.7 9.6 13.2 11.3 12.2 12.2 C 10.1 14.6 6.2 14.6 3.8 12.2 C 1.4 9.8 1.4 6.2 3.8 3.8 C 6.2 1.4 9.8 1.4 12.2 3.8"/>
                        <path d="M 10.2 5 L 13.2 5 L 13.2 2"/>
                    </g>
                </svg>
            </button>

            <button class="tabs" id="button_open">
                <svg width="16" height="16" viewBox="0 0 16 16" xmlns="http://www.w3.org/2000/svg">
                    <g style="stroke: var(--ink); stroke-linecap: round; fill: none; stroke-width: 1.5px;">  
                        <path d="M 13 8.7 L 13 11 C 13 12.1 12.1 13 11 13 L 5 13 C 3.9 13 3 12.1 3 11 L 3 5 C 3 3.9 3.9 3 5 3 L 7.2 3"></path>
                        <path d="M 13 6.3 L 13 3 L 9.7 3"></path>
                        <polyline points="8 8 12.6 3.4"></polyline>
                    </g>
                </svg>
            </button>
            
            <!-- load ace and autocomplete tool -->
            <script src="/ace/ace.js"></script>
            <script src="/ace/ext-language_tools.js"></script>
            `;
    }

    connectedCallback() {

        this.editors = [
            {
                id: "html",
                button: this.shadowRoot.querySelector("#button_html"),
                value: this.htmlContent
            },
            {
                id: "css",
                button: this.shadowRoot.querySelector("#button_css"),
                value: this.cssContent
            },
            {
                id: "javascript",
                button: this.shadowRoot.querySelector("#button_js"),
                value: this.jsContent
            }
        ]

        this.editors.forEach(mode => {

            mode.editor = ace.edit(this.shadowRoot.getElementById(mode.id), {
                mode: `ace/mode/${mode.id}`,
                value: this.reindent(mode.value),
                value: mode.value,
                autoScrollEditorIntoView: true,
                showGutter: true,
                highlightActiveLine: false,
                useWorker: false,
            });

            mode.editor.setOptions({
                enableBasicAutocompletion: [{
                    getCompletions: (editor, session, pos, prefix, callback) => {
                        // note, won't fire if caret is at a word that does not have these letters
                        callback(null, [
                            { value: 'mr-app', score: 1, meta: 'the foundational building block of an MRjs app' },
                            { value: 'mr-a', score: 1, meta: 'a text link' },
                            { value: 'mr-button', score: 1, meta: 'a clickable button' },
                            { value: 'mr-div', score: 1, meta: 'a generic container' },
                            { value: 'mr-entity', score: 1, meta: 'an empty entity' },
                            { value: 'mr-img', score: 1, meta: 'an inline image' },
                            { value: 'mr-light', score: 1, meta: 'a light source' },
                            { value: 'mr-model', score: 1, meta: 'a 3d model file' },
                            { value: 'mr-panel', score: 1, meta: 'a UI container' },
                            { value: 'mr-skybox', score: 1, meta: 'an environement around the scene' },
                            { value: 'mr-textarea', score: 1, meta: 'a large text input field' },
                            { value: 'mr-textfield', score: 1, meta: 'a single-line text input field' },
                            { value: 'mr-text', score: 1, meta: 'a paragraph of text' },
                            { value: 'mr-volume', score: 1, meta: 'a bound 3D volume' },
                        ]);
                    },
                }],
                // to make popup appear automatically, without explicit _ctrl+space_
                enableLiveAutocompletion: true,
            });


            // Mandatory when running inside a shadowDom (for positioning)
            mode.editor.renderer.attachToShadowRoot();

            // Add margins above and below code
            mode.editor.renderer.setScrollMargin(20, 20);

            // Hide all the editors by default
            this.shadowRoot.getElementById(mode.id).style.display = "none";

            // Update the rendered view on change
            this.render = this.render.bind(this);
            mode.editor.on("input", this.render);

            mode.button.addEventListener("click", () => {
                this.selectedEditor = mode.id;
                this.selectEditor();
            })
        })

        // Refresh button
        this.shadowRoot.querySelector("#button_refresh").addEventListener("click", () => {
            this.render();
        })

        // Open in a new window
        this.shadowRoot.querySelector("#button_open").addEventListener("click", () => {
            let win = window.open('', '_blank');
            // let win = window.open('', '_blank', 'width=400,height=400 top=200,left=600');
            win.document.write(`<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width,initial-scale=1" />
        <link rel="icon" type="image/svg+xml" href="/static/favicon.svg" />
        <title>MRjs Example</title>
        <script src="/dist/mr.js"></script>
    </head>
    <body>
        ${this.editors[0].editor.getValue()}
        <script>
            ${this.editors[2].editor.getValue()}
        </script>
        <style>
            ${this.editors[1].editor.getValue()}
        </style>
    </body>
</html>`);
        });

        // Add listener for changes in the color scheme
        this.themeListener = window.matchMedia('(prefers-color-scheme: dark)');
        this.themeListener.addEventListener('change', e => {
            this.updateTheme(e);
        });

        this.selectedEditor = "html";
        this.selectEditor();
        this.updateTheme();
        // this.render();
    }

    selectEditor() {
        this.editors.forEach(mode => {
            if (this.selectedEditor === mode.id) {
                mode.button.classList.add("selected");
                this.shadowRoot.getElementById(mode.id).style.display = "block";
            } else {
                mode.button.classList.remove("selected");
                this.shadowRoot.getElementById(mode.id).style.display = "none";
            }
        })
    }

    render() {
        this.shadowRoot.querySelector("#render").srcdoc = `<!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <title>repl</title>
      <script src="/dist/mr.js"></script>
    </head>
    <body>
        ${this.editors[0].editor.getValue()}
        <script>
            ${this.editors[2].editor.getValue()}
        </script>
        <style>
            ${this.editors[1].editor.getValue()}
        </style>
      </body>
    </html>
      `
    }

    reindent(code) {
        // Code editor tends to reformat around the <inline-repl> custom elements
        // So we might end up with extra lines above and below the text in the slot
        // And we might have extra indentation we need to trim down

        // Split the string into lines
        let lines = code.split('\n');

        // Find the smallest indentation
        let minIndent = lines.reduce((min, line) => {
            let currentIndent = line.match(/^\s*/)[0].length;
            if (line.trim().length > 0 && currentIndent < min) {
                return currentIndent;
            }
            return min;
        }, Infinity);

        // If the first line is empty, remove it
        if (lines[0].trim() == "") {
            lines.shift();
        }

        // Adjust indentation and join the lines back together
        return lines.map(line => line.substring(minIndent)).join('\n');
    }

    setTheme(scheme) {
        this.editors.forEach(mode => {
            if (scheme === 'dark') {
                mode.editor.setTheme("ace/theme/dracula"); // Example dark theme
                mode.editor.container.style.background = "#282a36";
            } else {
                mode.editor.setTheme("ace/theme/chrome"); // Example light theme
                mode.editor.container.style.background = "#f8f8f8";
            }
        })
    }

    updateTheme() {
        if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
            this.setTheme('dark');
        } else {
            this.setTheme('light');
        }
    }

    disconnectedCallback() {

    }
}

customElements.define('inline-repl', Repl);
