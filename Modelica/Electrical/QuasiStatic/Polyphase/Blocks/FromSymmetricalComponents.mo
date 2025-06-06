﻿within Modelica.Electrical.QuasiStatic.Polyphase.Blocks;
block FromSymmetricalComponents 
  "从对称分量创建准静态相量"
  extends Modelica.ComplexBlocks.Interfaces.ComplexMIMOs(final n=m,final useConjugateInput=fill(false,m));
  import Modelica.ComplexMath.abs;
  import Modelica.ComplexMath.arg;
  parameter Integer m=3 "相数" annotation(Evaluate=true);
  output Real abs_u[m] = abs(u) "输入的绝对值";
  output SI.Angle arg_u[m](displayUnit="deg") = arg(u) 
    "输入的参数";
  output Real abs_y[m] = abs(y) "输出的绝对值";
  output SI.Angle arg_y[m](displayUnit="deg") = arg(y) 
    "输出的参数";
protected
  final parameter Complex sbTM[m,m]= 
    Modelica.Electrical.Polyphase.Functions.symmetricBackTransformationMatrix(m);
equation
  // Symmetrical components (preferred): y = sbTM*u;
  for j in 1:m loop
    y[j] = Complex(sum({sbTM[j,k].re*u[k].re - sbTM[j,k].im*u[k].im for k in 1:m}), 
                   sum({sbTM[j,k].re*u[k].im + sbTM[j,k].im*u[k].re for k in 1:m}));
  end for;
  annotation (defaultComponentName="symComp", Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), 
        graphics={
        Line(
          points={{-18,10},{-18,10},{2,-24},{-8,-14},{-2,-10},{2,-24}}, 
          color={85,170,255}, 
          origin={-54,-40}, 
          rotation=-90), 
        Line(
          points={{-44,-22},{-44,-22},{-8,-42},{-22,-38},{-18,-32},{-8,-42}}, 
          color={85,170,255}), 
        Line(
          points={{-44,-22},{-44,18},{-40,4},{-48,4},{-44,18}}, 
          color={85,170,255}), 
        Line(
          points={{-18,10},{-18,10},{2,-24},{-8,-14},{-2,-10},{2,-24}}, 
          color={85,170,255}, 
          origin={-54,30}, 
          rotation=-90), 
        Line(
          points={{-44,48},{-44,88},{-40,74},{-48,74},{-44,88}}, 
          color={85,170,255}), 
        Line(
          points={{-44,48},{-44,48},{-8,28},{-22,32},{-18,38},{-8,28}}, 
          color={85,170,255}), 
        Line(
          points={{-54,-88},{-54,-48},{-50,-62},{-58,-62},{-54,-48}}, 
          color={85,170,255}), 
        Line(
          points={{-44,-88},{-44,-48},{-40,-62},{-48,-62},{-44,-48}}, 
          color={85,170,255}), 
        Line(
          points={{-34,-88},{-34,-48},{-30,-62},{-38,-62},{-34,-48}}, 
          color={85,170,255}), 
        Line(
          points={{42,-10},{42,30},{46,16},{38,16},{42,30}}, 
          color={85,170,255}), 
        Line(
          points={{-18,10},{-18,10},{2,-24},{-8,-14},{-2,-10},{2,-24}}, 
          color={85,170,255}, 
          origin={32,-28}, 
          rotation=-90), 
        Line(
          points={{42,-10},{42,-10},{78,-30},{64,-26},{68,-20},{78,-30}}, 
          color={85,170,255})}), Documentation(info="<html>
<p>
根据 Charles L. Fortescue 从对称分量计算时间相量。
</p>
<h4>另请参阅</h4>
<p>
<a href=\"modelica://Modelica.Electrical.Polyphase.UsersGuide.PhaseOrientation\">用户指南</a> 有关对称分量和方向的信息。
</p>
</html>"));
end FromSymmetricalComponents;