FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0   Hiragino Sans Deployment Script (AppleScript)     � 	 	 `       H i r a g i n o   S a n s   D e p l o y m e n t   S c r i p t   ( A p p l e S c r i p t )   
  
 l     ��������  ��  ��        l     ��  ��    I C   Get OS X's default Chinese GUI font replaced into Hiragino Sans.     �   �       G e t   O S   X ' s   d e f a u l t   C h i n e s e   G U I   f o n t   r e p l a c e d   i n t o   H i r a g i n o   S a n s .      l     ��  ��    [ U	(Simplified Chinese use Hiragino Sans GB, Traditional Chinese use Hiragino Kaku Pro)     �   � 	 ( S i m p l i f i e d   C h i n e s e   u s e   H i r a g i n o   S a n s   G B ,   T r a d i t i o n a l   C h i n e s e   u s e   H i r a g i n o   K a k u   P r o )      l     ��������  ��  ��        l     ��  ��    T N   @(#)  Repleace System Fallbacks Font to Hiragino Sans in the project plist.     �   �       @ ( # )     R e p l e a c e   S y s t e m   F a l l b a c k s   F o n t   t o   H i r a g i n o   S a n s   i n   t h e   p r o j e c t   p l i s t .      l     ��������  ��  ��         l     �� ! "��   ! A ;   Original Bash Script for SHS was composed by Richard Li,    " � # # v       O r i g i n a l   B a s h   S c r i p t   f o r   S H S   w a s   c o m p o s e d   b y   R i c h a r d   L i ,    $ % $ l     �� & '��   & G A   Shiki Suen translated that Bash script into this Apple Script.    ' � ( ( �       S h i k i   S u e n   t r a n s l a t e d   t h a t   B a s h   s c r i p t   i n t o   t h i s   A p p l e   S c r i p t . %  ) * ) l     ��������  ��  ��   *  + , + l     �� - .��   - 3 -   Tested by Shiki Suen on Oct 26, 2014, MST.    . � / / Z       T e s t e d   b y   S h i k i   S u e n   o n   O c t   2 6 ,   2 0 1 4 ,   M S T . ,  0 1 0 l     �� 2 3��   2 ] W   Reference: http://shikisuen.github.io/OSXCJKFontPlists/CTPresetFallbackAnalysis.html    3 � 4 4 �       R e f e r e n c e :   h t t p : / / s h i k i s u e n . g i t h u b . i o / O S X C J K F o n t P l i s t s / C T P r e s e t F a l l b a c k A n a l y s i s . h t m l 1  5 6 5 l     �� 7 8��   7 V P   Latest Scripts could be found here: https://github.com/othercat/CJKFontScript    8 � 9 9 �       L a t e s t   S c r i p t s   c o u l d   b e   f o u n d   h e r e :   h t t p s : / / g i t h u b . c o m / o t h e r c a t / C J K F o n t S c r i p t 6  : ; : j     �� <
�� 
pare < 4     �� =
�� 
pcls = m     > > � ? ?  N S O b j e c t ;  @ A @ l     ��������  ��  ��   A  B C B l     �� D E��   D  
 IBOutlets    E � F F    I B O u t l e t s C  G H G j   	 �� I�� 0 	thewindow 	theWindow I m   	 
��
�� 
msng H  J K J l     �� L M��   L 2 ,============================================    M � N N X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = K  O P O l     �� Q R��   Q   Public Instant Variables    R � S S 2   P u b l i c   I n s t a n t   V a r i a b l e s P  T U T l     �� V W��   V 2 ,============================================    W � X X X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = U  Y Z Y l     ��������  ��  ��   Z  [ \ [ l     ]���� ] r      ^ _ ^ m      ` ` � a a > / t m p / F o n t I n s t a l l a t i o n W o r k i n g D i r _ o      ���� 0 	fdrgarage 	fdrGarage��  ��   \  b c b l    d���� d r     e f e m     g g � h h N $ { H O M E } / . F a c t o r i a l C J K F o n t S e t t i n g s B a c k u p f o      ���� 0 dirbackuppath dirBackupPath��  ��   c  i j i l    k���� k r     l m l m    	 n n � o o * / S y s t e m / L i b r a r y / F o n t s m o      ���� (0 dirsystemfontspath dirSystemFontsPath��  ��   j  p q p l    r���� r r     s t s m     u u � v v � / S y s t e m / L i b r a r y / F r a m e w o r k s / C o r e T e x t . f r a m e w o r k / V e r s i o n s / A / R e s o u r c e s / t o      ���� ,0 dirsysfallbackplists dirSysFallbackPlists��  ��   q  w x w l    y���� y r     z { z m     | | � } }  p l u t i l { o      ���� 0 	cmdplutil 	cmdPlutil��  ��   x  ~  ~ l    ����� � r     � � � m     � � � � � 4 $ { f d r G a r a g e } / p l i s t F i l e R e g x � o      ���� $0 cmdplistfileregx cmdPlistFileRegx��  ��     � � � l    ����� � r     � � � m     � � � � � @ f 4 f 6 b 4 4 2 d 9 3 c d a 3 5 a 1 a e c 2 5 1 2 1 3 1 8 4 8 2 � o      ���� $0 md5plistfileregx md5PlistFileRegX��  ��   �  � � � p     � � ������ 0 lang  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 2 ,============================================    � � � � X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     �� � ���   �   Language Settings    � � � � $   L a n g u a g e   S e t t i n g s �  � � � l     �� � ���   � 2 ,============================================    � � � � X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = �  � � � l     ��������  ��  ��   �  � � � l   = ����� � r    = � � � c    9 � � � l   5 ����� � I   5�� � �
�� .gtqpchltns    @   @ ns   � J    # � �  � � � o    ���� 0 
applangenu 
appLangENU �  � � � o    ���� 0 
applangcht 
appLangCHT �  ��� � o    !���� 0 
applangchs 
appLangCHS��   � �� � �
�� 
appr � o   & )���� 0 apptitleenu appTitleENU � �� ���
�� 
inSL � J   , / � �  ��� � o   , -���� 0 
applangenu 
appLangENU��  ��  ��  ��   � m   5 8��
�� 
TEXT � o      ����  0 appdisplaylang appDisplayLang��  ��   �  � � � l     ��������  ��  ��   �  � � � l  > U ����� � Z  > U � ����� � =  > G � � � o   > A����  0 appdisplaylang appDisplayLang � c   A F � � � o   A B���� 0 
applangenu 
appLangENU � m   B E��
�� 
TEXT � r   J Q � � � m   J M����	 � o      ���� 0 lang  ��  ��  ��  ��   �  � � � l  V m ����� � Z  V m � ����� � =  V _ � � � o   V Y����  0 appdisplaylang appDisplayLang � c   Y ^ � � � o   Y Z���� 0 
applangcht 
appLangCHT � m   Z ]��
�� 
TEXT � r   b i � � � m   b e���� � o      ���� 0 lang  ��  ��  ��  ��   �  � � � l  n � ����� � Z  n � � ����� � =  n y � � � o   n q����  0 appdisplaylang appDisplayLang � c   q x � � � o   q t���� 0 
applangchs 
appLangCHS � m   t w��
�� 
TEXT � r   | � � � � m   | ���� � o      ���� 0 lang  ��  ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � j    �� ��� 0 	locstring 	locString � m    ��
�� 
msng �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � n   � � � � � 1   � ���
�� 
psxp � l  � � ����� � m   � � � � � � � " L a n g S t r i n g s . p l i s t��  ��   � o      �� 0 theplistpath thePListPath��  ��   �  � � � l  �$ ��~�} � O   �$ � � � O   �# � � � O   �" � � � k   �! � �  � � � Z  � � � ��|�{ � =  � � � � � o   � ��z�z  0 appdisplaylang appDisplayLang � c   � � � � � o   � ��y�y 0 
applangenu 
appLangENU � m   � ��x
�x 
TEXT � r   � � � � � n   � � �  � 1   � ��w
�w 
valL  4   � ��v
�v 
plii m   � � �  1 0 3 3 � o      �u�u 0 	locstring 	locString�|  �{   �  I  � ��t�s
�t .sysodlogaskr        TEXT o   � ��r�r 0 	locstring 	locString�s    Z  � �	
�q�p	 =  � � o   � ��o�o  0 appdisplaylang appDisplayLang c   � � o   � ��n�n 0 
applangcht 
appLangCHT m   � ��m
�m 
TEXT
 r   � � n   � � 1   � ��l
�l 
valL 4   � ��k
�k 
plii m   � � �  1 0 2 8 o      �j�j 0 	locstring 	locString�q  �p   �i Z  �!�h�g =  � o   � �f�f  0 appdisplaylang appDisplayLang c    o   �e�e 0 
applangchs 
appLangCHS m  �d
�d 
TEXT r   n    1  �c
�c 
valL  4  �b!
�b 
plii! m  "" �##  2 0 5 2 o      �a�a 0 	locstring 	locString�h  �g  �i   � 1   � ��`
�` 
pcnt � 4   � ��_$
�_ 
plif$ o   � ��^�^ 0 theplistpath thePListPath � m   � �%%�                                                                                  sevs  alis    �  Macintosh PCIe             ��HH+  z��System Events.app                                              ~��4�=        ����  	                CoreServices    ����      �5"�    z��z��z��  ?Macintosh PCIe:System: Library: CoreServices: System Events.app   $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   P C I e  -System/Library/CoreServices/System Events.app   / ��  �~  �}   � &'& l     �]�\�[�]  �\  �[  ' ()( l     �Z�Y�X�Z  �Y  �X  ) *+* l     �W,-�W  , 2 ,============================================   - �.. X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =+ /0/ l     �V12�V  1   Welcome Message   2 �33     W e l c o m e   M e s s a g e0 454 l     �U67�U  6 2 ,============================================   7 �88 X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =5 9:9 l %U;�T�S; Q  %U<=>< I (9�R?@
�R .sysodlogaskr        TEXT? c  (/ABA o  (+�Q�Q  0 welcomemessage WelcomeMessageB m  +.�P
�P 
ctxt@ �OC�N
�O 
apprC o  25�M�M 0 apptitle appTitle�N  = R      �LDE
�L .ascrerr ****      � ****D o      �K�K 0 errmsg errMsgE �JF�I
�J 
errnF o      �H�H 0 errno errNo�I  > k  AUGG HIH I AR�GJ�F
�G .sysodisAaleR        TEXTJ b  ANKLK b  AJMNM b  AHOPO o  AD�E�E *0 msgusercancellation msgUserCancellationP m  DGQQ �RR ( 
                         (   C o d e :N o  HI�D�D 0 errno errNoL m  JMSS �TT    )�F  I U�CU L  SU�B�B  �C  �T  �S  : VWV l     �A�@�?�A  �@  �?  W XYX l     �>Z[�>  Z 2 ,============================================   [ �\\ X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =Y ]^] l     �=_`�=  _   Privileges Requirements   ` �aa 0   P r i v i l e g e s   R e q u i r e m e n t s^ bcb l     �<de�<  d 2 ,============================================   e �ff X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =c ghg l V�i�;�:i Q  V�jklj k  Ynmm non I Yl�9pq
�9 .sysoexecTEXT���     TEXTp b  Ydrsr b  Y`tut m  Y\vv �ww  e c h o   $ 'u o  \_�8�8 00 msgsudoacquiredsuccess msgSudoAcquiredSuccesss m  `cxx �yy  'q �7z�6
�7 
badmz m  gh�5
�5 boovtrue�6  o {�4{ l mm�3|}�3  | !  say msgSudoAcquiredSuccess   } �~~ 6   s a y   m s g S u d o A c q u i r e d S u c c e s s�4  k R      �2�
�2 .ascrerr ****      � **** o      �1�1 0 errmsg errMsg� �0��/
�0 
errn� o      �.�. 0 errno errNo�/  l k  v��� ��� I v��-��,
�- .sysodisAaleR        TEXT� b  v���� b  v��� b  v}��� o  vy�+�+ 00 msgsudoacquiredfailure msgSudoAcquiredFailure� m  y|�� ��� ( 
                         (   C o d e :� o  }~�*�* 0 errno errNo� m  ��� ���    )�,  � ��)� L  ���(�(  �)  �;  �:  h ��� l     �'�&�%�'  �&  �%  � ��� l     �$���$  � 2 ,============================================   � ��� X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� l     �#���#  �   Create Working Directory   � ��� 2   C r e a t e   W o r k i n g   D i r e c t o r y� ��� l     �"���"  � 2 ,============================================   � ��� X = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =� ��� l     �!� ��!  �   �  � ��� l ������ Q  ������ Q  ������ O ����� r  ����� c  ����� o  ���� 0 	fdrgarage 	fdrGarage� m  ���
� 
alis� o      �� 0 targetfolder targetFolder� m  �����                                                                                  MACS  alis    z  Macintosh PCIe             ��HH+  z��
Finder.app                                                     }}�B�,        ����  	                CoreServices    ����      �B�    z��z��z��  8Macintosh PCIe:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   P C I e  &System/Library/CoreServices/Finder.app  / ��  � R      ���
� .ascrerr ****      � ****�  �  � l ������ k  ���� ��� I �����
� .sysoexecTEXT���     TEXT� b  ����� m  ���� ���  m k d i r  � o  ���� 0 	fdrgarage 	fdrGarage� ���
� 
badm� m  ���
� boovtrue�  � ��� I �����
� .sysoexecTEXT���     TEXT� m  ���� ��� , e c h o   $ ' F O L D E R   C R E A T E D '�  �  �  
 no window   � ���    n o   w i n d o w� R      ���
� .ascrerr ****      � ****�  �  �  �  �  � ��
� l     �	���	  �  �  �
    �� ���
� misccura
� 
pcls� ���  N S O b j e c t  ������ ` g n u | � �� ���������  � ��������������������������������
�� 
pare�� 0 	thewindow 	theWindow�� 0 	locstring 	locString
�� .aevtoappnull  �   � ****�� 0 	fdrgarage 	fdrGarage�� 0 dirbackuppath dirBackupPath�� (0 dirsystemfontspath dirSystemFontsPath�� ,0 dirsysfallbackplists dirSysFallbackPlists�� 0 	cmdplutil 	cmdPlutil�� $0 cmdplistfileregx cmdPlistFileRegx�� $0 md5plistfileregx md5PlistFileRegX��  ��  ��  ��  ��  �  
� 
msng
� 
msng� �����������
�� .aevtoappnull  �   � ****� k    ���  [��  b��  i��  p��  w��  ~��  ���  ���  ���  ���  ���  ���  ��� 9�� g�� �����  ��  ��  � ������ 0 errmsg errMsg�� 0 errno errNo� @ `�� g�� n�� u�� |�� ��� ������������������������������� �����%����������"�����������QS��v��x��������������������� 0 	fdrgarage 	fdrGarage�� 0 dirbackuppath dirBackupPath�� (0 dirsystemfontspath dirSystemFontsPath�� ,0 dirsysfallbackplists dirSysFallbackPlists�� 0 	cmdplutil 	cmdPlutil�� $0 cmdplistfileregx cmdPlistFileRegx�� $0 md5plistfileregx md5PlistFileRegX�� 0 
applangenu 
appLangENU�� 0 
applangcht 
appLangCHT�� 0 
applangchs 
appLangCHS
�� 
appr�� 0 apptitleenu appTitleENU
�� 
inSL�� 
�� .gtqpchltns    @   @ ns  
�� 
TEXT��  0 appdisplaylang appDisplayLang��	�� 0 lang  ����
�� 
psxp�� 0 theplistpath thePListPath
�� 
plif
�� 
pcnt
�� 
plii
�� 
valL
�� .sysodlogaskr        TEXT��  0 welcomemessage WelcomeMessage
�� 
ctxt�� 0 apptitle appTitle�� 0 errmsg errMsg� ������
�� 
errn�� 0 errno errNo��  �� *0 msgusercancellation msgUserCancellation
�� .sysodisAaleR        TEXT�� 00 msgsudoacquiredsuccess msgSudoAcquiredSuccess
�� 
badm
�� .sysoexecTEXT���     TEXT�� 00 msgsudoacquiredfailure msgSudoAcquiredFailure
�� 
alis�� 0 targetfolder targetFolder��  ��  ����E�O�E�O�E�O�E�O�E�O�E�O�E�O��_ mva _ a �kva  a &E` O_ �a &  a E` Y hO_ �a &  a E` Y hO_ _ a &  a E` Y hOa a ,E` Oa  �*a  _ / *a !, v_ �a &  *a "a #/a $,Ec  Y hOb  j %O_ �a &  *a "a &/a $,Ec  Y hO_ _ a &  *a "a '/a $,Ec  Y hUUUO _ (a )&a _ *l %W X + ,_ -a .%�%a /%j 0OhO a 1_ 2%a 3%a 4el 5OPW X + ,_ 6a 7%�%a 8%j 0OhO 5 a 9 �a :&E` ;UW X < =a >�%a 4el 5Oa ?j 5W X < =h�   ��  ��  ��  ��   ascr  ��ޭ