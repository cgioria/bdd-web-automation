# -*- coding: utf-8 -*-

from behave import *
import pytest
import unittest
from behave import *
from selenium.webdriver.common.keys import Keys
from functions.Functions import Functions as Selenium
from functions.Inicializar import Inicializar
use_step_matcher("re")

class StepsDefinitions():

    @given("Abrir la aplicacion")
    def abrir_navegador(self):
        Selenium.abrir_navegador(self)
        Selenium.page_has_loaded(self)

    @given("Inicializo la app en la URL (.*)")
    def step_impl(self, URL):
        Selenium.abrir_navegador(self, URL=URL)
        Selenium.page_has_loaded(self)

    @given("Abro la app con el navegador (.*)")
    def step_impl(self, navegador):
        Selenium.abrir_navegador(self, navegador=navegador)

    @then("cierro la app")
    def step_impl(self):
        Selenium.tearDown(self)

    @step("Cargo el DOM de la App: (.*)")
    def step_impl(self, DOM):
       Selenium.get_json_file(self, DOM)

    @step("Limpio el campo (.*) con (.*)")
    def step_impl(self, locator,text):
        Selenium.send_especific_keys(self, locator, text)

    @step("En el campo (.*) escribo (.*)")
    def step_impl(self, locator, text):
        Selenium.esperar_elemento(self, locator)
        Selenium.send_key_text(self, locator, text)

    @step("En el num (.*) escribo (.*)")
    def step_impl(self, locator, text):
        Selenium.esperar_elemento(self, locator)
        Selenium.send_key_num(self, locator, text)

    @step("Capturo pantalla: (.*)")
    def step_impl(self, descripcion):
        Selenium.captura(self, descripcion)

    @step("Tomar Captura: (.*)")
    def step_impl(self, Captura):
        Selenium.capturar_pantalla(self, Captura)

    @step("Valido campo (.*) con (.*)")
    def step_impl(self, locator, text):
        Selenium.assert_text(self, locator, text)

    @step("Genera comprobante (.*)")
    def step_impl(self, locator):
        Selenium.assert_notnull(self, locator)

    @step("Chequear campo (.*)")
    def step_impl(self, locator):
        Selenium.check_element(self, locator)

    @step("En el dropdown (.*) selecciono (.*)")
    def step_impl(self, locator, text):
        Selenium.esperar_elemento(self, locator)
        Selenium.select_by_text(self, locator, text)

    @step("En el combobox (.*) selecciono (.*)")
    def step_impl(self, locator, value):
        Selenium.esperar_elemento(self, locator)
        Selenium.get_select_elements(self, locator).select_by_value(value)

    @step("Me desplazo al frame: (.*)")
    def step_impl(self, frame):
        Selenium.switch_to_iframe(self, frame)

    @step("Vuelvo al frame padre")
    def step_impl(self):
         Selenium.switch_to_parentFrame(self)

    @step("Hago clic en (.*)")
    def step_impl(self, locator):
        Selenium.get_elements(self, locator).click()

    @step("Escribo (.*)")
    def step_impl(self, locator):
        Selenium.get_text(self, locator)

    @step("Selecciono en (.*)")
    def step_impl(self, locator):
        Selenium.get_elements(self, locator)

    @step("Paso mouse en (.*)")
    def step_impl(self, locator):
        Selenium.mouse_over(self, locator)

    @step("Cliqueo en Texto: (.*)")
    def step_impl(self, Text):
        Selenium.get_elements(self, "text", MyTextElement=Text).click()

    @then("Hago scroll hacia el elemento: (.*)")
    def step_impl(self, locator):
        Selenium.scroll_to(self, locator)

    @step("Esperar que finalice la carga")
    def step_impl(self):
        Selenium.page_has_loaded(self)


    @step("Cargo archivo: (.*) desde (.*)")
    def step_impl(self, locator,text):
        Selenium.load_file(self,locator)
        Selenium.send_key_text(self, locator,text)

    @step("Cargo archivo: (.*)")
    def step_impl(self, text):
        Selenium.load_file(self,text)




    @step("Espero (.*) segundos")
    def step_impl(self, segundos):
        segundos = int(segundos)
        Selenium.esperar(self, segundos)