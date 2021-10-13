enum Modes {
  written,
  oral,
  visual,
  electronic,
  nonverbal
}

extension ModesExtension on Modes {
  String get name {
    switch (this) {
      case Modes.written:
        return 'Written';
      case Modes.oral:
        return 'Oral';
      case Modes.visual:
        return 'Visual';
      case Modes.electronic:
        return 'Electronic';
      case Modes.nonverbal:
        return 'Nonverbal';
    }
  }
}