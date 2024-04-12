# live_demo_stateles

This Flutter project was created as part of a workshop conducted within the Flutter course. It implements several key concepts of Flutter, including the use of Stateful Widgets to manage dynamic UI states.

## Stateful Widgets
Stateful Widgets are widgets that can change their state over time, resulting in changes in the appearance or behavior of the widget. They are used for parts of the UI that need to be updated in response to user events or data changes.

## Characteristics of Stateful Widgets:
Distinct Classes: A Stateful Widget consists of two distinct classes: the widget itself, which is immutable, and the State, which is mutable and allows for storing and updating the widget's state.

setState() Method: When the state of a Stateful Widget changes, the setState() method is called to notify of the state change. This results in the reconstruction of the relevant UI to reflect the new state.

### Examples of Interactive Widgets Used in this Project:
- FloatingActionButton
- TextButton
- ElevatedButton
- IconButton
- TextField with the use of TextEditingController
- Switch
- Slider
- CheckBox
- Radio
- showDatePicker

These interactive widgets allow users to interact with the application in various ways, creating a dynamic and engaging user experience.

