 const getRandomInt = (max) => {
  return Math.floor(Math.random() * Math.floor(max));
};

const buttons = document.addEventListener("click", (event) => {
  if (event.target.classList.contains('btn-sounded')) {
    const audioElt = document.getElementById(`audio-play_${getRandomInt(5)}`);
    audioElt.play();
  }
});
