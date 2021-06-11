function findFirstDuplicate(arr) {
  // type your code here
  let preceding = []
  let duplicates = []
  arr.forEach((element, index) => {
    preceding = arr.slice(0, index)
    if(preceding.includes(element)){
      duplicates.push(element)
    }
  })
  if (duplicates.length > 0) {
    return duplicates[0]
  } else {
    return -1
  }
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 3")
  console.log("=>", findFirstDuplicate([2, 1, 3, 3, 2]))

  console.log("Expecting: -1")
  console.log("=>", findFirstDuplicate([1, 2, 3, 4]))

  
  console.log("Expecting: 3");
  console.log("=>", findFirstDuplicate([2, 1, 3, 3, 2]));

  console.log("");

  console.log("Expecting: -1");
  console.log("=>", findFirstDuplicate([1, 2, 3, 4]));
}

module.exports = findFirstDuplicate;

// Please add your pseudocode to this file
  // create empty arrays for preceding and duplicates
  // iterate through array, and for each element create a "preceding" array that includes all elements before that element
  // if the current element is included in that array, push element value to duplicates array
  // if there are any elements in the duplicates array, return the first one (first duplicate)
  // otherwise, if duplicates array is empty, return -1
// And a written explanation of your solution
  // the javascript version is more straightforward bc JS iterators automatically keep track of the element's index value via the second argument
  // which makes the slicing for the preceding array easier
  // otherwise, approach is the same as Ruby version
