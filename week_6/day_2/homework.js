//==================Exercise #1 ==========//

let dog_string = "Hello Max, my name is Dog, and I have purple eyes!"
let dog_names = ["Max","HAS","PuRple","dog"]

function findWords(){
    for(let i=0; i<dog_names.length; i++){
        if (dog_string.includes(dog_names[i])){
            console.log("Matched " + dog_names[i])
            break
        } else {
            return 'No Matches'
        }
    }
}
console.log(findWords(dog_string,dog_names))

//============Exercise #2 ============//

let arr = ["Max","Baseball","Reboot","Goku","Trucks","Rodger"]

function replaceEvens(){
    for (let i = 0; i < arr.length; i+=2) {
        arr.splice(i, 1, 'even index')
    }
    return arr
}

console.log(replaceEvens(arr))