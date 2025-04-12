import 'package:flutter/material.dart';

final class AppTheme {
  const AppTheme();

  static const _seedColor = Color(0xFF800000);

  static final _lightNeutralColors = ColorScheme.fromSeed(
    seedColor: _seedColor,
    dynamicSchemeVariant: DynamicSchemeVariant.neutral,
  );
  static final _darkNeutralColors = ColorScheme.fromSeed(
    seedColor: _seedColor,
    dynamicSchemeVariant: DynamicSchemeVariant.neutral,
    brightness: Brightness.dark,
  );

  ThemeData light() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
        dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
      ).copyWith(
        inverseSurface: _lightNeutralColors.inverseSurface,
        onInverseSurface: _lightNeutralColors.onInverseSurface,
        onSurface: _lightNeutralColors.onSurface,
        onSurfaceVariant: _lightNeutralColors.onSurfaceVariant,
        outline: _lightNeutralColors.outline,
        outlineVariant: _lightNeutralColors.outlineVariant,
        scrim: _lightNeutralColors.scrim,
        shadow: _lightNeutralColors.shadow,
        surface: _lightNeutralColors.surface,
        surfaceBright: _lightNeutralColors.surfaceBright,
        surfaceDim: _lightNeutralColors.surfaceDim,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: _lightNeutralColors.surface,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _lightNeutralColors.surface,
      ),
    );
  }

  ThemeData dark() {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: _seedColor,
        dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
        brightness: Brightness.dark,
      ).copyWith(
        inverseSurface: _darkNeutralColors.inverseSurface,
        onInverseSurface: _darkNeutralColors.onInverseSurface,
        onSurface: _darkNeutralColors.onSurface,
        onSurfaceVariant: _darkNeutralColors.onSurfaceVariant,
        outline: _darkNeutralColors.outline,
        outlineVariant: _darkNeutralColors.outlineVariant,
        scrim: _darkNeutralColors.scrim,
        shadow: _darkNeutralColors.shadow,
        surface: _darkNeutralColors.surface,
        surfaceBright: _darkNeutralColors.surfaceBright,
        surfaceDim: _darkNeutralColors.surfaceDim,
      ),
      dialogTheme: DialogTheme(
        backgroundColor: _darkNeutralColors.surface,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: _darkNeutralColors.surface,
      ),
    );
  }
}
