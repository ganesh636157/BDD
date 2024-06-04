from behave import given, when ,then
import time
from selenium import webdriver
from selenium.webdriver.common.by import By
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.chrome.service import Service as ChromeService
@given('launch chrome')
def step_impl(context):
    context.driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
    context.driver.implicitly_wait(10)

@when('open the website')
def step_impl(context):
    context.driver.get("https://rahulshettyacademy.com/seleniumPractise/#/")
    context.driver.maximize_window()


@then('verify the title')
def step_impl(context):
    title_name=context.driver.title
    print(title_name)

@then('search with keyword "{Key}"')
def key_imp(context,Key):
    context.driver.find_element(By.XPATH,"//input[@class='search-keyword']").send_keys(Key)
    time.sleep(4)

@then('close the browser')
def step_impl(context):
    context.driver.close()