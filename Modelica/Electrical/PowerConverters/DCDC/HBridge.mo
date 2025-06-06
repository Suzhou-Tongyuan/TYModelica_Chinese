﻿within Modelica.Electrical.PowerConverters.DCDC;
model HBridge "H桥(四象限变换器)"
  extends Icons.Converter;
  extends PowerConverters.Interfaces.DCDC.DCtwoPin1;
  extends PowerConverters.Interfaces.DCDC.DCtwoPin2;
  extends Modelica.Electrical.Analog.Interfaces.ConditionalHeatPort(final T= 
       293.15);
  parameter SI.Resistance RonTransistor=1e-05 
    "晶体管闭合电阻";
  parameter SI.Conductance GoffTransistor=1e-05 
    "晶体管开启电导";
  parameter SI.Voltage VkneeTransistor=0 
    "晶体管阈值电压";
  parameter SI.Resistance RonDiode=1e-05 
    "二极管闭合电阻";
  parameter SI.Conductance GoffDiode=1e-05 
    "二极管开启电导";
  parameter SI.Voltage VkneeDiode=0 "二极管阈值电压";
  extends Interfaces.Enable.Enable2;
  DCAC.SinglePhase2Level inverter_p(
    final RonTransistor=RonTransistor, 
    final GoffTransistor=GoffTransistor, 
    final VkneeTransistor=VkneeTransistor, 
    final RonDiode=RonDiode, 
    final GoffDiode=GoffDiode, 
    final VkneeDiode=VkneeDiode, 
    final useHeatPort=useHeatPort) 
    annotation (Placement(transformation(extent={{-20,20},{0,40}})));
  DCAC.SinglePhase2Level inverter_n(
    final RonTransistor=RonTransistor, 
    final GoffTransistor=GoffTransistor, 
    final VkneeTransistor=VkneeTransistor, 
    final RonDiode=RonDiode, 
    final GoffDiode=GoffDiode, 
    final VkneeDiode=VkneeDiode, 
    final useHeatPort=useHeatPort) 
    annotation (Placement(transformation(extent={{-58,-40},{-38,-20}})));
  Modelica.Blocks.Interfaces.BooleanInput fire_p 
    "正电位臂的触发信号" annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}}, 
        rotation=90, 
        origin={-60,-120})));
  Modelica.Blocks.Interfaces.BooleanInput fire_n 
    "负电位臂的触发信号" annotation (Placement(
        transformation(
        extent={{-20,-20},{20,20}}, 
        rotation=90, 
        origin={60,-120})));
equation
  if not useHeatPort then
    LossPower = inverter_p.LossPower + inverter_n.LossPower;
  end if;
  connect(inverter_n.heatPort, heatPort) annotation (Line(
      points={{-48,-40},{-48,-70},{-10,-70},{-10,-100},{0,-100}}, color={191,0,0}));
  connect(inverter_p.heatPort, heatPort) annotation (Line(
      points={{-10,20},{-10,-100},{0,-100}}, color={191,0,0}));
  connect(dc_p1, inverter_p.dc_p) annotation (Line(
      points={{-100,60},{-70,60},{-70,36},{-20,36}}, color={0,0,255}));
  connect(dc_p1, inverter_n.dc_p) annotation (Line(
      points={{-100,60},{-70,60},{-70,-24},{-58,-24}}, color={0,0,255}));
  connect(dc_n1, inverter_n.dc_n) annotation (Line(
      points={{-100,-60},{-80,-60},{-80,-36},{-58,-36}}, color={0,0,255}));
  connect(dc_n1, inverter_p.dc_n) annotation (Line(
      points={{-100,-60},{-80,-60},{-80,24},{-20,24}}, color={0,0,255}));
  connect(inverter_p.ac, dc_p2) annotation (Line(
      points={{0,30},{100,30},{100,60}}, color={0,0,255}));
  connect(inverter_n.ac, dc_n2) annotation (Line(
      points={{-38,-30},{100,-30},{100,-60}}, color={0,0,255}));
  connect(andCondition_n.y, inverter_p.fire_n) annotation (Line(
      points={{60,-69},{60,-50},{-4,-50},{-4,18}}, color={255,0,255}));
  connect(andCondition_n.y, inverter_n.fire_p) annotation (Line(
      points={{60,-69},{60,-50},{-54,-50},{-54,-42}}, color={255,0,255}));
  connect(andCondition_p.y, inverter_n.fire_n) annotation (Line(
      points={{-60,-69},{-60,-60},{-42,-60},{-42,-42}}, color={255,0,255}));
  connect(andCondition_p.y, inverter_p.fire_p) annotation (Line(
      points={{-60,-69},{-60,-60},{-16,-60},{-16,18}}, color={255,0,255}));
  annotation (defaultComponentName="dcdc", 
    Icon(graphics={
        Rectangle(
          extent={{-40,40},{40,-40}}, 
          lineColor={255,255,255}, 
          fillColor={255,255,255}, 
          fillPattern=FillPattern.Solid), 
        Text(
          extent={{0,-50},{100,-70}}, 
          textColor={0,0,255}, 
          textString="直流输出"), 
        Text(
          extent={{-100,70},{0,50}}, 
          textColor={0,0,255}, 
          textString="直流输入"), 
        Line(
          points={{-40,0},{-28,0}}, 
          color={0,0,255}), 
        Line(
          points={{-28,20},{-28,-20}}, 
          color={0,0,255}), 
        Line(
          points={{-20,20},{-20,-20}}, 
          color={0,0,255}), 
        Line(
          points={{-20,4},{0,24},{0,40}}, 
          color={0,0,255}), 
        Line(
          points={{-20,-4},{0,-24},{0,-40}}, 
          color={0,0,255}), 
        Line(
          points={{-4,-20},{-10,-8},{-16,-14},{-4,-20}}, 
          color={0,0,255}), 
        Line(
          points={{0,-24},{10,-24},{10,24},{0,24}}, 
          color={0,0,255}), 
        Line(
          points={{0,8},{20,8}}, 
          color={0,0,255}), 
        Line(
          points={{10,8},{0,-8},{20,-8},{10,8}}, 
          color={0,0,255})}), 
    Documentation(info="<html>
<p>
H桥是一个四象限直流/直流变换器。它由两个单相直流/交流变换器组成，其控制方式不同；见图&nbsp;1。</p>

<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <caption align=\"bottom\"><strong>图. 1：</strong> H桥</caption>
  <tr>
    <td>
      <img src=\"modelica://Modelica/Resources/Images/Electrical/PowerConverters/Hbridge.png\">
    </td>
  </tr>
</table>

<p>如果触发输入 <code>fire_p</code> 和 <code>fire_n</code> 是反向的，则两个臂被对称地控制，以便产生完整的正或负输出电压。参见示例
<a href=\"modelica://Modelica.Electrical.PowerConverters.Examples.DCDC.HBridge\">DCDC.HBridge</a>。
</p>
</html>"));
end HBridge;