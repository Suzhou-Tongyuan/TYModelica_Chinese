﻿within Modelica;
package Electrical "电气模型库(模拟、数字、电机、多相)"
  extends Modelica.Icons.Package;
  import Modelica.Units.SI;
  annotation(
    Documentation(info = "<html>
<p>这个库包含了电气元件，用于构建模拟电路、数字电路、模拟发电机和发电机的机械部件，特别是三相感应电动机，比如异步电动机。
</p>

</html>"), 
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100.0, -100.0}, {100.0, 100.0}}), graphics = {
    Rectangle(
    origin = {20.3125, 82.8571}, 
    extent = {{-45.3125, -57.8571}, {4.6875, -27.8571}}), 
    Line(
    origin = {8.0, 48.0}, 
    points = {{32.0, -58.0}, {72.0, -58.0}}), 
    Line(
    origin = {9.0, 54.0}, 
    points = {{31.0, -49.0}, {71.0, -49.0}}), 
    Line(
    origin = {-2.0, 55.0}, 
    points = {{-83.0, -50.0}, {-33.0, -50.0}}), 
    Line(
    origin = {-3.0, 45.0}, 
    points = {{-72.0, -55.0}, {-42.0, -55.0}}), 
    Line(
    origin = {1.0, 50.0}, 
    points = {{-61.0, -45.0}, {-61.0, -10.0}, {-26.0, -10.0}}), 
    Line(
    origin = {7.0, 50.0}, 
    points = {{18.0, -10.0}, {53.0, -10.0}, {53.0, -45.0}}), 
    Line(
    origin = {6.2593, 48.0}, 
    points = {{53.7407, -58.0}, {53.7407, -93.0}, {-66.2593, -93.0}, {-66.2593, -58.0}})}));
end Electrical;