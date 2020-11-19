const addSoundsOnClick = () => {
  debugger;

  // const path = `sound_${getRandomInt(5)}.mp3`;
  const path = `/assets/sounds/test.mp3`;
  const buttons = document.querySelectorAll(".btn-sounded");
  buttons.forEach((button) => {
    console.log(button);
    button.addEventListener("click", (event) => {
      console.log("click");
      // const path = `sound_${getRandomInt(5)}.mp3`;
      const audio = new Audio(path);
      audio.play();
    });
  });
};

export {addSoundsOnClick};
