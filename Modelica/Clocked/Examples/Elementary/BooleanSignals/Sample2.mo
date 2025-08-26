within Modelica.Clocked.Examples.Elementary.BooleanSignals;
model Sample2
  "连续时间和时钟分区中直接馈通的布尔信号采样模块示例"
 extends Modelica.Icons.Example;
  Modelica.Clocked.BooleanSignals.Sampler.SampleClocked  sample1 
    annotation (Placement(transformation(origin={-53,23},
extent={{-6,-6},{6,6}})));
  Modelica.Clocked.ClockSignals.Clocks.PeriodicExactClock periodicClock(
      factor=20, resolution=Modelica.Clocked.Types.Resolution.ms) 
    annotation (Placement(transformation(origin={-69,-7},
extent={{-6,-6},{6,6}})));
Modelica.Blocks.Sources.BooleanStep 
                             step(startTime=0.04) 
  annotation (Placement(transformation(origin={-85,23},
extent={{-10,-10},{10,10}})));
  Modelica.Clocked.BooleanSignals.Sampler.Hold hold1 
    annotation (Placement(transformation(extent={{22,24},{34,36}})));
  Modelica.Clocked.BooleanSignals.Sampler.Sample  sample2 
    annotation (Placement(transformation(extent={{6,-6},{-6,6}})));
  Modelica.Blocks.Sources.BooleanConstant integerConstant(k=true) 
    annotation (Placement(transformation(extent={{-38,51},{-18,71}})));
Modelica.Blocks.Logical.Xor xor 
  annotation (Placement(transformation(origin={-28,23},
extent={{-10,-10},{10,10}})));
Modelica.Blocks.Logical.Xor xor1 
  annotation (Placement(transformation(extent={{-6,21},{14,41}})));
equation
  connect(periodicClock.y, sample1.clock) annotation (Line(origin={1,-7},
points={{-63.4,0},{-54,0},{-54,22.8}},
color={175,175,175},
pattern=LinePattern.Dot,
thickness=0.5));
connect(step.y, sample1.u) annotation (Line(origin={1,-7},
points={{-75,30},{-61.2,30}},
color={255,0,255}));
  connect(hold1.y, sample2.u) annotation (Line(points={{34.6,30},{39,30},{39,0},
          {7.2,0}}, color={255,0,255}));
connect(sample2.y, xor.u2) annotation (Line(origin={0,0},
points={{-6.6,0},{-44,0},{-44,15},{-40,15}},
color={255,0,255}));
connect(xor.u1, sample1.y) annotation (Line(origin={1,-7},
points={{-41,30},{-47.4,30}},
color={255,0,255}));
  connect(hold1.u, xor1.y) annotation (Line(points={{20.8,30},{17.4,30},{17.4,
          31},{15,31}}, color={255,0,255}));
connect(xor1.u1, integerConstant.y) annotation (Line(origin={0,0},
points={{-8,31},{-12,31},{-12,61},{-17,61}},
color={255,0,255}));
connect(xor1.u2, xor.y) annotation (Line(origin={0,0},
points={{-8,23},{-17,23}},
color={255,0,255}));
  annotation (experiment(StopTime=0.2),
    Documentation(info="<html>
<p>
模块文件的基本范例
<a href=\"modelica://Modelica.Clocked.BooleanSignals.Sampler.Sample\">Modelica.Clocked.BooleanSignals.Sampler.Sample</a>.
</p>
</html>"));
end Sample2;