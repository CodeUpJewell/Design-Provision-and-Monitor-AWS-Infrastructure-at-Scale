# Declaring the Python Function lambda_handler with event paramater
import os

def lambda_handler(event, context):
    return "{} from Lambda!".format(os.environ['greeting'])