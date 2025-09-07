// ignore_for_file: hash_and_equals

import 'dart:math';

import 'package:charts_common/common.dart' as common
    show ChartCanvas, Color, FillPatternType, SymbolRenderer;

// Clase OdaSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OdaSymbolRenderer extends common.SymbolRenderer {
  OdaSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;

    const double angle225Degrees = 45 * (pi / 180);

    final double x1_225 = center.x + radius * cos(angle225Degrees);
    final double y1_225 = center.y + radius * sin(angle225Degrees);

    final point2 = Point(center.x - radius, center.y);
    final point3 = Point(center.x, center.y - radius);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_225, y1_225)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point3],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OdaSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OdaSymbolRenderer && super == other;
}

// Clase OdpSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OdpSymbolRenderer extends common.SymbolRenderer {
  OdpSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;

    const double angle225Degrees = 315 * (pi / 180);

    final double x1_225 = center.x + radius * cos(angle225Degrees);
    final double y1_225 = center.y + radius * sin(angle225Degrees);

    final point2 = Point(center.x - radius, center.y);
    final point3 = Point(center.x, center.y + radius);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_225, y1_225)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point3],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OdpSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override

  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OdpSymbolRenderer && super == other;
}

// Clase OdtSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OdtSymbolRenderer extends common.SymbolRenderer {
  OdtSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;

    const double angleDegreesLine1 = 225 * (pi / 180);

    const double angleDegreesLine2 = 135 * (pi / 180);

    // Coordenadas del punto en la base del círculo para 225 grados
    final double x1Line1 = center.x + radius * cos(angleDegreesLine1);
    final double y1Line1 = center.y + radius * sin(angleDegreesLine1);

    final double x1Line2 = center.x + radius * cos(angleDegreesLine2);
    final double y1Line2 = center.y + radius * sin(angleDegreesLine2);

    final line3 = Point(center.x + radius, center.y);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, line3],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1Line1, y1Line1)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1Line2, y1Line2)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OdtSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OdtSymbolRenderer && super == other;
}

// Clase OiaSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OiaSymbolRenderer extends common.SymbolRenderer {
  OiaSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;

    const double angle225Degrees = 135 * (pi / 180);

    // Coordenadas del punto en la base del círculo para 225 grados
    final double x1_225 = center.x + radius * cos(angle225Degrees);
    final double y1_225 = center.y + radius * sin(angle225Degrees);

    final point2 = Point(center.x + radius, center.y);
    final point3 = Point(center.x, center.y - radius);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_225, y1_225)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point3],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OiaSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OiaSymbolRenderer && super == other;
}

// Clase OipSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OipSymbolRenderer extends common.SymbolRenderer {
  OipSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;

    const double angle225Degrees = 225 * (pi / 180);

    // Coordenadas del punto en la base del círculo para 225 grados
    final double x1_225 = center.x + radius * cos(angle225Degrees);
    final double y1_225 = center.y + radius * sin(angle225Degrees);

    final point2 = Point(center.x + radius, center.y);
    final point3 = Point(center.x, center.y + radius);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_225, y1_225)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, point3],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OipSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OipSymbolRenderer && super == other;
}

// Clase OitSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OitSymbolRenderer extends common.SymbolRenderer {
  OitSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;
    final xy2 = Point(center.x - radius, center.y);

    const double angle45Degrees = 315 * (pi / 180);
    const double angle315Degrees = 45 * (pi / 180);

    // Coordenadas del punto en la base del círculo para 45 grados
    final double x1_45 = center.x + radius * cos(angle45Degrees);
    final double y1_45 = center.y + radius * sin(angle45Degrees);

    // Coordenadas del punto en la base del círculo para 315 grados
    final double x1_315 = center.x + radius * cos(angle315Degrees);
    final double y1_315 = center.y + radius * sin(angle315Degrees);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, xy2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_45, y1_45)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_315, y1_315)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OitSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OitSymbolRenderer && super == other;
}

// Clase OsSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OsSymbolRenderer extends common.SymbolRenderer {
  OsSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;
    final xy2 = Point(center.x, center.y - radius);

    const double angle45Degrees =  135 * (pi / 180);
    const double angle315Degrees = 45 * (pi / 180);

    // Coordenadas del punto en la base del círculo para 45 grados
    final double x1_45 = center.x + radius * cos(angle45Degrees);
    final double y1_45 = center.y + radius * sin(angle45Degrees);

    // Coordenadas del punto en la base del círculo para 315 grados
    final double x1_315 = center.x + radius * cos(angle315Degrees);
    final double y1_315 = center.y + radius * sin(angle315Degrees);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, xy2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_45, y1_45)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_315, y1_315)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OsSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OsSymbolRenderer && super == other;
}

// Clase OpSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class OpSymbolRenderer extends common.SymbolRenderer {
  OpSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;
    final xy2 = Point(center.x, center.y + radius);

    const double angle45Degrees =  315 * (pi / 180);
    const double angle315Degrees = 225 * (pi / 180);

    // Coordenadas del punto en la base del círculo para 45 grados
    final double x1_45 = center.x + radius * cos(angle45Degrees);
    final double y1_45 = center.y + radius * sin(angle45Degrees);

    // Coordenadas del punto en la base del círculo para 315 grados
    final double x1_315 = center.x + radius * cos(angle315Degrees);
    final double y1_315 = center.y + radius * sin(angle315Degrees);

    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, xy2],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_45, y1_45)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
    // Dibuja una línea desde el centro hasta un punto calculado
    canvas.drawLine(
      points: [center, Point(x1_315, y1_315)],
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(OpSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is OpSymbolRenderer && super == other;
}

// Clase InSymbolRenderer - Renderiza un símbolo personalizado en el gráfico
class InSymbolRenderer extends common.SymbolRenderer {
  InSymbolRenderer({super.isSolid = true});

  @override
  void paint(
    common.ChartCanvas canvas,
    Rectangle<num> bounds, {
    List<int>? dashPattern,
    common.Color? fillColor,
    common.FillPatternType? fillPattern,
    common.Color? strokeColor,
    double? strokeWidthPx,
  }) {
    // Calcula el centro del área del símbolo
    final center = Point(
      bounds.left + (bounds.width / 2),
      bounds.top + (bounds.height / 2),
    );

    // Calcula el radio del símbolo
    final radius = min(bounds.width, bounds.height) / 2;
    // Dibuja el círculo base del símbolo
    canvas.drawPoint(
      point: center,
      radius: radius,
      fill: getSolidFillColor(fillColor),
      stroke: strokeColor,
      strokeWidthPx: getSolidStrokeWidthPx(strokeWidthPx),
    );
 
  }

  @override
  // Define si el renderizador debe repintarse
  bool shouldRepaint(InSymbolRenderer oldRenderer) {
    return this != oldRenderer;
  }

  @override
 
  // Sobrescribe el operador de igualdad para comparar instancias
  bool operator ==(Object other) =>
      other is InSymbolRenderer && super == other;
}
