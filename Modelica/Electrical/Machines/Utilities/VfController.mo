﻿within Modelica.Electrical.Machines.Utilities;
block VfController "电压频率控制器"
  import Modelica.Constants.pi;
  extends Modelica.Blocks.Interfaces.SIMO(u(unit="Hz"), final nout=m);
  parameter Integer m=3 "相数" annotation(Evaluate=true);
  parameter SI.Angle orientation[m]=-
      Modelica.Electrical.Polyphase.Functions.symmetricOrientation(m) 
    "相位方向";
  parameter SI.Voltage VNominal "每相额定有效值电压";
  parameter SI.Frequency fNominal "额定频率";
  parameter SI.Angle BasePhase=0 "公共相位偏移";
  parameter Boolean EconomyMode=false "经济模式：电压与频率的平方成正比" 
    annotation(Evaluate=true,choices(checkBox=true));
  output SI.Angle x(start=0, fixed=true) "积分器状态";
  output SI.Voltage amplitude;
protected
  parameter Integer pow=if EconomyMode then 2 else 1 
    annotation(Evaluate=true);
equation
  amplitude = sqrt(2)*VNominal*(if abs(u) < fNominal then (abs(u)/fNominal)^pow else 1);
  der(x) = 2*pi*u;
  y = amplitude*sin(fill(x + BasePhase, m) + orientation);
  annotation (Icon(coordinateSystem(preserveAspectRatio=true, extent={{-100, 
            -100},{100,100}}), graphics={
        Line(visible=not EconomyMode, points={{-100,-100},{0,60},{80,60}}, color={0,0,255}), 
        Line(
          points={{-70,0},{-60.2,29.9},{-53.8,46.5},{-48.2,58.1},{-43.3, 
              65.2},{-38.3,69.2},{-33.4,69.8},{-28.5,67},{-23.6,61},{-18.6, 
              52},{-13,38.6},{-5.98,18.6},{8.79,-26.9},{15.1,-44},{20.8,-56.2}, 
              {25.7,-64},{30.6,-68.6},{35.5,-70},{40.5,-67.9},{45.4,-62.5}, 
              {50.3,-54.1},{55.9,-41.3},{63,-21.7},{70,0}}, 
          color={192,192,192}, 
          smooth=Smooth.Bezier), 
        Line(
          points={{-40,0},{-30.2,29.9},{-23.8,46.5},{-18.2,58.1},{-13.3, 
              65.2},{-8.3,69.2},{-3.4,69.8},{1.5,67},{6.4,61},{11.4,52},{17, 
              38.6},{24.02,18.6},{38.79,-26.9},{45.1,-44},{50.8,-56.2},{
              55.7,-64},{60.6,-68.6},{65.5,-70},{70.5,-67.9},{75.4,-62.5},{
              80.3,-54.1},{85.9,-41.3},{93,-21.7},{100,0}}, 
          color={192,192,192}, 
          smooth=Smooth.Bezier), 
        Line(
          points={{-100,0},{-90.2,29.9},{-83.8,46.5},{-78.2,58.1},{-73.3, 
              65.2},{-68.3,69.2},{-63.4,69.8},{-58.5,67},{-53.6,61},{-48.6, 
              52},{-43,38.6},{-35.98,18.6},{-21.21,-26.9},{-14.9,-44},{-9.2, 
              -56.2},{-4.3,-64},{0.6,-68.6},{5.5,-70},{10.5,-67.9},{15.4,-62.5}, 
              {20.3,-54.1},{25.9,-41.3},{33,-21.7},{40,0}}, 
          color={192,192,192}, 
          smooth=Smooth.Bezier), 
        Line(visible=EconomyMode, points={{-100,-100},{-90,-98},{-80,-94},{-70,-86},{-60,-74}, 
              {-50,-60},{-40,-42},{-30,-22},{-20,2},{-10,30},{0,60},{80,60}}, 
             color={0,0,255})}),   Documentation(info="<html>
简单的电压频率控制器。<br>
电压的幅值与频率(输入信号“u”)成线性关系(VNominal/fNominal)，但受到VNominal(每相额定有效值电压)的限制。<br>
作为输出信号“y”，提供描述如上述的振幅的m个正弦波。<br>
通过设置参数EconomyMode=true，电压随频率的增加呈二次方增长，这意味着风扇和泵驱动器的磁通、扭矩和损耗降低。<br>
这些正弦波用于提供m相 SignalVoltage。<br>
用户可以选择正弦波之间的相位差；默认值为<em>(k-1)/m*pi，其中k为1:m</em>。
</html>"));
end VfController;