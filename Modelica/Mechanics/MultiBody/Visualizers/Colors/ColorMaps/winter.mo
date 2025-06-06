﻿within Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps;
function winter "返回\"winter\"颜色映射"
extends Modelica.Mechanics.MultiBody.Interfaces.partialColorMap;
algorithm
  if n_colors > 1 then
     colorMap := 255*[zeros(n_colors),linspace(0,1,n_colors),linspace(1,0.5,n_colors)];
   else
    colorMap:=[0,0,255];
   end if;

  annotation (Documentation(info="<html>
<h4>语法</h4>
<blockquote><pre>
ColorMaps.<strong>winter</strong>();
ColorMaps.<strong>winter</strong>(n_colors=64);
</pre></blockquote>
<h4>描述</h4>
<p>
该函数返回颜色映射\"winter\"。
颜色映射是一个Real[:,3]数组，其中每一行代表一种颜色。
可选参数\"n_colors\"定义了返回数组的行数。
默认值为\"n_colors=64\"(通常最好n_colors是4的倍数)。
\"winter\"颜色映射的图像：</p>

<blockquote>
<img src=\"modelica://Modelica/Resources/Images/Mechanics/MultiBody/Visualizers/Colors/ColorMaps/winter.png\">
</blockquote>

<h4>参见</h4>
<a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Colors.ColorMaps\">ColorMaps</a>,
<a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Colors.colorMapToSvg\">colorMapToSvg</a>,
<a href=\"modelica://Modelica.Mechanics.MultiBody.Visualizers.Colors.scalarToColor\">scalarToColor</a>.
</html>"));
end winter;