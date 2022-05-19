// sleep function

function sleep(ms){
  return new Promise(resolve => setTimeout(resolve, ms))
}

// example
async function do_it_later(ms){
  await sleep(ms)
  console.log(`You waited ${ms} milliseconds to do this`)
}
