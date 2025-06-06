﻿within Modelica.Electrical.QuasiStatic.Polyphase.Basic;
model PlugToPin_p "连接一个（正）引脚"
  parameter Integer m(final min=1) = 3 "相数" annotation(Evaluate=true);
  parameter Integer k(
    final min=1, 
    final max=m) = 1 "相索引" annotation(Evaluate=true);
  Interfaces.PositivePlug plug_p(final m=m) annotation (Placement(
        transformation(extent={{-30,-10},{-10,10}})));
  QuasiStatic.SinglePhase.Interfaces.PositivePin pin_p 
    annotation (Placement(transformation(extent={{10,-10},{30,10}})));
equation
  Connections.branch(plug_p.reference, pin_p.reference);
  //Connections.potentialRoot(plug_p.reference);
  //Connections.potentialRoot(pin_p.reference);
  plug_p.reference.gamma = pin_p.reference.gamma;
  pin_p.v = plug_p.pin[k].v;
  for j in 1:m loop
    plug_p.pin[j].i = if j == k then -pin_p.i else Complex(0);
  end for;
  annotation (defaultComponentName="plugToPin", Icon(graphics={Rectangle(
              extent={{-20,20},{40,-20}}, 
              fillColor={215,215,215}, 
              fillPattern=FillPattern.Solid),Ellipse(
              extent={{-40,20},{0,-20}}, 
              fillColor={215,215,215}, 
              fillPattern=FillPattern.Solid), 
        Text(
          extent={{-150,50},{150,90}}, 
              textString="%name", 
          textColor={0,0,255}), 
        Text(
          extent={{-150,-40},{150,-80}}, 
              textString="k = %k")}), Documentation(info="<html>
<p>
连接多相（正）插头的单相（正）引脚<code>k</code>到单相（正）引脚。
</p>
<h4>另请参见</h4>
<p>
<a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Basic.PlugToPin_n\">PlugToPin_n</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Basic.PlugToPins_p\">PlutToPins_p</a>,
<a href=\"modelica://Modelica.Electrical.QuasiStatic.Polyphase.Basic.PlugToPins_n\">PlugToPins_n</a>
</p>
</html>"));
end PlugToPin_p;