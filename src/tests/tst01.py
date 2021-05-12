import time
import unittest
from selenium.webdriver.common.keys import Keys
from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import Select

class Exam(unittest.TestCase):

    def setUp(self):
        self.driver = webdriver.Chrome(executable_path=r"C:\Proyectos\Supervielle\Recaudaciones\src\drivers\chromedriver.exe")
        self.driver.maximize_window()
        self.driver.get('http://www.mercadolibre.com.ar')
        self.driver.title

    def test_search_by_cat(self):

        action = ActionChains(self.driver)

        #Abre combo
        combo = self.driver.find_element_by_xpath("//a[@class='nav-menu-categories-link']")
        action.move_to_element(combo).perform()
        combo2 = self.driver.find_element_by_xpath("//a[contains(text(),'Tecnología')]")
        action.move_to_element(combo2).perform()
        combo3 =self.driver.find_element_by_xpath("//a[contains(text(), 'TVs')]")
        combo3.click()

        #Ordena producto
        combo_precios = self.driver.find_element_by_xpath("//label[@class='ui-dropdown__link']")
        combo_precios.click()
        precios_min = self.driver.find_element_by_xpath("(//a[contains(@class,'ui-list__item-option')])[1]")
        precios_min.click()
        time.sleep(5)
        html = self.driver.find_element_by_tag_name('html')
        html.send_keys(Keys.END)
        time.sleep(5)

        #Carga productos
        productos = self.driver.find_elements_by_xpath("//span[@class ='price__fraction']")
        flag=False
        for product in productos:
            print(product.text)
            if product.text == "46.999":
                flag=True
                print(flag)

        self.assertTrue(flag,msg="x aca")
        #self.assert(flag,"aza")


        #combo = self.driver.find_element_by_xpath("//li/a[@data-order=0]")
        time.sleep(10)


    def tearDown(self):
            # close the browser window
            self.driver.close()
            self.driver.quit()

    if __name__ == '__main__':
            unittest.main(verbosity=2)