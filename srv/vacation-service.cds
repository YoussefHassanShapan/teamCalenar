using { jaldb as db } from '../db/schema';

@path: '/VacationService'
service VacationService {
  entity Employees as projection on db.Employee;
  entity Vacations as projection on db.Vacation;
}
