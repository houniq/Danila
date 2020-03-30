import os
import sys
import time
import datetime
import speech_recognition as sr
import pyttsx3
import webbrowser
import random
import requests
import json
import pyowm
import wikipedia

from PyQt5 import QtCore, QtGui, QtWidgets

class Ui_Form(object):
    def setupUi(self, Form):
        Form.setObjectName("Form")
        Form.resize(691, 959)
        Form.setMinimumSize(QtCore.QSize(691, 959))
        Form.setMaximumSize(QtCore.QSize(691, 959))
        Form.setContextMenuPolicy(QtCore.Qt.DefaultContextMenu)
        Form.setWindowOpacity(1.0)
        Form.setStyleSheet("")
        self.widget = QtWidgets.QWidget(Form)
        self.widget.setGeometry(QtCore.QRect(-10, -10, 750, 1051))
        self.widget.setMinimumSize(QtCore.QSize(750, 1051))
        self.widget.setMaximumSize(QtCore.QSize(750, 1051))
        self.widget.setStyleSheet("")
        self.widget.setObjectName("widget")
        self.label = QtWidgets.QLabel(self.widget)
        self.label.setGeometry(QtCore.QRect(10, 10, 691, 971))
        self.label.setText("")
        self.label.setPixmap(QtGui.QPixmap("fon.gif"))
        self.label.setScaledContents(True)
        self.label.setObjectName("label")
        self.pushButton = QtWidgets.QPushButton(self.widget)
        self.pushButton.setGeometry(QtCore.QRect(300, 800, 111, 111))
        self.pushButton.setCursor(QtGui.QCursor(QtCore.Qt.PointingHandCursor))
        self.pushButton.setMouseTracking(False)
        self.pushButton.setTabletTracking(False)
        self.pushButton.setContextMenuPolicy(QtCore.Qt.DefaultContextMenu)
        self.pushButton.setAcceptDrops(False)
        self.pushButton.setText("")
        icon = QtGui.QIcon()
        icon.addPixmap(QtGui.QPixmap("5.png"), QtGui.QIcon.Normal, QtGui.QIcon.Off)
        self.pushButton.setIcon(icon)
        self.pushButton.setIconSize(QtCore.QSize(100, 100))
        self.pushButton.setCheckable(False)
        self.pushButton.setChecked(False)
        self.pushButton.setAutoRepeat(False)
        self.pushButton.setAutoExclusive(False)
        self.pushButton.setAutoRepeatDelay(3)
        self.pushButton.setAutoDefault(False)
        self.pushButton.setDefault(False)
        self.pushButton.setFlat(True)
        self.pushButton.setObjectName("pushButton")
        self.textBrowser = QtWidgets.QTextBrowser(self.widget)
        self.textBrowser.setGeometry(QtCore.QRect(40, 380, 411, 171))
        palette = QtGui.QPalette()
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Button, brush)
        brush = QtGui.QBrush(QtGui.QColor(46, 85, 135))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Text, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Base, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Window, brush)
        brush = QtGui.QBrush(QtGui.QColor(46, 85, 135, 128))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.PlaceholderText, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Button, brush)
        brush = QtGui.QBrush(QtGui.QColor(46, 85, 135))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Text, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Base, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Window, brush)
        brush = QtGui.QBrush(QtGui.QColor(46, 85, 135, 128))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.PlaceholderText, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Button, brush)
        brush = QtGui.QBrush(QtGui.QColor(120, 120, 120))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Text, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Base, brush)
        brush = QtGui.QBrush(QtGui.QColor(187, 223, 222))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Window, brush)
        brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 128))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.PlaceholderText, brush)
        self.textBrowser.setPalette(palette)
        font = QtGui.QFont()
        font.setFamily("Times New Roman")
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75)
        self.textBrowser.setFont(font)
        self.textBrowser.setStyleSheet("background-color: rgb(187, 223, 222);\n"
"border: 0;\n"
"")
        self.textBrowser.setObjectName("textBrowser")
        self.textBrowser_2 = QtWidgets.QTextBrowser(self.widget)
        self.textBrowser_2.setGeometry(QtCore.QRect(490, 250, 201, 61))
        palette = QtGui.QPalette()
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Button, brush)
        brush = QtGui.QBrush(QtGui.QColor(197, 235, 234))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Text, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Base, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.Window, brush)
        brush = QtGui.QBrush(QtGui.QColor(197, 235, 234, 128))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Active, QtGui.QPalette.PlaceholderText, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Button, brush)
        brush = QtGui.QBrush(QtGui.QColor(197, 235, 234))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Text, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Base, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.Window, brush)
        brush = QtGui.QBrush(QtGui.QColor(197, 235, 234, 128))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Inactive, QtGui.QPalette.PlaceholderText, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Button, brush)
        brush = QtGui.QBrush(QtGui.QColor(120, 120, 120))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Text, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Base, brush)
        brush = QtGui.QBrush(QtGui.QColor(68, 124, 197))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.Window, brush)
        brush = QtGui.QBrush(QtGui.QColor(0, 0, 0, 128))
        brush.setStyle(QtCore.Qt.SolidPattern)
        palette.setBrush(QtGui.QPalette.Disabled, QtGui.QPalette.PlaceholderText, brush)
        self.textBrowser_2.setPalette(palette)
        font = QtGui.QFont()
        font.setFamily("Times New Roman")
        font.setPointSize(12)
        font.setBold(True)
        font.setWeight(75)
        self.textBrowser_2.setFont(font)
        self.textBrowser_2.setStyleSheet("background-color: rgb(68, 124, 197);\n"
"border: 0")
        self.textBrowser_2.setObjectName("textBrowser_2")

        self.retranslateUi(Form)
        QtCore.QMetaObject.connectSlotsByName(Form)

    def retranslateUi(self, Form):
        _translate = QtCore.QCoreApplication.translate
        Form.setWindowTitle(_translate("Form", "Form"))
        self.textBrowser.setHtml(_translate("Form", "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0//EN\" \"http://www.w3.org/TR/REC-html40/strict.dtd\">\n"
"<html><head><meta name=\"qrichtext\" content=\"1\" /><style type=\"text/css\">\n"
"p, li { white-space: pre-wrap; }\n"
"</style></head><body style=\" font-family:\'Times New Roman\'; font-size:12pt; font-weight:600; font-style:normal;\">\n"
"<p align=\"center\" style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-family:\'MS Shell Dlg 2\'; font-size:7.8pt; font-weight:400;\"><br /></p>\n"
"<p align=\"center\" style=\"-qt-paragraph-type:empty; margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px; font-family:\'MS Shell Dlg 2\'; font-weight:400;\"><br /></p>\n"
"<p align=\"center\" style=\" margin-top:0px; margin-bottom:0px; margin-left:0px; margin-right:0px; -qt-block-indent:0; text-indent:0px;\"><span style=\" font-family:\'MS Shell Dlg 2\'; font-weight:400; color:#2e5587;\">Поговорим?</span></p></body></html>"))


#Опции

opts = {
	'end': ('пока', 'прощай', 'закрыть программу', 'стоп', 'завершить работу'),
	'open_site': ('открыть сайт', 'открой сайт'),
	'location': ('где находится'),
	'weather': ('какая погода', 'прогноз погоды','погода'),
	'on': ('включи музыку' ),
	'news': ('новости на сегодня'),
	'ctime': ('сколько времени', 'который час', 'сколько сейчас времени', 'текущее время'),
	'messg': ('отправь письмо', 'напиши письмо'),
	'name': ('как тебя зовут', 'как тебя звать', 'скажи свое имя', 'назови свое имя', 'как тебя назвали'),
	'opportune': ('что ты умеешь', 'каковы твои возможности', 'что ты можешь','умеешь'),
	'chek': ('ты тут', 'ты здесь', 'меня слышно', 'ты меня слышишь'),
	'show_msg': ('мои письма', 'входящие письма', 'мои сообщения', 'входящие сообщения'),
	'stop': ('остановить поиск', 'выйти из поиска'),
	'wiki': ('расскажи мне о', 'расскажи мне об', 'что ты знаешь о', 'что ты знаешь об', 'что такое'),
	'hello': ('привет', 'здарова', 'приветик', 'давай поговорим')
}
variant = [
	('первый', 'один', 'единица', '1'),
	('второй', 'два', 'двойка', '2'),
	('третий', 'три', 'тройка','3'),
	('четыре', 'четвертый', '4'),
	('пять', '5', 'пятый'),
	('шесть', 'шестой', '6'),
	('семь', 'седьмой', '7'),
	('восемь', 'восьмой', '8'),
	('девять', 'девятый', '9'),
	('десять', 'десятый', '10')
	]
owm = pyowm.OWM('4c44593209768963b49397aba5e9b234', language='ru') #Использую свой ключ API OWM, чтобы получать прогноз погоды

lang = 'ru-en'

#Функции
def speak(what): #Упрощения запроса воспроизвести текст
    print( what )
    speak_engine.say( what )
    speak_engine.runAndWait()
    speak_engine.stop()

def recognz(): #Распознать голос пользователя и перевести в текстовый файл
	r = sr.Recognizer()
	with sr.Microphone(device_index=1) as source: #Важно подключить нужный микрофон
		print('Говорите')
		r.pause_threshold = 1
		r.adjust_for_ambient_noise(source, duration=1)
		audio = r.listen(source, phrase_time_limit = 5) #После прослушки получаем аудио файл // есть еще timeout, не понял точно как он работает но phrase_time_limit после того как слышит голос - начинает записывать в течении указанного времени
	try: #Попробуем этот файл обработать в текстовый
		text = r.recognize_google(audio, language = 'ru-RU').lower()
		print('Вы сказали: ' + text)
		m = text[0]
		m = m.upper()
		ui.textBrowser_2.setText(m + text[1:])
	except sr.UnknownValueError: #В том случае, если голос не распознает
		text = ' '
	return text

def execute_cmd(txt): #Обнаружить команды в полученном тексте и выполнить

	if txt.startswith(opts['end']):
		speak('Выключаюсь')
		sys.exit()

	elif txt.startswith(opts['hello']):
		answ = ['Приветули', 'Приветики пистолетики', 'Добрый день, владыка!', 'И тебе привет']
		answ = answ[random.randint(0,4)] + '. Чего желаете?'
		speak(answ)
		ui.textBrowser.setText(answ)

	elif txt.startswith(opts['weather']):
		ui.textBrowser.setText('Cкажите, в каком городе Вас интересует прогноз погоды?')
		speak('Cкажите, в каком городе Вас интересует прогноз погоды? ')
		city = recognz()
		url = 'https://translate.yandex.net/api/v1.5/tr.json/translate?'
		key = 'trnsl.1.1.20190227T075339Z.1b02a9ab6d4a47cc.f37d50831b51374ee600fd6aa0259419fd7ecd97'
		lang = 'ru-en'
		r = requests.post(url, data={'key': key, 'text': city, 'lang': lang})
		cit = json.loads(r.text)['text'][0]
		reg = owm.city_id_registry()
		n = len(reg.ids_for(cit))
		if n:
			for i in range(n):
				print(i+1, '.', reg.ids_for(cit)[i])
			num = 1
			nom = reg.ids_for(cit)[num - 1][0]
			observation = owm.weather_at_id(nom)
			w = observation.get_weather()
			ui.textBrowser.setText('Сейчас в ' + city + ' ' + w.get_detailed_status() + '\n' + 'Скорость ветра: ' + str(w.get_wind()['speed']) + ' м/c. ' + '\n' + 'Влажность воздуха : '+ str(w.get_humidity()) + ' %' + '\n' + 'Температура воздуха: ' + str(w.get_temperature('celsius')['temp']) +  ' С°')
			speak('Понял, ищу')
			speak('Сейчас в ' + city + ' ' + w.get_detailed_status())
			speak('Скорость ветра: ' + str(w.get_wind()['speed']) + ' метров в секунду')
			speak('Влажность воздуха: '+ str(w.get_humidity()) + ' процентов')
			speak('Температура воздуха: ' + str(w.get_temperature('celsius')['temp']) +  'градусов')
		else:
			speak('Городов с таким названием не существует')
			ui.textBrowser.setText('Городов с таким названием не существует')

	elif txt.startswith(opts['open_site']):
		ui.textBrowser.setText('Cкажите название сайта')
		speak('Cкажите название сайта')
		site = recognz()
		url = 'https://www.' + site
		webbrowser.open(url)

	elif txt.startswith(opts['location']):
		ui.textBrowser.setText('Сейчас покажу, подождите немного.')
		n = txt.find('находится')
		loc = txt[n + 9:].split()
		if not loc:
			speak('Город не распознан')
		else:
			speak('Сейчас покажу, подождите немного.')
			url = 'https://www.google.nl/maps/place/' + loc[0] + '/&amp;'
			webbrowser.open(url)

	elif txt.startswith(opts['on']):
		mp3_list = []
		for root, dirs, files in os.walk('C:/Users/'):
			for file in files:
				if file.endswith('.mp3'):
					mp3_list.append(os.path.join(root, file))
		mp3=''
		c = 0
		files = list()
		way = list()
		for i in mp3_list:
			c += 1
			n = i.rfind('\\')
			mp3 = mp3 + str(c) + '.' + i[n + 1:] + '\n'
		ui.textBrowser.setText(mp3)
		speak('Выберите и скажите цифру-номер аудио файла. И да, не все файлы тут могут оказаться музыкой.')

		b = False
		while not b:
			answ = recognz()
			if answ.startswith(opts['stop']):
				pass
			try:
				if answ:
					answ = int(answ)-1
					b = True
			except:
				speak('Повторите попытку')
		if b:
			n = mp3_list[answ].rfind('\\')
			way = mp3_list[answ][:n + 1]
			fil = mp3_list[answ][n + 1:]
			speak('Принято, запускаю аудиофайл.')
			os.system(way + '"' + fil + '"')

	elif txt.startswith(opts['messg']):
		url = 'https://e.mail.ru/compose/'
		webbrowser.open(url)

	elif txt.startswith(opts['show_msg']):
		url = 'https://e.mail.ru/'
		webbrowser.open(url)

	elif txt.startswith(opts['ctime']):
		now = datetime.datetime.now()
		print(now)
		ttime = str(now)
		if ttime[len(ttime)-12] == '1': end = ' минута'
		elif ttime[len(ttime)-12] == '2'or '3' or'4':	end = ' минуты'
		else: end = ' минут'
		speak('Сейчас ' + str(now.hour) + ' часов ' + str(now.minute) + end)
		ui.textBrowser.setText('Сейчас ' + str(now.hour) + ' часов ' + str(now.minute) + end)

	elif txt.startswith(opts['wiki']):
		for i in opts['wiki']:
			if i in txt:
				fnd = i
		wikipedia.set_lang(u'ru')
		n = len(fnd)
		txt = txt[n:]
		try:
			ny = wikipedia.page(txt)
			ui.textBrowser.setText(ny.content[:400])
			speak(ny.content[:400])
			time.sleep(5)
			speak('Хотите узнать больше?')
			b = False
			while not b:
				answ = recognz()
				if 'да' in answ:
					url = ny.url
					webbrowser.open(url)
					b  = True
				elif 'нет' in answ:
					speak('Нет так нет')
					ui.textBrowser.setText('Нет так нет')
					b = True
				else:
					speak('не понял ответа, пожалуста, повторите')
		except:
			print('По вашему запросу ничего не найдено')
			ui.textBrowser.setText('По вашему запросу ничего не найдено')

	elif txt.startswith(opts['name']):
		speak('Мои разработчики дали мне имя ДАВИД')
		ui.textBrowser.setText('Мои разработчики дали мне имя ДАВИД')

	elif txt.startswith(opts['opportune']):
		ui.textBrowser.setText('Я могу показать вам прогноз погоды \nОткрыть сайт и закрыть его \nОткрыть новое письмо на почте \nПоказать входящие сообщения \nНазвать текущее время \nВключить музыку на вашем устройстве \nПоказать где находится интересующее вас место')
		speak('Я могу показать вам прогноз погоды')
		speak('Открыть сайт и закрыть его')
		speak('Открыть новое письмо на почте')
		speak('Показать входящие сообщения или почту')
		speak('Назвать текущее время')
		speak('Включить музыку на вашем устройстве')
		speak('Показать где находится интересующее вас место')
		speak('Не ответить вам')
		speak('Сломаться в ненужный момент')
		speak('Выключиться по вашей команде')


	elif txt.startswith(opts['chek']):
		speak('Да')

	else:
		speak('Команда не распознана')
	global stt


def butt():
	stt = 'start'
#	while True:
	if 'start' in stt:
		execute_cmd(recognz())

speak_engine = pyttsx3.init()

#Если подключен голос то вводим следующие строки
voices = speak_engine.getProperty('voices')
speak_engine.setProperty('voice', 'ru')
for voice in voices:
	if voice.name == 'IVONA 2 Maxim OEM':
		speak_engine.setProperty('voice', voice.id)


app = QtWidgets.QApplication(sys.argv)
Form = QtWidgets.QWidget()
ui = Ui_Form()
ui.setupUi(Form)
Form.show()

ui.pushButton.clicked.connect( butt )

now = datetime.datetime.now()
if 3 < now.hour < 12:
	speak('Доброе утро')
elif 12 < now.hour < 18:
	speak('Добрый день!')
else:
	speak('Добрый вечер')

sys.exit(app.exec_())


