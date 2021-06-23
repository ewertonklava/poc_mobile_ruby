class AcessarScreen < Commons::PageBase
  def click_button_ok
    id_element('android:id/button1').click
  end

  def fill_lado1(lado1)
    id_element('com.eliasnogueira.trianguloapp:id/txtLado1').send_keys(lado1)
  end

  def fill_lado2(lado2)
    id_element('com.eliasnogueira.trianguloapp:id/txtLado2').send_keys(lado2)
  end

  def fill_lado3(lado3)
    id_element('com.eliasnogueira.trianguloapp:id/txtLado3').send_keys(lado3)
  end

  def click_button_calcular
    id_element('com.eliasnogueira.trianguloapp:id/btnCalcular').click
  end

  def resultado
    id_element('com.eliasnogueira.trianguloapp:id/txtResultado')
  end

end

