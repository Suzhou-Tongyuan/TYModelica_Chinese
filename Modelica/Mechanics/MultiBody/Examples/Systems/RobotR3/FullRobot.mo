﻿within Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3;
model FullRobot 
  "具有路径规划、控制器、电机、制动器、齿轮和机构的六自由度机器人"
  extends Modelica.Icons.Example;

  parameter SI.Mass mLoad(min=0) = 15 "负载质量";
  parameter SI.Position rLoad[3]={0.1,0.25,0.1} 
    "最后一个转动接口到负载质量的距离";
  parameter SI.Acceleration g=9.81 "重力加速度";
  parameter SI.Time refStartTime=0 "参考运动的开始时间";
  parameter SI.Time refSwingTime=0.5 
    "参考运动静止后，在停止仿真前额外的时间";

  parameter Modelica.Units.NonSI.Angle_deg startAngle1 = -60 "轴1的起始角度" 
    annotation (Dialog(tab="参考值", group="起始角"));
  parameter Modelica.Units.NonSI.Angle_deg startAngle2 = 20 "轴2的起始角度" 
    annotation (Dialog(tab="参考值", group="起始角"));
  parameter Modelica.Units.NonSI.Angle_deg startAngle3 = 90 "轴3的起始角度" 
    annotation (Dialog(tab="参考值", group="起始角"));
  parameter Modelica.Units.NonSI.Angle_deg startAngle4 = 0 "轴4的起始角度" 
    annotation (Dialog(tab="参考值", group="起始角"));
  parameter Modelica.Units.NonSI.Angle_deg startAngle5 = -110 "轴5的起始角度" 
    annotation (Dialog(tab="参考值", group="起始角"));
  parameter Modelica.Units.NonSI.Angle_deg startAngle6 = 0 "轴6的起始角度" 
    annotation (Dialog(tab="参考值", group="起始角"));

  parameter Modelica.Units.NonSI.Angle_deg endAngle1 = 60 "轴1的终止角度" 
    annotation (Dialog(tab="参考值", group="终止角"));
  parameter Modelica.Units.NonSI.Angle_deg endAngle2 = -70 "轴2的终止角度" 
    annotation (Dialog(tab="参考值", group="终止角"));
  parameter Modelica.Units.NonSI.Angle_deg endAngle3 = -35 "轴3的终止角度" 
    annotation (Dialog(tab="参考值", group="终止角"));
  parameter Modelica.Units.NonSI.Angle_deg endAngle4 = 45 "轴4的终止角度" 
    annotation (Dialog(tab="参考值", group="终止角"));
  parameter Modelica.Units.NonSI.Angle_deg endAngle5 = 110 "轴5的终止角度" 
    annotation (Dialog(tab="参考值", group="终止角"));
  parameter Modelica.Units.NonSI.Angle_deg endAngle6 = 45 "轴6的终止角度" 
    annotation (Dialog(tab="参考值", group="终止角"));

  parameter SI.AngularVelocity refSpeedMax[6]={3,1.5,5,3.1,3.1,4.1} 
    "所有关节的最大参考速度" 
    annotation (Dialog(tab="参考值", group="极限值"));
  parameter SI.AngularAcceleration refAccMax[6]={15,15,15,60,60,60} 
    "所有关节的最大参考加速度" 
    annotation (Dialog(tab="参考值", group="极限值"));

  parameter Real kp1=5 "位置控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴1"));
  parameter Real ks1=0.5 "速度控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴1"));
  parameter SI.Time Ts1=0.05 
    "速度控制器积分器的时间常数" 
    annotation (Dialog(tab="控制器", group="轴1"));
  parameter Real kp2=5 "位置控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴2"));
  parameter Real ks2=0.5 "速度控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴2"));
  parameter SI.Time Ts2=0.05 
    "速度控制器积分器的时间常数" 
    annotation (Dialog(tab="控制器", group="轴2"));
  parameter Real kp3=5 "位置控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴3"));
  parameter Real ks3=0.5 "速度控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴3"));
  parameter SI.Time Ts3=0.05 
    "速度控制器积分器的时间常数" 
    annotation (Dialog(tab="控制器", group="轴3"));
  parameter Real kp4=5 "位置控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴4"));
  parameter Real ks4=0.5 "速度控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴4"));
  parameter SI.Time Ts4=0.05 
    "速度控制器积分器的时间常数" 
    annotation (Dialog(tab="控制器", group="轴4"));
  parameter Real kp5=5 "位置控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴5"));
  parameter Real ks5=0.5 "速度控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴5"));
  parameter SI.Time Ts5=0.05 
    "速度控制器积分器的时间常数" 
    annotation (Dialog(tab="控制器", group="轴5"));
  parameter Real kp6=5 "位置控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴6"));
  parameter Real ks6=0.5 "速度控制器的增益" 
    annotation (Dialog(tab="控制器", group="轴6"));
  parameter SI.Time Ts6=0.05 
    "速度控制器积分器的时间常数" 
    annotation (Dialog(tab="控制器", group="轴6"));
  Utilities.MechanicalStructure mechanics(
    mLoad=mLoad, 
    rLoad=rLoad, 
    g=g) annotation (Placement(transformation(extent={{40,-30},{100,30}})));
  Modelica.Mechanics.MultiBody.Examples.Systems.RobotR3.Utilities.PathPlanning6 pathPlanning(
    naxis=6, 
    angleBegDeg={startAngle1,startAngle2,startAngle3,startAngle4,startAngle5,startAngle6}, 
    angleEndDeg={endAngle1,endAngle2,endAngle3,endAngle4,endAngle5,endAngle6}, 
    speedMax=refSpeedMax, 
    accMax=refAccMax, 
    startTime=refStartTime, 
    swingTime=refSwingTime) annotation (Placement(transformation(extent={{0,70},{-20,90}})));

  Utilities.AxisType1 axis1(
    w=4590, 
    ratio=-105, 
    c=43, 
    cd=0.005, 
    Rv0=0.4, 
    Rv1=(0.13/160), 
    kp=kp1, 
    ks=ks1, 
    Ts=Ts1) annotation (Placement(transformation(extent={{-20,-60},{0,-40}})));
  Utilities.AxisType1 axis2(
    w=5500, 
    ratio=210, 
    c=8, 
    cd=0.01, 
    Rv1=(0.1/130), 
    Rv0=0.5, 
    kp=kp2, 
    ks=ks2, 
    Ts=Ts2) annotation (Placement(transformation(extent={{-20,-40},{0,-20}})));

  Utilities.AxisType1 axis3(
    w=5500, 
    ratio=60, 
    c=58, 
    cd=0.04, 
    Rv0=0.7, 
    Rv1=(0.2/130), 
    kp=kp3, 
    ks=ks3, 
    Ts=Ts3) annotation (Placement(transformation(extent={{-20,-20},{0,0}})));
  Utilities.AxisType2 axis4(
    k=0.2365, 
    w=6250, 
    D=0.55, 
    J=1.6e-4, 
    ratio=-99, 
    Rv0=21.8, 
    Rv1=9.8, 
    peak=26.7/21.8, 
    kp=kp4, 
    ks=ks4, 
    Ts=Ts4) annotation (Placement(transformation(extent={{-20,0},{0,20}})));
  Utilities.AxisType2 axis5(
    k=0.2608, 
    w=6250, 
    D=0.55, 
    J=1.8e-4, 
    ratio=79.2, 
    Rv0=30.1, 
    Rv1=0.03, 
    peak=39.6/30.1, 
    kp=kp5, 
    ks=ks5, 
    Ts=Ts5) annotation (Placement(transformation(extent={{-20,20},{0,40}})));
  Utilities.AxisType2 axis6(
    k=0.0842, 
    w=7400, 
    D=0.27, 
    J=4.3e-5, 
    ratio=-99, 
    Rv0=10.9, 
    Rv1=3.92, 
    peak=16.8/10.9, 
    kp=kp6, 
    ks=ks6, 
    Ts=Ts6) annotation (Placement(transformation(extent={{-20,40},{0,60}})));
protected
  Utilities.ControlBus controlBus annotation (Placement(transformation(
        origin={-80,0}, 
        extent={{-20,-20},{20,20}}, 
        rotation=90)));
equation
  connect(axis2.flange, mechanics.axis2) annotation (Line(points={{0,-30},{20,-30},{20,-13.5},{40,-13.5}}));
  connect(axis1.flange, mechanics.axis1) annotation (Line(points={{0,-50},{30,-50},{30,-22.5},{40,-22.5}}));
  connect(axis3.flange, mechanics.axis3) annotation (Line(points={{0,-10},{10,-10},{10,-4.5},{40,-4.5}}));
  connect(axis4.flange, mechanics.axis4) annotation (Line(points={{0,10},{10,10},{10,4.5},{40,4.5}}));
  connect(axis5.flange, mechanics.axis5) 
    annotation (Line(points={{0,30},{20,30},{20,13.5},{40,13.5}}));
  connect(axis6.flange, mechanics.axis6) annotation (Line(points={{0,50},{30,50},{30,22.5},{40,22.5}}));
  connect(controlBus, pathPlanning.controlBus) 
                                       annotation (Line(
      points={{-80,0},{-80,80},{-20,80}}, 
      color={255,204,51}, 
      thickness=0.5));
  connect(controlBus.axisControlBus1, axis1.axisControlBus) annotation (
    Text(
      string="%first", 
      index=-1, 
      extent={{-6,3},{-6,3}}), Line(
      points={{-80.1,0.1},{-80.1,-4.5},{-79,-4.5},{-79,-7},{-68,-7},{-68,-50},{-20,-50}}, 
      color={255,204,51}, 
      thickness=0.5));

  connect(controlBus.axisControlBus2, axis2.axisControlBus) annotation (
    Text(
      string="%first", 
      index=-1, 
      extent={{-6,3},{-6,3}}), Line(
      points={{-80.1,0.1},{-79,0.1},{-79,-5},{-64,-5},{-64,-30},{-20,-30}}, 
      color={255,204,51}, 
      thickness=0.5));

  connect(controlBus.axisControlBus3, axis3.axisControlBus) annotation (Text(
      string="%first", 
      index=-1, 
      extent={{-6,3},{-6,3}}), Line(
      points={{-80.1,0.1},{-77,0.1},{-77,-2.5},{-60,-2.5},{-60,-10},{-20,-10}}, 
      color={255,204,51}, 
      thickness=0.5));

  connect(controlBus.axisControlBus4, axis4.axisControlBus) annotation (Text(
      string="%first", 
      index=-1, 
      extent={{-6,3},{-6,3}}), Line(
      points={{-80.1,0.1},{-60,0.1},{-60,10},{-20,10}}, 
      color={255,204,51}, 
      thickness=0.5));
  connect(controlBus.axisControlBus5, axis5.axisControlBus) annotation (
    Text(
      string="%first", 
      index=-1, 
      extent={{-6,3},{-6,3}}), Line(
      points={{-80.1,0.1},{-77,0.1},{-77,3},{-64,3},{-64,30},{-20,30}}, 
      color={255,204,51}, 
      thickness=0.5));
  connect(controlBus.axisControlBus6, axis6.axisControlBus) annotation (
    Text(
      string="%first", 
      index=-1, 
      extent={{-6,3},{-6,3}}), Line(
      points={{-80.1,0.1},{-79,0.1},{-79,5},{-68,5},{-68,50},{-20,50}}, 
      color={255,204,51}, 
      thickness=0.5));
  annotation (
    experiment(StopTime=2), 
    __Dymola_Commands(
      file="modelica://Modelica/Resources/Scripts/Dymola/Mechanics/MultiBody/Examples/Systems/Run.mos" 
        "Simulate", 
      file="modelica://Modelica/Resources/Scripts/Dymola/Mechanics/MultiBody/Examples/Systems/fullRobotPlot.mos" 
        "Plot result of axis 3 + animate"), 
    Documentation(info="<html>
<p>
这个例子对机器人详细模型的运动进行了动画处理，该运动基于随时间变化的预设轴角。
动画使用了CAD数据。
使用默认设置进行翻译和仿真(默认仿真停止时间 = 2秒)。
</p>

<p>
路径规划模块中包含了仿真终止条件。
因此，仿真可以在达到停止时间之前终止。
这个条件取决于关节的起始位置和终止位置，以及它们的参考速度和参考加速度。
对于当前设置，仿真应在停止前恰好满足终止条件。
</p>

<div>
<img src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Examples/Systems/RobotR3/r3_fullRobot.png\" alt=\"model Examples.Systems.RobotR3.FullRobot\">
</div>
</html>"));
end FullRobot;