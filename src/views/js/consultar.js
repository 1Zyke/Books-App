let pageConsult;

document.addEventListener('DOMContentLoaded', function () {
    pageConsult = new PageConsult(window);
});

class PageConsult {
    constructor() {
        this.consultBooks();
    }

    consultBooks() {
        window.ipcRender.invoke('getBooks').then((result) => {
            let { isbn, nombre, carrera, ubicacion, editorial } = result;

            isbn = isbn.replace(/(^_)|(_$)/g, '');
            nombre = nombre.replace(/(^_)|(_$)/g, '');
            carrera = carrera.replace(/(^_)|(_$)/g, '');
            ubicacion = ubicacion.replace(/(^_)|(_$)/g, '');
            editorial = editorial.replace(/(^_)|(_$)/g, '');

            isbn = isbn.split('_');
            nombre = nombre.split('_');
            carrera = carrera.split('_');
            ubicacion = ubicacion.split('_');
            editorial = editorial.split('_');

            let libros = [];

            for (let i = 0; i < isbn.length; i++) {
                libros.push({
                    'isbn': isbn[i],
                    'nombre': nombre[i],
                    'carrera': carrera[i],
                    'ubicacion': ubicacion[i],
                    'editorial': editorial[i]
                });
            }

            mostrarLibros(libros);
        });
    }
}

const mostrarLibros = (libros) => {
    let TablaLibros = document.querySelector('#tabla-libros');
    let texto = '';

    TablaLibros.innerHTML = '';

    for (let i = 0; i < libros.length; i++) {
        texto +=
            `
            <tr>
                <td>${libros[i].isbn}</td>
                <td>${libros[i].nombre}</td>
                <td>${libros[i].editorial}</td>
                <td>${libros[i].carrera}</td>
                <td>${libros[i].ubicacion}</td>
            </tr>
        `;
    }

    TablaLibros.innerHTML = texto;
}

for (let i = 0; i < libros.length; i++) {
    // ... código para mostrar la información de cada libro ...

    // Agrega un listener para el botón de inactivar
    let btnInactivar = document.querySelector(`button[data-isbn="${libros[i].isbn}"]`);
    btnInactivar.addEventListener('click', () => {
        inactivarLibro(libros[i].isbn);
    });
}

const inactivarLibro = (isbn) => {
    let confirmacion = confirm(`¿Estás seguro de que quieres inactivar el libro con ISBN ${isbn}?`);
    if (confirmacion) {
        // Envía una solicitud al proceso principal para actualizar el estado del libro
        window.ipcRender.invoke('inactivarLibro', isbn).then((result) => {
            if (result) {
                // Si la actualización se realizó correctamente, vuelve a cargar la lista de libros
                pageConsult.consultBooks();
            } else {
                alert('Error al inactivar el libro');
            }
        });
    }
};
