import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          // App Name
          'app_name': 'Tiger App',
          'splash1': 'Instant \nWithdrawals',
          'splash2': 'Fairplay \nProtect',
          'splash3': 'RNG \nCertified',

          // Onboard View
          'continue_button_eng': 'Continue in English',
          'continue_button_hin': 'हिंदी में आगे बढ़े',
          'switched_to_eng': 'Language Switched to English',
          'switched_to_hin': 'हिंदी भाषा पर स्विच किया गया',

          // Sign up view
          'sign_up_title': 'Sign up',
          'existing_user': 'Existing User?',
          'sign_in_button': 'Sign in Here',
          'phone_no_hint': 'Enter your phone number',
          'get_otp': 'Get OTP & Continue',
          'policy1':
              'By continuing, I hereby confirm that I am 18 years of age or above and I am not playing from Assam, Telangana, Odisha, Nagaland, Andhra Pradesh, Meghalaya, Sikkim, Tamil Nadu, and outside India and I agree to the ',
          'policy2': 'Terms and Conditions ',
          'policy3': 'and ',
          'policy4': 'Privacy Policy.',

          // Login View
          'new_user_button': 'New User?',
          'sign_in_title': 'Sign in',
          'continue_button': 'Continue with Phone',

          // Snackbar title & messages
          'empty_no_title': 'Phone No',
          'empty_no_mess': 'Enter phone number.',

          // Otp View
          'otp_title': 'OTP',
          'otp_text': 'Enter 6 digit OTP to ',
          'otp_continue_button': 'Continue',
          'retry_text': 'Retry in ',
          'sec_text': ' sec',
          'resend_button': 'Resend ',

          // Home view
          'spin_wheel_title': 'Spin Wheel',
          'classic__spin': 'Classic spin in under 10 mins',
          'play_now_button': 'Play Now',
          'home_label': 'Home',
          'account_label': 'Account',

          // Notification
          'notification_title': "Notification's",
          'no_notification': "No new notifications",

          // My Balances
          'my_balances_title': 'My Balances',
          'total_balance': 'Total Balance',
          'currency': '₹',
          'winning_amount': 'Winning',
          'withdraw': 'Withdraw',
          'add_money': 'Add Money',
          'trans_history': 'Transaction History',

          // Trans History
          'trans_history_title': 'Transaction History',
          'filter_select': 'No transaction found for the selected filter.',
          'reset_button': 'Reset',

          // Withdraw Money
          'withdraw_title': 'Withdraw Money',
          'ava_for_withdraw': 'Available for Withdrawal',
          'withdraw_amount': 'Withdrawal Amount',
          'enter_amount_text': 'Enter Amount',
          'min_and_max': '*Min-₹1, Max-₹20',
          'withdrawal_modes': 'Withdrawal Modes',
          'upi_id_text': 'UPI ID',
          'link_button': 'Link',
          'bank_acc': 'Bank Account',
          'add_button': 'Add',

          //Add Bank Acc
          'add_bank_acc_title': 'Add Bank Account',
          'bank_acc_number_label': 'Bank account number',
          'confim_acc_number_label': 'Confirm account number',
          'ifsc_code_label': 'IFSC code',
          'acc_holder_name_label': "Account holder's name",
          'note_not_chnaged':
              'Bank account once added cannot be changed later.',
          'proceed_button': 'Proceed',

          // Add Money
          'add_money_title': 'Add Money',
          'add_money_max': '*Max 1000',
          'add_money_modes': 'Add Money Modes',

          // Learn to play
          'learn_to_play_title': 'Learn to Play & \nStart Winning',
          'next_button': 'Next',
          'tournament_time': 'Under 60 Seconds \nTournaments',
          '60_second': '60:00',
          'game_time': '15 second \nspin round time',
          'settlement_time': '15 second \nsettlement time',
          'play_button': 'Play',

          // Lobby View
          'prize_pot': 'Prize Pot',
          'tournament': 'Tournaments',
          'prize_pool': 'Prize Pool',
          'unlimited': 'Unlimited. 1 Winner',
          'tourn_name_1': 'Game - A',
          'upto_50_players': '50 Players. 1 Winner',
          'tourn_name_2': 'Game - B',
          'upto_10_players': '10 Players. 1 Winner',
          'tourn_name_3': 'Maharaja',
          'entry_fee': 'Entry Fee',
          'free_play': 'Free',
          'paid_play': 'Paid',
          'earn_winnings': 'Earn Winnings',
          'prize_money_1': '₹0.0',
          'prize_money_2': '₹0.25',
          'prize_money_3': '₹0.5',
          'rank_1': 'Rank 1: ₹0.25',
          'rank_2': 'Rank 2: ₹0',
          'rank_1_text':
              'The Payment is split in case of a tie Maintain a \ngood internet connection An unstable \nconnection can lead to disqualification.',
          'rank_2_text':
              'Quick format has 10 seconds per move and a \ntotal game time of 5 miutes.',
          'term_and_conditions_button': 'Terms & Conditions',

          // Account View
          'see_profile': 'See Profile',
          'choose_lang': 'Choose Language',
          'eng_button': 'English',
          'hin_button': 'Hindi',
          'wallet_balance': 'Wallet Balance',
          'initial_ammount': '₹0.00',
          'help': 'Help',
          'customer_suppo': 'Customer support',
          'about': 'About',
          'refer': 'Refer & Get Cash',
          'logout': 'Logout',

          // Profile Details
          'my_profiles_title': 'My Profiles',
          'phoen_num': '+91',
          'phone_label': 'Phone',
          'total_games': 'Total Games',
          'played': 'Played',
          'count': '0',
          'won': 'Won',
          'game_history': 'Game History',
          'no_game_played': 'No game played yet',

          // Refer and Get Cash
          'refer_and_earn_text': 'Refer and Earn on the Tiger App!',
          'play_games_text': 'Play games and win cash!',
          'dummy_code': 'ABC1235',
          'copy_code': 'Tap to copy',

          // About
          'rng_cer': 'RNG Certificates',
          'privacy_policy': 'Privacy Policy',
          'about_us': 'About Us',
          'faq': 'FAQs',
          'app_ver': 'App Version',
          'app_ver_default': 'Loading...',

          // Contact Us
          'contact_us_title': 'Contact us',
          'contact_us_text':
              'For any help contact us \nat tigerapp.ind@gmail.com'
        },

        // Hindi Language
        'hi_IN': {
          'app_name': 'टाइगर ऐप',
          'splash1': 'तुरंत निकासी',
          'splash2': 'फेयरप्ले प्रोटेक्ट',
          'splash3': 'RNG प्रमाणित',
        }
      };
}
