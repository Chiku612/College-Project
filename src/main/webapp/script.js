const bar = document.getElementById('bar');
const close01 = document.getElementById('close01');
const nav = document.getElementById('navbar');

if (bar) {
    bar.addEventListener('click', () => {
            nav.classList.add('active');
        })
}                        
if (close01) {
    close01.addEventListener('click', () => {
            nav.classList.remove('active');                
        })
}                        