using { jaldb as my } from '../db/schema';

service VacationService {
  entity Employees as projection on my.Employee;
  entity Vacations as projection on my.Vacation;

  function getEmployeesOn(date: Date) returns array of {
    employeeID : UUID;
    name       : String;
    email      : String;
  };
}