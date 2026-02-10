within Modelica.Blocks;
package Interfaces 
  "输入/输出块的连接器和抽象模型库"

  extends Modelica.Icons.InterfacesPackage;

  connector RealInput = input Real "实型输入接口" annotation(
    defaultComponentName = "u", 
    Icon(graphics = {
    Polygon(
    lineColor = {0, 0, 127}, 
    fillColor = {0, 0, 127}, 
    fillPattern = FillPattern.Solid, 
    points = {{-100.0, 100.0}, {100.0, 0.0}, {-100.0, -100.0}})}, 
    coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(
    coordinateSystem(preserveAspectRatio = true, 
    initialScale = 0.2, 
    extent = {{-100.0, -100.0}, {100.0, 100.0}}), 
    graphics = {
    Polygon(
    lineColor = {0, 0, 127}, 
    fillColor = {0, 0, 127}, 
    fillPattern = FillPattern.Solid, 
    points = {{0.0, 50.0}, {100.0, 0.0}, {0.0, -50.0}, {0.0, 50.0}}), 
    Text(
    textColor = {0, 0, 127}, 
    extent = {{-10.0, 60.0}, {-10.0, 85.0}}, 
    textString = "%name")}), 
    Documentation(info = "<html>
<p>
具有一个Real类型输入信号的接口。
</p>
</html>"    ));

  connector RealOutput = output Real "实型输出接口" annotation(
    defaultComponentName = "y", 
    Icon(
    coordinateSystem(preserveAspectRatio = true, 
    extent = {{-100.0, -100.0}, {100.0, 100.0}}), 
    graphics = {
    Polygon(
    lineColor = {0, 0, 127}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid, 
    points = {{-100.0, 100.0}, {100.0, 0.0}, {-100.0, -100.0}})}), 
    Diagram(
    coordinateSystem(preserveAspectRatio = true, 
    extent = {{-100.0, -100.0}, {100.0, 100.0}}), 
    graphics = {
    Polygon(
    lineColor = {0, 0, 127}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid, 
    points = {{-100.0, 50.0}, {0.0, 0.0}, {-100.0, -50.0}}), 
    Text(
    textColor = {0, 0, 127}, 
    extent = {{30.0, 60.0}, {30.0, 110.0}}, 
    textString = "%name")}), 
    Documentation(info = "<html>
<p>
具有一个Real类型输出信号的接口。
</p>
</html>"    ));

  connector BooleanInput = input Boolean "布尔型输入接口" 
    annotation(
    defaultComponentName = "u", 
    Icon(graphics = {Polygon(
    points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 0, 255}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = true, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
    points = {{0, 50}, {100, 0}, {0, -50}, {0, 50}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 0, 255}, 
    fillPattern = FillPattern.Solid), Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {255, 0, 255}, 
    textString = "%name")}), 
    Documentation(info = "<html>
<p>
具有一个Boolean类型输入信号的接口。
</p>
</html>"    ));

  connector BooleanOutput = output Boolean "布尔型输出接口" 
    annotation(
    defaultComponentName = "y", 
    Icon(coordinateSystem(
    preserveAspectRatio = true, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
    points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid)}), 
    Diagram(coordinateSystem(
    preserveAspectRatio = true, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
    points = {{-100, 50}, {0, 0}, {-100, -50}, {-100, 50}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid), Text(
    extent = {{30, 110}, {30, 60}}, 
    textColor = {255, 0, 255}, 
    textString = "%name")}), 
    Documentation(info = "<html>
<p>
具有一个Boolean类型输出信号的接口。
</p>
</html>"      ));

  connector IntegerInput = input Integer "整型输入接口" 
    annotation(
    defaultComponentName = "u", 
    Icon(graphics = {Polygon(
    points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, 
    lineColor = {255, 127, 0}, 
    fillColor = {255, 127, 0}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = true, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
    points = {{0, 50}, {100, 0}, {0, -50}, {0, 50}}, 
    lineColor = {255, 127, 0}, 
    fillColor = {255, 127, 0}, 
    fillPattern = FillPattern.Solid), Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {255, 127, 0}, 
    textString = "%name")}), 
    Documentation(info = "<html>
<p>
具有一个Integer类型输入信号的接口。
</p>
</html>"    ));

  connector IntegerOutput = output Integer "整型输出接口" 
    annotation(
    defaultComponentName = "y", 
    Icon(coordinateSystem(
    preserveAspectRatio = true, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
    points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, 
    lineColor = {255, 127, 0}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid)}), 
    Diagram(coordinateSystem(
    preserveAspectRatio = true, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
    points = {{-100, 50}, {0, 0}, {-100, -50}, {-100, 50}}, 
    lineColor = {255, 127, 0}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid), Text(
    extent = {{30, 110}, {30, 60}}, 
    textColor = {255, 127, 0}, 
    textString = "%name")}), 
    Documentation(info = "<html>
<p>
具有一个Integer类型输出信号的接口。
</p>
</html>"    ));

  connector RealVectorInput = input Real 
    "用于连接向量的实型输入接口" annotation(
    defaultComponentName = "u", 
    Icon(graphics = {Ellipse(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {0, 0, 127}, 
    fillColor = {0, 0, 127}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = false, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {0, 0, 127}, 
    textString = "%name"), Ellipse(
    extent = {{-50, 50}, {50, -50}}, 
    lineColor = {0, 0, 127}, 
    fillColor = {0, 0, 127}, 
    fillPattern = FillPattern.Solid)}), 
    Documentation(info = "<html>
<p>
实数输入连接器，用于向量连接，
例如<a href=\"modelica://Modelica.Blocks.Interfaces.PartialRealMISO\">PartialRealMISO</a>，
因此具有与实数输入接口不同的图标。
</p>
</html>"      ));

  connector IntegerVectorInput = input Integer 
    "用于连接向量的整型输入接口" annotation(
    defaultComponentName = "u", 
    Icon(graphics = {Ellipse(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {255, 128, 0}, 
    fillColor = {255, 128, 0}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = false, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {255, 128, 0}, 
    textString = "%name"), Ellipse(
    extent = {{-50, 50}, {50, -50}}, 
    lineColor = {255, 128, 0}, 
    fillColor = {255, 128, 0}, 
    fillPattern = FillPattern.Solid)}), 
    Documentation(info="<html><p>
整数输入连接器，用于向量连接，例如<a href=\"modelica://Modelica.Blocks.Interfaces.PartialIntegerMISO\" target=\"\">PartialIntegerMISO</a>&nbsp;，因此具有与整数输入接口不同的图标。
</p>
</html>"        ));

  connector BooleanVectorInput = input Boolean 
    "用于连接向量的布尔型输入接口" annotation(
    defaultComponentName = "u", 
    Icon(graphics = {Ellipse(
    extent = {{-100, -100}, {100, 100}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 0, 255}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = false, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = false, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {255, 0, 255}, 
    textString = "%name"), Ellipse(
    extent = {{-50, 50}, {50, -50}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 0, 255}, 
    fillPattern = FillPattern.Solid)}), 
    Documentation(info="<html><p>
布尔输入连接器，用于向量连接，例如<a href=\"modelica://Modelica.Blocks.Interfaces.PartialBooleanMISO\" target=\"\">PartialBooleanMISO</a>&nbsp;，因此具有与布尔输入接口不同的图标。
</p>
</html>"        ));

  connector RealVectorOutput = output Real 
    "用于连接向量的实型输出接口" annotation(
    defaultComponentName = "y", 
    Icon(graphics = {Ellipse(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {0, 0, 127}, 
    fillColor = {0, 0, 127}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = false, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {0, 0, 127}, 
    textString = "%name"), Ellipse(
    extent = {{-50, 50}, {50, -50}}, 
    lineColor = {0, 0, 127}, 
    fillColor = {0, 0, 127}, 
    fillPattern = FillPattern.Solid)}), 
    Documentation(info="<html>
<p>
实数输出连接器，用于向量连接，例如<a href=\"modelica://Modelica.Blocks.Routing.DeMultiplex\" target=\"\">DeMultiplex</a>&nbsp;，因此具有与实数输出接口不同的图标。
</p>
</html>"        ));
  connector IntegerVectorOutput = output Integer 
    "用于连接向量的整型输出接口" annotation(
    defaultComponentName = "y", 
    Icon(graphics = {Ellipse(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {255, 128, 0}, 
    fillColor = {255, 128, 0}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = false, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {255, 128, 0}, 
    textString = "%name"), Ellipse(
    extent = {{-50, 50}, {50, -50}}, 
    lineColor = {255, 128, 0}, 
    fillColor = {255, 128, 0}, 
    fillPattern = FillPattern.Solid)}), 
    Documentation(info = "<html>
<p>
整数输出连接器，用于向量连接，例如<a href=\"modelica://Modelica.Blocks.Routing.DeMultiplex\" target=\"\">DeMultiplex</a>&nbsp;，因此具有与整数输出接口不同的图标。
</p>
</html>"        ));
  connector BooleanVectorOutput = output Boolean 
    "用于连接向量的布尔型输出接口" annotation(
    defaultComponentName = "y", 
    Icon(graphics = {Ellipse(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 0, 255}, 
    fillPattern = FillPattern.Solid)}, coordinateSystem(
    extent = {{-100, -100}, {100, 100}}, 
    preserveAspectRatio = true, 
    initialScale = 0.2)), 
    Diagram(coordinateSystem(
    preserveAspectRatio = false, 
    initialScale = 0.2, 
    extent = {{-100, -100}, {100, 100}}), graphics = {Text(
    extent = {{-10, 85}, {-10, 60}}, 
    textColor = {255, 0, 255}, 
    textString = "%name"), Ellipse(
    extent = {{-50, 50}, {50, -50}}, 
    lineColor = {255, 0, 255}, 
    fillColor = {255, 0, 255}, 
    fillPattern = FillPattern.Solid)}), 
    Documentation(info = "<html>
<p>
布尔输出连接器，用于向量连接，例如<a href=\"modelica://Modelica.Blocks.Routing.DeMultiplex\" target=\"\">DeMultiplex</a>&nbsp;，因此具有与布尔输出接口不同的图标。
</p>
</html>"      ));

  partial block SO "单输出连续控制模块"
    extends Modelica.Blocks.Icons.Block;

    RealOutput y "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的实数输出信号模块。
</p>
</html>"  ));

  end SO;

  partial block MO "多输出连续控制模块"
    extends Modelica.Blocks.Icons.Block;

    parameter Integer nout(min = 1) = 1 "输出端数量";
    RealOutput y[nout] "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的实数输出信号矢量模块。
</p>
</html>"  ));

  end MO;

  partial block SISO "单输入单输出连续控制模块"
    extends Modelica.Blocks.Icons.Block;

    RealInput u "实数输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    RealOutput y "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的实数输入信号和一个连续的实数输出信号模块。
</p>
</html>"  ));
  end SISO;

  partial block SI2SO 
    "2个单输入/1个单输出连续控制模块"
    extends Modelica.Blocks.Icons.Block;

    RealInput u1 "实数输入信号接口1" annotation(Placement(
      transformation(extent = {{-140, 40}, {-100, 80}})));
    RealInput u2 "实数输入信号接口2" annotation(Placement(
      transformation(extent = {{-140, -80}, {-100, -40}})));
    RealOutput y "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Documentation(info = "<html>
<p>
有两个连续的实数输入信号u1和u2以及一个连续的实数输出信号y的模块。
</p>
</html>"  ));

  end SI2SO;

  partial block SIMO "单输入多输出连续控制模块"
    extends Modelica.Blocks.Icons.Block;
    parameter Integer nout = 1 "输出端数量";
    RealInput u "实数输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    RealOutput y[nout] "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Documentation(info = "<html>
<p>有一个连续的实数输入信号和一个连续的实数输出信号矢量模块。</p>

</html>"  ));
  end SIMO;

  partial block MISO "多输入单输出连续控制模块"

    extends Modelica.Blocks.Icons.Block;
    parameter Integer nin = 1 "输入端数量";
    RealInput u[nin] "实数输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    RealOutput y "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的实数输入信号矢量和一个连续的实数输出信号模块。
</p>
</html>"  ));
  end MISO;

  partial block PartialRealMISO 
    "具有实型向量输入和实型输出信号的基础模块"

    parameter Integer significantDigits(min = 1) = 3 
      "y的动态图表层中要显示的有效数字位数" 
      annotation(Dialog(tab = "高级"));
    parameter Integer nu(min = 0) = 0 "输入接口数量" 
      annotation(Dialog(connectorSizing = true), HideResult = true);
    Modelica.Blocks.Interfaces.RealVectorInput u[nu] 
      annotation(Placement(transformation(extent = {{-120, 70}, {-80, -70}})));
    Modelica.Blocks.Interfaces.RealOutput y 
      annotation(Placement(transformation(extent = {{100, -17}, {134, 17}})));
    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}, 
      initialScale = 0.06), graphics = {
      Text(
      extent = {{110, -50}, {300, -70}}, 
      textString = DynamicSelect(" ", String(y, significantDigits = 
      significantDigits))), 
      Text(
      extent = {{-250, 170}, {250, 110}}, 
      textString = "%name", 
      textColor = {0, 0, 255}), 
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      lineColor = {255, 137, 0}, 
      fillColor = {255, 255, 255}, 
      borderPattern = BorderPattern.Raised, 
      fillPattern = FillPattern.Solid)}));
  end PartialRealMISO;
  partial block MIMO "多输入多输出连续控制模块"

    extends Modelica.Blocks.Icons.Block;
    parameter Integer nin = 1 "输入数";
    parameter Integer nout = 1 "输出数";
    RealInput u[nin] "实数输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    RealOutput y[nout] "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的实数输入和一个连续的实数输出信号矢量模块。
输入和输出矢量的信号大小可能不同。
</p>
</html>"  ));
  end MIMO;

  partial block MIMOs 
    "具有相同数量输入和输出的多输入多输出连续控制模块"

    extends Modelica.Blocks.Icons.Block;
    parameter Integer n = 1 "输入数(=输出数)";
    RealInput u[n] "实数输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    RealOutput y[n] "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的实数输入和一个连续的实数输出信号矢量模块，输入和输出矢量的信号大小相同。
</p>
</html>"  ));
  end MIMOs;

  partial block MI2MO 
    "2个多路输入/1个多路输出连续控制模块"
    extends Modelica.Blocks.Icons.Block;

    parameter Integer n = 1 "输入和输出向量的维数";

    RealInput u1[n] "实数输入信号接口1" annotation(Placement(
      transformation(extent = {{-140, 40}, {-100, 80}})));
    RealInput u2[n] "实数输入信号接口2" annotation(Placement(
      transformation(extent = {{-140, -80}, {-100, -40}})));
    RealOutput y[n] "实数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info="<html><p>
有两个连续的实数输入向量u1和u2以及一个连续的实数输出向量y的模块，所有向量的元素个数相同。
</p>
</html>"    ));

  end MI2MO;
  partial block VI2VO 
    "2个向量输入/1个向量输出连续控制块"
    extends Modelica.Blocks.Icons.Block;
    parameter Integer n = 1 "向量的长度";
    Modelica.Blocks.Interfaces.RealInput u1[n] "实数向量输入信号1的连接器" annotation (Placement(
          transformation(extent={{-140,40},{-100,80}})));
    Modelica.Blocks.Interfaces.RealInput u2[n] "实数向量输入信号2的连接器" annotation (Placement(
          transformation(extent={{-140,-80},{-100,-40}})));
    Modelica.Blocks.Interfaces.RealOutput y[n] "实数向量输出信号的连接器" annotation (Placement(
          transformation(extent={{100,-10},{120,10}})));

    annotation (Documentation(info="<html><p>
该块具有两个连续的实数向量输入信号u1[n]和u2[n]，以及一个连续的实数向量输出信号y。
</p>
</html>"      ));

  end VI2VO;
  partial block SignalSource "连续信号源的基类"
    extends SO;
    parameter Real offset = 0 "输出信号y的偏移量";
    parameter SI.Time startTime = 0 "当time < startTime时，输出y = offset";
    annotation(Documentation(info = "<html>
<p>
Blocks.Sources 软件包中的实数信号源基本模块。
该组件有一个连续的实数输出信号y和两个参数(偏移量、开始时间)，用于移动生成的信号。
</p>
</html>"  ) );
  end SignalSource;

  partial block SVcontrol "单变量连续控制器"
    extends Modelica.Blocks.Icons.Block;

    RealInput u_s "设定值输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    RealInput u_m "测量输入信号接口" annotation(Placement(
      transformation(
      origin = {0, -120}, 
      extent = {{20, -20}, {-20, 20}}, 
      rotation = 270)));
    RealOutput y "执行器输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有两个连续的实数输入信号和一个连续的实数输出信号的模块。
该模块可用作相应控制器的基类。
</p>
</html>"  ));
  end SVcontrol;

  partial block MVcontrol "多变量连续控制器"
    extends Modelica.Blocks.Icons.Block;

    parameter Integer nu_s = 1 "设定点输入数";
    parameter Integer nu_m = 1 "测量输入端数量";
    parameter Integer ny = 1 "执行器输出端数量";
    RealInput u_s[nu_s] "设定点输入信号接口" annotation(
      Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    RealInput u_m[nu_m] "测量输入信号接口" annotation(
      Placement(transformation(
      origin = {0, -120}, 
      extent = {{20, -20}, {-20, 20}}, 
      rotation = 270)));
    RealOutput y[ny] "执行机构输出信号接口" annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有两个连续的实数输入信号矢量和一个连续的实数输出信号矢量的模块。
该模块可用作相应控制器的基类。
</p>
</html>"  ));
  end MVcontrol;

  partial block DiscreteBlock "离散控制模块基类"
    extends Modelica.Blocks.Icons.DiscreteBlock;

    parameter SI.Time samplePeriod(min = 100 * Modelica.Constants.eps, start = 0.1) 
      "组件的采样周期";
    parameter SI.Time startTime = 0 "第一个采样时刻";
  protected
    output Boolean sampleTrigger "True，如果是采样时刻";
    output Boolean firstTrigger(start = false, fixed = true) 
      "上升沿信号首次采样时刻";
  equation
    sampleTrigger = sample(startTime, samplePeriod);
    when sampleTrigger then
      firstTrigger = time <= startTime + samplePeriod / 2;
    end when;
    annotation(Documentation(info="<html><p>
库 Blocks.Discrete 离散模块的基本定义。 输出只在事件发生时才会改变，但在 Modelica 中并不是正式的离散变量。 输入将被采样，因此可以是连续变量。
</p>
<p>
<span style=\"color: rgb(51, 51, 51);\">重要提示：如果连接多个离散块，通常应确保所有块的采样周期（samplePeriod）和起始时间（startTime）完全相同，因为否则一个块的输出将被转换为连续信号并进行采样，这可能导致最大为一个采样周期的变量延迟，从而产生意外的结果。</span>
</p>
<p>
Modelica 3.3 引入了同步运算符，避免了手动将 samplePeriod 传播到每个模块的需要。
</p>
</html>"));
  end DiscreteBlock;

  partial block DiscreteSISO 
    "单输入单输出离散控制模块"

    extends DiscreteBlock;

    Modelica.Blocks.Interfaces.RealInput u "实数输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y "实数输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个输入信号和一个输出信号的模块，根据定义的<strong>samplePeriod</strong>参数进行采样。
更多信息请参见基类<a href=\"modelica://Modelica.Blocks.Interfaces.DiscreteBlock\">DiscreteBlock</a>。
</p>
</html>"  ));
  end DiscreteSISO;

  partial block DiscreteMIMO 
    "多输入多输出离散控制模块"

    extends DiscreteBlock;
    parameter Integer nin = 1 "输入数";
    parameter Integer nout = 1 "输出数";

    Modelica.Blocks.Interfaces.RealInput u[nin] "实数输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y[nout] "实际输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Documentation(info = "<html>
<p>
离散模块有一个输入和一个输出信号矢量，它们根据定义的<strong>samplePeriod</strong>参数进行采样。
更多信息请参见基类<a href=\"modelica://Modelica.Blocks.Interfaces.DiscreteBlock\">DiscreteBlock</a>。
</p>
</html>"));
  end DiscreteMIMO;

  partial block DiscreteMIMOs 
    "多输入多输出离散控制模块"
    parameter Integer n = 1 "输入数(=输出数)";
    extends DiscreteBlock;

    Modelica.Blocks.Interfaces.RealInput u[n] "实数输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Modelica.Blocks.Interfaces.RealOutput y[n] "实数输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Documentation(info = "<html>
<p>
有一个输入和一个输出信号矢量的模块，输入和输出矢量的信号大小相同。
这些信号根据定义的<strong>samplePeriod</strong>参数进行采样。
更多信息请参见基类<a href=\"modelica://Modelica.Blocks.Interfaces.DiscreteBlock\">DiscreteBlock</a>。
</p>
</html>"  ));

  end DiscreteMIMOs;

  partial block SVdiscrete "离散单变量控制器"
    extends DiscreteBlock;

    Discrete.Sampler sampler_s(final samplePeriod = samplePeriod, final startTime = 
      startTime) annotation(Placement(transformation(extent = {{-100, -10}, {-80, 
      10}})));
    Discrete.Sampler sampler_m(final samplePeriod = samplePeriod, final startTime = 
      startTime) annotation(Placement(transformation(
      origin = {0, -90}, 
      extent = {{-10, -10}, {10, 10}}, 
      rotation = 90)));
    Modelica.Blocks.Interfaces.RealInput u_s 
      "标量设定点输入信号" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    Modelica.Blocks.Interfaces.RealInput u_m 
      "标量测量输入信号" annotation(Placement(
      transformation(
      origin = {0, -120}, 
      extent = {{20, -20}, {-20, 20}}, 
      rotation = 270)));
    Modelica.Blocks.Interfaces.RealOutput y 
      "标量执行器输出信号" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
  equation
    connect(u_s, sampler_s.u) annotation(Line(points = {{-120, 0}, {-102, 0}}));
    connect(u_m, sampler_m.u) 
      annotation(Line(points = {{0, -120}, {0, -111}, {0, -102}}));
    annotation(Documentation(info = "<html>
<p>
有两个实数输入信号和一个实数输出信号的模块，根据定义的<strong>samplePeriod</strong> parameter参数进行采样。
该模块可用作相应控制器的基类。
更多信息，请参阅基类<a href=\"modelica://Modelica.Blocks.Interfaces.DiscreteBlock\">DiscreteBlock</a>。
</p>
</html>"  ));
  end SVdiscrete;

  partial block MVdiscrete "离散多变量控制器"
    extends DiscreteBlock;
    parameter Integer nu_s = 1 "设定点输入数";
    parameter Integer nu_m = 1 "测量输入端数量";
    parameter Integer ny = 1 "执行器输出端数量";
    Discrete.Sampler sampler_s[nu_s](each final samplePeriod = samplePeriod, 
      each final startTime = startTime) annotation(Placement(transformation(
      extent = {{-90, -10}, {-70, 10}})));
    Discrete.Sampler sampler_m[nu_m](each final samplePeriod = samplePeriod, 
      each final startTime = startTime) annotation(Placement(transformation(
      origin = {0, -80}, 
      extent = {{-10, -10}, {10, 10}}, 
      rotation = 90)));
    Modelica.Blocks.Interfaces.RealInput u_s[nu_s] 
      "设定点输入信号" annotation(Placement(transformation(
      extent = {{-140, -20}, {-100, 20}})));
    Modelica.Blocks.Interfaces.RealInput u_m[nu_m] 
      "测量输入信号" annotation(Placement(
      transformation(
      origin = {0, -120}, 
      extent = {{20, -20}, {-20, 20}}, 
      rotation = 270)));
    Modelica.Blocks.Interfaces.RealOutput y[ny] 
      "执行器输出信号" annotation(Placement(transformation(
      extent = {{100, -10}, {120, 10}})));
  equation
    connect(u_s, sampler_s.u) annotation(Line(points = {{-120, 0}, {-92, 0}}));
    connect(u_m, sampler_m.u) 
      annotation(Line(points = {{0, -120}, {0, -106}, {0, -92}}));
    annotation(Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, 
      -100}, {100, 100}}), graphics = {Text(
      extent = {{-100, -10}, {-80, -30}}, 
      textString = "u_s", 
      textColor = {0, 0, 255})}), Documentation(info = "<html>
<p>
有两个实数输入信号矢量和一个实数输出信号矢量的模块。
矢量信号根据定义的<strong>samplePeriod</strong>参数进行采样。
该模块可用作相应控制器的基类。
更多信息，请参阅基类<a href=\"modelica://Modelica.Blocks.Interfaces.DiscreteBlock\">DiscreteBlock</a>。
</p>
</html>"  ));
  end MVdiscrete;

  partial block BooleanSISO 
    "带有布尔类型信号的单输入单输出控制模块"

    extends Modelica.Blocks.Icons.BooleanBlock;

  public
    BooleanInput u "布尔输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    BooleanOutput y "布尔输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Documentation(info = "<html>
<p>
有一个连续布尔输入信号和一个连续布尔输出信号的模块。
</p>
</html>"  ));
  end BooleanSISO;

  partial block BooleanMIMOs 
    "具有相同数量的布尔类型输入和输出的多输入多输出连续控制模块"

    extends Modelica.Blocks.Icons.BooleanBlock;
    parameter Integer n = 1 "输入数(=输出数)";
    BooleanInput u[n] "布尔输入信号接口" annotation(
      Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    BooleanOutput y[n] "布尔输出信号接口" annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的布尔输入和一个连续的布尔输出信号矢量的模块，其中输入和输出矢量的信号大小相同。
</p>
</html>"  ));
  end BooleanMIMOs;

  partial block MI2BooleanMOs 
    "信号长度相同的2个多路输入/布尔多路输出模块"

    extends Modelica.Blocks.Icons.BooleanBlock;
    parameter Integer n = 1 "输入和输出向量的维数";
    RealInput u1[n] "布尔输入信号接口1" annotation(
      Placement(transformation(extent = {{-140, 40}, {-100, 80}})));
    RealInput u2[n] "布尔输入信号接口2" annotation(
      Placement(transformation(extent = {{-140, -80}, {-100, -40}})));
    BooleanOutput y[n] "布尔输出信号接口" annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>有两个布尔输入向量 u1 和 u2 以及一个布尔输出向量 y的模块。
所有向量的元素个数相同。</p>
</html>"  ));
  end MI2BooleanMOs;

  partial block SI2BooleanSO "2个单输入/布尔单输出模块"

    extends Modelica.Blocks.Icons.BooleanBlock;
    BooleanInput u1 "布尔输入信号接口1" annotation(
      Placement(transformation(extent = {{-140, 40}, {-100, 80}})));
    BooleanInput u2 "布尔输入信号接口2" annotation(
      Placement(transformation(extent = {{-140, -80}, {-100, -40}})));
    BooleanOutput y "布尔输出信号接口" annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有两个布尔输入信号 u1 和 u2 以及一个布尔输出信号 y的模块。
</p>
</html>"  ));

  end SI2BooleanSO;

  partial block BooleanSignalSource "布尔信号源的基类"

    extends Modelica.Blocks.Icons.BooleanBlock;
    BooleanOutput y "布尔输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}), graphics = {
      Line(points = {{-80, 68}, {-80, -80}}, color = {192, 192, 192}), 
      Polygon(
      points = {{-80, 90}, {-88, 68}, {-72, 68}, {-80, 90}}, 
      lineColor = {192, 192, 192}, 
      fillColor = {192, 192, 192}, 
      fillPattern = FillPattern.Solid), 
      Line(points = {{-90, -70}, {68, -70}}, color = {192, 192, 192}), 
      Polygon(
      points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, 
      lineColor = {192, 192, 192}, 
      fillColor = {192, 192, 192}, 
      fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>
属于 Blocks.Sources 软件包的布尔信号源基本模块。该组件有一个连续的布尔输出信号 y。
</p>
</html>"));

  end BooleanSignalSource;

  partial block IntegerSO "单整数输出连续控制模块"
    extends Modelica.Blocks.Icons.IntegerBlock;

    IntegerOutput y "整数输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的整数输出信号的模块。
</p>
</html>"  ));
  end IntegerSO;

  partial block IntegerMO "多整数输出连续控制模块"
    extends Modelica.Blocks.Icons.IntegerBlock;

    parameter Integer nout(min = 1) = 1 "输出数";
    IntegerOutput y[nout] "整数输出信号接口" annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的整数输出信号矢量的模块。
</p>
</html>"  ));
  end IntegerMO;
  partial block IntegerSignalSource 
    "连续整数信号源的基类"
    extends IntegerSO;
    parameter Integer offset = 0 "输出信号y的偏移量";
    parameter SI.Time startTime = 0 "当time<startTime时，输出y=offset";
    annotation(Documentation(info="<html><p>
Blocks.Sources 软件包中整数信号源的基本模块。 该组件有一个连续整数输出信号 y 和两个参数（offset、startTime），用于移动生成的信号。 
</p>
</html>"));
  end IntegerSignalSource;

  partial block IntegerSIBooleanSO 
    "整数输入布尔输出连续控制模块"

    extends Modelica.Blocks.Icons.BooleanBlock;
    IntegerInput u "整数输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    BooleanOutput y "布尔输出信号接口" annotation(Placement(
      transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的整数输入和一个连续的布尔输出信号的模块。</p>
</html>"  ));
  end IntegerSIBooleanSO;

  partial block IntegerMIBooleanMOs 
    "具有相同数量的整数输入和布尔输出的多输入多输出连续控制模块"

    extends Modelica.Blocks.Icons.BooleanBlock;
    parameter Integer n = 1 "输入数(=输出数)";
    IntegerInput u[n] "整数输入信号接口" annotation(
      Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    BooleanOutput y[n] "C布尔输出信号接口" annotation(
      Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(Documentation(info = "<html>
<p>
有一个连续的整数输入和一个连续的布尔输出信号矢量，输入和输出矢量的信号大小相同的模块。
</p>
</html>"  ));
  end IntegerMIBooleanMOs;

  partial block PartialIntegerSISO 
    "带有整数输入和整数输出信号的部分模块"

    Modelica.Blocks.Interfaces.IntegerInput u "整数输入信号" 
      annotation(Placement(transformation(extent = {{-180, -40}, {-100, 40}})));
    Modelica.Blocks.Interfaces.IntegerOutput y "整数输出信号" 
      annotation(Placement(transformation(extent = {{100, -20}, {140, 20}})));
    annotation(Icon(coordinateSystem(
      preserveAspectRatio = false, 
      extent = {{-100, -100}, {100, 100}}, 
      initialScale = 0.06), graphics = {
      Text(
      extent = {{110, -50}, {250, -70}}, 
      textString = DynamicSelect(" ", String(
      y, 
      minimumLength = 1, 
      significantDigits = 0))), 
      Text(
      extent = {{-150, 150}, {150, 110}}, 
      textString = "%name", 
      textColor = {0, 0, 255}), 
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      fillColor = {255, 213, 170}, 
      fillPattern = FillPattern.Solid, 
      borderPattern = BorderPattern.Raised)}));
  end PartialIntegerSISO;
  partial block PartialIntegerMISO 
    "带有整数矢量输入和整数输出信号的基础模块"

    parameter Integer nu(min = 0) = 0 "输入接口数" 
      annotation(Dialog(connectorSizing = true), HideResult = true);
    Modelica.Blocks.Interfaces.IntegerVectorInput u[nu] 
      "整数输入信号向量" 
      annotation(Placement(transformation(extent = {{-120, 70}, {-80, -70}})));
    Modelica.Blocks.Interfaces.IntegerOutput y "整数输出信号" 
      annotation(Placement(transformation(extent = {{100, -15}, {130, 15}})));
    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}, 
      initialScale = 0.06), graphics = {
      Text(
      extent = {{110, -50}, {250, -70}}, 
      textString = DynamicSelect(" ", String(
      y, 
      minimumLength = 1, 
      significantDigits = 0))), 
      Text(
      extent = {{-150, 150}, {150, 110}}, 
      textString = "%name", 
      textColor = {0, 0, 255}), 
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      lineColor = {255, 137, 0}, 
      fillColor = {255, 213, 170}, 
      borderPattern = BorderPattern.Raised, 
      fillPattern = FillPattern.Solid)}));
  end PartialIntegerMISO;

  partial block partialBooleanSISO 
    "带1个输入和1个输出布尔信号的基础模块"
    extends Modelica.Blocks.Icons.PartialBooleanBlock;
    Blocks.Interfaces.BooleanInput u "布尔输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, 
      {100, 100}}), graphics = {Ellipse(
      extent = {{-71, 7}, {-85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), Ellipse(
      extent = {{71, 7}, {85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>
有一个连续的布尔输入信号和一个连续的布尔输出信号的模块，
并带有三维图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanSISO;

  partial block partialBooleanSI2SO 
    "带有2个输入和1个输出布尔信号的基础模块"
    extends Modelica.Blocks.Icons.PartialBooleanBlock;
    Blocks.Interfaces.BooleanInput u1 "第一个布尔输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Blocks.Interfaces.BooleanInput u2 
      "第二个布尔输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -100}, {-100, -60}})));
    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}), graphics = {
      Ellipse(
      extent = {{-71, 7}, {-85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u1 then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u1 then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), 
      Ellipse(
      extent = {{-71, -74}, {-85, -88}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u2 then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u2 then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), 
      Ellipse(
      extent = {{71, 7}, {85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>
有两个连续的布尔输入信号和一个连续的布尔输出信号的模块，
并带有三维图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanSI2SO;

  partial block partialBooleanSI3SO 
    "带有3个输入和1个输出布尔信号的基础模块"
    extends Modelica.Blocks.Icons.PartialBooleanBlock;
    Blocks.Interfaces.BooleanInput u1 "第一个布尔输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, 60}, {-100, 100}})));
    Blocks.Interfaces.BooleanInput u2 
      "第二个布尔输入信号接口" annotation(Placement(
      transformation(extent = {{-140, -20}, {-100, 20}})));
    Blocks.Interfaces.BooleanInput u3 "第三个布尔输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -100}, {-100, -60}})));
    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}), graphics = {
      Ellipse(
      extent = {{-71, 74}, {-85, 88}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u1 then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u1 then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), 
      Ellipse(
      extent = {{-71, 7}, {-85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u2 then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u2 then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), 
      Ellipse(
      extent = {{-71, -74}, {-85, -88}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u3 then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u3 then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), 
      Ellipse(
      extent = {{71, 7}, {85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}), Documentation(info = "<html><p>
有三个连续的布尔输入信号和一个连续的布尔输出信号的模块，
并带有三维图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanSI3SO;

  partial block partialBooleanSI "带1个输入布尔信号的基础模块"
    extends Modelica.Blocks.Icons.PartialBooleanBlock;

    Blocks.Interfaces.BooleanInput u "布尔输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));

    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, 
      {100, 100}}), graphics = {Ellipse(
      extent = {{-71, 7}, {-85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if u then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if u then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>
有一个带有 3D 图标的连续布尔输入信号的模块（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanSI;

  partial block partialBooleanSO "带1个布尔信号输出的基础模块"

    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    extends Modelica.Blocks.Icons.PartialBooleanBlock;

    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, 
      {100, 100}}), graphics = {Ellipse(
      extent = {{71, 7}, {85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}), Documentation(info = "<html>
<p>
有一个带 3D 图标的连续布尔输出信号的模块（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanSO;

  partial block partialBooleanSource 
    "基础源模块(有1个输出布尔信号和1个适当的默认图标)"
    extends Modelica.Blocks.Icons.PartialBooleanBlock;

    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(
      Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 
      100}}), graphics = {
      Polygon(
      points = {{-80, 88}, {-88, 66}, {-72, 66}, {-80, 88}}, 
      lineColor = {255, 0, 255}, 
      fillColor = {255, 0, 255}, 
      fillPattern = FillPattern.Solid), 
      Line(points = {{-80, 66}, {-80, -82}}, color = {255, 0, 255}), 
      Line(points = {{-90, -70}, {72, -70}}, color = {255, 0, 255}), 
      Polygon(
      points = {{90, -70}, {68, -62}, {68, -78}, {90, -70}}, 
      lineColor = {255, 0, 255}, 
      fillColor = {255, 0, 255}, 
      fillPattern = FillPattern.Solid), 
      Ellipse(
      extent = {{71, 7}, {85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}), 
      Documentation(info = "<html>
<p>
Blocks.Sources 软件包中布尔信号源的基本模块。
该组件有一个连续的布尔输出信号 y 和一个 3D 图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanSource;

  partial block partialBooleanThresholdComparison 
    "基础模块用于将实数输入u与阈值进行比较，并将结果作为1个布尔输出信号"

    parameter Real threshold = 0 "与阈值的比较";

    Blocks.Interfaces.RealInput u "实数输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, 
      {100, 100}}), graphics = {
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      fillColor = {210, 210, 210}, 
      fillPattern = FillPattern.Solid, 
      borderPattern = BorderPattern.Raised), 
      Text(
      extent = {{-150, -140}, {150, -110}}, 
      textString = "%threshold"), 
      Ellipse(
      extent = {{71, 7}, {85, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), Text(
      extent = {{-150, 150}, {150, 110}}, 
      textString = "%name", 
      textColor = {0, 0, 255})}), Documentation(info = "<html>
<p>
有一个连续的实数输入信号和一个连续的布尔输出信号的模块，以及一个三维图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanThresholdComparison;

  partial block partialBooleanComparison 
    "具有2个实数输入和1个布尔输出信号(两个实数输入的比较结果)的基础模块"

    Blocks.Interfaces.RealInput u1 "第一个实数输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    Blocks.Interfaces.RealInput u2 "第二个实数输入信号接口" 
      annotation(Placement(transformation(extent = {{-140, -100}, {-100, -60}})));
    Blocks.Interfaces.BooleanOutput y "布尔输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));

    annotation(Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, 
      {100, 100}}), graphics = {
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      fillColor = {210, 210, 210}, 
      fillPattern = FillPattern.Solid, 
      borderPattern = BorderPattern.Raised), 
      Ellipse(
      extent = {{73, 7}, {87, -7}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid), 
      Ellipse(extent = {{32, 10}, {52, -10}}, lineColor = {0, 0, 127}), 
      Line(points = {{-100, -80}, {42, -80}, {42, 0}}, color = {0, 0, 127}), 
      Text(
      extent = {{-150, 150}, {150, 110}}, 
      textString = "%name", 
      textColor = {0, 0, 255})}), 
      Documentation(info="<html><p>
有两个连续的实数输入信号和一个连续的布尔输出信号的模块，输出信号是两个输入信号的比较结果。 模块有一个 3D 图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"    ));

  end partialBooleanComparison;
  partial block partialIntegerBooleanComparison 
    "具有2个实数输入和1个布尔输出信号(2个实数输入的比较结果)的基础模块"

    IntegerInput u1 "第一个实数输入信号接口" 
      annotation (Placement(transformation(extent={{-140,-20},{-100,20}})));
    IntegerInput u2 "第二个实数输入信号接口" 
      annotation (Placement(transformation(extent={{-140,-100},{-100,-60}})));
    BooleanOutput y "布尔输出信号接口" 
      annotation (Placement(transformation(extent={{100,-10},{120,10}})));

    annotation (Icon(coordinateSystem(extent={{-100,-100},{100,100}}, 
  preserveAspectRatio=true, 
  grid={2,2}),graphics = {Rectangle(origin={0,0}, 
  fillColor={210,210,210}, 
  fillPattern=FillPattern.Solid, 
  borderPattern=BorderPattern.Raised, 
  extent={{-100,100},{100,-100}}), Ellipse(origin={80,0}, 
  lineColor=DynamicSelect({235,235,235}, if y then {0,255,0} else {235,235,235}), 
  fillColor=DynamicSelect({235,235,235}, if y then {0,255,0} else {235,235,235}), 
  fillPattern=FillPattern.Solid, 
  extent={{-7,7},{7,-7}}), Ellipse(origin={42,0}, 
  lineColor={255,127,0}, 
  extent={{-10,10},{10,-10}}), Line(origin={-29,-40}, 
  points={{-71,-40},{71,-40},{71,40}}, 
  color={255,127,0}), Text(origin={0,130}, 
  lineColor={0,0,255}, 
  extent={{-150,20},{150,-20}}, 
  textString="%name", 
  textColor={0,0,255})}), 
        Documentation(info="<html><p>
有两个连续的整型输入信号和一个连续的布尔输出信号的模块，输出信号是两个输入信号的比较结果。 模块有一个 3D 图标（如在 Blocks.Logical 库中使用）。
</p>
</html>"      ));

  end partialIntegerBooleanComparison;

  partial block PartialBooleanSISO_small 
    "具有布尔输入和布尔输出信号以及小型块图标的基础模块"

    Modelica.Blocks.Interfaces.BooleanInput u "布尔输入信号" 
      annotation(Placement(transformation(extent = {{-180, -40}, {-100, 40}})));
    Modelica.Blocks.Interfaces.BooleanOutput y "布尔输出信号" 
      annotation(Placement(transformation(extent = {{100, -20}, {140, 20}})));
    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}, 
      initialScale = 0.04), graphics = {
      Text(
      extent = {{-300, 200}, {300, 120}}, 
      textString = "%name", 
      textColor = {0, 0, 255}), 
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      fillColor = {215, 215, 215}, 
      fillPattern = FillPattern.Solid, 
      borderPattern = BorderPattern.Raised), 
      Ellipse(
      extent = {{60, 10}, {80, -10}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}));
  end PartialBooleanSISO_small;

  partial block PartialBooleanMISO 
    "带有布尔矢量输入和布尔输出信号的基础模块"

    parameter Integer nu(min = 0) = 0 "输入接口数" 
      annotation(Dialog(connectorSizing = true), HideResult = true);
    Modelica.Blocks.Interfaces.BooleanVectorInput u[nu] 
      "布尔输入信号向量" 
      annotation(Placement(transformation(extent = {{-120, 70}, {-80, -70}})));
    Modelica.Blocks.Interfaces.BooleanOutput y "布尔输出信号" 
      annotation(Placement(transformation(extent = {{100, -15}, {130, 15}})));
    annotation(Icon(coordinateSystem(
      preserveAspectRatio = true, 
      extent = {{-100, -100}, {100, 100}}, 
      initialScale = 0.06), graphics = {
      Text(
      extent = {{-250, 170}, {250, 110}}, 
      textString = "%name", 
      textColor = {0, 0, 255}), 
      Rectangle(
      extent = {{-100, 100}, {100, -100}}, 
      fillColor = {215, 215, 215}, 
      fillPattern = FillPattern.Solid, 
      borderPattern = BorderPattern.Raised), 
      Ellipse(
      extent = {{60, 10}, {80, -10}}, 
      lineColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillColor = DynamicSelect({235, 235, 235}, if y then {0, 255, 0} else {235, 235, 235}), 
      fillPattern = FillPattern.Solid)}));
  end PartialBooleanMISO;

  partial block PartialConversionBlock 
    "定义转换模块接口的基础模块"

    RealInput u "待转换实数输入信号的接口" annotation(
      Placement(transformation(extent = {{-140, -20}, {-100, 20}})));
    RealOutput y 
      "包含另一设备输入信号u的实数输出信号接口" 
      annotation(Placement(transformation(extent = {{100, -10}, {120, 10}})));
    annotation(
      Icon(
      coordinateSystem(preserveAspectRatio = true, 
      extent = {{-100.0, -100.0}, {100.0, 100.0}}), 
      graphics = {
      Rectangle(
      lineColor = {0, 0, 127}, 
      fillColor = {255, 255, 255}, 
      fillPattern = FillPattern.Solid, 
      extent = {{-100.0, -100.0}, {100.0, 100.0}}), 
      Line(
      points = {{-90.0, 0.0}, {30.0, 0.0}}, 
      color = {191, 0, 0}), 
      Polygon(
      lineColor = {191, 0, 0}, 
      fillColor = {191, 0, 0}, 
      fillPattern = FillPattern.Solid, 
      points = {{90.0, 0.0}, {30.0, 20.0}, {30.0, -20.0}, {90.0, 0.0}}), 
      Text(
      textColor = {0, 0, 255}, 
      extent = {{-150, 110}, {150, 150}}, 
      textString = "%name")}), Documentation(info = "<html>
<p>
该模块定义了转换程序块的接口，可将一个单位转换成另一个单位。
</p>

</html>"  ));

  end PartialConversionBlock;

  partial block PartialNoise "基础噪音发生器"
    import generator = Modelica.Math.Random.Generators.Xorshift128plus;
    import Modelica.Math.Random.Utilities.automaticLocalSeed;
    extends Modelica.Blocks.Interfaces.SO;

    // 主对话框菜单
    parameter SI.Period samplePeriod(start = 0.01) 
      "原始随机数的取样周期" 
      annotation(Dialog(enable = enableNoise));

    // 高级对话菜单：噪音生成
    parameter Boolean enableNoise = globalSeed.enableNoise 
      "=true：y=noise，否则y=y_off" 
      annotation(choices(checkBox = true), Dialog(tab = "高级", group = "噪音产生"));
    parameter Real y_off = 0.0 
      "设置y=y_off如果enableNoise=false(或time<startTime，见下文)" 
      annotation(Dialog(tab = "高级", group = "噪音产生"));

    // 高级对话菜单：初始化
    parameter Boolean useGlobalSeed = true 
      "=true：使用全局变量表，否则忽略" 
      annotation(choices(checkBox = true), Dialog(tab = "高级", group = "初始化", enable = enableNoise));
    parameter Boolean useAutomaticLocalSeed = true 
      "=true：使用自动本地表，否则使用固定本地表" 
      annotation(choices(checkBox = true), Dialog(tab = "高级", group = "初始化", enable = enableNoise));
    parameter Integer fixedLocalSeed = 1 "本地表(任意整数)" 
      annotation(Dialog(tab = "高级", group = "初始化", enable = enableNoise and not useAutomaticLocalSeed));
    parameter SI.Time startTime = 0.0 
      "原始随机数采样的开始时间" 
      annotation(Dialog(tab = "高级", group = "初始化", enable = enableNoise));
    final parameter Integer localSeed(fixed = false) "实际的localSeed";
  protected
    outer Modelica.Blocks.Noise.GlobalSeed globalSeed 
      "通过内部/外部定义全局表";
    parameter Integer actualGlobalSeed = if useGlobalSeed then globalSeed.seed else 0 
      "全局表，实际使用的是";
    parameter Boolean generateNoise = enableNoise and globalSeed.enableNoise 
      "=true，如果产生噪音，否则不产生噪音";

    // 声明状态变量和随机数变量
    Integer state[generator.nState] "随机数发生器的内部状态";
    discrete Real r "根据所需的分布随机数";
    discrete Real r_raw "(0,1]范围内的均匀随机数";

  initial equation
    localSeed = if useAutomaticLocalSeed then automaticLocalSeed(getInstanceName()) else fixedLocalSeed;
    pre(state) = generator.initialState(localSeed, actualGlobalSeed);
    r_raw = generator.random(pre(state));

  equation
    // 在抽样时间随机抽取号码
    when generateNoise and sample(startTime, samplePeriod) then
      (r_raw,state) = generator.random(pre(state));
    end when;

    // 根据要求产生噪音
    y = if not generateNoise or time < startTime then y_off else r;

    annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, 
      {100, 100}}), graphics = {
      Polygon(
      points = {{-76, 90}, {-84, 68}, {-68, 68}, {-76, 90}}, 
      lineColor = {192, 192, 192}, 
      fillColor = {192, 192, 192}, 
      fillPattern = FillPattern.Solid), 
      Line(points = {{-76, 68}, {-76, -80}}, color = {192, 192, 192}), 
      Line(points = {{-86, -14}, {72, -14}}, 
      color = {192, 192, 192}), 
      Polygon(
      points = {{94, -14}, {72, -6}, {72, -22}, {94, -14}}, 
      lineColor = {192, 192, 192}, 
      fillColor = {192, 192, 192}, 
      fillPattern = FillPattern.Solid), 
      Line(visible = enableNoise, 
      points = {{-76, -19}, {-62, -19}, {-62, -3}, {-54, -3}, {-54, -51}, {-46, -51}, {-46, 
      -29}, {-38, -29}, {-38, 55}, {-30, 55}, {-30, 23}, {-30, 23}, {-30, -37}, {-20, 
      -37}, {-20, -19}, {-10, -19}, {-10, -47}, {0, -47}, {0, 35}, {6, 35}, {6, 49}, {12, 
      49}, {12, -7}, {22, -7}, {22, 5}, {28, 5}, {28, -25}, {38, -25}, {38, 47}, {48, 47}, 
      {48, 13}, {56, 13}, {56, -53}, {66, -53}}), 
      Text(
      extent = {{-150, -110}, {150, -150}}, 
      textString = "%samplePeriod s"), 
      Line(visible = not enableNoise, 
      points = {{-76, 48}, {72, 48}}), 
      Text(visible = not enableNoise, 
      extent = {{-75, 42}, {95, 2}}, 
      textString = "%y_off"), 
      Text(visible = enableNoise and not useAutomaticLocalSeed, 
      extent = {{-92, 20}, {98, -22}}, 
      textColor = {238, 46, 47}, 
      textString = "%fixedLocalSeed")}), 
      Documentation(info = "<html>
<p>
噪声发生器的抽象基类，定义了噪声模块的共同特征。
</p>
</html>"      , revisions = "<html>
<table border=\"1\" cellspacing=\"0\" cellpadding=\"2\">
<tr><th>Date</th> <th align=\"left\">Description</th></tr>

<tr><td> June 22, 2015 </td>
<td>

<table border=\"0\">
<tr><td>
   <img src=\"modelica://Modelica/Resources/Images/Logos/dlr_logo.png\" alt=\"DLR logo\">
</td><td valign=\"bottom\">
   Initial version implemented by
   A. Kl&ouml;ckner, F. v.d. Linden, D. Zimmer, M. Otter.<br>
   <a href=\"http://www.dlr.de/rmc/sr/en\">DLR Institute of System Dynamics and Control</a>
</td></tr></table>
</td></tr>

</table>
</html>"      ));
  end PartialNoise;

  package Adaptors "适配器包(特别适用于FMU)"
    extends Modelica.Icons.InterfacesPackage;

    partial model FlowToPotentialAdaptor "信号适配器，用于一个具有流量、流量的一阶导数和流量的二阶导数作为输入，以及电势、电势的一阶导数和电势的二阶导数作为输出的连接器（特别适用于FMU）"
      parameter Boolean use_pder = true "使用电势的一阶导数的输出" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      parameter Boolean use_pder2 = true "仅在使用一阶导数的情况下，使用电势的二阶导数输出" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      parameter Boolean use_fder = true "使用输入值计算流量的一阶导数" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      parameter Boolean use_fder2 = true "仅在使用一阶导数的情况下，使用输入值计算流量的二阶导数" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      Modelica.Blocks.Interfaces.RealOutput p "电势的输出" 
        annotation(Placement(transformation(extent = {{20, 70}, {40, 90}})));
      Modelica.Blocks.Interfaces.RealOutput pder if use_pder 
        "可选输出der1(potential)" 
        annotation(Placement(transformation(extent = {{20, 40}, {40, 60}})));
      Modelica.Blocks.Interfaces.RealOutput pder2 if (use_pder and use_pder2) 
        "可选输出der2(potential)" 
        annotation(Placement(transformation(extent = {{20, 10}, {40, 30}})));
      Modelica.Blocks.Interfaces.RealInput f "流量输入" 
        annotation(Placement(transformation(extent = {{40, -90}, {20, -70}})));
      Modelica.Blocks.Interfaces.RealInput fder if use_fder 
        "可选输入der(flow)" 
        annotation(Placement(transformation(extent = {{40, -60}, {20, -40}})));
      Modelica.Blocks.Interfaces.RealInput fder2 if (use_fder and use_fder2) 
        "可选输入der2(flow)" 
        annotation(Placement(transformation(extent = {{40, -30}, {20, -10}})));
    protected
      parameter String Name_p = "p" "电势变量的名称";
      parameter String Name_pder = "der(p)" "电势变量的一阶导数名称";
      parameter String Name_pder2 = "der2(p)" "电势变量的二阶导数名称";
      parameter String Name_f = "f" "流量变量名称";
      parameter String Name_fder = "der(f)" "流量一阶导数变量的名称";
      parameter String Name_fder2 = "der2(f)" "流量二阶导数变量的名称";
      Real y "输出信号" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealOutput y1 "输出可选一阶导数" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealOutput y2 "输出可选二阶导数" annotation(HideResult = true);
      Real u "输入信号" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealInput u1 "输入可选一阶导数" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealInput u2 "输入可选二阶导数" annotation(HideResult = true);
    equation
      y = p;
      y1 = if use_pder then der(y) else 0;
      y2 = if (use_pder and use_pder2) then der(y1) else 0;
      connect(y1, pder);
      connect(y2, pder2);
      if use_fder then
        connect(fder, u1);
      else
        u1 = 0;
      end if;
      if (use_fder and use_fder2) then
        connect(fder2, u2);
      else
        u2 = 0;
      end if;
      if (use_fder and use_fder2) then
        u = Functions.state2({f, u1, u2}, time);
      elseif (use_fder and not use_fder2) then
        u = Functions.state1({f, u1}, time);
      else
        u = f;
      end if;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false), graphics = {
        Text(
        extent = {{-150, 150}, {150, 110}}, 
        textColor = {0, 0, 255}, 
        textString = "%name"), 
        Rectangle(
        extent = {{-20, 100}, {20, -100}}, 
        lineColor = {0, 0, 127}, 
        radius = 10), 
        Text(
        extent = {{-18, 90}, {18, 70}}, 
        textString = "%Name_p"), 
        Text(
        extent = {{-18, 60}, {18, 40}}, 
        textString = "%Name_pder", 
        visible = use_pder), 
        Text(
        extent = {{-18, 30}, {18, 10}}, 
        textString = "%Name_pder2", 
        visible = (use_pder and use_pder2)), 
        Text(
        extent = {{-18, -70}, {18, -90}}, 
        textString = "%Name_f"), 
        Text(
        extent = {{-18, -40}, {18, -60}}, 
        textString = "%Name_fder", 
        visible = use_fder), 
        Text(
        extent = {{-18, -10}, {18, -30}}, 
        textString = "%Name_fder2", 
        visible = (use_fder and use_fder2))}), 
        Diagram(coordinateSystem(preserveAspectRatio = false)), 
        Documentation(info="<html><p>
<span style=\"color: rgb(51, 51, 51);\">物理连接器与连接器信号的信号表示之间的适配器。该组件用于为物理模型提供纯信号接口，并将该模型以输入/输出块的形式导出，特别是作为FMU。</span>（<a href=\"https://fmi-standard.org\" target=\"\">Functional Mock-up Unit</a>&nbsp; &nbsp;）。
</p>
<p>
<span style=\"color: rgb(51, 51, 51);\">该适配器具有流量、可选的流量一阶导数和可选的流量二阶导数作为输入信号，以及电势、可选的电势一阶导数和可选的电势二阶导数作为输出信号。</span>
</p>
<p>
<span style=\"color: rgb(51, 51, 51);\">注意，输入信号必须彼此一致（fder = der(f)，fder2 = der(fder)）。</span>
</p>
</html>"      ));
    end FlowToPotentialAdaptor;

    partial model PotentialToFlowAdaptor "信号适配器，用于一个具有电势、电势的一阶导数和电势的二阶导数作为输入，以及流量、流量的一阶导数和流量的二阶导数作为输出的连接器（特别适用于FMU）。"
      parameter Boolean use_pder = true "使用输入值计算电势的一阶导数" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      parameter Boolean use_pder2 = true "仅在使用一阶导数的情况下，使用输入值计算电势的二阶导数" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      parameter Boolean use_fder = true "使用输出值计算流量的一阶导数" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      parameter Boolean use_fder2 = true "仅在使用一阶导数的情况下，使用输出值计算流量的二阶导数" 
        annotation(Evaluate = true, HideResult = true, choices(checkBox = true));
      Modelica.Blocks.Interfaces.RealInput p "电势的输入" 
        annotation(Placement(transformation(extent = {{-40, 70}, {-20, 90}})));
      Modelica.Blocks.Interfaces.RealInput pder if use_pder 
        "可选输入der1(potential)" 
        annotation(Placement(transformation(extent = {{-40, 40}, {-20, 60}})));
      Modelica.Blocks.Interfaces.RealInput pder2 if (use_pder and use_pder2) 
        "可选输入der2(potential)" 
        annotation(Placement(transformation(extent = {{-40, 10}, {-20, 30}})));
      Modelica.Blocks.Interfaces.RealOutput f "流量输出" 
        annotation(Placement(transformation(extent = {{-20, -90}, {-40, -70}})));
      Modelica.Blocks.Interfaces.RealOutput fder if use_fder 
        "可选输出der(flow)" 
        annotation(Placement(transformation(extent = {{-20, -60}, {-40, -40}})));
      Modelica.Blocks.Interfaces.RealOutput fder2 if (use_fder and use_fder2) 
        "可选输出der2(flow)" 
        annotation(Placement(transformation(extent = {{-20, -30}, {-40, -10}})));
    protected
      parameter String Name_p = "p" "电势变量的名称";
      parameter String Name_pder = "der(p)" "电势变量的一阶导数名称";
      parameter String Name_pder2 = "der2(p)" "电势变量的二阶导数名称";
      parameter String Name_f = "f" "流量变量名称";
      parameter String Name_fder = "der(f)" "流量一阶导数变量的名称";
      parameter String Name_fder2 = "der2(f)" "流量二阶导数变量的名称";
      Real y "输出信号" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealOutput y1 "输出可选一阶导数" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealOutput y2 "输出可选二阶导数" annotation(HideResult = true);
      Real u "输入信号" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealInput u1 "输入可选一阶导数" annotation(HideResult = true);
      Modelica.Blocks.Interfaces.RealInput u2 "输入可选二阶导数" annotation(HideResult = true);
    equation
      y = -f;
      y1 = if use_fder then -der(y) else 0;
      y2 = if (use_fder and use_fder2) then -der(y1) else 0;
      connect(y1, fder);
      connect(y2, fder2);
      if use_pder then
        connect(pder, u1);
      else
        u1 = 0;
      end if;
      if (use_pder and use_pder2) then
        connect(pder2, u2);
      else
        u2 = 0;
      end if;
      if (use_pder and use_pder2) then
        u = Functions.state2({p, u1, u2}, time);
      elseif (use_pder and not use_pder2) then
        u = Functions.state1({p, u1}, time);
      else
        u = p;
      end if;
      annotation(Icon(coordinateSystem(preserveAspectRatio = false), graphics = {
        Text(
        extent = {{-150, 150}, {150, 110}}, 
        textColor = {0, 0, 255}, 
        textString = "%name"), 
        Rectangle(
        extent = {{-20, 100}, {20, -100}}, 
        lineColor = {0, 0, 127}, 
        radius = 10), 
        Text(
        extent = {{-18, 90}, {18, 70}}, 
        textString = "%Name_p"), 
        Text(
        extent = {{-18, 60}, {18, 40}}, 
        textString = "%Name_pder", 
        visible = use_pder), 
        Text(
        extent = {{-18, 30}, {18, 10}}, 
        textString = "%Name_pder2", 
        visible = (use_pder and use_pder2)), 
        Text(
        extent = {{-18, -70}, {18, -90}}, 
        textString = "%Name_f"), 
        Text(
        extent = {{-18, -40}, {18, -60}}, 
        textString = "%Name_fder", 
        visible = use_fder), 
        Text(
        extent = {{-18, -10}, {18, -30}}, 
        textString = "%Name_fder2", 
        visible = (use_fder and use_fder2))}), 
        Diagram(coordinateSystem(preserveAspectRatio = false)), 
        Documentation(info = "<html><p>
<span style=\"color: rgb(51, 51, 51);\">物理连接器与连接器信号的信号表示之间的适配器。该组件用于为物理模型提供纯信号接口，并将该模型以输入/输出块的形式导出，特别是作为FMU</span>（<a href=\"https://fmi-standard.org\" target=\"\">Functional Mock-up Unit</a>&nbsp; ）。
</p>
<p>
<span style=\"color: rgb(51, 51, 51);\">该适配器具有电势、电势的一阶导数和电势的二阶导数作为输入信号，以及流量、流量的一阶导数和流量的二阶导数作为输出信号。</span>
</p>
<p>
<span style=\"color: rgb(51, 51, 51);\">注意，输入信号必须彼此一致（pder = der(p)，pder2 = der(pder)）。</span>
</p>
</html>"    ));
    end PotentialToFlowAdaptor;

    package Functions "适配器的功能"
      extends Modelica.Icons.FunctionsPackage;

      function state1 "返回状态(带一次导数)"
        extends Modelica.Icons.Function;
        input Real u[2] "状态和其导数的必要值";
        input Real dummy 
          "只需有一个输入信号，该信号应进行微分，以避免在Modelica工具中可能出现的问题(如果未使用)";
        output Real s;
      algorithm
        s := u[1];
        annotation(derivative(noDerivative = u) = state1der1, 
          InlineAfterIndexReduction = true);
      end state1;

      function state1der1 "返回第一阶导数(state1的der)"
        extends Modelica.Icons.Function;
        input Real u[2] "状态和其导数所需值";
        input Real dummy 
          "只需有一个输入信号，应该对其进行微分，以避免在Modelica工具中可能出现的问题(未使用)";
        input Real dummy_der;
        output Real sder1;
      algorithm
        sder1 := u[2];
        annotation(InlineAfterIndexReduction = true);
      end state1der1;

      function state2 "返回状态(带有两个导数)"
        extends Modelica.Icons.Function;
        input Real u[3] "状态和其导数所需值";
        input Real dummy 
          "只需有一个输入信号，应该对其进行微分，以避免在Modelica工具中可能出现的问题(未使用)";
        output Real s;
      algorithm
        s := u[1];
        annotation(derivative(noDerivative = u) = state2der1, 
          InlineAfterIndexReduction = true);
      end state2;

      function state2der1 "返回第一阶导数(state2的der)"
        extends Modelica.Icons.Function;
        input Real u[3] "状态和其导数所需值";
        input Real dummy 
          "只需有一个输入信号，应该对其进行微分，以避免在Modelica工具中可能出现的问题(未使用)";
        input Real dummy_der;
        output Real sder1;
      algorithm
        sder1 := u[2];
        annotation(derivative(noDerivative = u, order = 2) = state2der2, 
          InlineAfterIndexReduction = true);
      end state2der1;

      function state2der2 "返回第二阶导数(state2der1的der)"
        extends Modelica.Icons.Function;
        input Real u[3] "状态和其导数所需值";
        input Real dummy 
          "只需有一个输入信号，应该对其进行微分，以避免在Modelica工具中可能出现的问题(未使用)";
        input Real dummy_der;
        input Real dummy_der2;
        output Real sder2;
      algorithm
        sder2 := u[3];
        annotation(InlineAfterIndexReduction = true);
      end state2der2;
      annotation();
    end Functions;

    annotation(Documentation(info = "<html>
<p>
该软件包包含部分适配器，用于在物理连接器和连接器信号的信号表示之间的各种域中实现适配器。
该组件用于为物理模型提供纯信号接口，并以输入/输出块的形式输出该模型，
特别是作为 FMU（<a href=\"https://fmi-standard.org\">Functional Mock-up Unit</a>）。
</p>
</html>"      ));
  end Adaptors;

annotation (Documentation(info="<html><p>
该软件包包含用于<strong>连续</strong>输入/输出模块的接口定义，支持实数、整数和布尔信号。此外，它还包含连续和离散模块的部分模型。
</p>
</html>",revisions="<html>
<ul>
<li><em>2019年6月28日</em>
       作者: Thomas Beutlich:<br>
       移除了过时的块。</li>
<li><em>2002年10月21日</em>
       作者: <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>
       和 Christian Schweiger:<br>
       添加了多个新接口。</li>
<li><em>1999年10月24日</em>
       作者: <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       RealInputSignal 改名为 RealInput。RealOutputSignal 改名为
       output RealOutput。GraphBlock 改名为 BlockIcon。SISOreal 改名为
       SISO。SOreal 改名为 SO。I2SOreal 改名为 M2SO。
       SignalGenerator 改名为 SignalSource。引入了以下
       新模型：MIMO, MIMOs, SVcontrol, MVcontrol, DiscreteBlockIcon,
       DiscreteBlock, DiscreteSISO, DiscreteMIMO, DiscreteMIMOs,
       BooleanBlockIcon, BooleanSISO, BooleanSignalSource, MI2BooleanMOs。</li>
<li><em>1999年6月30日</em>
       作者: <a href=\"http://www.robotic.dlr.de/Martin.Otter/\">Martin Otter</a>:<br>
       实现了第一个版本，基于现有的Dymola库
       由 Dieter Moormann 和 Hilding Elmqvist 提供。</li>
</ul>
</html>"));
  package TYAdapters "同元自主适配器(用于规避模型求导失败问题)"
    extends Modelica.Icons.InterfacesPackage;
    model InputAdapter "输入信号适配器：用于规避模型因输入信号求导失败问题(标量版本)"
      parameter Types.InputHandling inputHandling = "近似导数" "输入信号适配器类别" 
        annotation(Evaluate = true, HideResult = true);
      final parameter Integer ty_type = if inputHandling == "外部导数" then 1 else if inputHandling == "近似导数" then 2 else 3 
        annotation(Evaluate = true, HideResult = true);

      parameter Types.ProvideSignals psType = "提供输入和一阶导数" "外部导数类别" 
        annotation(Dialog(group = "外部导数设置", enable = ty_type == 1), Evaluate = true, HideResult = true);

      parameter Types.ApproxDerivatives adType = "一阶近似导数" "近似导数类别" 
        annotation(Dialog(group = "近似导数设置", enable = ty_type == 2), Evaluate = true, HideResult = true);
      parameter Real timeConstant = 0.001 "时间常量" 
        annotation(Dialog(group = "近似导数设置", enable = ty_type == 2), Evaluate = true, HideResult = true);

      final parameter Boolean use_fder = (ty_type == 1 and psType == "提供输入和一阶导数") 
        annotation(Evaluate = true, HideResult = true);
      final parameter Boolean use_fder2 = (ty_type == 1 and psType == "提供输入和前两阶导数") 
        annotation(Evaluate = true, HideResult = true);

      final parameter Boolean use_ad2 = (ty_type == 2 and adType == "前二阶近似导数") 
        annotation(Evaluate = true, HideResult = true);

      Modelica.Blocks.Interfaces.RealInput u 
        annotation(Placement(transformation(origin = {-222, 0}, 
        extent = {{-20, -20}, {20, 20}})));
      Modelica.Blocks.Interfaces.RealOutput y 
        annotation(Placement(transformation(origin = {212, 0}, 
        extent = {{-10, -10}, {10, 10}})));

      Modelica.Blocks.Interfaces.RealInput u_der if (use_fder or use_fder2) 
        annotation(Placement(transformation(origin = {-90, -120}, 
        extent = {{-20, -20}, {20, 20}}, 
        rotation = 90)));
      Modelica.Blocks.Interfaces.RealInput u_der2 if use_fder2 
        annotation(Placement(transformation(origin = {82, -118}, 
        extent = {{-20, -20}, {20, 20}}, 
        rotation = 90)));

      Modelica.Blocks.Continuous.Derivative derivative(T = timeConstant) if ty_type == 2 
        annotation(Placement(transformation(origin = {-134, 0}, 
        extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Continuous.Derivative derivative2(T = timeConstant) if use_ad2 
        annotation(Placement(transformation(origin = {-38, 0}, 
        extent = {{-10, -10}, {10, 10}})));

      annotation(Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}}, 
        preserveAspectRatio = true, 
        grid = {2, 2}), graphics = {Rectangle(origin = {0, 0}, 
        lineColor = {0, 0, 255}, 
        fillColor = {255, 255, 255}, 
        fillPattern = FillPattern.Solid, 
        extent = {{-200, 100}, {200, -100}}), Text(visible = ty_type == 1 and use_fder, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "一阶外部导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 1 and use_fder2, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "前二阶外部导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 2 and not use_ad2, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "一阶近似导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 2 and use_ad2, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "前二阶近似导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 3, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "零导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(origin = {0, 57}, 
        lineColor = {0, 0, 255}, 
        extent = {{-198, 40}, {198, -40}}, 
        textString = "输入信号适配器", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(origin = {0, 144}, 
        lineColor = {0, 0, 255}, 
        extent = {{-228, 40}, {228, -40}}, 
        textString = "%name", 
        textColor = {0, 0, 255})}), 
        Documentation(revisions = "<html><li><p>2025-11-07 陈智鹏 完成初版 </li></p></html>", 
        info = "<html>
    <p>输入信号适配器 InputAdapter 提供三类可供用户选择的适配器用于规避模型翻译求导失败问题。</p>
    <p>其类别由 InputHandling 类型的变量 inputHandling 控制:</p>
    <p>
    1. <strong>外部导数</strong>：导数信号由用户自行提供，若输入信号和导数信号不匹配，那么最终仿真结果可能不正确。
    </p>
    <p>
    2. <strong>近似导数</strong>（默认选项，也是推荐选项）：导数由 Modelica.Blocks.Continuous.Derivative 通过对输入信号做近似导数提供，此时用户需提供差分参数 T (默认值为 0.001)
    </p>
    <p>
    3. <strong>零导数（分段常量）</strong>：导数值恒为 0，仅适合分段常量情况，若输入信号是一个连续信号采样得到，那么最终仿真结果可能不正确。
    </p>

    <p>
    当 inputHandling 值为 <strong>外部导数</strong> (ProvideSignals)，则外部导数设置中有如下三种选项供用户选择：
    </p>
    <p>
    1.1. <strong>仅提供输入</strong>：和未使用此模块效果一致。
    </p>
    <p>
    1.2. <strong>提供输入和一阶导数</strong>（默认选项）：则需要额外提供一阶导数。
    </p>
    <p>
    1.3. <strong>提供输入和前两阶导数</strong>：需要额外提供一阶导数和二阶导数。
    </p>

    <p>
    当 inputHandling 值为 <strong>近似导数</strong> (ApproxDerivatives)，则近似导数设置中有如下两种选项供用户选择：
    </p>
    <p>
    2.1. <strong>一阶近似导数</strong>（默认选项）：导数是由 Modelica.Blocks.Continuous.Derivative 近似提供，此时用户需提供差分参数 T (默认值为 0.001)。
    </p>
    <p>
    2.1. <strong>前二阶近似导数</strong>：则等价于两个一阶近似导数串联。
    </p>
    <p>
    并且用户需设置时间常量 (timeConstant) 的数值（默认值 0.001）用于适应不同时间特征的模型。
    </p>

    <p>
    当 inputHandling 值为 <strong>零导数(分段常量)</strong>，则无需进行额外设置
    </p>
    </html>"                ));
    equation
      if ty_type == 1 then
        if use_fder2 then
          y = Functions.fstate2(u, u_der, u_der2, 0);
        elseif use_fder then
          y = Functions.fstate1(u, u_der, 0);
        else
          y = u;
        end if;
      elseif ty_type == 2 then
        if use_ad2 then
          y = Functions.fstate2(u, derivative.y, derivative2.y, 0);
        else
          y = Functions.fstate1(u, derivative.y, 0);
        end if;
      else
        y = Functions.fstate0(u, 0);
      end if;

      connect(derivative.u, u) 
        annotation(Line(origin = {-91, -16}, 
        points = {{-55, 16}, {-131, 16}}, 
        color = {0, 0, 127}));
      connect(derivative.y, derivative2.u) 
        annotation(Line(origin = {-19, 6}, 
        points = {{-104, -6}, {-31, -6}}, 
        color = {0, 0, 127}));

    end InputAdapter;
    model InputAdapter1D "输入信号适配器：用于规避模型因输入信号求导失败问题(向量版本)"
      parameter Integer m(min = 1) = 3 
        annotation(Evaluate = true, HideResult = true);

      parameter Types.InputHandling inputHandling = "近似导数" "输入信号适配器类别" 
        annotation(Evaluate = true, HideResult = true);
      final parameter Integer ty_type = if inputHandling == "外部导数" then 1 else if inputHandling == "近似导数" then 2 else 3 
        annotation(Evaluate = true, HideResult = true);

      parameter Types.ProvideSignals psType = "提供输入和一阶导数" "外部导数类别" 
        annotation(Dialog(group = "外部导数设置", enable = ty_type == 1), Evaluate = true, HideResult = true);

      parameter Types.ApproxDerivatives adType = "一阶近似导数" "近似导数类别" 
        annotation(Dialog(group = "近似导数设置", enable = ty_type == 2), Evaluate = true, HideResult = true);
      parameter Real timeConstant = 0.001 "时间常量" 
        annotation(Dialog(group = "近似导数设置", enable = ty_type == 2), Evaluate = true, HideResult = true);

      final parameter Boolean use_fder = (ty_type == 1 and psType == "提供输入和一阶导数") 
        annotation(Evaluate = true, HideResult = true);
      final parameter Boolean use_fder2 = (ty_type == 1 and psType == "提供输入和前两阶导数") 
        annotation(Evaluate = true, HideResult = true);

      final parameter Boolean use_ad2 = (ty_type == 2 and adType == "前二阶近似导数") 
        annotation(Evaluate = true, HideResult = true);

      Modelica.Blocks.Interfaces.RealVectorInput[m] u 
        annotation(Placement(transformation(origin = {-218, 0}, 
        extent = {{-20, -20}, {20, 20}})));
      Modelica.Blocks.Interfaces.RealVectorOutput[m] y 
        annotation(Placement(transformation(origin = {208, 0}, 
        extent = {{-10, -10}, {10, 10}})));

      Modelica.Blocks.Interfaces.RealVectorInput[m] u_der if (use_fder or use_fder2) 
        annotation(Placement(transformation(origin = {-104, -120}, 
        extent = {{-20, -20}, {20, 20}}, 
        rotation = 90)));
      Modelica.Blocks.Interfaces.RealVectorInput[m] u_der2 if use_fder2 
        annotation(Placement(transformation(origin = {100, -120}, 
        extent = {{-20, -20}, {20, 20}}, 
        rotation = 90)));

      Modelica.Blocks.Continuous.Derivative[m] derivative(T = timeConstant) if ty_type == 2 
        annotation(Placement(transformation(origin = {-96, 0}, 
        extent = {{-10, -10}, {10, 10}})));
      Modelica.Blocks.Continuous.Derivative[m] derivative2(T = timeConstant) if use_ad2 
        annotation(Placement(transformation(origin = {-2, 0}, 
        extent = {{-10, -10}, {10, 10}})));

      annotation(Icon(coordinateSystem(extent = {{-200, -200}, {200, 200}}, 
        preserveAspectRatio = true, 
        grid = {2, 2}), graphics = {Rectangle(origin = {0, 0}, 
        lineColor = {0, 0, 255}, 
        fillColor = {255, 255, 255}, 
        fillPattern = FillPattern.Solid, 
        extent = {{-200, 100}, {200, -100}}), Text(visible = ty_type == 1 and use_fder, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "一阶外部导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 1 and use_fder2, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "前二阶外部导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 2 and not use_ad2, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "一阶近似导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 2 and use_ad2, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "前二阶近似导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(visible = ty_type == 3, 
        origin = {0, -60}, 
        lineColor = {0, 0, 255}, 
        extent = {{-226, 28}, {226, -28}}, 
        textString = "零导数", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(origin = {0, 57}, 
        lineColor = {0, 0, 255}, 
        extent = {{-198, 40}, {198, -40}}, 
        textString = "输入信号适配器", 
        textStyle = {TextStyle.None}, 
        textColor = {0, 0, 255}), Text(origin = {0, 144}, 
        lineColor = {0, 0, 255}, 
        extent = {{-228, 40}, {228, -40}}, 
        textString = "%name", 
        textColor = {0, 0, 255}), Text(origin = {0, -157}, 
        extent = {{200, -37}, {-200, 37}}, 
        textString = "m=%m")}), 
        Documentation(revisions = "<html><li><p>2025-11-07 陈智鹏 完成初版 </li></p></html>", 
        info = "<html>
<p>输入信号适配器 InputAdapter 提供三类可供用户选择的适配器用于规避模型翻译求导失败问题。</p>
    <p>其类别由 InputHandling 类型的变量 inputHandling 控制:</p>
    <p>
    1. <strong>外部导数</strong>：导数信号由用户自行提供，若输入信号和导数信号不匹配，那么最终仿真结果可能不正确。
    </p>
    <p>
    2. <strong>近似导数</strong>（默认选项，也是推荐选项）：导数由 Modelica.Blocks.Continuous.Derivative 通过对输入信号做近似导数提供，此时用户需提供差分参数 T (默认值为 0.001)
    </p>
    <p>
    3. <strong>零导数（分段常量）</strong>：导数值恒为 0，仅适合分段常量情况，若输入信号是一个连续信号采样得到，那么最终仿真结果可能不正确。
    </p>

    <p>
    当 inputHandling 值为 <strong>外部导数</strong> (ProvideSignals)，则外部导数设置中有如下三种选项供用户选择：
    </p>
    <p>
    1.1. <strong>仅提供输入</strong>：和未使用此模块效果一致。
    </p>
    <p>
    1.2. <strong>提供输入和一阶导数</strong>（默认选项）：则需要额外提供一阶导数。
    </p>
    <p>
    1.3. <strong>提供输入和前两阶导数</strong>：需要额外提供一阶导数和二阶导数。
    </p>

    <p>
    当 inputHandling 值为 <strong>近似导数</strong> (ApproxDerivatives)，则近似导数设置中有如下两种选项供用户选择：
    </p>
    <p>
    2.1. <strong>一阶近似导数</strong>（默认选项）：导数是由 Modelica.Blocks.Continuous.Derivative 近似提供，此时用户需提供差分参数 T (默认值为 0.001)。
    </p>
    <p>
    2.1. <strong>前二阶近似导数</strong>：则等价于两个一阶近似导数串联。
    </p>
    <p>
    并且用户需设置时间常量 (timeConstant) 的数值（默认值 0.001）用于适应不同时间特征的模型。
    </p>

    <p>
    当 inputHandling 值为 <strong>零导数(分段常量)</strong>，则无需进行额外设置
    </p>
    </html>"                        ));
    equation
      if ty_type == 1 then
        if use_fder2 then
          y = Functions.fstate2(u, u_der, u_der2, 0);
        elseif use_fder then
          y = Functions.fstate1(u, u_der, 0);
        else
          y = u;
        end if;
      elseif ty_type == 2 then
        if use_ad2 then
          y = Functions.fstate2(u, derivative.y, derivative2.y, 0);
        else
          y = Functions.fstate1(u, derivative.y, 0);
        end if;
      else
        y = Functions.fstate0(u, 0);
      end if;

      connect(derivative.u, u) 
        annotation(Line(origin = {-91, -16}, 
        points = {{-17, 16}, {-127, 16}}, 
        color = {0, 0, 127}));
      connect(derivative.y, derivative2.u) 
        annotation(Line(origin = {-19, 6}, 
        points = {{-66, -6}, {5, -6}}, 
        color = {0, 0, 127}));

    end InputAdapter1D;
    package Examples "输入信号适配器示例"
      extends Modelica.Icons.ExamplesPackage;

      model FixDerIssue1 "利用输入信号适配器解决求导失败问题(标量版本)"
        Modelica.Blocks.Interfaces.RealInput u 
          annotation(Placement(transformation(origin = {-120, 0}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent 
          annotation(Placement(transformation(origin = {-12, -42}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Inductor inductor(L=1) 
          annotation(Placement(transformation(origin = {36, -42}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor(R=1) 
          annotation(Placement(transformation(origin = {84, -42}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation(Placement(transformation(origin = {-42, -104}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor 
          annotation(Placement(transformation(origin = {84, -16}, 
          extent = {{-10, 10}, {10, -10}})));
        Modelica.Blocks.Interfaces.RealOutput y 
          annotation(Placement(transformation(origin = {110, 0}, 
          extent = {{-10, -10}, {10, 10}})));
        InputAdapter inputAdapter1 
          annotation(Placement(transformation(origin = {-54, 0}, 
          extent = {{-20, -20}, {20, 20}})));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2})), Documentation(info = "<html><p>
此模型给出利用 InputAdapter 规避模型翻译求导失败例子：
</p>
<p>
1. 此例子为真实工程模型经过极度简化后得到的
</p>
<p>
2. 若移除 InputAdapter 模块，让输入 u 和 SignalCurrent 直连，则复现翻译求导失败
</p>
<p>
3. 当前使用的 InputAdapter 类别为：近似导数
</p>
</html>"          ));
      equation
        connect(signalCurrent.n, inductor.p) 
          annotation(Line(origin = {8, -42}, 
          points = {{-10, 0}, {18, 0}}, 
          color = {0, 0, 255}));
        connect(inductor.n, resistor.p) 
          annotation(Line(origin = {60, -42}, 
          points = {{-14, 0}, {14, 0}}, 
          color = {0, 0, 255}));
        connect(ground.p, signalCurrent.p) 
          annotation(Line(origin = {-38, -61}, 
          points = {{-4, -33}, {-4, 19}, {16, 19}}, 
          color = {0, 0, 255}));
        connect(resistor.n, ground.p) 
          annotation(Line(origin = {33, -61}, 
          points = {{61, 19}, {79, 19}, {79, -19}, {-75, -19}, {-75, -33}}, 
          color = {0, 0, 255}), __MWORKS(BlockSystem(NamedSignal)));
        connect(y, voltageSensor.v) 
          annotation(Line(origin = {110, -2}, 
          points = {{0, 2}, {-26, 2}, {-26, -3}}, 
          color = {0, 0, 127}));
        connect(voltageSensor.p, resistor.p) 
          annotation(Line(origin = {68, -8}, 
          points = {{6, -8}, {-8, -8}, {-8, -34}, {6, -34}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.n, resistor.n) 
          annotation(Line(origin = {96, -21}, 
          points = {{-2, 5}, {1, 5}, {1, -21}, {-2, -21}}, 
          color = {0, 0, 255}));
        connect(u, inputAdapter1.u) 
          annotation(Line(origin = {-98, 0}, 
          points = {{-22, 0}, {21.8, 0}}, 
          color = {0, 0, 127}));
        connect(inputAdapter1.y, signalCurrent.i) 
          annotation(Line(origin = {-22, -15}, 
          points = {{-10.8, 15}, {10, 15}, {10, -15}}, 
          color = {0, 0, 127}));
      end FixDerIssue1;

      model FixDerIssue1_1D "利用输入信号适配器解决求导失败问题(向量版本)"
        parameter Integer m(min = 1) = 3 
          annotation(Evaluate = true, HideResult = true);
        Modelica.Blocks.Interfaces.RealVectorInput[m] u 
          annotation(Placement(transformation(origin = {-120, 6}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Polyphase.Sources.SignalCurrent signalCurrent(m = m) 
          annotation(Placement(transformation(origin = {-6, -43}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Resistor resistor(m = m,R=fill(1, m)) 
          annotation(Placement(transformation(origin = {80, -43}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Inductor inductor(m = m,L=fill(1, m)) 
          annotation(Placement(transformation(origin = {37, -43}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation(Placement(transformation(origin = {-34, -135}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Star star(m = m) 
          annotation(Placement(transformation(origin = {-34, -105}, 
          extent = {{-10, -10}, {10, 10}}, 
          rotation = 270)));
        Modelica.Electrical.Polyphase.Sensors.VoltageSensor voltageSensor(m = m) 
          annotation(Placement(transformation(origin = {80, -18}, 
          extent = {{-10, 10}, {10, -10}})));
        Modelica.Blocks.Interfaces.RealVectorOutput[m] y 
          annotation(Placement(transformation(origin = {120, 6}, 
          extent = {{-20, -20}, {20, 20}})));
        InputAdapter1D inputAdapter1D(m = m) 
          annotation(Placement(transformation(origin = {-62, 6}, 
          extent = {{-20, -20}, {20, 20}})));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2})), Documentation(info = "<html><p>
此模型给出利用 InputAdapter 规避模型翻译求导失败例子（向量版本）：
</p>
<p>
1. 此例子为真实工程模型经过极度简化后得到的
</p>
<p>
2. 若移除 InputAdapter 模块，让输入 u 和 SignalCurrent 直连，则复现翻译求导失败
</p>
<p>
3. 当前使用的 InputAdapter 类别为：近似导数
</p>
</html>"        ));
      equation
        connect(signalCurrent.plug_n, inductor.plug_p) 
          annotation(Line(origin = {16, -43}, 
          points = {{-12, 0}, {11, 0}}, 
          color = {0, 0, 255}));
        connect(resistor.plug_p, inductor.plug_n) 
          annotation(Line(origin = {59, -43}, 
          points = {{11, 0}, {-12, 0}}, 
          color = {0, 0, 255}));
        connect(ground.p, star.pin_n) 
          annotation(Line(origin = {-33, -120}, 
          points = {{-1, -5}, {-1, 5}}, 
          color = {0, 0, 255}));
        connect(star.plug_p, signalCurrent.plug_p) 
          annotation(Line(origin = {-26, -53}, 
          points = {{-8, -42}, {-8, 10}, {10, 10}}, 
          color = {0, 0, 255}));
        connect(resistor.plug_n, star.plug_p) 
          annotation(Line(origin = {32, -53}, 
          points = {{58, 10}, {68, 10}, {68, -24}, {-66, -24}, {-66, -42}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.plug_n, resistor.plug_n) 
          annotation(Line(origin = {91, -18}, 
          points = {{-1, 0}, {2, 0}, {2, -25}, {-1, -25}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.plug_p, inductor.plug_n) 
          annotation(Line(origin = {58, -18}, 
          points = {{12, 0}, {0, 0}, {0, -25}, {-11, -25}}, 
          color = {0, 0, 255}));
        connect(y, voltageSensor.v) 
          annotation(Line(origin = {105, 16}, 
          points = {{15, -10}, {-25, -10}, {-25, -23}}, 
          color = {0, 0, 127}));
        connect(u, inputAdapter1D.u) 
          annotation(Line(origin = {-102, 6}, 
          points = {{-18, 0}, {18.2, 0}}, 
          color = {0, 0, 127}));
        connect(inputAdapter1D.y, signalCurrent.i) 
          annotation(Line(origin = {-24, -12}, 
          points = {{-17.2, 18}, {18, 18}, {18, -19}}, 
          color = {0, 0, 127}));
      end FixDerIssue1_1D;

      model FixDerIssue2 "利用输入信号适配器解决求导失败问题(标量版本)"
        Modelica.Blocks.Interfaces.RealInput u 
          annotation(Placement(transformation(origin = {-120, 50}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent 
          annotation(Placement(transformation(origin = {-32, -36}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Inductor inductor(L=1) 
          annotation(Placement(transformation(origin = {16, -36}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor(R=1) 
          annotation(Placement(transformation(origin = {64, -36}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation(Placement(transformation(origin = {-62, -98}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Interfaces.RealInput u_der 
          annotation(Placement(transformation(origin = {-120, -46}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor 
          annotation(Placement(transformation(origin = {70, -8}, 
          extent = {{-10, 10}, {10, -10}})));
        Modelica.Blocks.Interfaces.RealOutput y 
          annotation(Placement(transformation(origin = {110, 4}, 
          extent = {{-10, -10}, {10, 10}})));
        InputAdapter inputAdapter(inputHandling = "外部导数") 
          annotation(Placement(transformation(origin = {-62, 50}, 
          extent = {{-20, -20}, {20, 20}})));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2})), Documentation(info = "<html><p>
此模型给出利用 InputAdapter 规避模型翻译求导失败例子：
</p>
<p>
1. 此例子为真实工程模型经过极度简化后得到的
</p>
<p>
2. 若移除 InputAdapter 模块，让输入 u 和 SignalCurrent 直连，则复现翻译求导失败
</p>
<p>
3. 当前使用的 InputAdapter 类别为：外部导数
</p>
</html>"        ));
      equation
        connect(signalCurrent.n, inductor.p) 
          annotation(Line(origin = {-12, -36}, 
          points = {{-10, 0}, {18, 0}}, 
          color = {0, 0, 255}));
        connect(inductor.n, resistor.p) 
          annotation(Line(origin = {42, 16}, 
          points = {{-16, -52}, {12, -52}}, 
          color = {0, 0, 255}));
        connect(ground.p, signalCurrent.p) 
          annotation(Line(origin = {-58, -55}, 
          points = {{-4, -33}, {-4, 19}, {16, 19}}, 
          color = {0, 0, 255}));
        connect(resistor.n, ground.p) 
          annotation(Line(origin = {15, -3}, 
          points = {{59, -33}, {64, -33}, {64, -85}, {-77, -85}}, 
          color = {0, 0, 255}), __MWORKS(BlockSystem(NamedSignal)));
        connect(y, voltageSensor.v) 
          annotation(Line(origin = {156, 50}, 
          points = {{-46, -46}, {-86, -46}, {-86, -47}}, 
          color = {0, 0, 127}));
        connect(voltageSensor.p, resistor.p) 
          annotation(Line(origin = {33, 34}, 
          points = {{27, -42}, {7, -42}, {7, -70}, {21, -70}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.n, resistor.n) 
          annotation(Line(origin = {61, 21}, 
          points = {{19, -29}, {24, -29}, {24, -57}, {13, -57}}, 
          color = {0, 0, 255}));
        connect(u, inputAdapter.u) 
          annotation(Line(origin = {-98, 50}, 
          points = {{-22, 0}, {13.8, 0}}, 
          color = {0, 0, 127}));
        connect(u_der, inputAdapter.u_der) 
          annotation(Line(origin = {-91, -4}, 
          points = {{-29, -42}, {20, -42}, {20, 42}}, 
          color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
        connect(inputAdapter.y, signalCurrent.i) 
          annotation(Line(origin = {-36, 13}, 
          points = {{-4.8, 37}, {4, 37}, {4, -37}}, 
          color = {0, 0, 127}));
      end FixDerIssue2;

      model FixDerIssue2_1D "利用输入信号适配器解决求导失败问题(向量版本)"
        parameter Integer m(min = 1) = 3 
          annotation(Evaluate = true, HideResult = true);
        Modelica.Blocks.Interfaces.RealVectorInput[m] u 
          annotation(Placement(transformation(origin = {-120, 48}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Polyphase.Sources.SignalCurrent signalCurrent(m = m) 
          annotation(Placement(transformation(origin = {-18, -38}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Resistor resistor(m = m,R=fill(1, m)) 
          annotation(Placement(transformation(origin = {68, -38}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Inductor inductor(m = m,L=fill(1, m)) 
          annotation(Placement(transformation(origin = {25, -38}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation(Placement(transformation(origin = {-47, -138}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Star star(m = m) 
          annotation(Placement(transformation(origin = {-47, -104}, 
          extent = {{-10, -10}, {10, 10}}, 
          rotation = 270)));
        Modelica.Blocks.Interfaces.RealVectorInput[m] u_der 
          annotation(Placement(transformation(origin = {-120, -32}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Polyphase.Sensors.VoltageSensor voltageSensor(m = m) 
          annotation(Placement(transformation(origin = {60, -6}, 
          extent = {{-10, 10}, {10, -10}})));
        Modelica.Blocks.Interfaces.RealVectorOutput[m] y 
          annotation(Placement(transformation(origin = {120, 14}, 
          extent = {{-20, -20}, {20, 20}})));
        InputAdapter1D inputAdapter1D(inputHandling = "外部导数", psType = "提供输入和一阶导数", m = m) 
          annotation(Placement(transformation(origin = {-68, 48}, 
          extent = {{-20, -20}, {20, 20}})));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2})), Documentation(info = "<html><p>
此模型给出利用 InputAdapter 规避模型翻译求导失败例子（向量版本）：
</p>
<p>
1. 此例子为真实工程模型经过极度简化后得到的
</p>
<p>
2. 若移除 InputAdapter 模块，让输入 u 和 SignalCurrent 直连，则复现翻译求导失败
</p>
<p>
3. 当前使用的 InputAdapter 类别为：外部导数
</p>
</html>"        ));
      equation
        connect(signalCurrent.plug_n, inductor.plug_p) 
          annotation(Line(origin = {4, -38}, 
          points = {{-12, 0}, {11, 0}}, 
          color = {0, 0, 255}));
        connect(resistor.plug_p, inductor.plug_n) 
          annotation(Line(origin = {47, -38}, 
          points = {{11, 0}, {-12, 0}}, 
          color = {0, 0, 255}));
        connect(ground.p, star.pin_n) 
          annotation(Line(origin = {-132, -115}, 
          points = {{85, -13}, {85, 1}}, 
          color = {0, 0, 255}));
        connect(star.plug_p, signalCurrent.plug_p) 
          annotation(Line(origin = {-124, -48}, 
          points = {{77, -46}, {77, 10}, {96, 10}}, 
          color = {0, 0, 255}));
        connect(resistor.plug_n, star.plug_p) 
          annotation(Line(origin = {-66, -48}, 
          points = {{144, 10}, {147, 10}, {147, -28}, {19, -28}, {19, -46}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.plug_n, resistor.plug_n) 
          annotation(Line(origin = {73, 30}, 
          points = {{-3, -36}, {8, -36}, {8, -68}, {5, -68}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.plug_p, inductor.plug_n) 
          annotation(Line(origin = {40, 30}, 
          points = {{10, -36}, {2, -36}, {2, -68}, {-5, -68}}, 
          color = {0, 0, 255}));
        connect(y, voltageSensor.v) 
          annotation(Line(origin = {111, 64}, 
          points = {{9, -50}, {-51, -50}, {-51, -59}}, 
          color = {0, 0, 127}));
        connect(u, inputAdapter1D.u) 
          annotation(Line(origin = {-105, 48}, 
          points = {{-15, 0}, {15.2, 0}}, 
          color = {0, 0, 127}));
        connect(inputAdapter1D.y, signalCurrent.i) 
          annotation(Line(origin = {-33, 11}, 
          points = {{-14.2, 37}, {15, 37}, {15, -37}}, 
          color = {0, 0, 127}));
        connect(u_der, inputAdapter1D.u_der) 
          annotation(Line(origin = {-99, 2}, 
          points = {{-21, -34}, {20.6, -34}, {20.6, 34}}, 
          color = {0, 0, 127}));
      end FixDerIssue2_1D;

      model FixDerIssue3 "利用输入信号适配器解决求导失败问题(标量版本)"
        Modelica.Blocks.Interfaces.RealInput u 
          annotation(Placement(transformation(origin = {-120, 4}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Analog.Sources.SignalCurrent signalCurrent 
          annotation(Placement(transformation(origin = {-14, -44}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Inductor inductor(L=1) 
          annotation(Placement(transformation(origin = {34, -44}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Resistor resistor(R=1) 
          annotation(Placement(transformation(origin = {82, -44}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation(Placement(transformation(origin = {-44, -106}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor 
          annotation(Placement(transformation(origin = {79, -16}, 
          extent = {{-10, 10}, {10, -10}})));
        Modelica.Blocks.Interfaces.RealOutput y 
          annotation(Placement(transformation(origin = {110, 4}, 
          extent = {{-10, -10}, {10, 10}})));
        InputAdapter inputAdapter(inputHandling = "零导数(分段常量)") 
          annotation(Placement(transformation(origin = {-62, 4}, 
          extent = {{-20, -20}, {20, 20}})));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2})), Documentation(info = "<html><p>
此模型给出利用 InputAdapter 规避模型翻译求导失败例子：
</p>
<p>
1. 此例子为真实工程模型经过极度简化后得到的
</p>
<p>
2. 若移除 InputAdapter 模块，让输入 u 和 SignalCurrent 直连，则复现翻译求导失败
</p>
<p>
3. 当前使用的 InputAdapter 类别为：零导数
</p>
</html>"        ));
      equation
        connect(signalCurrent.n, inductor.p) 
          annotation(Line(origin = {6, -44}, 
          points = {{-10, 0}, {18, 0}}, 
          color = {0, 0, 255}));
        connect(inductor.n, resistor.p) 
          annotation(Line(origin = {58, -44}, 
          points = {{-14, 0}, {14, 0}}, 
          color = {0, 0, 255}));
        connect(ground.p, signalCurrent.p) 
          annotation(Line(origin = {-40, -63}, 
          points = {{-4, -33}, {-4, 19}, {16, 19}}, 
          color = {0, 0, 255}));
        connect(resistor.n, ground.p) 
          annotation(Line(origin = {31, -63}, 
          points = {{61, 19}, {79, 19}, {79, -19}, {-75, -19}, {-75, -33}}, 
          color = {0, 0, 255}), __MWORKS(BlockSystem(NamedSignal)));
        connect(y, voltageSensor.v) 
          annotation(Line(origin = {105, -8}, 
          points = {{34, 16}, {-26, 16}, {-26, 3}}, 
          color = {0, 0, 127}));
        connect(voltageSensor.p, resistor.p) 
          annotation(Line(origin = {48, -14}, 
          points = {{21, -2}, {18, -2}, {18, -30}, {24, -30}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.n, resistor.n) 
          annotation(Line(origin = {76, -27}, 
          points = {{13, 11}, {26, 11}, {26, -17}, {16, -17}}, 
          color = {0, 0, 255}));
        connect(u, inputAdapter.u) 
          annotation(Line(origin = {-102, 4}, 
          points = {{-18, 0}, {17.8, 0}}, 
          color = {0, 0, 127}));
        connect(inputAdapter.y, signalCurrent.i) 
          annotation(Line(origin = {-27, -14}, 
          points = {{-13.8, 18}, {13, 18}, {13, -18}}, 
          color = {0, 0, 127}));
      end FixDerIssue3;

      model FixDerIssue3_1D "利用输入信号适配器解决求导失败问题(向量版本)"
        parameter Integer m(min = 1) = 3 
          annotation(Evaluate = true, HideResult = true);
        Modelica.Blocks.Interfaces.RealVectorInput[m] u 
          annotation(Placement(transformation(origin = {-120, 6}, 
          extent = {{-20, -20}, {20, 20}})));
        Modelica.Electrical.Polyphase.Sources.SignalCurrent signalCurrent(m = m) 
          annotation(Placement(transformation(origin = {-6, -38}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Resistor resistor(m = m,R=fill(1, m)) 
          annotation(Placement(transformation(origin = {80, -38}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Inductor inductor(m = m,L=fill(1, m)) 
          annotation(Placement(transformation(origin = {37, -38}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Analog.Basic.Ground ground 
          annotation(Placement(transformation(origin = {-27, -138}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Electrical.Polyphase.Basic.Star star(m = m) 
          annotation(Placement(transformation(origin = {-27, -104}, 
          extent = {{-10, -10}, {10, 10}}, 
          rotation = 270)));
        Modelica.Electrical.Polyphase.Sensors.VoltageSensor voltageSensor(m = m) 
          annotation(Placement(transformation(origin = {70, -14}, 
          extent = {{-10, 10}, {10, -10}})));
        Modelica.Blocks.Interfaces.RealVectorOutput[m] y 
          annotation(Placement(transformation(origin = {120, 6}, 
          extent = {{-20, -20}, {20, 20}})));
        InputAdapter1D inputAdapter1D(m = m, inputHandling = "零导数(分段常量)") 
          annotation(Placement(transformation(origin = {-66, 6}, 
          extent = {{-20, -20}, {20, 20}})));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2})), Documentation(info = "<html><p>
此模型给出利用 InputAdapter 规避模型翻译求导失败例子（向量版本）：
</p>
<p>
1. 此例子为真实工程模型经过极度简化后得到的
</p>
<p>
2. 若移除 InputAdapter 模块，让输入 u 和 SignalCurrent 直连，则复现翻译求导失败
</p>
<p>
3. 当前使用的 InputAdapter 类别为：零导数
</p>
</html>"        ));
      equation
        connect(signalCurrent.plug_n, inductor.plug_p) 
          annotation(Line(origin = {16, -38}, 
          points = {{-12, 0}, {11, 0}}, 
          color = {0, 0, 255}));
        connect(resistor.plug_p, inductor.plug_n) 
          annotation(Line(origin = {59, -38}, 
          points = {{11, 0}, {-12, 0}}, 
          color = {0, 0, 255}));
        connect(ground.p, star.pin_n) 
          annotation(Line(origin = {-77, -119}, 
          points = {{50, -9}, {50, 5}}, 
          color = {0, 0, 255}));
        connect(star.plug_p, signalCurrent.plug_p) 
          annotation(Line(origin = {-72, -56}, 
          points = {{45, -38}, {45, 18}, {56, 18}}, 
          color = {0, 0, 255}));
        connect(resistor.plug_n, star.plug_p) 
          annotation(Line(origin = {-14, -56}, 
          points = {{104, 18}, {107, 18}, {107, -24}, {-13, -24}, {-13, -38}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.plug_n, resistor.plug_n) 
          annotation(Line(origin = {53, -10}, 
          points = {{27, -4}, {40, -4}, {40, -28}, {37, -28}}, 
          color = {0, 0, 255}));
        connect(voltageSensor.plug_p, inductor.plug_n) 
          annotation(Line(origin = {20, -10}, 
          points = {{40, -4}, {34, -4}, {34, -28}, {27, -28}}, 
          color = {0, 0, 255}), __MWORKS(BlockSystem(NamedSignal)));
        connect(y, voltageSensor.v) 
          annotation(Line(origin = {95, 24}, 
          points = {{25, -18}, {-25, -18}, {-25, -27}}, 
          color = {0, 0, 127}));
        connect(u, inputAdapter1D.u) 
          annotation(Line(origin = {-104, 6}, 
          points = {{-16, 0}, {16.2, 0}}, 
          color = {0, 0, 127}));
        connect(inputAdapter1D.y, signalCurrent.i) 
          annotation(Line(origin = {-26, -10}, 
          points = {{-19.2, 16}, {20, 16}, {20, -16}}, 
          color = {0, 0, 127}));
      end FixDerIssue3_1D;

      model UseFixDerIssue1 "使用近似导数的InputAdapter示例"
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2}), graphics = {Text(origin = {-26, 60}, 
          lineColor = {0, 0, 0}, 
          extent = {{-37, -10}, {37, 10}}, 
          textString = "对于连续信号求导，可使用近似导数", 
          fontSize = 14, 
          textStyle = {TextStyle.None}, 
          textColor = {0, 0, 0}, 
          horizontalAlignment = TextAlignment.Left)}));
        Modelica.Blocks.Sources.Sine sine(f=1) 
          annotation(Placement(transformation(origin = {-145, 0}, 
          extent = {{-17, -17}, {17, 17}})));
        FixDerIssue1 fixDerIssue1_1 
          annotation(Placement(transformation(origin = {-26, 0}, 
          extent = {{-37, -20}, {37, 20}})));
        Modelica.Blocks.Interfaces.RealOutput y 
          annotation(Placement(transformation(origin = {110, 0}, 
          extent = {{-10, -10}, {10, 10}})));
      equation
        connect(sine.y, fixDerIssue1_1.u) 
          annotation(Line(origin = {-101, 55}, 
          points = {{-25.3, -55}, {30.6, -55}}, 
          color = {0, 0, 127}));
        connect(fixDerIssue1_1.y, y) 
          annotation(Line(origin = {27, 55}, 
          points = {{-12.3, -55}, {83, -55}}, 
          color = {0, 0, 127}));
      end UseFixDerIssue1;

      model UseFixDerIssue2 "使用外部导数的InputAdapter示例"
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2}), graphics = {Text(origin = {-16, 48}, 
          lineColor = {0, 0, 0}, 
          extent = {{-48, -10}, {48, 10}}, 
          textString = "对于连续信号求导，可显式提供已知信号的导数", 
          fontSize = 14, 
          textStyle = {TextStyle.None}, 
          textColor = {0, 0, 0}, 
          horizontalAlignment = TextAlignment.Left)}));
        Modelica.Blocks.Sources.Sine sine(f=1) 
          annotation(Placement(transformation(origin = {-149.6062, 8.5}, 
          extent = {{-17, -17}, {17, 17}})));
        Modelica.Blocks.Interfaces.RealOutput y 
          annotation(Placement(transformation(origin = {110, 0}, 
          extent = {{-10, -10}, {10, 10}})));
        Modelica.Blocks.Continuous.Der der1 
          annotation(Placement(transformation(origin = {-88.6062, -7.82}, 
          extent = {{-10, -10}, {10, 10}})));
        FixDerIssue2 fixDerIssue2_1 
          annotation(Placement(transformation(origin = {-27.8562, 0}, 
          extent = {{-25.25, -17}, {25.25, 17}})));
      equation
        connect(der1.u, sine.y) 
          annotation(Line(origin = {-119.6062, -18}, 
          points = {{19, 10.18}, {9, 10.18}, {9, 26.5}, {-11.3, 26.5}}, 
          color = {0, 0, 127}));
        connect(fixDerIssue2_1.u, sine.y) 
          annotation(Line(origin = {-90.6062, -2}, 
          points = {{32.45, 10.5}, {-40.3, 10.5}}, 
          color = {0, 0, 127}));
        connect(der1.y, fixDerIssue2_1.u_der) 
          annotation(Line(origin = {-63.6062, -23}, 
          points = {{-14, 15.18}, {5.45, 15.18}}, 
          color = {0, 0, 127}), __MWORKS(BlockSystem(NamedSignal)));
        connect(fixDerIssue2_1.y, y) 
          annotation(Line(origin = {6, 53}, 
          points = {{-6.0812, -52.32}, {104, -52.32}, {104, -53}}, 
          color = {0, 0, 127}));
      end UseFixDerIssue2;

      model UseFixDerIssue3 "使用零导数的InputAdapter示例"
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, 
          grid = {2, 2}), graphics = {Text(origin = {-12.25, 48.250875}, 
          lineColor = {0, 0, 0}, 
          extent = {{-32.25, -7.74912}, {32.25, 7.74912}}, 
          textString = "对于分段信号，可使用零导数", 
          fontSize = 14, 
          textStyle = {TextStyle.None}, 
          textColor = {0, 0, 0}, 
          horizontalAlignment = TextAlignment.Left)}));
        Modelica.Blocks.Interfaces.RealOutput y 
          annotation(Placement(transformation(origin = {110, -2}, 
          extent = {{-10, -10}, {10, 10}})));
        FixDerIssue3 fixDerIssue3_1 
          annotation(Placement(transformation(origin = {-12.25, -2.776}, 
          extent = {{-32.25, -19.4}, {32.25, 19.4}})));
        Modelica.Blocks.Sources.CombiTimeTable combiTimeTable(table = {{0.0, 0}, {0.2, 0}, {0.2, 1}, {0.5, 1}, {0.5, 2}, {1, 2}}) 
          annotation(Placement(transformation(origin = {-124, -2.8}, 
          extent = {{-10, -10}, {10, 10}})));
      equation
        connect(y, fixDerIssue3_1.y) 
          annotation(Line(origin = {-10, 61}, 
          points = {{120, -63}, {33.225, -63}}, 
          color = {0, 0, 127}));
        connect(combiTimeTable.y[1], fixDerIssue3_1.u) 
          annotation(Line(origin = {-164, -1.6}, 
          points = {{51, -1.2}, {113.05, -1.2}, {113.05, -0.4}}, 
          color = {0, 0, 127}));
      end UseFixDerIssue3;

    end Examples;
    package Types
      extends Modelica.Icons.TypesPackage;
      type InputHandling = String "输入信号适配器类别" 
        annotation(choices(
        choice = "外部导数", 
        choice = "近似导数", 
        choice = "零导数(分段常量)"), 
        Documentation(info = "<html>
    <p>
    <strong>输入信号适配器类别 InputHandling</strong> 是一个 String 类型，它做成一个选项框，在组件参数界面可供用户选择：
    </p>
    <p>
    1. <strong>外部导数</strong>：导数信号由用户自行提供，若输入信号和导数信号不匹配，那么最终仿真结果可能不正确。
    </p>
    <p>
    2. <strong>近似导数</strong>（默认选项，也是推荐选项）：导数由 Modelica.Blocks.Continuous.Derivative 通过对输入信号做近似导数提供，此时用户需提供差分参数 T (默认值为 0.001)
    </p>
    <p>
    3. <strong>零导数（分段常量）</strong>：导数值恒为 0，仅适合分段常量情况，若输入信号是一个连续信号采样得到，那么最终仿真结果可能不正确。
    </p>
    </html>"            ));
      type ProvideSignals = String "外部导数" 
        annotation(choices(
        choice = "仅提供输入", 
        choice = "提供输入和一阶导数", 
        choice = "提供输入和前两阶导数"), 
        Documentation(info = "<html>
    <p>
    <strong>外部导数 ProvideSignals</strong> 是一个 String 类型，它做成一个选项框，在组件参数界面可供用户选择：
    </p>
    <p>
    <strong>仅提供输入</strong>：和未使用此模块效果一致。
    </p>
    <p>
    <strong>提供输入和一阶导数</strong>（默认选项）：则需要额外提供一阶导数。
    </p>
    <p>
    <strong>提供输入和前两阶导数</strong>：需要额外提供一阶导数和二阶导数。
    </p>
    <p>
    此选项仅在用户选择输入信号适配器类别为<strong>外部导数</strong>时才生效。
    </p>
    </html>"            ));
      type ApproxDerivatives = String "近似导数" 
        annotation(choices(
        choice = "一阶近似导数", 
        choice = "前二阶近似导数"), 
        Documentation(info = "<html>
    <p>
    <strong>近似导数 ApproxDerivatives</strong> 是一个 String 类型，它做成一个选项框，在组件参数界面可供用户选择：
    </p>
    <p>
    1. <strong>一阶近似导数</strong>（默认选项）：导数是由 Modelica.Blocks.Continuous.Derivative 近似提供，此时用户需提供差分参数 T (默认值为 0.001)。
    </p>
    <p>
    2. <strong>前二阶近似导数</strong>：则等价于两个一阶近似导数串联。
    </p>
    <p>
    此选项仅在用户选择输入信号适配器类别为<strong>近似导数</strong>时才生效。
    </p>
    </html>"            ));

    end Types;
    package Functions
      extends Modelica.Icons.FunctionsPackage;

      function fstate0 "返回状态量(导函数为0)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real dummy;
        output Real s;
      algorithm
        s := u;
        annotation(derivative(noDerivative = u) = fstate0der1, 
          InlineAfterIndexReduction = true);
      end fstate0;
      function fstate0der1 "返回一阶导数0(fstate0的导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real dummy;
        input Real dummy_der;
        output Real sder1;
      algorithm
        sder1 := 0;
        annotation(derivative(noDerivative = u, order = 2) = fstate0der2, InlineAfterIndexReduction = true);
      end fstate0der1;
      function fstate0der2 "返回二阶导数0(fstate0的导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real dummy;
        input Real dummy_der;
        input Real dummy_der2;
        output Real sder2;
      algorithm
        sder2 := 0;
        annotation(InlineAfterIndexReduction = true);
      end fstate0der2;
      function fstate1 "返回状态量(一阶可导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real u1 "提供的一阶导数值";
        input Real dummy;
        output Real s;
      algorithm
        s := u;
        annotation(derivative(noDerivative = u, noDerivative = u1) = fstate1der1, 
          InlineAfterIndexReduction = true);
      end fstate1;
      function fstate1der1 "返回一阶导数(fstate1的导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real u1 "提供的一阶导数值";
        input Real dummy;
        input Real dummy_der;
        output Real sder1;
      algorithm
        sder1 := u1;
        annotation(InlineAfterIndexReduction = true);
      end fstate1der1;
      function fstate2 "返回状态量(二阶可导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real u1 "提供的一阶导数值";
        input Real u2 "提供的二阶导数值";
        input Real dummy;
        output Real s;
      algorithm
        s := u;
        annotation(derivative(noDerivative = u, noDerivative = u1, noDerivative = u2) = fstate2der1, 
          InlineAfterIndexReduction = true);
      end fstate2;
      function fstate2der1 "返回一阶导数 (fstate2的导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real u1 "提供的一阶导数值";
        input Real u2 "提供的二阶导数值";
        input Real dummy;
        input Real dummy_der;
        output Real sder1;
      algorithm
        sder1 := u1;
        annotation(derivative(noDerivative = u, noDerivative = u1, noDerivative = u2, order = 2) = fstate2der2, 
          InlineAfterIndexReduction = true);
      end fstate2der1;
      function fstate2der2 "返回二阶导数(fstate2der1的导函数)"
        extends Modelica.Icons.Function;
        input Real u;
        input Real u1 "提供的一阶导数值";
        input Real u2 "提供的二阶导数值";
        input Real dummy;
        input Real dummy_der;
        input Real dummy_der2;
        output Real sder2;
      algorithm
        sder2 := u2;
        annotation(InlineAfterIndexReduction = true);
      end fstate2der2;

    end Functions;
  end TYAdapters;
end Interfaces;