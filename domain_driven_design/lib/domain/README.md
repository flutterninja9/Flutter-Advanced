# Currently in domain

## Domain usually consists of fetaures in the app alongwith their validated-value-objects, say for instance auth and its validated-value objects would be Email & Password.

## Work on the core principle of "Making Illegal States Unrepresentable". or simply, you cannot assign a value to a Validated value object if that value is not according to the specified usecase.

###  e.g: Email('aaa@gmail.com') would be valid, but Email('hhhs') would give you errors.