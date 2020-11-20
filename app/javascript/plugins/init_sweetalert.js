import swal from 'sweetalert';

const superInitSweetAlert = () => {
  initSweetalert('#sweet-alert-demo', {
    title: "Your Target is locked!",
    text: "Beware the vengeance of your Target!",
    icon: "success"
    }, (value) => {
      if (value) {
        const link = document.querySelector('#book-link');
        link.click();
      };
    });
}
const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelector(selector);
  if (swalButton) { // protect other pages
    swalButton.addEventListener('click', () => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
  }
};

export { superInitSweetAlert };





