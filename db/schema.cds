namespace jaldb;

entity Employee {
  key ID         : UUID;
  name           : String;
  email          : String;
  department     : String;
  role           : String;
  avatar         : String;
  vacations      : Association to many Vacation on vacations.employee = $self;
}

entity Vacation {
  key ID         : UUID;
  employee       : Association to Employee;
  startDate      : Date;
  endDate        : Date;
  submittedAt    : Timestamp;
  status         : String enum { PENDING; APPROVED; REJECTED; }
}