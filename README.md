# vaccine-web-tests
### Requirements Installation
```
pip install -r requirements.txt
```

### How to run the tests
```
robot vaccine-tests.robot
```
## E2E Tests with Robot Framework
App to Test: Service Taker - [Vaccine Haven](https://vaccine-haven.herokuapp.com/)

## File 
| Files                        | Desciprtion                                                                                                                                                                                                         |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| test.robot               | Create a test citizen who is registered on the Service Taker site using Robot Framework, reservation vacine, and cancel reservation |
                                                                                                                                                                    

### Test cases
| Test cases                      | Desciprtion                                                                                                                        |
|---------------------------------|------------------------------------------------------------------------------------------------------------------------------------|
| Verify Two Items On Homepage | Visit the home page and verify 2 items on the home page                                                                            |
| Register On Register Page           | Go to register page, create a new id, and verify that the registration was created |
| Make Reservation              | Go to reservation page, create a new reservation, and verify that the reservation was created |  | Cancel Reservation | Cancel reservation and verify that the reservation was created |


### Requirements Installation
```
pip install -r requirements.txt
```

### How to run the tests
```
robot vaccine-tests.robot
```

### Which do you think is a better framework for E2E testing of web applications or web services: Robot Framework or Cucumber with Selenium/HTTP library and JUnit?
I think Robot Framework is a better tools. It easier to use more than cucumber.


### What tutorial or online resource(s) did you find most helpful for learning Robot Framework?

[Robot Framework Tutorial by Edureka](https://www.edureka.co/blog/robot-framework-tutorial/)    
