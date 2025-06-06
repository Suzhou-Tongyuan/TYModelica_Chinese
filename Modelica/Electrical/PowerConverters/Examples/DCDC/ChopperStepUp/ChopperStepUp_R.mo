﻿within Modelica.Electrical.PowerConverters.Examples.DCDC.ChopperStepUp;
model ChopperStepUp_R "带电阻负载的升压斩波器"
  extends ExampleTemplates.ChopperStepUp(signalPWM(useConstantDutyCycle=false));
  extends Modelica.Icons.Example;
  Modelica.Electrical.Analog.Basic.Resistor loadResistor(R=RLoad) 
    annotation (
      Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=270, 
        origin={40,40})));
  PowerConverters.DCDC.Control.Voltage2DutyCycle adaptor(
    reciprocal=true, 
    useBipolarVoltage=false, 
    VLim=Vsource) annotation (Placement(transformation(
        extent={{-10,-10},{10,10}}, 
        rotation=90, 
        origin={-70,-60})));
  Modelica.Blocks.Sources.Ramp vRef(
    height=V0 - Vsource, 
    duration=0.05, 
    offset=Vsource, 
    startTime=0.025) 
    annotation (Placement(transformation(extent={{100,-90},{80,-70}})));
equation
  connect(loadResistor.n, currentSensor.p) 
    annotation (Line(points={{40,30},{40,-10},{30,-10}}, color={0,0,255}));
  connect(loadResistor.p, capacitor.p) annotation (Line(points={{40,50},{40,60}, 
          {1.77636e-15,60},{1.77636e-15,10}}, color={0,0,255}));
  connect(adaptor.dutyCycle, signalPWM.dutyCycle) 
    annotation (Line(points={{-70,-49},{-70,-40},{-42,-40}}, color={0,0,127}));
  connect(vRef.y, adaptor.v) 
    annotation (Line(points={{79,-80},{-70,-80},{-70,-72}}, color={0,0,127}));
  annotation (
    experiment(
      StopTime=0.1, 
      Interval=1e-05, 
      Tolerance=1e-06), 
    Documentation(info="<html>
<p>此示例演示了由升压斩波器操作的电阻性负载的开关。
直流输出电压等于<code>1/(1 - dutyCycle)</code>乘以输入电压。
绘制电流<code>currentSensor.i</code>、平均电流<code>meanCurrent.y</code>、总电压<code>voltageSensor.v</code>和电压<code>meanVoltage.v</code>。</p>
</html>"));
end ChopperStepUp_R;