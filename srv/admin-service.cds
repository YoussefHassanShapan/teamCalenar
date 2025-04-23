using jaldb from '../db/schema';

service AdminService {
  entity Employees as projection on jaldb.Employee;
  entity Vacations as projection on jaldb.Vacation;
}
