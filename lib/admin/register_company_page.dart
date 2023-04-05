import 'package:flutter/material.dart';

import 'package:vitrine_virtual/home/presentation/widgets/footer_widget.dart';
import 'package:vitrine_virtual/home/presentation/widgets/header_widget.dart';

class RegisterCompanyPage extends StatelessWidget {
  const RegisterCompanyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HeaderWidget(),
            const SizedBox(height: 15),
            SizedBox(
              width: 800,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'Dados Cadastrais',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Divider(),
                      const SizedBox(height: 15),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Razão Social',
                        ),
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Nome Fantasia',
                        ),
                      ),
                      // TODO: ver se averá tempo para por mascara
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'CNPJ',
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 9,
                            child: TextFormField(
                              strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                              decoration: const InputDecoration(
                                labelText: 'Rua',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: TextFormField(
                              strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                              decoration: const InputDecoration(
                                labelText: 'Número',
                              ),
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: TextFormField(
                              strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                              decoration: const InputDecoration(
                                labelText: 'Cidade',
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: TextFormField(
                              strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                              decoration: const InputDecoration(
                                labelText: 'CEP',
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                              decoration: const InputDecoration(
                                labelText: 'Bairro',
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                              decoration: const InputDecoration(
                                labelText: 'Telefone',
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                        ),
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Facebook',
                        ),
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'Instagram',
                        ),
                      ),
                      TextFormField(
                        strutStyle: const StrutStyle(height: 1.6, forceStrutHeight: true),
                        decoration: const InputDecoration(
                          labelText: 'WhatsApp',
                        ),
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'Atualizar',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  )),
                ),
              ),
            ),
            const FooterWidget(),
          ],
        ),
      ),
    );
  }
}