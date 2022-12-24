import 'package:mobx/mobx.dart';
part 'adjustcontroller.g.dart';

class AdjustController = AdjustControllerBase with _$AdjustController;

abstract class AdjustControllerBase with Store {
  @observable
  double amplitude = 1;

  @observable
  double frequency = 1;

  @observable
  double velocity = 0;

  @action
  void setAmplitude(double newAmplitude) => amplitude = newAmplitude;

  @action
  void setFrequency(double newFrequency) => frequency = newFrequency;

  @action
  void setVelocity(double newVelocity) => velocity = newVelocity;
}