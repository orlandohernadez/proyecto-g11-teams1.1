function showSection(sectionId) {
  var sections = document.querySelectorAll('.section');
  sections.forEach(function(section) {
    section.classList.remove('active');
  });
  
  var section = document.getElementById(sectionId);
  section.classList.add('active');

  // Ocultar todos los botones primero
  var buttons = document.querySelectorAll('.button-container button');
  buttons.forEach(function(button) {
    button.style.display = 'none';
  });

  // Mostrar los botones correspondientes a la sección seleccionada
  var sectionButtons = document.querySelectorAll('#' + sectionId + ' .button-container button');
  sectionButtons.forEach(function(button) {
    button.style.display = 'block';
  });
}

function toggle1() {
  var form = document.getElementById('productoForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle2() {
  var form = document.getElementById('actualizarForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle3() {
  var form = document.getElementById('registrarForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle4() {
  var form = document.getElementById('generarForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle5() {
  var form = document.getElementById('productosForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle6() {
  var form = document.getElementById('proveedoresForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle7() {
  var form = document.getElementById('informesForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle8() {
  var form = document.getElementById('productossForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle9() {
  var form = document.getElementById('ubicacionesForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle610() {
  var form = document.getElementById('informessForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle11() {
  var form = document.getElementById('productosssForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle12() {
  var form = document.getElementById('cantidaddForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle13() {
  var form = document.getElementById('ventaproductoForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle14() {
  var form = document.getElementById('tranferenciaproductosForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle15() {
  var form = document.getElementById('devolucionproductosForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}


function toggle16() {
  var form = document.getElementById('destruccionproductosForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle17() {
  var form = document.getElementById('productossssForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

function toggle18() {
  var form = document.getElementById('controlarstockForm');
  if (form.style.display === 'none') {
      form.style.display = 'block';
  } else {
      form.style.display = 'none';
  }
}

