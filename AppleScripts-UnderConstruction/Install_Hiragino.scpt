FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0   Hiragino Sans Deployment Script (AppleScript)     � 	 	 `       H i r a g i n o   S a n s   D e p l o y m e n t   S c r i p t   ( A p p l e S c r i p t )   
  
 l     ��������  ��  ��        l     ��  ��    I C   Get OS X's default Chinese GUI font replaced into Hiragino Sans.     �   �       G e t   O S   X ' s   d e f a u l t   C h i n e s e   G U I   f o n t   r e p l a c e d   i n t o   H i r a g i n o   S a n s .      l     ��  ��    [ U	(Simplified Chinese use Hiragino Sans GB, Traditional Chinese use Hiragino Kaku Pro)     �   � 	 ( S i m p l i f i e d   C h i n e s e   u s e   H i r a g i n o   S a n s   G B ,   T r a d i t i o n a l   C h i n e s e   u s e   H i r a g i n o   K a k u   P r o )      l     ��������  ��  ��        l     ��  ��    T N   @(#)  Repleace System Fallbacks Font to Hiragino Sans in the project plist.     �   �       @ ( # )     R e p l e a c e   S y s t e m   F a l l b a c k s   F o n t   t o   H i r a g i n o   S a n s   i n   t h e   p r o j e c t   p l i s t .      l     ��������  ��  ��         l     �� ! "��   ! A ;   Original Bash Script for SHS was composed by Richard Li,    " � # # v       O r i g i n a l   B a s h   S c r i p t   f o r   S H S   w a s   c o m p o s e d   b y   R i c h a r d   L i ,    $ % $ l     �� & '��   & G A   Shiki Suen translated that Bash script into this Apple Script.    ' � ( ( �       S h i k i   S u e n   t r a n s l a t e d   t h a t   B a s h   s c r i p t   i n t o   t h i s   A p p l e   S c r i p t . %  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - 3 -   Tested by Shiki Suen on Oct 26, 2014, MST.    . � / / Z       T e s t e d   b y   S h i k i   S u e n   o n   O c t   2 6 ,   2 0 1 4 ,   M S T . ,  0 1 0 l     �� 2 3��   2 ] W   Reference: http://shikisuen.github.io/OSXCJKFontPlists/CTPresetFallbackAnalysis.html    3 � 4 4 �       R e f e r e n c e :   h t t p : / / s h i k i s u e n . g i t h u b . i o / O S X C J K F o n t P l i s t s / C T P r e s e t F a l l b a c k A n a l y s i s . h t m l 1  5 6 5 l     �� 7 8��   7 V P   Latest Scripts could be found here: https://github.com/othercat/CJKFontScript    8 � 9 9 �       L a t e s t   S c r i p t s   c o u l d   b e   f o u n d   h e r e :   h t t p s : / / g i t h u b . c o m / o t h e r c a t / C J K F o n t S c r i p t 6  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   > 2 ,============================================    ? � @ @ X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  A B A l     �� C D��   C   Public Instant Variables    D � E E 2   P u b l i c   I n s t a n t   V a r i a b l e s B  F G F l     �� H I��   H 2 ,============================================    I � J J X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = G  K L K l     ��������  ��  ��   L  M N M l     O���� O r      P Q P m      R R � S S > / t m p / F o n t I n s t a l l a t i o n W o r k i n g D i r Q o      ���� 0 	fdrgarage 	fdrGarage��  ��   N  T U T l    V���� V r     W X W m     Y Y � Z Z N $ { H O M E } / . F a c t o r i a l C J K F o n t S e t t i n g s B a c k u p X o      ���� 0 dirbackuppath dirBackupPath��  ��   U  [ \ [ l    ]���� ] r     ^ _ ^ m    	 ` ` � a a * / S y s t e m / L i b r a r y / F o n t s _ o      ���� (0 dirsystemfontspath dirSystemFontsPath��  ��   \  b c b l    d���� d r     e f e m     g g � h h � / S y s t e m / L i b r a r y / F r a m e w o r k s / C o r e T e x t . f r a m e w o r k / V e r s i o n s / A / R e s o u r c e s / f o      ���� ,0 dirsysfallbackplists dirSysFallbackPlists��  ��   c  i j i l    k���� k r     l m l m     n n � o o  p l u t i l m o      ���� 0 	cmdplutil 	cmdPlutil��  ��   j  p q p l    r���� r r     s t s m     u u � v v 4 $ { f d r G a r a g e } / p l i s t F i l e R e g x t o      ���� $0 cmdplistfileregx cmdPlistFileRegx��  ��   q  w x w l    y���� y r     z { z m     | | � } } @ f 4 f 6 b 4 4 2 d 9 3 c d a 3 5 a 1 a e c 2 5 1 2 1 3 1 8 4 8 2 { o      ���� $0 md5plistfileregx md5PlistFileRegX��  ��   x  ~  ~ l     ��������  ��  ��     � � � l     �� � ���   � 2 ,============================================    � � � � X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     �� � ���   � ( " Localized Language Text Constants    � � � � D   L o c a l i z e d   L a n g u a g e   T e x t   C o n s t a n t s �  � � � l     �� � ���   � 2 ,============================================    � � � � X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l   # ����� � r    # � � � c     � � � m     � � � � � > U s e   E n g l i s h   t o   d i s p l a y   t h i s   a p p � m    ��
�� 
TEXT � o      ���� 0 
applangenu 
appLangENU��  ��   �  � � � l  $ - ����� � r   $ - � � � c   $ ) � � � m   $ ' � � � � �  Ou(~A��N-e�O\p��ra�u(v�N;�o���  � m   ' (��
�� 
TEXT � o      ���� 0 
applangcht 
appLangCHT��  ��   �  � � � l  . 7 ����� � r   . 7 � � � c   . 3 � � � m   . 1 � � � � �  Ou({�OSN-e�O\N:��^�u(v�N;f>��  � m   1 2��
�� 
TEXT � o      ���� 0 
applangchs 
appLangCHS��  ��   �  � � � l     ��������  ��  ��   �  � � � l  8 A ����� � r   8 A � � � c   8 = � � � m   8 ; � � � � � H C h i n e s e   G U I   F o n t   R e p l a c e   t o   H i r a g i n o � m   ; <��
�� 
TEXT � o      ���� 0 apptitleenu appTitleENU��  ��   �  � � � l  B K ����� � r   B K � � � c   B G � � � m   B E � � � � � |�}qN˗bN-e�[WW�f�c�p�Q��R�њ� � m   E F��
�� 
TEXT � o      ���� 0 apptitlecht appTitleCHT��  ��   �  � � � l  L U ����� � r   L U � � � c   L Q � � � m   L O � � � � � |�~�N˗bN-e�[WOSf�cbN:Q��R��OS � m   O P��
�� 
TEXT � o      ���� 0 apptitlechs appTitleCHS��  ��   �  � � � l     ��������  ��  ��   �  � � � l  V _ ����� � r   V _ � � � c   V [ � � � m   V Y � � � � �& Y o u   a r e   g o i n g   t o   c h a n g e   y o u r   S i m p l i f i e d   &   T r a d i t i o n a l   C h i n e s e   S y s t e m   G U I   f o n t   i n t o   H i r a g i n o   S a n s   G B   &   H i r a g i n o   K a k u   P r o . 
         
         T h i s   n e e d s   A d m i n i s t r a t i v e   P r i v i l e g e s ,   o r   t h i s   a p p   w o n ' t   w o r k . 
         
         A   U A C   w i n d o w   w i l l   a s k   y o u   f o r   p r i v i l e g e s . 
         
         P r e s s   " O K "   t o   C o n t i n u e . � m   Y Z��
�� 
TEXT � o      ���� &0 welcomemessageenu WelcomeMessageENU��  ��   �  � � � l  ` i ����� � r   ` i � � � c   ` e � � � m   ` c � � � � �nSs\O�e9|�}q|!~A��N-e�N˗b[WW�p�Q��R�њ�0 
         
        |!��N-e�Ou(0 H i r a g i n o   S a n s   G B0� 
        ~A��N-e�Ou(0 H i r a g i n o   K a k u   G o t h i c   P r o00 
         
        �P�Nz� ��Ou({�tT�k
�P�T&RG�ra�u(\q!l�kc^8]�O\0 
         
        Ss\Q�s�v�Ou(�^3b6c�R6��z�gT`�}"S�v���k
�P0 
         
        ��0Y}0N�~|~�0 � m   c d��
�� 
TEXT � o      ���� &0 welcomemessagecht WelcomeMessageCHT��  ��   �  � � � l  j s ����� � r   j s � � � c   j o � � � m   j m � � � � �lSs\O�e9|�~�{�~AOSN-e�N˗b[WOSN:Q��R��OS0 
         
        {�OSN-e�Ou(0 H i r a g i n o   S a n s   G B0� 
        ~AOSN-e�Ou(0 H i r a g i n o   K a k u   G o t h i c   P r o00 
         
        ��N*��z� ��Ou({�tTXgC�P�T&R��^�u(\e�l�kc^8]�O\0 
         
        Ss\Q�s�v�u(b7^b7c�R6��z�OT`�}"S�v�QsgC�P0 
         
        �^0Y}0N�~�~�0 � m   m n��
�� 
TEXT � o      ���� &0 welcomemessagechs WelcomeMessageCHS��  ��   �  � � � l     ��������  ��  ��   �  � � � l  t } ����� � r   t } � � � c   t y � � � m   t w � � � � � T U s e r   C a n c e l l e d   t h e   P r o c e s s ,   A b o r t   M i s s i o n . � m   w x��
�� 
TEXT � o      ���� 00 msgusercancellationenu msgUserCancellationENU��  ��   �  � � � l  ~ � ����� � r   ~ � � � � c   ~ � � � � m   ~ � � � � � � $e6R0Ou(�S�m�O�e9v���lB�N�R�N-kb0 � m   � ���
�� 
TEXT � o      ���� 00 msgusercancellationcht msgUserCancellationCHT��  ��   �  � � � l  � � ����� � r   � � � � � c   � � �  � m   � � � $e6R0Ou(�S�m�O�e9v���lB�N�R�N-kb0  m   � ���
�� 
TEXT � o      ���� 00 msgusercancellationchs msgUserCancellationCHS��  ��   �  l     ��������  ��  ��    l  � ����� r   � �	 c   � �

 m   � � � ^ S u c c e s s f u l l y   A c q u i r e d   A d m i n i s t r a t o r   P r i v i l e g e s . m   � ���
�� 
TEXT	 o      ���� 60 msgsudoacquiredsuccessenu msgSudoAcquiredSuccessENU��  ��    l  � ����� r   � � c   � � m   � � � bR�S�_�{�tT�k
�P0 m   � ���
�� 
TEXT o      �� 60 msgsudoacquiredsuccesscht msgSudoAcquiredSuccessCHT��  ��    l  � ��~�} r   � � c   � � m   � � � bR�S�_�{�tTXgC�P0 m   � ��|
�| 
TEXT o      �{�{ 60 msgsudoacquiredsuccesschs msgSudoAcquiredSuccessCHS�~  �}    !  l     �z�y�x�z  �y  �x  ! "#" l  � �$�w�v$ r   � �%&% c   � �'(' m   � �)) �** r F a i l   t o   A c q u i r e d   A d m i n i s t r a t o r   P r i v i l e g e s ,   A b o r t   M i s s i o n .( m   � ��u
�u 
TEXT& o      �t�t 60 msgsudoacquiredfailureenu msgSudoAcquiredFailureENU�w  �v  # +,+ l  � �-�s�r- r   � �./. c   � �010 m   � �22 �33 {�tT�k
�PsrS�Y1eW�N�R�N-kb01 m   � ��q
�q 
TEXT/ o      �p�p 60 msgsudoacquiredfailurecht msgSudoAcquiredFailureCHT�s  �r  , 454 l  � �6�o�n6 r   � �787 c   � �9:9 m   � �;; �<< {�tTXgC�P��S�Y1�%�N�R�N-kb0: m   � ��m
�m 
TEXT8 o      �l�l 60 msgsudoacquiredfailurechs msgSudoAcquiredFailureCHS�o  �n  5 =>= l     �k�j�i�k  �j  �i  > ?@? l     �hAB�h  A 2 ,============================================   B �CC X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =@ DED l     �gFG�g  F   Language Settings   G �HH $   L a n g u a g e   S e t t i n g sE IJI l     �fKL�f  K 2 ,============================================   L �MM X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =J NON l     �e�d�c�e  �d  �c  O PQP l  � �R�b�aR r   � �STS c   � �UVU l  � �W�`�_W I  � ��^XY
�^ .gtqpchltns    @   @ ns  X J   � �ZZ [\[ o   � ��]�] 0 
applangenu 
appLangENU\ ]^] o   � ��\�\ 0 
applangcht 
appLangCHT^ _�[_ o   � ��Z�Z 0 
applangchs 
appLangCHS�[  Y �Y`a
�Y 
appr` o   � ��X�X 0 apptitleenu appTitleENUa �Wb�V
�W 
inSLb J   � �cc d�Ud o   � ��T�T 0 
applangenu 
appLangENU�U  �V  �`  �_  V m   � ��S
�S 
TEXTT o      �R�R  0 appdisplaylang appDisplayLang�b  �a  Q efe l     �Q�P�O�Q  �P  �O  f ghg l  �i�N�Mi Z  �jk�L�Kj =  � �lml o   � ��J�J  0 appdisplaylang appDisplayLangm c   � �non o   � ��I�I 0 
applangenu 
appLangENUo m   � ��H
�H 
TEXTk r   pqp m   �G�G	q o      �F�F 0 lang  �L  �K  �N  �M  h rsr l #t�E�Dt Z #uv�C�Bu = wxw o  �A�A  0 appdisplaylang appDisplayLangx c  yzy o  �@�@ 0 
applangcht 
appLangCHTz m  �?
�? 
TEXTv r  {|{ m  �>�>| o      �=�= 0 lang  �C  �B  �E  �D  s }~} l $;�<�; Z $;���:�9� = $-��� o  $'�8�8  0 appdisplaylang appDisplayLang� c  ',��� o  '*�7�7 0 
applangchs 
appLangCHS� m  *+�6
�6 
TEXT� r  07��� m  03�5�5� o      �4�4 0 lang  �:  �9  �<  �;  ~ ��� l     �3�2�1�3  �2  �1  � ��� l <���0�/� Z  <�����.� =  <C��� o  <?�-�- 0 lang  � m  ?B�,�,	� k  Fm�� ��� r  FM��� o  FI�+�+ 0 apptitleenu appTitleENU� o      �*�* 0 apptitle appTitle� ��� r  NU��� o  NQ�)�) &0 welcomemessageenu WelcomeMessageENU� o      �(�(  0 welcomemessage WelcomeMessage� ��� r  V]��� o  VY�'�' 00 msgusercancellationenu msgUserCancellationENU� o      �&�& *0 msgusercancellation msgUserCancellation� ��� r  ^e��� o  ^a�%�% 60 msgsudoacquiredsuccessenu msgSudoAcquiredSuccessENU� o      �$�$ 00 msgsudoacquiredsuccess msgSudoAcquiredSuccess� ��#� r  fm��� o  fi�"�" 60 msgsudoacquiredfailureenu msgSudoAcquiredFailureENU� o      �!�! 00 msgsudoacquiredfailure msgSudoAcquiredFailure�#  � ��� =  pw��� o  ps� �  0 lang  � m  sv��� ��� k  z��� ��� r  z���� o  z}�� 0 apptitlecht appTitleCHT� o      �� 0 apptitle appTitle� ��� r  ����� o  ���� &0 welcomemessagecht WelcomeMessageCHT� o      ��  0 welcomemessage WelcomeMessage� ��� r  ����� o  ���� 00 msgusercancellationcht msgUserCancellationCHT� o      �� *0 msgusercancellation msgUserCancellation� ��� r  ����� o  ���� 60 msgsudoacquiredsuccesscht msgSudoAcquiredSuccessCHT� o      �� 00 msgsudoacquiredsuccess msgSudoAcquiredSuccess� ��� r  ����� o  ���� 60 msgsudoacquiredfailurecht msgSudoAcquiredFailureCHT� o      �� 00 msgsudoacquiredfailure msgSudoAcquiredFailure�  � ��� =  ����� o  ���� 0 lang  � m  ����� ��� k  ���� ��� r  ����� o  ���� 0 apptitlechs appTitleCHS� o      �� 0 apptitle appTitle� ��� r  ����� o  ���� &0 welcomemessagechs WelcomeMessageCHS� o      ��  0 welcomemessage WelcomeMessage� ��� r  ����� o  ���� 00 msgusercancellationchs msgUserCancellationCHS� o      �� *0 msgusercancellation msgUserCancellation� ��� r  ����� o  ���
�
 60 msgsudoacquiredsuccesschs msgSudoAcquiredSuccessCHS� o      �	�	 00 msgsudoacquiredsuccess msgSudoAcquiredSuccess� ��� r  ����� o  ���� 60 msgsudoacquiredfailurechs msgSudoAcquiredFailureCHS� o      �� 00 msgsudoacquiredfailure msgSudoAcquiredFailure�  �  �.  �0  �/  � ��� l     ����  �  �  � ��� l     ����  � 2 ,============================================   � ��� X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� l     ����  �   Welcome Message   � ���     W e l c o m e   M e s s a g e� ��� l     � ���   � 2 ,============================================   � ��� X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� l �
������ Q  �
���� I ������
�� .sysodlogaskr        TEXT� c  ����� o  ������  0 welcomemessage WelcomeMessage� m  ����
�� 
ctxt� �����
�� 
appr� o  ������ 0 apptitle appTitle��  � R      ����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg� �����
�� 
errn� o      ���� 0 errno errNo��  � k  �
�� ��� I ������
�� .sysodisAaleR        TEXT� b  ���� b  ����� b  ��   o  ������ *0 msgusercancellation msgUserCancellation m  �� �   
                 (   C o d e :� o  ������ 0 errno errNo� m  � �    )��  � �� L  
����  ��  ��  ��  �  l     ��������  ��  ��   	
	 l     ����   2 ,============================================    � X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =
  l     ����     Privileges Requirements    � 0   P r i v i l e g e s   R e q u i r e m e n t s  l     ����   2 ,============================================    � X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =  l ?���� Q  ? k  #   I !��!"
�� .sysoexecTEXT���     TEXT! b  #$# b  %&% m  '' �((  e c h o   $ '& o  ���� 00 msgsudoacquiredsuccess msgSudoAcquiredSuccess$ m  )) �**  '" ��+��
�� 
badm+ m  ��
�� boovtrue��    ,��, l ""��-.��  - !  say msgSudoAcquiredSuccess   . �// 6   s a y   m s g S u d o A c q u i r e d S u c c e s s��   R      ��01
�� .ascrerr ****      � ****0 o      ���� 0 errmsg errMsg1 ��2��
�� 
errn2 o      ���� 0 errno errNo��   k  +?33 454 I +<��6��
�� .sysodisAaleR        TEXT6 b  +8787 b  +49:9 b  +2;<; o  +.���� 00 msgsudoacquiredfailure msgSudoAcquiredFailure< m  .1== �>> "   
                 (   C o d e :: o  23���� 0 errno errNo8 m  47?? �@@    )��  5 A��A L  =?����  ��  ��  ��   BCB l     ��������  ��  ��  C DED l     ��FG��  F 2 ,============================================   G �HH X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =E IJI l     ��KL��  K   Create Working Directory   L �MM 2   C r e a t e   W o r k i n g   D i r e c t o r yJ NON l     ��PQ��  P 2 ,============================================   Q �RR X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =O STS l     ��������  ��  ��  T U��U l @|V����V Q  @|WX��W Q  CsYZ[Y O FV\]\ r  LU^_^ c  LQ`a` o  LM���� 0 	fdrgarage 	fdrGaragea m  MP��
�� 
alis_ o      ���� 0 targetfolder targetFolder] m  FIbb�                                                                                  MACS  alis    z  Macintosh PCIe             ��HH+  z��
Finder.app                                                     }}�B�,        ����  	                CoreServices    ����      �B�    z��z��z��  8Macintosh PCIe:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   P C I e  &System/Library/CoreServices/Finder.app  / ��  Z R      ������
�� .ascrerr ****      � ****��  ��  [ l ^scdec k  ^sff ghg I ^k��ij
�� .sysoexecTEXT���     TEXTi b  ^cklk m  ^amm �nn  m k d i r  l o  ab���� 0 	fdrgarage 	fdrGaragej ��o��
�� 
badmo m  fg��
�� boovtrue��  h p��p I ls��q��
�� .sysoexecTEXT���     TEXTq m  lorr �ss , e c h o   $ ' F O L D E R   C R E A T E D '��  ��  d  
 no window   e �tt    n o   w i n d o wX R      ������
�� .ascrerr ****      � ****��  ��  ��  ��  ��  ��       ��uv��  u ��
�� .aevtoappnull  �   � ****v ��w����xy��
�� .aevtoappnull  �   � ****w k    |zz  M{{  T||  [}}  b~~  i  p��  w��  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ���  ��� �� �� �� "�� +�� 4�� P�� g�� r�� }�� ��� ��� �� U����  ��  ��  x ������ 0 errmsg errMsg�� 0 errno errNoy U R�� Y�� `�� g�� n�� u�� |�� ����� ��� ��� ��� ��� ��� ��� ��� ��� ��� �����������)��2��;���������������������������������������')��~=?b�}�|�{�zmr�� 0 	fdrgarage 	fdrGarage�� 0 dirbackuppath dirBackupPath�� (0 dirsystemfontspath dirSystemFontsPath�� ,0 dirsysfallbackplists dirSysFallbackPlists�� 0 	cmdplutil 	cmdPlutil�� $0 cmdplistfileregx cmdPlistFileRegx�� $0 md5plistfileregx md5PlistFileRegX
�� 
TEXT�� 0 
applangenu 
appLangENU�� 0 
applangcht 
appLangCHT�� 0 
applangchs 
appLangCHS�� 0 apptitleenu appTitleENU�� 0 apptitlecht appTitleCHT�� 0 apptitlechs appTitleCHS�� &0 welcomemessageenu WelcomeMessageENU�� &0 welcomemessagecht WelcomeMessageCHT�� &0 welcomemessagechs WelcomeMessageCHS�� 00 msgusercancellationenu msgUserCancellationENU�� 00 msgusercancellationcht msgUserCancellationCHT�� 00 msgusercancellationchs msgUserCancellationCHS�� 60 msgsudoacquiredsuccessenu msgSudoAcquiredSuccessENU�� 60 msgsudoacquiredsuccesscht msgSudoAcquiredSuccessCHT�� 60 msgsudoacquiredsuccesschs msgSudoAcquiredSuccessCHS�� 60 msgsudoacquiredfailureenu msgSudoAcquiredFailureENU�� 60 msgsudoacquiredfailurecht msgSudoAcquiredFailureCHT�� 60 msgsudoacquiredfailurechs msgSudoAcquiredFailureCHS
�� 
appr
�� 
inSL�� 
�� .gtqpchltns    @   @ ns  ��  0 appdisplaylang appDisplayLang��	�� 0 lang  ������ 0 apptitle appTitle��  0 welcomemessage WelcomeMessage�� *0 msgusercancellation msgUserCancellation�� 00 msgsudoacquiredsuccess msgSudoAcquiredSuccess�� 00 msgsudoacquiredfailure msgSudoAcquiredFailure
�� 
ctxt
�� .sysodlogaskr        TEXT�� 0 errmsg errMsg� �y�x�w
�y 
errn�x 0 errno errNo�w  
�� .sysodisAaleR        TEXT
� 
badm
�~ .sysoexecTEXT���     TEXT
�} 
alis�| 0 targetfolder targetFolder�{  �z  ��}�E�O�E�O�E�O�E�O�E�O�E�O�E�O��&E` Oa �&E` Oa �&E` Oa �&E` Oa �&E` Oa �&E` Oa �&E` Oa �&E` Oa �&E`  Oa !�&E` "Oa #�&E` $Oa %�&E` &Oa '�&E` (Oa )�&E` *Oa +�&E` ,Oa -�&E` .Oa /�&E` 0Oa 1�&E` 2O_ _ _ mva 3_ a 4_ kva 5 6�&E` 7O_ 7_ �&  a 8E` 9Y hO_ 7_ �&  a :E` 9Y hO_ 7_ �&  a ;E` 9Y hO_ 9a 8  ,_ E` <O_ E` =O_ "E` >O_ (E` ?O_ .E` @Y k_ 9a :  ,_ E` <O_ E` =O_ $E` >O_ *E` ?O_ 0E` @Y 7_ 9a ;  ,_ E` <O_  E` =O_ &E` >O_ ,E` ?O_ 2E` @Y hO _ =a A&a 3_ <l BW X C D_ >a E%�%a F%j GOhO a H_ ?%a I%a Jel KOPW X C D_ @a L%�%a M%j GOhO 5 a N �a O&E` PUW X Q Ra S�%a Jel KOa Tj KW X Q Rhascr  ��ޭ