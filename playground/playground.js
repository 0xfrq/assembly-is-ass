const exampleSelect = document.getElementById("example-select");
const fileInput = document.getElementById("file-input");
const source = document.getElementById("source");
const status = document.getElementById("status");
const copyButton = document.getElementById("copy-button");

const repoRoot = "..";

const setStatus = (message, isError = false) => {
  status.textContent = message;
  status.classList.toggle("error", isError);
};

const loadExample = async (filename) => {
  if (!filename) {
    setStatus("Select an example or upload your own file.");
    return;
  }

  try {
    const response = await fetch(`${repoRoot}/${filename}`);
    if (!response.ok) {
      throw new Error(`Unable to load ${filename}.`);
    }
    const text = await response.text();
    source.value = text;
    setStatus(`Loaded ${filename}.`);
  } catch (error) {
    setStatus(error.message, true);
  }
};

exampleSelect.addEventListener("change", () => {
  const filename = exampleSelect.value;
  loadExample(filename);
});

fileInput.addEventListener("change", async (event) => {
  const [file] = event.target.files;
  if (!file) {
    return;
  }

  source.value = await file.text();
  setStatus(`Loaded ${file.name} from your computer.`);
  exampleSelect.value = "";
});

copyButton.addEventListener("click", async () => {
  try {
    await navigator.clipboard.writeText(source.value);
    setStatus("Copied to clipboard.");
  } catch (error) {
    setStatus("Clipboard access denied. Copy manually instead.", true);
  }
});

const urlParams = new URLSearchParams(window.location.search);
const fileParam = urlParams.get("file");
if (fileParam) {
  exampleSelect.value = fileParam;
  loadExample(fileParam);
} else {
  setStatus("Select an example or upload your own file.");
}
