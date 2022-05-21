console.log('loadedd');


window.addEventListener('DOMContentLoaded', (event) => {
    console.log('DOM fully loaded and parsed');
    // setTimeout(() => {
    //     let theSelect = document.querySelector("#name");
    //     console.log(theSelect)
    // }, 20000);
    document.querySelector("#holiday_form select").addEventListener('input', function (evt) {
        console.log(this.value);
        document.querySelector(".employee_id_on_holiday_form").value = this.value;
    });
});