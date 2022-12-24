// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'adjustcontroller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AdjustController on AdjustControllerBase, Store {
  late final _$amplitudeAtom =
      Atom(name: 'AdjustControllerBase.amplitude', context: context);

  @override
  double get amplitude {
    _$amplitudeAtom.reportRead();
    return super.amplitude;
  }

  @override
  set amplitude(double value) {
    _$amplitudeAtom.reportWrite(value, super.amplitude, () {
      super.amplitude = value;
    });
  }

  late final _$frequencyAtom =
      Atom(name: 'AdjustControllerBase.frequency', context: context);

  @override
  double get frequency {
    _$frequencyAtom.reportRead();
    return super.frequency;
  }

  @override
  set frequency(double value) {
    _$frequencyAtom.reportWrite(value, super.frequency, () {
      super.frequency = value;
    });
  }

  late final _$velocityAtom =
      Atom(name: 'AdjustControllerBase.velocity', context: context);

  @override
  double get velocity {
    _$velocityAtom.reportRead();
    return super.velocity;
  }

  @override
  set velocity(double value) {
    _$velocityAtom.reportWrite(value, super.velocity, () {
      super.velocity = value;
    });
  }

  late final _$AdjustControllerBaseActionController =
      ActionController(name: 'AdjustControllerBase', context: context);

  @override
  void setAmplitude(double newAmplitude) {
    final _$actionInfo = _$AdjustControllerBaseActionController.startAction(
        name: 'AdjustControllerBase.setAmplitude');
    try {
      return super.setAmplitude(newAmplitude);
    } finally {
      _$AdjustControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFrequency(double newFrequency) {
    final _$actionInfo = _$AdjustControllerBaseActionController.startAction(
        name: 'AdjustControllerBase.setFrequency');
    try {
      return super.setFrequency(newFrequency);
    } finally {
      _$AdjustControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setVelocity(double newVelocity) {
    final _$actionInfo = _$AdjustControllerBaseActionController.startAction(
        name: 'AdjustControllerBase.setVelocity');
    try {
      return super.setVelocity(newVelocity);
    } finally {
      _$AdjustControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
amplitude: ${amplitude},
frequency: ${frequency},
velocity: ${velocity}
    ''';
  }
}
