import logging

# Create a logger for book search and suggestion processes
logger = logging.getLogger("booksearch")

# Create a file handler
handler = logging.FileHandler("books.log")

# Create a formatter and set it to the handler
formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
handler.setFormatter(formatter)

# Add the handler to the logger
logger.addHandler(handler)

# Set the logging level
logger.setLevel(logging.DEBUG)