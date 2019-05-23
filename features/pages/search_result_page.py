from selenium.webdriver.common.by import By

from features.pages.base_page import BasePage


class SearchResultPage(BasePage):
    BUTTON_FOLLOW = (By.XPATH, "//button[text() = 'Follow']")

    def _verify_page(self):
        self.on_this_page(self.BUTTON_FOLLOW)

    def click_follow_button(self):
        self.click_on(self.BUTTON_FOLLOW)

    def get_button_text(self):
        return self.get_text(self.BUTTON_FOLLOW)
