<div class="row">
    <div class="select col-md-3">
        <select>
        </select>
        <table class="table table-striped">
            <thead class="thead-dark">
                <th>Szó</th>
            </thead>
            <tbody>
                
            </tbody>
        </table>
    </div>
    <script src="mondat.js"></script>
    <script>
        const nagykorue = <?php if(isset($_SESSION["kor"])) echo ($_SESSION["kor"]>=18?1:0); else echo "0"; ?>;
    </script>
    <div class="mt-5 bg-dark col-md-9">
        <h1 class="text-light">Text to Speech</h1>
        <p class="lead text-light mt-4">Select Voice</p>
        <select id="voices" class="form-select bg-secondary text-light"></select>
        <div class="d-flex mt-4 text-light">
            <div>
                <p class="lead">Speed</p>
                <input type="range" min="0.1" max="2" value="1" step="0.1" id="rate" />
                <span id="rate-label" class="ms-2">1</span>
            </div>
            <div>
                <p class="lead">Volume</p>
                <input type="range" min="0" max="1" value="1" step="0.1" id="volume" />
                <span id="volume-label" class="ms-2">1</span>
            </div>
        </div>
        <textarea class="form-control bg-dark text-light mt-5" cols="30" rows="10" placeholder="Type here..."></textarea>
        <div class="mb-5">
            <button id="start" class="btn btn-success mt-5 me-3">Start</button>
            <button id="cancel" class="btn btn-danger mt-5 me-3">Cancel</button> 
            <button id="clear" class="btn btn-danger mt-5 me-3">Clear</button> 
        </div>
    </div>
</div>
<script>
    let speech = new SpeechSynthesisUtterance();
    speech.lang = "hu";

    let voices = [];
    window.speechSynthesis.onvoiceschanged = () => {
    voices = window.speechSynthesis.getVoices();
    speech.voice = voices[0];
    let voiceSelect = document.querySelector("#voices");
    voices.forEach((voice, i) => (voiceSelect.options[i] = new Option(voice.name, i)));
    };

    document.querySelector("#rate").addEventListener("input", () => {
    const rate = document.querySelector("#rate").value;
    speech.rate = rate;
    document.querySelector("#rate-label").innerHTML = rate;
    });

    document.querySelector("#volume").addEventListener("input", () => {
    const volume = document.querySelector("#volume").value;
    speech.volume = volume;
    document.querySelector("#volume-label").innerHTML = volume;
    });

    document.querySelector("#voices").addEventListener("change", () => {
    speech.voice = voices[document.querySelector("#voices").value];
    });

    document.querySelector("#start").addEventListener("click", () => {
    speech.text = document.querySelector("textarea").value;
    window.speechSynthesis.speak(speech);
    });

    document.querySelector("#cancel").addEventListener("click", () => {
    window.speechSynthesis.cancel();
    });
    
    document.querySelector("#clear").addEventListener("click", () => {
        document.querySelector("textarea").innerHTML = "";
    });
     getTD()
</script>