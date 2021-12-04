from os import listdir
from os.path import isfile, join
import pathlib

from PIL.ImageWin import Window
from kivy.lang import Builder
from kivy.metrics import dp
from kivymd.app import MDApp
from kivymd.theming import ThemableBehavior
from kivymd.uix.boxlayout import MDBoxLayout
from kivymd.uix.button import MDRaisedButton
from kivymd.uix.datatables import MDDataTable
from kivymd.uix.dialog import MDDialog
from kivymd.uix.expansionpanel import MDExpansionPanel, MDExpansionPanelOneLine
from kivymd.uix.filemanager import MDFileManager
from kivymd.uix.spinner import MDSpinner
from kivymd.uix.swiper import MDSwiper, MDSwiperItem

from gui.constants import costants
from kivymd.toast import toast
from kivy.core.window import Window
from kivymd.uix.screen import MDScreen
from kivy.uix.screenmanager import ScreenManager, SwapTransition
import os
from kivymd.uix.behaviors import RoundedRectangularElevationBehavior, HoverBehavior
from kivymd.uix.card import MDCard
from gui.constants.costants import convert_size

from main import main

Window.size = (600, 600)
_fixed_size = (600, 600)  # desired fix size


def reSize(*args):
    Window.size = _fixed_size
    return True


Window.bind(on_resize=reSize)


class MainScreen(MDScreen):
    pass


class FileInfoScreen(MDScreen):
    app = None

    def __init__(self, **kwargs):
        super(FileInfoScreen, self).__init__(**kwargs)

    def on_enter(self, *args):
        row_data = list()
        for id, file in enumerate(self.app.txtFileList):
            row_data.append((id + 1, file.size, str(file.name)))
        self.data_tables = MDDataTable(
            size_hint=(1, .9),
            pos_hint={'top': 1},
            use_pagination=True,
            rows_num=10,
            column_data=[
                ("id", dp(30)),
                ("Peso", dp(30)),
                ("Nome File", dp(100))
            ],
            row_data=row_data,
            elevation=10,
        )
        self.app.dialog.dismiss()

        self.ids.table_layout.add_widget(self.data_tables)

    pass

    def on_leave(self, *args):
        self.ids.table_layout.remove_widget(self.data_tables)


class ImageSliderScreen(MDScreen):
    pass


class FileInfo:
    def __init__(self, name, path, size):
        try:
            self.name = name.decode('ascii')
        except:
            self.name = name
        self.path = path
        self.size = convert_size(size)

    def __str__(self):
        return f'name: {self.name}, path:{self.path}, size:{self.size}'


class MD3Card(MDCard, RoundedRectangularElevationBehavior, ThemableBehavior, HoverBehavior):
    app = None

    # MDCard.hovering = False
    def on_enter(self, *args):

        Window.bind(on_dropfile=self._on_file_drop)

    def on_leave(self, *args):
        Window.unbind(on_dropfile=self._on_file_drop)

    def _on_file_drop(self, window, file_path):
        if not isfile(file_path):
            self.app.dialog.open()
            self.app.compressPath = file_path
            txtFileList = [FileInfo(os.path.basename(f), file_path, os.path.getsize(join(file_path, f))) for f in
                           listdir(file_path) if (isfile(join(file_path, f)) and pathlib.Path(
                    str(f).lower().replace('\'', '')).suffix.__eq__('.txt'))]
            if len(txtFileList) > 0:
                self.app.txtFileList = txtFileList
                self.app.root.current = 'fileInfo'
            else:
                self.app.dialog.dismiss()
                toast("Non ci sono file testuali nella cartella")
        else:
            toast("Cartella non valida")


class MDRaisedButtonHoverable(MDRaisedButton, ThemableBehavior, HoverBehavior):
    def on_enter(self, *args):
        Window.set_system_cursor('hand')

    def on_leave(self, *args):
        Window.set_system_cursor('arrow')


class MySwiper(MDSwiperItem):
    def __init__(self, sourceImage, **kwargs):
        super().__init__(**kwargs)
        self.ids.fitImage.source = sourceImage

    pass


class Content(MDBoxLayout):
    def __init__(self, filePath, **kwargs):
        super().__init__(**kwargs)
        self.adaptive_height = dp(300)
        self.height = dp(400)
        try:
            mdSwiper = MDSwiper()
            imagesFileNames = listdir(filePath)
            for fileName in imagesFileNames:
                mdSwiper.add_widget(MySwiper(join(filePath, fileName)))
            self.add_widget(mdSwiper)

        except NameError:
            pass

    '''Custom content.'''


class CompressionGui(MDApp):
    dialog = None
    compressPath = None

    def __init__(self):
        super().__init__()
        Window.bind(on_keyboard=self.events)
        self.txtFileList: []
        self.file_manager = MDFileManager()
        self.file_manager.exit_manager = self.exit_manager
        self.file_manager.select_path = self.select_path
        self.file_manager.previous = True
        self.screen = Builder.load_file('gui/main.kv')

    def file_manager_open(self):
        currentPath = os.getcwd()
        self.file_manager.show(currentPath)  # output manager to the screen
        self.manager_open = True

    def select_path(self, path):
        '''It will be called when you click on the file name
        or the catalog selection button.

        :type path: str;
        :param path: path to the selected directory or file;
        '''

        self.exit_manager()
        if not isfile(path):
            self.dialog.open()
            self.compressPath = path;

            txtFileList = [FileInfo(os.path.basename(f), path, os.path.getsize(join(path, f))) for f in listdir(path) if
                           (isfile(join(path, f)) and pathlib.Path(str(f).lower().replace('\'', '')).suffix.__eq__(
                               '.txt'))]
            if len(txtFileList) > 0:
                self.txtFileList = txtFileList
                self.root.current = 'fileInfo'
            else:
                self.dialog.dismiss()
                toast("Non ci sono file testuali nella cartella")
        else:
            toast("Cartella non valida")

    def exit_manager(self, *args):
        '''Called when the user reaches the root of the directory tree.'''

        self.manager_open = False
        self.file_manager.close()

    def events(self, instance, keyboard, keycode, text, modifiers):
        '''Called when buttons are pressed on the mobile device.'''

        if keyboard in (1001, 27):
            if self.manager_open:
                self.file_manager.back()
        return True

    def build(self):
        self.theme_cls.colors = costants.colors
        self.theme_cls.primary_palette = "Blue"
        self.theme_cls.accent_palette = "Teal"
        self.title = "COMPRESSION gui"

        sm = ScreenManager(transition=SwapTransition())
        sm.add_widget(MainScreen(name='main'))
        sm.add_widget(FileInfoScreen(name='fileInfo'))
        sm.add_widget(ImageSliderScreen(name='imageSlider'))
        self.create_dialog()
        return sm

    def on_start(self):
        self.root.get_screen('main').ids.upload_card.app = self
        self.root.get_screen('fileInfo').app = self

    def goToUpload(self):
        self.root.current = 'main'
        self.txtFileList: []

    def goToImageSlider(self):
        self.dialog.open()

        main(self.compressPath)

        resultsFileCompressed = listdir('plots');
        for i in resultsFileCompressed:
            self.root.get_screen('imageSlider').ids.box.add_widget(
                MDExpansionPanel(
                    content=Content(join('plots', i)),
                    panel_cls=MDExpansionPanelOneLine(
                        text=f"{i}",
                    )
                )
            )
        self.dialog.dismiss()
        self.root.current = 'imageSlider'

        resultsFileCompressed = listdir('plots');
        for i in resultsFileCompressed:
            self.root.get_screen('imageSlider').ids.box.add_widget(
                MDExpansionPanel(
                    content=Content(join('plots', i)),
                    panel_cls=MDExpansionPanelOneLine(
                        text=f"{i}",
                    )
                )
            )
            self.root.current = 'imageSlider'

    def create_dialog(self):
        self.dialog = MDDialog()
        spinner = MDSpinner()
        spinner.size_hint = (None, None)
        spinner.size = (dp(46), dp(46))
        spinner.pos_hint: {'center_x': .5, 'center_y': .5}
        self.dialog.md_bg_color = (0, 0, 0, 0)
        self.dialog.size = (10000, 10000)
        self.dialog.size_hint = (10000, 10000)
        self.dialog.add_widget(spinner)

    def asyncSpinner(self):
        self.dialog.open()

    def sleepAndDismissSpinner(self):
        self.dialog.dismiss()


CompressionGui().run()
