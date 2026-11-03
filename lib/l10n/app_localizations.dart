import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @switchToArabic.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get switchToArabic;

  /// No description provided for @switchToEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get switchToEnglish;

  /// No description provided for @loginBrandName.
  ///
  /// In en, this message translates to:
  /// **'barasa_softwares'**
  String get loginBrandName;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'barasa_softwares'**
  String get appName;

  /// No description provided for @systemSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Retail Point of Sale & Management System'**
  String get systemSubtitle;

  /// No description provided for @loginWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get loginWelcome;

  /// No description provided for @loginSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Please enter your credentials to access the system'**
  String get loginSubtitle;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @usernameHint.
  ///
  /// In en, this message translates to:
  /// **'Enter username'**
  String get usernameHint;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @passwordHint.
  ///
  /// In en, this message translates to:
  /// **'Enter password'**
  String get passwordHint;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember me on this device'**
  String get rememberMe;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @quickLoginHeader.
  ///
  /// In en, this message translates to:
  /// **'Quick system trial with different roles:'**
  String get quickLoginHeader;

  /// No description provided for @sessionOpenWarning.
  ///
  /// In en, this message translates to:
  /// **'There is an active session. Logging in will continue it.'**
  String get sessionOpenWarning;

  /// No description provided for @offlineFeature.
  ///
  /// In en, this message translates to:
  /// **'Fully offline operation'**
  String get offlineFeature;

  /// No description provided for @barcodeFeature.
  ///
  /// In en, this message translates to:
  /// **'Quick barcode sales scan & PDF invoices'**
  String get barcodeFeature;

  /// No description provided for @reportsFeature.
  ///
  /// In en, this message translates to:
  /// **'Daily profit reports & sales tracking'**
  String get reportsFeature;

  /// No description provided for @systemDescription.
  ///
  /// In en, this message translates to:
  /// **'Professional Point of Sale & Retail Management System for all shops and smartphone stores. Works fully offline without internet, with full protection and local synchronization.'**
  String get systemDescription;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'All rights reserved.'**
  String get copyright;

  /// No description provided for @dashboard.
  ///
  /// In en, this message translates to:
  /// **'Dashboard'**
  String get dashboard;

  /// No description provided for @sales.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get sales;

  /// No description provided for @invoices.
  ///
  /// In en, this message translates to:
  /// **'Invoices'**
  String get invoices;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @stockAlerts.
  ///
  /// In en, this message translates to:
  /// **'Low Stock'**
  String get stockAlerts;

  /// No description provided for @stockSummary.
  ///
  /// In en, this message translates to:
  /// **'Stock Summary'**
  String get stockSummary;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'Analytics'**
  String get reports;

  /// No description provided for @sessions.
  ///
  /// In en, this message translates to:
  /// **'Sessions'**
  String get sessions;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @homeSection.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeSection;

  /// No description provided for @salesSection.
  ///
  /// In en, this message translates to:
  /// **'Sales & Invoices'**
  String get salesSection;

  /// No description provided for @stockSection.
  ///
  /// In en, this message translates to:
  /// **'Inventory & Products'**
  String get stockSection;

  /// No description provided for @systemSection.
  ///
  /// In en, this message translates to:
  /// **'System & Reports'**
  String get systemSection;

  /// No description provided for @roleManager.
  ///
  /// In en, this message translates to:
  /// **'System Administrator'**
  String get roleManager;

  /// No description provided for @roleCashier.
  ///
  /// In en, this message translates to:
  /// **'Cashier'**
  String get roleCashier;

  /// No description provided for @connected.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get connected;

  /// No description provided for @trial.
  ///
  /// In en, this message translates to:
  /// **'Trial'**
  String get trial;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get logout;

  /// No description provided for @logoutConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Logout'**
  String get logoutConfirmTitle;

  /// No description provided for @logoutConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to logout?'**
  String get logoutConfirmMessage;

  /// No description provided for @logoutConfirmSub.
  ///
  /// In en, this message translates to:
  /// **'This will end the current session and return to the login screen.'**
  String get logoutConfirmSub;

  /// No description provided for @loggingOut.
  ///
  /// In en, this message translates to:
  /// **'Logging out...'**
  String get loggingOut;

  /// No description provided for @logoutSuccess.
  ///
  /// In en, this message translates to:
  /// **'Logged out successfully'**
  String get logoutSuccess;

  /// No description provided for @logoutFailed.
  ///
  /// In en, this message translates to:
  /// **'Logout failed'**
  String get logoutFailed;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @noData.
  ///
  /// In en, this message translates to:
  /// **'No data available'**
  String get noData;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get error;

  /// No description provided for @screenUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Screen unavailable'**
  String get screenUnavailable;

  /// No description provided for @systemSlogan.
  ///
  /// In en, this message translates to:
  /// **'Professional Point of Sale System'**
  String get systemSlogan;

  /// No description provided for @salesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage sales operations'**
  String get salesSubtitle;

  /// No description provided for @invoicesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage invoices'**
  String get invoicesSubtitle;

  /// No description provided for @productsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage inventory'**
  String get productsSubtitle;

  /// No description provided for @stockAlertsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Low stock alerts'**
  String get stockAlertsSubtitle;

  /// No description provided for @stockSummarySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Stock classifications'**
  String get stockSummarySubtitle;

  /// No description provided for @reportsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'System analytics'**
  String get reportsSubtitle;

  /// No description provided for @sessionsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Closed session history'**
  String get sessionsSubtitle;

  /// No description provided for @settingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage system settings'**
  String get settingsSubtitle;

  /// No description provided for @notificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Notifications & alerts'**
  String get notificationsSubtitle;

  /// No description provided for @closedSessionsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} closed days'**
  String closedSessionsCount(Object count);

  /// No description provided for @todaySalesNet.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Sales (Net)'**
  String get todaySalesNet;

  /// No description provided for @totalProducts.
  ///
  /// In en, this message translates to:
  /// **'Total Products'**
  String get totalProducts;

  /// No description provided for @productCount.
  ///
  /// In en, this message translates to:
  /// **'{count} products'**
  String productCount(Object count);

  /// No description provided for @lowStockAlerts.
  ///
  /// In en, this message translates to:
  /// **'Low Stock Alerts'**
  String get lowStockAlerts;

  /// No description provided for @lowStockCount.
  ///
  /// In en, this message translates to:
  /// **'{count} low stock items'**
  String lowStockCount(Object count);

  /// No description provided for @unreadNotifications.
  ///
  /// In en, this message translates to:
  /// **'Unread Notifications'**
  String get unreadNotifications;

  /// No description provided for @notificationsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} alerts'**
  String notificationsCount(Object count);

  /// No description provided for @currencyEg.
  ///
  /// In en, this message translates to:
  /// **'KES'**
  String get currencyEg;

  /// No description provided for @salesTrendTitle.
  ///
  /// In en, this message translates to:
  /// **'Sales Trend (Last 7 Days)'**
  String get salesTrendTitle;

  /// No description provided for @dailyNetSales.
  ///
  /// In en, this message translates to:
  /// **'Daily Net Sales'**
  String get dailyNetSales;

  /// No description provided for @welcomeUser.
  ///
  /// In en, this message translates to:
  /// **'Welcome to {name} POS Management System'**
  String welcomeUser(Object name);

  /// No description provided for @sessionStaleWarning.
  ///
  /// In en, this message translates to:
  /// **'The current session has been open for {time} — it is recommended to close it and open a new one'**
  String sessionStaleWarning(Object time);

  /// No description provided for @sessionOpenInfo.
  ///
  /// In en, this message translates to:
  /// **'You are working on a previously opened session since {time}'**
  String sessionOpenInfo(Object time);

  /// No description provided for @daysText.
  ///
  /// In en, this message translates to:
  /// **'days'**
  String get daysText;

  /// No description provided for @hoursText.
  ///
  /// In en, this message translates to:
  /// **'hours'**
  String get hoursText;

  /// No description provided for @minutesText.
  ///
  /// In en, this message translates to:
  /// **'minutes'**
  String get minutesText;

  /// No description provided for @quickActions.
  ///
  /// In en, this message translates to:
  /// **'Quick Actions'**
  String get quickActions;

  /// No description provided for @recentSalesTitle.
  ///
  /// In en, this message translates to:
  /// **'Recent Sales'**
  String get recentSalesTitle;

  /// No description provided for @hideRecentSales.
  ///
  /// In en, this message translates to:
  /// **'Hide Recent Sales'**
  String get hideRecentSales;

  /// No description provided for @noSales.
  ///
  /// In en, this message translates to:
  /// **'No sales recorded'**
  String get noSales;

  /// No description provided for @refundProcess.
  ///
  /// In en, this message translates to:
  /// **'Refund process'**
  String get refundProcess;

  /// No description provided for @saleProcess.
  ///
  /// In en, this message translates to:
  /// **'Sale process'**
  String get saleProcess;

  /// No description provided for @saleItemsSummary.
  ///
  /// In en, this message translates to:
  /// **'{count} item(s) • {total} {currency}'**
  String saleItemsSummary(Object count, Object currency, Object total);

  /// No description provided for @recentOperationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Recent Operations'**
  String get recentOperationsTitle;

  /// No description provided for @noRecentOperations.
  ///
  /// In en, this message translates to:
  /// **'No recent operations found'**
  String get noRecentOperations;

  /// No description provided for @noOperationsToday.
  ///
  /// In en, this message translates to:
  /// **'No operations in this session yet'**
  String get noOperationsToday;

  /// No description provided for @loginsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} logins'**
  String loginsCount(Object count);

  /// No description provided for @activeDayUser.
  ///
  /// In en, this message translates to:
  /// **'Active Session • {user}'**
  String activeDayUser(Object user);

  /// No description provided for @closedDayUser.
  ///
  /// In en, this message translates to:
  /// **'Closed Session • {user}'**
  String closedDayUser(Object user);

  /// No description provided for @operationsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} operations'**
  String operationsCount(Object count);

  /// No description provided for @showMore.
  ///
  /// In en, this message translates to:
  /// **'Show More'**
  String get showMore;

  /// No description provided for @actSale.
  ///
  /// In en, this message translates to:
  /// **'Sale'**
  String get actSale;

  /// No description provided for @actRefund.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get actRefund;

  /// No description provided for @actProductAdd.
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get actProductAdd;

  /// No description provided for @actProductUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update Product'**
  String get actProductUpdate;

  /// No description provided for @actProductDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete Product'**
  String get actProductDelete;

  /// No description provided for @actProductQtyUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update Qty'**
  String get actProductQtyUpdate;

  /// No description provided for @actUserAdd.
  ///
  /// In en, this message translates to:
  /// **'Add User'**
  String get actUserAdd;

  /// No description provided for @actUserUpdate.
  ///
  /// In en, this message translates to:
  /// **'Update User'**
  String get actUserUpdate;

  /// No description provided for @actUserDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete User'**
  String get actUserDelete;

  /// No description provided for @actSessionOpen.
  ///
  /// In en, this message translates to:
  /// **'Open Session'**
  String get actSessionOpen;

  /// No description provided for @actSessionClose.
  ///
  /// In en, this message translates to:
  /// **'Close Session'**
  String get actSessionClose;

  /// No description provided for @actRestock.
  ///
  /// In en, this message translates to:
  /// **'Restock'**
  String get actRestock;

  /// No description provided for @actExpense.
  ///
  /// In en, this message translates to:
  /// **'Expense'**
  String get actExpense;

  /// No description provided for @actInvoiceDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete Invoice'**
  String get actInvoiceDelete;

  /// No description provided for @actPrintReport.
  ///
  /// In en, this message translates to:
  /// **'Print Report'**
  String get actPrintReport;

  /// No description provided for @actLogin.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get actLogin;

  /// No description provided for @detailsItems.
  ///
  /// In en, this message translates to:
  /// **'Items: {items}'**
  String detailsItems(Object items);

  /// No description provided for @detailsTotal.
  ///
  /// In en, this message translates to:
  /// **'Total: {total} {currency}'**
  String detailsTotal(Object currency, Object total);

  /// No description provided for @detailsProduct.
  ///
  /// In en, this message translates to:
  /// **'Product: {name}'**
  String detailsProduct(Object name);

  /// No description provided for @detailsQty.
  ///
  /// In en, this message translates to:
  /// **'Quantity: {oldQty} ← {newQty}'**
  String detailsQty(Object newQty, Object oldQty);

  /// No description provided for @detailsPrice.
  ///
  /// In en, this message translates to:
  /// **'Price: {oldPrice} ← {newPrice}'**
  String detailsPrice(Object newPrice, Object oldPrice);

  /// No description provided for @detailsAddedQty.
  ///
  /// In en, this message translates to:
  /// **'Added Quantity: {qty}'**
  String detailsAddedQty(Object qty);

  /// No description provided for @detailsCategory.
  ///
  /// In en, this message translates to:
  /// **'Category: {category}'**
  String detailsCategory(Object category);

  /// No description provided for @detailsAmount.
  ///
  /// In en, this message translates to:
  /// **'Amount: {amount} {currency}'**
  String detailsAmount(Object amount, Object currency);

  /// No description provided for @detailsUser.
  ///
  /// In en, this message translates to:
  /// **'User: {user}'**
  String detailsUser(Object user);

  /// No description provided for @detailsRole.
  ///
  /// In en, this message translates to:
  /// **'Role: {role}'**
  String detailsRole(Object role);

  /// No description provided for @salesScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get salesScreenTitle;

  /// No description provided for @salesScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage sales and invoices'**
  String get salesScreenSubtitle;

  /// No description provided for @searchErrorMsg.
  ///
  /// In en, this message translates to:
  /// **'Search error: {message}'**
  String searchErrorMsg(Object message);

  /// No description provided for @productNotFound.
  ///
  /// In en, this message translates to:
  /// **'Product not found: {code}'**
  String productNotFound(Object code);

  /// No description provided for @outOfStock.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get outOfStock;

  /// No description provided for @maxQtyReached.
  ///
  /// In en, this message translates to:
  /// **'Maximum available quantity reached ({qty})'**
  String maxQtyReached(Object qty);

  /// No description provided for @cartEmpty.
  ///
  /// In en, this message translates to:
  /// **'Cart is empty'**
  String get cartEmpty;

  /// No description provided for @saveSaleFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save sale: {message}'**
  String saveSaleFailed(Object message);

  /// No description provided for @saleCompleted.
  ///
  /// In en, this message translates to:
  /// **'Sale completed - Total: {total} {currency}'**
  String saleCompleted(Object currency, Object total);

  /// No description provided for @saleActivityDesc.
  ///
  /// In en, this message translates to:
  /// **'Sale: {total} {currency}'**
  String saleActivityDesc(Object currency, Object total);

  /// No description provided for @cantAddMoreStock.
  ///
  /// In en, this message translates to:
  /// **'Cannot add more! Available stock: {qty}'**
  String cantAddMoreStock(Object qty);

  /// No description provided for @showRecentSales.
  ///
  /// In en, this message translates to:
  /// **'Show Recent Sales'**
  String get showRecentSales;

  /// No description provided for @recentSalesLabel.
  ///
  /// In en, this message translates to:
  /// **'Recent Sales'**
  String get recentSalesLabel;

  /// No description provided for @cartProductList.
  ///
  /// In en, this message translates to:
  /// **'Product List'**
  String get cartProductList;

  /// No description provided for @cartEmptyTitle.
  ///
  /// In en, this message translates to:
  /// **'Cart is Empty'**
  String get cartEmptyTitle;

  /// No description provided for @cartEmptySubtitle.
  ///
  /// In en, this message translates to:
  /// **'Scan products to add them'**
  String get cartEmptySubtitle;

  /// No description provided for @editPriceTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Price'**
  String get editPriceTitle;

  /// No description provided for @minPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Minimum price: {price} {currency}'**
  String minPriceLabel(Object currency, Object price);

  /// No description provided for @newPriceLabel.
  ///
  /// In en, this message translates to:
  /// **'New Price'**
  String get newPriceLabel;

  /// No description provided for @priceValidationError.
  ///
  /// In en, this message translates to:
  /// **'Price must be greater than or equal to {price} {currency}'**
  String priceValidationError(Object currency, Object price);

  /// No description provided for @cancelBtn.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelBtn;

  /// No description provided for @saveBtn.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get saveBtn;

  /// No description provided for @codeLabel.
  ///
  /// In en, this message translates to:
  /// **'Code: {code}'**
  String codeLabel(Object code);

  /// No description provided for @dateLabel.
  ///
  /// In en, this message translates to:
  /// **'Date: {date}'**
  String dateLabel(Object date);

  /// No description provided for @remainingLabel.
  ///
  /// In en, this message translates to:
  /// **'Remaining: {qty}'**
  String remainingLabel(Object qty);

  /// No description provided for @priceWithCurrency.
  ///
  /// In en, this message translates to:
  /// **'{price} {currency}'**
  String priceWithCurrency(Object currency, Object price);

  /// No description provided for @invoiceSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Invoice Summary'**
  String get invoiceSummaryTitle;

  /// No description provided for @itemCountLabel.
  ///
  /// In en, this message translates to:
  /// **'Item Count'**
  String get itemCountLabel;

  /// No description provided for @itemCountValue.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String itemCountValue(Object count);

  /// No description provided for @subtotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Subtotal'**
  String get subtotalLabel;

  /// No description provided for @grandTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Grand Total'**
  String get grandTotalLabel;

  /// No description provided for @checkoutBtn.
  ///
  /// In en, this message translates to:
  /// **'Complete Checkout'**
  String get checkoutBtn;

  /// No description provided for @clearCartBtn.
  ///
  /// In en, this message translates to:
  /// **'Clear Cart'**
  String get clearCartBtn;

  /// No description provided for @barcodeScanHint.
  ///
  /// In en, this message translates to:
  /// **'Scan barcode or search for a product...'**
  String get barcodeScanHint;

  /// No description provided for @stockLabel.
  ///
  /// In en, this message translates to:
  /// **'Stock: {qty}'**
  String stockLabel(Object qty);

  /// No description provided for @enterUsername.
  ///
  /// In en, this message translates to:
  /// **'Please enter username'**
  String get enterUsername;

  /// No description provided for @enterPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter password'**
  String get enterPassword;

  /// No description provided for @usersManagement.
  ///
  /// In en, this message translates to:
  /// **'Users Management'**
  String get usersManagement;

  /// No description provided for @addUser.
  ///
  /// In en, this message translates to:
  /// **'Add User'**
  String get addUser;

  /// No description provided for @noUsers.
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get noUsers;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @storeInfo.
  ///
  /// In en, this message translates to:
  /// **'Store Info'**
  String get storeInfo;

  /// No description provided for @noStoreInfo.
  ///
  /// In en, this message translates to:
  /// **'No store info available'**
  String get noStoreInfo;

  /// No description provided for @storeName.
  ///
  /// In en, this message translates to:
  /// **'Store Name'**
  String get storeName;

  /// No description provided for @storeAddress.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get storeAddress;

  /// No description provided for @storePhone.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get storePhone;

  /// No description provided for @storeEmail.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get storeEmail;

  /// No description provided for @storeVat.
  ///
  /// In en, this message translates to:
  /// **'VAT Number'**
  String get storeVat;

  /// No description provided for @editStoreInfo.
  ///
  /// In en, this message translates to:
  /// **'Edit Store Info'**
  String get editStoreInfo;

  /// No description provided for @storeNameRequired.
  ///
  /// In en, this message translates to:
  /// **'Store Name *'**
  String get storeNameRequired;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @enterStoreName.
  ///
  /// In en, this message translates to:
  /// **'Please enter store name'**
  String get enterStoreName;

  /// No description provided for @infoSavedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Information saved successfully'**
  String get infoSavedSuccess;

  /// No description provided for @logoutWarningMessage.
  ///
  /// In en, this message translates to:
  /// **'The current work session will end and return to the login screen'**
  String get logoutWarningMessage;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @usernameColumn.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get usernameColumn;

  /// No description provided for @permission.
  ///
  /// In en, this message translates to:
  /// **'Permission'**
  String get permission;

  /// No description provided for @accountStatus.
  ///
  /// In en, this message translates to:
  /// **'Account Status'**
  String get accountStatus;

  /// No description provided for @lastLoginColumn.
  ///
  /// In en, this message translates to:
  /// **'Last Login'**
  String get lastLoginColumn;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @disabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get disabled;

  /// No description provided for @editPermissions.
  ///
  /// In en, this message translates to:
  /// **'Edit Permissions'**
  String get editPermissions;

  /// No description provided for @deleteAccount.
  ///
  /// In en, this message translates to:
  /// **'Delete Account'**
  String get deleteAccount;

  /// No description provided for @confirmDeleteUser.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete User'**
  String get confirmDeleteUser;

  /// No description provided for @confirmDeleteUserMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete the user account \"{name}\"? This action cannot be undone.'**
  String confirmDeleteUserMessage(Object name);

  /// No description provided for @protectionActivated.
  ///
  /// In en, this message translates to:
  /// **'Protection system activated successfully'**
  String get protectionActivated;

  /// No description provided for @restartApp.
  ///
  /// In en, this message translates to:
  /// **'Restart Application'**
  String get restartApp;

  /// No description provided for @protectionActivatedMessage.
  ///
  /// In en, this message translates to:
  /// **'Protection system activated successfully!\n\nTo fully apply the changes, it is recommended to restart the application.'**
  String get protectionActivatedMessage;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @operationCancelled.
  ///
  /// In en, this message translates to:
  /// **'Operation cancelled'**
  String get operationCancelled;

  /// No description provided for @noProducts.
  ///
  /// In en, this message translates to:
  /// **'No products'**
  String get noProducts;

  /// No description provided for @addProductsHint.
  ///
  /// In en, this message translates to:
  /// **'Add new products to display them here'**
  String get addProductsHint;

  /// No description provided for @productName.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get productName;

  /// No description provided for @barcode.
  ///
  /// In en, this message translates to:
  /// **'Barcode'**
  String get barcode;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @wholesalePrice.
  ///
  /// In en, this message translates to:
  /// **'Wholesale Price'**
  String get wholesalePrice;

  /// No description provided for @minPriceColumn.
  ///
  /// In en, this message translates to:
  /// **'Min Price'**
  String get minPriceColumn;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @barcodeError.
  ///
  /// In en, this message translates to:
  /// **'Barcode Error'**
  String get barcodeError;

  /// No description provided for @barcodeExistsMessage.
  ///
  /// In en, this message translates to:
  /// **'A product with barcode \"{barcode}\" already exists.\nPlease use a different barcode or edit the existing product.'**
  String barcodeExistsMessage(Object barcode);

  /// No description provided for @addNewProduct.
  ///
  /// In en, this message translates to:
  /// **'Add New Product'**
  String get addNewProduct;

  /// No description provided for @editProduct.
  ///
  /// In en, this message translates to:
  /// **'Edit Product'**
  String get editProduct;

  /// No description provided for @barcodeNumber.
  ///
  /// In en, this message translates to:
  /// **'Barcode Number'**
  String get barcodeNumber;

  /// No description provided for @wholesalePriceLabel.
  ///
  /// In en, this message translates to:
  /// **'Wholesale Price'**
  String get wholesalePriceLabel;

  /// No description provided for @minPriceLabel2.
  ///
  /// In en, this message translates to:
  /// **'Minimum Price'**
  String get minPriceLabel2;

  /// No description provided for @sellingPrice.
  ///
  /// In en, this message translates to:
  /// **'Selling Price'**
  String get sellingPrice;

  /// No description provided for @availableQty.
  ///
  /// In en, this message translates to:
  /// **'Available Quantity'**
  String get availableQty;

  /// No description provided for @minStockLevel.
  ///
  /// In en, this message translates to:
  /// **'Minimum Stock Level'**
  String get minStockLevel;

  /// No description provided for @addProduct.
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get addProduct;

  /// No description provided for @categoryLabel.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get categoryLabel;

  /// No description provided for @selectValidCategory.
  ///
  /// In en, this message translates to:
  /// **'Please select a valid category'**
  String get selectValidCategory;

  /// No description provided for @addNewCategory.
  ///
  /// In en, this message translates to:
  /// **'Add New Category'**
  String get addNewCategory;

  /// No description provided for @categoryName.
  ///
  /// In en, this message translates to:
  /// **'Category Name'**
  String get categoryName;

  /// No description provided for @addCategory.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get addCategory;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @lowStock.
  ///
  /// In en, this message translates to:
  /// **'Low Stock'**
  String get lowStock;

  /// No description provided for @available.
  ///
  /// In en, this message translates to:
  /// **'Available'**
  String get available;

  /// No description provided for @restockProduct.
  ///
  /// In en, this message translates to:
  /// **'Restock Product'**
  String get restockProduct;

  /// No description provided for @currentQuantity.
  ///
  /// In en, this message translates to:
  /// **'Current Quantity'**
  String get currentQuantity;

  /// No description provided for @minLimit.
  ///
  /// In en, this message translates to:
  /// **'Min Limit'**
  String get minLimit;

  /// No description provided for @needed.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get needed;

  /// No description provided for @restockQuantity.
  ///
  /// In en, this message translates to:
  /// **'Restock Quantity'**
  String get restockQuantity;

  /// No description provided for @enterQuantity.
  ///
  /// In en, this message translates to:
  /// **'Enter quantity'**
  String get enterQuantity;

  /// No description provided for @quantityAfterRestock.
  ///
  /// In en, this message translates to:
  /// **'Quantity after restocking:'**
  String get quantityAfterRestock;

  /// No description provided for @enterValidQuantity.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid quantity greater than zero'**
  String get enterValidQuantity;

  /// No description provided for @confirmRestock.
  ///
  /// In en, this message translates to:
  /// **'Confirm Restock'**
  String get confirmRestock;

  /// No description provided for @restock.
  ///
  /// In en, this message translates to:
  /// **'Restock'**
  String get restock;

  /// No description provided for @stockManagement.
  ///
  /// In en, this message translates to:
  /// **'Inventory Management'**
  String get stockManagement;

  /// No description provided for @stockManagementSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track low stock products, update supplies, and resolve inventory shortage'**
  String get stockManagementSubtitle;

  /// No description provided for @productsNeedRestock.
  ///
  /// In en, this message translates to:
  /// **'Products currently requiring restock ({count})'**
  String productsNeedRestock(Object count);

  /// No description provided for @stockComplete.
  ///
  /// In en, this message translates to:
  /// **'Stock is complete with no shortage'**
  String get stockComplete;

  /// No description provided for @allProductsAvailable.
  ///
  /// In en, this message translates to:
  /// **'All products are available in quantities exceeding the recommended minimum stock level'**
  String get allProductsAvailable;

  /// No description provided for @loadingStockData.
  ///
  /// In en, this message translates to:
  /// **'Auditing and updating daily inventory data...'**
  String get loadingStockData;

  /// No description provided for @partialRefund.
  ///
  /// In en, this message translates to:
  /// **'Partial Refund'**
  String get partialRefund;

  /// No description provided for @invoiceNumber.
  ///
  /// In en, this message translates to:
  /// **'Invoice #{id}'**
  String invoiceNumber(Object id);

  /// No description provided for @totalRefundAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Refunded Amount:'**
  String get totalRefundAmount;

  /// No description provided for @confirmRefund.
  ///
  /// In en, this message translates to:
  /// **'Confirm Refund'**
  String get confirmRefund;

  /// No description provided for @noRefundableProducts.
  ///
  /// In en, this message translates to:
  /// **'No refundable products found'**
  String get noRefundableProducts;

  /// No description provided for @productColumn.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get productColumn;

  /// No description provided for @soldQty.
  ///
  /// In en, this message translates to:
  /// **'Sold Qty'**
  String get soldQty;

  /// No description provided for @alreadyRefunded.
  ///
  /// In en, this message translates to:
  /// **'Already Refunded'**
  String get alreadyRefunded;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @priceColumn.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get priceColumn;

  /// No description provided for @refundQty.
  ///
  /// In en, this message translates to:
  /// **'Refund Qty'**
  String get refundQty;

  /// No description provided for @totalColumn.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get totalColumn;

  /// No description provided for @invalidNumber.
  ///
  /// In en, this message translates to:
  /// **'Invalid Number'**
  String get invalidNumber;

  /// No description provided for @cannotBeNegative.
  ///
  /// In en, this message translates to:
  /// **'Cannot be negative'**
  String get cannotBeNegative;

  /// No description provided for @maxLimit.
  ///
  /// In en, this message translates to:
  /// **'Max Limit: {qty}'**
  String maxLimit(Object qty);

  /// No description provided for @loadingInvoices.
  ///
  /// In en, this message translates to:
  /// **'Loading invoices...'**
  String get loadingInvoices;

  /// No description provided for @noInvoicesInPeriod.
  ///
  /// In en, this message translates to:
  /// **'No invoices in the selected period'**
  String get noInvoicesInPeriod;

  /// No description provided for @noRecentInvoices.
  ///
  /// In en, this message translates to:
  /// **'No recent invoices'**
  String get noRecentInvoices;

  /// No description provided for @tryChangingFilter.
  ///
  /// In en, this message translates to:
  /// **'Try changing search terms or filters'**
  String get tryChangingFilter;

  /// No description provided for @fromDate.
  ///
  /// In en, this message translates to:
  /// **'From Date'**
  String get fromDate;

  /// No description provided for @toDate.
  ///
  /// In en, this message translates to:
  /// **'To Date'**
  String get toDate;

  /// No description provided for @searchInvoiceHint.
  ///
  /// In en, this message translates to:
  /// **'Scan barcode or enter invoice number...'**
  String get searchInvoiceHint;

  /// No description provided for @searchLabel.
  ///
  /// In en, this message translates to:
  /// **'Search: {query}'**
  String searchLabel(Object query);

  /// No description provided for @salesFilter.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get salesFilter;

  /// No description provided for @refundsFilter.
  ///
  /// In en, this message translates to:
  /// **'Refunds'**
  String get refundsFilter;

  /// No description provided for @selectDate.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDate;

  /// No description provided for @clearFilters.
  ///
  /// In en, this message translates to:
  /// **'Clear Filters'**
  String get clearFilters;

  /// No description provided for @selectDateRangeFirst.
  ///
  /// In en, this message translates to:
  /// **'Must select a date range first'**
  String get selectDateRangeFirst;

  /// No description provided for @deleteInvoices.
  ///
  /// In en, this message translates to:
  /// **'Delete Invoices'**
  String get deleteInvoices;

  /// No description provided for @clearInvoices.
  ///
  /// In en, this message translates to:
  /// **'Clear Invoices'**
  String get clearInvoices;

  /// No description provided for @cashier.
  ///
  /// In en, this message translates to:
  /// **'Cashier'**
  String get cashier;

  /// No description provided for @refunded.
  ///
  /// In en, this message translates to:
  /// **'Refunded'**
  String get refunded;

  /// No description provided for @itemsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String itemsCount(Object count);

  /// No description provided for @print.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get print;

  /// No description provided for @thermalReceiptTitle.
  ///
  /// In en, this message translates to:
  /// **'Thermal Receipt (80mm)'**
  String get thermalReceiptTitle;

  /// No description provided for @a4InvoiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Sales Invoice (A4)'**
  String get a4InvoiceTitle;

  /// No description provided for @invoiceNumberLabel.
  ///
  /// In en, this message translates to:
  /// **'Invoice Number: #{id}'**
  String invoiceNumberLabel(Object id);

  /// No description provided for @instantPrint.
  ///
  /// In en, this message translates to:
  /// **'Instant Print'**
  String get instantPrint;

  /// No description provided for @managerOnlyDelete.
  ///
  /// In en, this message translates to:
  /// **'Only managers can delete sessions.'**
  String get managerOnlyDelete;

  /// No description provided for @cannotDeleteOpenSession.
  ///
  /// In en, this message translates to:
  /// **'Cannot delete the current active session while it is open.'**
  String get cannotDeleteOpenSession;

  /// No description provided for @confirmDeleteSession.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete Session'**
  String get confirmDeleteSession;

  /// No description provided for @confirmDeleteSessionMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this session? The associated closing report will be permanently deleted and this action cannot be undone.'**
  String get confirmDeleteSessionMessage;

  /// No description provided for @sessionDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Session deleted successfully.'**
  String get sessionDeletedSuccess;

  /// No description provided for @sessionDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete session: {error}'**
  String sessionDeleteFailed(Object error);

  /// No description provided for @activeNow.
  ///
  /// In en, this message translates to:
  /// **'Active Now'**
  String get activeNow;

  /// No description provided for @hoursMinutes.
  ///
  /// In en, this message translates to:
  /// **'{hours}h {minutes}m'**
  String hoursMinutes(Object hours, Object minutes);

  /// No description provided for @minutesOnly.
  ///
  /// In en, this message translates to:
  /// **'{minutes}m'**
  String minutesOnly(Object minutes);

  /// No description provided for @sessionsHistory.
  ///
  /// In en, this message translates to:
  /// **'Sessions History'**
  String get sessionsHistory;

  /// No description provided for @sessionsCount.
  ///
  /// In en, this message translates to:
  /// **'{count} registered sessions'**
  String sessionsCount(Object count);

  /// No description provided for @sessionsList.
  ///
  /// In en, this message translates to:
  /// **'Sessions List'**
  String get sessionsList;

  /// No description provided for @loadingSessions.
  ///
  /// In en, this message translates to:
  /// **'Loading sessions...'**
  String get loadingSessions;

  /// No description provided for @noSessions.
  ///
  /// In en, this message translates to:
  /// **'No registered sessions found'**
  String get noSessions;

  /// No description provided for @sessionsAutoAdd.
  ///
  /// In en, this message translates to:
  /// **'Sessions will be added automatically upon opening and closing'**
  String get sessionsAutoAdd;

  /// No description provided for @sessionActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get sessionActive;

  /// No description provided for @sessionClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get sessionClosed;

  /// No description provided for @sessionId.
  ///
  /// In en, this message translates to:
  /// **'Session #{id}'**
  String sessionId(Object id);

  /// No description provided for @selectSessionForDetails.
  ///
  /// In en, this message translates to:
  /// **'Select a session to view its details'**
  String get selectSessionForDetails;

  /// No description provided for @selectSessionHint.
  ///
  /// In en, this message translates to:
  /// **'Select a session from the list to view its activity log and financial report'**
  String get selectSessionHint;

  /// No description provided for @operationsLog.
  ///
  /// In en, this message translates to:
  /// **'Operations Log'**
  String get operationsLog;

  /// No description provided for @financialReport.
  ///
  /// In en, this message translates to:
  /// **'Financial Report'**
  String get financialReport;

  /// No description provided for @activeSession.
  ///
  /// In en, this message translates to:
  /// **'Active Session'**
  String get activeSession;

  /// No description provided for @closedSession.
  ///
  /// In en, this message translates to:
  /// **'Closed Session'**
  String get closedSession;

  /// No description provided for @printReport.
  ///
  /// In en, this message translates to:
  /// **'Print Report'**
  String get printReport;

  /// No description provided for @deleteSession.
  ///
  /// In en, this message translates to:
  /// **'Delete Session'**
  String get deleteSession;

  /// No description provided for @sessionStart.
  ///
  /// In en, this message translates to:
  /// **'Session Start'**
  String get sessionStart;

  /// No description provided for @sessionEnd.
  ///
  /// In en, this message translates to:
  /// **'Session End'**
  String get sessionEnd;

  /// No description provided for @totalDuration.
  ///
  /// In en, this message translates to:
  /// **'Total Duration'**
  String get totalDuration;

  /// No description provided for @searchOperationsHint.
  ///
  /// In en, this message translates to:
  /// **'Search by operation or username...'**
  String get searchOperationsHint;

  /// No description provided for @allOperations.
  ///
  /// In en, this message translates to:
  /// **'All Operations'**
  String get allOperations;

  /// No description provided for @noMatchingOperations.
  ///
  /// In en, this message translates to:
  /// **'No operations matched the search'**
  String get noMatchingOperations;

  /// No description provided for @reportAfterClose.
  ///
  /// In en, this message translates to:
  /// **'Report becomes available after closing the session'**
  String get reportAfterClose;

  /// No description provided for @closeSessionForReport.
  ///
  /// In en, this message translates to:
  /// **'Close the current session to generate the financial report and view analytics'**
  String get closeSessionForReport;

  /// No description provided for @failedLoadReport.
  ///
  /// In en, this message translates to:
  /// **'Failed to load financial report'**
  String get failedLoadReport;

  /// No description provided for @noFinancialReport.
  ///
  /// In en, this message translates to:
  /// **'No financial report found'**
  String get noFinancialReport;

  /// No description provided for @ensureSessionClosed.
  ///
  /// In en, this message translates to:
  /// **'Make sure the session is closed successfully'**
  String get ensureSessionClosed;

  /// No description provided for @netSales.
  ///
  /// In en, this message translates to:
  /// **'Net Sales'**
  String get netSales;

  /// No description provided for @salesOperations.
  ///
  /// In en, this message translates to:
  /// **'Sales Operations'**
  String get salesOperations;

  /// No description provided for @refunds.
  ///
  /// In en, this message translates to:
  /// **'Refunds'**
  String get refunds;

  /// No description provided for @datasheet.
  ///
  /// In en, this message translates to:
  /// **'Datasheet'**
  String get datasheet;

  /// No description provided for @noReportForSession.
  ///
  /// In en, this message translates to:
  /// **'No report available for this session'**
  String get noReportForSession;

  /// No description provided for @previewBeforePrint.
  ///
  /// In en, this message translates to:
  /// **'Preview Report Before Printing'**
  String get previewBeforePrint;

  /// No description provided for @failedLoadReportError.
  ///
  /// In en, this message translates to:
  /// **'Failed to load report: {error}'**
  String failedLoadReportError(Object error);

  /// No description provided for @readNotifications.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get readNotifications;

  /// No description provided for @urgentNotifications.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get urgentNotifications;

  /// No description provided for @unreadLabel.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get unreadLabel;

  /// No description provided for @markAsReadUnread.
  ///
  /// In en, this message translates to:
  /// **'Mark as Unread'**
  String get markAsReadUnread;

  /// No description provided for @markAsRead.
  ///
  /// In en, this message translates to:
  /// **'Mark as Read'**
  String get markAsRead;

  /// No description provided for @deleteNotification.
  ///
  /// In en, this message translates to:
  /// **'Delete Alert'**
  String get deleteNotification;

  /// No description provided for @productCode.
  ///
  /// In en, this message translates to:
  /// **'Product SKU: {sku}'**
  String productCode(Object sku);

  /// No description provided for @markSelectedRead.
  ///
  /// In en, this message translates to:
  /// **'Mark Selected as Read'**
  String get markSelectedRead;

  /// No description provided for @markAllRead.
  ///
  /// In en, this message translates to:
  /// **'Mark All as Read'**
  String get markAllRead;

  /// No description provided for @deleteSelected.
  ///
  /// In en, this message translates to:
  /// **'Delete Selected'**
  String get deleteSelected;

  /// No description provided for @unexpectedError.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpectedError;

  /// No description provided for @productOutOfStock.
  ///
  /// In en, this message translates to:
  /// **'Product is out of stock'**
  String get productOutOfStock;

  /// No description provided for @productLowStock.
  ///
  /// In en, this message translates to:
  /// **'Product quantity in stock is low ({qty})'**
  String productLowStock(Object qty);

  /// No description provided for @yearlySalesSummary.
  ///
  /// In en, this message translates to:
  /// **'Yearly Sales Summary'**
  String get yearlySalesSummary;

  /// No description provided for @totalLabel.
  ///
  /// In en, this message translates to:
  /// **'Total: {amount}'**
  String totalLabel(Object amount);

  /// No description provided for @noYearlyData.
  ///
  /// In en, this message translates to:
  /// **'No yearly data available'**
  String get noYearlyData;

  /// No description provided for @topSellingProducts.
  ///
  /// In en, this message translates to:
  /// **'Top Selling Products'**
  String get topSellingProducts;

  /// No description provided for @soldCount.
  ///
  /// In en, this message translates to:
  /// **'Sold: {qty} units'**
  String soldCount(Object qty);

  /// No description provided for @totalSales.
  ///
  /// In en, this message translates to:
  /// **'Total Sales'**
  String get totalSales;

  /// No description provided for @salesCount.
  ///
  /// In en, this message translates to:
  /// **'{count} sales'**
  String salesCount(Object count);

  /// No description provided for @totalCost.
  ///
  /// In en, this message translates to:
  /// **'Total Cost'**
  String get totalCost;

  /// No description provided for @productsCost.
  ///
  /// In en, this message translates to:
  /// **'Cost of Products'**
  String get productsCost;

  /// No description provided for @netProfit.
  ///
  /// In en, this message translates to:
  /// **'Net Profit'**
  String get netProfit;

  /// No description provided for @loss.
  ///
  /// In en, this message translates to:
  /// **'Loss'**
  String get loss;

  /// No description provided for @margin.
  ///
  /// In en, this message translates to:
  /// **'{percent}% Margin'**
  String margin(Object percent);

  /// No description provided for @averageSale.
  ///
  /// In en, this message translates to:
  /// **'Average Sale'**
  String get averageSale;

  /// No description provided for @perSale.
  ///
  /// In en, this message translates to:
  /// **'Per Sale'**
  String get perSale;

  /// No description provided for @monthlySales.
  ///
  /// In en, this message translates to:
  /// **'Monthly Sales'**
  String get monthlySales;

  /// No description provided for @monthlyAverage.
  ///
  /// In en, this message translates to:
  /// **'Monthly Average'**
  String get monthlyAverage;

  /// No description provided for @months.
  ///
  /// In en, this message translates to:
  /// **'Months'**
  String get months;

  /// No description provided for @noDataToShow.
  ///
  /// In en, this message translates to:
  /// **'No data available to display'**
  String get noDataToShow;

  /// No description provided for @topProductsByMonth.
  ///
  /// In en, this message translates to:
  /// **'Top Products by Month'**
  String get topProductsByMonth;

  /// No description provided for @monthTotal.
  ///
  /// In en, this message translates to:
  /// **'{month} Total:'**
  String monthTotal(Object month);

  /// No description provided for @noProductsThisMonth.
  ///
  /// In en, this message translates to:
  /// **'No products sold in this month'**
  String get noProductsThisMonth;

  /// No description provided for @salesByCategory.
  ///
  /// In en, this message translates to:
  /// **'Sales by Category'**
  String get salesByCategory;

  /// No description provided for @noCategoryData.
  ///
  /// In en, this message translates to:
  /// **'No category data available'**
  String get noCategoryData;

  /// No description provided for @dailySales.
  ///
  /// In en, this message translates to:
  /// **'Daily Sales'**
  String get dailySales;

  /// No description provided for @noDailyData.
  ///
  /// In en, this message translates to:
  /// **'No daily data available'**
  String get noDailyData;

  /// No description provided for @salesByHour.
  ///
  /// In en, this message translates to:
  /// **'Sales by Hour'**
  String get salesByHour;

  /// No description provided for @noHourData.
  ///
  /// In en, this message translates to:
  /// **'No hourly data available'**
  String get noHourData;

  /// No description provided for @salesReportTitle.
  ///
  /// In en, this message translates to:
  /// **'Sales Reports & Analytics'**
  String get salesReportTitle;

  /// No description provided for @salesReportSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Comprehensive analysis of sales performance and profits'**
  String get salesReportSubtitle;

  /// No description provided for @currentSession.
  ///
  /// In en, this message translates to:
  /// **'Current Session'**
  String get currentSession;

  /// No description provided for @allTime.
  ///
  /// In en, this message translates to:
  /// **'All Time'**
  String get allTime;

  /// No description provided for @monthJan.
  ///
  /// In en, this message translates to:
  /// **'January'**
  String get monthJan;

  /// No description provided for @monthFeb.
  ///
  /// In en, this message translates to:
  /// **'February'**
  String get monthFeb;

  /// No description provided for @monthMar.
  ///
  /// In en, this message translates to:
  /// **'March'**
  String get monthMar;

  /// No description provided for @monthApr.
  ///
  /// In en, this message translates to:
  /// **'April'**
  String get monthApr;

  /// No description provided for @monthMay.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get monthMay;

  /// No description provided for @monthJun.
  ///
  /// In en, this message translates to:
  /// **'June'**
  String get monthJun;

  /// No description provided for @monthJul.
  ///
  /// In en, this message translates to:
  /// **'July'**
  String get monthJul;

  /// No description provided for @monthAug.
  ///
  /// In en, this message translates to:
  /// **'August'**
  String get monthAug;

  /// No description provided for @monthSep.
  ///
  /// In en, this message translates to:
  /// **'September'**
  String get monthSep;

  /// No description provided for @monthOct.
  ///
  /// In en, this message translates to:
  /// **'October'**
  String get monthOct;

  /// No description provided for @monthNov.
  ///
  /// In en, this message translates to:
  /// **'November'**
  String get monthNov;

  /// No description provided for @monthDec.
  ///
  /// In en, this message translates to:
  /// **'December'**
  String get monthDec;

  /// No description provided for @monthJanShort.
  ///
  /// In en, this message translates to:
  /// **'Jan'**
  String get monthJanShort;

  /// No description provided for @monthFebShort.
  ///
  /// In en, this message translates to:
  /// **'Feb'**
  String get monthFebShort;

  /// No description provided for @monthMarShort.
  ///
  /// In en, this message translates to:
  /// **'Mar'**
  String get monthMarShort;

  /// No description provided for @monthAprShort.
  ///
  /// In en, this message translates to:
  /// **'Apr'**
  String get monthAprShort;

  /// No description provided for @monthMayShort.
  ///
  /// In en, this message translates to:
  /// **'May'**
  String get monthMayShort;

  /// No description provided for @monthJunShort.
  ///
  /// In en, this message translates to:
  /// **'Jun'**
  String get monthJunShort;

  /// No description provided for @monthJulShort.
  ///
  /// In en, this message translates to:
  /// **'Jul'**
  String get monthJulShort;

  /// No description provided for @monthAugShort.
  ///
  /// In en, this message translates to:
  /// **'Aug'**
  String get monthAugShort;

  /// No description provided for @monthSepShort.
  ///
  /// In en, this message translates to:
  /// **'Sep'**
  String get monthSepShort;

  /// No description provided for @monthOctShort.
  ///
  /// In en, this message translates to:
  /// **'Oct'**
  String get monthOctShort;

  /// No description provided for @monthNovShort.
  ///
  /// In en, this message translates to:
  /// **'Nov'**
  String get monthNovShort;

  /// No description provided for @monthDecShort.
  ///
  /// In en, this message translates to:
  /// **'Dec'**
  String get monthDecShort;

  /// No description provided for @stockSummaryTitle.
  ///
  /// In en, this message translates to:
  /// **'Inventory Summary & Analytics'**
  String get stockSummaryTitle;

  /// No description provided for @stockSummarySubtitleLong.
  ///
  /// In en, this message translates to:
  /// **'Track capital in goods, expected profits, and default current & historic value'**
  String get stockSummarySubtitleLong;

  /// No description provided for @totalHistoricValue.
  ///
  /// In en, this message translates to:
  /// **'Total Historic Value'**
  String get totalHistoricValue;

  /// No description provided for @historicValueTooltip.
  ///
  /// In en, this message translates to:
  /// **'Total cost of all items ever entered into the system'**
  String get historicValueTooltip;

  /// No description provided for @currentWholesaleValue.
  ///
  /// In en, this message translates to:
  /// **'Current Value (Wholesale)'**
  String get currentWholesaleValue;

  /// No description provided for @currentWholesaleTooltip.
  ///
  /// In en, this message translates to:
  /// **'Total wholesale value of the current inventory'**
  String get currentWholesaleTooltip;

  /// No description provided for @expectedProfit.
  ///
  /// In en, this message translates to:
  /// **'Expected Net Profit'**
  String get expectedProfit;

  /// No description provided for @expectedProfitTooltip.
  ///
  /// In en, this message translates to:
  /// **'Expected financial return (difference between sell value and wholesale cost of current inventory)'**
  String get expectedProfitTooltip;

  /// No description provided for @filterByCategory.
  ///
  /// In en, this message translates to:
  /// **'Filter by Category'**
  String get filterByCategory;

  /// No description provided for @allCategoriesFilter.
  ///
  /// In en, this message translates to:
  /// **'All Categories & Classifications'**
  String get allCategoriesFilter;

  /// No description provided for @totalValue.
  ///
  /// In en, this message translates to:
  /// **'Total Value'**
  String get totalValue;

  /// No description provided for @historicValue.
  ///
  /// In en, this message translates to:
  /// **'Historic Value'**
  String get historicValue;

  /// No description provided for @profitMarginPercent.
  ///
  /// In en, this message translates to:
  /// **'Profit Margin %'**
  String get profitMarginPercent;

  /// No description provided for @sortAsc.
  ///
  /// In en, this message translates to:
  /// **'Sort Ascending'**
  String get sortAsc;

  /// No description provided for @sortDesc.
  ///
  /// In en, this message translates to:
  /// **'Sort Descending'**
  String get sortDesc;

  /// No description provided for @sectionColumn.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get sectionColumn;

  /// No description provided for @productsColumn.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get productsColumn;

  /// No description provided for @currentStock.
  ///
  /// In en, this message translates to:
  /// **'Current Stock'**
  String get currentStock;

  /// No description provided for @outputsColumn.
  ///
  /// In en, this message translates to:
  /// **'Outputs'**
  String get outputsColumn;

  /// No description provided for @historicValueColumn.
  ///
  /// In en, this message translates to:
  /// **'Historic Value'**
  String get historicValueColumn;

  /// No description provided for @currentWholesaleColumn.
  ///
  /// In en, this message translates to:
  /// **'Current Value (Wholesale)'**
  String get currentWholesaleColumn;

  /// No description provided for @expectedSellValue.
  ///
  /// In en, this message translates to:
  /// **'Expected Value (Sell)'**
  String get expectedSellValue;

  /// No description provided for @archivedSection.
  ///
  /// In en, this message translates to:
  /// **'Archived category containing past sales records'**
  String get archivedSection;

  /// No description provided for @otherSections.
  ///
  /// In en, this message translates to:
  /// **'Other Sections'**
  String get otherSections;

  /// No description provided for @stockValueDistribution.
  ///
  /// In en, this message translates to:
  /// **'Current Stock Value Distribution (Wholesale)'**
  String get stockValueDistribution;

  /// No description provided for @capitalInGoods.
  ///
  /// In en, this message translates to:
  /// **'Capital invested in goods by category'**
  String get capitalInGoods;

  /// No description provided for @totalValueAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Value: {amount} KES'**
  String totalValueAmount(Object amount);

  /// No description provided for @stockQtyDistribution.
  ///
  /// In en, this message translates to:
  /// **'Available Stock Quantity Distribution'**
  String get stockQtyDistribution;

  /// No description provided for @qtyBySection.
  ///
  /// In en, this message translates to:
  /// **'Number of units available in stock by category'**
  String get qtyBySection;

  /// No description provided for @totalQtyAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Quantity: {amount} units'**
  String totalQtyAmount(Object amount);

  /// No description provided for @insufficientDataForChart.
  ///
  /// In en, this message translates to:
  /// **'Insufficient data to display chart'**
  String get insufficientDataForChart;

  /// No description provided for @categoryDetails.
  ///
  /// In en, this message translates to:
  /// **'Category Product Movement Details'**
  String get categoryDetails;

  /// No description provided for @productNameColumn.
  ///
  /// In en, this message translates to:
  /// **'Product Name'**
  String get productNameColumn;

  /// No description provided for @salesColumn.
  ///
  /// In en, this message translates to:
  /// **'Sales'**
  String get salesColumn;

  /// No description provided for @refundsColumn.
  ///
  /// In en, this message translates to:
  /// **'Refunds'**
  String get refundsColumn;

  /// No description provided for @netSoldColumn.
  ///
  /// In en, this message translates to:
  /// **'Net Sold'**
  String get netSoldColumn;

  /// No description provided for @unitCount.
  ///
  /// In en, this message translates to:
  /// **'{count} units'**
  String unitCount(Object count);

  /// No description provided for @totalSalesOverall.
  ///
  /// In en, this message translates to:
  /// **'Total Overall Sales'**
  String get totalSalesOverall;

  /// No description provided for @totalRefundsOverall.
  ///
  /// In en, this message translates to:
  /// **'Total Overall Refunds'**
  String get totalRefundsOverall;

  /// No description provided for @netActualSales.
  ///
  /// In en, this message translates to:
  /// **'Net Actual Sales'**
  String get netActualSales;

  /// No description provided for @nameSort.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameSort;

  /// No description provided for @qtySort.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get qtySort;

  /// No description provided for @generalCategory.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get generalCategory;

  /// No description provided for @deletedCategory.
  ///
  /// In en, this message translates to:
  /// **'Deleted'**
  String get deletedCategory;

  /// No description provided for @receiptPhone.
  ///
  /// In en, this message translates to:
  /// **'Phone: {phone}'**
  String receiptPhone(Object phone);

  /// No description provided for @refundInvoice.
  ///
  /// In en, this message translates to:
  /// **'Refund Invoice'**
  String get refundInvoice;

  /// No description provided for @salesInvoice.
  ///
  /// In en, this message translates to:
  /// **'Sales Invoice'**
  String get salesInvoice;

  /// No description provided for @invoiceNumberPdf.
  ///
  /// In en, this message translates to:
  /// **'Invoice No:'**
  String get invoiceNumberPdf;

  /// No description provided for @datePdf.
  ///
  /// In en, this message translates to:
  /// **'Date:'**
  String get datePdf;

  /// No description provided for @cashierPdf.
  ///
  /// In en, this message translates to:
  /// **'Cashier:'**
  String get cashierPdf;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @totalPdf.
  ///
  /// In en, this message translates to:
  /// **'Total:'**
  String get totalPdf;

  /// No description provided for @thankYou.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your visit!'**
  String get thankYou;

  /// No description provided for @vatNumber.
  ///
  /// In en, this message translates to:
  /// **'VAT: {vat}'**
  String vatNumber(Object vat);

  /// No description provided for @pdfProductHeader.
  ///
  /// In en, this message translates to:
  /// **'Product'**
  String get pdfProductHeader;

  /// No description provided for @pdfQtyHeader.
  ///
  /// In en, this message translates to:
  /// **'Qty'**
  String get pdfQtyHeader;

  /// No description provided for @pdfPriceHeader.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get pdfPriceHeader;

  /// No description provided for @pdfTotalHeader.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get pdfTotalHeader;

  /// No description provided for @productNotFoundCubit.
  ///
  /// In en, this message translates to:
  /// **'Product not found'**
  String get productNotFoundCubit;

  /// No description provided for @productUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Product out of stock'**
  String get productUnavailable;

  /// No description provided for @priceBelowMin.
  ///
  /// In en, this message translates to:
  /// **'Price is below minimum ({price} KES)'**
  String priceBelowMin(Object price);

  /// No description provided for @cartIsEmpty.
  ///
  /// In en, this message translates to:
  /// **'Cart is empty'**
  String get cartIsEmpty;

  /// No description provided for @failedOpenSession.
  ///
  /// In en, this message translates to:
  /// **'Failed to open new session: {error}'**
  String failedOpenSession(Object error);

  /// No description provided for @saleSuccess.
  ///
  /// In en, this message translates to:
  /// **'Sale completed successfully'**
  String get saleSuccess;

  /// No description provided for @dbError.
  ///
  /// In en, this message translates to:
  /// **'A database error occurred'**
  String get dbError;

  /// No description provided for @fileSystemError.
  ///
  /// In en, this message translates to:
  /// **'A file system error occurred'**
  String get fileSystemError;

  /// No description provided for @unexpectedErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred'**
  String get unexpectedErrorGeneric;

  /// No description provided for @noProductsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No products'**
  String get noProductsEmpty;

  /// No description provided for @noProductsSearchMatch.
  ///
  /// In en, this message translates to:
  /// **'No products matched the search'**
  String get noProductsSearchMatch;

  /// No description provided for @noAlertsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No alerts'**
  String get noAlertsEmpty;

  /// No description provided for @alertsWillShowHere.
  ///
  /// In en, this message translates to:
  /// **'Alerts will be displayed here when available'**
  String get alertsWillShowHere;

  /// No description provided for @msgProductAdded.
  ///
  /// In en, this message translates to:
  /// **'Product added successfully'**
  String get msgProductAdded;

  /// No description provided for @msgProductUpdated.
  ///
  /// In en, this message translates to:
  /// **'Product updated successfully'**
  String get msgProductUpdated;

  /// No description provided for @msgProductDeleted.
  ///
  /// In en, this message translates to:
  /// **'Product deleted successfully'**
  String get msgProductDeleted;

  /// No description provided for @msgSaleCompleted.
  ///
  /// In en, this message translates to:
  /// **'Sale completed successfully'**
  String get msgSaleCompleted;

  /// No description provided for @msgDataSaved.
  ///
  /// In en, this message translates to:
  /// **'Data saved successfully'**
  String get msgDataSaved;

  /// No description provided for @msgReportGenerated.
  ///
  /// In en, this message translates to:
  /// **'Report generated successfully'**
  String get msgReportGenerated;

  /// No description provided for @msgUserCreated.
  ///
  /// In en, this message translates to:
  /// **'User created successfully'**
  String get msgUserCreated;

  /// No description provided for @msgUserUpdated.
  ///
  /// In en, this message translates to:
  /// **'User updated successfully'**
  String get msgUserUpdated;

  /// No description provided for @msgUserDeleted.
  ///
  /// In en, this message translates to:
  /// **'User deleted successfully'**
  String get msgUserDeleted;

  /// No description provided for @msgLoginSuccess.
  ///
  /// In en, this message translates to:
  /// **'Login successful'**
  String get msgLoginSuccess;

  /// No description provided for @msgLogoutSuccess.
  ///
  /// In en, this message translates to:
  /// **'Logout successful'**
  String get msgLogoutSuccess;

  /// No description provided for @msgPasswordChanged.
  ///
  /// In en, this message translates to:
  /// **'Password changed successfully'**
  String get msgPasswordChanged;

  /// No description provided for @msgSettingsSaved.
  ///
  /// In en, this message translates to:
  /// **'Settings saved successfully'**
  String get msgSettingsSaved;

  /// No description provided for @errProductNotFound.
  ///
  /// In en, this message translates to:
  /// **'Product not found'**
  String get errProductNotFound;

  /// No description provided for @errInsufficientStock.
  ///
  /// In en, this message translates to:
  /// **'Insufficient stock quantity available'**
  String get errInsufficientStock;

  /// No description provided for @errInvalidInput.
  ///
  /// In en, this message translates to:
  /// **'Invalid input data'**
  String get errInvalidInput;

  /// No description provided for @errNetworkError.
  ///
  /// In en, this message translates to:
  /// **'Network connection error'**
  String get errNetworkError;

  /// No description provided for @errServerError.
  ///
  /// In en, this message translates to:
  /// **'Server error'**
  String get errServerError;

  /// No description provided for @errLoginFailed.
  ///
  /// In en, this message translates to:
  /// **'Login failed'**
  String get errLoginFailed;

  /// No description provided for @errAccessDenied.
  ///
  /// In en, this message translates to:
  /// **'Access denied. You do not have permission.'**
  String get errAccessDenied;

  /// No description provided for @errFileNotFound.
  ///
  /// In en, this message translates to:
  /// **'File not found'**
  String get errFileNotFound;

  /// No description provided for @errSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save data'**
  String get errSaveFailed;

  /// No description provided for @errDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete data'**
  String get errDeleteFailed;

  /// No description provided for @errUpdateFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update data'**
  String get errUpdateFailed;

  /// No description provided for @closeSession.
  ///
  /// In en, this message translates to:
  /// **'Close Session'**
  String get closeSession;

  /// No description provided for @closeSessionSub.
  ///
  /// In en, this message translates to:
  /// **'End current shift and generate closing report'**
  String get closeSessionSub;

  /// No description provided for @dayClosedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Day closed successfully. Logging out...'**
  String get dayClosedSuccess;

  /// No description provided for @dayClosedSuccessReport.
  ///
  /// In en, this message translates to:
  /// **'Day closed successfully'**
  String get dayClosedSuccessReport;

  /// No description provided for @viewDayReport.
  ///
  /// In en, this message translates to:
  /// **'View Day Report'**
  String get viewDayReport;

  /// No description provided for @savedReportManager.
  ///
  /// In en, this message translates to:
  /// **'Day report saved. You can view the detailed report.'**
  String get savedReportManager;

  /// No description provided for @savedReportCashier.
  ///
  /// In en, this message translates to:
  /// **'Day report saved. Logging out now.'**
  String get savedReportCashier;

  /// No description provided for @logoutShort.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get logoutShort;

  /// No description provided for @settingsScreenSubtitle.
  ///
  /// In en, this message translates to:
  /// **'System Settings & User Management'**
  String get settingsScreenSubtitle;

  /// No description provided for @fillRequiredFields.
  ///
  /// In en, this message translates to:
  /// **'Please fill in all required fields'**
  String get fillRequiredFields;

  /// No description provided for @addNewUser.
  ///
  /// In en, this message translates to:
  /// **'Add New User'**
  String get addNewUser;

  /// No description provided for @editUser.
  ///
  /// In en, this message translates to:
  /// **'Edit User'**
  String get editUser;

  /// No description provided for @nameRequired.
  ///
  /// In en, this message translates to:
  /// **'Name *'**
  String get nameRequired;

  /// No description provided for @usernameRequired.
  ///
  /// In en, this message translates to:
  /// **'Username *'**
  String get usernameRequired;

  /// No description provided for @passwordRequired.
  ///
  /// In en, this message translates to:
  /// **'Password *'**
  String get passwordRequired;

  /// No description provided for @userType.
  ///
  /// In en, this message translates to:
  /// **'User Type'**
  String get userType;

  /// No description provided for @addUserButton.
  ///
  /// In en, this message translates to:
  /// **'Add User'**
  String get addUserButton;

  /// No description provided for @dataManagement.
  ///
  /// In en, this message translates to:
  /// **'Data Management & Backups'**
  String get dataManagement;

  /// No description provided for @dataManagementSub.
  ///
  /// In en, this message translates to:
  /// **'View system logs, backups, and restore points'**
  String get dataManagementSub;

  /// No description provided for @activitySessionOpened.
  ///
  /// In en, this message translates to:
  /// **'{user} opened a new work day'**
  String activitySessionOpened(Object user);

  /// No description provided for @activitySessionClosed.
  ///
  /// In en, this message translates to:
  /// **'{user} closed the session'**
  String activitySessionClosed(Object user);

  /// No description provided for @activityLogin.
  ///
  /// In en, this message translates to:
  /// **'{user} logged in'**
  String activityLogin(Object user);

  /// No description provided for @activityProductAdded.
  ///
  /// In en, this message translates to:
  /// **'{user} added product {product}'**
  String activityProductAdded(Object user, Object product);

  /// No description provided for @activityProductUpdated.
  ///
  /// In en, this message translates to:
  /// **'{user} updated product {product}'**
  String activityProductUpdated(Object user, Object product);

  /// No description provided for @activityProductDeleted.
  ///
  /// In en, this message translates to:
  /// **'{user} deleted product {product}'**
  String activityProductDeleted(Object user, Object product);

  /// No description provided for @activityProductQtyUpdated.
  ///
  /// In en, this message translates to:
  /// **'{user} updated stock of {product} ({qty})'**
  String activityProductQtyUpdated(Object user, Object product, Object qty);

  /// No description provided for @activityRestock.
  ///
  /// In en, this message translates to:
  /// **'{user} restocked {product} with {qty} units'**
  String activityRestock(Object user, Object product, Object qty);

  /// No description provided for @activitySaleCompleted.
  ///
  /// In en, this message translates to:
  /// **'{user} completed a sale of {total}'**
  String activitySaleCompleted(Object user, Object total);

  /// No description provided for @activityRefundCompleted.
  ///
  /// In en, this message translates to:
  /// **'{user} processed a refund of {total}'**
  String activityRefundCompleted(Object user, Object total);

  /// No description provided for @activityUserAdded.
  ///
  /// In en, this message translates to:
  /// **'{user} created user {targetUser}'**
  String activityUserAdded(Object user, Object targetUser);

  /// No description provided for @activityUserUpdated.
  ///
  /// In en, this message translates to:
  /// **'{user} updated user {targetUser}'**
  String activityUserUpdated(Object user, Object targetUser);

  /// No description provided for @activityUserDeleted.
  ///
  /// In en, this message translates to:
  /// **'{user} deleted user {targetUser}'**
  String activityUserDeleted(Object user, Object targetUser);

  /// No description provided for @activityInvoiceDeleted.
  ///
  /// In en, this message translates to:
  /// **'{user} deleted invoice #{id}'**
  String activityInvoiceDeleted(Object user, Object id);

  /// No description provided for @confirmDeleteInvoiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete Invoice'**
  String get confirmDeleteInvoiceTitle;

  /// No description provided for @confirmDeleteInvoiceMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to permanently delete invoice (#{id})?\n\nThis action cannot be undone.'**
  String confirmDeleteInvoiceMessage(Object id);

  /// No description provided for @confirmDeleteBtn.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get confirmDeleteBtn;

  /// No description provided for @invoiceDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Invoice deleted successfully'**
  String get invoiceDeletedSuccess;

  /// No description provided for @invoiceDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete invoice: {error}'**
  String invoiceDeleteFailed(Object error);

  /// No description provided for @refundSuccess.
  ///
  /// In en, this message translates to:
  /// **'Refund processed successfully'**
  String get refundSuccess;

  /// No description provided for @confirmDeleteInvoicesTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete Invoices'**
  String get confirmDeleteInvoicesTitle;

  /// No description provided for @confirmDeleteInvoicesMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete all invoices from {y1}-{m1}-{d1} to {y2}-{m2}-{d2}?\n\nThis action cannot be undone.'**
  String confirmDeleteInvoicesMessage(
      Object y1, Object m1, Object d1, Object y2, Object m2, Object d2);

  /// No description provided for @invoicesDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Invoices deleted successfully'**
  String get invoicesDeletedSuccess;

  /// No description provided for @invoicesDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete invoices: {error}'**
  String invoicesDeleteFailed(Object error);

  /// No description provided for @productsManagement.
  ///
  /// In en, this message translates to:
  /// **'Manage products and view details'**
  String get productsManagement;

  /// No description provided for @noOtherCategoriesToMove.
  ///
  /// In en, this message translates to:
  /// **'No other categories to move products to.'**
  String get noOtherCategoriesToMove;

  /// No description provided for @selectCategoryBeforeAction.
  ///
  /// In en, this message translates to:
  /// **'Select category before action'**
  String get selectCategoryBeforeAction;

  /// No description provided for @chooseCategory.
  ///
  /// In en, this message translates to:
  /// **'Choose category'**
  String get chooseCategory;

  /// No description provided for @moveProducts.
  ///
  /// In en, this message translates to:
  /// **'Move Products'**
  String get moveProducts;

  /// No description provided for @permanentDelete.
  ///
  /// In en, this message translates to:
  /// **'Permanent Delete'**
  String get permanentDelete;

  /// No description provided for @mustSelectCategoryFirst.
  ///
  /// In en, this message translates to:
  /// **'You must select a category first'**
  String get mustSelectCategoryFirst;

  /// No description provided for @categoryActionNoCategories.
  ///
  /// In en, this message translates to:
  /// **'No other categories to move products to.'**
  String get categoryActionNoCategories;

  /// No description provided for @productSavedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Product saved successfully'**
  String get productSavedSuccess;

  /// No description provided for @categoryAddedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Category added successfully'**
  String get categoryAddedSuccess;

  /// No description provided for @categoryDeletedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Category deleted successfully'**
  String get categoryDeletedSuccess;

  /// No description provided for @loginExistingSession.
  ///
  /// In en, this message translates to:
  /// **'Logged in. The system will continue with the previously open session until it is closed.'**
  String get loginExistingSession;

  /// No description provided for @loginNewSession.
  ///
  /// In en, this message translates to:
  /// **'Logged in and new session opened successfully'**
  String get loginNewSession;

  /// No description provided for @failedOpenDay.
  ///
  /// In en, this message translates to:
  /// **'Failed to open day: {error}'**
  String failedOpenDay(Object error);

  /// No description provided for @wrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password'**
  String get wrongPassword;

  /// No description provided for @noOpenSession.
  ///
  /// In en, this message translates to:
  /// **'No open session to close.'**
  String get noOpenSession;

  /// No description provided for @failedCloseDay.
  ///
  /// In en, this message translates to:
  /// **'Failed to close session: {error}'**
  String failedCloseDay(Object error);

  /// No description provided for @storeInfoSaved.
  ///
  /// In en, this message translates to:
  /// **'Store information saved successfully'**
  String get storeInfoSaved;

  /// No description provided for @unknownUser.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknownUser;

  /// No description provided for @trialCashier.
  ///
  /// In en, this message translates to:
  /// **'Trial Cashier'**
  String get trialCashier;

  /// No description provided for @fieldRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get fieldRequired;

  /// No description provided for @enterValidNumber.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid number'**
  String get enterValidNumber;

  /// No description provided for @confirmDeleteCategory.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete Category'**
  String get confirmDeleteCategory;

  /// No description provided for @confirmDeleteCategoryMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this category?'**
  String get confirmDeleteCategoryMessage;

  /// No description provided for @viewGrid.
  ///
  /// In en, this message translates to:
  /// **'Grid View'**
  String get viewGrid;

  /// No description provided for @viewTable.
  ///
  /// In en, this message translates to:
  /// **'Table View'**
  String get viewTable;

  /// No description provided for @searchProductHint.
  ///
  /// In en, this message translates to:
  /// **'Search by name, code, barcode or price...'**
  String get searchProductHint;

  /// No description provided for @filterByAvailability.
  ///
  /// In en, this message translates to:
  /// **'By Availability'**
  String get filterByAvailability;

  /// No description provided for @selectAvailability.
  ///
  /// In en, this message translates to:
  /// **'Select Availability'**
  String get selectAvailability;

  /// No description provided for @selectCategory.
  ///
  /// In en, this message translates to:
  /// **'Select Category'**
  String get selectCategory;

  /// No description provided for @urgencyVeryHigh.
  ///
  /// In en, this message translates to:
  /// **'Very Urgent'**
  String get urgencyVeryHigh;

  /// No description provided for @urgencyHigh.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get urgencyHigh;

  /// No description provided for @urgencyMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get urgencyMedium;

  /// No description provided for @urgencyLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get urgencyLow;

  /// No description provided for @categoryHasProductsError.
  ///
  /// In en, this message translates to:
  /// **'Cannot delete category because it contains products'**
  String get categoryHasProductsError;

  /// No description provided for @sameCategoryError.
  ///
  /// In en, this message translates to:
  /// **'Cannot move products to the same category'**
  String get sameCategoryError;

  /// No description provided for @dailyReports.
  ///
  /// In en, this message translates to:
  /// **'Daily Reports'**
  String get dailyReports;

  /// No description provided for @todayRevenue.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Revenue & Sales'**
  String get todayRevenue;

  /// No description provided for @dailyReportDesc.
  ///
  /// In en, this message translates to:
  /// **'Review financial metrics, sales, refunds, and top selling products'**
  String get dailyReportDesc;

  /// No description provided for @noDataForDate.
  ///
  /// In en, this message translates to:
  /// **'No data available for this date'**
  String get noDataForDate;

  /// No description provided for @ensureValidDate.
  ///
  /// In en, this message translates to:
  /// **'Please ensure a valid date is selected or complete sales first'**
  String get ensureValidDate;

  /// No description provided for @filterReportByDate.
  ///
  /// In en, this message translates to:
  /// **'Filter report by date'**
  String get filterReportByDate;

  /// No description provided for @currentSelectedDay.
  ///
  /// In en, this message translates to:
  /// **'Currently selected day'**
  String get currentSelectedDay;

  /// No description provided for @reportGeneratedDate.
  ///
  /// In en, this message translates to:
  /// **'Report generation date'**
  String get reportGeneratedDate;

  /// No description provided for @closedByUser.
  ///
  /// In en, this message translates to:
  /// **'Closed: {user}'**
  String closedByUser(Object user);

  /// No description provided for @todayTotalSales.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Total Sales'**
  String get todayTotalSales;

  /// No description provided for @dailyNetProfit.
  ///
  /// In en, this message translates to:
  /// **'Daily Net Profit'**
  String get dailyNetProfit;

  /// No description provided for @salesReportPreview.
  ///
  /// In en, this message translates to:
  /// **'Sales Report Preview'**
  String get salesReportPreview;

  /// No description provided for @viewDetailedTable.
  ///
  /// In en, this message translates to:
  /// **'View detailed sales table'**
  String get viewDetailedTable;

  /// No description provided for @instantPrintReport.
  ///
  /// In en, this message translates to:
  /// **'Instant print for report'**
  String get instantPrintReport;

  /// No description provided for @sharePdfReport.
  ///
  /// In en, this message translates to:
  /// **'Share PDF Report'**
  String get sharePdfReport;

  /// No description provided for @viewTableBtn.
  ///
  /// In en, this message translates to:
  /// **'View Table'**
  String get viewTableBtn;

  /// No description provided for @noProductsSoldDate.
  ///
  /// In en, this message translates to:
  /// **'No products sold for this date'**
  String get noProductsSoldDate;

  /// No description provided for @dailyProductsPerformance.
  ///
  /// In en, this message translates to:
  /// **'Daily Products Performance ({count})'**
  String dailyProductsPerformance(Object count);

  /// No description provided for @salesUnits.
  ///
  /// In en, this message translates to:
  /// **'Sales: {qty} units'**
  String salesUnits(Object qty);

  /// No description provided for @profitAmount.
  ///
  /// In en, this message translates to:
  /// **'Profit: {amount}'**
  String profitAmount(Object amount);

  /// No description provided for @returnedProductsDetails.
  ///
  /// In en, this message translates to:
  /// **'Returned Products Details'**
  String get returnedProductsDetails;

  /// No description provided for @returnedQty.
  ///
  /// In en, this message translates to:
  /// **'Returned Quantity'**
  String get returnedQty;

  /// No description provided for @returnedValue.
  ///
  /// In en, this message translates to:
  /// **'Return Value'**
  String get returnedValue;

  /// No description provided for @dailyFinancialLog.
  ///
  /// In en, this message translates to:
  /// **'Daily Financial Operations Log'**
  String get dailyFinancialLog;

  /// No description provided for @operationTime.
  ///
  /// In en, this message translates to:
  /// **'Operation Time'**
  String get operationTime;

  /// No description provided for @operationType.
  ///
  /// In en, this message translates to:
  /// **'Operation Type'**
  String get operationType;

  /// No description provided for @totalAmountLabel.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmountLabel;

  /// No description provided for @transactionDetails.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transactionDetails;

  /// No description provided for @transactionCount.
  ///
  /// In en, this message translates to:
  /// **'{count} transactions'**
  String transactionCount(Object count);

  /// No description provided for @netSalesLabel.
  ///
  /// In en, this message translates to:
  /// **'Net Sales'**
  String get netSalesLabel;

  /// No description provided for @transactionsCountLabel2.
  ///
  /// In en, this message translates to:
  /// **'Number of Transactions'**
  String get transactionsCountLabel2;

  /// No description provided for @transactionUnit.
  ///
  /// In en, this message translates to:
  /// **'transaction'**
  String get transactionUnit;

  /// No description provided for @noTransactionsReport.
  ///
  /// In en, this message translates to:
  /// **'No transactions in this report'**
  String get noTransactionsReport;

  /// No description provided for @transactionsWillAppearHere.
  ///
  /// In en, this message translates to:
  /// **'Transactions will appear here when available'**
  String get transactionsWillAppearHere;

  /// No description provided for @detailedOperationsLog.
  ///
  /// In en, this message translates to:
  /// **'Detailed Operations Log'**
  String get detailedOperationsLog;

  /// No description provided for @transactionNumber.
  ///
  /// In en, this message translates to:
  /// **'Transaction Number'**
  String get transactionNumber;

  /// No description provided for @timeLabel.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get timeLabel;

  /// No description provided for @typeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get typeLabel;

  /// No description provided for @byLabel.
  ///
  /// In en, this message translates to:
  /// **'By'**
  String get byLabel;

  /// No description provided for @valueLabel.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get valueLabel;

  /// No description provided for @previewReportTitle.
  ///
  /// In en, this message translates to:
  /// **'Preview Report'**
  String get previewReportTitle;

  /// No description provided for @shareBtn.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get shareBtn;

  /// No description provided for @openTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Open Time'**
  String get openTimeLabel;

  /// No description provided for @closeTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Close Time'**
  String get closeTimeLabel;

  /// No description provided for @openLabel.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get openLabel;

  /// No description provided for @sessionsHistorySubtitle.
  ///
  /// In en, this message translates to:
  /// **'View and manage system sessions and daily reports'**
  String get sessionsHistorySubtitle;

  /// No description provided for @taxSalesReceipt.
  ///
  /// In en, this message translates to:
  /// **'Tax Sales Receipt'**
  String get taxSalesReceipt;

  /// No description provided for @taxSalesInvoice.
  ///
  /// In en, this message translates to:
  /// **'Tax Sales Invoice'**
  String get taxSalesInvoice;

  /// No description provided for @dateTimeLabel.
  ///
  /// In en, this message translates to:
  /// **'Date and Time:'**
  String get dateTimeLabel;

  /// No description provided for @responsibleCashier.
  ///
  /// In en, this message translates to:
  /// **'Responsible Cashier:'**
  String get responsibleCashier;

  /// No description provided for @itemsTotalLabel.
  ///
  /// In en, this message translates to:
  /// **'Items Total:'**
  String get itemsTotalLabel;

  /// No description provided for @appliedDiscount.
  ///
  /// In en, this message translates to:
  /// **'Applied Discount:'**
  String get appliedDiscount;

  /// No description provided for @valueAddedTax.
  ///
  /// In en, this message translates to:
  /// **'Value Added Tax:'**
  String get valueAddedTax;

  /// No description provided for @grandTotalLabelPdf.
  ///
  /// In en, this message translates to:
  /// **'Grand Total:'**
  String get grandTotalLabelPdf;

  /// No description provided for @thankYouShopping.
  ///
  /// In en, this message translates to:
  /// **'Thank you for shopping with us!'**
  String get thankYouShopping;

  /// No description provided for @posSystemName.
  ///
  /// In en, this message translates to:
  /// **'barasa_softwares POS Sales Management System'**
  String get posSystemName;

  /// No description provided for @enterpriseTaxNumber.
  ///
  /// In en, this message translates to:
  /// **'Enterprise Tax Number:'**
  String get enterpriseTaxNumber;

  /// No description provided for @invoiceStatusLabel.
  ///
  /// In en, this message translates to:
  /// **'Invoice Status:'**
  String get invoiceStatusLabel;

  /// No description provided for @fullyPaid.
  ///
  /// In en, this message translates to:
  /// **'Fully Paid'**
  String get fullyPaid;

  /// No description provided for @productHeaderA4.
  ///
  /// In en, this message translates to:
  /// **'Product / Item'**
  String get productHeaderA4;

  /// No description provided for @unitPrice.
  ///
  /// In en, this message translates to:
  /// **'Unit Price'**
  String get unitPrice;

  /// No description provided for @grandTotalColumn.
  ///
  /// In en, this message translates to:
  /// **'Grand Total'**
  String get grandTotalColumn;

  /// No description provided for @termsAndConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions:'**
  String get termsAndConditions;

  /// No description provided for @termsLine1.
  ///
  /// In en, this message translates to:
  /// **'1. Sold goods cannot be returned.'**
  String get termsLine1;

  /// No description provided for @termsLine2.
  ///
  /// In en, this message translates to:
  /// **'2. Invoice must be presented for exchange.'**
  String get termsLine2;

  /// No description provided for @invoiceDiscountsLabel.
  ///
  /// In en, this message translates to:
  /// **'Invoice Discounts:'**
  String get invoiceDiscountsLabel;

  /// No description provided for @finalTotal.
  ///
  /// In en, this message translates to:
  /// **'Final Total:'**
  String get finalTotal;

  /// No description provided for @thankYouDealing.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your business!'**
  String get thankYouDealing;

  /// No description provided for @dailySalesReport.
  ///
  /// In en, this message translates to:
  /// **'Daily Sales Report'**
  String get dailySalesReport;

  /// No description provided for @advancedPosSystem.
  ///
  /// In en, this message translates to:
  /// **'Advanced POS System - barasa_softwares'**
  String get advancedPosSystem;

  /// No description provided for @reportDateLabel.
  ///
  /// In en, this message translates to:
  /// **'Report Date:'**
  String get reportDateLabel;

  /// No description provided for @transactionCountLabel.
  ///
  /// In en, this message translates to:
  /// **'Number of Transactions:'**
  String get transactionCountLabel;

  /// No description provided for @netRevenueLabel.
  ///
  /// In en, this message translates to:
  /// **'Net Revenue'**
  String get netRevenueLabel;

  /// No description provided for @totalSalesLabel.
  ///
  /// In en, this message translates to:
  /// **'Total Sales'**
  String get totalSalesLabel;

  /// No description provided for @totalRefundsLabel.
  ///
  /// In en, this message translates to:
  /// **'Total Refunds'**
  String get totalRefundsLabel;

  /// No description provided for @netProfitLabel.
  ///
  /// In en, this message translates to:
  /// **'Net Profit'**
  String get netProfitLabel;

  /// No description provided for @closedByLabel.
  ///
  /// In en, this message translates to:
  /// **'Closed By'**
  String get closedByLabel;

  /// No description provided for @dailyPerformanceSummary.
  ///
  /// In en, this message translates to:
  /// **'Daily Performance Summary'**
  String get dailyPerformanceSummary;

  /// No description provided for @costLabel.
  ///
  /// In en, this message translates to:
  /// **'Cost'**
  String get costLabel;

  /// No description provided for @profitLabel.
  ///
  /// In en, this message translates to:
  /// **'Profit'**
  String get profitLabel;

  /// No description provided for @profitMarginLabel.
  ///
  /// In en, this message translates to:
  /// **'Profit Margin'**
  String get profitMarginLabel;

  /// No description provided for @topProductsPerformance.
  ///
  /// In en, this message translates to:
  /// **'Top Selling Products Performance'**
  String get topProductsPerformance;

  /// No description provided for @reportCreatedAt.
  ///
  /// In en, this message translates to:
  /// **'Report created at: {time}'**
  String reportCreatedAt(Object time);

  /// No description provided for @allRightsReserved.
  ///
  /// In en, this message translates to:
  /// **'All Rights Reserved'**
  String get allRightsReserved;

  /// No description provided for @settingsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Store information updated'**
  String get settingsUpdated;

  /// No description provided for @stockUpdateActivity.
  ///
  /// In en, this message translates to:
  /// **'Stock update: {product} (+{qty})'**
  String stockUpdateActivity(Object product, Object qty);

  /// No description provided for @activityStockUpdate.
  ///
  /// In en, this message translates to:
  /// **'{user} updated stock of {product} (+{qty})'**
  String activityStockUpdate(Object user, Object product, Object qty);

  /// No description provided for @activitySettingsUpdate.
  ///
  /// In en, this message translates to:
  /// **'{user} updated store settings'**
  String activitySettingsUpdate(Object user);

  /// No description provided for @selectRead.
  ///
  /// In en, this message translates to:
  /// **'Select Read'**
  String get selectRead;

  /// No description provided for @deleteSelectedLabel.
  ///
  /// In en, this message translates to:
  /// **'Delete Selected'**
  String get deleteSelectedLabel;

  /// No description provided for @allFilter.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get allFilter;

  /// No description provided for @saleLabel.
  ///
  /// In en, this message translates to:
  /// **'Sale'**
  String get saleLabel;

  /// No description provided for @refundLabel.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get refundLabel;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @sessionLabel.
  ///
  /// In en, this message translates to:
  /// **'Session: {id}'**
  String sessionLabel(Object id);

  /// No description provided for @analyticsOverview.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get analyticsOverview;

  /// No description provided for @analyticsSales.
  ///
  /// In en, this message translates to:
  /// **'Sales Analysis'**
  String get analyticsSales;

  /// No description provided for @analyticsProducts.
  ///
  /// In en, this message translates to:
  /// **'Product Analysis'**
  String get analyticsProducts;

  /// No description provided for @todayFilter.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get todayFilter;

  /// No description provided for @yesterdayFilter.
  ///
  /// In en, this message translates to:
  /// **'Yesterday'**
  String get yesterdayFilter;

  /// No description provided for @last7Days.
  ///
  /// In en, this message translates to:
  /// **'Last 7 Days'**
  String get last7Days;

  /// No description provided for @thisWeek.
  ///
  /// In en, this message translates to:
  /// **'This Week'**
  String get thisWeek;

  /// No description provided for @last30Days.
  ///
  /// In en, this message translates to:
  /// **'Last 30 Days'**
  String get last30Days;

  /// No description provided for @thisMonth.
  ///
  /// In en, this message translates to:
  /// **'This Month'**
  String get thisMonth;

  /// No description provided for @thisYear.
  ///
  /// In en, this message translates to:
  /// **'This Year'**
  String get thisYear;

  /// No description provided for @customDate.
  ///
  /// In en, this message translates to:
  /// **'Custom Date'**
  String get customDate;

  /// No description provided for @customRange.
  ///
  /// In en, this message translates to:
  /// **'Custom Range'**
  String get customRange;

  /// No description provided for @allSessions.
  ///
  /// In en, this message translates to:
  /// **'All Sessions'**
  String get allSessions;

  /// No description provided for @sessionFilter.
  ///
  /// In en, this message translates to:
  /// **'Filter by Session'**
  String get sessionFilter;

  /// No description provided for @sessionNumber.
  ///
  /// In en, this message translates to:
  /// **'Session #{id}'**
  String sessionNumber(Object id);

  /// No description provided for @selectedDate.
  ///
  /// In en, this message translates to:
  /// **'Selected Date'**
  String get selectedDate;

  /// No description provided for @todayDate.
  ///
  /// In en, this message translates to:
  /// **'Today\'s Date'**
  String get todayDate;

  /// No description provided for @closedByLabel2.
  ///
  /// In en, this message translates to:
  /// **'Closed by: {user}'**
  String closedByLabel2(Object user);

  /// No description provided for @noDataSalesAnalytics.
  ///
  /// In en, this message translates to:
  /// **'No data available for sales analysis'**
  String get noDataSalesAnalytics;

  /// No description provided for @noDataToDisplay.
  ///
  /// In en, this message translates to:
  /// **'No data to display'**
  String get noDataToDisplay;

  /// No description provided for @analyticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Analytics & Statistics'**
  String get analyticsTitle;

  /// No description provided for @overviewTab.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overviewTab;

  /// No description provided for @salesTab.
  ///
  /// In en, this message translates to:
  /// **'Sales Analysis'**
  String get salesTab;

  /// No description provided for @productsTab.
  ///
  /// In en, this message translates to:
  /// **'Product Analysis'**
  String get productsTab;

  /// No description provided for @fromDateLabel.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get fromDateLabel;

  /// No description provided for @toDateLabel.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get toDateLabel;

  /// No description provided for @totalSalesAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Total Sales'**
  String get totalSalesAnalytics;

  /// No description provided for @costAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Total Cost'**
  String get costAnalytics;

  /// No description provided for @netProfitAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Net Profit'**
  String get netProfitAnalytics;

  /// No description provided for @lossLabel.
  ///
  /// In en, this message translates to:
  /// **'Loss'**
  String get lossLabel;

  /// No description provided for @marginLabel.
  ///
  /// In en, this message translates to:
  /// **'{percent}% Margin'**
  String marginLabel(Object percent);

  /// No description provided for @avgSaleAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Average Sale'**
  String get avgSaleAnalytics;

  /// No description provided for @perSaleLabel.
  ///
  /// In en, this message translates to:
  /// **'Per Sale'**
  String get perSaleLabel;

  /// No description provided for @salesByHourAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Sales by Hour'**
  String get salesByHourAnalytics;

  /// No description provided for @amLabel.
  ///
  /// In en, this message translates to:
  /// **'AM'**
  String get amLabel;

  /// No description provided for @pmLabel.
  ///
  /// In en, this message translates to:
  /// **'PM'**
  String get pmLabel;

  /// No description provided for @salesByCategoryAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Sales by Category'**
  String get salesByCategoryAnalytics;

  /// No description provided for @returnRateLabel.
  ///
  /// In en, this message translates to:
  /// **'Return Rate'**
  String get returnRateLabel;

  /// No description provided for @netSoldLabel.
  ///
  /// In en, this message translates to:
  /// **'Net Sold ({qty})'**
  String netSoldLabel(Object qty);

  /// No description provided for @refundCountLabel.
  ///
  /// In en, this message translates to:
  /// **'Refunds ({qty})'**
  String refundCountLabel(Object qty);

  /// No description provided for @viewAsTable.
  ///
  /// In en, this message translates to:
  /// **'View as Table'**
  String get viewAsTable;

  /// No description provided for @quickPrint.
  ///
  /// In en, this message translates to:
  /// **'Quick Print'**
  String get quickPrint;

  /// No description provided for @sharePdf.
  ///
  /// In en, this message translates to:
  /// **'Share PDF'**
  String get sharePdf;

  /// No description provided for @previewReportBtn.
  ///
  /// In en, this message translates to:
  /// **'Preview Report'**
  String get previewReportBtn;

  /// No description provided for @returnedProductsTitle.
  ///
  /// In en, this message translates to:
  /// **'Returned Products ({count})'**
  String returnedProductsTitle(Object count);

  /// No description provided for @operationByLabel.
  ///
  /// In en, this message translates to:
  /// **'Operation by'**
  String get operationByLabel;

  /// No description provided for @dailySalesAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Daily Sales'**
  String get dailySalesAnalytics;

  /// No description provided for @dailyNetRevenue.
  ///
  /// In en, this message translates to:
  /// **'Daily Net Revenue'**
  String get dailyNetRevenue;

  /// No description provided for @productPerformance.
  ///
  /// In en, this message translates to:
  /// **'Product Performance ({count})'**
  String productPerformance(Object count);

  /// No description provided for @unitsSold.
  ///
  /// In en, this message translates to:
  /// **'Sold: {qty} units'**
  String unitsSold(Object qty);

  /// No description provided for @profitMarginAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Margin: {percent}%'**
  String profitMarginAnalytics(Object percent);

  /// No description provided for @noProductsSoldToday.
  ///
  /// In en, this message translates to:
  /// **'No products sold for this date'**
  String get noProductsSoldToday;

  /// No description provided for @printReportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Report sent to printer successfully'**
  String get printReportSuccess;

  /// No description provided for @printReportError.
  ///
  /// In en, this message translates to:
  /// **'Error printing report: {error}'**
  String printReportError(Object error);

  /// No description provided for @shareReportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Report shared successfully'**
  String get shareReportSuccess;

  /// No description provided for @shareReportError.
  ///
  /// In en, this message translates to:
  /// **'Error sharing report: {error}'**
  String shareReportError(Object error);

  /// No description provided for @loadingReport.
  ///
  /// In en, this message translates to:
  /// **'Preparing report for printing...'**
  String get loadingReport;

  /// No description provided for @loadingShare.
  ///
  /// In en, this message translates to:
  /// **'Preparing report for sharing...'**
  String get loadingShare;

  /// No description provided for @loadReportError.
  ///
  /// In en, this message translates to:
  /// **'Error loading report: {error}'**
  String loadReportError(Object error);

  /// No description provided for @reportLoadedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Report loaded successfully'**
  String get reportLoadedSuccess;

  /// No description provided for @searchInvoiceHint2.
  ///
  /// In en, this message translates to:
  /// **'Scan barcode or enter invoice number...'**
  String get searchInvoiceHint2;

  /// No description provided for @itemsLabel.
  ///
  /// In en, this message translates to:
  /// **'{count} items'**
  String itemsLabel(Object count);

  /// No description provided for @refundBtn.
  ///
  /// In en, this message translates to:
  /// **'Return'**
  String get refundBtn;

  /// No description provided for @deleteBtn.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteBtn;

  /// No description provided for @printBtn.
  ///
  /// In en, this message translates to:
  /// **'Print'**
  String get printBtn;

  /// No description provided for @invoicePreviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Invoice Preview'**
  String get invoicePreviewTitle;

  /// No description provided for @thermalReceiptLabel.
  ///
  /// In en, this message translates to:
  /// **'Thermal Receipt (80mm)'**
  String get thermalReceiptLabel;

  /// No description provided for @a4InvoiceLabel.
  ///
  /// In en, this message translates to:
  /// **'Sales Invoice (A4)'**
  String get a4InvoiceLabel;

  /// No description provided for @quickPrintTooltip.
  ///
  /// In en, this message translates to:
  /// **'Quick Print'**
  String get quickPrintTooltip;

  /// No description provided for @sharePdfTooltip.
  ///
  /// In en, this message translates to:
  /// **'Share PDF'**
  String get sharePdfTooltip;

  /// No description provided for @deleteInvoiceFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete invoice: {error}'**
  String deleteInvoiceFailed(Object error);

  /// No description provided for @refundInvoiceFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to process refund: {error}'**
  String refundInvoiceFailed(Object error);

  /// No description provided for @bulkDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete invoices: {error}'**
  String bulkDeleteFailed(Object error);

  /// No description provided for @dataProtection.
  ///
  /// In en, this message translates to:
  /// **'Data Protection System'**
  String get dataProtection;

  /// No description provided for @protectionEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get protectionEnabled;

  /// No description provided for @protectionDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get protectionDisabled;

  /// No description provided for @protectionSystemActive.
  ///
  /// In en, this message translates to:
  /// **'System is Active'**
  String get protectionSystemActive;

  /// No description provided for @yourDataProtected.
  ///
  /// In en, this message translates to:
  /// **'Your data is protected from:'**
  String get yourDataProtected;

  /// No description provided for @accidentalDeletion.
  ///
  /// In en, this message translates to:
  /// **'Accidental deletion'**
  String get accidentalDeletion;

  /// No description provided for @systemCrashes.
  ///
  /// In en, this message translates to:
  /// **'System crashes'**
  String get systemCrashes;

  /// No description provided for @powerOutage.
  ///
  /// In en, this message translates to:
  /// **'Power outage'**
  String get powerOutage;

  /// No description provided for @windowsReinstall.
  ///
  /// In en, this message translates to:
  /// **'Windows reinstallation'**
  String get windowsReinstall;

  /// No description provided for @dataLocation.
  ///
  /// In en, this message translates to:
  /// **'Data Location:'**
  String get dataLocation;

  /// No description provided for @changeLocation.
  ///
  /// In en, this message translates to:
  /// **'Change Location'**
  String get changeLocation;

  /// No description provided for @protectionInactive.
  ///
  /// In en, this message translates to:
  /// **'System is Inactive'**
  String get protectionInactive;

  /// No description provided for @dataAtRisk.
  ///
  /// In en, this message translates to:
  /// **'Your data is at risk of being lost in case of:'**
  String get dataAtRisk;

  /// No description provided for @appDeletion.
  ///
  /// In en, this message translates to:
  /// **'App deletion'**
  String get appDeletion;

  /// No description provided for @virusScan.
  ///
  /// In en, this message translates to:
  /// **'Virus scanning'**
  String get virusScan;

  /// No description provided for @systemCrash.
  ///
  /// In en, this message translates to:
  /// **'System crash'**
  String get systemCrash;

  /// No description provided for @enableProtection.
  ///
  /// In en, this message translates to:
  /// **'Enable Data Protection Now'**
  String get enableProtection;

  /// No description provided for @dataMigrationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Data migrated successfully'**
  String get dataMigrationSuccess;

  /// No description provided for @migrationSuccess.
  ///
  /// In en, this message translates to:
  /// **'Migration completed successfully'**
  String get migrationSuccess;

  /// No description provided for @migrationDetails.
  ///
  /// In en, this message translates to:
  /// **'Data moved to: {path}. Please restart the app.'**
  String migrationDetails(Object path);

  /// No description provided for @migrationFailed.
  ///
  /// In en, this message translates to:
  /// **'Data migration failed or was cancelled'**
  String get migrationFailed;

  /// No description provided for @dataManagementTitle.
  ///
  /// In en, this message translates to:
  /// **'Data Management'**
  String get dataManagementTitle;

  /// No description provided for @backupAndRestore.
  ///
  /// In en, this message translates to:
  /// **'Backups & Auto-Save Points'**
  String get backupAndRestore;

  /// No description provided for @backupLabel.
  ///
  /// In en, this message translates to:
  /// **'Backup'**
  String get backupLabel;

  /// No description provided for @restorePointLabel.
  ///
  /// In en, this message translates to:
  /// **'Restore Point'**
  String get restorePointLabel;

  /// No description provided for @backupSection.
  ///
  /// In en, this message translates to:
  /// **'Backups'**
  String get backupSection;

  /// No description provided for @autoSaveSection.
  ///
  /// In en, this message translates to:
  /// **'Auto-Save Points'**
  String get autoSaveSection;

  /// No description provided for @systemStatus.
  ///
  /// In en, this message translates to:
  /// **'System Status'**
  String get systemStatus;

  /// No description provided for @createBackup.
  ///
  /// In en, this message translates to:
  /// **'Create New Backup'**
  String get createBackup;

  /// No description provided for @noBackups.
  ///
  /// In en, this message translates to:
  /// **'No backups available'**
  String get noBackups;

  /// No description provided for @createBackupHint.
  ///
  /// In en, this message translates to:
  /// **'Create a backup to protect your data'**
  String get createBackupHint;

  /// No description provided for @noAutoSavePoints.
  ///
  /// In en, this message translates to:
  /// **'No auto-save points'**
  String get noAutoSavePoints;

  /// No description provided for @autoSaveHint.
  ///
  /// In en, this message translates to:
  /// **'Save points are created automatically during important operations'**
  String get autoSaveHint;

  /// No description provided for @autoSavePoint.
  ///
  /// In en, this message translates to:
  /// **'Auto-Save Point'**
  String get autoSavePoint;

  /// No description provided for @systemLabel.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get systemLabel;

  /// No description provided for @newestFirst.
  ///
  /// In en, this message translates to:
  /// **'Newest First'**
  String get newestFirst;

  /// No description provided for @restoreBtn.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restoreBtn;

  /// No description provided for @deleteBtn2.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get deleteBtn2;

  /// No description provided for @currentMode.
  ///
  /// In en, this message translates to:
  /// **'Current System Mode'**
  String get currentMode;

  /// No description provided for @debugModeDesc.
  ///
  /// In en, this message translates to:
  /// **'The app is currently in development mode (demo data enabled)'**
  String get debugModeDesc;

  /// No description provided for @releaseModeDesc.
  ///
  /// In en, this message translates to:
  /// **'The app is currently in production mode'**
  String get releaseModeDesc;

  /// No description provided for @chooseMode.
  ///
  /// In en, this message translates to:
  /// **'Choose operating mode:'**
  String get chooseMode;

  /// No description provided for @releaseMode.
  ///
  /// In en, this message translates to:
  /// **'Production Mode (Release)'**
  String get releaseMode;

  /// No description provided for @releaseModeDesc2.
  ///
  /// In en, this message translates to:
  /// **'Use the real database only, without any demo data.'**
  String get releaseModeDesc2;

  /// No description provided for @debugMode.
  ///
  /// In en, this message translates to:
  /// **'Development Mode (Debug)'**
  String get debugMode;

  /// No description provided for @debugModeDesc2.
  ///
  /// In en, this message translates to:
  /// **'Auto-generate demo products and sales to test the system.'**
  String get debugModeDesc2;

  /// No description provided for @demoDataDangerZone.
  ///
  /// In en, this message translates to:
  /// **'Demo Data Danger Zone'**
  String get demoDataDangerZone;

  /// No description provided for @dbToolsDesc.
  ///
  /// In en, this message translates to:
  /// **'Database management tools and demo data generation.'**
  String get dbToolsDesc;

  /// No description provided for @reseedWarning.
  ///
  /// In en, this message translates to:
  /// **'This button will clear all entries and generate complete demo sales data...'**
  String get reseedWarning;

  /// No description provided for @reseedDatabase.
  ///
  /// In en, this message translates to:
  /// **'Initialize Database & Generate Demo Data'**
  String get reseedDatabase;

  /// No description provided for @modeChanged.
  ///
  /// In en, this message translates to:
  /// **'System mode changed to: {mode}'**
  String modeChanged(Object mode);

  /// No description provided for @modeDebug.
  ///
  /// In en, this message translates to:
  /// **'Development'**
  String get modeDebug;

  /// No description provided for @modeRelease.
  ///
  /// In en, this message translates to:
  /// **'Production'**
  String get modeRelease;

  /// No description provided for @saveSettingsFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save settings: {error}'**
  String saveSettingsFailed(Object error);

  /// No description provided for @confirmReseed.
  ///
  /// In en, this message translates to:
  /// **'Confirm Data Reset'**
  String get confirmReseed;

  /// No description provided for @reseedConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'All current data will be erased and new demo data will be generated...'**
  String get reseedConfirmMessage;

  /// No description provided for @reseedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Data reset and demo generation completed successfully'**
  String get reseedSuccess;

  /// No description provided for @reseedError.
  ///
  /// In en, this message translates to:
  /// **'Error during data reset: {error}'**
  String reseedError(Object error);

  /// No description provided for @confirmRestore.
  ///
  /// In en, this message translates to:
  /// **'Confirm Restore'**
  String get confirmRestore;

  /// No description provided for @confirmRestoreMessage.
  ///
  /// In en, this message translates to:
  /// **'Current data will be replaced with the selected backup...'**
  String get confirmRestoreMessage;

  /// No description provided for @restoreSuccess.
  ///
  /// In en, this message translates to:
  /// **'Restore completed successfully. Restarting...'**
  String get restoreSuccess;

  /// No description provided for @restoreFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore backup'**
  String get restoreFailed;

  /// No description provided for @restoreError.
  ///
  /// In en, this message translates to:
  /// **'Error during restore: {error}'**
  String restoreError(Object error);

  /// No description provided for @confirmAutoRestore.
  ///
  /// In en, this message translates to:
  /// **'Confirm Auto-Save Restore'**
  String get confirmAutoRestore;

  /// No description provided for @confirmAutoRestoreMessage.
  ///
  /// In en, this message translates to:
  /// **'System will revert to this save point and lose any data recorded after it...'**
  String get confirmAutoRestoreMessage;

  /// No description provided for @autoRestoreSuccess.
  ///
  /// In en, this message translates to:
  /// **'Auto-save point restored successfully. Restarting...'**
  String get autoRestoreSuccess;

  /// No description provided for @autoRestoreFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore auto-save point'**
  String get autoRestoreFailed;

  /// No description provided for @deleteBackup.
  ///
  /// In en, this message translates to:
  /// **'Delete Backup'**
  String get deleteBackup;

  /// No description provided for @deleteBackupMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this backup?...'**
  String get deleteBackupMessage;

  /// No description provided for @deleteBackupSuccess.
  ///
  /// In en, this message translates to:
  /// **'Backup deleted successfully'**
  String get deleteBackupSuccess;

  /// No description provided for @deleteBackupFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete: {error}'**
  String deleteBackupFailed(Object error);

  /// No description provided for @settingsClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get settingsClose;

  /// No description provided for @loadingData.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loadingData;

  /// No description provided for @confirmBtn.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmBtn;

  /// No description provided for @restoreDataBtn.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restoreDataBtn;

  /// No description provided for @backupFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to create backup'**
  String get backupFailed;

  /// No description provided for @loadDataError.
  ///
  /// In en, this message translates to:
  /// **'Failed to load data: {error}'**
  String loadDataError(Object error);

  /// No description provided for @settingsSaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save settings: {error}'**
  String settingsSaveFailed(Object error);

  /// No description provided for @paymentMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Payment Method'**
  String get paymentMethodTitle;

  /// No description provided for @paymentCash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get paymentCash;

  /// No description provided for @paymentWallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get paymentWallet;

  /// No description provided for @paymentMethodLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethodLabel;

  /// No description provided for @notificationLowStockTitle.
  ///
  /// In en, this message translates to:
  /// **'Low Stock'**
  String get notificationLowStockTitle;

  /// No description provided for @notificationOutOfStockTitle.
  ///
  /// In en, this message translates to:
  /// **'Out of Stock'**
  String get notificationOutOfStockTitle;

  /// No description provided for @notificationLowStockBadge.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get notificationLowStockBadge;

  /// No description provided for @notificationOutOfStockBadge.
  ///
  /// In en, this message translates to:
  /// **'Urgent'**
  String get notificationOutOfStockBadge;

  /// No description provided for @notificationLowStockMessage.
  ///
  /// In en, this message translates to:
  /// **'Only {qty} units left - {product}'**
  String notificationLowStockMessage(Object qty, Object product);

  /// No description provided for @notificationOutOfStockMessage.
  ///
  /// In en, this message translates to:
  /// **'0 units left - {product}'**
  String notificationOutOfStockMessage(Object product);

  /// No description provided for @quantityUnits.
  ///
  /// In en, this message translates to:
  /// **'{count} units'**
  String quantityUnits(Object count);

  /// No description provided for @paymentLabel.
  ///
  /// In en, this message translates to:
  /// **'Payment Method: {method}'**
  String paymentLabel(Object method);

  /// No description provided for @confirmPayment.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirmPayment;

  /// No description provided for @cancelPayment.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancelPayment;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
