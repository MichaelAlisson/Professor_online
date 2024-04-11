import 'package:flutter/material.dart';

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
      backgroundColor: Colors.green,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100.0,
              child: Image.network(
                  'https://oauthprofessor.seduc.ce.gov.br/public/images/logo-vertical.png'),
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
            ElevatedButton(
              onPressed: () {
                // Implement login logic
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              child: Text('Entrar'),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
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
            size: 24.0,
          ),
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 11, 141, 129),
            title: const Text('Professor Online'),
            titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
            actions: <Widget>[
              IconButton(
                padding: const EdgeInsets.only(left: 16.0),
                icon: Icon(
                  Icons.refresh,
                  size: 32.0,
                  color: Colors.white,
                ),
                onPressed: null,
              ),
            ],
          ),

          //BODY
          body: Container(
            child: Center(
              child: Text('Nenhum item encontrado!'),
            ),
          ),

          //DRAWER
          drawer: Drawer(
            /*width: 20, DECIDE O TAMANHO DO MENU QUANDO ABERTO*/
            backgroundColor: Colors.white,
            child: ListView(
              padding:
                  EdgeInsets.zero, //REMOVER O PREENCHIMENTO AO REDOR DA LISTA
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.account_circle,
                          color: Colors.black,
                          size: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'O portal do professor da rede estadual',
                          style: TextStyle(fontSize: 14, color: Colors.black),
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
                  leading: Icon(Icons.exit_to_app, color: Color(0xFF537B74)),
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
                  leading: Icon(Icons.exit_to_app, color: Color(0xFF537B74)),
                ),
                ListTile(
                  title: Text('Sair da conta'), //SAIR DA CONTA
                  leading: Icon(Icons.exit_to_app, color: Color(0xFF537B74)),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Rodapé',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
