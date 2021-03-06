import unittest
from appium import webdriver


class ContactAppTestAppium(unittest.TestCase):
    def setUp(self):
        desired_caps = {}
        desired_caps['platformName'] = 'android'
        desired_caps['platformVersion'] = '8.1.0'
        desired_caps['deviceName'] = 'GT-I9500'
        desired_caps['app'] = 'C:\\apk\\sample.apk'
        desired_caps['NoReset'] = True
        self.driver = webdriver.Remote('http://127.0.0.1:4723/wd/hub', desired_caps)

    def test_ClickRefreshLink(self):
        refreshButton = self.driver.find_element_by_id("ar.com.basejuegos.simplealarm:id/newAlarmButton")
        self.assertTrue(refreshButton.is_displayed())
        refreshButton.click()
        self.driver.implicitly_wait(20)


        ## Right now we are just verify the displayed message on the Phone
        ## You can right code to handle that toast message and Verify that message

    def tearDown(self):
        self.driver.quit()


if __name__ == '__main__':
    suite = unittest.TestLoader().loadTestsFromTestCase(ContactAppTestAppium)
    unittest.TextTestRunner(verbosity=2).run(suite)
