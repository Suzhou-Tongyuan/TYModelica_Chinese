﻿within Modelica.Electrical.QuasiStatic.Machines.BasicMachines.Transformers.Yy;
model Yy06 "变压器 Yy6"

  extends QuasiStatic.Machines.Interfaces.PartialBasicTransformer(final
      VectorGroup="Yy06");
  QuasiStatic.Polyphase.Basic.Star star1(final m=m) annotation (Placement(
        transformation(
        origin={-10,-80}, 
        extent={{-10,-10},{10,10}}, 
        rotation=270)));
  QuasiStatic.SinglePhase.Interfaces.NegativePin starpoint1 
    annotation (Placement(transformation(extent={{-60,-110},{-40,-90}})));
  QuasiStatic.Polyphase.Basic.Star star2(final m=m) annotation (Placement(
        transformation(
        origin={10,-80}, 
        extent={{-10,-10},{10,10}}, 
        rotation=270)));
  QuasiStatic.SinglePhase.Interfaces.NegativePin starpoint2 
    annotation (Placement(transformation(extent={{40,-110},{60,-90}})));
equation
  connect(star1.pin_n, starpoint1) annotation (Line(points={{-10,-90},{
          -10,-100},{-50,-100}}, color={85,170,255}));
  connect(star2.pin_n, starpoint2) annotation (Line(points={{10,-90},{
          10,-100},{50,-100}}, color={85,170,255}));
  connect(l1sigma.plug_n, core.plug_p1) annotation (Line(points={{-50,0},{-50,20},{-10,20},{-10,10}}, 
                                      color={85,170,255}));
  connect(core.plug_n1, star1.plug_p) annotation (Line(points={{-10,-10},{-10,-10},{-10,-70},{-10,-70}}, 
                                            color={85,170,255}));
  connect(core.plug_n2, core.plug_p3) 
    annotation (Line(points={{10,4},{10,-4}}, color={85,170,255}));
  connect(l2sigma.plug_p, core.plug_n3) annotation (Line(points={{50,0}, 
          {50,-20},{10,-20},{10,-10}}, color={85,170,255}));
  connect(core.plug_p2, star2.plug_p) annotation (Line(points={{10,10}, 
          {20,10},{20,-70},{10,-70}}, color={85,170,255}));
  annotation (defaultComponentName="transformer", Documentation(info="<html>
变压器 Yy6
<br>典型参数见：
<a href=\"modelica://Modelica.Electrical.Machines.Interfaces.PartialBasicTransformer\">PartialBasicTransformer</a>
</html>"));
end Yy06;