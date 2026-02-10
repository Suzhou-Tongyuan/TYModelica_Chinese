within Modelica.Electrical.Polyphase.Functions;
function symmetricOrientation 
  "结果基波场相量的方向"
  extends Modelica.Icons.Function;
  input Integer m "相数";
  output SI.Angle orientation[m] 
    "结果基波场相量方向";
  import Modelica.Constants.pi;
algorithm
  if mod(m, 2) == 0 then
    // Even number of phases
    if m == 2 then
      // Special case two phase machine
      orientation[1] := 0;
      orientation[2] := +pi/2;
    else
      orientation[1:integer(m/2)] := symmetricOrientation(integer(m/2));
      orientation[integer(m/2) + 1:m] := symmetricOrientation(integer(m/2)) 
         - fill(pi/m, integer(m/2));
    end if;
  else
    // Odd number of phases
    orientation := {(k - 1)*2*pi/m for k in 1:m};
  end if;
  annotation (Documentation(info="<html>
<p>
该函数确定具有m相的对称绕组的方向角度。
</p>
<h4>参见</h4>
<p>
<a href=\"modelica://Modelica.Electrical.Polyphase.UsersGuide.PhaseOrientation\">用户指南</a>关于对称分量和方向的内容。
</p>
</html>"));
end symmetricOrientation;