document.addEventListener("DOMContentLoaded", () => {
  const button = document.querySelector(".test-btn");

  button.addEventListener("click", async function () {
    const msg = document.querySelector(".load-msg");
    msg.style.color = "green";
    msg.innerText = "Loading... This may take several seconds.";
  });
});
