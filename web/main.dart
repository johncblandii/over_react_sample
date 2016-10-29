import 'dart:html';
import 'package:react/react.dart' as react;
import 'package:react/react_dom.dart' as react_dom;
import 'package:react/react_client.dart' as react_client;
import 'package:over_react/over_react.dart';

@Factory()
UiFactory<FooProps> Foo;

@Props()
class FooProps extends UiProps {
  String color;
}

@Component()
class FooComponent extends UiComponent<FooProps> {
  @override
  render() {
    return Dom.div()('Hello, World!');
  }
}

main() {
  // Initialize React within our Dart app
  react_client.setClientConfiguration();

  // Mount / render your component.
  react_dom.render(Foo()(), querySelector('#react_mount_point'));
}
