void main() {
  const netSalary = 2000;
  const expenses = 1800;
  if (netSalary > expenses) {
    print('You have saved \$${netSalary - expenses} this month');
  } else if (expenses > netSalary) {
    print('You have lost \$${expenses - netSalary} this month');
  } else {
    print('Your balance hasn\'t changed');
  }
// if netSalary > expenses
//     You have saved (netSalary - expenses) this month
// otherwise if expenses > netSalary
//     You have lost (expenses - netSalary) this month
// otherwise
//     Your balance hasn't changed
}
