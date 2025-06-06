﻿within Modelica.Clocked.Examples.Elementary.IntegerSignals;
model Sample1 "整数信号采样模块示例"
 extends Modelica.Icons.Example;
  Modelica.Clocked.IntegerSignals.Sampler.AssignClock  assignClock 
    annotation (Placement(transformation(extent={{-22,24},{-10,36}})));
  Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicClock(
      factor=20, resolution=Modelica.Clocked.Types.Resolution.ms) 
    annotation (Placement(transformation(extent={{-42,-2},{-30,10}})));
Modelica.Blocks.Sources.IntegerStep 
                             step(startTime=0.1) 
  annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
Modelica.Clocked.IntegerSignals.Sampler.Sample sample1 
    annotation (Placement(transformation(extent={{-48,24},{-36,36}})));
equation
  connect(periodicClock.y, assignClock.clock) annotation (Line(
      points={{-29.4,4},{-16,4},{-16,22.8}}, 
      color={175,175,175}, 
      pattern=LinePattern.Dot, 
      thickness=0.5));
  connect(step.y, sample1.u) 
    annotation (Line(points={{-59,30},{-49.2,30}}, color={255,127,0}));
  connect(sample1.y, assignClock.u) 
    annotation (Line(points={{-35.4,30},{-23.2,30}}, color={255,127,0}));
  annotation (experiment(StopTime=0.2), 
  Documentation(info="<html>
<p>
模块文件的基本范例 
<a href=\"modelica://Modelica.Clocked.IntegerSignals.Sampler.Sample\">Modelica.Clocked.IntegerSignals.Sampler.Sample</a>.
</p>
</html>"));
end Sample1;