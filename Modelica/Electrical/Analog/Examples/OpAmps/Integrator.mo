﻿within Modelica.Electrical.Analog.Examples.OpAmps;
model Integrator "积分放大器"
  extends Modelica.Icons.Example;
  parameter SI.Voltage Vin=5 "输入电压的幅值";
  parameter SI.Frequency f=10 "输入电压的频率";
  Modelica.Electrical.Analog.Basic.Ground ground 
    annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor vOut annotation (Placement(
        transformation(
        extent={{-10,10},{10,-10}}, 
        rotation=270, 
        origin={40,0})));
  OpAmpCircuits.Integrator integrator(
    k=2, 
    f=f, 
    v(fixed=true)) 
    annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  Sources.TrapezoidVoltage vIn(
    V=2*Vin, 
    rising=0.2/f, 
    width=0.3/f, 
    falling=0.2/f, 
    period=1/f, 
    nperiod=-1, 
    offset=-Vin, 
    startTime=-(vIn.rising + vIn.width/2)) 
    annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=270, 
        origin={-40,0})));
equation
  connect(integrator.n1, ground.p) 
    annotation (Line(points={{-10,-10},{-10,-20}}, color={0,0,255}));
  connect(integrator.p2, vOut.p) 
    annotation (Line(points={{10,10},{40,10}}, color={0,0,255}));
  connect(integrator.n2, vOut.n) 
    annotation (Line(points={{10,-10},{40,-10}}, color={0,0,255}));
  connect(vIn.p, integrator.p1) 
    annotation (Line(points={{-40,10},{-10,10}}, color={0,0,255}));
  connect(vIn.n, integrator.n1) 
    annotation (Line(points={{-40,-10},{-10,-10}}, color={0,0,255}));
  annotation (Documentation(info="<html>
<p>这是一个(反相)积分放大器。用户可以在仿真界面勾选电阻R后查看仿真结果。其中电容C的数值会由电路的时间常数决定。</p>
<p>请注意：<code>vOut</code>为输出负电压的值。</p>
</html>"), 
    experiment(
      StartTime=0, 
      StopTime=1, 
      Tolerance=1e-006, 
      Interval=0.001));
end Integrator;