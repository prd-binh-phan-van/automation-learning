from SeleniumLibrary import SeleniumLibrary

class OpenBrower(SeleniumLibrary):
    
    def open_custom_browser(self, url, browser, options=None):
        if options:
            self.open_browser(url, browser, options=options)
        else:
            self.open_browser(url, browser)


from selenium import webdriver
from selenium.webdriver.chrome.options import Options

def get_chrome_options():
    chrome_options = Options()
    chrome_options.add_argument("--headless")  # Chạy ở chế độ headless
    chrome_options.add_argument("--no-sandbox")  # Tuỳ chọn bổ sung nếu cần
    chrome_options.add_argument("--disable-dev-shm-usage")  # Tuỳ chọn bổ sung
    return chrome_options

