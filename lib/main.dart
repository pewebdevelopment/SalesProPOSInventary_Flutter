import 'package:flutter/material.dart';
import 'Screens/Adjustment/adjustment_list.dart';
import 'Screens/Authentication/forgot_password.dart';
import 'Screens/Authentication/login_form.dart';
import 'Screens/Authentication/otp_page.dart';
import 'Screens/Authentication/register_form.dart';
import 'Screens/Authentication/sign_in.dart';
import 'Screens/Authentication/success_screen.dart';
import 'Screens/Backup/backup_screen.dart';
import 'Screens/Bank/bank_list.dart';
import 'Screens/Barcode/generate_barcode.dart';
import 'Screens/Branch/branch_list.dart';
import 'Screens/Calculator/calculator.dart';
import 'Screens/Customers/contact_list.dart';
import 'Screens/Damage/damage_report.dart';
import 'Screens/Dashboard/dashboard_screen.dart';
import 'Screens/Delivery/delivery_address_list.dart';
import 'Screens/Expense/expense_list.dart';
import 'Screens/Gifts/gift_list.dart';
import 'Screens/Home/home.dart';
import 'Screens/Income/income_list.dart';
import 'Screens/Ledger/ledger_list.dart';
import 'Screens/Loss%20&%20Profit/loss_and_profit_report.dart';
import 'Screens/Marketing/marketing_screen.dart';
import 'Screens/Online%20Store/add_online_store.dart';
import 'Screens/Payment/payment_options.dart';
import 'Screens/PaymentHistory/dealer_payment_history.dart';
import 'Screens/PaymentHistory/supplier_payment_history.dart';
import 'Screens/PaymentHistory/vendor_payment_history.dart';
import 'Screens/Products/add_product.dart';
import 'Screens/Profile/profile_screen.dart';
import 'Screens/Purchase%20Return/purchase_return_list.dart';
import 'Screens/Purchase/purchase_screen.dart';
import 'Screens/Quotation/quotation_screen.dart';
import 'Screens/Report/reports.dart';
import 'Screens/Sales/add_discount.dart';
import 'Screens/Sales/add_promo_code.dart';
import 'Screens/Sales/dealer_sales_details.dart';
import 'Screens/Sales/due_screen.dart';
import 'Screens/Sales/paid_screen.dart';
import 'Screens/Sales/sales_details.dart';
import 'Screens/Sales/sales_list.dart';
import 'Screens/Sales/sales_screen.dart';
import 'Screens/Sales/stock_list.dart';
import 'Screens/Sales/whole_sale_details.dart';
import 'Screens/SalesReturn/return_list.dart';
import 'Screens/SplashScreen/on_board.dart';
import 'Screens/SplashScreen/splash_screen.dart';
import 'Screens/Supplier/supplier_list.dart';
import 'Screens/Transaction/transaction_list.dart';
import 'Screens/User%20Role/user_role_list.dart';
import 'Screens/Warehouse/warehouse_list.dart';
import 'package:nb_utils/nb_utils.dart';

import 'Screens/Authentication/profile_setup.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mobile POS',
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/onBoard': (context) => const OnBoard(),
        '/signIn': (context) => const SignInScreen(),
        '/loginForm': (context) => const LoginForm(),
        '/signup': (context) => const RegisterScreen(),
        '/otp': (context) => const OtpPage(),
        '/forgotPassword': (context) => const ForgotPassword(),
        '/success': (context) => const SuccessScreen(),
        '/setupProfile': (context) => const ProfileSetup(),
        '/home': (context) => const Home(),
        '/profile': (context) => const ProfileScreen(),
        '/Products': (context) => const AddProduct(),
        '/SalesList': (context) => const SalesScreen(),
        '/SalesDetails': (context) => const SalesDetails(),
        '/addPromoCode': (context) => const AddPromoCode(),
        '/addDiscount': (context) => const AddDiscount(),
        '/WholeSalesDetails': (context) => const WholeSaleDetails(),
        '/DealerSalesDetails': (context) => const DealerSAlesDetails(),
        '/Loss&Profit': (context) => const LossAndProfitReport(),
        '/Sales': (context) => SaleProducts(catName: 'Laptop',),
        '/Calculator': (context) => const CalculatorScreen(),
        '/Customer': (context) => const ContactList(),
        '/Supplier': (context) => const SupplierList(),
        '/Warehouse': (context) => const WareHouseList(),
        '/Expense': (context) => const ExpenseList(),
        '/Stock': (context) => const StockList(),
        '/Paid': (context) => const PaidScreen(),
        '/Gift': (context) => const GiftList(),
        '/Income': (context) => const IncomeList(),
        '/Adjustment': (context) => const AdjustmentList(),
        '/SalesReturn': (context) => const ReturnList(),
        '/Return': (context) => const PurchaseReturn(),
        '/Branch': (context) => const BranchList(),
        '/Purchase': (context) =>  PurchaseScreen(catName: 'Laptop',),
        '/Barcode': (context) => const GenerateBarcode(),
        '/UserRole': (context) => const UserRoleList(),
        '/Bank': (context) => const BankList(),
        '/Dashboard': (context) => const DashboardScreen(),
        '/Due': (context) => const DueScreen(),
        '/DueList': (context) => const DueScreen(),
        '/Delivery': (context) => const DeliveryAddress(),
        '/Damage': (context) => const DamageReport(),
        '/Backup': (context) => const BackupScreen(),
        '/Quotation': (context) =>  QuotationScreen(catName: 'Laptop',),
        '/Reports': (context) => const Reports(),
        '/Marketing': (context) => const MarketingScreen(),
        '/Ledger': (context) => const LedgerList(),
        '/OnlineStore': (context) => const AddOnlineStore(),
        '/Transaction': (context) => const TransactionDetails(),
        '/PaymentOptions': (context) => const PaymentOptions(),
        '/SupplierTransaction': (context) => const SupplierPaymentHistory(),
        '/DealerTransaction': (context) => const DealerPaymentHistory(),
        '/VendorTransaction': (context) => const VendorPaymentHistory(),
      },
    );
  }
}
