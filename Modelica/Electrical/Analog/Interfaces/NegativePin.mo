within Modelica.Electrical.Analog.Interfaces;
connector NegativePin "电气元件的负极引脚"
  SI.ElectricPotential v "引脚处的电势" annotation(
    unassignedMessage = "无法唯一计算电势。可能的原因包括：
- 缺少地接对象(Modelica.Electrical.Analog.Basic.Ground)以定义电路的零电势，或
- 某个电气元件的连接器未连接。");
  flow SI.Current i "流入引脚的电流" annotation(
    unassignedMessage = "无法唯一计算电流。可能的原因包括：
- 缺少地接对象(Modelica.Electrical.Analog.Basic.Ground)以定义电路的零电势，或
- 某个电气元件的连接器未连接。");
  annotation(defaultComponentName = "pin_n", 
    Documentation(info = "<html>
<p>PositivePin和NegativePin几乎是相同的。唯一的区别是图标不同，以便更容易识别元件的引脚。通常，PositivePin用于元件的正极，而NegativePin用于元件的负极。
</p>

</html>", 
    revisions = "<html>
<dl>
<dt><em>1998</em></dt>
<dd>由Christoph Clauss初版创建
</dd>
</dl>
</html>"), 
    Icon(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {100, 
    100}}), graphics = {Rectangle(
    extent = {{-100, 100}, {100, -100}}, 
    lineColor = {0, 0, 255}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid)}), 
    Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100, -100}, {
    100, 100}}), graphics = {Rectangle(
    extent = {{-40, 40}, {40, -40}}, 
    lineColor = {0, 0, 255}, 
    fillColor = {255, 255, 255}, 
    fillPattern = FillPattern.Solid), Text(
    extent = {{-40, 110}, {160, 50}}, 
    textString = "%name", 
    textColor = {0, 0, 255})}));
end NegativePin;