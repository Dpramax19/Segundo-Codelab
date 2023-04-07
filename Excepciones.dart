typedef VoidFunction = void Function();

class ExceptionWithMessage {
  final String message;
  const ExceptionWithMessage(this.message);
}

abstract class Logger {
  void logException(Type t, [String? msg]);
  void doneLogging();
}

void tryFunction(VoidFunction untrustworthy, Logger logger) {
  try {
    untrustworthy();
  } on ExceptionWithMessage catch (e) {
    logger.logException(e.runtimeType, e.message);
  } on Exception {
    logger.logException(Exception);
  } finally {
    logger.doneLogging();
  }
}

class ExceptionOrigin implements Logger {

  @override
  void logException(Type t, [String? msg]) {
      print('Ha ocurrido un error, debe ser manejado');
  }
  
  @override
  void doneLogging(){
    print('\nSe ha manejado el error, registro realizado');
  }

}

void main(){
  var MyException = ExceptionOrigin();
  tryFunction(() {throw ExceptionWithMessage(''); }, MyException);
}
