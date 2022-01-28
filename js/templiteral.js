function combineWords(){
    const [first, second] = getWords()
    let output = `${first} ${second}`
    document.querySelector('#outputHere').innerText = output
}

function getWords(){
    const firstWord = document.querySelector('#firstWord').value 
    const secondWord = document.querySelector('#secondWord').value
    return [firstWord, secondWord]
}

// get inputs from the DOM
// const firstWord = document.querySelector('#firstWord').value
// const secondWord = document.querySelector('#secondWord').value

// listen for click
const buttonElement = document.querySelector('#combineWords')
buttonElement.addEventListener('click', combineWords)
