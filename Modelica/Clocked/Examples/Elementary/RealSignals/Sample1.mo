﻿within Modelica.Clocked.Examples.Elementary.RealSignals;
model Sample1 "实数信号采样模块示例"
   extends Modelica.Icons.Example;

  Modelica.Blocks.Sources.Sine sine(f=2, 
    offset=0.1, 
    startTime=0) 
    annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
  Clocked.RealSignals.Sampler.Sample sample1 
    annotation (Placement(transformation(extent={{-46,24},{-34,36}})));
  Clocked.RealSignals.Sampler.AssignClock assignClock 
    annotation (Placement(transformation(extent={{-22,24},{-10,36}})));
  Clocked.ClockSignals.Clocks.PeriodicExactClock periodicClock(factor=20, 
      resolution=Modelica.Clocked.Types.Resolution.ms) 
    annotation (Placement(transformation(extent={{-42,-2},{-30,10}})));
equation
  connect(sine.y, sample1.u) 
    annotation (Line(points={{-59,30},{-47.2,30}}, color={0,0,127}));
  connect(sample1.y, assignClock.u) 
    annotation (Line(points={{-33.4,30},{-23.2,30}}, color={0,0,127}));
  connect(periodicClock.y, assignClock.clock) annotation (Line(
      points={{-29.4,4},{-16,4},{-16,22.8}}, 
      color={175,175,175}, 
      pattern=LinePattern.Dot, 
      thickness=0.5));
  annotation (experiment(StopTime=0.2), 
  Documentation(info="<html>
<p>
生成一个用于区模块文档的示例图<a href=\"modelica://Modelica.Clocked.RealSignals.Sampler.Sample\">Modelica.Clocked.RealSignals.Sampler.Sample</a>.
</p>
</html>"));
end Sample1;