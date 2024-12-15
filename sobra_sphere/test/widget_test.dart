import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sobra_sphere/app_state.dart';
import 'package:sobra_sphere/backend/backend.dart';
import 'package:sobra_sphere/flutter_flow/flutter_flow_widgets.dart';
import 'package:sobra_sphere/flutter_flow/nav/nav.dart';
import 'package:mockito/mockito.dart';
import 'authentication/authentication_firebase.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import 'package:sobra_sphere/log/user/login_page/login_page_widget.dart';
import 'package:sobra_sphere/log/user/reg_page/reg_page_widget.dart';
import 'package:sobra_sphere/pages/user/cantina/cantina_widget.dart';
import 'package:sobra_sphere/log/seller/login_page_seller/login_page_seller_widget.dart';
import 'package:sobra_sphere/log/seller/login_reg_page_seller/login_reg_page_seller_widget.dart';
import 'package:sobra_sphere/log/seller/reg_page_seller/reg_page_seller_widget.dart';
import 'package:sobra_sphere/log/user/login_reg_page/login_reg_page_widget.dart';
import 'package:sobra_sphere/log/user/select_page/select_page_widget.dart';
import 'package:sobra_sphere/pages/seller/profile_page_staff/profile_page_staff_widget.dart';
import 'package:sobra_sphere/pages/seller/add_bag/add_bag_widget.dart';
import 'package:sobra_sphere/pages/seller/customer_support_staff/customer_support_staff_widget.dart';
import 'package:sobra_sphere/pages/seller/orders_info/orders_info_widget.dart';
import 'package:sobra_sphere/pages/seller/sales_info/sales_info_widget.dart';
import 'package:sobra_sphere/pages/user/aefeup/aefeup_widget.dart';
import 'package:sobra_sphere/pages/user/bare_biblio/bare_biblio_widget.dart';
import 'package:sobra_sphere/pages/user/customer_support_user/customer_support_user_widget.dart';
import 'package:sobra_sphere/pages/user/edit_profile_user/edit_profile_user_widget.dart';
import 'package:sobra_sphere/pages/user/fav_page/fav_page_widget.dart';
import 'package:sobra_sphere/pages/user/grill/grill_widget.dart';
import 'package:sobra_sphere/pages/user/inesctec/inesctec_widget.dart';
import 'package:sobra_sphere/pages/user/minas/minas_widget.dart';
import 'package:sobra_sphere/pages/user/my_bag_copy/my_bag_copy_widget.dart';
import 'package:sobra_sphere/pages/user/profile_page/profile_page_widget.dart';
import 'package:sobra_sphere/pages/user/search_page/search_page_widget.dart';

class MockAppStateNotifier extends Mock implements AppStateNotifier {}
class MockFirebase extends Mock implements Firebase {}
class MockGoRouter extends Mock implements GoRouter {}
class MockFFAppState extends Mock implements FFAppState {}
class MockAddBagModel extends Mock implements AddBagModel {}
class CustomerSupportStaffModel extends ChangeNotifier{
  String message = '';

  void setMessage(String value) {
    message = value;
    notifyListeners();
  }
}
class OrdersInfoModel extends ChangeNotifier{
  String orders = '';
  String activeOrders = '';
  String completedOrders = '';

  void setOrders(String value) {
    orders = value;
    notifyListeners();
  }

  void setActiveOrders(String value) {
    activeOrders = value;
    notifyListeners();
  }

  void setCompletedOrders(String value) {
    completedOrders = value;
    notifyListeners();
  }
}
class AddBagModel extends ChangeNotifier{
  String bagName = '';
  String price = '';
  String description = '';

  void setBagName(String value) {
    bagName = value;
    notifyListeners();
  }

  void setPrice(String value) {
    price = value;
    notifyListeners();
  }

  void setDescription(String value) {
    description = value;
    notifyListeners();
  }
}
class SalesInfoModel extends ChangeNotifier{
  String sales = '';

  void setSales(String value) {
    sales = value;
    notifyListeners();
  }
}


void main(){
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    setupFirebaseAuthMocks();
    await Firebase.initializeApp();
  });

  testWidgets('User Login Test', (WidgetTester tester) async {

    await tester.pumpAndSettle();
    await tester.pumpWidget(MaterialApp(home: LoginPageWidget()));

    await tester.pumpAndSettle();

    expect(find.byKey(Key('TextField_7ihj')), findsOneWidget);
    expect(find.byKey(Key('TextField_2ryg')), findsOneWidget);
    //expect(find.byKey(Key('loginButton')), findsOneWidget);

    await tester.enterText(find.byKey(Key('TextField_7ihj')), 'test@example.com');
    await tester.enterText(find.byKey(Key('TextField_2ryg')), 'test1@example.com');
    await tester.enterText(find.byKey(Key('TextField_7ihj')), 'password123');
    await tester.enterText(find.byKey(Key('TextField_2ryg')), 'password123-2');
    //await tester.tap(find.byKey(Key('loginButton')));
    await tester.pumpAndSettle();
    expect(find.byType(LoginPageWidget), findsOneWidget);


  });

  testWidgets('User Registration Test', (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(home: RegPageWidget()));
    await tester.enterText(find.byKey(Key('usernameTextField')), 'testUser');
    await tester.enterText(find.byKey(Key('emailTextField')), 'test@example.com');
    await tester.enterText(find.byKey(Key('passwordTextField')), 'password123');
    await tester.enterText(find.byKey(Key('confirmPasswordTextField')), 'password123');

    expect(find.byType(RegPageWidget), findsOneWidget);
  });

  testWidgets('LoginRegPageWidget UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: LoginRegPageWidget()));

    await tester.pumpAndSettle();

    expect(find.byType(LoginRegPageWidget), findsOneWidget);

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.byType(SafeArea), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Login'), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Register'), findsOneWidget);
  });

  testWidgets('SelectPageWidget UI Test', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(home: SelectPageWidget()));

    await tester.pumpAndSettle();

    expect(find.byType(SelectPageWidget), findsOneWidget);

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.byType(SafeArea), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Sell a bag'), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Buy a bag'), findsOneWidget);
  });

  testWidgets('LoginPageSellerWidget UI Test', (WidgetTester tester) async {
    await tester.pumpAndSettle();
    await tester.pumpWidget(MaterialApp(home: LoginPageSellerWidget()));

    await tester.pumpAndSettle();

    expect(find.byKey(Key('emailTextField')), findsOneWidget);
    expect(find.byKey(Key('passwordTextField')), findsOneWidget);

    await tester.enterText(find.byKey(Key('emailTextField')),'test@example.com');
    await tester.enterText(find.byKey(Key('passwordTextField')),'password123');

    await tester.pumpAndSettle();
    expect(find.byType(LoginPageSellerWidget), findsOneWidget);
  });

  testWidgets('LoginRegPageSellerWidget UI Test', (WidgetTester tester) async {

    await tester.pumpWidget(MaterialApp(home: LoginRegPageSellerWidget()));

    await tester.pumpAndSettle();

    expect(find.byType(LoginRegPageSellerWidget), findsOneWidget);

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.byType(SafeArea), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Login'), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Register'), findsOneWidget);
  });
/*
  testWidgets('ProfilePageStaffWidget UI Test', (WidgetTester tester) async {

    final mockAppState = MockFFAppState();

    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: ProfilePageStaffWidget()),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.byType(ProfilePageStaffWidget), findsOneWidget);

    expect(find.byType(Scaffold), findsOneWidget);

    expect(find.byType(SafeArea), findsOneWidget);

    expect(find.widgetWithText(FFButtonWidget, 'Log Out'), findsOneWidget);

    //add more anda lá
  });
  */

/*
  testWidgets('CustomerSupportStaffWidget UI Test', (WidgetTester tester) async {
    final customerSupportStaffModel = CustomerSupportStaffModel();

    await tester.pumpWidget(
      ChangeNotifierProvider<CustomerSupportStaffModel>.value(
        value: customerSupportStaffModel,
        child: MaterialApp(home: CustomerSupportStaffWidget()),
      ),
    );

    await tester.pumpAndSettle();


    expect(find.byType(CustomerSupportStaffWidget), findsOneWidget);

  });

  testWidgets('OrdersInfoWidget UI Test', (WidgetTester tester) async {
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: OrdersInfoWidget()),
      ),
    );

    expect(find.byType(OrdersInfoWidget), findsOneWidget);
    expect(find.byType(OrdersInfoWidget), findsOneWidget);
    expect(find.byType(OrdersInfoWidget), findsOneWidget);
    await tester.pumpAndSettle();

    // Verify that OrdersInfoWidget is showing up.
    expect(find.byType(OrdersInfoWidget), findsOneWidget);

    // Verify that the Text widgets with the specified keys are present.
    expect(find.byKey(Key('ordersTextKey')), findsOneWidget);
    expect(find.byKey(Key('activeOrdersTextKey')), findsOneWidget);
    expect(find.byKey(Key('completedOrdersTextKey')), findsOneWidget);

    await tester.enterText(find.byKey(Key('ordersTextKey')), 'testeText');
    await tester.enterText(find.byKey(Key('activeOrdersTextKey')), '12');
    await tester.enterText(find.byKey(Key('completedOrdersTextKey')), '11');

    await tester.pumpAndSettle();
    expect(find.byType(OrdersInfoModel), findsOneWidget);
  });

  testWidgets('SalesInfoWidget UI Test', (WidgetTester tester) async {
    final salesInfoModel = SalesInfoModel();

    await tester.pumpWidget(
      ChangeNotifierProvider<SalesInfoModel>.value(
        value: salesInfoModel,
        child: MaterialApp(home: SalesInfoWidget()),
      ),
    );

    await tester.pumpAndSettle();

    // Verify that SalesInfoWidget is showing up.
    expect(find.byType(SalesInfoWidget), findsOneWidget);

    // Add more assertions as needed to test the UI elements of the widget.
  });
  */
  testWidgets('AEFEUPWidget UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: AefeupWidget()),
      ),
    );

    expect(find.byType(AefeupWidget), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });

  testWidgets('BarBiblioteca UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: BareBiblioWidget()),
      ),
    );

    expect(find.byType(BareBiblioWidget), findsOneWidget);
    expect(find.byType(BareBiblioWidget), findsOneWidget);
    expect(find.byType(BareBiblioWidget), findsOneWidget);
  });

  testWidgets('CantinaWidget UI Test', (WidgetTester tester) async {
    final mockAppState = MockFFAppState();

    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: CantinaWidget()),
      ),
    );
    expect(find.byType(CantinaWidget), findsOneWidget);

    expect(find.byType(Scaffold), findsOneWidget);
  });

  testWidgets('CustomerSupport UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: CustomerSupportUserWidget()),
      ),
    );

    expect(find.byType(CustomerSupportUserWidget), findsOneWidget);
    expect(find.byType(CustomerSupportUserWidget), findsOneWidget);
    expect(find.byType(CustomerSupportUserWidget), findsOneWidget);
  });

  testWidgets('EditProfile UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: EditProfileUserWidget()),
      ),
    );

    expect(find.byType(EditProfileUserWidget), findsOneWidget);
    expect(find.byType(EditProfileUserWidget), findsOneWidget);
    expect(find.byType(EditProfileUserWidget), findsOneWidget);
  });

  testWidgets('FavPage UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: FavPageWidget()),
      ),
    );

    expect(find.byType(FavPageWidget), findsOneWidget);
    expect(find.byType(FavPageWidget), findsOneWidget);
    expect(find.byType(FavPageWidget), findsOneWidget);
  });

  testWidgets('Grill UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: GrillWidget()),
      ),
    );

    expect(find.byType(GrillWidget), findsOneWidget);
    expect(find.byType(GrillWidget), findsOneWidget);
    expect(find.byType(GrillWidget), findsOneWidget);
  });

  testWidgets('INESCTEC UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: InesctecWidget()),
      ),
    );

    expect(find.byType(InesctecWidget), findsOneWidget);
    expect(find.byType(InesctecWidget), findsOneWidget);
    expect(find.byType(InesctecWidget), findsOneWidget);
  });

  testWidgets('Minas UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: MinasWidget()),
      ),
    );

    expect(find.byType(MinasWidget), findsOneWidget);
    expect(find.byType(MinasWidget), findsOneWidget);
    expect(find.byType(MinasWidget), findsOneWidget);
  });

  testWidgets('MyBagCopy UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: MyBagCopyWidget()),
      ),
    );

    expect(find.byType(MyBagCopyWidget), findsOneWidget);
    expect(find.byType(MyBagCopyWidget), findsOneWidget);
    expect(find.byType(MyBagCopyWidget), findsOneWidget);
  });
/*
  testWidgets('ProfilePage UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: ProfilePageWidget()),
      ),
    );

    expect(find.byType(ProfilePageWidget), findsOneWidget);
    expect(find.byType(ProfilePageWidget), findsOneWidget);
    expect(find.byType(ProfilePageWidget), findsOneWidget);
  });

  testWidgets('SearchPage UI Test', (WidgetTester tester) async{
    final mockAppState = MockFFAppState();
    await tester.pumpWidget(
      ChangeNotifierProvider<FFAppState>(
        create: (_) => mockAppState,
        child: MaterialApp(home: SearchPageWidget()),
      ),
    );

    expect(find.byType(SearchPageWidget), findsOneWidget);
    expect(find.byType(SearchPageWidget), findsOneWidget);
    expect(find.byType(SearchPageWidget), findsOneWidget);
  });
*/
}