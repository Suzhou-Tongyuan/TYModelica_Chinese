﻿within Modelica.Electrical.Polyphase.Basic;
model VariableConductor 
  "具有可变电导的理想线性电导"
  extends Interfaces.TwoPlug;
  extends Polyphase.Interfaces.ConditionalHeatPort;
  parameter SI.Temperature T_ref[m]=fill(300.15, m) 
    "参考温度";
  parameter SI.LinearTemperatureCoefficient alpha[m]=zeros(m) 
    "参考温度下电导的温度系数";
  Modelica.Blocks.Interfaces.RealInput G[m](each unit="S") annotation (
      Placement(transformation(
        origin={0,120}, 
        extent={{-20,-20},{20,20}}, 
        rotation=270), iconTransformation(
        extent={{-20,-20},{20,20}}, 
        rotation=270, 
        origin={0,120})));
  Modelica.Electrical.Analog.Basic.VariableConductor variableConductor[m](
    final T_ref=T_ref, 
    final alpha=alpha, 
    each final useHeatPort=useHeatPort) annotation (Placement(
        transformation(extent={{-10,-10},{10,10}})));
equation
  connect(variableConductor.p, plug_p.pin) 
    annotation (Line(points={{-10,0},{-100,0}}, color={0,0,255}));
  connect(variableConductor.n, plug_n.pin) 
    annotation (Line(points={{10,0},{100,0}}, color={0,0,255}));
  connect(G, variableConductor.G) 
    annotation (Line(points={{0,120},{0,56},{0,12}}, color={0,0,255}));
  connect(variableConductor.heatPort, heatPort) annotation (Line(
      points={{0,-10},{0,-100}}, color={191,0,0}));
  annotation (defaultComponentName="conductor", Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100, 
            -100},{100,100}}), graphics={
        Line(points={{-90,0},{-70,0}}, color={0,0,255}), 
        Rectangle(
          extent={{-70,30},{70,-30}}, 
          lineColor={0,0,255}, 
          fillColor={255,255,255}, 
          fillPattern=FillPattern.Solid), 
        Line(points={{70,0},{90,0}}, color={0,0,255}), 
        Text(
          extent={{-150,-80},{150,-40}}, 
          textString="m=%m"), 
        Text(
          extent={{-150,90},{150,50}}, 
          textString="%name", 
          textColor={0,0,255})}), Documentation(info="<html>
<p>
包含m个可变电导体(Modelica.Electrical.Analog.Basic.VariableConductor)
</p>
<p>
<strong>注意!!!</strong><br>
建议G_Port信号不应该跨过零值。
否则根据周围电路的情况，奇异性的概率较高。
</p>
</html>"));
end VariableConductor;