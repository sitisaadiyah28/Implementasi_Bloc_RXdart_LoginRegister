import 'dart:async';

class Validators{
  final validateEmail = StreamTransformer<String, String>.fromHandlers(handleData: (email, sink){
    if(email.contains('@')){
        sink.add(email);
  }else {
      sink.addError('Isilah email anda dengan benar');
  }
  });

  final validatePassword = StreamTransformer<String, String>. fromHandlers(handleData: (password, sink){
    if(password.length >= 5){
      sink.add(password);
  }else{
      sink.addError('minimal password 5 karakter');
    }
  });

  final validateTelp = StreamTransformer<String, String>. fromHandlers(handleData: (telp, sink){
    if(telp.length >= 12 && !telp.contains('a')){
      sink.add(telp);
    }else{
      sink.addError('minimal telp 12 karakter dan tidak boleh ada huruf');
    }
  });
}