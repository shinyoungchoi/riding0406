import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['ko', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String koText = '',
    String enText = '',
  }) =>
      [koText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // onboard
  {
    '112my797': {
      'ko': 'Welcome to Flutterflow',
      'en': '',
    },
    'pi69p7oc': {
      'ko': 'Build Apps Effortlessly',
      'en': '',
    },
    'ggt5qmr6': {
      'ko': 'Home',
      'en': '',
    },
  },
  // onboard2
  {
    'gsydlht9': {
      'ko': 'Search for Books',
      'en': '',
    },
    'igsykohq': {
      'ko': 'Find amazing classic books in our library.',
      'en': '',
    },
    '0tegr7v8': {
      'ko': 'Purchase Books',
      'en': '',
    },
    'kztat36l': {
      'ko': 'Buy and view all your favorite books you find in this library.',
      'en': '',
    },
    'oarbscft': {
      'ko': 'Review Purchases',
      'en': '',
    },
    '0wwaie60': {
      'ko':
          'Keep track of all your purchases that you have made, want to trade books in? Go ahead and list them for exchange.',
      'en': '',
    },
    'vcpsqbbb': {
      'ko': 'Continue',
      'en': '',
    },
    'gwyethok': {
      'ko': 'Home',
      'en': '',
    },
  },
  // loginStep1
  {
    'qte7ics1': {
      'ko': 'Login',
      'en': 'Welcome to Bariny.',
    },
    '79ncmaka': {
      'ko': '함꼐 라이딩할 준비가 되셨나요?',
      'en': 'Ready to ride together?',
    },
    'tq11bjri': {
      'ko': '또는',
      'en': 'OR',
    },
    'd2m1wale': {
      'ko': '바린이되기',
      'en': 'Sign up',
    },
    'jubs4laq': {
      'ko': '바린이 로그인',
      'en': 'Log in to Barin',
    },
    'o4pbrzul': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // loginStep2
  {
    'zdfkxpxt': {
      'ko': '로그인',
      'en': 'Login',
    },
    '88ympw3k': {
      'ko': 'Email을 입력해주세요',
      'en': 'Please enter your email',
    },
    'o8es3oob': {
      'ko': '패스워드를 입력해주세요.',
      'en': 'password',
    },
    'dqcocszv': {
      'ko': '비밀번호를 잊으셨나요?',
      'en': 'Forgot Password?',
    },
    'yhpvr0om': {
      'ko': '로그인',
      'en': 'Login',
    },
    'veqdgxzm': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // createAccountStep1
  {
    '2s0zb749': {
      'ko': '함께 라이딩 떠나요!',
      'en': 'Let&#39;s go riding together!',
    },
    'bd0kjdkh': {
      'ko': '서비스 이용약관에 동의해주세요.',
      'en': 'Please agree to the Terms of Service.',
    },
    'adc385qy': {
      'ko': '[필수] 이용약관 동의',
      'en': '[Required] Accept the terms of use',
    },
    'kxrlghc9': {
      'ko': '[필수] 개인정보처리방침 동의',
      'en': '[Required] Agree to the Privacy Policy',
    },
    '8q2tuj08': {
      'ko': '[필수] 위치기반 서비스약관 동의',
      'en': '[Required] Agree to location-based terms of service',
    },
    'yyn6wbkr': {
      'ko': '전체 동의합니다.',
      'en': 'I totally agree.',
    },
    '4nhmw41c': {
      'ko': '다음',
      'en': 'next',
    },
    'siygdj4w': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // createAccountStep2
  {
    '2u0fd8ai': {
      'ko': '함께 라이딩 떠나요!',
      'en': 'Let&#39;s go riding together!',
    },
    '090iiors': {
      'ko': '아래 정보를 입력해주세요',
      'en': 'Please enter the information below',
    },
    'o9hyp43k': {
      'ko': '이메일',
      'en': 'Your email...',
    },
    'nor2r18z': {
      'ko': '비밀번호',
      'en': 'Password',
    },
    'zh0ht3b5': {
      'ko': '영문,숫자,특수문자 2자리 조합 10자리',
      'en': '10 alphanumeric characters and 2 special characters',
    },
    'xswmmc3q': {
      'ko': '비밀번호 확인',
      'en': 'Password',
    },
    'ugkpcfou': {
      'ko': '영문,숫자,특수문자 2자리 조합 10자리',
      'en': '10 alphanumeric characters and 2 special characters',
    },
    'vba80pef': {
      'ko': '바린이에서 쓰실 닉네임',
      'en': 'nickname',
    },
    'c2wkvze5': {
      'ko': '가입하기',
      'en': 'sign up',
    },
    'exrrmy1k': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // verifyPhone
  {
    'sffeheuh': {
      'ko': '전화번호 인증하기',
      'en': 'Verify your phone number',
    },
    'nynff0z3': {
      'ko': '휴대폰 번호를 입력해주세요.',
      'en': 'Please enter your mobile phone number.',
    },
    'lb8m91ga': {
      'ko': '비밀번호 재설정을 위하여 기입하신 이메일로 링크가 첨부된 메일을 보내드립니다. ',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
    },
    'd9i1qsea': {
      'ko': '인증하기',
      'en': 'Authenticate',
    },
    'ygct7soc': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // forgotPassword
  {
    'lz6i5gcs': {
      'ko': '비밀번호 찾기',
      'en': 'Forgot Password',
    },
    'lqe5f53g': {
      'ko': '가입한 이메일을 입력해주세요.',
      'en': 'Enter your email',
    },
    '23hdyh2t': {
      'ko': '비밀번호 재설정을 위하여 기입하신 이메일로 링크가 첨부된 메일을 보내드립니다. ',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
    },
    'sk6rsh4r': {
      'ko': '재설정 링크 보내기',
      'en': 'Send Reset Link',
    },
    '7sk8kb2v': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // profile_step2_screen
  {
    'aey4wjk5': {
      'ko': 'Dog Profile',
      'en': 'Dog Profile',
    },
    'bp7zlos3': {
      'ko': '1/2',
      'en': '1/2',
    },
    'fhuwh23j': {
      'ko':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
    },
    'skcm4ayr': {
      'ko': 'Dog Name',
      'en': 'Dog Name',
    },
    'ge9b1ipv': {
      'ko': 'Dog Breed',
      'en': 'Dog Breed',
    },
    'jyjbs16s': {
      'ko': 'Dog Age',
      'en': 'Dog Age',
    },
    'ckxd2tci': {
      'ko': 'You can add multiple pups in your profile.',
      'en': 'You can add multiple pups in your profile.',
    },
    'hcaj8q6f': {
      'ko': 'Skip',
      'en': 'Skip',
    },
    'we8n9k2v': {
      'ko': 'Save & Continue',
      'en': 'Save &amp; Continue',
    },
    'q009s8ac': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // profile_step1_screen
  {
    '0z2dvtsr': {
      'ko': 'Dog Profile',
      'en': 'Dog Profile',
    },
    'm49hsrtb': {
      'ko': '1/2',
      'en': '1/2',
    },
    'sfga0h32': {
      'ko':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
    },
    'k0dkgmnd': {
      'ko': 'Dog Name',
      'en': 'Dog Name',
    },
    'qzurhb5u': {
      'ko': 'Dog Breed',
      'en': 'Dog Breed',
    },
    'g6wtzsp6': {
      'ko': 'Dog Age',
      'en': 'Dog Age',
    },
    'aa4renl3': {
      'ko': 'You can add multiple pups in your profile.',
      'en': 'You can add multiple pups in your profile.',
    },
    'zlkia0xx': {
      'ko': 'Skip',
      'en': 'Skip',
    },
    'pmj0cxab': {
      'ko': 'Save & Continue',
      'en': 'Save &amp; Continue',
    },
    'h7neub4p': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // homePage
  {
    '15kgipc2': {
      'ko': '@username',
      'en': '@username',
    },
    '24u3bb6h': {
      'ko': '2,493',
      'en': '2,493',
    },
    'l39162ej': {
      'ko': '4',
      'en': '4',
    },
    'utzpv289': {
      'ko':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en':
          'I&#39;m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.',
    },
    'wu0tlooz': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // profilePage
  {
    'u7qzrdsn': {
      'ko': 'Add a Dog',
      'en': 'Add a Dog',
    },
    'f2bwd8hm': {
      'ko': 'Settings',
      'en': 'Settings',
    },
    'k7kyh4ow': {
      'ko': 'Dog Profiles',
      'en': 'Dog Profiles',
    },
    'pdqjr7kj': {
      'ko': 'Posts',
      'en': 'Posts',
    },
    'z7atpcj5': {
      'ko': '@username',
      'en': '@username',
    },
    '7cdc6wwq': {
      'ko': '2,493',
      'en': '2,493',
    },
    'y1knncp2': {
      'ko': '4',
      'en': '4',
    },
    '87elh1tl': {
      'ko':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en':
          'I&#39;m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.',
    },
    'kxt45dp4': {
      'ko': 'Profile',
      'en': 'Profile',
    },
  },
  // createPost
  {
    'veb786ft': {
      'ko': 'Create Post',
      'en': 'Create Post',
    },
    'h7c383eh': {
      'ko': 'Comment....',
      'en': 'Comment....',
    },
    'd31eti1b': {
      'ko': 'Location',
      'en': 'Location',
    },
    'gt6et9ti': {
      'ko': 'Create Post',
      'en': 'Create Post',
    },
    '0wioan2h': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // createStory
  {
    'y6wy2na0': {
      'ko': 'Comment....',
      'en': 'Comment....',
    },
    'ddgkj2lc': {
      'ko': 'Photo',
      'en': 'Photo',
    },
    '8rgpw1mr': {
      'ko': 'Video',
      'en': 'Video',
    },
    'zwmkvtoz': {
      'ko': 'Create Story',
      'en': 'Create Story',
    },
    '65xq48hs': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // postDetails
  {
    'plfz031i': {
      'ko': 'Comments',
      'en': 'Comments',
    },
    'ud22kuml': {
      'ko': 'Posted',
      'en': 'Posted',
    },
    'hyofcbic': {
      'ko': 'Comment here...',
      'en': 'Comment here...',
    },
    '2yv83wzl': {
      'ko': 'Post',
      'en': 'Post',
    },
    'gn09qq1s': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // storyDetails
  {
    '4tmgokxs': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // editSettings
  {
    'uvburtiz': {
      'ko': 'Account Settings',
      'en': 'Account Settings',
    },
    'k1x2jsyl': {
      'ko': 'Edit Profile',
      'en': 'Edit Profile',
    },
    '5dqh11o4': {
      'ko': 'Change Password',
      'en': 'Change Password',
    },
    'vzwcb569': {
      'ko': 'Log Out',
      'en': 'Log Out',
    },
    'ziqv3ujx': {
      'ko': 'Settings',
      'en': 'Settings',
    },
    '86y72uwl': {
      'ko': 'Profile',
      'en': 'Profile',
    },
  },
  // editUserProfile
  {
    '4zch4j6l': {
      'ko': 'Your Profile',
      'en': 'Your Profile',
    },
    '5jkvxlcp': {
      'ko':
          'Fill out your profile now in order to complete setup of your profile.',
      'en':
          'Fill out your profile now in order to complete setup of your profile.',
    },
    'kx75pzjt': {
      'ko': 'Your Name',
      'en': 'Your Name',
    },
    'jj9h1519': {
      'ko': 'UserName',
      'en': 'UserName',
    },
    '2l4348tm': {
      'ko': 'Your Bio',
      'en': 'Your Bio',
    },
    'pzn9qb6e': {
      'ko': 'Save Changes',
      'en': 'Save Changes',
    },
    'ns9x1dj5': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // editDogProfile
  {
    'o540b3cz': {
      'ko': 'Dog Profile',
      'en': 'Dog Profile',
    },
    'kczvjztj': {
      'ko':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
    },
    'xm2hpwvb': {
      'ko': 'Dog Name',
      'en': 'Dog Name',
    },
    'pr5ae8ta': {
      'ko': 'Dog Breed',
      'en': 'Dog Breed',
    },
    'xxom70gg': {
      'ko': 'Dog Age',
      'en': 'Dog Age',
    },
    'tzetssnh': {
      'ko': 'Adding multiple pups is coming soon.',
      'en': 'Adding multiple puffs is coming soon.',
    },
    'ozj9olbq': {
      'ko': 'Save Changes',
      'en': 'Save Changes',
    },
    'ysah1v35': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // changePassword
  {
    'v27pgtyj': {
      'ko': 'Change Password',
      'en': 'Change Password',
    },
    '30fanos0': {
      'ko': 'Enter your email',
      'en': 'Enter your email',
    },
    'q6mgysum': {
      'ko':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
    },
    'frbqy926': {
      'ko': 'Send Reset Link',
      'en': 'Send Reset Link',
    },
    'ewkj119d': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // createDogProfile_New
  {
    'tzu035ig': {
      'ko': 'Create Dog Profile',
      'en': 'Create Dog Profile',
    },
    'a5m79u9t': {
      'ko':
          'Fill out your dog profiles below! And then get to sharing your pups!',
      'en':
          'Fill out your dog profiles below! And then get to sharing your pups!',
    },
    'egcdxco1': {
      'ko': 'Dog Name',
      'en': 'Dog Name',
    },
    'bvgrnkvp': {
      'ko': 'Dog Breed',
      'en': 'Dog Breed',
    },
    '0aweq1n2': {
      'ko': 'Dog Age',
      'en': 'Dog Age',
    },
    '6lseb3yz': {
      'ko': 'Add Pup',
      'en': 'Add Pup',
    },
    'hyigzp2x': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // viewProfilePageOther
  {
    '3vdsn8ke': {
      'ko': 'Message',
      'en': 'Message',
    },
    'vrx90a1o': {
      'ko': 'Dog Profiles',
      'en': 'Dog Profiles',
    },
    'jziw8qd6': {
      'ko': 'Posts',
      'en': 'Posts',
    },
    'rzm99rai': {
      'ko': '@username',
      'en': '@username',
    },
    'xg60wgp7': {
      'ko': '2,493',
      'en': '2,493',
    },
    'h9rzltzj': {
      'ko': '4',
      'en': '4',
    },
    'adqxm7wc': {
      'ko':
          'I\'m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.⁣ ',
      'en':
          'I&#39;m back with a super quick Instagram redesign just for the fan. Rounded corners and cute icons, what else do we need, haha.',
    },
    'cmx58n7q': {
      'ko': 'Profile',
      'en': 'Profile',
    },
  },
  // chatPage
  {
    'lcwlqikt': {
      'ko': 'Group Chat',
      'en': 'Group Chat',
    },
    '1y8g26eh': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // allChatsPage
  {
    'cow9tnpt': {
      'ko': 'Messages',
      'en': 'Messages',
    },
    '9nolezbs': {
      'ko': 'Messages',
      'en': 'Messages',
    },
  },
  // addChatUsers
  {
    'mjlpzky8': {
      'ko': 'Add Friends to chat',
      'en': 'Add Friends to chat',
    },
    '9hip8h8m': {
      'ko': 'Select the friends to add to chat.',
      'en': 'Select the friends to add to chat.',
    },
    'xd1609ip': {
      'ko': 'Search for friends...',
      'en': 'Search for friends...',
    },
    '8gb2sonj': {
      'ko': 'Invite to Chat',
      'en': 'Invite to Chat',
    },
    'vkzz0ys1': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // createGroupChat
  {
    'hubgvr3a': {
      'ko': 'Create Group Chat',
      'en': 'Create Group Chat',
    },
    '6p5wc7rc': {
      'ko': 'Select the friends to add to chat.',
      'en': 'Select the friends to add to chat.',
    },
    '8os5xft9': {
      'ko': 'Search for friends...',
      'en': 'Search for friends...',
    },
    'llae2zjw': {
      'ko': 'Create Chat',
      'en': 'Create Chat',
    },
    'lvrw9xiv': {
      'ko': 'Home',
      'en': 'Home',
    },
  },
  // phone_sign_screen
  {
    'f9ol5glu': {
      'ko': 'Phone Sign In',
      'en': '',
    },
    '7ctllu74': {
      'ko': 'Your Phone Number',
      'en': '',
    },
    'rut1f4pf': {
      'ko': 'Please enter a valid number...',
      'en': '',
    },
    'ry335zc3': {
      'ko': 'Sign In with Phone',
      'en': '',
    },
    'kwtw1mzr': {
      'ko': 'Home',
      'en': '',
    },
  },
  // phone_verify_screen
  {
    'lhckfyth': {
      'ko': 'Code Verification',
      'en': '',
    },
    '5j6fixss': {
      'ko': 'Enter the 6 digit code',
      'en': '',
    },
    'ldure6zp': {
      'ko': '000000',
      'en': '',
    },
    'arkj10gm': {
      'ko': 'Verify Code',
      'en': '',
    },
    'hptg3l3e': {
      'ko': 'Home',
      'en': '',
    },
  },
  // comments
  {
    'q3qh0z3f': {
      'ko': 'Comments',
      'en': 'Comments',
    },
    '0svvwha5': {
      'ko': 'Posted',
      'en': 'Posted',
    },
    'iqit1b5s': {
      'ko': 'Comment here...',
      'en': 'Comment here...',
    },
    'dl8gozgg': {
      'ko': 'Post',
      'en': 'Post',
    },
  },
  // createModal
  {
    'zb1q4uc6': {
      'ko': 'Create Story',
      'en': 'Create Story',
    },
    'h7m5cpss': {
      'ko': 'Share a video of your pup.',
      'en': 'Share a video of your pup.',
    },
    'cqa705ej': {
      'ko': 'Create Post',
      'en': 'Create Post',
    },
    'iddcrbyi': {
      'ko': 'Share a photo that will appear in the timeline.',
      'en': 'Share a photo that will appear in the timeline.',
    },
    '63m187v7': {
      'ko': 'Create Post',
      'en': 'Create Post',
    },
    'tj8p50cv': {
      'ko': 'Share photos on your timeline.',
      'en': 'Share photos on your timeline.',
    },
  },
  // deletePost
  {
    'zypxboig': {
      'ko': 'Delete Post',
      'en': 'Delete Post',
    },
    '18hwmdc0': {
      'ko': 'Cancel',
      'en': 'Cancel',
    },
  },
  // deleteStory
  {
    'kknvfazr': {
      'ko': 'Delete Story',
      'en': 'Delete Story',
    },
    '81zo4r88': {
      'ko': 'Cancel',
      'en': 'Cancel',
    },
  },
  // Miscellaneous
  {
    'g4g4grp2': {
      'ko': '',
      'en': '',
    },
    'dexnl5yh': {
      'ko': '',
      'en': '',
    },
    'uydgnz0v': {
      'ko': '',
      'en': '',
    },
    'i79k1fgw': {
      'ko': '',
      'en': '',
    },
    'imxqtggq': {
      'ko': '',
      'en': '',
    },
    'e8knd4lh': {
      'ko': '',
      'en': '',
    },
    '3gktw0lk': {
      'ko': '',
      'en': '',
    },
    'j3ipuuz8': {
      'ko': '',
      'en': '',
    },
    'rt90iiw2': {
      'ko': '',
      'en': '',
    },
    'zjyoj70m': {
      'ko': '',
      'en': '',
    },
    'xbg48ptg': {
      'ko': '',
      'en': '',
    },
    'yyth6nw1': {
      'ko': '',
      'en': '',
    },
    'ujpxrgvi': {
      'ko': '',
      'en': '',
    },
    'lpjpttph': {
      'ko': '',
      'en': '',
    },
    '9b554h1l': {
      'ko': '',
      'en': '',
    },
    '118nb6gb': {
      'ko': '',
      'en': '',
    },
    'hofxbrtn': {
      'ko': '',
      'en': '',
    },
    'k5hu6int': {
      'ko': '',
      'en': '',
    },
    'kl3jc44t': {
      'ko': '',
      'en': '',
    },
    'v1d237gk': {
      'ko': '',
      'en': '',
    },
    'jfwkcmq2': {
      'ko': '',
      'en': '',
    },
    'z7ow254f': {
      'ko': '',
      'en': '',
    },
    'y9bicxqh': {
      'ko': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
