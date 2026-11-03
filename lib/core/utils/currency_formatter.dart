import 'package:intl/intl.dart';

/// Formats Kenyan shilling amounts consistently across the app.
class CurrencyFormatter {
  CurrencyFormatter._();

  static final NumberFormat _amountFormat =
      NumberFormat('#,##0.00', 'en_US');

  static String formatAmount(num amount) => _amountFormat.format(amount);

  static String formatKes(num amount) => 'KES ${formatAmount(amount)}';
}
