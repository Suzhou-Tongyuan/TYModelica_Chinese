within Modelica.Electrical.Analog.Interfaces;
connector PositivePin "电气元件的正极引脚"
  SI.ElectricPotential v "引脚处的电势" annotation(
    unassignedMessage = "无法唯一计算电势。可能的原因包括：
- 缺少地接对象(Modelica.Electrical.Analog.Basic.Ground)以定义电路的零电势，或
- 某个电气元件的连接器未连接。");
  flow SI.Current i "流入引脚的电流" annotation(
    unassignedMessage = "无法唯一计算电流。可能的原因包括：
- 缺少地接对象(Modelica.Electrical.Analog.Basic.Ground)以定义电路的零电势，或
- 某个电气元件的连接器未连接。");
  annotation(defaultComponentName = "pin_p", 
    Documentation(info = "<html>
<p>正引脚(PositivePin)和负引脚(NegativePin)几乎相同。唯一的区别是图标不同，以便用户能更容易识别组件的引脚。通常，正引脚用于电气组件的正极，而负引脚用于电气组件的负极。
</p>
</html>", revisions = "<html>
<ul>
<li><em> 1998   </em>
       由Christoph Clauss<br>初版创建<br>
       </li>
</ul>
</html>"), 
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 
    100}}), graphics = {Rectangle(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {0, 0, 255}, 
    fillColor = {0, 0, 255}, 
    fillPattern = FillPattern.Solid)}), 
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {
    100, 100}}), graphics = {Rectangle(
    extent = {{-40, 40}, {40, -40}}, 
    lineColor = {0, 0, 255}, 
    fillColor = {0, 0, 255}, 
    fillPattern = FillPattern.Solid), Text(
    extent = {{-160, 110}, {40, 50}}, 
    textColor = {0, 0, 255}, 
    textString = "%name")}));
end PositivePin;