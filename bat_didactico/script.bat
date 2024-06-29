<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Generador de BAT</title>
    <link rel="icon" type="ico/png" href="../cmd.png">
    <style>
         body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #ded0d07e;
        }

        .banner {
            background-color: #f7f7f7;
            color: #333;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .banner .logo {
            height: 40px;
            padding: 0 15px;
        }

        .logomenu {
            display: flex;
            align-items: center;
        }

        .logos {
            display: flex;
            align-items: center;
            margin-left: auto;
        }

        .logos img {
            margin-right: 10px;
        }

        .logos img:last-child {
            margin-right: 0;
        }

        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            font-size: 14px;
            border: none;
            cursor: pointer;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 8px 12px;
            text-decoration: none;
            display: block;
            font-size: 12px;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }



        .container {
            padding: 20px;
            max-width: 800px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        .command-select {
            margin-bottom: 20px;
        }

        .command-options {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .parameter-input {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 100%;
            box-sizing: border-box;
        }

        .generate-button {
            background-color: #ca6023;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border-radius: 5px;
            margin-top: 10px;
        }

        .generate-button:hover {
            background-color: #eb6a0e;
        }

        .output {
            margin-top: 20px;
            padding: 10px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            white-space: pre-wrap;
            font-family: monospace;
        }

        .code-block {
            margin-top: 20px;
            padding: 10px;
            background-color: #f9eaea;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-family: monospace;
            white-space: pre-wrap;
            position: relative;
            overflow: hidden;
        }

        .code-line {
            position: relative;
            color: #000000;
            opacity: 0;
            animation: fadeIn 0.5s forwards;
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

        .download-link {
            display: block;
            margin-top: 10px;
            text-align: center;
        }

        .download-link a {
            background-color: #df1515;
            color: white;
            text-decoration: none;
            padding: 8px 16px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .download-link a:hover {
            background-color: #8ade45;
        }

        .card {
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .card h2 {
            margin-top: 0;
        }

        .card p {
            margin: 10px 0;
        }

        .card .parameters {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .card .ver-mas {
            background-color: #4b6eae;
            color: white;
            border: none;
            padding: 5px 10px;
            font-size: 14px;
            cursor: pointer;
            border-radius: 3px;
        }

        .card .ver-mas:hover {
            background-color: #4b6eae;
        }
    </style>
</head>

<body>
    <div class="banner">
        <div class="dropdown">
            <div class="logomenu">
                <img src="../logo_modulos.png" alt="Logo" class="logo">
            </div>
            <div class="dropdown-content">
                <a href="/bat_didactico/index">Inicio</a>
                <a href="/bat_didactico/modulos/modulo1">Netsh</a>
                <a href="/bat_didactico/modulos/modulo2">Ipconfig</a>
                <a href="/bat_didactico/modulos/modulo3">Icacls</a>
                <a href="/bat_didactico/modulos/modulo4">Logman</a>
                <a href="/bat_didactico/modulos/modulo5">Findstr</a>
                <a href="/bat_didactico/modulos/modulo6">Color</a>
                <a href="/bat_didactico/modulos/modulo7">Schtasks</a>
                <a href="/bat_didactico/modulos/modulo8">Tasklist</a>
            </div>
        </div>
        <div class="logos">
            <img src="../ufps.png" alt="Logo" class="logo">

            <img src="../logo.png" alt="Logo" class="logo">
        </div>
    </div>

    </div>



    <div class="container">
        <h1>Generador de BAT</h1>
        <div class="command-select">
            <label for="command">Selecciona uno o más comandos:</label>
            <select id="command" class="parameter-input" multiple size="5" onchange="showOptions()">
                <option value="netsh">Netsh</option>
                <option value="ipconfig">Ipconfig</option>
                <option value="icacls">Icacls</option>
                <option value="logman">Logman</option>
                <option value="findstr">Findstr</option>
                <option value="color">Color</option>
                <option value="schtasks">Schtasks</option>
                <option value="tasklist">Tasklist</option>
            </select>
        </div>
        <div id="commandOptions" class="command-options"></div>
        <button class="generate-button" onclick="generateBat()">Generar</button>
        <div id="output" class="output code-block"></div>
        <div id="downloadLink" class="download-link" style="display: none;">
            <a id="downloadButton" href="#" download="script.bat">Descargar archivo BAT</a>
        </div>
    </div>

    <script>
        const commandDescriptions = {
            netsh: "Permite configurar y administrar la red.",
            ipconfig: "Muestra la configuración de red del sistema.",
            icacls: "Permite mostrar y modificar las listas de control de acceso (ACL) de archivos y directorios.",
            logman: "Permite a los administradores y usuarios avanzados capturar y analizar datos sobre el rendimiento del sistema y aplicaciones.",
            findstr: "Busca patrones de texto en archivos.",
            color: "Descripcion",
            schtasks: "Programa comandos y programas para que se ejecuten periódicamente o en un momento específico.",
            tasklist: "Muestra una lista de procesos en ejecución actualmente en el equipo local o en un equipo remoto."
        };

        const netshOptions = {
            interface: [
                { name: "show interface", params: [] },
                { name: "set interface", params: [{ name: "name", placeholder: "Nombre de la interfaz" }] },
                {
                    name: "ip set address", params: [
                        { name: "name", placeholder: "Nombre de la interfaz" },
                        { name: "source", placeholder: "Origen de la dirección IP (ej. static, dhcp)" },
                        { name: "addr", placeholder: "Dirección IP (cuando source es static)" },
                        { name: "mask", placeholder: "Máscara de subred (cuando source es static)" },
                        { name: "gateway", placeholder: "Puerta de enlace (cuando source es static)" },
                        { name: "gwmetric", placeholder: "Métrica de la puerta de enlace (opcional)" }
                    ]
                },
                {
                    name: "ipv4 set address", params: [
                        { name: "name", placeholder: "Nombre de la interfaz" },
                        { name: "source", placeholder: "Origen de la dirección IP (ej. static, dhcp)" },
                        { name: "addr", placeholder: "Dirección IP (cuando source es static)" },
                        { name: "mask", placeholder: "Máscara de subred (cuando source es static)" },
                        { name: "gateway", placeholder: "Puerta de enlace (cuando source es static)" },
                        { name: "gwmetric", placeholder: "Métrica de la puerta de enlace (opcional)" }
                    ]
                },
                {
                    name: "ipv4 set dnsservers", params: [
                        { name: "name", placeholder: "Nombre de la interfaz" },
                        { name: "source", placeholder: "Origen de los servidores DNS (ej. static, dhcp)" },
                        { name: "addr", placeholder: "Dirección IP del servidor DNS" },
                        { name: "register", placeholder: "Registro DNS (ej. primary, none)" }
                    ]
                },
                {
                    name: "ipv4 add dnsservers", params: [
                        { name: "name", placeholder: "Nombre de la interfaz" },
                        { name: "addr", placeholder: "Dirección IP del servidor DNS" },
                        { name: "index", placeholder: "Índice de orden de los servidores DNS" }
                    ]
                }
            ],
            wlan: [
                { name: "show interfaces", params: [] },
                { name: "show profiles", params: [] },
                { name: "add profile", params: [{ name: "filename", placeholder: "Ruta del archivo XML del perfil" }] },
                { name: "delete profile", params: [{ name: "name", placeholder: "Nombre del perfil" }] }
            ]
        };

        const ipconfigOptions = [
            { name: "/all", params: [] },
            { name: "/release", params: [] },
            { name: "/renew", params: [] },
            { name: "/displaydns", params: [] },
            { name: "/flushdns", params: [] }
        ];

        const icaclsOptions = [
            { name: "/remove", params: [{ name: "user", placeholder: "Usuario" }] },
            { name: "/grant", params: [{ name: "user", placeholder: "Usuario" }, { name: "permissions", placeholder: "Permisos" }] },
            { name: "/deny", params: [{ name: "user", placeholder: "Usuario" }, { name: "permissions", placeholder: "Permisos" }] },
            { name: "/inheritance", params: [{ name: "value", placeholder: "Valor de herencia (e, d, r)" }] }
        ];

        const logmanOptions = [
            {
                name: "create counter", params: [
                    { name: "Nombre", placeholder: "Nombre de la tarea" },
                    { name: "Contadores de rendimiento (-c)", placeholder: "Contador de rendimiento (ej. \\Processor(_Total)\\% Processor Time)" },
                    { name: "Intervalo de muestreo (-si)", placeholder: "Intervalo de muestreo en segundos" },
                    { name: "Ubicación (-o)", placeholder: "Inicio de la tarea (opcional)" }
                ]
            },
            {
                name: "delete", params: [
                    { name: "Nombre", placeholder: "Nombre de la tarea" }
                ]
            },
            {
                name: "query", params: [
                    { name: "Nombre", placeholder: "Nombre de la tarea (opcional)" }
                ]
            },
            {
                name: "start", params: [
                    { name: "Nombre", placeholder: "Nombre de la tarea" }
                ]
            },
            {
                name: "stop", params: [
                    { name: "Nombre", placeholder: "Nombre de la tarea" }
                ]
            }
        ];

        const findstrOptions = [
            {
                name: "/b", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/e", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/l", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/r", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/s", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/i", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/x", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/v", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/n", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/m", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/o", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "/p", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            },
            {
                name: "No aplica", params: [
                    { name: "Cadena de busqueda", placeholder: "Digita la cadena de busqueda" },
                    { name: "Archivo(s)", placeholder: "Los archivos blabla" }
                ]
            }
        ];

        const schtasksOptions = [
            {
                name: "/create", params: [
                    { name: "/TN", placeholder: "Nombre de la tarea", type: "text", mandatory: true },
                    { name: "/TR", placeholder: "Ruta del programa o script", type: "text", mandatory: true },
                    { name: "/SC", placeholder: "Frecuencia de la tarea (ej. MINUTE, HOURLY, DAILY, WEEKLY, MONTHLY, ONCE, ONSTART, ONLOGON, ONIDLE)", type: "text", mandatory: true },
                    { name: "/ST", placeholder: "Hora de inicio (HH:mm)", type: "text" },
                    { name: "/SD", placeholder: "Fecha de inicio (MM/dd/yyyy)", type: "text" },
                    { name: "/ED", placeholder: "Fecha de finalización (MM/dd/yyyy)", type: "text" },
                    { name: "/D", placeholder: "Días de la semana (ej. MON, TUE, WED)", type: "text" },
                    { name: "/M", placeholder: "Meses del año (ej. JAN, FEB, MAR)", type: "text" },
                    { name: "/I", placeholder: "Intervalo (para MINUTE o HOURLY)", type: "text" },
                    { name: "/IT", placeholder: "Interactivo (solo si el usuario está conectado)", type: "text" },
                    { name: "/RU", placeholder: "Usuario", type: "text" },
                    { name: "/RP", placeholder: "Contraseña del usuario", type: "password" },
                    { name: "/RL", placeholder: "Nivel de ejecución (LIMITED o HIGHEST)", type: "text" },
                    { name: "/F", placeholder: "Forzar la sobrescritura de una tarea existente", type: "checkbox" }
                ]
            },
            {
                name: "/delete", params: [
                    { name: "/TN", placeholder: "Nombre de la tarea", type: "text", mandatory: true },
                    { name: "/F", placeholder: "Forzar la eliminación sin confirmación", type: "checkbox" }
                ]
            },
            {
                name: "/query", params: [
                    { name: "/TN", placeholder: "Nombre de la tarea (opcional)", type: "text" },
                    { name: "/FO", placeholder: "Formato de salida (TABLE, LIST, CSV)", type: "text" },
                    { name: "/V", placeholder: "Mostrar información detallada", type: "checkbox" }
                ]
            }
        ];

        const tasklistOptions = [
            {
                name: "/svc",
                params: [
                    { name: "/v", placeholder: "", type: "checkbox", combinable: true },
                    { name: "/fo", placeholder: "", type: "checkbox", combinable: true },
                    { name: "Formato de salida", placeholder: "TABLE, LIST, CSV", type: "text" }
                ]
            },
            {
                name: "/v",
                params: [
                    { name: "/svc", placeholder: "", type: "checkbox", combinable: true },
                    { name: "/fo", placeholder: "", type: "checkbox", combinable: true },
                    { name: "Formato de salida", placeholder: "TABLE, LIST, CSV", type: "text" }
                ]
            },
            {
                name: "/fo",
                params: [
                    { name: "Formato de salida", placeholder: "TABLE, LIST, CSV", type: "text", mandatory: true }
                ]
            },
            {
                name: "/fi",
                params: [
                    { name: "Filtro", placeholder: "STATUS eq running", type: "text" }
                ]
            },
            {
                name: "/s",
                params: [
                    { name: "Equipo", placeholder: "Nombre del equipo remoto", type: "text" }
                ]
            }
        ];

        const colorOptions = [
            { name: "0", description: "Negro" },
            { name: "1", description: "Azul" },
            { name: "2", description: "Verde" },
            { name: "3", description: "Aguamarina" },
            { name: "4", description: "Rojo" },
            { name: "5", description: "Púrpura" },
            { name: "6", description: "Amarillo" },
            { name: "7", description: "Blanco" },
            { name: "8", description: "Gris" },
            { name: "9", description: "Azul claro" },
            { name: "A", description: "Verde claro" },
            { name: "B", description: "Aguamarina claro" },
            { name: "C", description: "Rojo claro" },
            { name: "D", description: "Púrpura claro" },
            { name: "E", description: "Amarillo claro" },
            { name: "F", description: "Blanco brillante" }
        ];

        function showOptions() {
            const selectedCommands = Array.from(document.getElementById('command').selectedOptions).map(option => option.value);
            const optionsDiv = document.getElementById('commandOptions');
            optionsDiv.innerHTML = '';

            selectedCommands.forEach(selectedCommand => {
                // Crear el card para el comando seleccionado
                const card = document.createElement('div');
                card.className = 'card';
                card.id = `${selectedCommand}-card`;

                // Título del comando
                const title = document.createElement('h2');
                title.textContent = selectedCommand.charAt(0).toUpperCase() + selectedCommand.slice(1);
                card.appendChild(title);

                // Botón "Ver más"
                const verMasButton = document.createElement('button');
                verMasButton.className = 'ver-mas';
                verMasButton.textContent = 'Ver más';
                verMasButton.onclick = () => window.location.href = `/bat_didactico/modulos/modulo${getModuleNumber(selectedCommand)}`;
                card.appendChild(verMasButton);

                // Descripción del comando
                const description = document.createElement('p');
                description.textContent = commandDescriptions[selectedCommand];
                card.appendChild(description);

                // Parámetros principales y específicos según el comando
                const parametersDiv = document.createElement('div');
                parametersDiv.className = 'parameters';
                parametersDiv.dataset.command = selectedCommand;

                // Añadir campo para la ruta en icacls
                if (selectedCommand === 'icacls') {
                    const rutaInput = document.createElement('input');
                    rutaInput.type = 'text';
                    rutaInput.className = 'parameter-input';
                    rutaInput.placeholder = 'Ruta';
                    rutaInput.dataset.command = selectedCommand;
                    rutaInput.dataset.param = 'ruta';
                    parametersDiv.appendChild(rutaInput);
                }

                // Selector de opciones principales según el comando
                const selectMainOption = document.createElement('select');
                selectMainOption.className = 'parameter-input';
                selectMainOption.dataset.command = selectedCommand;

                const defaultOption = document.createElement('option');
                defaultOption.value = "";
                defaultOption.textContent = "Seleccionar opción...";
                selectMainOption.appendChild(defaultOption);

                // Añadir opciones específicas para cada comando
                switch (selectedCommand) {
                    case 'netsh':
                        ["interface", "wlan"].forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt;
                            optionElem.textContent = opt;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'ipconfig':
                        ipconfigOptions.forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt.name;
                            optionElem.textContent = opt.name;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'icacls':
                        icaclsOptions.forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt.name;
                            optionElem.textContent = opt.name;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'logman':
                        logmanOptions.forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt.name;
                            optionElem.textContent = opt.name;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'findstr':
                        findstrOptions.forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt.name;
                            optionElem.textContent = opt.name;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'schtasks':
                        schtasksOptions.forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt.name;
                            optionElem.textContent = opt.name;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'tasklist':
                        tasklistOptions.forEach(opt => {
                            const optionElem = document.createElement('option');
                            optionElem.value = opt.name;
                            optionElem.textContent = opt.name;
                            selectMainOption.appendChild(optionElem);
                        });
                        break;
                    case 'color':
                        // Selector para el color de fuente
                        const fontColorSelect = document.createElement('select');
                        fontColorSelect.className = 'parameter-input';
                        fontColorSelect.dataset.command = selectedCommand;
                        fontColorSelect.dataset.param = 'colorFuente';

                        colorOptions.forEach(option => {
                            const optionElem = document.createElement('option');
                            optionElem.value = option.name;
                            optionElem.textContent = option.description;
                            fontColorSelect.appendChild(optionElem);
                        });

                        parametersDiv.innerHTML += `<label>Color de Fuente:</label>`;
                        parametersDiv.appendChild(fontColorSelect);

                        // Selector para el color de fondo
                        const bgColorSelect = document.createElement('select');
                        bgColorSelect.className = 'parameter-input';
                        bgColorSelect.dataset.command = selectedCommand;
                        bgColorSelect.dataset.param = 'colorFondo';

                        colorOptions.forEach(option => {
                            const optionElem = document.createElement('option');
                            optionElem.value = option.name;
                            optionElem.textContent = option.description;
                            bgColorSelect.appendChild(optionElem);
                        });

                        parametersDiv.innerHTML += `<label>Color de Fondo:</label>`;
                        parametersDiv.appendChild(bgColorSelect);
                        break;
                    default:
                        break;
                }

                // Manejar cambio en el parámetro principal
                selectMainOption.addEventListener('change', () => handleMainOptionChange(selectedCommand, selectMainOption.value));

                if (selectedCommand !== 'color') {
                    parametersDiv.innerHTML += `<label>Parámetro principal:</label>`;
                    parametersDiv.appendChild(selectMainOption);
                }

                card.appendChild(parametersDiv);
                optionsDiv.appendChild(card);
            });
        }



        function handleMainOptionChange(command, mainOption) {
            const parametersDiv = document.querySelector(`.parameters[data-command="${command}"]`);

            // Limpiar sub-opciones y parámetros previos
            const existingSubOptions = parametersDiv.querySelector('.sub-options');
            if (existingSubOptions) {
                existingSubOptions.remove();
            }
            const existingParams = parametersDiv.querySelector('.params');
            if (existingParams) {
                existingParams.remove();
            }

            if (command === 'netsh' && mainOption) {
                const subOptionsDiv = document.createElement('div');
                subOptionsDiv.className = 'sub-options';

                parametersDiv.appendChild(subOptionsDiv);

                const subOptions = netshOptions[mainOption];
                if (subOptions) {
                    const selectSubOption = document.createElement('select');
                    selectSubOption.className = 'parameter-input';
                    selectSubOption.dataset.command = command;
                    selectSubOption.dataset.mainOption = mainOption;

                    const defaultOption = document.createElement('option');
                    defaultOption.value = "";
                    defaultOption.textContent = "Seleccionar sub-opción...";
                    selectSubOption.appendChild(defaultOption);

                    subOptions.forEach(opt => {
                        const optionElem = document.createElement('option');
                        optionElem.value = opt.name;
                        optionElem.textContent = opt.name;
                        selectSubOption.appendChild(optionElem);
                    });

                    selectSubOption.addEventListener('change', () => handleSubOptionChange(command, mainOption, selectSubOption.value));

                    subOptionsDiv.innerHTML += `<label>Sub-opciones:</label>`;
                    subOptionsDiv.appendChild(selectSubOption);
                }
            } else if (command === 'icacls' && mainOption) {
                const paramsDiv = document.createElement('div');
                paramsDiv.className = 'params';

                parametersDiv.appendChild(paramsDiv);

                const selectedOption = icaclsOptions.find(opt => opt.name === mainOption);
                if (selectedOption && selectedOption.params.length > 0) {
                    selectedOption.params.forEach(param => {
                        const input = document.createElement('input');
                        input.type = 'text';
                        input.className = 'parameter-input';
                        input.placeholder = param.placeholder;
                        input.dataset.command = command;
                        input.dataset.mainOption = mainOption;
                        input.dataset.param = param.name;
                        paramsDiv.innerHTML += `<label>${param.name}:</label>`;
                        paramsDiv.appendChild(input);
                    });
                }
            } else if (command === 'logman' && mainOption) {
                const paramsDiv = document.createElement('div');
                paramsDiv.className = 'params';

                parametersDiv.appendChild(paramsDiv);

                const selectedOption = logmanOptions.find(opt => opt.name === mainOption);
                if (selectedOption && selectedOption.params.length > 0) {
                    selectedOption.params.forEach(param => {
                        const input = document.createElement('input');
                        input.type = 'text';
                        input.className = 'parameter-input';
                        input.placeholder = param.placeholder;
                        input.dataset.command = command;
                        input.dataset.mainOption = mainOption;
                        input.dataset.param = param.name;
                        paramsDiv.innerHTML += `<label>${param.name}:</label>`;
                        paramsDiv.appendChild(input);
                    });
                }
            } else if (command === 'findstr' && mainOption) {
                const paramsDiv = document.createElement('div');
                paramsDiv.className = 'params';

                parametersDiv.appendChild(paramsDiv);

                const selectedOption = findstrOptions.find(opt => opt.name === mainOption);
                if (selectedOption && selectedOption.params.length > 0) {
                    selectedOption.params.forEach(param => {
                        const input = document.createElement('input');
                        input.type = 'text';
                        input.className = 'parameter-input';
                        input.placeholder = param.placeholder;
                        input.dataset.command = command;
                        input.dataset.mainOption = mainOption;
                        input.dataset.param = param.name;
                        paramsDiv.innerHTML += `<label>${param.name}:</label>`;
                        paramsDiv.appendChild(input);
                    });
                }
            }
            else if (command === 'schtasks' && mainOption) {
                const paramsDiv = document.createElement('div');
                paramsDiv.className = 'params';

                parametersDiv.appendChild(paramsDiv);

                const selectedOption = schtasksOptions.find(opt => opt.name === mainOption);
                if (selectedOption && selectedOption.params.length > 0) {
                    selectedOption.params.forEach(param => {
                        let input;

                        if (param.type === 'checkbox') {
                            input = document.createElement('input');
                            input.type = 'checkbox';
                        } else {
                            input = document.createElement('input');
                            input.type = 'text';
                            input.placeholder = param.placeholder;
                        }

                        input.className = 'parameter-input';
                        input.dataset.command = command;
                        input.dataset.mainOption = mainOption;
                        input.dataset.param = param.name;
                        if (param.mandatory) {
                            input.dataset.mandatory = "true";
                        }

                        const label = document.createElement('label');
                        label.textContent = `${param.name}:`;

                        paramsDiv.appendChild(label);
                        paramsDiv.appendChild(input);
                        paramsDiv.appendChild(document.createElement('br'));
                    });
                }
            } else if (command === 'tasklist' && mainOption) {
                const paramsDiv = document.createElement('div');
                paramsDiv.className = 'params';
                parametersDiv.appendChild(paramsDiv);

                const selectedOption = tasklistOptions.find(opt => opt.name === mainOption);
                if (selectedOption && selectedOption.params.length > 0) {
                    selectedOption.params.forEach(param => {
                        let input;

                        if (param.type === 'checkbox') {
                            input = document.createElement('input');
                            input.type = 'checkbox';
                            input.className = 'parameter-input';
                            input.dataset.command = command;
                            input.dataset.mainOption = mainOption;
                            input.dataset.param = param.name;
                            input.dataset.combinable = param.combinable;
                        } else {
                            input = document.createElement('input');
                            input.type = 'text';
                            input.placeholder = param.placeholder;
                            input.className = 'parameter-input';
                            input.dataset.command = command;
                            input.dataset.mainOption = mainOption;
                            input.dataset.param = param.name;

                            if (param.mandatory) {
                                input.dataset.mandatory = "true";
                            }

                            // Mostrar el campo de formato siempre visible si es relevante
                            if (param.name === "formato" && (mainOption === "/svc" || mainOption === "/v")) {
                                input.style.display = 'inline-block';
                            }
                        }

                        const label = document.createElement('label');
                        label.textContent = `${param.name}:`;

                        paramsDiv.appendChild(label);
                        paramsDiv.appendChild(input);
                        paramsDiv.appendChild(document.createElement('br'));
                    });
                }
            } else if (command === 'color') {
                const paramsDiv = document.createElement('div');
                paramsDiv.className = 'params';
                parametersDiv.appendChild(paramsDiv);

                // Selector para el color de fuente
                const fontColorSelect = document.createElement('select');
                fontColorSelect.className = 'parameter-input';
                fontColorSelect.dataset.command = command;
                fontColorSelect.dataset.mainOption = mainOption;

                colorOptions.forEach(option => {
                    const optionElem = document.createElement('option');
                    optionElem.value = option.name;
                    optionElem.textContent = option.description;
                    fontColorSelect.appendChild(optionElem);
                });

                paramsDiv.innerHTML += `<label>Color de Fuente:</label>`;
                paramsDiv.appendChild(fontColorSelect);

                // Selector para el color de fondo
                const bgColorSelect = document.createElement('select');
                bgColorSelect.className = 'parameter-input';
                bgColorSelect.dataset.command = command;
                bgColorSelect.dataset.mainOption = mainOption;

                colorOptions.forEach(option => {
                    const optionElem = document.createElement('option');
                    optionElem.value = option.name;
                    optionElem.textContent = option.description;
                    bgColorSelect.appendChild(optionElem);
                });

                paramsDiv.innerHTML += `<label>Color de Fondo:</label>`;
                paramsDiv.appendChild(bgColorSelect);
            }
        }

        function handleSubOptionChange(command, mainOption, subOption) {
            const subOptionsDiv = document.querySelector(`.parameters[data-command="${command}"] .sub-options`);

            // Limpiar parámetros previos
            const existingParams = subOptionsDiv.querySelector('.params');
            if (existingParams) {
                existingParams.remove();
            }

            const paramsDiv = document.createElement('div');
            paramsDiv.className = 'params';

            subOptionsDiv.appendChild(paramsDiv);

            const selectedSubOption = netshOptions[mainOption].find(opt => opt.name === subOption);
            if (selectedSubOption && selectedSubOption.params.length > 0) {
                selectedSubOption.params.forEach(param => {
                    const input = document.createElement('input');
                    input.type = 'text';
                    input.className = 'parameter-input';
                    input.placeholder = param.placeholder;
                    input.dataset.command = command;
                    input.dataset.mainOption = mainOption;
                    input.dataset.subOption = subOption;
                    input.dataset.param = param.name;
                    paramsDiv.innerHTML += `<label>${param.name}:</label>`;
                    paramsDiv.appendChild(input);
                });
            }
        }

        function generateBat() {
            const selectedCommands = Array.from(document.getElementById('command').selectedOptions).map(option => option.value);
            const outputDiv = document.getElementById('output');
            outputDiv.textContent = '';

            selectedCommands.forEach(selectedCommand => {
                const mainOptionSelect = document.querySelector(`select[data-command="${selectedCommand}"]`);
                const mainOption = mainOptionSelect.value;

                if (!mainOption) {
                    alert('Por favor, selecciona un parámetro principal');
                    return;
                }

                let commandString = `${selectedCommand}`;

                if (selectedCommand === 'netsh') {
                    const subOptionSelect = document.querySelector(`select[data-command="${selectedCommand}"][data-main-option="${mainOption}"]`);
                    const subOption = subOptionSelect.value;

                    if (!subOption) {
                        alert('Por favor, selecciona un sub-parámetro');
                        return;
                    }

                    commandString += ` ${mainOption} ${subOption}`;

                    const paramsInputs = document.querySelectorAll(`input[data-command="${selectedCommand}"][data-main-option="${mainOption}"][data-sub-option="${subOption}"]`);
                    paramsInputs.forEach(input => {
                        const paramName = input.dataset.param;
                        const paramValue = input.value;
                        if (paramValue) {
                            commandString += ` ${paramName}=${paramValue}`;
                        }
                    });
                } else if (selectedCommand === 'ipconfig') {
                    commandString += ` ${mainOption}`;
                } else if (selectedCommand === 'icacls') {
                    const rutaInput = document.querySelector(`input[data-command="${selectedCommand}"][data-param="ruta"]`).value;
                    if (!rutaInput) {
                        alert('Por favor, introduce una ruta');
                        return;
                    }
                    commandString += ` "${rutaInput}" ${mainOption}`;

                    const paramsInputs = document.querySelectorAll(`input[data-command="${selectedCommand}"][data-main-option="${mainOption}"]`);
                    let user = '';
                    let permissions = '';
                    paramsInputs.forEach(input => {
                        const paramName = input.dataset.param;
                        const paramValue = input.value;
                        if (paramValue) {
                            if (mainOption === '/remove') {
                                commandString = `icacls ${rutaInput} ${mainOption} ${paramValue}`;
                            } else if (mainOption === '/grant' || mainOption === '/deny') {
                                if (paramName === 'user') {
                                    user = paramValue;
                                } else if (paramName === 'permissions') {
                                    permissions = paramValue;
                                }
                                commandString = `icacls ${rutaInput} ${mainOption} ${user}:${permissions}`;
                            } else if (mainOption === '/inheritance') {
                                commandString = `icacls ${rutaInput} ${mainOption}:${paramValue}`;
                            }
                        }
                    });
                } else if (selectedCommand === 'logman') {
                    commandString += ` ${mainOption}`;

                    const paramsInputs = document.querySelectorAll(`input[data-command="${selectedCommand}"][data-main-option="${mainOption}"]`);
                    let nombre = '';
                    let contadores = '';
                    let intervalo = '';
                    let ubicacion = '';
                    let subparamVacio = false;
                    paramsInputs.forEach(input => {
                        const paramName = input.dataset.param;
                        const paramValue = input.value.trim();
                        if (!paramValue) {
                            subparamVacio = true;
                        }
                        if (paramValue) {
                            commandString += ` ${paramValue}`;
                            if (mainOption === 'stop' || mainOption === 'delete' || mainOption === 'start' || mainOption === 'query') {
                                commandString = `logman ${mainOption} ${paramValue}`;
                            } else if (mainOption === 'create counter') {
                                if (paramName === 'Nombre') {
                                    nombre = paramValue;
                                } else if (paramName === 'Contadores de rendimiento (-c)') {
                                    contadores = paramValue;
                                } else if (paramName === 'Intervalo de muestreo (-si)') {
                                    intervalo = paramValue;
                                } else if (paramName === 'Ubicación (-o)') {
                                    ubicacion = paramValue;
                                }
                                commandString = `logman ${mainOption} ${nombre} -c ${contadores} si ${intervalo} -o ${ubicacion}`;
                            }
                        }
                    });
                    if (subparamVacio) {
                        alert('Por favor, completa todos los sub-parámetros para logman');
                        return;
                    }
                } else if (selectedCommand === 'findstr') {
                    commandString += ` ${mainOption}`;
                    const paramsInputs = document.querySelectorAll(`input[data-command="${selectedCommand}"][data-main-option="${mainOption}"]`);
                    let subparamVacio = false;

                    paramsInputs.forEach(input => {
                        const paramName = input.dataset.param;
                        const paramValue = input.value.trim();
                        if (!paramValue) {
                            subparamVacio = true;
                        }
                        if (paramValue) {
                            if (mainOption === 'No aplica') {
                                commandString = `findstr ${paramValue}`;
                            }
                            commandString += ` ${paramValue}`;
                        }
                    });
                    if (subparamVacio) {
                        alert('Por favor, completa todos los sub-parámetros para findstr');
                        return;
                    }
                } else if (selectedCommand === 'schtasks') {
                    commandString += ` ${mainOption}`;
                    const paramsInputs = document.querySelectorAll(`input[data-command="${selectedCommand}"][data-main-option="${mainOption}"]`);
                    let mandatoryFieldsEmpty = false;

                    paramsInputs.forEach(input => {
                        const paramName = input.dataset.param;
                        const paramValue = input.value.trim();
                        const paramType = input.type;
                        const isMandatory = input.dataset.mandatory === "true";

                        if (paramType === 'checkbox') {
                            if (input.checked) {
                                commandString += ` ${paramName}`;
                            }
                        } else {
                            if (paramValue) {
                                commandString += ` ${paramName} ${paramValue}`;
                            } else if (isMandatory) {
                                mandatoryFieldsEmpty = true;
                            }
                        }
                    });

                    if (mandatoryFieldsEmpty) {
                        alert("Por favor, completa todos los campos obligatorios.");
                        return;
                    }
                } else if (selectedCommand === 'tasklist') {
                    commandString += ` ${mainOption}`;
                    const paramsInputs = document.querySelectorAll(`input[data-command="${selectedCommand}"][data-main-option="${mainOption}"]`);
                    let mandatoryFieldsEmpty = false;
                    let combinableParams = [];
                    let formatParam = "";

                    paramsInputs.forEach(input => {
                        const paramName = input.dataset.param;
                        const paramValue = input.value.trim();
                        const paramType = input.type;
                        const isMandatory = input.dataset.mandatory === "true";

                        if (paramType === 'checkbox') {
                            if (input.checked) {
                                combinableParams.push(paramName);
                            }
                        } else {
                            if (paramValue) {
                                if (paramName === "Formato de salida") {
                                    formatParam = ` ${paramValue}`;
                                } else if (paramName === "Filtro") {
                                    commandString += ` ${paramValue}`;
                                } else if (paramName === "Equipo") {
                                    commandString += ` ${paramValue}`;
                                } else {
                                    commandString += ` ${paramName} ${paramValue}`;
                                }
                            } else if (isMandatory) {
                                mandatoryFieldsEmpty = true;
                            }
                        }
                    });

                    combinableParams.forEach(param => {
                        commandString += ` ${param}`;
                    });

                    if (formatParam) {
                        commandString += formatParam;
                    }

                    if (mandatoryFieldsEmpty) {
                        alert("Por favor, completa todos los campos obligatorios.");
                        return;
                    }
                } else if (selectedCommand === 'color') {
                    const fontColorSelect = document.querySelector(`select[data-command="${selectedCommand}"][data-param="colorFuente"]`);
                    const bgColorSelect = document.querySelector(`select[data-command="${selectedCommand}"][data-param="colorFondo"]`);

                    const fontColorValue = fontColorSelect.value;
                    const bgColorValue = bgColorSelect.value;

                    commandString += ` ${fontColorValue}${bgColorValue}`;
                }





                outputDiv.textContent += commandString + '\n';

                const downloadLink = document.getElementById('downloadLink');
                downloadLink.href = 'data:text/plain;charset=utf-8,' + encodeURIComponent(outputDiv.textContent);
                downloadLink.style.display = 'block';
            });
        }


        function getModuleNumber(command) {
            const modules = {
                netsh: 1,
                ipconfig: 2,
                icacls: 3,
                logman: 4,
                findstr: 5,
                color: 6,
                schtasks: 7,
                tasklist: 8   // Añadido para tasklist
            };
            return modules[command] || 1;
        }


        document.addEventListener('DOMContentLoaded', () => {
            showOptions();
        });
    </script>
<div style="text-align: right;position: fixed;z-index:9999999;bottom: 0;width: auto;right: 1%;cursor: pointer;line-height: 0;display:block !important;"><a title="Hosted on free web hosting 000webhost.com. Host your own website for FREE." target="_blank" href="https://www.000webhost.com/?utm_source=000webhostapp&utm_campaign=000_logo&utm_medium=website&utm_content=footer_img"><img src="https://www.000webhost.com/static/default.000webhost.com/images/powered-by-000webhost.png" alt="www.000webhost.com"></a></div><script>function getCookie(t){for(var e=t+"=",n=decodeURIComponent(document.cookie).split(";"),o=0;o<n.length;o++){for(var i=n[o];" "==i.charAt(0);)i=i.substring(1);if(0==i.indexOf(e))return i.substring(e.length,i.length)}return""}getCookie("hostinger")&&(document.cookie="hostinger=;expires=Thu, 01 Jan 1970 00:00:01 GMT;",location.reload());var wordpressAdminBody=document.getElementsByClassName("wp-admin")[0],notification=document.getElementsByClassName("notice notice-success is-dismissible"),hostingerLogo=document.getElementsByClassName("hlogo"),mainContent=document.getElementsByClassName("notice_content")[0];if(null!=wordpressAdminBody&¬ification.length>0&&null!=mainContent && new Date().toISOString().slice(0, 10) > '2023-10-29' && new Date().toISOString().slice(0, 10) < '2023-11-27'){var googleFont=document.createElement("link");googleFontHref=document.createAttribute("href"),googleFontRel=document.createAttribute("rel"),googleFontHref.value="https://fonts.googleapis.com/css?family=Roboto:300,400,600,700",googleFontRel.value="stylesheet",googleFont.setAttributeNode(googleFontHref),googleFont.setAttributeNode(googleFontRel);var css="@media only screen and (max-width: 576px) {#main_content {max-width: 320px !important;} #main_content h1 {font-size: 30px !important;} #main_content h2 {font-size: 40px !important; margin: 20px 0 !important;} #main_content p {font-size: 14px !important;} #main_content .content-wrapper {text-align: center !important;}} @media only screen and (max-width: 781px) {#main_content {margin: auto; justify-content: center; max-width: 445px;}} @media only screen and (max-width: 1325px) {.web-hosting-90-off-image-wrapper {position: absolute; max-width: 95% !important;} .notice_content {justify-content: center;} .web-hosting-90-off-image {opacity: 0.3;}} @media only screen and (min-width: 769px) {.notice_content {justify-content: space-between;} #main_content {margin-left: 5%; max-width: 445px;} .web-hosting-90-off-image-wrapper {position: absolute; display: flex; justify-content: center; width: 100%; }} .web-hosting-90-off-image {max-width: 90%;} .content-wrapper {min-height: 454px; display: flex; flex-direction: column; justify-content: center; z-index: 5} .notice_content {display: flex; align-items: center;} * {-webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale;} .upgrade_button_red_sale{box-shadow: 0 2px 4px 0 rgba(255, 69, 70, 0.2); max-width: 350px; border: 0; border-radius: 3px; background-color: #ff4546 !important; padding: 15px 55px !important; font-family: 'Roboto', sans-serif; font-size: 16px; font-weight: 600; color: #ffffff;} .upgrade_button_red_sale:hover{color: #ffffff !important; background: #d10303 !important;}",style=document.createElement("style"),sheet=window.document.styleSheets[0];style.styleSheet?style.styleSheet.cssText=css:style.appendChild(document.createTextNode(css)),document.getElementsByTagName("head")[0].appendChild(style),document.getElementsByTagName("head")[0].appendChild(googleFont);var button=document.getElementsByClassName("upgrade_button_red")[0],link=button.parentElement;link.setAttribute("href","https://www.hostinger.com/hosting-starter-offer?utm_source=000webhost&utm_medium=panel&utm_campaign=000-wp"),link.innerHTML='<button class="upgrade_button_red_sale">Claim deal</button>',(notification=notification[0]).setAttribute("style","padding-bottom: 0; padding-top: 5px; background-color: #040713; background-size: cover; background-repeat: no-repeat; color: #ffffff; border-left-color: #040713;"),notification.className="notice notice-error is-dismissible";var mainContentHolder=document.getElementById("main_content");mainContentHolder.setAttribute("style","padding: 0;"),hostingerLogo[0].remove();var h1Tag=notification.getElementsByTagName("H1")[0];h1Tag.className="000-h1",h1Tag.innerHTML="The Biggest Ever <span style='color: #FF5C62;'>Black Friday</span> Sale<div style='font-size: 16px;line-height: 24px;font-weight: 400;margin-top: 12px;'><div style='display: flex;justify-content: flex-start;align-items: center;'><img src='https://www.000webhost.com/static/default.000webhost.com/images/generic/green-check-mark.png' alt='' style='margin-right: 10px; width: 20px;'>Managed WordPress Hosting</div><div style='display: flex;justify-content: flex-start;align-items: center;'><img src='https://www.000webhost.com/static/default.000webhost.com/images/generic/green-check-mark.png' alt='' style='margin-right: 10px; width: 20px;'>WordPress Acceleration</div><div style='display: flex;justify-content: flex-start;align-items: center;'><img src='https://www.000webhost.com/static/default.000webhost.com/images/generic/green-check-mark.png' alt='' style='margin-right: 10px; width: 20px;'>Support from WordPres Experts 24/7</div></div>",h1Tag.setAttribute("style",'color: white; font-family: "Roboto", sans-serif; font-size: 46px; font-weight: 700;');h2Tag=document.createElement("H2");h2Tag.innerHTML="<span style='font-size: 20px'>$</span>2.49<span style='font-size: 20px'>/mo</span>",h2Tag.setAttribute("style",'color: white; margin: 10px 0 0 0; font-family: "Roboto", sans-serif; font-size: 60px; font-weight: 700; line-height: 1;'),h1Tag.parentNode.insertBefore(h2Tag,h1Tag.nextSibling);var paragraph=notification.getElementsByTagName("p")[0];paragraph.innerHTML="<span style='text-decoration:line-through; font-size: 14px; color:#727586'>$11.99.mo</span><br>+ 2 Months Free",paragraph.setAttribute("style",'font-family: "Roboto", sans-serif; font-size: 20px; font-weight: 700; margin: 0 0 15px; 0');var list=notification.getElementsByTagName("UL")[0];list.remove();var org_html=mainContent.innerHTML,new_html='<div class="content-wrapper">'+mainContent.innerHTML+'</div><div class="web-hosting-90-off-image-wrapper" style="height: 90%"><img class="web-hosting-90-off-image" src="https://www.000webhost.com/static/default.000webhost.com/images/sales/bf2023/hero.png"></div>';mainContent.innerHTML=new_html;var saleImage=mainContent.getElementsByClassName("web-hosting-90-off-image")[0]}else if(null!=wordpressAdminBody&¬ification.length>0&&null!=mainContent){var bulletPoints = mainContent.getElementsByTagName('li');var replacement=['Increased performance (up to 5x faster) - Thanks to Hostinger’s WordPress Acceleration and Caching solutions','WordPress AI tools - Creating a new website has never been easier','Weekly or daily backups - Your data will always be safe','Fast and dedicated 24/7 support - Ready to help you','Migration of your current WordPress sites to Hostinger is automatic and free!','Try Premium Web Hosting now - starting from $1.99/mo'];for (var i=0;i<bulletPoints.length;i++){bulletPoints[i].innerHTML = replacement[i];}}</script></body>

</html>