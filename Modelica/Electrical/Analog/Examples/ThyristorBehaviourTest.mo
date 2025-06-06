﻿within Modelica.Electrical.Analog.Examples;
model ThyristorBehaviourTest "晶闸管演示示例"
  extends Modelica.Icons.Example;

  Modelica.Electrical.Analog.Basic.Ground ground 
    annotation (Placement(transformation(extent={{18,-40},{38,-20}})));
  Modelica.Electrical.Analog.Sources.SineVoltage sineVoltage(
    V=30, f=10000) 
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=270, 
        origin={-72,4})));
  Modelica.Electrical.Analog.Basic.Resistor resistor(R=10) 
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=270, 
        origin={8,20})));
  Modelica.Electrical.Analog.Sources.PulseCurrent pulseCurrent(
    width=10, 
    period=0.0001, 
    startTime=0.00002, 
    I=0.005) 
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=180, 
        origin={-8,70})));
  Modelica.Electrical.Analog.Semiconductors.Thyristor thyristor_v4_1(
    vControl(fixed=true), 
    vAK(start=0), 
    vGK(start=0)) 
    annotation (Placement(transformation(extent={{-44,30},{-24,50}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(
    L=2e-6, 
    i(start=0, fixed=true)) 
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=270, 
        origin={8,-4})));
equation
  connect(sineVoltage.n, ground.p) 
    annotation (Line(
      points={{-72,-6},{-72,-20},{28,-20}}, 
      color={0,0,255}));
  connect(sineVoltage.p, thyristor_v4_1.Anode) 
    annotation (Line(
      points={{-72,14},{-72,40},{-43,40}}, 
      color={0,0,255}));
  connect(resistor.p, thyristor_v4_1.Cathode) 
    annotation (Line(
      points={{8,30},{8,40},{-25,40}}, 
      color={0,0,255}));
  connect(pulseCurrent.n, thyristor_v4_1.Gate) 
    annotation (Line(
      points={{-18,70},{-26,70},{-26,49},{-27,49}}, 
      color={0,0,255}));
  connect(resistor.p, pulseCurrent.p) 
    annotation (Line(
      points={{8,30},{8,70},{2,70}}, 
      color={0,0,255}));
  connect(resistor.n, inductor.p) 
    annotation (Line(
      points={{8,10},{8,8},{8,6},{8,6}}, 
      color={0,0,255}));
  connect(inductor.n, ground.p) 
    annotation (Line(
      points={{8,-14},{8,-20},{28,-20}}, 
      color={0,0,255}));
  annotation (experiment(StopTime=0.0002), 
    Documentation(info="<html>
<p>这是一个简单的测试回路，该回路可以测试晶闸管模型的工作性能。
</p>
<p>用户可在“仿真--仿真浏览器”中勾选相应的“仿真结果变量”查看以下结果变量的图像：
Cathode.v、Gate.v、sineVoltage.p.v.和pulseCurrent.p.i。
</p>
<p>模型的仿真时间为2e-4秒。
</p>
</html>"));
end ThyristorBehaviourTest;