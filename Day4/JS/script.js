function sleep(ms) {
  return new Promise(resolve => setTimeout(resolve, ms));
}

async function demo() {
  console.log('Taking a break...');
  await sleep(10000);
  alert("Hey, pssssst, viens ici !!!! \n https://www.youtube.com/watch?v=3bHUQy6MugE");
}

demo();

function zip() {
    document.querySelector(".hide").className = "container";
    document.querySelector(".alert").className = "hide";
    // this.parentElement.style.display='none';
}

