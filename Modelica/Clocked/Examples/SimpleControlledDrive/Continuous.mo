within Modelica.Clocked.Examples.SimpleControlledDrive;
model Continuous "带连续控制器的简易控制驱动装置"
 extends Modelica.Icons.Example;

  Modelica.Mechanics.Rotational.Components.Inertia load(J=10, 
    phi(fixed=true, start=0), 
    w(fixed=true, start=0)) 
    annotation (Placement(transformation(extent={{80,0},{100,20}})));
  Modelica.Mechanics.Rotational.Sensors.SpeedSensor speed       annotation (
     Placement(transformation(
        extent={{-10,-10},{6,6}}, 
        rotation=-90, 
        origin={110,-15})));
  Modelica.Blocks.Sources.Ramp ramp(duration=2) 
    annotation (Placement(transformation(extent={{-111,0},{-91,20}})));

  Modelica.Blocks.Continuous.PI PI(
    initType=Modelica.Blocks.Types.Init.InitialOutput, 
    y_start=0, 
    T=0.1, 
    k=110) 
    annotation (Placement(transformation(extent={{-12,0},{8,20}})));
  Modelica.Blocks.Math.Feedback feedback 
    annotation (Placement(transformation(extent={{-43,0},{-23,20}})));

  Modelica.Mechanics.Rotational.Sources.Torque torque 
    annotation (Placement(transformation(extent={{53,0},{73,20}})));

equation
  connect(speed.flange, load.flange_b)       annotation (Line(
      points={{108,-5},{108,10},{100,10}}));
  connect(feedback.y, PI.u) annotation (Line(
      points={{-24,10},{-14,10}}, 
      color={0,0,127}));
  connect(torque.flange, load.flange_a) annotation (Line(
      points={{73,10},{80,10}}));
  connect(ramp.y, feedback.u1) annotation (Line(
      points={{-90,10},{-41,10}}, 
      color={0,0,127}));
  connect(PI.y, torque.tau) annotation (Line(
      points={{9,10},{51,10}}, 
      color={0,0,127}));
  connect(speed.w, feedback.u2) annotation (Line(
      points={{108,-21.8},{108,-26},{-33,-26},{-33,2}}, 
      color={0,0,127}));
  annotation (Diagram(coordinateSystem(extent={{-140,-100},{140,100}}, 
preserveAspectRatio=true, 
grid={2,2}),graphics = {Text(origin={-17,36}, 
lineColor={255,0,0}, 
extent={{-25,3},{25,-3}}, 
textString="反馈控制", 
textColor={255,0,0}), Text(origin={79,36}, 
lineColor={255,0,0}, 
extent={{-25,3},{25,-3}}, 
textString="被控对象", 
textColor={255,0,0}), Rectangle(origin={-95,10}, 
lineColor={255,0,0}, 
extent={{-25,30},{25,-30}}), Text(origin={-95,36}, 
lineColor={255,0,0}, 
extent={{-24,3},{24,-3}}, 
textString="期望信号", 
textColor={255,0,0}), Rectangle(origin={-14,3}, 
lineColor={255,0,0}, 
extent={{-32,37},{32,-37}}), Rectangle(origin={80,3}, 
lineColor={255,0,0}, 
extent={{-40,37},{40,-37}})}), 
    Documentation(info="<html><p>
使用 <strong>连续时间</strong> 控制器的原始简易控制驱动器。
</p>
</html>"), 
    experiment(
      StopTime=5));
end Continuous;