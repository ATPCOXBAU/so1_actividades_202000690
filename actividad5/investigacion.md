# Conceptos de Sistemas Operativos

## Tipos de Kernel y sus diferencias

### Monolítico
- **Descripción:** El kernel monolítico es un tipo de núcleo de sistema operativo que agrupa todas las funciones esenciales del sistema operativo (gestión de procesos, controladores de dispositivos, memoria, etc.) en un solo espacio de memoria.
- **Ventajas:** Alta eficiencia y rendimiento, ya que todas las operaciones del sistema se realizan en un mismo espacio de memoria.
- **Desventajas:** Cualquier fallo en una parte del kernel puede afectar todo el sistema, dificultando la depuración y el mantenimiento.

### Microkernel
- **Descripción:** Este tipo de kernel minimiza las funciones del núcleo y delega la mayoría de los servicios del sistema operativo a procesos en el espacio de usuario. El microkernel solo gestiona las funciones básicas como la comunicación entre procesos y la gestión de interrupciones.
- **Ventajas:** Mayor estabilidad y seguridad, ya que la mayoría de las operaciones se realizan en el espacio de usuario, reduciendo el riesgo de fallos críticos.
- **Desventajas:** Puede ser menos eficiente debido a la sobrecarga de comunicación entre el microkernel y los servicios en el espacio de usuario.

### Kernel Híbrido
- **Descripción:** Combina elementos de los kernels monolíticos y microkernels. Un kernel híbrido es mayormente monolítico pero tiene características de un microkernel, como la modularidad y la posibilidad de ejecutar servicios en el espacio de usuario.
- **Ventajas:** Intenta balancear rendimiento y modularidad, ofreciendo una mayor flexibilidad.
- **Desventajas:** Puede ser complejo en diseño y desarrollo, lo que lleva a desafíos en la implementación y mantenimiento.

### Exokernel
- **Descripción:** Este tipo de kernel busca ofrecer el máximo control a las aplicaciones de usuario. Exokernel se enfoca en la multiplexación segura de los recursos de hardware, dejando la gestión de los mismos en manos del software de aplicación.
- **Ventajas:** Altamente eficiente y flexible para aplicaciones específicas.
- **Desventajas:** Requiere un desarrollo complejo de aplicaciones, ya que deben gestionar directamente los recursos de hardware.

## User Mode vs Kernel Mode

### User Mode (Modo de Usuario)
- **Descripción:** Es el modo en el que se ejecutan las aplicaciones de usuario. En este modo, el código tiene acceso limitado al hardware y a las funciones críticas del sistema, lo que proporciona seguridad y estabilidad.
- **Características:** Las aplicaciones en modo de usuario no pueden interactuar directamente con el hardware ni acceder a la memoria reservada para el kernel, lo que evita que una aplicación dañina comprometa todo el sistema.

### Kernel Mode (Modo de Kernel)
- **Descripción:** Es el modo en el que se ejecuta el kernel y los componentes clave del sistema operativo. En este modo, el código tiene acceso total al hardware y a todas las áreas de memoria.
- **Características:** El código en modo de kernel puede ejecutar cualquier instrucción de la CPU y acceder a cualquier recurso del sistema, lo que es esencial para la gestión de procesos, memoria, y controladores de dispositivos.

## Interruptions vs Traps

### Interruptions (Interrupciones)
- **Descripción:** Son señales enviadas por el hardware (como dispositivos de E/S) al procesador para indicar que un evento externo requiere atención inmediata. Las interrupciones son asíncronas y pueden ocurrir en cualquier momento.
- **Ejemplo:** Cuando se presiona una tecla en el teclado, se genera una interrupción que el procesador debe atender para procesar la entrada.

### Traps (Trampas)
- **Descripción:** Son señales generadas por el software o el hardware en respuesta a un evento específico, como una operación ilegal (ej., dividir por cero) o una llamada al sistema. Las trampas son síncronas y ocurren como resultado de la ejecución del programa.
- **Ejemplo:** Una operación de acceso a memoria inválida que causa una excepción y lleva a la ejecución de una rutina de manejo de errores.
