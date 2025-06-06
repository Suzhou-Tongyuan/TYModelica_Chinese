﻿within Modelica.ComplexBlocks.Interfaces;
connector ComplexInput = input Complex "'input Complex'作为连接器" 
  annotation(
  IconMap(primitivesVisible = false), 
  defaultComponentName = "u", 
  Icon(coordinateSystem(
  extent = {{-100, -100}, {100, 100}}, 
  preserveAspectRatio = true, 
  initialScale = 0.2), graphics = {Polygon(
  points = {{-100, 100}, {100, 0}, {-100, -100}, {-100, 100}}, 
  lineColor = {85, 170, 255}, 
  fillColor = {85, 170, 255}, 
  fillPattern = FillPattern.Solid)}), 
  Diagram(coordinateSystem(
  preserveAspectRatio = true, 
  initialScale = 0.2, 
  extent = {{-100, -100}, {100, 100}}), graphics = {Polygon(
  points = {{0, 50}, {100, 0}, {0, -50}, {0, 50}}, 
  lineColor = {85, 170, 255}, 
  fillColor = {85, 170, 255}, 
  fillPattern = FillPattern.Solid), Text(
  extent = {{-10, 85}, {-10, 60}}, 
  textColor = {85, 170, 255}, 
  textString = "%name")}), 
  Documentation(info = "<html>
<p>
具有一个复数类型的输入信号的连接器。
</p>
</html>"));