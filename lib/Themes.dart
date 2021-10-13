enum Themes {
  intersectionality,
  empathy,
  respect
}

extension ThemesExtension on Themes {
  String get name {
    switch (this) {
      case Themes.empathy:
        return 'Empathy';
      case Themes.intersectionality:
        return 'Intersectionality';
      case Themes.respect:
        return 'Respect';
    }
  }
}