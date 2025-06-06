﻿within Modelica.Magnetic.QuasiStatic.FundamentalWave.Components;
model Ground "地面磁"

  FundamentalWave.Interfaces.PositiveMagneticPort port_p 
    "复磁口" annotation (Placement(transformation(extent={{-10, 
            90},{10,110}})));
equation
  Connections.potentialRoot(port_p.reference, 254);
  if Connections.isRoot(port_p.reference) then
    port_p.reference.gamma = 0;
  end if;
  port_p.V_m = Complex(0, 0);
  annotation (
    Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100}, 
            {100,100}}), graphics={Line(points={{0,100},{0,50}}, color={255,170,85}), 
          Line(points={{-60,50},{60,50}}, color={255,170,85}),Line(
          points={{-40,30},{40,30}}, color={255,170,85}),Line(points={{-20, 
          10},{20,10}}, color={255,170,85})}), 
    Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{
            100,100}}), graphics={
        Line(points={{0,100},{0,50}}, color={255,170,85}), 
        Line(points={{-60,50},{60,50}}, color={255,170,85}), 
        Line(points={{-40,30},{40,30}}, color={255,170,85}), 
        Line(points={{-20,10},{20,10}}, color={255,170,85}), 
        Text(
          extent={{150,-10},{-150,-50}}, 
          textColor={0,0,255}, 
          textString="%name")}), 
    Documentation(info="<html>

<p>
复磁势的接地。每个磁路必须至少在电路的一个点接地.
</p>

</html>"));
end Ground;