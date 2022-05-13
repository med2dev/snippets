// PREP
// Parameters
// Returns
// Examples
// Pseudo Code

// Take in a number. Print from 1 to number
// If div 3, fizz
// if div 5, buzz
// if div both, fizzbuzz

// Parameters:
// Positive integer only

// Returns:
// no return. just console log

function fizzBuzz(num) {
    // psuedo code
    // loop from 1 to num
    // if %15 == 0, print fizzBuzz
    // if %5 == 0, print buzz
    // if %3 == 0, print fizz
    for (i=1;i<=num;i++){
        if (i % 15 == 0){
            console.log('fizzBuzz')
        } else if (i % 5 == 0){
            console.log('buzz')
        } else if (i % 3 == 0){
            console.log('fizz')
        } else {
            console.log(i)
        }
    }
}

// Examples:

fizzBuzz(3) // 1,2,fizz

fizzBuzz(5) // 1,2,fizz,4,buzz

fizzBuzz(15) // 1,2,fizz,4,buzz,fizz,7,8,fizz,buzz,11,fizz,13,14,fizzBuzz