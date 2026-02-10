within Modelica.Electrical.Analog.Ideal;
model ControlledCloserWithArc 
  "带有简单电弧效应的受控理想电气闭合器模型"
  parameter SI.Voltage level = 0.5 "开关阈值";
  extends Modelica.Electrical.Analog.Interfaces.IdealSwitchWithArc;
  Modelica.Electrical.Analog.Interfaces.Pin control 
    "控制引脚: 当control.v > level 时开关闭合, 否则开关断开" 
    annotation(Placement(transformation(
    origin = {0, 100}, 
    extent = {{-10, -10}, {10, 10}}, 
    rotation = 90)));
equation
  off = control.v < level;
  control.i = 0;
  annotation(defaultComponentName = "switch", 
    Documentation(info = "<html>

<p>
这个模型基于以下模型搭建：<a href=\"modelica://Modelica.Electrical.Analog.Ideal.ControlledIdealClosingSwitch\">ControlledIdealClosingSwitch</a>
</p>
<p>
如果对电弧效应存在疑惑，请查看：<a href=\"modelica://Modelica.Electrical.Analog.Interfaces.IdealSwitchWithArc\">IdealSwitchWithArc</a>
</p>
</html>", 
    revisions = "<html>
<ul>
<li><em>February 7, 2016   </em>
       by Anton Haumer<br> extending from partial IdealSwitchWithArc<br>
       </li>
<li><em>May, 2009   </em>
       by Anton Haumer<br> initially implemented<br>
       </li>
</ul>
</html>"), 
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 
    100}}), graphics = {
    Line(points = {{40, 40}, {34, 16}, {48, 24}, {40, 0}}, color = {255, 0, 0})}));
end ControlledCloserWithArc;