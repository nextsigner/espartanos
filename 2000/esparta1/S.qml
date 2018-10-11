import QtQuick 2.0
import  "../../../"
import  "../../"
Item {
    id: r
    width: app.an
    height: app.al-app.fs*2
    property var  arr1: []
    property var  arr2: []
    property var  arr3: []
    property var  arr4: []
    property var  arr5: []
    property var  arr6: []
    property var  arr7: []
    property string  ss1
    property string  ss2
    property string  ss3
    property string  ss4
    property string  ss5
    property string  ss6
    property string  ss7

    //1
    Text{
        id:x1
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Curso de</b><br><b> Programaciòn Informàtica</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*2
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    //2
    Text{
        id:x2
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>Espartanos</b><br><b>2018</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*3
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    //3
    Text{
        id:x3
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        text:'<b>7 Mòdulos</b>'
        anchors.centerIn: r
        font.pixelSize: app.fs*3
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }

    //Tit
    Text{
        id:xTit
        opacity: 0.0
        Behavior on opacity{NumberAnimation{duration:500}}
        //text:r.tit
        anchors.horizontalCenter: r.horizontalCenter
        y:app.fs
        font.pixelSize: app.fs
        color: app.c2
        horizontalAlignment: Text.AlignHCenter
    }


    //4
    GridView{
        id:x4
        anchors.centerIn: r
        width: r.width*0.8
        height: cellHeight*(lm1.count/3)+app.fs*3
        cellWidth: app.fs*10
        cellHeight: app.fs*3
        model:lm1
        delegate:del
        opacity: 0.0
        property int ss: 0
        property var asec: []
        property var arr: []
        property int ia: -1
        onArrChanged:{
            lm1.clear()
            for(var i=0; i<arr.length;i++){
                lm1.append(lm1.addT(arr[i]))
            }
        }
        Behavior on opacity{NumberAnimation{duration:500}}

        ListModel{
            id:lm1
            function addT(t){
                return{
                    txt:t
                }
            }
        }
        Component{
            id:del
            Rectangle{
                width: x4.cellWidth-app.fs*0.5
                height: dato.contentHeight+app.fs*0.5
                color:x4.ia===index?app.c2:app.c3
                border.width: 2
                border.color: app.c2
                Text{
                    id:dato
                    text:'<b>'+txt+'</b>'
                    anchors.centerIn: parent
                    font.pixelSize: app.fs*0.65
                    color: x4.ia===index?app.c3:app.c2
                    font.family: 'FontAwesome'
                    width: parent.width*0.98
                    wrapMode: Text.WordWrap
                    horizontalAlignment: Text.AlignHCenter
                }
                /*Timer{
                    running: true
                    repeat: true
                    interval: 1000
                    onTriggered: {
                        console.log('ttt: '+x4.asec[index])
                        console.log('ttt2: '+x4.asec[index+1])
                        if(app.p(x4.asec[index], x4.asec[index+1])){
                              x4.ia=index
                        }
                    }
                }*/
            }
        }
    }
    Timer{
        running: r.visible
        repeat: true
        interval: 250
        onTriggered: {
            controles.asec=[0,6,10,20,70,131,196, 243,296,347]
            x1.opacity=app.p(0, 6)?1.0:0.0
            x2.opacity=app.p(6, 10)?1.0:0.0
            x3.opacity=app.p(10, 20)?1.0:0.0
            xTit.opacity=app.p(20, 500)?1.0:0.0
            x4.opacity=app.p(20, 500)?1.0:0.0
            if(app.p(20, 70)){
                xTit.text=ss1
                x4.arr=r.arr1
                x4.cellHeight=app.fs*3
                x4.height=app.fs*7
                x4.asec=[30,31,32,35,36,37,38,39,40]
            }else if(app.p(70, 131)){
                xTit.text=ss2
                x4.arr=r.arr2
                x4.cellHeight=app.fs*3
                x4.height=app.fs*7
            }else if(app.p(131, 196)){
                xTit.text=ss3
                x4.arr=r.arr3
                x4.cellHeight=app.fs*2.25
            }else if(app.p(196, 243)){
                xTit.text=ss4
                x4.arr=r.arr4
                x4.cellHeight=app.fs*3
                x4.height=app.fs*7
            }else if(app.p(243, 296)){
                xTit.text=ss5
                x4.arr=r.arr5
                x4.cellHeight=app.fs*3
            }else if(app.p(296, 347)){
                xTit.text=ss6
                x4.arr=r.arr6
                x4.cellHeight=app.fs*3
                x4.height=app.fs*7
            }else if(app.p(347, 500)){
                xTit.text=ss7
                x4.arr=r.arr7
                x4.cellHeight=app.fs*3
                x4.height=app.fs*7
            }else{
                xTit.text=''
                x4.arr=[]
            }

             if(app.p(20, 70)){
                if(app.p(29, 33)){
                  x4.ia=0
                    return
                }
                if(app.p(33, 37)){
                  x4.ia=1
                    return
                }
                if(app.p(37, 43)){
                  x4.ia=2
                    return
                }
                if(app.p(43, 47)){
                  x4.ia=3
                    return
                }
                if(app.p(47, 51)){
                  x4.ia=4
                    return
                }
                if(app.p(51, 57)){
                  x4.ia=5
                    return
                }
                if(app.p(57, 60)){
                  x4.ia=6
                    return
                }
                if(app.p(60, 65)){
                  x4.ia=7
                    return
                }
                if(app.p(65, 70)){
                  x4.ia=8
                    return
                }
            }


           /* x3.opacity=app.p(0, 30)?1.0:0.0
            x3.font.pixelSize=app.fs

*/
        }
    }
    Component.onCompleted: {
        r.ss1='Mòdulo 1: Introducciòn al Curso'
        r.arr1=('Què es la Informàtica
Què es Ser Programador Informàtico
La Sociedad y las Nuevas Tecnologìas
Tipos de Dispositivos Electrònicos
Què es una Aplicaciòn Informàtica
Què es una Interfaz Gràfica
Què es el Desarrollo de Software
Componentes Principales del Hardware
Què es un Sistema Operativo').split('\n')

        r.ss2='Mòdulo 2: Herramientas y Recursos'
        r.arr2=('Herramientas de Desarrollo de Software
Tipos de Archivos
Què es un Lenguaje de Programaciòn
Algunos lenguajes de Programaciòn
Què es el Còdigo Fuente
Què es un Servidor
Què es un Cliente
Què es una Nube
Què es un Hosting
Qùe es el Open Source
Què es la Conectividad
Què es un Protocolo de Red
Que es una Transmisiòn Streaming').split('\n')

        r.ss3='Mòdulo 3: Conceptos Tècnicos de Programaciòn'
        r.arr3=('Conceptos Bàsicos de Lògica
Què es una variable
Què es una Palabra Reservada
Tipos de Datos
Què es un Algoritmo
Què es una funciòn
Què es un Objeto o Elemento
Què es un Mètodo
Què es un Evento
Què es un Proyecto
Què es la Escalabilidad
Què es un Lenguaje Interpretado
Què es la Compilaciòn
Tipos de Fases del Desarrollo
Còmo Distribuir el Software Desarrollado').split('\n')

        r.ss4='Mòdulo 4: Recursos Pre Programados'
        r.arr4=('Què es un Mòdulo
Què son la Librerìas
Què es un Lenguaje Declarativo
Què es un Lenguaje Imperativo
Què es la POO
Clases y Herencias
Mètodos y Funciones
Declaraciòn de Importaciòn
Elemento y Objeto de Clase
Declaraciòn de Elementos').split('\n')

        r.ss5='Mòdulo 5: Aprendiendo QML'
        r.arr5=('Introducciòn al Lenguaje QML
Ventajas de Programar con QML
Caracterìsticas de QML
Declarando un Elemento
Definiendo y Creando Propiedades
Detectar y Utilizar Eventos
Creando y Ejecutando Señales
Creando una Ventana de Aplicaciòn
Creando un Texto en la Ventana de la Aplicaciòn
Creando un Botòn en la Aplicaciòn').split('\n')

        r.ss6='Mòdulo 6:  Programando una Aplicaciòn'
        r.arr6=('Introducciòn al Lenguaje JavaScript
Creando un Funciòn JavaScript
Còmo Ejecutar una Funciòn
Què es el Proceso de Depuraciòn
Entràda y Salida Estandar
Què es y para que sirve JSON
Creando un Archivo JSON
Què es una Base de Datos
Tipos de Bases de Datos
Introducciòn a la Gestiòn de BD').split('\n')

        r.ss7='Modulo 7: Creando Aplicaciòn de Productos'
        r.arr7=('Creamos Lista de Productos y Precios
Insertamos un registro de un producto
Listamos los productos en pantalla
Modificamos un producto
Eliminamos un productos
Calculamos las cantidades
Calculamos los precios
Imprimimos un Tickets').split('\n')
    }
}


