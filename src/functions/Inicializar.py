import os

class Inicializar():
    # Directorio Base
    basedir = os.path.abspath(os.path.join(__file__, "../.."))
    DateFormat = '%d/%m/%Y'
    HourFormat = "%H%M%S"

    # JsonData
    Json = basedir + u"/pages"

    Environment = 'Win'

    # BROWSER DE PRUEBAS
    NAVEGADOR = u'CHROME'

    # DIRECTORIO DE LA EVIDENCIA
    Path_Evidencias = basedir + u'/data/capturas'

    # HOJA DE DATOS EXCEL
    Excel = basedir + u'/data/DataTest.xlsx'

    if Environment == 'Win':
        URL = 'http://10.241.166.62:8008/obe/login'
        User = 'andrusaba'
        Pass = 'Info1212'
        DB_HOST = 'localhost'
        DB_PORT = '5432'
        DB_DATABASE = 'curso_api'
        DB_USER = 'postgres'
        DB_PASS = 'postgres'
        URLPAGO='https://10.241.161.205:44301/pago/publicacion?2uxIWLGpQuSlA0FKcLLmAzH2lYE6E%2fBEsxcJj5xSa5M%3dC'
        #Chrome_browser = "chrome_options=options,executable_path = Inicializar.basedir + "+'"/drivers/chromedriver.exe"'+ ""


    if Environment == 'Lin':
        URL = 'http://10.241.166.62:8008/obe/login'
        User = 'andrusaba'
        Pass = 'Info1212'
        DB_HOST = 'localhost'
        DB_PORT = '5432'
        DB_DATABASE = 'curso_api'
        DB_USER = 'postgres'
        DB_PASS = 'postgres'
        URLPAGO='https://10.241.161.205:44301/pago/publicacion?2uxIWLGpQuSlA0FKcLLmAzH2lYE6E%2fBEsxcJj5xSa5M%3dC'
        Chrome_browser="chrome_options=options"

    if Environment == 'Test':
        URL = ''
        User = 'mdiaz'
        Pass = 'Mm121666'