within Modelica.Clocked.Examples.Elementary.IntegerSignals;
model AssignClockVectorized 
  "整数信号 AssignClockVectorized 模块示例"
   extends Modelica.Icons.Example;

  Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicClock(
      factor=20, resolution=Modelica.Clocked.Types.Resolution.ms) 
    annotation (Placement(transformation(origin={-48,-50}, 
extent={{-6,-6},{6,6}})));
Modelica.Clocked.IntegerSignals.NonPeriodic.UnitDelay unitDelay1 
  annotation (Placement(transformation(extent={{-38,58},{-58,78}})));
Modelica.Blocks.Sources.IntegerConstant 
                                 const(k=1) 
  annotation (Placement(transformation(origin={-94,38}, 
extent={{-10,-10},{10,10}})));
Modelica.Clocked.IntegerSignals.Sampler.AssignClockVectorized 
  assignClock1(n=2) 
  annotation (Placement(transformation(extent={{-24,18},{-12,30}})));
Modelica.Blocks.Sources.IntegerConstant 
                                 const1(k=2) 
  annotation (Placement(transformation(origin={-94,4}, 
extent={{-10,-10},{10,10}})));
Modelica.Clocked.IntegerSignals.NonPeriodic.UnitDelay unitDelay2 
  annotation (Placement(transformation(origin={-48,-24}, 
extent={{10,-10},{-10,10}})));
Modelica.Blocks.MathInteger.Sum sum1(nu=2) 
  annotation (Placement(transformation(extent={{-54,32},{-42,44}})));
Modelica.Blocks.MathInteger.Sum sum2(nu=2) 
  annotation (Placement(transformation(origin={-48,4}, 
extent={{-6,-6},{6,6}})));
equation
connect(periodicClock.y, assignClock1.clock) annotation (Line(origin={0,-6}, 
points={{-41.4,-44},{-18,-44},{-18,22.8}}, 
color={175,175,175}, 
pattern=LinePattern.Dot, 
thickness=0.5));
connect(assignClock1.y[1], unitDelay1.u) annotation (Line(
    points={{-11.4,23.7},{4,23.7},{4,68},{-36,68}}, 
    color={255,127,0}));
connect(assignClock1.y[2], unitDelay2.u) annotation (Line(origin={0,-6}, 
points={{-11.4,30},{4,30},{4,-18},{-36,-18}}, 
color={255,127,0}));
connect(unitDelay1.y, sum1.u[1]) annotation (Line(
    points={{-59,68},{-64,68},{-64,40.1},{-54,40.1}}, 
    color={255,127,0}));
connect(const.y, sum1.u[2]) annotation (Line(origin={0,0}, 
points={{-83,38},{-54,38}}, 
color={255,127,0}));
connect(const1.y, sum2.u[1]) annotation (Line(origin={0,-6}, 
points={{-83,10},{-54,10}}, 
color={255,127,0}));
connect(unitDelay2.y, sum2.u[2]) annotation (Line(origin={0,-6}, 
points={{-59,-18},{-62,-18},{-62,10},{-54,10}}, 
color={255,127,0}));
connect(sum1.y, assignClock1.u[1]) annotation (Line(
    points={{-41.1,38},{-34,38},{-34,23.4},{-25.2,23.4}}, 
    color={255,127,0}));
connect(sum2.y, assignClock1.u[2]) annotation (Line(origin={0,-6}, 
points={{-41.1,10},{-34,10},{-34,30},{-25.2,30}}, 
color={255,127,0}));
  annotation (experiment(StopTime=0.09), 
  Documentation(info="<html>
<p>
模块文件的基本范例 
<a href=\"modelica://Modelica.Clocked.IntegerSignals.Sampler.AssignClockVectorized\">Modelica.Clocked.IntegerSignals.Sampler.AssignClockVectorized</a>.
</p>
</html>"));
end AssignClockVectorized;