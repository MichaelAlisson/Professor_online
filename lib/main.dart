import 'package:flutter/material.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/img/fundo.jpg'), //IMG DE FUNDO
                fit: BoxFit.cover)),
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                      'assets/img/prof_online.png'), //PROFESSOR ONLINE
                ),
              ],
            ),

            // CPF Text Field
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'CPF',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20.0),

            // SENHA Text Field
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 20.0),

            // Login Button
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePage()));
                },
                child: Text('Entrar'),
              ),
            ),

            SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                TextButton(
                  onPressed: () {
                    // PRIMEIRO ACESSO
                  },
                  child: Text(
                    'Primeiro Acesso',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // RECUPERAR SENHA
                  },
                  child: Text(
                    'Recuperar senha',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//TELA PRINCIPAL
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          iconTheme: IconThemeData(
            color: Colors.blue,
            size: 24,
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 11, 141, 129),
            title: const Text('Professor Online'),
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
            actions: <Widget>[
              IconButton(
                padding: const EdgeInsets.only(left: 16),
                icon: Icon(
                  Icons.refresh,
                  size: 32,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ],
          ),

          //BODY
          body: Container(
            child: Stack(
              //STACK PARA POSICIONAR OS ELEMENTOS UM ACIMA DO OUTRO
              children: <Widget>[
                Positioned(
                    top: 75,
                    child: Center(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        //TITULO E SUBTITULO
                        Container(
                          color: const Color(0xFF0B2DFDC),
                          width: MediaQuery.of(context).size.width,
                          child: FittedBox(
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'Professor Online SEDUC',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 5,
                                  ),
                                ),
                                Text(
                                  'O portal do professor da rede estadual',
                                  style: TextStyle(fontSize: 4),
                                ),
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 151, 136, 100),
                                  ),
                                  child: Text(
                                    'Bem vindo professor Leonardo Carvalho',
                                    style: TextStyle(fontSize: 4),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ))),
                Center(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(top: 250),
                            child: Icon(
                              Icons.inbox,
                              color: Color.fromRGBO(102, 102, 102, 100),
                              size: 150,
                            ),
                          ),
                          Text(
                            'Nenhum item encontrado!',
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                        ]),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  //SERVE PARA POSICIONAR O ELEMENTO DENTRO DO STACK
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/img/img_do_topo.jpg', //IMAGEM DO TOPO DA TELA
                    fit: BoxFit.cover, //OCUPA ESPAÇO TOTAL DO CONTAINER
                  ),
                ),
              ],
            ),
          ),

          //DRAWER
          drawer: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              padding:
                  EdgeInsets.zero, //REMOVER O PREENCHIMENTO AO REDOR DA LISTA
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: DrawerHeader(
                    margin: EdgeInsets.zero,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/img/fundo.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 50,
                        ),
                        Text(
                          'O portal do professor da rede estadual',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                //ICONES
                ListTile(
                  title: Text('Dados pessoais'), //DADOS PESSOAIS
                  leading: Icon(Icons.person_sharp, color: Color(0xFF537B74)),
                ),
                ListTile(
                    title: Text('Horários'), //RELÓGIO
                    leading: Icon(Icons.access_time_rounded,
                        color: Color(0xFF537B74))),
                ListTile(
                  title: Text('Calendário Letivo'), //CALENDÁRIO LETIVO
                  leading: Icon(Icons.calendar_month, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Minhas Turmas'), //MINHAS TURMAS
                  leading: Icon(Icons.group, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Frequência'), //FREQUÊNCIA
                  leading: Icon(Icons.check, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Avaliações e notas'), //AVALIAÇÕES E NOTAS
                  leading: Icon(Icons.bar_chart, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Plano de Estudo'), //PLANO DE ESTUDO
                  leading: Icon(Icons.edit, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Registro de aula'), //REGISTRO DE AULA
                  leading: Icon(Icons.folder, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Atividades'), //ATIVIDADES
                  leading: Icon(Icons.list, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Sair da conta'), //SAIR DA CONTA
                  leading: Icon(Icons.exit_to_app, color: Color(0xFF537B74)),
                ),

                //RODAPÉ
                Container(
                  child: Column(
                    children: <Widget>[
                      Divider(),
                      Text(
                        'Informações',
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Text('Desenvolvido por SEDUC'),
                          SizedBox(width: 50),
                          Icon(
                            Icons.facebook,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
