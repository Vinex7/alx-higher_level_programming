# Python - Almost a circle

![Circle](https://s3.amazonaws.com/intranet-projects-files/holbertonschool-higher-level_programming+/331/giphy.mp4)

In this project, I applied my skills in Python object-oriented programming by implementing three connected classes to represent rectangles and squares. I created a custom test suite using the `unittest` module to thoroughly test the functionality of each class.

The project involves the use of various Python tools, including:
* Import
* Exceptions
* Private attributes
* Getter/setter
* Class/static methods
* Inheritance
* File I/O
* `args`/`kwargs`
* JSON and CSV serialization/deserialization
* Unittesting

## Tests :heavy_check_mark:

* [tests/test_models](./tests/test_models): This folder contains independently-developed test files:
  * [test_base.py](./tests/test_models/test_base.py)
  * [test_rectangle.py](./tests/test_models/test_rectangle.py)
  * [test_square.py](./tests/test_models/test_square.py)

## Classes :cl:

### Base
Represents the "base" class for all other classes in the project. It includes:

* A private class attribute `__nb_objects = 0`.
* A public instance attribute `id`.
* A class constructor `def __init__(self, id=None):` that increments `__nb_objects` and assigns its value to the public instance attribute `id` if `id` is `None`. Otherwise, it sets `id` to the provided value.
* A static method `def to_json_string(list_dictionaries):` that returns the JSON string serialization of a list of dictionaries. If `list_dictionaries` is `None` or empty, it returns the string `"[]"`.
* A class method `def save_to_file(cls, list_objs):` that writes the JSON serialization of a list of objects to a file. The file is saved with the name `<cls name>.json` (e.g., `Rectangle.json`). It overwrites the file if it already exists.
* A static method `def from_json_string(json_string):` that returns a list of objects deserialized from a JSON string. If `json_string` is `None` or empty, it returns an empty list.
* A class method `def create(cls, **dictionary):` that instantiates an object with provided attributes.
* A class method `def load_from_file(cls):` that returns a list of objects instantiated from a JSON file. If the file does not exist, the function returns an empty list.
* A class method `def save_to_file_csv(cls, list_objs):` that writes the CSV serialization of a list of objects to a file. The file is saved with the name `<cls name>.csv` (e.g., `Rectangle.csv`). It serializes objects in the format `<id>,<width>,<height>,<x>,<y>` for `Rectangle` objects and `<id>,<size>,<x>,<y>` for `Square` objects.
* A class method `def load_from_file_csv(cls):` that returns a list of objects instantiated from a CSV file. If the file does not exist, the function returns an empty list.
* A static method `def draw(list_rectangles, list_squares):` that draws `Rectangle` and `Square` instances in a GUI window using the `turtle` module. The parameters `list_rectangles` and `list_squares` are expected to be lists of `Rectangle` and `Square` objects to print, respectively.

### Rectangle
Represents a rectangle and inherits from `Base` with:

* Private instance attributes `__width`, `__height`, `__x`, and `__y`, each with its own getter/setter methods.
* A class constructor `def __init__(self, width, height, x=0, y=0, id=None):` that validates the input values. Raises `TypeError` if any of `width`, `height`, `x`, or `y` is not an integer and `ValueError` if any of `width` or `height` is <= 0 or `x` or `y` is < 0.
* Public method `def area(self):` that returns the area of the `Rectangle` instance.
* Public method `def display(self):` that prints the `Rectangle` instance to `stdout` using the `#` character. It prints new lines for the `y` coordinate and spaces for the `x` coordinate.
* Overridden `__str__` method to print a `Rectangle` instance in the format `[Rectangle] (<id>) <x>/<y>`.
* Public method `def update(self, *args, **kwargs):` that updates an instance of a `Rectangle` with the given attributes. `*args` must be supplied in the order: `id`, `width`, `height`, `x`, and `y`. `**kwargs` is expected to be a double pointer to a dictionary of new key/value attributes to update the `Rectangle` with.
* Public method `def to_dictionary(self):` that returns the dictionary representation of a `Rectangle` instance.

### Square
Represents a square and inherits from `Rectangle` with:

* A class constructor `def __init__(self, size, x=0, y=0, id=None):` that assigns

