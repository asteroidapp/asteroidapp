FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	    AppHelper.applescript    
 �   .     A p p H e l p e r . a p p l e s c r i p t      l     ��  ��       Asteroid helper methods     �   2     A s t e r o i d   h e l p e r   m e t h o d s      l     ��������  ��  ��        l     ��  ��    - '  Created by Kerry Cupit on 2013-05-01.     �   N     C r e a t e d   b y   K e r r y   C u p i t   o n   2 0 1 3 - 0 5 - 0 1 .      l     ��  ��    < 6  Copyright (c) 2013 Kerry Cupit (http://spaceman.ca/)     �   l     C o p y r i g h t   ( c )   2 0 1 3   K e r r y   C u p i t   ( h t t p : / / s p a c e m a n . c a / )      l     ��������  ��  ��         l     �� ! "��   ! F @  This program is distributed under the terms of the GNU GPL v3.    " � # # �     T h i s   p r o g r a m   i s   d i s t r i b u t e d   u n d e r   t h e   t e r m s   o f   t h e   G N U   G P L   v 3 .    $ % $ l     �� & '��   &ke  This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.    ' � ( (�     T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n .     T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s .     Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a l o n g   w i t h   t h i s   p r o g r a m .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . %  ) * ) l     ��������  ��  ��   *  +�� + h     �� ,�� 0 	apphelper 	AppHelper , k       - -  . / . l     ��������  ��  ��   /  0 1 0 j     �� 2
�� 
pare 2 4     �� 3
�� 
pcls 3 m     4 4 � 5 5  N S O b j e c t 1  6 7 6 l     ��������  ��  ��   7  8 9 8 j   	 �� :�� 0 appdelegate AppDelegate : m   	 
��
�� 
msng 9  ; < ; j    �� =�� 0 nscolor NSColor = 4    �� >
�� 
pcls > m     ? ? � @ @  N S C o l o r <  A B A l     ��������  ��  ��   B  C D C i     E F E I      �������� 0 
killminers 
killMiners��  ��   F Y     O G�� H I�� G k   
 J J J  K L K r   
  M N M m   
  O O � P P   N o      ���� 0 testme testMe L  Q R Q Q    ! S T�� S r     U V U I   �� W��
�� .sysoexecTEXT���     TEXT W m     X X � Y Y J p s   - A   |   g r e p   " c g m i n e r "   |   g r e p   - v   g r e p��   V o      ���� 0 testme testMe T R      ������
�� .ascrerr ****      � ****��  ��  ��   R  Z [ Z Z   " - \ ]���� \ =  " % ^ _ ^ o   " #���� 0 testme testMe _ m   # $ ` ` � a a   ]  S   ( )��  ��   [  b c b Q   . D d e�� d I  1 ;�� f��
�� .sysoexecTEXT���     TEXT f b   1 7 g h g m   1 2 i i � j j 
 k i l l   h l  2 6 k���� k n   2 6 l m l 4  3 6�� n
�� 
cwor n m   4 5����  m o   2 3���� 0 testme testMe��  ��  ��   e R      ������
�� .ascrerr ****      � ****��  ��  ��   c  o�� o I  E J�� p��
�� .sysodelanull��� ��� nmbr p m   E F q q ?ə�������  ��  �� 0 x   H m    ����  I m    ���� ��   D  r s r l     ��������  ��  ��   s  t u t l     �� v w��   v + % looks in the keychain for a password    w � x x J   l o o k s   i n   t h e   k e y c h a i n   f o r   a   p a s s w o r d u  y z y i     { | { I      �� }���� $0 lookuppassword__ lookupPassword__ }  ~  ~ o      ���� 0 thispool thisPool   ��� � o      ���� 0 thisuser thisUser��  ��   | k     + � �  � � � r      � � � c      � � � o     ���� 0 thispool thisPool � m    ��
�� 
ctxt � o      ���� 0 thispool thisPool �  � � � r     � � � c    	 � � � o    ���� 0 thisuser thisUser � m    ��
�� 
ctxt � o      ���� 0 thisuser thisUser �  ��� � Q    + � � � � k    ! � �  � � � r     � � � I   �� ���
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � b     � � � m     � � � � � Z s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - l   " A s t e r o i d   ( � l    ����� � o    ���� 0 thispool thisPool��  ��   � m     � � � � �  ) "   - a   " � o    ���� 0 thisuser thisUser � m     � � � � �  "   - w��   � o      ���� 0 thispass thisPass �  ��� � L    ! � � o     ���� 0 thispass thisPass��   � R      ������
�� .ascrerr ****      � ****��  ��   � L   ) + � � m   ) * � � � � �  ��   z  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � + % looks in the keychain for a username    � � � � J   l o o k s   i n   t h e   k e y c h a i n   f o r   a   u s e r n a m e �  � � � i     � � � I      �� ����� "0 lookupusername_ lookupUsername_ �  ��� � o      ���� 0 thispool thisPool��  ��   � k     2 � �  � � � r      � � � c      � � � o     ���� 0 thispool thisPool � m    ��
�� 
ctxt � o      ���� 0 thispool thisPool �  ��� � Q    2 � � � � k   	 ( � �  � � � r   	  � � � I  	 �� ���
�� .sysoexecTEXT���     TEXT � b   	  � � � b   	  � � � m   	 
 � � � � � Z s e c u r i t y   f i n d - g e n e r i c - p a s s w o r d   - l   " A s t e r o i d   ( � l  
  ����� � o   
 ���� 0 thispool thisPool��  ��   � m     � � � � � 6 ) "   |   g r e p   " \ " a c c t \ " < b l o b > = "��   � o      ���� 0 thisuser thisUser �  � � � l   �� � ���   �   display dialog thisUser    � � � � 0   d i s p l a y   d i a l o g   t h i s U s e r �  � � � r     � � � I    �� ����� 0 splitstring__ splitString__ �  � � � o    ���� 0 thisuser thisUser �  ��� � m     � � � � �  "��  ��   � o      ���� 0 thisuser thisUser �  � � � r    % � � � n    # � � � 4     #�� �
�� 
cobj � m   ! "����  � o     ���� 0 thisuser thisUser � o      ���� 0 thisuser thisUser �  ��� � L   & ( � � o   & '���� 0 thisuser thisUser��   � R      �����
�� .ascrerr ****      � ****��  �   � L   0 2 � � m   0 1 � � � � �  ��   �  � � � l     �~�}�|�~  �}  �|   �  � � � i    " � � � I      �{ ��z�{ 0 setpassword__ setPassword__ �  � � � o      �y�y 0 thispool thisPool �  ��x � o      �w�w 0 thispass thisPass�x  �z   � k     � �  � � � l     �v�u�t�v  �u  �t   �  � � � r      � � � c      �  � o     �s�s 0 thispool thisPool  m    �r
�r 
ctxt � o      �q�q 0 thispool thisPool �  r     c    	 o    �p�p 0 thispass thisPass m    �o
�o 
ctxt o      �n�n 0 thispass thisPass  l   �m�l�k�m  �l  �k   	
	 l   �j�j   3 - lookup the pool data to save in the keychain    � Z   l o o k u p   t h e   p o o l   d a t a   t o   s a v e   i n   t h e   k e y c h a i n
  r     J    �i�i   o      �h�h 0 
chosenpool 
chosenPool  Y    W�g�f Z   ( R�e�d =  ( ; l  ( 9�c�b c   ( 9 n   ( 7 4   4 7�a 
�a 
cobj  m   5 6�`�`  l  ( 4!�_�^! n   ( 4"#" 4   1 4�]$
�] 
cobj$ o   2 3�\�\ 0 x  # n  ( 1%&% I   - 1�[�Z�Y�[ 0 myprefspools myPrefsPools�Z  �Y  & o   ( -�X�X 0 appdelegate AppDelegate�_  �^   m   7 8�W
�W 
ctxt�c  �b   o   9 :�V�V 0 thispool thisPool k   > N'' ()( r   > L*+* n   > J,-, 4   G J�U.
�U 
cobj. o   H I�T�T 0 x  - n  > G/0/ I   C G�S�R�Q�S 0 myprefspools myPrefsPools�R  �Q  0 o   > C�P�P 0 appdelegate AppDelegate+ o      �O�O 0 
chosenpool 
chosenPool) 1�N1  S   M N�N  �e  �d  �g 0 x   m    �M�M  n    #232 m     "�L
�L 
nmbr3 n    454 2    �K
�K 
cobj5 n   676 I    �J�I�H�J 0 myprefspools myPrefsPools�I  �H  7 o    �G�G 0 appdelegate AppDelegate�f   898 l  X X�F�E�D�F  �E  �D  9 :;: l  X X�C<=�C  < #  add/update the keychain item   = �>> :   a d d / u p d a t e   t h e   k e y c h a i n   i t e m; ?�B? Q   X@AB@ k   [ �CC DED I  [ ��AF�@
�A .sysoexecTEXT���     TEXTF b   [ �GHG b   [ �IJI b   [ {KLK b   [ yMNM b   [ wOPO b   [ uQRQ b   [ nSTS b   [ lUVU b   [ eWXW b   [ cYZY m   [ \[[ �\\ D s e c u r i t y   a d d - g e n e r i c - p a s s w o r d   - a   "Z l  \ b]�?�>] c   \ b^_^ n   \ ``a` 4   ] `�=b
�= 
cobjb m   ^ _�<�< a l  \ ]c�;�:c o   \ ]�9�9 0 
chosenpool 
chosenPool�;  �:  _ m   ` a�8
�8 
ctxt�?  �>  X m   c ddd �ee  "   - j   "V l  e kf�7�6f c   e kghg n   e iiji 4   f i�5k
�5 
cobjk m   g h�4�4 j l  e fl�3�2l o   e f�1�1 0 
chosenpool 
chosenPool�3  �2  h m   i j�0
�0 
ctxt�7  �6  T m   l mmm �nn   "   - s   " A s t e r o i d   (R l  n to�/�.o c   n tpqp n   n rrsr 4   o r�-t
�- 
cobjt m   p q�,�, s l  n ou�+�*u o   n o�)�) 0 
chosenpool 
chosenPool�+  �*  q m   r s�(
�( 
ctxt�/  �.  P m   u vvv �ww  ) "   - w   "N o   w x�'�' 0 thispass thisPassL m   y zxx �yy  "   - T   "J n  { �z{z o   � ��&�& 0 
bundlepath 
bundlePath{ o   { ��%�% 0 appdelegate AppDelegateH m   � �|| �}}  "�@  E ~�$~ L   � � m   � ��#
�# boovtrue�$  A R      �"�!� 
�" .ascrerr ****      � ****�!  �   B k   ��� ��� l  � �����  � ) # try to delete it then add it again   � ��� F   t r y   t o   d e l e t e   i t   t h e n   a d d   i t   a g a i n� ��� Q   ����� k   � ��� ��� I  � ����
� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� J s e c u r i t y   d e l e t e - g e n e r i c - p a s s w o r d   - a   "� l  � ����� c   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � l  � ����� o   � ��� 0 
chosenpool 
chosenPool�  �  � m   � ��
� 
ctxt�  �  � m   � ��� ���  "   - j   "� l  � ����� c   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � l  � ����� o   � ��� 0 
chosenpool 
chosenPool�  �  � m   � ��
� 
ctxt�  �  � m   � ��� ���   "   - s   " A s t e r o i d   (� l  � ����
� c   � ���� n   � ���� 4   � ��	�
�	 
cobj� m   � ��� � l  � ����� o   � ��� 0 
chosenpool 
chosenPool�  �  � m   � ��
� 
ctxt�  �
  � m   � ��� ���  ) "�  � ��� I  � ����
� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� b   � ���� m   � ��� ��� D s e c u r i t y   a d d - g e n e r i c - p a s s w o r d   - a   "� l  � ��� ��� c   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � l  � ������� o   � ����� 0 
chosenpool 
chosenPool��  ��  � m   � ���
�� 
ctxt�   ��  � m   � ��� ���  "   - j   "� l  � ������� c   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � l  � ������� o   � ����� 0 
chosenpool 
chosenPool��  ��  � m   � ���
�� 
ctxt��  ��  � m   � ��� ���   "   - s   " A s t e r o i d   (� l  � ������� c   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � l  � ������� o   � ����� 0 
chosenpool 
chosenPool��  ��  � m   � ���
�� 
ctxt��  ��  � m   � ��� ���  ) "   - w   "� o   � ����� 0 thispass thisPass� m   � ��� ���  "   - T   "� n  � ���� o   � ����� 0 
bundlepath 
bundlePath� o   � ����� 0 appdelegate AppDelegate� m   � ��� ���  "�  �  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 err  ��  � k   ��� ��� I   �������� 
0 msglog  � ��� b   ���� m   ��� ��� 6 U n a b l e   t o   u p d a t e   k e y c h a i n :  � o  ���� 0 err  � ���� m  �� ���  w a r n i n g��  ��  � ���� L  �� m  ��
�� boovfals��  �  �B   �    l     ��������  ��  ��    i   # & I      ������ 0 
loadprefs_ 
loadPrefs_ �� o      ���� 0 
resetprefs 
resetPrefs��  ��   k    z 	
	 r      c      o     ���� 0 
resetprefs 
resetPrefs m    ��
�� 
bool o      ���� 0 
resetprefs 
resetPrefs
  l   ��������  ��  ��    l   ����   = 7 set the default prefs version number in case it's used    � n   s e t   t h e   d e f a u l t   p r e f s   v e r s i o n   n u m b e r   i n   c a s e   i t ' s   u s e d  n    I    ������ 0 setavar____ setaVar____  m     �  g e n e r a l   m    ����   !"! c    #$# l   %����% n   &'& I    ��(���� :0 objectforinfodictionarykey_ objectForInfoDictionaryKey_( )��) m    ** �++ 4 C F B u n d l e S h o r t V e r s i o n S t r i n g��  ��  ' n   ,-, o    ���� 0 
mainbundle 
mainBundle- n   ./. 4    ��0
�� 
pcls0 m    11 �22  N S B u n d l e/ m    ��
�� misccura��  ��  $ m    ��
�� 
ctxt" 3��3 m    44 �55  t e x t��  ��   o    ���� 0 appdelegate AppDelegate 676 l     ��������  ��  ��  7 898 l     ��:;��  : � � save these values as defaults before we overwrite them with user defaults, so that we can check the number of parameters and if we need to update the prefs (new version of Asteroid for example)   ; �<<�   s a v e   t h e s e   v a l u e s   a s   d e f a u l t s   b e f o r e   w e   o v e r w r i t e   t h e m   w i t h   u s e r   d e f a u l t s ,   s o   t h a t   w e   c a n   c h e c k   t h e   n u m b e r   o f   p a r a m e t e r s   a n d   i f   w e   n e e d   t o   u p d a t e   t h e   p r e f s   ( n e w   v e r s i o n   o f   A s t e r o i d   f o r   e x a m p l e )9 =>= r     -?@? c     +ABA n    )CDC I   % )��������  0 myprefsgeneral myPrefsGeneral��  ��  D o     %���� 0 appdelegate AppDelegateB m   ) *��
�� 
list@ o      ���� .0 defaultmyprefsgeneral defaultMyPrefsGeneral> EFE r   . ;GHG c   . 9IJI n  . 7KLK I   3 7�������� 0 myprefspools myPrefsPools��  ��  L o   . 3���� 0 appdelegate AppDelegateJ m   7 8��
�� 
listH o      ���� *0 defaultmyprefspools defaultMyPrefsPoolsF MNM r   < IOPO c   < GQRQ n  < ESTS I   A E�������� 0 myprefsgpus myPrefsGPUs��  ��  T o   < A���� 0 appdelegate AppDelegateR m   E F��
�� 
listP o      ���� (0 defaultmyprefsgpus defaultMyPrefsGPUsN UVU r   J WWXW c   J UYZY n  J S[\[ I   O S�������� 0 myprefsfpgas myPrefsFPGAs��  ��  \ o   J O���� 0 appdelegate AppDelegateZ m   S T��
�� 
listX o      ���� *0 defaultmyprefsfpgas defaultMyPrefsFPGAsV ]^] r   X e_`_ c   X caba n  X acdc I   ] a�������� 0 myprefsasics myPrefsASICs��  ��  d o   X ]���� 0 appdelegate AppDelegateb m   a b��
�� 
list` o      ���� *0 defaultmyprefsasics defaultMyPrefsASICs^ efe r   f sghg c   f qiji n  f oklk I   k o��������  0 myprefsdevices myPrefsDevices��  ��  l o   f k���� 0 appdelegate AppDelegatej m   o p��
�� 
listh o      ���� .0 defaultmyprefsdevices defaultMyPrefsDevicesf mnm r   t �opo c   t qrq n  t }sts I   y }�������� ,0 myprefslifetimestats myPrefsLifetimeStats��  ��  t o   t y���� 0 appdelegate AppDelegater m   } ~��
�� 
listp o      ���� :0 defaultmyprefslifetimestats defaultMyPrefsLifetimeStatsn uvu l  � ���������  ��  ��  v wxw O   �1yzy k   �0{{ |}| l  � ���~��  ~ 9 3 register the starting user default key:value items    ��� f   r e g i s t e r   t h e   s t a r t i n g   u s e r   d e f a u l t   k e y : v a l u e   i t e m s} ��� I   � �������� &0 registerdefaults_ registerDefaults_� ���� K   � ��� �������  0 myprefsgeneral myPrefsGeneral� o   � ����� .0 defaultmyprefsgeneral defaultMyPrefsGeneral��  ��  ��  � ��� I   � �������� &0 registerdefaults_ registerDefaults_� ���� K   � ��� ������� 0 myprefspools myPrefsPools� o   � ����� *0 defaultmyprefspools defaultMyPrefsPools��  ��  ��  � ��� I   � �������� &0 registerdefaults_ registerDefaults_� ���� K   � ��� ���~� 0 myprefsgpus myPrefsGPUs� o   � ��}�} (0 defaultmyprefsgpus defaultMyPrefsGPUs�~  ��  ��  � ��� I   � ��|��{�| &0 registerdefaults_ registerDefaults_� ��z� K   � ��� �y��x�y 0 myprefsfpgas myPrefsFPGAs� o   � ��w�w *0 defaultmyprefsfpgas defaultMyPrefsFPGAs�x  �z  �{  � ��� I   � ��v��u�v &0 registerdefaults_ registerDefaults_� ��t� K   � ��� �s��r�s 0 myprefsasics myPrefsASICs� o   � ��q�q *0 defaultmyprefsasics defaultMyPrefsASICs�r  �t  �u  � ��� I   � ��p��o�p &0 registerdefaults_ registerDefaults_� ��n� K   � ��� �m��l�m  0 myprefsdevices myPrefsDevices� o   � ��k�k .0 defaultmyprefsdevices defaultMyPrefsDevices�l  �n  �o  � ��� I   � ��j��i�j &0 registerdefaults_ registerDefaults_� ��h� K   � ��� �g��f�g ,0 myprefslifetimestats myPrefsLifetimeStats� o   � ��e�e :0 defaultmyprefslifetimestats defaultMyPrefsLifetimeStats�f  �h  �i  � ��� l  � ��d�c�b�d  �c  �b  � ��� l  � ��a���a  � E ? read any previously saved items (which will update the values)   � ��� ~   r e a d   a n y   p r e v i o u s l y   s a v e d   i t e m s   ( w h i c h   w i l l   u p d a t e   t h e   v a l u e s )� ��� Z   �����`�_� l  � ���^�]� =  � ���� o   � ��\�\ 0 
resetprefs 
resetPrefs� m   � ��[
�[ boovfals�^  �]  � k   ���� ��� r   � ���� c   � ���� I   � ��Z��Y�Z 0 objectforkey_ objectForKey_� ��X� m   � ��� ���  m y P r e f s G e n e r a l�X  �Y  � m   � ��W
�W 
list� n     ��� o   � ��V�V  0 myprefsgeneral myPrefsGeneral� o   � ��U�U 0 appdelegate AppDelegate� ��� r   �	��� c   ���� I   � ��T��S�T 0 objectforkey_ objectForKey_� ��R� m   � ��� ���  m y P r e f s P o o l s�R  �S  � m   � �Q
�Q 
list� n     ��� o  �P�P 0 myprefspools myPrefsPools� o  �O�O 0 appdelegate AppDelegate� ��� r  
��� c  
��� I  
�N��M�N 0 objectforkey_ objectForKey_� ��L� m  �� ���  m y P r e f s G P U s�L  �M  � m  �K
�K 
list� n     ��� o  �J�J 0 myprefsgpus myPrefsGPUs� o  �I�I 0 appdelegate AppDelegate� ��� r  3��� c  )��� I  '�H��G�H 0 objectforkey_ objectForKey_� ��F� m   #�� ���  m y P r e f s F P G A s�F  �G  � m  '(�E
�E 
list� n     ��� o  .2�D�D 0 myprefsfpgas myPrefsFPGAs� o  ).�C�C 0 appdelegate AppDelegate� ��� r  4H��� c  4>��� I  4<�B��A�B 0 objectforkey_ objectForKey_� ��@� m  58�� ���  m y P r e f s A S I C s�@  �A  � m  <=�?
�? 
list� n     ��� o  CG�>�> 0 myprefsasics myPrefsASICs� o  >C�=�= 0 appdelegate AppDelegate� ��� r  I]��� c  IS��� I  IQ�<��;�< 0 objectforkey_ objectForKey_� ��:� m  JM�� ���  m y P r e f s D e v i c e s�:  �;  � m  QR�9
�9 
list� n        o  X\�8�8  0 myprefsdevices myPrefsDevices o  SX�7�7 0 appdelegate AppDelegate�  r  ^r c  ^h I  ^f�6�5�6 0 objectforkey_ objectForKey_ 	�4	 m  _b

 � ( m y P r e f s L i f e t i m e S t a t s�4  �5   m  fg�3
�3 
list n      o  mq�2�2 ,0 myprefslifetimestats myPrefsLifetimeStats o  hm�1�1 0 appdelegate AppDelegate �0 Z  s��/ @ s� n  s� m  ���.
�. 
nmbr n s� 2 |��-
�- 
cobj n s| I  x|�,�+�*�,  0 myprefsgeneral myPrefsGeneral�+  �*   o  sx�)�) 0 appdelegate AppDelegate m  ���(�(  k  ��  l ���'�&�%�'  �&  �%    l ���$ �$   - ' prefs version number check / upgrading     �!! N   p r e f s   v e r s i o n   n u m b e r   c h e c k   /   u p g r a d i n g "�#" Z  ��#$�"�!# > ��%&% l ��'� �' c  ��()( n  ��*+* 4  ���,
� 
cobj, m  ���� + n ��-.- I  ������  0 myprefsgeneral myPrefsGeneral�  �  . o  ���� 0 appdelegate AppDelegate) m  ���
� 
ctxt�   �  & l ��/��/ c  ��010 n  ��232 4  ���4
� 
cobj4 m  ���� 3 o  ���� .0 defaultmyprefsgeneral defaultMyPrefsGeneral1 m  ���
� 
ctxt�  �  $ k  ��55 676 l ���89�  8 ) # TODO: Add prefs upgrading routines   9 �:: F   T O D O :   A d d   p r e f s   u p g r a d i n g   r o u t i n e s7 ;<; l ������  �  �  < =>= l ���?@�  ? � �if (item 20 of myPrefsGeneral as text) is "0.8.0" or (item 20 of myPrefsGeneral as text) is "0.8.1" or (item 20 of myPrefsGeneral as text) is "0.8.2" then   @ �AA4 i f   ( i t e m   2 0   o f   m y P r e f s G e n e r a l   a s   t e x t )   i s   " 0 . 8 . 0 "   o r   ( i t e m   2 0   o f   m y P r e f s G e n e r a l   a s   t e x t )   i s   " 0 . 8 . 1 "   o r   ( i t e m   2 0   o f   m y P r e f s G e n e r a l   a s   t e x t )   i s   " 0 . 8 . 2 "   t h e n> BCB l ���DE�  D , & still compatible, just upgrade number   E �FF L   s t i l l   c o m p a t i b l e ,   j u s t   u p g r a d e   n u m b e rC GHG l ���IJ�  I Q Kset item 20 of myPrefsGeneral to (item 20 of defaultMyPrefsGeneral as text)   J �KK � s e t   i t e m   2 0   o f   m y P r e f s G e n e r a l   t o   ( i t e m   2 0   o f   d e f a u l t M y P r e f s G e n e r a l   a s   t e x t )H LML l ���
NO�
  N 
 else   O �PP  e l s eM QRQ r  ��STS m  ���	
�	 boovtrueT o      �� 0 
resetprefs 
resetPrefsR U�U l ���VW�  V  end if   W �XX  e n d   i f�  �"  �!  �#  �/   r  ��YZY m  ���
� boovtrueZ o      �� 0 
resetprefs 
resetPrefs�0  �`  �_  � [\[ l ������  �  �  \ ]^] Z  �._`� ��_ l ��a����a = ��bcb o  ������ 0 
resetprefs 
resetPrefsc m  ����
�� boovtrue��  ��  ` k  �*dd efe r  ��ghg c  ��iji o  ������ .0 defaultmyprefsgeneral defaultMyPrefsGeneralj m  ����
�� 
listh n     klk o  ������  0 myprefsgeneral myPrefsGenerall o  ������ 0 appdelegate AppDelegatef mnm r  ��opo c  ��qrq o  ������ *0 defaultmyprefspools defaultMyPrefsPoolsr m  ����
�� 
listp n     sts o  ������ 0 myprefspools myPrefsPoolst o  ������ 0 appdelegate AppDelegaten uvu r  ��wxw c  ��yzy o  ������ (0 defaultmyprefsgpus defaultMyPrefsGPUsz m  ����
�� 
listx n     {|{ o  ������ 0 myprefsgpus myPrefsGPUs| o  ������ 0 appdelegate AppDelegatev }~} r  ��� c  ����� o  ������ *0 defaultmyprefsfpgas defaultMyPrefsFPGAs� m  ����
�� 
list� n     ��� o  ������ 0 myprefsfpgas myPrefsFPGAs� o  ������ 0 appdelegate AppDelegate~ ��� r  � ��� c  ����� o  ������ *0 defaultmyprefsasics defaultMyPrefsASICs� m  ����
�� 
list� n     ��� o  ������ 0 myprefsasics myPrefsASICs� o  ������ 0 appdelegate AppDelegate� ��� r  ��� c  ��� o  ���� .0 defaultmyprefsdevices defaultMyPrefsDevices� m  ��
�� 
list� n     ��� o  	����  0 myprefsdevices myPrefsDevices� o  	���� 0 appdelegate AppDelegate� ��� r  ��� c  ��� o  ���� :0 defaultmyprefslifetimestats defaultMyPrefsLifetimeStats� m  ��
�� 
list� n     ��� o  ���� ,0 myprefslifetimestats myPrefsLifetimeStats� o  ���� 0 appdelegate AppDelegate� ��� r   ��� m  ��
�� boovtrue� o      ���� 0 	firstboot 	firstBoot� ��� l !!������  � D > write to disk right away, to obliterate the old settings asap   � ��� |   w r i t e   t o   d i s k   r i g h t   a w a y ,   t o   o b l i t e r a t e   t h e   o l d   s e t t i n g s   a s a p� ���� n !*��� I  &*�������� *0 flushsettingstodisk flushSettingsToDisk��  ��  � o  !&���� 0 appdelegate AppDelegate��  �   ��  ^ ���� l //��������  ��  ��  ��  z n   � ���� I   � ��������� ,0 standarduserdefaults standardUserDefaults��  ��  � n  � ���� o   � �����  0 nsuserdefaults NSUserDefaults� m   � ���
�� misccurax ��� l 22��������  ��  ��  � ��� l 22������  � / ) determine what coin type we'll use first   � ��� R   d e t e r m i n e   w h a t   c o i n   t y p e   w e ' l l   u s e   f i r s t� ��� Y  2��������� Z  M�������� > Mf��� c  Mb��� n  M`��� 4  [`���
�� 
cobj� m  ^_���� � l M[������ n  M[��� 4  V[���
�� 
cobj� o  YZ���� 0 x  � n MV��� I  RV�������� 0 myprefspools myPrefsPools��  ��  � o  MR���� 0 appdelegate AppDelegate��  ��  � m  `a��
�� 
ctxt� m  be�� ���  0� Z  i������� = i���� n  i~��� 4  w~���
�� 
cobj� m  z}���� � l iw������ n  iw��� 4  rw���
�� 
cobj� o  uv���� 0 x  � n ir��� I  nr�������� 0 myprefspools myPrefsPools��  ��  � o  in���� 0 appdelegate AppDelegate��  ��  � m  ~��� ���  B i t c o i n� n ����� I  ��������� 0 setcoin_ setCoin_� ���� m  ���� ���  B i t c o i n��  ��  � o  ������ 0 appdelegate AppDelegate� ��� = ����� n  ����� 4  �����
�� 
cobj� m  ������ � l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � n ����� I  ���������� 0 myprefspools myPrefsPools��  ��  � o  ������ 0 appdelegate AppDelegate��  ��  � m  ���� ���  L i t e c o i n� ���� n ����� I  ��������� 0 setcoin_ setCoin_� ���� m  ���� ���  L i t e c o i n��  ��  � o  ������ 0 appdelegate AppDelegate��  ��  ��  ��  �� 0 x  � m  56���� � n  6H��� m  CG��
�� 
nmbr� n 6C��� 2 ?C��
�� 
cobj� n 6?��� I  ;?�������� 0 myprefspools myPrefsPools��  ��  � o  6;���� 0 appdelegate AppDelegate��  � ��� l ����������  ��  ��  � � � l ������   A ; load default pools, converting to applescript list objects    � v   l o a d   d e f a u l t   p o o l s ,   c o n v e r t i n g   t o   a p p l e s c r i p t   l i s t   o b j e c t s   r  �� J  ������   o      ���� &0 mydefaultpoolsbtc myDefaultPoolsBTC 	 r  ��

 J  ������   o      ���� &0 mydefaultpoolsltc myDefaultPoolsLTC	  l ����������  ��  ��    l ������     open data files    �     o p e n   d a t a   f i l e s  r  �� b  �� l ������ c  �� n �� o  ������ 0 resourcepath resourcePath o  ������ 0 appdelegate AppDelegate m  ����
�� 
ctxt��  ��   m  �� �  / P o o l s _ B T C . t x t o      ���� 0 thefile theFile  !  I ����"��
�� .rdwropenshor       file" o  ������ 0 thefile theFile��  ! #$# r  ��%&% l ��'���' I ���~(�}
�~ .rdwrread****        ****( o  ���|�| 0 thefile theFile�}  ��  �  & o      �{�{ (0 defaultpoolsbtcraw defaultPoolsBTCraw$ )*) I ���z+�y
�z .rdwrclosnull���     ****+ o  ���x�x 0 thefile theFile�y  * ,-, r  �./. b  �	010 l �2�w�v2 c  �343 n �565 o  ��u�u 0 resourcepath resourcePath6 o  ���t�t 0 appdelegate AppDelegate4 m  �s
�s 
ctxt�w  �v  1 m  77 �88  / P o o l s _ L T C . t x t/ o      �r�r 0 thefile theFile- 9:9 I �q;�p
�q .rdwropenshor       file; o  �o�o 0 thefile theFile�p  : <=< r  >?> l @�n�m@ I �lA�k
�l .rdwrread****        ****A o  �j�j 0 thefile theFile�k  �n  �m  ? o      �i�i (0 defaultpoolsltcraw defaultPoolsLTCraw= BCB I �hD�g
�h .rdwrclosnull���     ****D o  �f�f 0 thefile theFile�g  C EFE l   �e�d�c�e  �d  �c  F GHG r   )IJI n  'KLK 1  #'�b
�b 
txdlL 1   #�a
�a 
ascrJ o      �`�` 0 	olddelims 	oldDelimsH MNM l *5OPQO r  *5RSR m  *-TT �UU  ;S n     VWV 1  04�_
�_ 
txdlW 1  -0�^
�^ 
ascrP   parse on the semicolon   Q �XX .   p a r s e   o n   t h e   s e m i c o l o nN YZY r  6;[\[ m  67�]�]  \ o      �\�\ 0 poolids poolIDsZ ]^] Y  <�_�[`a�Z_ k  O�bb cdc r  Oxefe J  Ougg hih n  OZjkj 4  UZ�Yl
�Y 
citml m  XY�X�X k l OUm�W�Vm n  OUnon 4  PU�Up
�U 
cparp o  ST�T�T 0 x  o o  OP�S�S (0 defaultpoolsbtcraw defaultPoolsBTCraw�W  �V  i qrq n  Zests 4  `e�Ru
�R 
citmu m  cd�Q�Q t l Z`v�P�Ov n  Z`wxw 4  [`�Ny
�N 
cpary o  ^_�M�M 0 x  x o  Z[�L�L (0 defaultpoolsbtcraw defaultPoolsBTCraw�P  �O  r z{z n  ep|}| 4  kp�K~
�K 
citm~ m  no�J�J } l ek�I�H n  ek��� 4  fk�G�
�G 
cpar� o  ij�F�F 0 x  � o  ef�E�E (0 defaultpoolsbtcraw defaultPoolsBTCraw�I  �H  { ��D� o  ps�C�C 0 poolids poolIDs�D  f n     ���  ;  vw� o  uv�B�B &0 mydefaultpoolsbtc myDefaultPoolsBTCd ��A� r  y���� [  y~��� o  y|�@�@ 0 poolids poolIDs� m  |}�?�? � o      �>�> 0 poolids poolIDs�A  �[ 0 x  ` m  ?@�=�= a n  @J��� m  EI�<
�< 
nmbr� n @E��� 2 AE�;
�; 
cpar� o  @A�:�: (0 defaultpoolsbtcraw defaultPoolsBTCraw�Z  ^ ��� Y  ����9���8� k  ���� ��� r  ����� J  ���� ��� n  ����� 4  ���7�
�7 
citm� m  ���6�6 � l ����5�4� n  ����� 4  ���3�
�3 
cpar� o  ���2�2 0 x  � o  ���1�1 (0 defaultpoolsltcraw defaultPoolsLTCraw�5  �4  � ��� n  ����� 4  ���0�
�0 
citm� m  ���/�/ � l ����.�-� n  ����� 4  ���,�
�, 
cpar� o  ���+�+ 0 x  � o  ���*�* (0 defaultpoolsltcraw defaultPoolsLTCraw�.  �-  � ��� n  ����� 4  ���)�
�) 
citm� m  ���(�( � l ����'�&� n  ����� 4  ���%�
�% 
cpar� o  ���$�$ 0 x  � o  ���#�# (0 defaultpoolsltcraw defaultPoolsLTCraw�'  �&  � ��"� o  ���!�! 0 poolids poolIDs�"  � n     ���  ;  ��� o  ��� �  &0 mydefaultpoolsltc myDefaultPoolsLTC� ��� r  ����� [  ����� o  ���� 0 poolids poolIDs� m  ���� � o      �� 0 poolids poolIDs�  �9 0 x  � m  ���� � n  ����� m  ���
� 
nmbr� n ����� 2 ���
� 
cpar� o  ���� (0 defaultpoolsltcraw defaultPoolsLTCraw�8  � ��� r  ����� o  ���� 0 	olddelims 	oldDelims� n     ��� 1  ���
� 
txdl� 1  ���
� 
ascr� ��� l ������  �  �  � ��� r  ����� c  ����� o  ���� &0 mydefaultpoolsbtc myDefaultPoolsBTC� m  ���
� 
list� n     ��� o  ���� "0 defaultpoolsbtc defaultPoolsBTC� o  ���� 0 appdelegate AppDelegate� ��� r  ����� c  ����� o  ���� &0 mydefaultpoolsltc myDefaultPoolsLTC� m  ���
� 
list� n     ��� o  ���� "0 defaultpoolsltc defaultPoolsLTC� o  ���
�
 0 appdelegate AppDelegate� ��� l ���	���	  �  �  � ��� Z  �7����� = �	��� l ����� c  ���� n ���� o  ��� 0 currentcoin currentCoin� o  ���� 0 appdelegate AppDelegate� m  �
� 
ctxt�  �  � m  �� ���  B i t c o i n� n ��� I  � �����  0 setbitcoinui setBitcoinUI��  ��  � o  ���� 0 appdelegate AppDelegate� ��� = '��� l #������ c  #��� n !��� o  !���� 0 currentcoin currentCoin� o  ���� 0 appdelegate AppDelegate� m  !"��
�� 
ctxt��  ��  � m  #&�� ���  L i t e c o i n� ���� n *3��� I  /3�������� 0 setlitecoinui setLitecoinUI��  ��  � o  */���� 0 appdelegate AppDelegate��  �  � ��� l 88��������  ��  ��  � ��� r  8R��� n  8H� � 4  AH��
�� 
cobj m  DG����   n 8A I  =A��������  0 myprefsgeneral myPrefsGeneral��  ��   o  8=���� 0 appdelegate AppDelegate� n      o  MQ���� &0 avgscrypthashrate avgScryptHashrate o  HM���� 0 appdelegate AppDelegate�  l SS��������  ��  ��   	 r  So

 c  Se n  Sc 4  \c��
�� 
cobj m  _b����  n S\ I  X\��������  0 myprefsgeneral myPrefsGeneral��  ��   o  SX���� 0 appdelegate AppDelegate m  cd��
�� 
ctxt n      o  jn���� 0 
currentsub 
currentSub o  ej���� 0 appdelegate AppDelegate	  l pp��������  ��  ��    l pp����     get the computer's name    � 0   g e t   t h e   c o m p u t e r ' s   n a m e  n p� I  u��� ���� 0 setavar____ setaVar____  !"! m  ux## �$$  g e n e r a l" %&% m  x{���� & '(' c  {�)*) l {�+����+ n  {�,-, 1  ����
�� 
sicn- l {�.����. I {�������
�� .sysosigtsirr   ��� null��  ��  ��  ��  ��  ��  * m  ����
�� 
ctxt( /��/ m  ��00 �11  t e x t��  ��   o  pu���� 0 appdelegate AppDelegate 232 l ����������  ��  ��  3 454 l ����67��  6 � � if we somehow aleady have an email address for the user, let's make sure we've populated it in the other fields too as a courtesy   7 �88   i f   w e   s o m e h o w   a l e a d y   h a v e   a n   e m a i l   a d d r e s s   f o r   t h e   u s e r ,   l e t ' s   m a k e   s u r e   w e ' v e   p o p u l a t e d   i t   i n   t h e   o t h e r   f i e l d s   t o o   a s   a   c o u r t e s y5 9:9 Z  �=;<=��; F  ��>?> = ��@A@ n  ��BCB 4  ����D
�� 
cobjD m  ������ 
C n ��EFE I  ����������  0 myprefsgeneral myPrefsGeneral��  ��  F o  ������ 0 appdelegate AppDelegateA m  ��GG �HH  ? > ��IJI n  ��KLK 4  ����M
�� 
cobjM m  ������ L n ��NON I  ����������  0 myprefsgeneral myPrefsGeneral��  ��  O o  ������ 0 appdelegate AppDelegateJ m  ��PP �QQ  < n ��RSR I  ����T���� 0 setavar____ setaVar____T UVU m  ��WW �XX  g e n e r a lV YZY m  ������ 
Z [\[ l ��]����] c  ��^_^ n  ��`a` 4  ����b
�� 
cobjb m  ������ a n ��cdc I  ����������  0 myprefsgeneral myPrefsGeneral��  ��  d o  ������ 0 appdelegate AppDelegate_ m  ����
�� 
ctxt��  ��  \ e��e m  ��ff �gg  t e x t��  ��  S o  ������ 0 appdelegate AppDelegate= hih F  �jkj > ��lml n  ��non 4  ����p
�� 
cobjp m  ������ 
o n ��qrq I  ����������  0 myprefsgeneral myPrefsGeneral��  ��  r o  ������ 0 appdelegate AppDelegatem m  ��ss �tt  k = �uvu n  �wxw 4  ��y
�� 
cobjy m  ���� x n �z{z I  ��������  0 myprefsgeneral myPrefsGeneral��  ��  { o  ����� 0 appdelegate AppDelegatev m  || �}}  i ~��~ n 9� I  9������� 0 setavar____ setaVar____� ��� m  �� ���  g e n e r a l� ��� m   ���� � ��� l  2������ c   2��� n   0��� 4  )0���
�� 
cobj� m  ,/���� 
� n  )��� I  %)��������  0 myprefsgeneral myPrefsGeneral��  ��  � o   %���� 0 appdelegate AppDelegate� m  01��
�� 
ctxt��  ��  � ���� m  25�� ���  t e x t��  ��  � o  ���� 0 appdelegate AppDelegate��  ��  : ��� l >>��������  ��  ��  � ��� Y  >r�������� k  Ym�� ��� l YY������  � B <reset current and max hash rates so we start fresh each boot   � ��� x r e s e t   c u r r e n t   a n d   m a x   h a s h   r a t e s   s o   w e   s t a r t   f r e s h   e a c h   b o o t� ��� n Yo��� I  ^o������� 0 setavar____ setaVar____� ��� m  ^a�� ���  d e v i c e s� ��� J  ag�� ��� o  ab���� 0 x  � ���� m  be���� ��  � ��� m  gh����  � ���� m  hk�� ���  i n t e g e r��  ��  � o  Y^���� 0 appdelegate AppDelegate� ��� n p���� I  u�������� 0 setavar____ setaVar____� ��� m  ux�� ���  d e v i c e s� ��� J  x~�� ��� o  xy�� 0 x  � ��~� m  y|�}�} �~  � ��� m  ~�|�|  � ��{� m  ��� ���  i n t e g e r�{  ��  � o  pu�z�z 0 appdelegate AppDelegate� ��� n ����� I  ���y��x�y 0 setavar____ setaVar____� ��� m  ���� ���  d e v i c e s� ��� J  ���� ��� o  ���w�w 0 x  � ��v� m  ���u�u �v  � ��� m  ���t�t  � ��s� m  ���� ���  i n t e g e r�s  �x  � o  ���r�r 0 appdelegate AppDelegate� ��� l ���q�p�o�q  �p  �o  � ��� l ���n���n  � 7 1 reset the accepted/rejected shares and HW errors   � ��� b   r e s e t   t h e   a c c e p t e d / r e j e c t e d   s h a r e s   a n d   H W   e r r o r s� ��� n ����� I  ���m��l�m 0 setavar____ setaVar____� ��� m  ���� ���  d e v i c e s� ��� J  ���� ��� o  ���k�k 0 x  � ��j� m  ���i�i �j  � ��� m  ���h�h  � ��g� m  ���� ���  i n t e g e r�g  �l  � o  ���f�f 0 appdelegate AppDelegate� ��� n ����� I  ���e��d�e 0 setavar____ setaVar____� ��� m  ��   �  d e v i c e s�  J  ��  o  ���c�c 0 x   �b m  ���a�a �b   	 m  ���`�`  	 
�_
 m  �� �  i n t e g e r�_  �d  � o  ���^�^ 0 appdelegate AppDelegate�  n �� I  ���]�\�] 0 setavar____ setaVar____  m  �� �  d e v i c e s  J  ��  o  ���[�[ 0 x   �Z m  ���Y�Y �Z    m  ���X�X   �W m  �� �    i n t e g e r�W  �\   o  ���V�V 0 appdelegate AppDelegate !"! l ���U�T�S�U  �T  �S  " #$# l ���R%&�R  %   reset the temperature   & �'' ,   r e s e t   t h e   t e m p e r a t u r e$ ()( n ��*+* I  ���Q,�P�Q 0 setavar____ setaVar____, -.- m  ��// �00  d e v i c e s. 121 J  ��33 454 o  ���O�O 0 x  5 6�N6 m  ���M�M �N  2 787 m  ���L�L  8 9�K9 m  ��:: �;;  i n t e g e r�K  �P  + o  ���J�J 0 appdelegate AppDelegate) <=< l ���I�H�G�I  �H  �G  = >?> l ���F@A�F  @ a [ lower the GPU intensity if it's set to a crazy level, so we default to a semi-usable level   A �BB �   l o w e r   t h e   G P U   i n t e n s i t y   i f   i t ' s   s e t   t o   a   c r a z y   l e v e l ,   s o   w e   d e f a u l t   t o   a   s e m i - u s a b l e   l e v e l? CDC Z  �XEF�E�DE > �GHG c  �IJI l �K�C�BK n  �LML 4  �AN
�A 
cobjN m  �@�@ M n  �OPO 4  �?Q
�? 
cobjQ o  �>�> 0 x  P n �RSR I  ��=�<�;�=  0 myprefsdevices myPrefsDevices�<  �;  S o  ���:�: 0 appdelegate AppDelegate�C  �B  J m  �9
�9 
ctxtH m  TT �UU  dF Z  TVW�8�7V ? 5XYX l 1Z�6�5Z c  1[\[ n  -]^] 4  &-�4_
�4 
cobj_ m  ),�3�3 ^ n  &`a` 4  !&�2b
�2 
cobjb o  $%�1�1 0 x  a n !cdc I  !�0�/�.�0  0 myprefsdevices myPrefsDevices�/  �.  d o  �-�- 0 appdelegate AppDelegate\ m  -0�,
�, 
long�6  �5  Y m  14�+�+ W n 8Pefe I  =P�*g�)�* 0 setavar____ setaVar____g hih m  =@jj �kk  d e v i c e si lml J  @Fnn opo o  @A�(�( 0 x  p q�'q m  AD�&�& �'  m rsr m  FI�%�% s t�$t m  ILuu �vv  i n t e g e r�$  �)  f o  8=�#�# 0 appdelegate AppDelegate�8  �7  �E  �D  D wxw Z  Y�yz�"�!y > Yt{|{ c  Yp}~} l Yn� � n  Yn��� 4  gn��
� 
cobj� m  jm�� 	� n  Yg��� 4  bg��
� 
cobj� o  ef�� 0 x  � n Yb��� I  ^b����  0 myprefsdevices myPrefsDevices�  �  � o  Y^�� 0 appdelegate AppDelegate�   �  ~ m  no�
� 
ctxt| m  ps�� ���  dz Z  w������ ? w���� l w����� c  w���� n  w���� 4  ����
� 
cobj� m  ���� 	� n  w���� 4  ����
� 
cobj� o  ���� 0 x  � n w���� I  |�����  0 myprefsdevices myPrefsDevices�  �  � o  w|�
�
 0 appdelegate AppDelegate� m  ���	
�	 
long�  �  � m  ���� � n ����� I  ������ 0 setavar____ setaVar____� ��� m  ���� ���  d e v i c e s� ��� J  ���� ��� o  ���� 0 x  � ��� m  ���� 	�  � ��� m  ���� � ��� m  ���� ���  i n t e g e r�  �  � o  ��� �  0 appdelegate AppDelegate�  �  �"  �!  x ��� l ����������  ��  ��  � ��� l ��������  �   custom status lines   � ��� (   c u s t o m   s t a t u s   l i n e s� ��� Z  �<������ = ����� l �������� c  ����� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � n ����� I  ����������  0 myprefsdevices myPrefsDevices��  ��  � o  ������ 0 appdelegate AppDelegate� m  ����
�� 
bool��  ��  � m  ����
�� boovtrue� Z  �!������ = ����� l �������� c  ����� n  ����� 4  �����
�� 
cobj� m  ������ � n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � n ����� I  ����������  0 myprefsdevices myPrefsDevices��  ��  � o  ������ 0 appdelegate AppDelegate� m  ����
�� 
bool��  ��  � m  ����
�� boovtrue� k  ��� ��� l ��������  � , & if the device is shown but turned off   � ��� L   i f   t h e   d e v i c e   i s   s h o w n   b u t   t u r n e d   o f f� ���� n ���� I  �������� 0 setavar____ setaVar____� ��� m  ���� ���  d e v i c e s� ��� J  ���� ��� o  ������ 0 x  � ���� m  ������ ��  � ��� m  ���� ���  s t a r t i n g� ���� m  ��� ���  t e x t��  ��  � o  ������ 0 appdelegate AppDelegate��  ��  � n 	!��� I  !������� 0 setavar____ setaVar____� ��� m  �� ���  d e v i c e s� ��� J  �� ��� o  ���� 0 x  � ���� m  ���� ��  � ��� m  �� ���  s t o p p e d�  ��  m   �  t e x t��  ��  � o  	���� 0 appdelegate AppDelegate��  � n $< I  )<������ 0 setavar____ setaVar____  m  ), �		  d e v i c e s 

 J  ,2  o  ,-���� 0 x   �� m  -0���� ��    m  25 �   �� m  58 �  t e x t��  ��   o  $)���� 0 appdelegate AppDelegate�  l ==��������  ��  ��    l ==����   P J wipe out any accidentally saved UI elements (they won't be valid anymore)    � �   w i p e   o u t   a n y   a c c i d e n t a l l y   s a v e d   U I   e l e m e n t s   ( t h e y   w o n ' t   b e   v a l i d   a n y m o r e )  n =T !  I  BT��"���� 0 setavar____ setaVar____" #$# m  BE%% �&&  d e v i c e s$ '(' J  EK)) *+* o  EF���� 0 x  + ,��, m  FI���� &��  ( -.- J  KM����  . /��/ m  MP00 �11  l i s t��  ��  ! o  =B���� 0 appdelegate AppDelegate 232 l UU��������  ��  ��  3 454 l UU��67��  6 M G set all to "Not shown" until the miner reports back if they're present   7 �88 �   s e t   a l l   t o   " N o t   s h o w n "   u n t i l   t h e   m i n e r   r e p o r t s   b a c k   i f   t h e y ' r e   p r e s e n t5 9:9 n Uk;<; I  Zk��=���� 0 setavar____ setaVar____= >?> m  Z]@@ �AA  d e v i c e s? BCB J  ]cDD EFE o  ]^���� 0 x  F G��G m  ^a���� ��  C HIH m  cd��
�� boovfalsI J��J m  dgKK �LL  b o o l e a n��  ��  < o  UZ���� 0 appdelegate AppDelegate: M��M l ll��������  ��  ��  ��  �� 0 x  � m  AB���� � n  BTNON m  OS��
�� 
nmbrO n BOPQP 2 KO��
�� 
cobjQ n BKRSR I  GK��������  0 myprefsdevices myPrefsDevices��  ��  S o  BG���� 0 appdelegate AppDelegate��  � TUT l ss��������  ��  ��  U VWV I  sx�������� 0 dodebug doDebug��  ��  W X��X l yy��������  ��  ��  ��   YZY l     ��������  ��  ��  Z [\[ i   ' *]^] I      �������� 0 dodebug doDebug��  ��  ^ Z     _`����_ =    aba l    	c����c c     	ded n    fgf o    ���� 0 	debugmode 	debugModeg o     ���� 0 appdelegate AppDelegatee m    ��
�� 
bool��  ��  b m   	 
��
�� boovtrue` l   ��hi��  h = 7 AppDelegate's setaVar____("general",21,true,"boolean")   i �jj n   A p p D e l e g a t e ' s   s e t a V a r _ _ _ _ ( " g e n e r a l " , 2 1 , t r u e , " b o o l e a n " )��  ��  \ klk l     ��������  ��  ��  l mnm i   + .opo I      �������� 0 didminerdie didMinerDie��  ��  p k     wqq rsr l     ��tu��  t 2 , triggered when no response from sendCommand   u �vv X   t r i g g e r e d   w h e n   n o   r e s p o n s e   f r o m   s e n d C o m m a n ds wxw l     ��������  ��  ��  x yzy r     {|{ I    ��}��
�� .sysoexecTEXT���     TEXT} l    ~����~ b     � b     ��� m     �� ��� 2 t o p   - F   - R   - s   0   - l   1   - p i d  � l   
����� c    
��� n   ��� o    �~�~ 0 
pidcgminer 
pidCGminer� o    �}�} 0 appdelegate AppDelegate� m    	�|
�| 
long��  �  � m    �� ���    - s t a t s   p i d��  ��  ��  | o      �{�{ 0 
pidrunning 
pidRunningz ��� l   �z�y�x�z  �y  �x  � ��� l   �w���w  � b \ set pidRunning to first word of (do shell script "ps -A | grep \"cgminer\" | grep -v grep")   � ��� �   s e t   p i d R u n n i n g   t o   f i r s t   w o r d   o f   ( d o   s h e l l   s c r i p t   " p s   - A   |   g r e p   \ " c g m i n e r \ "   |   g r e p   - v   g r e p " )� ��� l   �v���v  � C = dd(pidRunning & return & (AppDelegate's pidCGminer as text))   � ��� z   d d ( p i d R u n n i n g   &   r e t u r n   &   ( A p p D e l e g a t e ' s   p i d C G m i n e r   a s   t e x t ) )� ��� Z    ?���u�t� H     �� E    ��� o    �s�s 0 
pidrunning 
pidRunning� l   ��r�q� c    ��� n   ��� o    �p�p 0 
pidcgminer 
pidCGminer� o    �o�o 0 appdelegate AppDelegate� m    �n
�n 
ctxt�r  �q  � l  # ;���� k   # ;�� ��� l  # #�m���m  �   dd("yep, all good now")   � ��� 0   d d ( " y e p ,   a l l   g o o d   n o w " )� ��� r   # ,��� m   # $�l
�l boovfals� n     ��� o   ) +�k�k 0 minerrunning minerRunning� o   $ )�j�j 0 appdelegate AppDelegate� ��� r   - 6��� m   - .�i
�i boovfals� n     ��� o   3 5�h�h 0 minerapiready minerAPIready� o   . 3�g�g 0 appdelegate AppDelegate� ��f� L   7 ;�� c   7 :��� m   7 8�e
�e boovtrue� m   8 9�d
�d 
bool�f  � . ( miner is not running, must have crashed   � ��� P   m i n e r   i s   n o t   r u n n i n g ,   m u s t   h a v e   c r a s h e d�u  �t  � ��� l  @ @�c�b�a�c  �b  �a  � ��� r   @ S��� [   @ K��� l  @ I��`�_� c   @ I��� n  @ G��� o   E G�^�^ *0 minermissedcommands minerMissedCommands� o   @ E�]�] 0 appdelegate AppDelegate� m   G H�\
�\ 
long�`  �_  � m   I J�[�[ � n     ��� o   P R�Z�Z *0 minermissedcommands minerMissedCommands� o   K P�Y�Y 0 appdelegate AppDelegate� ��� l  T T�X�W�V�X  �W  �V  � ��� Z   T u���U�� @  T g��� l  T ]��T�S� c   T ]��� n  T [��� o   Y [�R�R *0 minermissedcommands minerMissedCommands� o   T Y�Q�Q 0 appdelegate AppDelegate� m   [ \�P
�P 
long�T  �S  � l  ] f��O�N� c   ] f��� n  ] d��� o   b d�M�M 80 allowedmissedminercommands allowedMissedMinerCommands� o   ] b�L�L 0 appdelegate AppDelegate� m   d e�K
�K 
long�O  �N  � L   j n�� c   j m��� m   j k�J
�J boovtrue� m   k l�I
�I 
bool�U  � L   q u�� c   q t��� m   q r�H
�H boovfals� m   r s�G
�G 
bool� ��F� l  v v�E�D�C�E  �D  �C  �F  n ��� l     �B�A�@�B  �A  �@  � ��� i   / 2��� I      �?�>�=�? 0 checkforbug checkForBug�>  �=  � k    ��� ��� r     ��� m     �<
�< boovfals� o      �;�; 0 telluser tellUser� ��� Y    ���:���9� Z    ����8�7� F    ^��� F    F��� =   .��� c    ,� � n    * 4   ' *�6
�6 
cobj m   ( )�5�5  l   '�4�3 n    ' 4   $ '�2
�2 
cobj o   % &�1�1 0 x   n   $	 I     $�0�/�.�0  0 myprefsdevices myPrefsDevices�/  �.  	 o     �-�- 0 appdelegate AppDelegate�4  �3    m   * +�,
�, 
bool� m   , -�+
�+ boovtrue� =  1 D

 c   1 B n   1 @ 4   = @�*
�* 
cobj m   > ?�)�)  l  1 =�(�' n   1 = 4   : =�&
�& 
cobj o   ; <�%�% 0 x   n  1 : I   6 :�$�#�"�$  0 myprefsdevices myPrefsDevices�#  �"   o   1 6�!�! 0 appdelegate AppDelegate�(  �'   m   @ A� 
�  
bool m   B C�
� boovtrue� =  I \ c   I Z n   I X 4   U X�
� 
cobj m   V W��  l  I U�� n   I U  4   R U�!
� 
cobj! o   S T�� 0 x    n  I R"#" I   N R����  0 myprefsdevices myPrefsDevices�  �  # o   I N�� 0 appdelegate AppDelegate�  �   m   X Y�
� 
ctxt m   Z [$$ �%%  A M U� k   a �&& '(' l  a a�)*�  ) F @ only check items in use, shown, and USB Block Erupters ("AMU"s)   * �++ �   o n l y   c h e c k   i t e m s   i n   u s e ,   s h o w n ,   a n d   U S B   B l o c k   E r u p t e r s   ( " A M U " s )( ,-, r   a {./. I   a y�0��  0 sendcommand___ sendCommand___0 121 m   b c33 �44  p g a2 565 c   c t787 l  c r9��9 n   c r:;: 4   o r�<
� 
cobj< m   p q�� ; n   c o=>= 4   l o�?
� 
cobj? o   m n�� 0 x  > n  c l@A@ I   h l�
�	��
  0 myprefsdevices myPrefsDevices�	  �  A o   c h�� 0 appdelegate AppDelegate�  �  8 m   r s�
� 
ctxt6 B�B m   t u�
� boovfals�  �  / o      �� 0 bugcheck bugCheck- CDC r   | �EFE n   | �GHG 4   � ��I
� 
cobjI m   � ��� H l  | �J� ��J I   | ���K���� 0 splitstring__ splitString__K LML o   } ~���� 0 bugcheck bugCheckM N��N m   ~ OO �PP  ,��  ��  �   ��  F o      ���� 0 bugcheck bugCheckD QRQ r   � �STS c   � �UVU n   � �WXW 4   � ���Y
�� 
cobjY m   � ����� X l  � �Z����Z I   � ���[���� 0 splitstring__ splitString__[ \]\ o   � ����� 0 bugcheck bugCheck] ^��^ m   � �__ �``  =��  ��  ��  ��  V m   � ���
�� 
doubT o      ���� 0 bugcheck bugCheckR aba l  � ���������  ��  ��  b cdc Z   � �ef����e A  � �ghg o   � ����� 0 bugcheck bugCheckh m   � �ii @      f k   � �jj klk r   � �mnm m   � ���
�� boovtruen o      ���� 0 telluser tellUserl o��o  S   � ���  ��  ��  d p��p l  � ���������  ��  ��  ��  �8  �7  �: 0 x  � m    ���� � n    qrq m    ��
�� 
nmbrr n   sts 2   ��
�� 
cobjt n   uvu I    ��������  0 myprefsdevices myPrefsDevices��  ��  v o    ���� 0 appdelegate AppDelegate�9  � wxw l  � ���������  ��  ��  x yzy Z   ��{|����{ =  � �}~} o   � ����� 0 telluser tellUser~ m   � ���
�� boovtrue| k   �� ��� n  � ���� I   � �������� 0 msglog__  � ��� m   � ��� ���   A f f e c t e d   b y   b u g !� ���� m   � ��� ���  w a r n i n g��  ��  � o   � ����� 0 appdelegate AppDelegate� ��� I  � �������
�� .miscactvnull��� ��� null��  ��  � ��� r   � ���� I  � �����
�� .sysodlogaskr        TEXT� b   � ���� b   � ���� b   � ���� m   � ��� ���� I t   a p p e a r s   a s   t h o u g h   y o u   a r e   a f f e c t e d   b y   a n   o b s c u r e   b u g   t h a t   w e   a r e   s t i l l   t r y i n g   t o   d i a g n o s e .     Y o u   m a y   b e   c u r r e n t l y   r e c e i v i n g   c r e d i t   f o r   a b o u t   h a l f   o f   w h a t   y o u   s h o u l d   b e   w i t h   y o u r   U S B   B l o c k   E r u p t e r s .     P l e a s e   c h e c k   y o u r   p o o l ' s   s t a t s   p a g e   t o   c o n f i r m .� o   � ���
�� 
ret � o   � ���
�� 
ret � m   � ��� ��� � W o u l d   y o u   l i k e   t o   a n s w e r   a   f e w   q u e s t i o n s   f o r   u s   s o   w e   c a n   t r a c k   d o w n   t h i s   b u g   o n   b e h a l f   o f   a l l   A s t e r o i d   u s e r s ?� ����
�� 
btns� J   � ��� ��� m   � ��� ���  I g n o r e� ���� m   � ��� ��� " A n s w e r   q u e s t i o n s &��  � ����
�� 
dflt� m   � ����� � �����
�� 
disp� m   � ���
�� stic   ��  � o      ���� 0 	userreply 	userReply� ���� Z   ��������� =  ���� n   ���� 1   ���
�� 
bhit� o   � ����� 0 	userreply 	userReply� m  �� ��� " A n s w e r   q u e s t i o n s &� k  ��� ��� r  :��� I 8����
�� .sysodlogaskr        TEXT� b  ��� b  ��� b  ��� m  �� ���  Q u e s t i o n   1   o f   2� o  ��
�� 
ret � o  ��
�� 
ret � m  �� ��� p W h a t   U S B   p l u g   a r e   y o u   u s i n g ?     ( b u i l t - i n ,   a   U S B   h u b ,   e t c )� ����
�� 
btns� J  "�� ��� m  �� ���  C a n c e l� ���� m   �� ���  C o n t i n u e &��  � ����
�� 
dflt� m  %&���� � ����
�� 
dtxt� m  ),�� ���  � �����
�� 
disp� m  /2��
�� stic   ��  � o      ���� 0 q1  � ��� r  ;m��� I ;k����
�� .sysodlogaskr        TEXT� b  ;J��� b  ;F��� b  ;B��� m  ;>�� ���  Q u e s t i o n   2   o f   2� o  >A��
�� 
ret � o  BE��
�� 
ret � m  FI�� ��� � H a v e   y o u   e v e r   t r i e d   t o   b u i l d   c g m i n e r   o n   y o u r   o w n   c o m p u t e r ?     ( w i t h   h o m e b r e w ,   m a n u a l l y   f r o m   s o u r c e ,   e t c )� ����
�� 
btns� J  MU�� ��� m  MP�� ���  C a n c e l� ���� m  PS�� ���  C o n t i n u e &��  � ����
�� 
dflt� m  XY���� � ����
�� 
dtxt� m  \_�� ���  � �����
�� 
disp� m  be��
�� stic   ��  � o      ���� 0 q2  � ��� l nn��������  ��  ��  � ��� r  n���� b  n��� b  n{�	 � m  nq		 �		 $ M a c   O S   X   v e r s i o n :  	  n  qz			 1  vz��
�� 
sisv	 l qv	����	 I qv������
�� .sysosigtsirr   ��� null��  ��  ��  ��  � o  {~��
�� 
ret � o      ���� 0 
qresponses 
qResponses� 			 l ����������  ��  ��  	 				 r  ��	
		
 I ����	��
�� .sysoexecTEXT���     TEXT	 m  ��		 �		 D s y s t e m _ p r o f i l e r   S P H a r d w a r e D a t a T y p e��  	 o      ���� 0 hardwareinfo hardwareInfo		 			 l ����������  ��  ��  	 			 Y  �	��		��	 k  �		 			 Z  ��		����	 E  ��			 n  ��			 4  ����	
�� 
cpar	 o  ������ 0 y  	 o  ������ 0 hardwareinfo hardwareInfo	 m  ��	 	  �	!	!   M o d e l   I d e n t i f i e r	 r  ��	"	#	" b  ��	$	%	$ b  ��	&	'	& o  ������ 0 
qresponses 
qResponses	' l ��	(����	( c  ��	)	*	) n  ��	+	,	+ 7����	-	.
�� 
citm	- m  ������ 	. l ��	/����	/ n  ��	0	1	0 m  ����
�� 
nmbr	1 n ��	2	3	2 2 ����
�� 
citm	3 n  ��	4	5	4 4  ����	6
�� 
cpar	6 o  ������ 0 y  	5 o  ���� 0 hardwareinfo hardwareInfo��  ��  	, n  ��	7	8	7 4  ���~	9
�~ 
cpar	9 o  ���}�} 0 y  	8 o  ���|�| 0 hardwareinfo hardwareInfo	* m  ���{
�{ 
ctxt��  ��  	% o  ���z
�z 
ret 	# o      �y�y 0 
qresponses 
qResponses��  ��  	 	:�x	: Z  �	;	<�w�v	; E  ��	=	>	= n  ��	?	@	? 4  ���u	A
�u 
cpar	A o  ���t�t 0 y  	@ o  ���s�s 0 hardwareinfo hardwareInfo	> m  ��	B	B �	C	C  P r o c e s s o r   N a m e	< r  �	D	E	D b  �	F	G	F b  �	H	I	H o  ���r�r 0 
qresponses 
qResponses	I l �	J�q�p	J c  �	K	L	K n  �	M	N	M 7��o	O	P
�o 
citm	O m  ���n�n 	P l �	Q�m�l	Q n  �	R	S	R m  �k
�k 
nmbr	S n �	T	U	T 2 ��j
�j 
citm	U n  ��	V	W	V 4  ���i	X
�i 
cpar	X o  ���h�h 0 y  	W o  ���g�g 0 hardwareinfo hardwareInfo�m  �l  	N n  ��	Y	Z	Y 4  ���f	[
�f 
cpar	[ o  ���e�e 0 y  	Z o  ���d�d 0 hardwareinfo hardwareInfo	L m  �c
�c 
ctxt�q  �p  	G o  �b
�b 
ret 	E o      �a�a 0 
qresponses 
qResponses�w  �v  �x  �� 0 y  	 m  ���`�` 	 n  ��	\	]	\ m  ���_
�_ 
nmbr	] n ��	^	_	^ 2 ���^
�^ 
cpar	_ o  ���]�] 0 hardwareinfo hardwareInfo��  	 	`	a	` l �\�[�Z�\  �[  �Z  	a 	b	c	b r  +	d	e	d b  )	f	g	f b  %	h	i	h b  	j	k	j o  �Y�Y 0 
qresponses 
qResponses	k m  	l	l �	m	m  U S B   p l u g :  	i l $	n�X�W	n c  $	o	p	o n  "	q	r	q 1  "�V
�V 
ttxt	r o  �U�U 0 q1  	p m  "#�T
�T 
ctxt�X  �W  	g o  %(�S
�S 
ret 	e o      �R�R 0 
qresponses 
qResponses	c 	s	t	s r  ,;	u	v	u b  ,9	w	x	w b  ,1	y	z	y o  ,-�Q�Q 0 
qresponses 
qResponses	z m  -0	{	{ �	|	|  H o m e m a d e   a l s o :  	x l 18	}�P�O	} c  18	~		~ n  16	�	�	� 1  26�N
�N 
ttxt	� o  12�M�M 0 q2  	 m  67�L
�L 
ctxt�P  �O  	v o      �K�K 0 
qresponses 
qResponses	t 	�	�	� l <<�J�I�H�J  �I  �H  	� 	�	�	� n <J	�	�	� I  EJ�G	��F�G 0 
setstring_ 
setString_	� 	��E	� o  EF�D�D 0 
qresponses 
qResponses�E  �F  	� n <E	�	�	� o  AE�C�C 0 feedbacktext feedBackText	� o  <A�B�B 0 appdelegate AppDelegate	� 	�	�	� n KW	�	�	� I  PW�A	��@�A *0 openfeedbackwindow_ openFeedbackWindow_	� 	��?	� m  PS	�	� �	�	�  �?  �@  	� o  KP�>�> 0 appdelegate AppDelegate	� 	�	�	� l XX�=�<�;�=  �<  �;  	� 	�	�	� r  X�	�	�	� I X�:	�	�
�: .sysodlogaskr        TEXT	� b  Xg	�	�	� b  Xc	�	�	� b  X_	�	�	� m  X[	�	� �	�	�  T h a n k   y o u !	� o  [^�9
�9 
ret 	� o  _b�8
�8 
ret 	� m  cf	�	� �	�	� � Y o u r   a n s w e r s   h a v e   b e e n   p u t   i n t o   a   f e e d b a c k   w i n d o w   f o r   y o u   t o   r e v i e w   a n d   s u b m i t .	� �7	�	�
�7 
btns	� J  jo	�	� 	��6	� m  jm	�	� �	�	�  O k a y�6  	� �5	�	�
�5 
dflt	� m  rs�4�4 	� �3	��2
�3 
disp	� m  vy�1
�1 stic   �2  	� o      �0�0 0 thankyou thankYou	� 	��/	� l ���.�-�,�.  �-  �,  �/  ��  ��  ��  ��  ��  z 	��+	� l ���*�)�(�*  �)  �(  �+  � 	�	�	� l     �'�&�%�'  �&  �%  	� 	�	�	� i   3 6	�	�	� I      �$	��#�$ 0 roundnumber__ roundNumber__	� 	�	�	� o      �"�" 0 thenum theNum	� 	��!	� o      � �  0 	decplaces 	decPlaces�!  �#  	� k     �	�	� 	�	�	� r     	�	�	� c     	�	�	� o     �� 0 	decplaces 	decPlaces	� m    �
� 
long	� o      �� 0 	decplaces 	decPlaces	� 	�	�	� l   ����  �  �  	� 	�	�	� Q     	�	�	�	� l  	 	�	�	�	� r   	 	�	�	� c   	 	�	�	� o   	 
�� 0 thenum theNum	� m   
 �
� 
doub	� o      �� 0 thenum theNum	� %  cast it as a real just in case   	� �	�	� >   c a s t   i t   a s   a   r e a l   j u s t   i n   c a s e	� R      ���
� .ascrerr ****      � ****�  �  	� k     	�	� 	�	�	� I    �	��� 
0 msglog  	� 	�	�	� m    	�	� �	�	� Z U n a b l e   t o   r o u n d   a   n u m b e r ,   c a n n o t   c a s t   a s   r e a l	� 	��	� m    	�	� �	�	�  n o t i c e�  �  	� 	��	� L     	�	� o    �� 0 thenum theNum�  	� 	�	�	� l  ! !����  �  �  	� 	�	�	� Z   ! 6	�	���
	� =  ! $	�	�	� o   ! "�	�	 0 	decplaces 	decPlaces	� m   " #	�	� �	�	�  	� l  ' 2	�	�	�	� r   ' 2	�	�	� c   ' 0	�	�	� n  ' .	�	�	� o   , .�� .0 hashratedecimalplaces hashRateDecimalPlaces	� o   ' ,�� 0 appdelegate AppDelegate	� m   . /�
� 
long	� o      �� 0 	decplaces 	decPlaces	� = 7 use the default number of decimal places for hashrates   	� �	�	� n   u s e   t h e   d e f a u l t   n u m b e r   o f   d e c i m a l   p l a c e s   f o r   h a s h r a t e s�  �
  	� 	�	�	� l  7 7����  �  �  	� 	�	�	� Z   7 b	�	��	�	� =  7 :	�	�	� o   7 8� �  0 	decplaces 	decPlaces	� m   8 9����  	� r   = F	�	�	� I  = D��	���
�� .sysorondlong        doub	� c   = @	�	�	� l  = >
 ����
  o   = >���� 0 thenum theNum��  ��  	� m   > ?��
�� 
ctxt��  	� o      ���� 0 thenum theNum�  	� k   I b

 


 r   I P


 ]   I N


 o   I J���� 0 thenum theNum
 l  J M
����
 a   J M
	


	 m   J K���� 


 o   K L���� 0 	decplaces 	decPlaces��  ��  
 o      ���� 0 tempnum tempNum
 


 r   Q X


 I  Q V��
��
�� .sysorondlong        doub
 l  Q R
����
 o   Q R���� 0 tempnum tempNum��  ��  ��  
 o      ���� 0 tempnum tempNum
 
��
 r   Y b


 c   Y `


 l  Y ^
����
 ^   Y ^


 o   Y Z���� 0 tempnum tempNum
 l  Z ]
����
 a   Z ]


 m   Z [���� 

 o   [ \���� 0 	decplaces 	decPlaces��  ��  ��  ��  
 m   ^ _��
�� 
ctxt
 o      ���� 0 thenum theNum��  	� 


 l  c c��������  ��  ��  
 


 l  c c��
 
!��  
    add trailing zeros   
! �
"
" &   a d d   t r a i l i n g   z e r o s
 
#
$
# Z   c �
%
&����
% E   c f
'
(
' o   c d���� 0 thenum theNum
( m   d e
)
) �
*
*  .
& k   i �
+
+ 
,
-
, r   i u
.
/
. n   i s
0
1
0 4   p s��
2
�� 
cobj
2 m   q r���� 
1 I   i p��
3���� 0 splitstring__ splitString__
3 
4
5
4 o   j k���� 0 thenum theNum
5 
6��
6 m   k l
7
7 �
8
8  .��  ��  
/ o      ���� 0 	zerocheck 	zeroCheck
- 
9��
9 Y   v �
:��
;
<��
: r   � �
=
>
= c   � �
?
@
? b   � �
A
B
A o   � ����� 0 thenum theNum
B m   � �
C
C �
D
D  0
@ m   � ���
�� 
ctxt
> o      ���� 0 thenum theNum�� 0 x  
; n   y 
E
F
E 1   z ~��
�� 
leng
F o   y z���� 0 	zerocheck 	zeroCheck
< l   �
G����
G \    �
H
I
H o    ����� 0 	decplaces 	decPlaces
I m   � ����� ��  ��  ��  ��  ��  ��  
$ 
J
K
J l  � ���������  ��  ��  
K 
L��
L L   � �
M
M o   � ����� 0 thenum theNum��  	� 
N
O
N l     ��������  ��  ��  
O 
P
Q
P i   7 :
R
S
R I      ��
T���� 
0 msglog  
T 
U
V
U o      ���� 0 atxt aTxt
V 
W��
W o      ���� 0 alevel aLevel��  ��  
S n    
X
Y
X I    ��
Z���� 0 msglog__  
Z 
[
\
[ o    ���� 0 atxt aTxt
\ 
]��
] o    ���� 0 alevel aLevel��  ��  
Y o     ���� 0 appdelegate AppDelegate
Q 
^
_
^ l     ��������  ��  ��  
_ 
`
a
` i   ; >
b
c
b I      ��
d���� *0 gethashratelabel___ getHashRateLabel___
d 
e
f
e o      ���� 0 therate theRate
f 
g
h
g o      ���� 0 	withunits 	withUnits
h 
i��
i o      ���� 0 	shortened  ��  ��  
c k    t
j
j 
k
l
k l     ��������  ��  ��  
l 
m
n
m r     
o
p
o c     
q
r
q o     ���� 0 therate theRate
r m    ��
�� 
doub
p o      ���� 0 therate theRate
n 
s
t
s r    
u
v
u c    	
w
x
w o    ���� 0 	withunits 	withUnits
x m    ��
�� 
bool
v o      ���� 0 	withunits 	withUnits
t 
y
z
y r    
{
|
{ c    
}
~
} o    ���� 0 	shortened  
~ m    ��
�� 
bool
| o      ���� 0 	shortened  
z 

�
 l   ��������  ��  ��  
� 
�
�
� Z    
�
�����
� =   
�
�
� o    ���� 0 therate theRate
� m    ����  
� L    
�
� m    
�
� �
�
�  ��  ��  
� 
�
�
� l   ��������  ��  ��  
� 
�
�
� r    "
�
�
� m     ����  
� o      ���� 0 hashrate hashRate
� 
�
�
� r   # &
�
�
� m   # $
�
� �
�
�  
� o      ���� 0 theunits theUnits
� 
�
�
� r   ' *
�
�
� m   ' (
�
� �
�
�  
� o      ���� 0 theshortunits theShortUnits
� 
�
�
� l  + +��������  ��  ��  
� 
�
�
� Z   +8
�
�
�
�
� A  + .
�
�
� o   + ,���� 0 therate theRate
� m   , -���� 
� k   1 n
�
� 
�
�
� Z   1 f
�
���
�
� ?  1 6
�
�
� l  1 4
�����
� ]   1 4
�
�
� o   1 2���� 0 therate theRate
� m   2 3�������  ��  
� m   4 5���� d
� k   9 N
�
� 
�
�
� r   9 B
�
�
� m   9 :���� 
� n     
�
�
� o   ? A���� .0 hashratedecimalplaces hashRateDecimalPlaces
� o   : ?���� 0 appdelegate AppDelegate
� 
���
� r   C N
�
�
� I   C L��
����� 0 roundnumber__ roundNumber__
� 
�
�
� ]   D G
�
�
� o   D E���� 0 therate theRate
� m   E F���
� 
��~
� m   G H�}�} �~  ��  
� o      �|�| 0 hashrate hashRate��  ��  
� k   Q f
�
� 
�
�
� r   Q Z
�
�
� m   Q R�{�{ 
� n     
�
�
� o   W Y�z�z .0 hashratedecimalplaces hashRateDecimalPlaces
� o   R W�y�y 0 appdelegate AppDelegate
� 
��x
� r   [ f
�
�
� I   [ d�w
��v�w 0 roundnumber__ roundNumber__
� 
�
�
� ]   \ _
�
�
� o   \ ]�u�u 0 therate theRate
� m   ] ^�t�t�
� 
��s
� m   _ `�r�r �s  �v  
� o      �q�q 0 hashrate hashRate�x  
� 
�
�
� r   g j
�
�
� m   g h
�
� �
�
�  k H / s
� o      �p�p 0 theunits theUnits
� 
��o
� r   k n
�
�
� m   k l
�
� �
�
�  k
� o      �n�n 0 theshortunits theShortUnits�o  
� 
�
�
� ?  q t
�
�
� o   q r�m�m 0 therate theRate
� m   r s�l�l�
� 
�
�
� k   w �
�
� 
�
�
� Z   w �
�
��k
�
� ?  w |
�
�
� l  w z
��j�i
� ^   w z
�
�
� o   w x�h�h 0 therate theRate
� m   x y�g�g��j  �i  
� m   z {�f�f d
� k    �
�
� 
�
�
� r    �
�
�
� m    ��e�e 
� n     
�
�
� o   � ��d�d .0 hashratedecimalplaces hashRateDecimalPlaces
� o   � ��c�c 0 appdelegate AppDelegate
� 
��b
� r   � �
�
�
� I   � ��a
��`�a 0 roundnumber__ roundNumber__
� 
�
�
� ^   � �
�
�
� o   � ��_�_ 0 therate theRate
� m   � ��^�^�
� 
��]
� m   � ��\�\ �]  �`  
� o      �[�[ 0 hashrate hashRate�b  �k  
� k   � �
�
� 
�
�
� r   � �   m   � ��Z�Z  n      o   � ��Y�Y .0 hashratedecimalplaces hashRateDecimalPlaces o   � ��X�X 0 appdelegate AppDelegate
� �W r   � � I   � ��V�U�V 0 roundnumber__ roundNumber__ 	 ^   � �

 o   � ��T�T 0 therate theRate m   � ��S�S�	 �R m   � ��Q�Q �R  �U   o      �P�P 0 hashrate hashRate�W  
�  l  � ��O�O   5 / set hashRate to roundNumber__(theRate/1000,"")    � ^   s e t   h a s h R a t e   t o   r o u n d N u m b e r _ _ ( t h e R a t e / 1 0 0 0 , " " )  r   � � m   � � �  G H / s o      �N�N 0 theunits theUnits �M r   � � m   � � �  G o      �L�L 0 theshortunits theShortUnits�M  
�  ?  � �  o   � ��K�K 0 therate theRate  m   � ��J�J  B@ !�I! k   � �"" #$# Z   � �%&�H'% ?  � �()( l  � �*�G�F* ^   � �+,+ o   � ��E�E 0 therate theRate, m   � ��D�D  B@�G  �F  ) m   � ��C�C d& k   � �-- ./. r   � �010 m   � ��B�B 1 n     232 o   � ��A�A .0 hashratedecimalplaces hashRateDecimalPlaces3 o   � ��@�@ 0 appdelegate AppDelegate/ 4�?4 r   � �565 I   � ��>7�=�> 0 roundnumber__ roundNumber__7 898 ^   � �:;: o   � ��<�< 0 therate theRate; m   � ��;�;  B@9 <�:< m   � ��9�9 �:  �=  6 o      �8�8 0 hashrate hashRate�?  �H  ' k   � �== >?> r   � �@A@ m   � ��7�7 A n     BCB o   � ��6�6 .0 hashratedecimalplaces hashRateDecimalPlacesC o   � ��5�5 0 appdelegate AppDelegate? D�4D r   � �EFE I   � ��3G�2�3 0 roundnumber__ roundNumber__G HIH ^   � �JKJ o   � ��1�1 0 therate theRateK m   � ��0�0  B@I L�/L m   � ��.�. �/  �2  F o      �-�- 0 hashrate hashRate�4  $ MNM l  � ��,OP�,  O 8 2 set hashRate to roundNumber__(theRate/1000000,"")   P �QQ d   s e t   h a s h R a t e   t o   r o u n d N u m b e r _ _ ( t h e R a t e / 1 0 0 0 0 0 0 , " " )N RSR r   � �TUT m   � �VV �WW  T H / sU o      �+�+ 0 theunits theUnitsS X�*X r   � �YZY m   � �[[ �\\  TZ o      �)�) 0 theshortunits theShortUnits�*  �I  
� k   �8]] ^_^ Z   �,`a�(b` ?  � cdc l  � �e�'�&e o   � ��%�% 0 therate theRate�'  �&  d m   � ��$�$ da k  ff ghg r  iji m  �#�# j n     klk o  	�"�" .0 hashratedecimalplaces hashRateDecimalPlacesl o  	�!�! 0 appdelegate AppDelegateh m� m r  non I  �p�� 0 roundnumber__ roundNumber__p qrq o  �� 0 therate theRater s�s m  �� �  �  o o      �� 0 hashrate hashRate�   �(  b k  ,tt uvu r  "wxw m  �� x n     yzy o  !�� .0 hashratedecimalplaces hashRateDecimalPlacesz o  �� 0 appdelegate AppDelegatev {�{ r  #,|}| I  #*�~�� 0 roundnumber__ roundNumber__~ � o  $%�� 0 therate theRate� ��� m  %&�� �  �  } o      �� 0 hashrate hashRate�  _ ��� l --����  � 0 * set hashRate to roundNumber__(theRate,"")   � ��� T   s e t   h a s h R a t e   t o   r o u n d N u m b e r _ _ ( t h e R a t e , " " )� ��� r  -2��� m  -0�� ���  M H / s� o      �� 0 theunits theUnits� ��� r  38��� m  36�� ���  M� o      �� 0 theshortunits theShortUnits�  
� ��� l 99��
�	�  �
  �	  � ��� r  9>��� m  9<�� ���  � o      �� 0 ratetoreturn rateToReturn� ��� l ??����  �  �  � ��� Z  ?Z����� = ?B��� o  ?@�� 0 	shortened  � m  @A�
� boovtrue� k  EV�� ��� r  ER��� c  EP��� I  EL� ����  0 roundnumber__ roundNumber__� ��� o  FG���� 0 hashrate hashRate� ���� m  GH����  ��  ��  � m  LO��
�� 
ctxt� o      ���� 0 hashrate hashRate� ���� r  SV��� o  ST���� 0 theshortunits theShortUnits� o      ���� 0 theunits theUnits��  �  �  � ��� l [[��������  ��  ��  � ��� Z  [r������ = [^��� o  [\���� 0 	withunits 	withUnits� m  \]��
�� boovtrue� L  ai�� c  ah��� l ad������ b  ad��� o  ab���� 0 hashrate hashRate� o  bc���� 0 theunits theUnits��  ��  � m  dg��
�� 
ctxt��  � L  lr�� c  lq��� o  lm���� 0 hashrate hashRate� m  mp��
�� 
ctxt� ���� l ss��������  ��  ��  ��  
a ��� l     ��������  ��  ��  � ��� i   ? B��� I      �������  0 sendcommand___ sendCommand___� ��� o      ���� 0 thecmd theCmd� ��� o      ���� 0 theopt theOpt� ���� o      ���� 0 isquiet isQuiet��  ��  � l    ����� k     ��� ��� l     ��������  ��  ��  � ��� r     ��� c     ��� o     ���� 0 thecmd theCmd� m    ��
�� 
ctxt� o      ���� 0 thecmd theCmd� ��� r    ��� c    	��� o    ���� 0 theopt theOpt� m    ��
�� 
ctxt� o      ���� 0 theopt theOpt� ��� r    ��� c    ��� o    ���� 0 isquiet isQuiet� m    ��
�� 
bool� o      ���� 0 isquiet isQuiet� ��� l   ��������  ��  ��  � ��� l   ������  � 8 2 "isQuiet" means we don't expect/need/want a reply   � ��� d   " i s Q u i e t "   m e a n s   w e   d o n ' t   e x p e c t / n e e d / w a n t   a   r e p l y� ��� l   ��������  ��  ��  � ��� r    ��� m    �� ���  0� o      ���� 0 	theresult 	theResult� ��� Z    -������ >   ��� o    ���� 0 theopt theOpt� m    �� ���  � r    %� � c    # b    ! b     o    ���� 0 thecmd theCmd m     �  | o     ���� 0 theopt theOpt m   ! "��
�� 
ctxt  o      ���� 0 commandstring commandString��  � r   ( -	
	 c   ( + o   ( )���� 0 thecmd theCmd m   ) *��
�� 
ctxt
 o      ���� 0 commandstring commandString� �� Z   . ��� =  . 1 o   . /���� 0 isquiet isQuiet m   / 0��
�� boovtrue Q   4 u k   7 i  r   7 ^ b   7 \ b   7 R b   7 H  b   7 F!"! b   7 <#$# b   7 :%&% m   7 8'' �((  p r i n t f   "& o   8 9���� 0 commandstring commandString$ m   : ;)) �**  "   |   n c  " l  < E+����+ c   < E,-, n  < C./. o   A C����  0 minercgcommloc minerCGcommLoc/ o   < A���� 0 appdelegate AppDelegate- m   C D��
�� 
ctxt��  ��    m   F G00 �11    l  H Q2����2 c   H Q343 n  H O565 o   M O���� "0 minercgcommport minerCGcommPort6 o   H M���� 0 appdelegate AppDelegate4 m   O P��
�� 
ctxt��  ��   l  R [7����7 c   R [898 n  R Y:;: o   W Y���� 0 quietstring quietString; o   R W���� 0 appdelegate AppDelegate9 m   Y Z��
�� 
ctxt��  ��   o      ���� 0 shellscript shellScript <=< I  _ d��>��
�� .sysoexecTEXT���     TEXT> o   _ `���� 0 shellscript shellScript��  = ?��? L   e i@@ c   e hABA m   e fCC �DD  B m   f g��
�� 
ctxt��   R      ��E��
�� .ascrerr ****      � ****E o      ���� 0 err  ��   k   q uFF GHG l  q q��IJ��  I < 6 msglog("Unexpected reply from curl: " & err,"notice")   J �KK l   m s g l o g ( " U n e x p e c t e d   r e p l y   f r o m   c u r l :   "   &   e r r , " n o t i c e " )H L��L L   q uMM c   q tNON m   q rPP �QQ  0O m   r s��
�� 
ctxt��  ��   Q   x �RSTR k   { �UU VWV r   { �XYX I  { ���Z��
�� .sysoexecTEXT���     TEXTZ b   { �[\[ b   { �]^] b   { �_`_ b   { �aba b   { �cdc m   { ~ee �ff  p r i n t f   "d o   ~ ���� 0 commandstring commandStringb m   � �gg �hh  "   |   n c  ` l  � �i����i c   � �jkj n  � �lml o   � �����  0 minercgcommloc minerCGcommLocm o   � ����� 0 appdelegate AppDelegatek m   � ���
�� 
ctxt��  ��  ^ m   � �nn �oo   \ l  � �p����p c   � �qrq n  � �sts o   � ����� "0 minercgcommport minerCGcommPortt o   � ����� 0 appdelegate AppDelegater m   � ���
�� 
ctxt��  ��  ��  Y o      ���� 0 	theresult 	theResultW u��u L   � �vv c   � �wxw o   � ����� 0 	theresult 	theResultx m   � ���
�� 
ctxt��  S R      ��y��
�� .ascrerr ****      � ****y o      ���� 0 err  ��  T k   � �zz {|{ l  � ���}~��  } < 6 msglog("Unexpected reply from curl: " & err,"notice")   ~ � l   m s g l o g ( " U n e x p e c t e d   r e p l y   f r o m   c u r l :   "   &   e r r , " n o t i c e " )| ���� L   � ��� c   � ���� m   � ��� ���  0� m   � ���
�� 
ctxt��  ��  � "  send a command to the miner   � ��� 8   s e n d   a   c o m m a n d   t o   t h e   m i n e r� ��� l     ��������  ��  ��  � ��� i   C F��� I      ������� "0 getcoinbalance_ getCoinBalance_� ���� o      ���� 0 thisaddy thisAddy��  ��  � k     g�� ��� r     ��� c     ��� o     ���� 0 thisaddy thisAddy� m    ��
�� 
ctxt� o      �� 0 thisaddy thisAddy� ��� l   �~�}�|�~  �}  �|  � ��{� Z    g����� =   ��� n    
��� 4   
�z�
�z 
cha � m    	�y�y � o    �x�x 0 thisaddy thisAddy� m   
 �� ���  1� l   B���� k    B�� ��� l   �w�v�u�w  �v  �u  � ��� r    ��� b    ��� m    �� ��� P h t t p : / / b l o c k c h a i n . i n f o / q / a d d r e s s b a l a n c e /� o    �t�t 0 thisaddy thisAddy� o      �s�s 0 queryurl queryURL� ��� Q    5���� r    #��� I   !�r��q
�r .sysoexecTEXT���     TEXT� b    ��� b    ��� m    �� ���  c u r l   "� o    �p�p 0 queryurl queryURL� m    �� ���  "�q  � o      �o�o 0 thisbalance thisBalance� R      �n�m�l
�n .ascrerr ****      � ****�m  �l  � k   + 5�� ��� I   + 2�k��j�k 
0 msglog  � ��� m   , -�� ��� ^ U n a b l e   t o   g e t   c o i n   b a l a n c e   f r o m   b l o c k c h a i n . i n f o� ��i� m   - .�� ���  n o t i c e�i  �j  � ��h� L   3 5�� m   3 4�� ���  ?�h  � ��� r   6 ;��� ^   6 9��� o   6 7�g�g 0 thisbalance thisBalance� m   7 8�f�f �� � o      �e�e 0 thisbalance thisBalance� ��� L   < @�� c   < ?��� o   < =�d�d 0 thisbalance thisBalance� m   = >�c
�c 
doub� ��b� l  A A�a�`�_�a  �`  �_  �b  �   bitcoin address   � ���     b i t c o i n   a d d r e s s� ��� =  E K��� n   E I��� 4  F I�^�
�^ 
cha � m   G H�]�] � o   E F�\�\ 0 thisaddy thisAddy� m   I J�� ���  L� ��[� l  N P���� k   N P�� ��� l  N N�Z���Z  � M G TODO: explorer.litecoin.net might not have these functions implemented   � ��� �   T O D O :   e x p l o r e r . l i t e c o i n . n e t   m i g h t   n o t   h a v e   t h e s e   f u n c t i o n s   i m p l e m e n t e d� ��� l  N N�Y���Y  � ; 5 http://explorer.litecoin.net/q/getreceivedbyaddress/   � ��� j   h t t p : / / e x p l o r e r . l i t e c o i n . n e t / q / g e t r e c e i v e d b y a d d r e s s /� ��� l  N N�X���X  � 6 0 http://explorer.litecoin.net/q/getsentbyaddress   � ��� `   h t t p : / / e x p l o r e r . l i t e c o i n . n e t / q / g e t s e n t b y a d d r e s s� ��W� L   N P�V�V  �W  �   litecoin address   � ��� "   l i t e c o i n   a d d r e s s�[  � l  S g���� k   S g    I   S d�U�T�U 
0 msglog    b   T ] b   T Y	 m   T W

 � @ U n a b l e   t o   l o o k u p   t h e   b a l a n c e   o f  	 o   W X�S�S 0 thisaddy thisAddy m   Y \ � : .     C a n ' t   d e t e r m i n e   c o i n   t y p e ! �R m   ] ` �  w a r n i n g�R  �T   �Q L   e g�P�P  �Q  �   unknown coin type   � � $   u n k n o w n   c o i n   t y p e�{  �  l     �O�N�M�O  �N  �M    i   G J I      �L�K�L .0 toggledevicefromlist_ toggleDeviceFromList_ �J o      �I�I 
0 sender  �J  �K   k     P  l     �H�H   "  turn off/on a mining device    �   8   t u r n   o f f / o n   a   m i n i n g   d e v i c e !"! Z     5#$�G%# =    &'& l    (�F�E( c     )*) n    +,+ o    �D�D 	0 state  , o     �C�C 
0 sender  * m    �B
�B 
ctxt�F  �E  ' m    -- �..  0$ n  
 /0/ I    �A1�@�A 0 setavar____ setaVar____1 232 m    44 �55  d e v i c e s3 676 J    88 9:9 c    ;<; n   =>= o    �?�? 0 tag  > o    �>�> 
0 sender  < m    �=
�= 
long: ?�<? m    �;�; �<  7 @A@ m    �:
�: boovfalsA B�9B m    CC �DD  b o o l e a n�9  �@  0 o   
 �8�8 0 appdelegate AppDelegate�G  % n  ! 5EFE I   & 5�7G�6�7 0 setavar____ setaVar____G HIH m   & 'JJ �KK  d e v i c e sI LML J   ' /NN OPO c   ' ,QRQ n  ' *STS o   ( *�5�5 0 tag  T o   ' (�4�4 
0 sender  R m   * +�3
�3 
longP U�2U m   , -�1�1 �2  M VWV m   / 0�0
�0 boovtrueW X�/X m   0 1YY �ZZ  b o o l e a n�/  �6  F o   ! &�.�. 0 appdelegate AppDelegate" [\[ I   6 N�-]�,�- 0 toggledevice_ toggleDevice_] ^�+^ c   7 J_`_ n   7 Haba 4   E H�*c
�* 
cobjc m   F G�)�) b l  7 Ed�(�'d n   7 Eefe 4   > E�&g
�& 
cobjg l  ? Dh�%�$h c   ? Diji n  ? Bklk o   @ B�#�# 0 tag  l o   ? @�"�" 
0 sender  j m   B C�!
�! 
long�%  �$  f n  7 >mnm o   < >� �   0 myprefsdevices myPrefsDevicesn o   7 <�� 0 appdelegate AppDelegate�(  �'  ` m   H I�
� 
ctxt�+  �,  \ o�o l  O O�pq�  p %  AppDelegate's drawDeviceList()   q �rr >   A p p D e l e g a t e ' s   d r a w D e v i c e L i s t ( )�   sts l     ����  �  �  t uvu i   K Nwxw I      �y�� 0 toggledevice_ toggleDevice_y z�z o      �� 0 
thisdevice 
thisDevice�  �  x k    {{ |}| r     ~~ c     ��� o     �� 0 
thisdevice 
thisDevice� m    �
� 
TEXT o      �� 0 
thisdevice 
thisDevice} ��� Y   	������ Z   ����� =   ,��� l   *���� c    *��� l   (���
� n    (��� 4   % (�	�
�	 
cobj� m   & '�� � l   %���� n    %��� 4   " %��
� 
cobj� o   # $�� 0 x  � n   "��� o     "��  0 myprefsdevices myPrefsDevices� o     �� 0 appdelegate AppDelegate�  �  �  �
  � m   ( )�
� 
ctxt�  �  � o   * +� �  0 
thisdevice 
thisDevice� k   / �� ��� l  / /��������  ��  ��  � ��� r   / 7��� I   / 5�������  0 getdevicename_ getDeviceName_� ���� o   0 1���� 0 x  ��  ��  � o      ���� 0 usethisname useThisName� ��� Z   8������� =  8 I��� l  8 G������ c   8 G��� n   8 E��� 4   B E���
�� 
cobj� m   C D���� � l  8 B������ n   8 B��� 4   ? B���
�� 
cobj� o   @ A���� 0 x  � n  8 ?��� o   = ?����  0 myprefsdevices myPrefsDevices� o   8 =���� 0 appdelegate AppDelegate��  ��  � m   E F��
�� 
ctxt��  ��  � m   G H�� ���  g p u� Z   L ������� =  L ]��� l  L [������ c   L [��� n   L Y��� 4   V Y���
�� 
cobj� m   W X���� � l  L V������ n   L V��� 4   S V���
�� 
cobj� o   T U���� 0 x  � n  L S��� o   Q S����  0 myprefsdevices myPrefsDevices� o   L Q���� 0 appdelegate AppDelegate��  ��  � m   Y Z��
�� 
bool��  ��  � m   [ \��
�� boovtrue� k   ` ��� ��� I   ` i������� 
0 msglog  � ��� b   a d��� m   a b�� ���  E n a b l i n g   G P U :  � o   b c���� 0 usethisname useThisName� ���� m   d e�� ���  n o t i c e��  ��  � ��� I   j ��������  0 sendcommand___ sendCommand___� ��� m   k l�� ���  g p u e n a b l e� ��� c   l {��� l  l y������ n   l y��� 4   v y���
�� 
cobj� m   w x���� � l  l v������ n   l v��� 4   s v���
�� 
cobj� o   t u���� 0 x  � n  l s��� o   q s����  0 myprefsdevices myPrefsDevices� o   l q���� 0 appdelegate AppDelegate��  ��  ��  ��  � m   y z��
�� 
ctxt� ���� m   { |��
�� boovtrue��  ��  � ���� n  � ���� I   � �������� 0 setintensity_ setIntensity_� ���� o   � ����� 0 x  ��  ��  � o   � ����� 0 appdelegate AppDelegate��  ��  � k   � ��� ��� I   � �������� 
0 msglog  � ��� b   � ���� m   � ��� ���  D i s a b l i n g   G P U :  � o   � ����� 0 usethisname useThisName� ���� m   � ��� ���  n o t i c e��  ��  � ��� I   � ��������  0 sendcommand___ sendCommand___� � � m   � � �  g p u d i s a b l e   c   � � l  � ����� n   � �	 4   � ���

�� 
cobj
 m   � ����� 	 l  � ����� n   � � 4   � ���
�� 
cobj o   � ����� 0 x   n  � � o   � �����  0 myprefsdevices myPrefsDevices o   � ����� 0 appdelegate AppDelegate��  ��  ��  ��   m   � ���
�� 
ctxt �� m   � ���
�� boovtrue��  ��  � �� l  � �����     reset the UI    �    r e s e t   t h e   U I��  �  =  � � l  � ����� c   � � n   � � 4   � ���
�� 
cobj m   � �����  l  � � ����  n   � �!"! 4   � ���#
�� 
cobj# o   � ����� 0 x  " n  � �$%$ o   � �����  0 myprefsdevices myPrefsDevices% o   � ����� 0 appdelegate AppDelegate��  ��   m   � ���
�� 
ctxt��  ��   m   � �&& �''  p g a ()( Z   �2*+��,* =  � �-.- l  � �/����/ c   � �010 n   � �232 4   � ���4
�� 
cobj4 m   � ����� 3 l  � �5����5 n   � �676 4   � ���8
�� 
cobj8 o   � ����� 0 x  7 n  � �9:9 o   � �����  0 myprefsdevices myPrefsDevices: o   � ����� 0 appdelegate AppDelegate��  ��  1 m   � ���
�� 
bool��  ��  . m   � ���
�� boovtrue+ k   �	;; <=< I   � ���>���� 
0 msglog  > ?@? b   � �ABA m   � �CC �DD  E n a b l i n g   F P G A :  B o   � ����� 0 usethisname useThisName@ E��E m   � �FF �GG  n o t i c e��  ��  = H��H I   �	��I����  0 sendcommand___ sendCommand___I JKJ m   � �LL �MM  p g a e n a b l eK NON c   �PQP l  �R����R n   �STS 4   ���U
�� 
cobjU m   ���� T l  � �V����V n   � �WXW 4   � ���Y
�� 
cobjY o   � ����� 0 x  X n  � �Z[Z o   � �����  0 myprefsdevices myPrefsDevices[ o   � ����� 0 appdelegate AppDelegate��  ��  ��  ��  Q m  ��
�� 
ctxtO \��\ m  ��
�� boovtrue��  ��  ��  ��  , k  2]] ^_^ I  ��`���� 
0 msglog  ` aba b  cdc m  ee �ff   D i s a b l i n g   F P G A :  d o  ���� 0 usethisname useThisNameb g��g m  hh �ii  n o t i c e��  ��  _ j��j I  2�k�~�  0 sendcommand___ sendCommand___k lml m  nn �oo  p g a d i s a b l em pqp c  -rsr l +t�}�|t n  +uvu 4  (+�{w
�{ 
cobjw m  )*�z�z v l (x�y�xx n  (yzy 4  %(�w{
�w 
cobj{ o  &'�v�v 0 x  z n %|}| o  #%�u�u  0 myprefsdevices myPrefsDevices} o  #�t�t 0 appdelegate AppDelegate�y  �x  �}  �|  s m  +,�s
�s 
ctxtq ~�r~ m  -.�q
�q boovtrue�r  �~  ��  ) � = 5H��� l 5D��p�o� c  5D��� n  5B��� 4  ?B�n�
�n 
cobj� m  @A�m�m � l 5?��l�k� n  5?��� 4  <?�j�
�j 
cobj� o  =>�i�i 0 x  � n 5<��� o  :<�h�h  0 myprefsdevices myPrefsDevices� o  5:�g�g 0 appdelegate AppDelegate�l  �k  � m  BC�f
�f 
ctxt�p  �o  � m  DG�� ���  a s c� ��e� Z  K����d�� = K\��� l KZ��c�b� c  KZ��� n  KX��� 4  UX�a�
�a 
cobj� m  VW�`�` � l KU��_�^� n  KU��� 4  RU�]�
�] 
cobj� o  ST�\�\ 0 x  � n KR��� o  PR�[�[  0 myprefsdevices myPrefsDevices� o  KP�Z�Z 0 appdelegate AppDelegate�_  �^  � m  XY�Y
�Y 
bool�c  �b  � m  Z[�X
�X boovtrue� k  _��� ��� I  _l�W��V�W 
0 msglog  � ��� b  `e��� m  `c�� ���  E n a b l i n g   A S I C :  � o  cd�U�U 0 usethisname useThisName� ��T� m  eh�� ���  n o t i c e�T  �V  � ��S� I  m��R��Q�R  0 sendcommand___ sendCommand___� ��� m  nq�� ���  a s c e n a b l e� ��� c  q���� l q~��P�O� n  q~��� 4  {~�N�
�N 
cobj� m  |}�M�M � l q{��L�K� n  q{��� 4  x{�J�
�J 
cobj� o  yz�I�I 0 x  � n qx��� o  vx�H�H  0 myprefsdevices myPrefsDevices� o  qv�G�G 0 appdelegate AppDelegate�L  �K  �P  �O  � m  ~�F
�F 
ctxt� ��E� m  ���D
�D boovtrue�E  �Q  �S  �d  � k  ���� ��� I  ���C��B�C 
0 msglog  � ��� b  ����� m  ���� ���   D i s a b l i n g   A S I C :  � o  ���A�A 0 usethisname useThisName� ��@� m  ���� ���  n o t i c e�@  �B  � ��?� I  ���>��=�>  0 sendcommand___ sendCommand___� ��� m  ���� ���  a s c d i s a b l e� ��� c  ����� l ����<�;� n  ����� 4  ���:�
�: 
cobj� m  ���9�9 � l ����8�7� n  ����� 4  ���6�
�6 
cobj� o  ���5�5 0 x  � n ����� o  ���4�4  0 myprefsdevices myPrefsDevices� o  ���3�3 0 appdelegate AppDelegate�8  �7  �<  �;  � m  ���2
�2 
ctxt� ��1� m  ���0
�0 boovtrue�1  �=  �?  �e  ��  � ��� l ���/�.�-�/  �.  �-  � ��� Z  �����,�� = ����� l ����+�*� c  ����� n  ����� 4  ���)�
�) 
cobj� m  ���(�( � l ����'�&� n  ����� 4  ���%�
�% 
cobj� o  ���$�$ 0 x  � n ����� o  ���#�#  0 myprefsdevices myPrefsDevices� o  ���"�" 0 appdelegate AppDelegate�'  �&  � m  ���!
�! 
bool�+  �*  � m  ��� 
�  boovtrue� l ������  � , & if the device is shown but turned off   � ��� L   i f   t h e   d e v i c e   i s   s h o w n   b u t   t u r n e d   o f f�,  � k  ����    n �� I  ����� 0 setavar____ setaVar____  m  �� �  d e v i c e s 	
	 J  ��  o  ���� 0 x   � m  ���� �  
  m  �� �  s t o p p e d � m  �� �  t e x t�  �   o  ���� 0 appdelegate AppDelegate � n �� I  ����� 0 setavar____ setaVar____  m  �� �  d e v i c e s  J  ��   !"! o  ���� 0 x  " #�# m  ���� �   $%$ m  ����  % &�& m  ��'' �((  i n t e g e r�  �   o  ���� 0 appdelegate AppDelegate�  � )*) l ������  �  �  * +�+  S  � �  �  �  � 0 x  � m   	 
�
�
 � n   
 ,-, m    �	
�	 
nmbr- n  
 ./. 2   �
� 
cobj/ n  
 010 o    ��  0 myprefsdevices myPrefsDevices1 o   
 �� 0 appdelegate AppDelegate�  � 232 l 

����  �  �  3 454 n 
676 I  ��� � *0 requestsavesettings requestSaveSettings�  �   7 o  
���� 0 appdelegate AppDelegate5 8��8 l ��������  ��  ��  ��  v 9:9 l     ��������  ��  ��  : ;<; i   O R=>= I      ��?���� "0 createdeviceui_ createDeviceUI_? @��@ o      ���� 0 
thisdevice 
thisDevice��  ��  > k    eAA BCB l    DEFD r     GHG c     IJI o     ���� 0 
thisdevice 
thisDeviceJ m    ��
�� 
longH o      ���� 0 
thisdevice 
thisDeviceE ? 9 index number of myPrefsDevices that we'll be drawing for   F �KK r   i n d e x   n u m b e r   o f   m y P r e f s D e v i c e s   t h a t   w e ' l l   b e   d r a w i n g   f o rC LML l   NOPN r    QRQ c    STS n    UVU 4    ��W
�� 
cobjW o    ���� 0 
thisdevice 
thisDeviceV n   XYX o    ����  0 myprefsdevices myPrefsDevicesY o    ���� 0 appdelegate AppDelegateT m    ��
�� 
listR o      ���� 0 devicetodraw deviceToDrawO G A provides read-only access to this device record via a copy of it   P �ZZ �   p r o v i d e s   r e a d - o n l y   a c c e s s   t o   t h i s   d e v i c e   r e c o r d   v i a   a   c o p y   o f   i tM [\[ l   ��������  ��  ��  \ ]^] I    %��_���� 
0 msglog  _ `a` b     bcb b    ded m    ff �gg 0 D r a w i n g   U I   e l e m e n t s   f o r  e I    ��h����  0 getdevicename_ getDeviceName_h i��i o    ���� 0 
thisdevice 
thisDevice��  ��  c m    jj �kk  .a l��l m     !mm �nn  n o t i c e��  ��  ^ opo l  & &��������  ��  ��  p qrq l  & &��st��  s   draw dimensions   t �uu     d r a w   d i m e n s i o n sr vwv r   & )xyx m   & '����|y o      ���� 0 
framewidth 
frameWidthw z{z r   * -|}| m   * +���� } o      ���� 0 	rowheight 	rowHeight{ ~~ r   . 1��� m   . /����  � o      ���� 0 
paddingtop 
paddingTop ��� r   2 5��� m   2 3���� � o      ���� 0 paddingleft paddingLeft� ��� r   6 9��� m   6 7���� � o      ���� 0 paddingright paddingRight� ��� r   : =��� m   : ;���� � o      ���� 0 submenuwidth submenuWidth� ��� r   > A��� m   > ?���� � o      ���� $0 rowpaddingbottom rowPaddingBottom� ��� r   B E��� o   B C���� 0 
paddingtop 
paddingTop� o      ���� 0 	rowystart 	rowYstart� ��� r   F I��� m   F G���� �� o      ���� 0 hashbarwidth hashbarWidth� ��� l  J J��������  ��  ��  � ��� Q   Jc���� k   M/�� ��� l  M M��������  ��  ��  � ��� Z   M w������� ?  M W��� l  M U������ I  M U�����
�� .corecnte****       ****� l  M Q������ n   M Q��� 4   N Q���
�� 
cobj� m   O P���� &� o   M N���� 0 devicetodraw deviceToDraw��  ��  ��  ��  ��  � m   U V����  � k   Z s�� ��� l  Z Z������  � > 8 already exists for this device, no need to recreate it!   � ��� p   a l r e a d y   e x i s t s   f o r   t h i s   d e v i c e ,   n o   n e e d   t o   r e c r e a t e   i t !� ��� I   Z p������� 
0 msglog  � ��� b   [ i��� b   [ e��� m   [ ^�� ���  U I   f o r  � I   ^ d�������  0 getdevicename_ getDeviceName_� ���� o   _ `���� 0 
thisdevice 
thisDevice��  ��  � m   e h�� ��� Z   a l r e a d y   e x i s t s ,   s k i p p i n g   U I   c r e a t i o n   f o r   i t .� ���� m   i l�� ���  n o t i c e��  ��  � ���� L   q s����  ��  ��  ��  � ��� l  x x��������  ��  ��  � ��� l  x x������  � + % {{origin:x,origin:y},{width,height}}   � ��� J   { { o r i g i n : x , o r i g i n : y } , { w i d t h , h e i g h t } }� ��� r   x ���� J   x ��� ��� J   x |�� ��� m   x y����  � ���� m   y z����  ��  � ���� J   | ��� ��� o   | }���� 0 
framewidth 
frameWidth� ���� o   } ~���� 0 	rowheight 	rowHeight��  ��  � o      ���� 0 aframe aFrame� ��� r   � ���� J   � ��� ��� J   � ��� ��� \   � ���� \   � ���� \   � ���� o   � ����� 0 
framewidth 
frameWidth� o   � ����� 0 hashbarwidth hashbarWidth� o   � ����� 0 paddingright paddingRight� o   � ����� 0 submenuwidth submenuWidth� ���� o   � ����� 0 	rowystart 	rowYstart��  � ���� J   � ��� ��� o   � ����� 0 hashbarwidth hashbarWidth� ���� o   � ����� 0 	rowheight 	rowHeight��  ��  � o      ���� 0 areadoutframe aReadoutFrame� ��� r   � ���� J   � ��� ��� J   � ��� ��� o   � ����� 0 paddingleft paddingLeft�  ��  o   � ����� 0 	rowystart 	rowYstart��  � �� J   � �  \   � � \   � � \   � �	
	 \   � � \   � � o   � ����� 0 
framewidth 
frameWidth o   � ����� 0 hashbarwidth hashbarWidth o   � ����� 0 paddingright paddingRight
 o   � ����� 0 paddingright paddingRight o   � ����� 0 paddingleft paddingLeft o   � ����� 0 submenuwidth submenuWidth �� o   � ����� 0 	rowheight 	rowHeight��  ��  � o      ����  0 acheckboxframe aCheckboxFrame�  r   � � J   � �  J   � �  o   � ����� 0 paddingleft paddingLeft �� [   � � [   � � o   � ����� 0 	rowystart 	rowYstart o   � ����� 0 	rowheight 	rowHeight m   � ����� ��   �� J   � �   !"! \   � �#$# \   � �%&% \   � �'(' \   � �)*) \   � �+,+ o   � ����� 0 
framewidth 
frameWidth, o   � ����� 0 hashbarwidth hashbarWidth* o   � ����� 0 paddingright paddingRight( o   � ����� 0 paddingright paddingRight& o   � ����� 0 paddingleft paddingLeft$ o   � ��� 0 submenuwidth submenuWidth" -�~- o   � ��}�} 0 	rowheight 	rowHeight�~  ��   o      �|�|  0 atextbox2frame aTextbox2Frame ./. r   � �010 J   � �22 343 J   � �55 676 [   � �898 l  � �:�{�z: \   � �;<; \   � �=>= \   � �?@? o   � ��y�y 0 
framewidth 
frameWidth@ o   � ��x�x 0 hashbarwidth hashbarWidth> o   � ��w�w 0 paddingright paddingRight< o   � ��v�v 0 submenuwidth submenuWidth�{  �z  9 l  � �A�u�tA ]   � �BCB m   � �DD ?�������C o   � ��s�s 0 hashbarwidth hashbarWidth�u  �t  7 E�rE \   � �FGF o   � ��q�q 0 	rowystart 	rowYstartG m   � ��p�p �r  4 H�oH J   � �II JKJ ]   � �LML o   � ��n�n 0 hashbarwidth hashbarWidthM m   � �NN ?陙����K O�mO o   � ��l�l 0 	rowheight 	rowHeight�m  �o  1 o      �k�k 0 atextboxframe aTextboxFrame/ PQP r   � �RSR J   � �TT UVU J   � �WW XYX \   � �Z[Z \   � �\]\ \   � �^_^ o   � ��j�j 0 
framewidth 
frameWidth_ o   � ��i�i 0 paddingright paddingRight] l  � �`�h�g` ^   � �aba o   � ��f�f 0 paddingright paddingRightb m   � ��e�e �h  �g  [ o   � ��d�d 0 submenuwidth submenuWidthY c�cc o   � ��b�b 0 	rowystart 	rowYstart�c  V d�ad J   � �ee fgf o   � ��`�` 0 submenuwidth submenuWidthg h�_h o   � ��^�^ 0 	rowheight 	rowHeight�_  �a  S o      �]�] &0 apopupbuttonframe aPopupButtonFrameQ iji r   klk J   mm non J   pp qrq \   sts \   uvu \   wxw o   �\�\ 0 
framewidth 
frameWidthx o  �[�[ 0 hashbarwidth hashbarWidthv o  �Z�Z 0 paddingright paddingRightt o  �Y�Y 0 submenuwidth submenuWidthr y�Xy [  z{z [  
|}| o  �W�W 0 	rowystart 	rowYstart} o  	�V�V 0 	rowheight 	rowHeight{ o  
�U�U $0 rowpaddingbottom rowPaddingBottom�X  o ~�T~ J   ��� o  �S�S 0 hashbarwidth hashbarWidth� ��R� o  �Q�Q 0 	rowheight 	rowHeight�R  �T  l o      �P�P 0 asliderframe aSliderFramej ��� r  /��� J  +�� ��� J  %�� ��� \   ��� \  ��� \  ��� o  �O�O 0 
framewidth 
frameWidth� o  �N�N 0 hashbarwidth hashbarWidth� o  �M�M 0 paddingright paddingRight� o  �L�L 0 submenuwidth submenuWidth� ��K� [   #��� o   !�J�J 0 	rowystart 	rowYstart� o  !"�I�I 0 	rowheight 	rowHeight�K  � ��H� J  %)�� ��� o  %&�G�G 0 hashbarwidth hashbarWidth� ��F� o  &'�E�E 0 	rowheight 	rowHeight�F  �H  � o      �D�D 0 asliderframe aSliderFrame� ��� r  0J��� J  0F�� ��� J  0@�� ��� \  09��� [  07��� \  03��� o  01�C�C 0 
framewidth 
frameWidth� o  12�B�B 0 paddingright paddingRight� l 36��A�@� ^  36��� o  34�?�? 0 paddingright paddingRight� m  45�>�> �A  �@  � o  78�=�= 0 submenuwidth submenuWidth� ��<� [  9>��� [  9<��� o  9:�;�; 0 	rowystart 	rowYstart� o  :;�:�: 0 	rowheight 	rowHeight� m  <=�9�9 �<  � ��8� J  @D�� ��� o  @A�7�7 0 submenuwidth submenuWidth� ��6� o  AB�5�5 0 	rowheight 	rowHeight�6  �8  � o      �4�4 *0 asliderreadoutframe aSliderReadoutFrame� ��� l KK�3�2�1�3  �2  �1  � ��� l KK�0���0  �   make a subview   � ���    m a k e   a   s u b v i e w� ��� r  K_��� n K[��� I  V[�/��.�/  0 initwithframe_ initWithFrame_� ��-� o  VW�,�, 0 aframe aFrame�-  �.  � n KV��� I  RV�+�*�)�+ 	0 alloc  �*  �)  � n KR��� o  NR�(�( 0 nsview NSView� m  KN�'
�' misccura� o      �&�& 0 aview aView� ��� l ``�%�$�#�%  �$  �#  � ��� l ``�"���"  �   make a new mini hashbar   � ��� 0   m a k e   a   n e w   m i n i   h a s h b a r� ��� r  `t��� n `p��� I  kp�!�� �!  0 initwithframe_ initWithFrame_� ��� o  kl�� 0 areadoutframe aReadoutFrame�  �   � n `k��� I  gk���� 	0 alloc  �  �  � n `g��� o  cg�� $0 nslevelindicator NSLevelIndicator� m  `c�
� misccura� o      �� 0 areadout aReadout� ��� n u}��� I  x}����  0 setcontinuous_ setContinuous_� ��� m  xy�
� boovtrue�  �  � o  ux�� 0 areadout aReadout� ��� n ~���� I  ������ 0 setminvalue_ setMinValue_� ��� m  ����  �  �  � o  ~��� 0 areadout aReadout� ��� Z  ������� = ����� l ������ c  ����� n ����� o  ���
�
 0 currentcoin currentCoin� o  ���	�	 0 appdelegate AppDelegate� m  ���
� 
ctxt�  �  � m  ���� ���  B i t c o i n� r  ����� c  ����� n  ����� 4  ����
� 
cobj� m  ���� � o  ���� 0 devicetodraw deviceToDraw� m  ���
� 
doub� o      �� 0 maxhash maxHash� � � = �� l ���� c  �� n �� o  ��� �  0 currentcoin currentCoin o  ������ 0 appdelegate AppDelegate m  ����
�� 
ctxt�  �   m  �� �		  L i t e c o i n  
��
 r  �� c  �� n  �� 4  ����
�� 
cobj m  ������  o  ������ 0 devicetodraw deviceToDraw m  ����
�� 
doub o      ���� 0 maxhash maxHash��  �  �  n �� I  �������� 0 setmaxvalue_ setMaxValue_ �� o  ������ 0 maxhash maxHash��  ��   o  ������ 0 areadout aReadout  n �� I  �������� $0 setwarningvalue_ setWarningValue_ �� ]  �� o  ������ 0 maxhash maxHash m  ��   ?�      ��  ��   o  ������ 0 areadout aReadout !"! n ��#$# I  ����%���� &0 setcriticalvalue_ setCriticalValue_% &��& ]  ��'(' o  ������ 0 maxhash maxHash( m  ��)) ?���������  ��  $ o  ������ 0 areadout aReadout" *+* n �,-, I  ��.���� 20 setlevelindicatorstyle_ setLevelIndicatorStyle_. /��/ n 
010 o  
���� R0 'nscontinuouscapacitylevelindicatorstyle 'NSContinuousCapacityLevelIndicatorStyle1 m  ��
�� misccura��  ��  - n �232 o  ����� 0 cell  3 o  ������ 0 areadout aReadout+ 454 n  676 I   ��8����  0 setfloatvalue_ setFloatValue_8 9��9 c  :;: n  <=< 4  ��>
�� 
cobj> m  ���� = o  ���� 0 devicetodraw deviceToDraw; m  ��
�� 
doub��  ��  7 o  ���� 0 areadout aReadout5 ?@? n !+ABA I  $+��C���� 0 addsubview_ addSubview_C D��D o  $'���� 0 areadout aReadout��  ��  B o  !$���� 0 aview aView@ EFE l ,,��������  ��  ��  F GHG l ,,��IJ��  I ' ! make a new checkbox + miner name   J �KK B   m a k e   a   n e w   c h e c k b o x   +   m i n e r   n a m eH LML r  ,@NON n ,<PQP I  7<��R����  0 initwithframe_ initWithFrame_R S��S o  78����  0 acheckboxframe aCheckboxFrame��  ��  Q n ,7TUT I  37�������� 	0 alloc  ��  ��  U n ,3VWV o  /3���� 0 nsbutton NSButtonW m  ,/��
�� misccuraO o      ���� 0 	acheckbox 	aCheckboxM XYX n ANZ[Z I  DN��\���� 0 	settitle_ 	setTitle_\ ]��] I  DJ��^����  0 getdevicename_ getDeviceName_^ _��_ o  EF���� 0 
thisdevice 
thisDevice��  ��  ��  ��  [ o  AD���� 0 	acheckbox 	aCheckboxY `a` n OWbcb I  RW��d����  0 setbuttontype_ setButtonType_d e��e m  RS���� ��  ��  c o  OR���� 0 	acheckbox 	aCheckboxa fgf n Xehih I  [e��j���� 0 	setstate_ 	setState_j k��k c  [alml n  [_non 4  \_��p
�� 
cobjp m  ]^���� o o  [\���� 0 devicetodraw deviceToDrawm m  _`��
�� 
long��  ��  i o  X[���� 0 	acheckbox 	aCheckboxg qrq n f{sts I  i{��u���� 0 setfont_ setFont_u v��v n iwwxw I  pw��y���� &0 systemfontofsize_ systemFontOfSize_y z��z m  ps���� ��  ��  x n ip{|{ o  lp���� 0 nsfont NSFont| m  il��
�� misccura��  ��  t o  fi���� 0 	acheckbox 	aCheckboxr }~} n |�� I  �������� 0 settag_ setTag_� ���� o  ����� 0 
thisdevice 
thisDevice��  ��  � o  |���� 0 	acheckbox 	aCheckbox~ ��� n ����� I  ��������� 0 
settarget_ 
setTarget_� ����  f  ����  ��  � o  ������ 0 	acheckbox 	aCheckbox� ��� n ����� I  ��������� 0 
setaction_ 
setAction_� ���� m  ���� ��� * t o g g l e D e v i c e F r o m L i s t :��  ��  � o  ������ 0 	acheckbox 	aCheckbox� ��� n ����� I  ��������� 0 addsubview_ addSubview_� ���� o  ������ 0 	acheckbox 	aCheckbox��  ��  � o  ������ 0 aview aView� ��� l ����������  ��  ��  � ��� l ��������  � #  make a new hash text readout   � ��� :   m a k e   a   n e w   h a s h   t e x t   r e a d o u t� ��� r  ����� n ����� I  ���������  0 initwithframe_ initWithFrame_� ���� o  ������ 0 atextboxframe aTextboxFrame��  ��  � n ����� I  ���������� 	0 alloc  ��  ��  � n ����� o  ������ 0 nstextfield NSTextField� m  ����
�� misccura� o      ���� 0 atextbox aTextbox� ��� Z  ������� > ����� l �������� c  ����� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 devicetodraw deviceToDraw� m  ����
�� 
doub��  ��  � m  ������  � k  ���� ��� n ����� I  �����~� "0 setstringvalue_ setStringValue_� ��}� c  ����� I  ���|��{�| *0 gethashratelabel___ getHashRateLabel___� ��� c  ����� n  ����� 4  ���z�
�z 
cobj� m  ���y�y � o  ���x�x 0 devicetodraw deviceToDraw� m  ���w
�w 
doub� ��� m  ���v
�v boovtrue� ��u� m  ���t
�t boovfals�u  �{  � m  ���s
�s 
ctxt�}  �~  � o  ���r�r 0 atextbox aTextbox� ��q� n ����� I  ���p��o�p 0 settextcolor_ setTextColor_� ��n� n ����� o  ���m�m 0 
blackcolor 
blackColor� o  ���l�l 0 nscolor NSColor�n  �o  � o  ���k�k 0 atextbox aTextbox�q  ��  � k  ��� ��� n �	��� I  �	�j��i�j "0 setstringvalue_ setStringValue_� ��h� c  ���� n  ���� 4  ��g�
�g 
cobj� m  � �f�f � o  ���e�e 0 devicetodraw deviceToDraw� m  �d
�d 
ctxt�h  �i  � o  ���c�c 0 atextbox aTextbox� ��b� n 
��� I  �a��`�a 0 settextcolor_ setTextColor_� ��_� n ��� o  �^�^ 0 	graycolor 	grayColor� o  �]�] 0 nscolor NSColor�_  �`  � o  
�\�\ 0 atextbox aTextbox�b  � ��� n #��� I  #�[��Z�[ 0 seteditable_ setEditable_� ��Y� m  �X
�X boovfals�Y  �Z  � o  �W�W 0 atextbox aTextbox� ��� n $,��� I  ',�V��U�V 0 setbordered_ setBordered_� ��T� m  '(�S
�S boovfals�T  �U  � o  $'�R�R 0 atextbox aTextbox� ��� n -5��� I  05�Q��P�Q 0 setbezeled_ setBezeled_� ��O� m  01�N
�N boovfals�O  �P  � o  -0�M�M 0 atextbox aTextbox� ��� n 6>��� I  9>�L��K�L *0 setdrawsbackground_ setDrawsBackground_� ��J� m  9:�I
�I boovfals�J  �K  � o  69�H�H 0 atextbox aTextbox� ��� n ?G� � I  BG�G�F�G 0 setalignment_ setAlignment_ �E m  BC�D�D �E  �F    o  ?B�C�C 0 atextbox aTextbox�  n H] I  K]�B�A�B 0 setfont_ setFont_ �@ n KY	
	 I  RY�?�>�? &0 systemfontofsize_ systemFontOfSize_ �= m  RU�<�< 
�=  �>  
 n KR o  NR�;�; 0 nsfont NSFont m  KN�:
�: misccura�@  �A   o  HK�9�9 0 atextbox aTextbox  n ^h I  ah�8�7�8 0 addsubview_ addSubview_ �6 o  ad�5�5 0 atextbox aTextbox�6  �7   o  ^a�4�4 0 aview aView  l ii�3�2�1�3  �2  �1    l ii�0�0     make a new miner menu    � ,   m a k e   a   n e w   m i n e r   m e n u  r  i� n i~ !  I  t~�/"�.�/  0 initwithtitle_ initWithTitle_" #�-# I  tz�,$�+�,  0 getdevicename_ getDeviceName_$ %�*% o  uv�)�) 0 
thisdevice 
thisDevice�*  �+  �-  �.  ! n it&'& I  pt�(�'�&�( 	0 alloc  �'  �&  ' n ip()( o  lp�%�% 0 nsmenu NSMenu) m  il�$
�$ misccura o      �#�# 0 amenu aMenu *+* n ��,-, I  ���".�!�" ,0 setautoenablesitems_ setAutoenablesItems_. /� / m  ���
� boovfals�   �!  - o  ���� 0 amenu aMenu+ 010 r  ��232 n ��454 I  ���6�� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_6 787 I  ���9��  0 getdevicename_ getDeviceName_9 :�: o  ���� 0 
thisdevice 
thisDevice�  �  8 ;<; m  ��== �>>  d o M i n e r M e n u :< ?�? m  ��@@ �AA  �  �  5 n ��BCB I  ������ 	0 alloc  �  �  C n ��DED o  ���� 0 
nsmenuitem 
NSMenuItemE m  ���
� misccura3 o      �� 0 	amenuname 	aMenuName1 FGF n ��HIH I  ���J�� 0 additem_ addItem_J K�K o  ���� 0 	amenuname 	aMenuName�  �  I o  ���� 0 amenu aMenuG LML l ����
�	�  �
  �	  M NON l ���PQ�  P   do temp box   Q �RR    d o   t e m p   b o xO STS Z  ��UV��U F  ��WXW > ��YZY l ��[��[ c  ��\]\ n  ��^_^ 4  ���`
� 
cobj` m  ���� _ o  ���� 0 devicetodraw deviceToDraw] m  ��� 
�  
doub�  �  Z m  ������  X = ��aba l ��c����c c  ��ded n  ��fgf 4  ����h
�� 
cobjh m  ������ g o  ������ 0 devicetodraw deviceToDrawe m  ����
�� 
long��  ��  b m  ������ V k  ��ii jkj r  �
lml n �non I  ���p���� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_p qrq b  ��sts c  ��uvu b  ��wxw m  ��yy �zz  T e m p e r a t u r e :  x I  ����{���� 0 roundnumber roundNumber{ |}| c  ��~~ n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 devicetodraw deviceToDraw m  ����
�� 
doub} ���� m  ������ ��  ��  v m  ����
�� 
ctxtt m  ���� ���  �r ��� m  ����
�� 
msng� ���� m  ��� ���  ��  ��  o n ����� I  ���������� 	0 alloc  ��  ��  � n ����� o  ������ 0 
nsmenuitem 
NSMenuItem� m  ����
�� misccuram o      ���� 0 	amenutemp 	aMenuTempk ��� O  &��� k  %�� ��� I  ������� 0 
settarget_ 
setTarget_� ����  f  ��  ��  � ��� I  ������� 0 setenabled_ setEnabled_� ���� m  ��
�� boovfals��  ��  � ���� I  %������� ,0 setindentationlevel_ setIndentationLevel_� ���� m   !����  ��  ��  ��  � o  ���� 0 	amenutemp 	aMenuTemp� ��� n '<��� I  *<������� 0 setfont_ setFont_� ���� n *8��� I  18������� .0 boldsystemfontofsize_ boldSystemFontOfSize_� ���� m  14���� 	��  ��  � n *1��� o  -1���� 0 nsfont NSFont� m  *-��
�� misccura��  ��  � o  '*���� 0 	amenutemp 	aMenuTemp� ��� n =G��� I  @G������� 0 additem_ addItem_� ���� o  @C���� 0 	amenutemp 	aMenuTemp��  ��  � o  =@���� 0 amenu aMenu� ��� l HH��������  ��  ��  � ��� r  Hd��� n H`��� I  S`������� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� m  SV�� ���  S e t   a l e r t &� ��� m  VY�� ���  s e t T e m p W a r n i n g :� ���� m  Y\�� ���  ��  ��  � n HS��� I  OS�������� 	0 alloc  ��  ��  � n HO��� o  KO���� 0 
nsmenuitem 
NSMenuItem� m  HK��
�� misccura� o      ���� "0 amenutempoption aMenuTempOption� ��� O  e���� k  k��� ��� I  kq������� 0 
settarget_ 
setTarget_� ����  f  lm��  ��  � ��� I  rx������� 0 setenabled_ setEnabled_� ���� m  st��
�� boovtrue��  ��  � ��� I  y������� 0 settag_ setTag_� ���� o  z{���� 0 
thisdevice 
thisDevice��  ��  � ���� I  ��������� ,0 setindentationlevel_ setIndentationLevel_� ���� m  ������ ��  ��  ��  � o  eh���� "0 amenutempoption aMenuTempOption� ���� n ����� I  ��������� 0 additem_ addItem_� ���� o  ������ "0 amenutempoption aMenuTempOption��  ��  � o  ������ 0 amenu aMenu��  �  �  T ��� l ����������  ��  ��  � ��� l ��������  �   sessions stats separator   � ��� 2   s e s s i o n s   s t a t s   s e p a r a t o r� ��� r  ����� n ����� I  ��������� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� m  ���� ���  S e s s i o n   s t a t s :� ��� m  ����
�� 
msng� ���� m  ���� ���  ��  ��  � n ����� I  ���������� 	0 alloc  ��  ��  � n ����� o  ������ 0 
nsmenuitem 
NSMenuItem� m  ����
�� misccura� o      ���� &0 amenusessionstats aMenuSessionStats� ��� n ��� � I  �������� 0 
settarget_ 
setTarget_ ��  f  ����  ��    o  ������ &0 amenusessionstats aMenuSessionStats�  n �� I  �������� 0 setenabled_ setEnabled_ �� m  ����
�� boovfals��  ��   o  ���� &0 amenusessionstats aMenuSessionStats 	
	 n �� I  ����� ,0 setindentationlevel_ setIndentationLevel_ � m  ����  �  �   o  ���� &0 amenusessionstats aMenuSessionStats
  n �� I  ����� 0 additem_ addItem_ � o  ���� &0 amenusessionstats aMenuSessionStats�  �   o  ���� 0 amenu aMenu  l ������  �  �    l ����     accepted shares    �     a c c e p t e d   s h a r e s  r  �� n �� !  I  ���"�� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_" #$# b  ��%&% m  ��'' �((  A c c e p t e d :  & l ��)�~�}) c  ��*+* n  ��,-, 4  ���|.
�| 
cobj. m  ���{�{ - o  ���z�z 0 devicetodraw deviceToDraw+ m  ���y
�y 
long�~  �}  $ /0/ m  ���x
�x 
msng0 1�w1 m  ��22 �33  �w  �  ! n ��454 I  ���v�u�t�v 	0 alloc  �u  �t  5 n ��676 o  ���s�s 0 
nsmenuitem 
NSMenuItem7 m  ���r
�r misccura o      �q�q 0 amenuaccepted aMenuAccepted 898 O   :;: k  << =>= I  �p?�o�p 0 
settarget_ 
setTarget_? @�n@  f  �n  �o  > ABA I  �mC�l�m 0 setenabled_ setEnabled_C D�kD m  �j
�j boovfals�k  �l  B E�iE I  �hF�g�h ,0 setindentationlevel_ setIndentationLevel_F G�fG m  �e�e �f  �g  �i  ; o   �d�d 0 amenuaccepted aMenuAccepted9 HIH n &JKJ I  &�cL�b�c 0 additem_ addItem_L M�aM o  "�`�` 0 amenuaccepted aMenuAccepted�a  �b  K o  �_�_ 0 amenu aMenuI NON l ''�^�]�\�^  �]  �\  O PQP l ''�[RS�[  R   rejected shares   S �TT     r e j e c t e d   s h a r e sQ UVU r  'LWXW n 'HYZY I  2H�Z[�Y�Z J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_[ \]\ b  2>^_^ m  25`` �aa  R e j e c t e d :  _ l 5=b�X�Wb c  5=cdc n  5;efe 4  6;�Vg
�V 
cobjg m  7:�U�U f o  56�T�T 0 devicetodraw deviceToDrawd m  ;<�S
�S 
long�X  �W  ] hih m  >A�R
�R 
msngi j�Qj m  ADkk �ll  �Q  �Y  Z n '2mnm I  .2�P�O�N�P 	0 alloc  �O  �N  n n '.opo o  *.�M�M 0 
nsmenuitem 
NSMenuItemp m  '*�L
�L misccuraX o      �K�K 0 amenurejected aMenuRejectedV qrq O  Mhsts k  Sguu vwv I  SY�Jx�I�J 0 
settarget_ 
setTarget_x y�Hy  f  TU�H  �I  w z{z I  Z`�G|�F�G 0 setenabled_ setEnabled_| }�E} m  [\�D
�D boovfals�E  �F  { ~�C~ I  ag�B�A�B ,0 setindentationlevel_ setIndentationLevel_ ��@� m  bc�?�? �@  �A  �C  t o  MP�>�> 0 amenurejected aMenuRejectedr ��� n is��� I  ls�=��<�= 0 additem_ addItem_� ��;� o  lo�:�: 0 amenurejected aMenuRejected�;  �<  � o  il�9�9 0 amenu aMenu� ��� l tt�8�7�6�8  �7  �6  � ��� l tt�5���5  �  
 hw errors   � ���    h w   e r r o r s� ��� r  t���� n t���� I  ��4��3�4 J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� b  ���� m  ��� ���  H W   e r r o r s :  � l ����2�1� c  ����� n  ����� 4  ���0�
�0 
cobj� m  ���/�/ � o  ���.�. 0 devicetodraw deviceToDraw� m  ���-
�- 
long�2  �1  � ��� m  ���,
�, 
msng� ��+� m  ���� ���  �+  �3  � n t��� I  {�*�)�(�* 	0 alloc  �)  �(  � n t{��� o  w{�'�' 0 
nsmenuitem 
NSMenuItem� m  tw�&
�& misccura� o      �%�% 0 amenuhwerrors aMenuHWerrors� ��� O  ����� k  ���� ��� I  ���$��#�$ 0 
settarget_ 
setTarget_� ��"�  f  ���"  �#  � ��� I  ���!�� �! 0 setenabled_ setEnabled_� ��� m  ���
� boovfals�  �   � ��� I  ������ ,0 setindentationlevel_ setIndentationLevel_� ��� m  ���� �  �  �  � o  ���� 0 amenuhwerrors aMenuHWerrors� ��� n ����� I  ������ 0 additem_ addItem_� ��� o  ���� 0 amenuhwerrors aMenuHWerrors�  �  � o  ���� 0 amenu aMenu� ��� l ������  �  �  � ��� l ������  �   utility   � ���    u t i l i t y� ��� r  ����� n ����� I  ������ J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� b  ����� m  ���� ���  U t i l i t y :  � l ������ c  ����� n  ����� 4  ���
�
�
 
cobj� m  ���	�	 #� o  ���� 0 devicetodraw deviceToDraw� m  ���
� 
long�  �  � ��� m  ���
� 
msng� ��� m  ���� ���  �  �  � n ����� I  ������ 	0 alloc  �  �  � n ����� o  ���� 0 
nsmenuitem 
NSMenuItem� m  ��� 
�  misccura� o      ���� 0 amenuutility aMenuUtility� ��� O  � ��� k  ���� ��� I  ��������� 0 
settarget_ 
setTarget_� ����  f  ����  ��  � ��� I  ��������� 0 setenabled_ setEnabled_� ���� m  ����
�� boovfals��  ��  � ���� I  ��������� ,0 setindentationlevel_ setIndentationLevel_� ���� m  ������ ��  ��  ��  � o  ������ 0 amenuutility aMenuUtility� ��� n ��� I  ������� 0 additem_ addItem_� ���� o  ���� 0 amenuutility aMenuUtility��  ��  � o  ���� 0 amenu aMenu� ��� l ��������  ��  ��  � ��� Z  ������� G  8   G  ' l ���� ?  l ���� c  	 n  

 4  ��
�� 
cobj m  ����  o  ���� 0 devicetodraw deviceToDraw	 m  ��
�� 
long��  ��   m  ����  ��  ��   l #���� ? # l !���� c  ! n   4  ��
�� 
cobj m  ����  o  ���� 0 devicetodraw deviceToDraw m   ��
�� 
long��  ��   m  !"����  ��  ��   l *4���� ? *4 l *2���� c  *2 n  *0 4  +0��
�� 
cobj m  ,/����  o  *+���� 0 devicetodraw deviceToDraw m  01��
�� 
long��  ��   m  23����  ��  ��  � k  ;�  !  l ;;��������  ��  ��  ! "#" l ;;��$%��  $   lifetime separator   % �&& &   l i f e t i m e   s e p a r a t o r# '(' r  ;W)*) n ;S+,+ I  FS��-���� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_- ./. m  FI00 �11  L i f e t i m e   s t a t s :/ 232 m  IL��
�� 
msng3 4��4 m  LO55 �66  ��  ��  , n ;F787 I  BF�������� 	0 alloc  ��  ��  8 n ;B9:9 o  >B���� 0 
nsmenuitem 
NSMenuItem: m  ;>��
�� misccura* o      ���� 0 amenulifetime aMenuLifetime( ;<; n X`=>= I  [`�?�� 0 
settarget_ 
setTarget_? @�@  f  [\�  �  > o  X[�� 0 amenulifetime aMenuLifetime< ABA n aiCDC I  di�E�� 0 setenabled_ setEnabled_E F�F m  de�
� boovfals�  �  D o  ad�� 0 amenulifetime aMenuLifetimeB GHG n jtIJI I  mt�K�� 0 additem_ addItem_K L�L o  mp�� 0 amenulifetime aMenuLifetime�  �  J o  jm�� 0 amenu aMenuH MNM l uu����  �  �  N OPO l uu�QR�  Q   lifetime accepted   R �SS $   l i f e t i m e   a c c e p t e dP TUT r  u�VWV n u�XYX I  ���Z�� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_Z [\[ b  ��]^] m  ��__ �``  A c c e p t e d :  ^ [  ��aba l ��c��c c  ��ded n  ��fgf 4  ���h
� 
cobjh m  ���� g o  ���� 0 devicetodraw deviceToDrawe m  ���
� 
long�  �  b l ��i��i c  ��jkj n  ��lml 4  ���n
� 
cobjn m  ���� m o  ���� 0 devicetodraw deviceToDrawk m  ���
� 
long�  �  \ opo m  ���
� 
msngp q�q m  ��rr �ss  �  �  Y n u�tut I  |����� 	0 alloc  �  �  u n u|vwv o  x|�� 0 
nsmenuitem 
NSMenuItemw m  ux�
� misccuraW o      �� .0 amenulifetimeaccepted aMenuLifetimeAcceptedU xyx O  ��z{z k  ��|| }~} I  ����� 0 
settarget_ 
setTarget_ ���  f  ���  �  ~ ��� I  ������ 0 setenabled_ setEnabled_� ��� m  ���
� boovfals�  �  � ��� I  ������ ,0 setindentationlevel_ setIndentationLevel_� ��� m  ���� �  �  �  { o  ���� .0 amenulifetimeaccepted aMenuLifetimeAcceptedy ��� n ����� I  ������ 0 additem_ addItem_� ��� o  ���� .0 amenulifetimeaccepted aMenuLifetimeAccepted�  �  � o  ���� 0 amenu aMenu� ��� l ������  �  �  � ��� l ������  �   lifetime rejected   � ��� $   l i f e t i m e   r e j e c t e d� ��� r  ����� n ����� I  ������ J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� b  ����� m  ���� ���  R e j e c t e d :  � [  ����� l �����~� c  ����� n  ����� 4  ���}�
�} 
cobj� m  ���|�| � o  ���{�{ 0 devicetodraw deviceToDraw� m  ���z
�z 
long�  �~  � l ����y�x� c  ����� n  ����� 4  ���w�
�w 
cobj� m  ���v�v � o  ���u�u 0 devicetodraw deviceToDraw� m  ���t
�t 
long�y  �x  � ��� m  ���s
�s 
msng� ��r� m  ���� ���  �r  �  � n ����� I  ���q�p�o�q 	0 alloc  �p  �o  � n ����� o  ���n�n 0 
nsmenuitem 
NSMenuItem� m  ���m
�m misccura� o      �l�l .0 amenulifetimerejected aMenuLifetimeRejected� ��� O  ���� k   �� ��� I   �k��j�k 0 
settarget_ 
setTarget_� ��i�  f  �i  �j  � ��� I  �h��g�h 0 setenabled_ setEnabled_� ��f� m  	�e
�e boovfals�f  �g  � ��d� I  �c��b�c ,0 setindentationlevel_ setIndentationLevel_� ��a� m  �`�` �a  �b  �d  � o  ���_�_ .0 amenulifetimerejected aMenuLifetimeRejected� ��� n  ��� I   �^��]�^ 0 additem_ addItem_� ��\� o  �[�[ .0 amenulifetimerejected aMenuLifetimeRejected�\  �]  � o  �Z�Z 0 amenu aMenu� ��� l !!�Y�X�W�Y  �X  �W  � ��� l !!�V���V  �   lifetime hw errors   � ��� &   l i f e t i m e   h w   e r r o r s� ��� r  !M��� n !I��� I  ,I�U��T�U J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� b  ,?��� m  ,/�� ���  H W   e r r o r s :  � [  />��� l /7��S�R� c  /7��� n  /5��� 4  05�Q�
�Q 
cobj� m  14�P�P � o  /0�O�O 0 devicetodraw deviceToDraw� m  56�N
�N 
long�S  �R  � l 7=��M�L� c  7=��� n  7;��� 4  8;�K�
�K 
cobj� m  9:�J�J � o  78�I�I 0 devicetodraw deviceToDraw� m  ;<�H
�H 
long�M  �L  � ��� m  ?B�G
�G 
msng� ��F� m  BE�� ���  �F  �T  � n !,��� I  (,�E�D�C�E 	0 alloc  �D  �C  � n !(��� o  $(�B�B 0 
nsmenuitem 
NSMenuItem� m  !$�A
�A misccura� o      �@�@ .0 amenulifetimehwerrors aMenuLifetimeHWerrors� ��� O  Ni��� k  Th�� � � I  TZ�?�>�? 0 
settarget_ 
setTarget_ �=  f  UV�=  �>     I  [a�<�;�< 0 setenabled_ setEnabled_ �: m  \]�9
�9 boovfals�:  �;   �8 I  bh�7�6�7 ,0 setindentationlevel_ setIndentationLevel_ 	�5	 m  cd�4�4 �5  �6  �8  � o  NQ�3�3 .0 amenulifetimehwerrors aMenuLifetimeHWerrors� 

 n jt I  mt�2�1�2 0 additem_ addItem_ �0 o  mp�/�/ .0 amenulifetimehwerrors aMenuLifetimeHWerrors�0  �1   o  jm�.�. 0 amenu aMenu  l uu�-�,�+�-  �,  �+   �* n u� I  x��)�(�) 0 setfont_ setFont_ �' n x� I  ��&�%�& .0 boldsystemfontofsize_ boldSystemFontOfSize_ �$ m  ��#�# 	�$  �%   n x o  {�"�" 0 nsfont NSFont m  x{�!
�! misccura�'  �(   o  ux� �  0 amenulifetime aMenuLifetime�*  ��  � k  ��  r  �� !  m  ��"" �##  ! o      �� .0 amenulifetimeaccepted aMenuLifetimeAccepted $%$ r  ��&'& m  ��(( �))  ' o      �� .0 amenulifetimerejected aMenuLifetimeRejected% *�* r  ��+,+ m  ��-- �..  , o      �� .0 amenulifetimehwerrors aMenuLifetimeHWerrors�  � /0/ l ������  �  �  0 121 l ���34�  3   set font sizes   4 �55    s e t   f o n t   s i z e s2 676 n ��898 I  ���:�� 0 setfont_ setFont_: ;�; n ��<=< I  ���>�� &0 systemfontofsize_ systemFontOfSize_> ?�? m  ���� 	�  �  = n ��@A@ o  ���� 0 nsfont NSFontA m  ���
� misccura�  �  9 o  ���� 0 amenu aMenu7 BCB n ��DED I  ���F�� 0 setfont_ setFont_F G�G n ��HIH I  ���
J�	�
 .0 boldsystemfontofsize_ boldSystemFontOfSize_J K�K m  ���� 	�  �	  I n ��LML o  ���� 0 nsfont NSFontM m  ���
� misccura�  �  E o  ���� &0 amenusessionstats aMenuSessionStatsC NON l ������  �  �  O PQP l ��� RS�   R ) # make a new miner popup menu button   S �TT F   m a k e   a   n e w   m i n e r   p o p u p   m e n u   b u t t o nQ UVU r  ��WXW n ��YZY I  ����[����  0 initwithframe_ initWithFrame_[ \��\ o  ������ &0 apopupbuttonframe aPopupButtonFrame��  ��  Z n ��]^] I  ���������� 	0 alloc  ��  ��  ^ n ��_`_ o  ������ 0 nspopupbutton NSPopUpButton` m  ����
�� misccuraX o      ���� 0 apopupbutton aPopupButtonV aba n ��cdc I  ����e���� 0 setbordered_ setBordered_e f��f m  ����
�� boovfals��  ��  d o  ������ 0 apopupbutton aPopupButtonb ghg n ��iji I  ����k���� &0 setpreferrededge_ setPreferredEdge_k l��l n ��mnm o  ������ &0 nsalignminxinward NSAlignMinXInwardn m  ����
�� misccura��  ��  j o  ������ 0 apopupbutton aPopupButtonh opo n  qrq I  ��s���� 0 setpullsdown_ setPullsDown_s t��t m  ��
�� boovtrue��  ��  r o   ���� 0 apopupbutton aPopupButtonp uvu n 	wxw I  ��y���� 0 setmenu_ setMenu_y z��z o  ���� 0 amenu aMenu��  ��  x o  	���� 0 apopupbutton aPopupButtonv {|{ n }~} I  ������ 0 addsubview_ addSubview_ ���� o  ���� 0 apopupbutton aPopupButton��  ��  ~ o  ���� 0 aview aView| ��� l ��������  ��  ��  � ��� l ������  �   intensity (if GPU)   � ��� &   i n t e n s i t y   ( i f   G P U )� ��� Z  ������� = '��� n  #��� 4   #���
�� 
cobj� m  !"���� � o   ���� 0 devicetodraw deviceToDraw� m  #&�� ���  g p u� k  *��� ��� r  *@��� n *<��� I  5<�������  0 initwithframe_ initWithFrame_� ���� o  58���� 0 asliderframe aSliderFrame��  ��  � n *5��� I  15�������� 	0 alloc  ��  ��  � n *1��� o  -1���� 0 nsslider NSSlider� m  *-��
�� misccura� o      ���� 0 aslider aSlider� ��� n AI��� I  DI������� 0 
sethidden_ 
setHidden_� ���� m  DE��
�� boovtrue��  ��  � o  AD���� 0 aslider aSlider� ��� n J\��� I  Q\������� "0 setcontrolsize_ setControlSize_� ���� n QX��� o  TX���� (0 nssmallcontrolsize NSSmallControlSize� m  QT��
�� misccura��  ��  � n JQ��� o  MQ�� 0 cell  � o  JM�� 0 aslider aSlider� ��� l ]]����  �  �  � ��� n ]g��� I  `g���� 0 addsubview_ addSubview_� ��� o  `c�� 0 aslider aSlider�  �  � o  ]`�� 0 aview aView� ��� l hh����  �  �  � ��� r  h|��� n hx��� I  sx����  0 initwithframe_ initWithFrame_� ��� o  st��  0 atextbox2frame aTextbox2Frame�  �  � n hs��� I  os���� 	0 alloc  �  �  � n ho��� o  ko�� 0 nstextfield NSTextField� m  hk�
� misccura� o      �� 0 	atextbox2 	aTextbox2� ��� n }���� I  ������ "0 setstringvalue_ setStringValue_� ��� m  ���� ���  I n t e n s i t y :�  �  � o  }��� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ 0 seteditable_ setEditable_� ��� m  ���
� boovfals�  �  � o  ���� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ 0 setbordered_ setBordered_� ��� m  ���
� boovfals�  �  � o  ���� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ 0 setbezeled_ setBezeled_� ��� m  ���
� boovfals�  �  � o  ���� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ *0 setdrawsbackground_ setDrawsBackground_� ��� m  ���
� boovfals�  �  � o  ���� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ 0 setalignment_ setAlignment_� ��� m  ���� �  �  � o  ���� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ 0 
sethidden_ 
setHidden_� ��� m  ���
� boovtrue�  �  � o  ���� 0 	atextbox2 	aTextbox2� ��� n ����� I  ������ 0 setfont_ setFont_� ��� n ����� I  ������ &0 systemfontofsize_ systemFontOfSize_� ��� m  ���� 	�  �  � n ����� o  ���� 0 nsfont NSFont� m  ���~
�~ misccura�  �  � o  ���}�} 0 	atextbox2 	aTextbox2� � � n �� I  ���|�{�| 0 addsubview_ addSubview_ �z o  ���y�y 0 	atextbox2 	aTextbox2�z  �{   o  ���x�x 0 aview aView   l ���w�v�u�w  �v  �u    r  ��	
	 n �� I  ���t�s�t  0 initwithframe_ initWithFrame_ �r o  ���q�q *0 asliderreadoutframe aSliderReadoutFrame�r  �s   n �� I  ���p�o�n�p 	0 alloc  �o  �n   n �� o  ���m�m 0 nstextfield NSTextField m  ���l
�l misccura
 o      �k�k  0 asliderreadout aSliderReadout  n �	 I  �	�j�i�j "0 setstringvalue_ setStringValue_ �h c  �	 n  �� 4  ���g
�g 
cobj m  ���f�f  o  ���e�e 0 devicetodraw deviceToDraw m  �	 �d
�d 
ctxt�h  �i   o  ���c�c  0 asliderreadout aSliderReadout  n 		 !  I  			�b"�a�b 0 seteditable_ setEditable_" #�`# m  			
�_
�_ boovfals�`  �a  ! o  			�^�^  0 asliderreadout aSliderReadout $%$ n 		&'& I  		�](�\�] 0 setbordered_ setBordered_( )�[) m  		�Z
�Z boovfals�[  �\  ' o  		�Y�Y  0 asliderreadout aSliderReadout% *+* n 		 ,-, I  		 �X.�W�X 0 setbezeled_ setBezeled_. /�V/ m  		�U
�U boovfals�V  �W  - o  		�T�T  0 asliderreadout aSliderReadout+ 010 n 	!	)232 I  	$	)�S4�R�S 0 
sethidden_ 
setHidden_4 5�Q5 m  	$	%�P
�P boovtrue�Q  �R  3 o  	!	$�O�O  0 asliderreadout aSliderReadout1 676 n 	*	2898 I  	-	2�N:�M�N *0 setdrawsbackground_ setDrawsBackground_: ;�L; m  	-	.�K
�K boovfals�L  �M  9 o  	*	-�J�J  0 asliderreadout aSliderReadout7 <=< n 	3	H>?> I  	6	H�I@�H�I 0 setfont_ setFont_@ A�GA n 	6	DBCB I  	=	D�FD�E�F &0 systemfontofsize_ systemFontOfSize_D E�DE m  	=	@�C�C 	�D  �E  C n 	6	=FGF o  	9	=�B�B 0 nsfont NSFontG m  	6	9�A
�A misccura�G  �H  ? o  	3	6�@�@  0 asliderreadout aSliderReadout= HIH n 	I	SJKJ I  	L	S�?L�>�? 0 addsubview_ addSubview_L M�=M o  	L	O�<�<  0 asliderreadout aSliderReadout�=  �>  K o  	I	L�;�; 0 aview aViewI NON l 	T	T�:�9�8�:  �9  �8  O PQP l 	T	T�7RS�7  R - ' set rowYstart to rowYstart + rowHeight   S �TT N   s e t   r o w Y s t a r t   t o   r o w Y s t a r t   +   r o w H e i g h tQ UVU l 	T	T�6�5�4�6  �5  �4  V WXW l 	T	T�3YZ�3  Y   do it as a menu instead   Z �[[ 0   d o   i t   a s   a   m e n u   i n s t e a dX \]\ l 	T	T�2^_�2  ^   lifetime separator   _ �`` &   l i f e t i m e   s e p a r a t o r] aba r  	T	pcdc n 	T	lefe I  	_	l�1g�0�1 J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_g hih m  	_	bjj �kk  I n t e n s i t y :i lml m  	b	e�/
�/ 
msngm n�.n m  	e	hoo �pp  �.  �0  f n 	T	_qrq I  	[	_�-�,�+�- 	0 alloc  �,  �+  r n 	T	[sts o  	W	[�*�* 0 
nsmenuitem 
NSMenuItemt m  	T	W�)
�) misccurad o      �(�(  0 amenuintensity aMenuIntensityb uvu O  	q	�wxw k  	w	�yy z{z I  	w	}�'|�&�' 0 
settarget_ 
setTarget_| }�%}  f  	x	y�%  �&  { ~~ I  	~	��$��#�$ 0 setenabled_ setEnabled_� ��"� m  		��!
�! boovfals�"  �#   �� � I  	�	����� 0 setfont_ setFont_� ��� n 	�	���� I  	�	����� .0 boldsystemfontofsize_ boldSystemFontOfSize_� ��� m  	�	��� 	�  �  � n 	�	���� o  	�	��� 0 nsfont NSFont� m  	�	��
� misccura�  �  �   x o  	q	t��  0 amenuintensity aMenuIntensityv ��� n 	�	���� I  	�	����� *0 insertitem_atindex_ insertItem_atIndex_� ��� o  	�	���  0 amenuintensity aMenuIntensity� ��� m  	�	��� �  �  � o  	�	��� 0 amenu aMenu� ��� l 	�	�����  �  �  � ��� Z  	�	������ = 	�	���� l 	�	����
� c  	�	���� n 	�	���� o  	�	��	�	 0 currentcoin currentCoin� o  	�	��� 0 appdelegate AppDelegate� m  	�	��
� 
ctxt�  �
  � m  	�	��� ���  B i t c o i n� r  	�	���� J  	�	��� ��� m  	�	���  � ��� m  	�	��� 
�  � o      �� 0 startfinish startFinish�  � r  	�	���� J  	�	��� ��� m  	�	��� � ��� m  	�	�� �  �  � o      ���� 0 startfinish startFinish� ��� r  	�	���� m  	�	����� � o      ���� 0 z  � ���� Y  	���������� k  	���� ��� r  	�
��� n 	�
��� I  	�
������� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� ��� c  	�	���� o  	�	����� 0 y  � m  	�	���
�� 
ctxt� ��� m  	�
�� ���   c h a n g e I n t e n s i t y :� ���� m  

�� ���  ��  ��  � n 	�	���� I  	�	��������� 	0 alloc  ��  ��  � n 	�	���� o  	�	����� 0 
nsmenuitem 
NSMenuItem� m  	�	���
�� misccura� o      ���� "0 amenuintensityx aMenuIntensityX� ��� l 

��������  ��  ��  � ��� O  
p��� k  
o�� ��� I  

������� 0 
settarget_ 
setTarget_� ����  f  

��  ��  � ��� I  

 ������� 0 settag_ setTag_� ���� o  

���� 0 
thisdevice 
thisDevice��  ��  � ��� Z  
!
;������ = 
!
)��� l 
!
'������ c  
!
'��� n  
!
%��� 4  
"
%���
�� 
cobj� m  
#
$���� � o  
!
"���� 0 devicetodraw deviceToDraw� m  
%
&��
�� 
long��  ��  � m  
'
(����  � I  
,
2������� 0 setenabled_ setEnabled_� ���� m  
-
.��
�� boovfals��  ��  ��  � I  
5
;������� 0 setenabled_ setEnabled_� ���� m  
6
7��
�� boovtrue��  ��  � ��� I  
<
B������� ,0 setindentationlevel_ setIndentationLevel_� ���� m  
=
>���� ��  ��  � ��� Z  
C
x������� F  
C
k��� = 
C
S��� l 
C
K������ c  
C
K��� n  
C
G��� 4  
D
G���
�� 
cobj� m  
E
F���� � o  
C
D���� 0 devicetodraw deviceToDraw� m  
G
J��
�� 
ctxt��  ��  � l 
K
R ����  c  
K
R o  
K
N���� 0 y   m  
N
Q��
�� 
ctxt��  ��  � = 
V
g l 
V
c���� c  
V
c n 
V
_	 o  
[
_���� 0 currentcoin currentCoin	 o  
V
[���� 0 appdelegate AppDelegate m  
_
b��
�� 
ctxt��  ��   m  
c
f

 �  B i t c o i n� I  
n
t��� 0 	setstate_ 	setState_ � m  
o
p�� �  �  ��  ��  �  Z  
y
��� F  
y
� = 
y
� l 
y
��� c  
y
� n  
y
 4  
z
�
� 
cobj m  
{
~�� 	 o  
y
z�� 0 devicetodraw deviceToDraw m  

��
� 
ctxt�  �   l 
�
��� c  
�
� o  
�
��� 0 y   m  
�
��
� 
ctxt�  �   = 
�
�  l 
�
�!��! c  
�
�"#" n 
�
�$%$ o  
�
��� 0 currentcoin currentCoin% o  
�
��� 0 appdelegate AppDelegate# m  
�
��
� 
ctxt�  �    m  
�
�&& �''  L i t e c o i n I  
�
��(�� 0 	setstate_ 	setState_( )�) m  
�
��� �  �  �  �   *+* l 
�
�����  �  �  + ,�, Z  
�o-.��- l 
�
�/��/ = 
�
�010 n 
�
�232 I  
�
����� 0 	isenabled 	isEnabled�  �  3 o  
�
��� "0 amenuintensityx aMenuIntensityX1 m  
�
��
� boovtrue�  �  . k  
�k44 565 r  
�
�787 n 
�
�9:9 I  
�
��;�� >0 dictionarywithobjectsandkeys_ dictionaryWithObjectsAndKeys_; <=< n 
�
�>?> I  
�
��@�� "0 menufontofsize_ menuFontOfSize_@ A�A m  
�
��� 	�  �  ? n 
�
�BCB o  
�
��� 0 nsfont NSFontC m  
�
��
� misccura= DED n 
�
�FGF o  
�
��� *0 nsfontattributename NSFontAttributeNameG m  
�
��
� misccuraE H�H m  
�
��
� 
msng�  �  : n 
�
�IJI o  
�
��� 0 nsdictionary NSDictionaryJ m  
�
��
� misccura8 o      �� 0 
attribdict 
attribDict6 KLK r  
�MNM n 
�
�OPO I  
�
��Q�� 80 initwithstring_attributes_ initWithString_attributes_Q RSR c  
�
�TUT o  
�
��� 0 y  U m  
�
��
� 
ctxtS V�V o  
�
��� 0 
attribdict 
attribDict�  �  P n 
�
�WXW I  
�
����� 	0 alloc  �  �  X n 
�
�YZY o  
�
��� 60 nsmutableattributedstring NSMutableAttributedStringZ m  
�
��
� misccuraN o      �� 0 attribtitle attribTitleL [\[ r  G]^] n C_`_ I  
C�~a�}�~ >0 dictionarywithobjectsandkeys_ dictionaryWithObjectsAndKeys_a bcb n 
5ded I  5�|f�{�| T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_f ghg ]  iji m  kk ?�333333j l l�z�yl ^  mnm o  �x�x 0 y  n l o�w�vo n  pqp 4  �ur
�u 
cobjr m  �t�t q o  �s�s 0 startfinish startFinish�w  �v  �z  �y  h sts ]  -uvu m   ww ?ٙ�����v l  ,x�r�qx \   ,yzy m   !�p�p z l !+{�o�n{ ^  !+|}| o  !$�m�m 0 y  } l $*~�l�k~ n  $*� 4  '*�j�
�j 
cobj� m  ()�i�i � o  $'�h�h 0 startfinish startFinish�l  �k  �o  �n  �r  �q  t ��� m  -.�g�g  � ��f� m  ./�e�e �f  �{  e o  
�d�d 0 nscolor NSColorc ��� n 5<��� o  8<�c�c @0 nsforegroundcolorattributename NSForegroundColorAttributeName� m  58�b
�b misccura� ��a� m  <?�`
�` 
msng�a  �}  ` n 
��� o  
�_�_ 0 nsdictionary NSDictionary� m  �^
�^ misccura^ o      �]�]  0 attribdictmore attribDictMore\ ��� n H`��� I  K`�\��[�\ ,0 addattributes_range_ addAttributes_range_� ��� o  KN�Z�Z  0 attribdictmore attribDictMore� ��Y� J  N\�� ��� m  NO�X�X  � ��W� n  OZ��� 1  VZ�V
�V 
leng� l OV��U�T� c  OV��� o  OR�S�S 0 y  � m  RU�R
�R 
ctxt�U  �T  �W  �Y  �[  � o  HK�Q�Q 0 attribtitle attribTitle� ��P� n ak��� I  dk�O��N�O *0 setattributedtitle_ setAttributedTitle_� ��M� o  dg�L�L 0 attribtitle attribTitle�M  �N  � o  ad�K�K "0 amenuintensityx aMenuIntensityX�P  �  �  �  � o  

�J�J "0 amenuintensityx aMenuIntensityX� ��� n q~��� I  t~�I��H�I *0 insertitem_atindex_ insertItem_atIndex_� ��� o  tw�G�G "0 amenuintensityx aMenuIntensityX� ��F� o  wz�E�E 0 z  �F  �H  � o  qt�D�D 0 amenu aMenu� ��C� r  ���� [  ���� o  ��B�B 0 z  � m  ���A�A � o      �@�@ 0 z  �C  �� 0 y  � l 	�	���?�>� n  	�	���� 4  	�	��=�
�= 
cobj� m  	�	��<�< � o  	�	��;�; 0 startfinish startFinish�?  �>  � l 	�	���:�9� n  	�	���� 4  	�	��8�
�8 
cobj� m  	�	��7�7 � o  	�	��6�6 0 startfinish startFinish�:  �9  ��  ��  ��  � k  ���� ��� r  ����� m  ���� ���  � o      �5�5 0 	atextbox2 	aTextbox2� ��� r  ����� m  ���� ���  � o      �4�4 0 aslider aSlider� ��3� r  ����� m  ���� ���  � o      �2�2  0 asliderreadout aSliderReadout�3  � ��� l ���1�0�/�1  �0  �/  � ��� l ���.���.  � � � now that we've created a new device, recreate all the "easy" names for all devices in case the numbering has changed.  Now that I think of it, this will likely never be needed, but you never now.  Perhaps it's good practice nonetheless.   � ����   n o w   t h a t   w e ' v e   c r e a t e d   a   n e w   d e v i c e ,   r e c r e a t e   a l l   t h e   " e a s y "   n a m e s   f o r   a l l   d e v i c e s   i n   c a s e   t h e   n u m b e r i n g   h a s   c h a n g e d .     N o w   t h a t   I   t h i n k   o f   i t ,   t h i s   w i l l   l i k e l y   n e v e r   b e   n e e d e d ,   b u t   y o u   n e v e r   n o w .     P e r h a p s   i t ' s   g o o d   p r a c t i c e   n o n e t h e l e s s .� ��� Y  ����-���,� n ����� I  ���+��*�+ 0 setavar____ setaVar____� ��� m  ���� ���  d e v i c e s� ��� J  ���� ��� o  ���)�) 0 x  � ��(� m  ���'�' �(  � ��� I  ���&��%�&  0 getdevicename_ getDeviceName_� ��$� o  ���#�# 0 x  �$  �%  � ��"� m  ���� ���  t e x t�"  �*  � o  ���!�! 0 appdelegate AppDelegate�- 0 x  � m  ��� �  � n  ����� m  ���
� 
nmbr� n ����� 2 ���
� 
cobj� n ����� o  ����  0 myprefsdevices myPrefsDevices� o  ���� 0 appdelegate AppDelegate�,  � ��� l ������  �  �  � ��� n �-��� I  �-���� 0 setavar____ setaVar____� ��� m  ���� ���  d e v i c e s� ��� J  ���� ��� o  ���� 0 
thisdevice 
thisDevice� ��� m  ���� &�  �    J  �$  o  ���� 0 aview aView  o  ���� 0 areadout aReadout  o  ���� 0 	acheckbox 	aCheckbox 	
	 o  ���� 0 atextbox aTextbox
  o  ���� 0 apopupbutton aPopupButton  o  ��� 0 amenu aMenu  o  �� 0 	atextbox2 	aTextbox2  o  �� 0 aslider aSlider  o  ��  0 asliderreadout aSliderReadout  o  �
�
 0 amenuaccepted aMenuAccepted  o  �	�	 0 amenurejected aMenuRejected  o  �� 0 amenuhwerrors aMenuHWerrors  o  �� .0 amenulifetimeaccepted aMenuLifetimeAccepted  o  �� .0 amenulifetimerejected aMenuLifetimeRejected   o  �� .0 amenulifetimehwerrors aMenuLifetimeHWerrors  !�! o   �� 0 amenuutility aMenuUtility�   "�" m  $'## �$$  l i s t�  �  � o  ���� 0 appdelegate AppDelegate� %� % l ..��������  ��  ��  �   � R      ��&��
�� .ascrerr ****      � ****& o      ���� 0 err  ��  � k  7c'' ()( I  7\��*���� 
0 msglog  * +,+ b  8U-.- b  8Q/0/ c  8M121 b  8I343 m  8;55 �66 B E r r o r   c r e a t i n g   U I   f o r   t h e   d e v i c e  4 n  ;H787 4  EH��9
�� 
cobj9 m  FG���� 8 n  ;E:;: 4  BE��<
�� 
cobj< o  CD���� 0 
thisdevice 
thisDevice; n ;B=>= o  @B����  0 myprefsdevices myPrefsDevices> o  ;@���� 0 appdelegate AppDelegate2 m  IL��
�� 
ctxt0 m  MP?? �@@  :. o  QT���� 0 err  , A��A m  UXBB �CC  w a r n i n g��  ��  ) D��D L  ]cEE c  ]bFGF m  ]^��
�� boovfalsG m  ^a��
�� 
bool��  � H��H l dd��������  ��  ��  ��  < IJI l     ��������  ��  ��  J KLK i   S VMNM I      ��O���� :0 checkfirstintensitywarning_ checkFirstIntensityWarning_O P��P o      ���� 0 anint anInt��  ��  N k     �QQ RSR l     ��������  ��  ��  S TUT r     VWV c     XYX o     ���� 0 anint anIntY m    ��
�� 
ctxtW o      ���� 0 anint anIntU Z[Z l   ��������  ��  ��  [ \]\ Z    �^_����^ >   	`a` o    ���� 0 anint anInta m    bb �cc  d_ k    �dd efe l   ��������  ��  ��  f ghg r    iji c    klk o    ���� 0 anint anIntl m    ��
�� 
longj o      ���� 0 anint anInth mnm l   ��������  ��  ��  n opo Z    Qqrs��q =   tut l   v����v c    wxw n   yzy o    ���� 0 currentcoin currentCoinz o    ���� 0 appdelegate AppDelegatex m    ��
�� 
ctxt��  ��  u m    {{ �||  B i t c o i nr Z     .}~����} B    #� o     !���� 0 anint anInt� m   ! "���� ~ L   & *�� c   & )��� m   & '��
�� boovtrue� m   ' (��
�� 
bool��  ��  s ��� =  1 <��� l  1 :���� c   1 :��� n  1 8��� o   6 8�� 0 currentcoin currentCoin� o   1 6�� 0 appdelegate AppDelegate� m   8 9�
� 
ctxt�  �  � m   : ;�� ���  L i t e c o i n� ��� Z   ? M����� B  ? B��� o   ? @�� 0 anint anInt� m   @ A�� � L   E I�� c   E H��� m   E F�
� boovtrue� m   F G�
� 
bool�  �  �  ��  p ��� Z   R ������ =  R `��� l  R ^���� c   R ^��� l  R \���� n   R \��� 4   Y \��
� 
cobj� m   Z [�� � n  R Y��� o   W Y��  0 myprefsgeneral myPrefsGeneral� o   R W�� 0 appdelegate AppDelegate�  �  � m   \ ]�
� 
bool�  �  � m   ^ _�
� boovtrue� L   c e�� m   c d�
� boovtrue�  � k   h ��� ��� Q   h ����� r   k ���� I  k ����
� .sysodlogaskr        TEXT� b   k r��� b   k p��� b   k n��� m   k l�� ���� H i g h e r   i n t e n s i t i e s   m a y   s l o w   y o u r   c o m p u t e r   d o w n   c o n s i d e r a b l y ,   m a k i n g   i t   a p p e a r   t o   e v e n   f r e e z e .     I t   i s   r e c o m m e n d e d   t h a t   y o u   i n c r e m e n t   i n t e n s i t i e s   g r a d u a l l y   u n t i l   y o u   f i n d   t h e   s e t t i n g   y o u ' r e   c o m f o r t a b l e   w i t h .� o   l m�
� 
ret � o   n o�
� 
ret � m   p q�� ��� 4 W o u l d   y o u   l i k e   t o   p r o c e e d ?� ���
� 
btns� J   s �� ��� m   s v�� ���  C a n c e l� ��� b   v }��� m   v y�� ��� " S e t   i n t e n s i t y   t o  � l  y |���� c   y |��� o   y z�� 0 anint anInt� m   z {�
� 
ctxt�  �  �  � ���
� 
dflt� m   � ��� � ���
� 
disp� m   � ��
� stic   �  � o      �� 0 	thisreply 	thisReply� R      ���
� .ascrerr ****      � ****� o      �� 0 err  �  � L   � ��� c   � ���� m   � ��
� boovfals� m   � ��
� 
bool� ��� Z   � ������ =  � ���� n   � ���� 1   � ��
� 
bhit� o   � ����� 0 	thisreply 	thisReply� l  � ������� b   � ���� m   � ��� ��� " S e t   i n t e n s i t y   t o  � l  � ������� c   � ���� o   � ����� 0 anint anInt� m   � ���
�� 
ctxt��  ��  ��  ��  � k   � ��� ��� n  � ���� I   � �������� 0 setavar____ setaVar____� ��� m   � ��� ���  g e n e r a l� ��� m   � ����� � ��� m   � ���
�� boovtrue� ���� m   � ��� ���  b o o l e a n��  ��  � o   � ����� 0 appdelegate AppDelegate� ���� L   � ��� c   � ���� m   � ���
�� boovtrue� m   � ���
�� 
bool��  �  � L   � ��� c   � ���� m   � ��
� boovfals� m   � ��~
�~ 
bool�  �  ��  ��  ] ��}� l  � ��|�{�z�|  �{  �z  �}  L ��� l     �y�x�w�y  �x  �w  � ��� i   W Z��� I      �v �u�v $0 changeintensity_ changeIntensity_  �t o      �s�s 
0 sender  �t  �u  � k    �  l     �r�q�p�r  �q  �p    Z     �o�n =    	
	 I     
�m�l�m :0 checkfirstintensitywarning_ checkFirstIntensityWarning_ �k c     n    o    �j�j 	0 title   o    �i�i 
0 sender   m    �h
�h 
ctxt�k  �l  
 m   
 �g
�g boovfals L    �f�f  �o  �n    l   �e�d�c�e  �d  �c    l   �b�b   !  dd(sender's title as text)    � 6   d d ( s e n d e r ' s   t i t l e   a s   t e x t )  l   �a�`�_�a  �`  �_    l   �^�^   #  save the new intensity value    � :   s a v e   t h e   n e w   i n t e n s i t y   v a l u e   Z   g!"#�]! =   !$%$ l   &�\�[& c    '(' n   )*) o    �Z�Z 0 currentcoin currentCoin* o    �Y�Y 0 appdelegate AppDelegate( m    �X
�X 
ctxt�\  �[  % m     ++ �,,  B i t c o i n" k   $ �-- ./. Z   $ �01230 n  $ -454 I   ) -�W�V�U�W (0 isoptionkeypressed isOptionKeyPressed�V  �U  5 o   $ )�T�T 0 appdelegate AppDelegate1 n  0 H676 I   5 H�S8�R�S 0 setavar____ setaVar____8 9:9 m   5 6;; �<<  d e v i c e s: =>= J   6 >?? @A@ c   6 ;BCB n  6 9DED o   7 9�Q�Q 0 tag  E o   6 7�P�P 
0 sender  C m   9 :�O
�O 
longA F�NF m   ; <�M�M �N  > GHG c   > CIJI n  > AKLK o   ? A�L�L 	0 title  L o   > ?�K�K 
0 sender  J m   A B�J
�J 
ctxtH M�IM m   C DNN �OO  t e x t�I  �R  7 o   0 5�H�H 0 appdelegate AppDelegate2 PQP A  K RRSR l  K PT�G�FT c   K PUVU n  K NWXW o   L N�E�E 	0 title  X o   K L�D�D 
0 sender  V m   N O�C
�C 
long�G  �F  S m   P Q�B�B  Q YZY n  U i[\[ I   Z i�A]�@�A 0 setavar____ setaVar____] ^_^ m   Z [`` �aa  d e v i c e s_ bcb J   [ cdd efe c   [ `ghg n  [ ^iji o   \ ^�?�? 0 tag  j o   [ \�>�> 
0 sender  h m   ^ _�=
�= 
longf k�<k m   ` a�;�; �<  c lml m   c d�:�:  m n�9n m   d eoo �pp  i n t e g e r�9  �@  \ o   U Z�8�8 0 appdelegate AppDelegateZ qrq ?  l ssts l  l qu�7�6u c   l qvwv n  l oxyx o   m o�5�5 	0 title  y o   l m�4�4 
0 sender  w m   o p�3
�3 
long�7  �6  t m   q r�2�2 
r z�1z n  v �{|{ I   { ��0}�/�0 0 setavar____ setaVar____} ~~ m   { ~�� ���  d e v i c e s ��� J   ~ ��� ��� c   ~ ���� n  ~ ���� o    ��.�. 0 tag  � o   ~ �-�- 
0 sender  � m   � ��,
�, 
long� ��+� m   � ��*�* �+  � ��� m   � ��)�) 
� ��(� m   � ��� ���  i n t e g e r�(  �/  | o   v {�'�' 0 appdelegate AppDelegate�1  3 n  � ���� I   � ��&��%�& 0 setavar____ setaVar____� ��� m   � ��� ���  d e v i c e s� ��� J   � ��� ��� c   � ���� n  � ���� o   � ��$�$ 0 tag  � o   � ��#�# 
0 sender  � m   � ��"
�" 
long� ��!� m   � �� �  �!  � ��� c   � ���� n  � ���� o   � ��� 	0 title  � o   � ��� 
0 sender  � m   � ��
� 
ctxt� ��� m   � ��� ���  t e x t�  �%  � o   � ��� 0 appdelegate AppDelegate/ ��� l  � �����  � S M dd(item 7 of item (sender's tag as integer) of AppDelegate's myPrefsDevices)   � ��� �   d d ( i t e m   7   o f   i t e m   ( s e n d e r ' s   t a g   a s   i n t e g e r )   o f   A p p D e l e g a t e ' s   m y P r e f s D e v i c e s )�  # ��� =  � ���� l  � ����� c   � ���� n  � ���� o   � ��� 0 currentcoin currentCoin� o   � ��� 0 appdelegate AppDelegate� m   � ��
� 
ctxt�  �  � m   � ��� ���  L i t e c o i n� ��� Z   �c����� n  � ���� I   � ����� (0 isoptionkeypressed isOptionKeyPressed�  �  � o   � ��� 0 appdelegate AppDelegate� n  � ���� I   � ����� 0 setavar____ setaVar____� ��� m   � ��� ���  d e v i c e s� ��� J   � ��� ��� c   � ���� n  � ���� o   � ��� 0 tag  � o   � ��� 
0 sender  � m   � ��

�
 
long� ��	� m   � ��� 	�	  � ��� c   � ���� n  � ���� o   � ��� 	0 title  � o   � ��� 
0 sender  � m   � ��
� 
ctxt� ��� m   � ��� ���  t e x t�  �  � o   � ��� 0 appdelegate AppDelegate� ��� A  � ���� l  � ����� c   � ���� n  � ���� o   � �� �  	0 title  � o   � ����� 
0 sender  � m   � ���
�� 
long�  �  � m   � ����� � ��� n  ���� I   ������� 0 setavar____ setaVar____� ��� m   �� ���  d e v i c e s� ��� J  �� ��� c  ��� n ��� o  ���� 0 tag  � o  ���� 
0 sender  � m  ��
�� 
long� ���� m  ���� 	��  � ��� m  ���� � ���� m  �� ���  i n t e g e r��  ��  � o   � ���� 0 appdelegate AppDelegate� ��� ? #��� l  ����  c   n  o  ���� 	0 title   o  ���� 
0 sender   m  ��
�� 
long��  ��  � m  "���� � �� n &B I  +B������ 0 setavar____ setaVar____ 	
	 m  +. �  d e v i c e s
  J  .8  c  .3 n .1 o  /1���� 0 tag   o  ./���� 
0 sender   m  12��
�� 
long �� m  36���� 	��    m  8;����  �� m  ;> �  i n t e g e r��  ��   o  &+���� 0 appdelegate AppDelegate��  � n Ec I  Jc������ 0 setavar____ setaVar____   m  JM!! �""  d e v i c e s  #$# J  MW%% &'& c  MR()( n MP*+* o  NP���� 0 tag  + o  MN���� 
0 sender  ) m  PQ��
�� 
long' ,��, m  RU���� 	��  $ -.- c  W\/0/ n WZ121 o  XZ���� 	0 title  2 o  WX���� 
0 sender  0 m  Z[��
�� 
ctxt. 3��3 m  \_44 �55  t e x t��  ��   o  EJ���� 0 appdelegate AppDelegate�  �]    676 l hh��������  ��  ��  7 898 l hh��:;��  : $  turn off all other checkmarks   ; �<< <   t u r n   o f f   a l l   o t h e r   c h e c k m a r k s9 =>= r  h�?@? N  h�AA l h�B����B n  h�CDC 4  ����E
�� 
cobjE m  ������ D l h�F����F l h�G����G n  h�HIH 4  z���J
�� 
cobjJ m  }����� &I l hzK����K n  hzLML 4  qz��N
�� 
cobjN l tyO����O c  tyPQP n twRSR o  uw���� 0 tag  S o  tu���� 
0 sender  Q m  wx��
�� 
long��  ��  M n hqTUT o  mq��  0 myprefsdevices myPrefsDevicesU o  hm�� 0 appdelegate AppDelegate��  ��  ��  ��  ��  ��  ��  ��  @ o      �� 0 thisitem thisItem> VWV Y  ��X�YZ�X k  ��[[ \]\ r  ��^_^ n ��`a` I  ���b�� 0 itematindex_ itemAtIndex_b c�c c  ��ded o  ���� 0 x  e m  ���
� 
long�  �  a l ��f��f n  ��ghg 4  ���i
� 
cobji m  ���� h l ��j��j l ��k��k n  ��lml 4  ���n
� 
cobjn m  ���� &m l ��o��o n  ��pqp 4  ���r
� 
cobjr l ��s��s c  ��tut n ��vwv o  ���� 0 tag  w o  ���� 
0 sender  u m  ���
� 
long�  �  q n ��xyx o  ����  0 myprefsdevices myPrefsDevicesy o  ���� 0 appdelegate AppDelegate�  �  �  �  �  �  �  �  _ o      �� 0 thismenuitem thisMenuItem] z�z n ��{|{ I  ���}�� 0 	setstate_ 	setState_} ~�~ m  ����  �  �  | o  ���� 0 thismenuitem thisMenuItem�  � 0 x  Y m  ����  Z \  ��� l ������ c  ����� n ����� I  ������ 0 numberofitems numberOfItems�  �  � o  ���� 0 thisitem thisItem� m  ���
� 
long�  �  � m  ���� �  W ��� l ������  �  �  � ��� n ����� I  ������ 0 	setstate_ 	setState_� ��� m  ���� �  �  � o  ���� 
0 sender  � ��� l ������  �  �  � ��� n ����� I  ������ 40 changeintensityinternal_ changeIntensityInternal_� ��� n ����� o  ���� 0 tag  � o  ���� 
0 sender  �  �  � o  ���� 0 appdelegate AppDelegate�  � ��� l     ��~�}�  �~  �}  � ��� i   [ ^��� I      �|��{�| 0 splitstring__ splitString__� ��� o      �z�z 0 sometext someText� ��y� o      �x�x 0 	delimiter  �y  �{  � k     *�� ��� r     ��� c     ��� o     �w�w 0 sometext someText� m    �v
�v 
ctxt� o      �u�u 0 sometext someText� ��� r    ��� c    	��� o    �t�t 0 	delimiter  � m    �s
�s 
ctxt� o      �r�r 0 	delimiter  � ��� l   �q�p�o�q  �p  �o  � ��� r    ��� n   ��� 1    �n
�n 
txdl� 1    �m
�m 
ascr� o      �l�l 0 	olddelims 	oldDelims� ��� r    ��� o    �k�k 0 	delimiter  � n     ��� 1    �j
�j 
txdl� 1    �i
�i 
ascr� ��� r    ��� c    ��� n   ��� 2   �h
�h 
citm� o    �g�g 0 sometext someText� m    �f
�f 
list� o      �e�e 0 sometext someText� ��� r     %��� o     !�d�d 0 	olddelims 	oldDelims� n     ��� 1   " $�c
�c 
txdl� 1   ! "�b
�b 
ascr� ��a� L   & *�� l  & )��`�_� c   & )��� o   & '�^�^ 0 sometext someText� m   ' (�]
�] 
list�`  �_  �a  � ��� l     �\�[�Z�\  �[  �Z  � ��� i   _ b��� I      �Y��X�Y  0 replacetext___ replaceText___� ��� o      �W�W 0 	thestring 	theString� ��� o      �V�V 0 fstring fString� ��U� o      �T�T 0 rstring rString�U  �X  � k     :�� ��� r     ��� c     ��� o     �S�S 0 	thestring 	theString� m    �R
�R 
ctxt� o      �Q�Q 0 	thestring 	theString� ��� r    ��� c    	��� o    �P�P 0 fstring fString� m    �O
�O 
ctxt� o      �N�N 0 fstring fString� ��� r    ��� c    ��� o    �M�M 0 rstring rString� m    �L
�L 
ctxt� o      �K�K 0 rstring rString� ��� l   �J�I�H�J  �I  �H  � ��� r    ��� n    ��� 1    �G
�G 
txdl� 1    �F
�F 
ascr� o      �E�E (0 current_delimiters current_Delimiters� ��� r    ��� o    �D�D 0 fstring fString� n     ��� 1    �C
�C 
txdl� 1    �B
�B 
ascr� ��� r    #��� n    !   2    !�A
�A 
citm o    �@�@ 0 	thestring 	theString� o      �?�? 0 slist sList�  r   $ ) o   $ %�>�> 0 rstring rString n      1   & (�=
�= 
txdl 1   % &�<
�< 
ascr 	 r   * /

 c   * - o   * +�;�; 0 slist sList m   + ,�:
�: 
TEXT o      �9�9 0 	newstring  	  r   0 5 o   0 1�8�8 (0 current_delimiters current_Delimiters n      1   2 4�7
�7 
txdl 1   1 2�6
�6 
ascr �5 L   6 : c   6 9 o   6 7�4�4 0 	newstring   m   7 8�3
�3 
ctxt�5  �  l     �2�1�0�2  �1  �0    i   c f I      �/�.�/ 0 
htmlify___     o      �-�- 0 	this_text    !"! o      �,�, 0 encode_url_a encode_URL_A" #�+# o      �*�* 0 encode_url_b encode_URL_B�+  �.   k     z$$ %&% r     '(' c     )*) o     �)�) 0 	this_text  * m    �(
�( 
ctxt( o      �'�' 0 	this_text  & +,+ r    -.- c    	/0/ o    �&�& 0 encode_url_a encode_URL_A0 m    �%
�% 
bool. o      �$�$ 0 encode_url_a encode_URL_A, 121 r    343 c    565 o    �#�# 0 encode_url_b encode_URL_B6 m    �"
�" 
bool4 o      �!�! 0 encode_url_b encode_URL_B2 787 l   � ���   �  �  8 9:9 r    ;<; m    == �>> H a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9< l     ?��? o      �� 0 standard_characters  �  �  : @A@ r    BCB m    DD �EE 2 $ + ! ' / ? ; & @ = # % > < { } [ ] " ~ ` ^ \ | *C l     F��F o      �� 0 url_a_chars URL_A_chars�  �  A GHG r    IJI m    KK �LL  . - _ :J l     M��M o      �� 0 url_b_chars URL_B_chars�  �  H NON r    !PQP l   R��R o    �� 0 standard_characters  �  �  Q l     S��S o      �� 0 acceptable_characters  �  �  O TUT Z  " 1VW��V =  " %XYX o   " #�� 0 encode_url_a encode_URL_AY m   # $�
� boovfalsW r   ( -Z[Z b   ( +\]\ l  ( )^�
�	^ o   ( )�� 0 acceptable_characters  �
  �	  ] l  ) *_��_ o   ) *�� 0 url_a_chars URL_A_chars�  �  [ l     `��` o      �� 0 acceptable_characters  �  �  �  �  U aba Z  2 Acd�� c =  2 5efe o   2 3���� 0 encode_url_b encode_URL_Bf m   3 4��
�� boovfalsd r   8 =ghg b   8 ;iji l  8 9k����k o   8 9���� 0 acceptable_characters  ��  ��  j l  9 :l����l o   9 :���� 0 url_b_chars URL_B_chars��  ��  h l     m����m o      ���� 0 acceptable_characters  ��  ��  �  �   b non r   B Epqp m   B Crr �ss  q l     t����t o      ���� 0 encoded_text  ��  ��  o uvu X   F uw��xw Z   V pyz��{y E  V Y|}| l  V W~����~ o   V W���� 0 acceptable_characters  ��  ��  } o   W X���� 0 	this_char  z r   \ a� l  \ _������ b   \ _��� l  \ ]������ o   \ ]���� 0 encoded_text  ��  ��  � o   ] ^���� 0 	this_char  ��  ��  � l     ������ o      ���� 0 encoded_text  ��  ��  ��  { r   d p��� c   d n��� l  d l������ b   d l��� l  d e������ o   d e���� 0 encoded_text  ��  ��  � I   e k������� 0 encode_char  � ���� o   f g���� 0 	this_char  ��  ��  ��  ��  � m   l m��
�� 
TEXT� l     ������ o      ���� 0 encoded_text  ��  ��  �� 0 	this_char  x o   I J���� 0 	this_text  v ���� L   v z�� c   v y��� l  v w������ o   v w���� 0 encoded_text  ��  ��  � m   w x��
�� 
ctxt��   ��� l     ��������  ��  ��  � ��� i   g j��� I      ������� 0 encode_char  � ���� o      ���� 0 	this_char  ��  ��  � k     K�� ��� r     ��� l    ������ l    ������ I    �����
�� .sysoctonshor       TEXT� o     ���� 0 	this_char  ��  ��  ��  ��  ��  � l     ������ o      �� 0 	ascii_num 	ASCII_num��  ��  � ��� r     ��� J    �� ��� m    	�� ���  0� ��� m   	 
�� ���  1� ��� m   
 �� ���  2� ��� m    �� ���  3� ��� m    �� ���  4� ��� m    �� ���  5� ��� m    �� ���  6� ��� m    �� ���  7� ��� m    �� ���  8� ��� m    �� ���  9� ��� m    �� ���  A� ��� m    �� ���  B� ��� m    �� ���  C� ��� m    �� ���  D� ��� m    �� ���  E� ��� m    �� ���  F�  � l     ���� o      �� 0 hex_list  �  �  � ��� r   ! /��� n   ! -��� 4   " -��
� 
cobj� l  % ,���� [   % ,��� l  % *���� _   % *��� o   % &�� 0 	ascii_num 	ASCII_num� m   & )�� �  �  � m   * +�� �  �  � l  ! "���� o   ! "�� 0 hex_list  �  �  � o      �� 0 x  � ��� r   0 >��� n   0 <��� 4   1 <� 
� 
cobj  l  4 ;�� [   4 ; l  4 9�� `   4 9 o   4 5�� 0 	ascii_num 	ASCII_num m   5 8�� �  �   m   9 :�� �  �  � l  0 1�� o   0 1�� 0 hex_list  �  �  � o      �� 0 y  � � L   ? K		 c   ? J

 l  ? F�� b   ? F b   ? D m   ? B �  % o   B C�� 0 x   o   D E�� 0 y  �  �   m   F I�
� 
TEXT�  �  l     ����  �  �    i   k n I      ���  0 makecaseupper_ makeCaseUpper_ � o      �� 0 	thestring 	theString�  �   k     �  r      c      !  o     �� 0 	thestring 	theString! m    �
� 
ctxt o      �� 0 	thestring 	theString "#" l   ����  �  �  # $%$ r    	&'& m    (( �)) 4 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z' o      �� 0 	uppercase 	UPPERCASE% *+* r   
 ,-, m   
 .. �// 4 a b c d e f g h i j k l m n o p q r s t u v w x y z- o      �� 0 	lowercase  + 010 r    232 m    44 �55   3 n     676 1    �
� 
txdl7 1    �
� 
ascr1 898 r    :;: c    <=< n    >?> 2   �
� 
citm? o    �� 0 	thestring 	theString= m    �
� 
list; o      �� 0 thewords theWords9 @A@ r    !BCB m    DD �EE  C n     FGF 1     �
� 
txdlG 1    �
� 
ascrA HIH r   " &JKJ J   " $��  K o      �� 0 newlist newListI LML X   ' �N�ON k   7 �PP QRQ r   7 <STS n   7 :UVU 2  8 :�
� 
cha V o   7 8�� 0 theword theWordT o      �� 0 chrs  R WXW l  = DYZ[Y r   = D\]\ I  = B�^�~
� .corecnte****       ****^ o   = >�}�} 0 chrs  �~  ] o      �|�| 0 nchrs NchrsZ #  get the number of characters   [ �__ :   g e t   t h e   n u m b e r   o f   c h a r a c t e r sX `a` Y   E yb�{cd�zb Z   O tef�y�xe E  O Ughg o   O P�w�w 0 	lowercase  h l  P Ti�v�ui n   P Tjkj 4   Q T�tl
�t 
cobjl o   R S�s�s 0 k Kk o   P Q�r�r 0 chrs  �v  �u  f k   X pmm non r   X fpqp I  X d�q�pr
�q .sysooffslong    ��� null�p  r �ost
�o 
psofs l  Z ^u�n�mu n   Z ^vwv 4   [ ^�lx
�l 
cobjx o   \ ]�k�k 0 k Kw o   Z [�j�j 0 chrs  �n  �m  t �iy�h
�i 
psiny o   _ `�g�g 0 	lowercase  �h  q o      �f�f 0 olc  o z�ez r   g p{|{ n   g k}~} 4   h k�d
�d 
cha  o   i j�c�c 0 olc  ~ o   g h�b�b 0 	uppercase 	UPPERCASE| n      ��� 4   l o�a�
�a 
cobj� o   m n�`�` 0 k K� o   k l�_�_ 0 chrs  �e  �y  �x  �{ 0 k Kc m   H I�^�^ d o   I J�]�] 0 nchrs Nchrs�z  a ��\� r   z ���� c   z ��� o   z {�[�[ 0 chrs  � m   { ~�Z
�Z 
TEXT� n      ���  ;   � �� o    ��Y�Y 0 newlist newList�\  � 0 theword theWordO o   * +�X�X 0 thewords theWordsM ��� r   � ���� m   � ��� ���   � n     ��� 1   � ��W
�W 
txdl� 1   � ��V
�V 
ascr� ��� r   � ���� c   � ���� o   � ��U�U 0 newlist newList� m   � ��T
�T 
TEXT� o      �S�S 0 	thestring 	theString� ��� r   � ���� m   � ��� ���  � n     ��� 1   � ��R
�R 
txdl� 1   � ��Q
�Q 
ascr� ��P� L   � ��� c   � ���� o   � ��O�O 0 	thestring 	theString� m   � ��N
�N 
ctxt�P   ��� l     �M�L�K�M  �L  �K  � ��� i   o r��� I      �J��I�J  0 getdevicename_ getDeviceName_� ��H� o      �G�G 0 
thisdevice 
thisDevice�H  �I  � k     ��� ��� r     ��� c     ��� o     �F�F 0 
thisdevice 
thisDevice� m    �E
�E 
long� o      �D�D 0 
thisdevice 
thisDevice� ��� l   �C�B�A�C  �B  �A  � ��� l   �@���@  � 5 / does this device have the same name as others?   � ��� ^   d o e s   t h i s   d e v i c e   h a v e   t h e   s a m e   n a m e   a s   o t h e r s ?� ��� r    	��� m    �?
�? boovfals� o      �>�> &0 multiplesamenames multipleSameNames� ��� Y   
 q��=���<� Z    l���;�:� >   &��� l   "��9�8� c    "��� o     �7�7 0 x  � m     !�6
�6 
ctxt�9  �8  � l  " %��5�4� c   " %��� o   " #�3�3 0 
thisdevice 
thisDevice� m   # $�2
�2 
ctxt�5  �4  � Z   ) h���1�0� F   ) ^��� l  ) H��/�.� =  ) H��� l  ) 8��-�,� c   ) 8��� n   ) 6��� 4   3 6�+�
�+ 
cobj� m   4 5�*�* � l  ) 3��)�(� n   ) 3��� 4   0 3�'�
�' 
cobj� o   1 2�&�& 0 x  � n  ) 0��� o   . 0�%�%  0 myprefsdevices myPrefsDevices� o   ) .�$�$ 0 appdelegate AppDelegate�)  �(  � m   6 7�#
�# 
ctxt�-  �,  � l  8 G��"�!� c   8 G��� n   8 E��� 4   B E� �
�  
cobj� m   C D�� � l  8 B���� n   8 B��� 4   ? B��
� 
cobj� o   @ A�� 0 
thisdevice 
thisDevice� n  8 ?��� o   = ?��  0 myprefsdevices myPrefsDevices� o   8 =�� 0 appdelegate AppDelegate�  �  � m   E F�
� 
ctxt�"  �!  �/  �.  � l  K \���� =  K \��� l  K Z���� c   K Z��� n   K X��� 4   U X��
� 
cobj� m   V W�� � l  K U���� n   K U��� 4   R U��
� 
cobj� o   S T�� 0 x  � n  K R��� o   P R��  0 myprefsdevices myPrefsDevices� o   K P�� 0 appdelegate AppDelegate�  �  � m   X Y�
� 
bool�  �  � m   Z [�

�
 boovtrue�  �  � r   a d��� m   a b�	
�	 boovtrue� o      �� &0 multiplesamenames multipleSameNames�1  �0  �;  �:  �= 0 x  � m    �� � l   ���� n    ��� m    �
� 
nmbr� n      2   �
� 
cobj n    o    ��  0 myprefsdevices myPrefsDevices o    �� 0 appdelegate AppDelegate�  �  �<  �  l  r r� �����   ��  ��    Z   r �	��
 >  r � l  r ����� c   r � n   r  4   | ��
�� 
cobj m   } ~����  l  r |���� n   r | 4   y |��
�� 
cobj o   z {���� 0 
thisdevice 
thisDevice n  r y o   w y����  0 myprefsdevices myPrefsDevices o   r w���� 0 appdelegate AppDelegate��  ��   m    ���
�� 
ctxt��  ��   m   � � �  	 r   � � c   � � n   � �  4   � ���!
�� 
cobj! m   � �����   l  � �"����" n   � �#$# 4   � ���%
�� 
cobj% o   � ����� 0 
thisdevice 
thisDevice$ n  � �&'& o   � �����  0 myprefsdevices myPrefsDevices' o   � ����� 0 appdelegate AppDelegate��  ��   m   � ���
�� 
ctxt o      ���� 0 thename theName��  
 r   � �()( c   � �*+* n   � �,-, 4   � ���.
�� 
cobj. m   � ����� - l  � �/����/ n   � �010 4   � ���2
�� 
cobj2 o   � ����� 0 
thisdevice 
thisDevice1 n  � �343 o   � �����  0 myprefsdevices myPrefsDevices4 o   � ����� 0 appdelegate AppDelegate��  ��  + m   � ���
�� 
ctxt) o      ���� 0 thename theName 565 l  � ���������  ��  ��  6 787 Z   � �9:����9 =  � �;<; o   � ����� &0 multiplesamenames multipleSameNames< m   � ���
�� boovtrue: k   � �== >?> r   � �@A@ c   � �BCB n   � �DED 4   � ���F
�� 
cobjF m   � ����� E l  � �G����G n   � �HIH 4   � ���J
�� 
cobjJ o   � ����� 0 
thisdevice 
thisDeviceI n  � �KLK o   � �����  0 myprefsdevices myPrefsDevicesL o   � ����� 0 appdelegate AppDelegate��  ��  C m   � ���
�� 
ctxtA o      ���� 0 thename theName? M��M r   � �NON b   � �PQP b   � �RSR o   � ����� 0 thename theNameS m   � �TT �UU    -  Q l  � �V����V c   � �WXW l  � �Y����Y [   � �Z[Z l  � �\����\ c   � �]^] l  � �_����_ n   � �`a` 4   � ���b
�� 
cobjb m   � ����� a l  � �c����c n   � �ded 4   � ���f
�� 
cobjf o   � ����� 0 
thisdevice 
thisDevicee n  � �ghg o   � �����  0 myprefsdevices myPrefsDevicesh o   � ����� 0 appdelegate AppDelegate��  ��  ��  ��  ^ m   � ���
�� 
long��  ��  [ m   � ����� ��  ��  X m   � ���
�� 
ctxt��  ��  O o      ���� 0 thename theName��  ��  ��  8 iji l  � ���������  ��  ��  j klk L   � �mm c   � �non o   � ����� 0 thename theNameo m   � ���
�� 
ctxtl p��p l  � ���������  ��  ��  ��  � qrq l     ��������  ��  ��  r sts i   s vuvu I      �������� "0 getsystemconfig getSystemConfig��  ��  v k     �ww xyx l     ��������  ��  ��  y z{z r     |}| J     ����  } o      ���� 0 systemconfig systemConfig{ ~~ l   ��������  ��  ��   ��� l    ����  � \ V
		 systemConfig:
		 Mac OS Version
		 Graphics card model
		 Graphics card memory
		    � ��� � 
 	 	   s y s t e m C o n f i g : 
 	 	   M a c   O S   V e r s i o n 
 	 	   G r a p h i c s   c a r d   m o d e l 
 	 	   G r a p h i c s   c a r d   m e m o r y 
 	 	  � ��� l   ����  �  �  � ��� r    ��� n    ��� 1   
 �
� 
sisv� l   
���� I   
���
� .sysosigtsirr   ��� null�  �  �  �  � n      ���  ;    � o    �� 0 systemconfig systemConfig� ��� l   ����  �  �  � ��� r    ��� I    ����  0 sendcommand___ sendCommand___� ��� m    �� ���  d e v d e t a i l s� ��� m    �� ���  � ��� m    �
� boovfals�  �  � o      �� 0 thiscard thisCard� ��� Z    0����� =    ��� l   ���� c    ��� o    �� 0 thiscard thisCard� m    �
� 
ctxt�  �  � m    �� ���  0� k   # ,�� ��� I   # *���� 
0 msglog  � ��� m   $ %�� ��� � U n a b l e   t o   d o   a   s e t t i n g s   c h e c k   u n t i l   t h e   m i n e r   i s   r u n n i n g .     P l e a s e   s e l e c t   a   p o o l   t o   c o n n e c t   t o .� ��� m   % &�� ��� 
 a l e r t�  �  � ��� l  + +����  �   return   � ���    r e t u r n�  �  �  � ��� r   1 =��� n   1 ;��� 4   8 ;��
� 
cobj� m   9 :�� 
� I   1 8���~� 0 splitstring__ splitString__� ��� o   2 3�}�} 0 thiscard thisCard� ��|� m   3 4�� ���  ,�|  �~  � o      �{�{ 0 thiscard thisCard� ��� r   > J��� n   > H��� 4   E H�z�
�z 
cobj� m   F G�y�y � I   > E�x��w�x 0 splitstring__ splitString__� ��� o   ? @�v�v 0 thiscard thisCard� ��u� m   @ A�� ���  =�u  �w  � o      �t�t 0 thiscard thisCard� ��� r   K W��� I   K U�s��r�s  0 replacetext___ replaceText___� ��� o   L M�q�q 0 thiscard thisCard� ��� m   M N�� ���   � ��p� m   N Q�� ���  �p  �r  � o      �o�o 0 thiscard thisCard� ��� r   X \��� o   X Y�n�n 0 thiscard thisCard� n      ���  ;   Z [� o   Y Z�m�m 0 systemconfig systemConfig� ��� l  ] ]�l�k�j�l  �k  �j  � ��� r   ] f��� I  ] d�i��h
�i .sysoexecTEXT���     TEXT� m   ] `�� ��� D s y s t e m _ p r o f i l e r   S P D i s p l a y s D a t a T y p e�h  � o      �g�g $0 fullsystemconfig fullSystemConfig� ��� r   g v��� c   g t��� I   g p�f��e�f 0 splitstring__ splitString__� ��� o   h i�d�d $0 fullsystemconfig fullSystemConfig� ��c� m   i l�� ���  C h i p s e t   M o d e l :  �c  �e  � m   p s�b
�b 
list� o      �a�a 	0 temp1  � ��� Y   w ���` �_� Z   � ��^�] H   � � E  � � n   � � 4   � ��\	
�\ 
cobj	 o   � ��[�[ 0 x   o   � ��Z�Z 	0 temp1   m   � �

 � 
 I n t e l k   � �  r   � � n   � � 4   � ��Y
�Y 
cpar m   � ��X�X  n   � � 4   � ��W
�W 
cobj m   � ��V�V  I   � ��U�T�U 0 splitstring__ splitString__  n   � � 4   � ��S
�S 
cobj o   � ��R�R 0 x   o   � ��Q�Q 	0 temp1   �P m   � � �  V R A M   ( T o t a l ) :  �P  �T   o      �O�O 	0 temp2    !  r   � �"#" n   � �$%$ 4   � ��N&
�N 
cobj& m   � ��M�M % I   � ��L'�K�L 0 splitstring__ splitString__' ()( o   � ��J�J 	0 temp2  ) *�I* m   � �++ �,,   �I  �K  # o      �H�H 	0 temp2  ! -�G- r   � �./. o   � ��F�F 	0 temp2  / n      010  ;   � �1 o   � ��E�E 0 systemconfig systemConfig�G  �^  �]  �` 0 x    m   z {�D�D  n   { �232 m   ~ ��C
�C 
nmbr3 n  { ~454 2  | ~�B
�B 
cobj5 o   { |�A�A 	0 temp1  �_  � 676 l  � ��@�?�>�@  �?  �>  7 898 L   � �:: c   � �;<; o   � ��=�= 0 systemconfig systemConfig< m   � ��<
�< 
list9 =�;= l  � ��:�9�8�:  �9  �8  �;  t >?> l     �7�6�5�7  �6  �5  ? @A@ i   w zBCB I      �4D�3�4 "0 cleandebugfile_ cleanDebugFile_D E�2E o      �1�1 0 thisfile thisFile�2  �3  C k     jFF GHG r     IJI c     KLK o     �0�0 0 thisfile thisFileL m    �/
�/ 
ctxtJ o      �.�. 0 thisfile thisFileH MNM Q    &OPQO k   	 RR STS I  	 �-U�,
�- .rdwropenshor       fileU o   	 
�+�+ 0 thisfile thisFile�,  T VWV r    XYX l   Z�*�)Z I   �([�'
�( .rdwrread****        ****[ o    �&�& 0 thisfile thisFile�'  �*  �)  Y o      �%�% 0 
logtoclean 
logToCleanW \�$\ I   �#]�"
�# .rdwrclosnull���     ****] o    �!�! 0 thisfile thisFile�"  �$  P R      � ��
�  .ascrerr ****      � ****�  �  Q L   $ &��  N ^_^ r   ' *`a` m   ' (bb �cc  a o      �� 0 newlog newLog_ ded Y   + ^f�gh�f Z   : Yij�ki E   : @lml n   : >non 4   ; >�p
� 
cparp o   < =�� 0 x  o o   : ;�� 0 
logtoclean 
logToCleanm m   > ?qq �rr  P a s s w o r d :j k   C Jss tut l  C C�vw�  v R L set oldDelims to AppleScript's text item delimiters -- save them for later.   w �xx �   s e t   o l d D e l i m s   t o   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   - -   s a v e   t h e m   f o r   l a t e r .u yzy l  C C�{|�  { S M set AppleScript's text item delimiters to "Password:" -- find the first one.   | �}} �   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   " P a s s w o r d : "   - -   f i n d   t h e   f i r s t   o n e .z ~~ r   C H��� b   C F��� o   C D�� 0 newlog newLog� m   D E�� ��� \ * * *   r e d a c t e d   d u e   t o   l o g i n   i n f o r m a t i o n   h e r e   * * *� o      �� 0 newlog newLog ��� l  I I����  � : 4 set AppleScript's text item delimiters to oldDelims   � ��� h   s e t   A p p l e S c r i p t ' s   t e x t   i t e m   d e l i m i t e r s   t o   o l d D e l i m s�  �  k r   M Y��� b   M W��� b   M U��� o   M N�� 0 newlog newLog� l  N T���� c   N T��� n   N R��� 4   O R��
� 
cpar� o   P Q�� 0 x  � o   N O�
�
 0 
logtoclean 
logToClean� m   R S�	
�	 
ctxt�  �  � o   U V�
� 
ret � o      �� 0 newlog newLog� 0 x  g m   . /�� h n   / 5��� m   2 4�
� 
nmbr� n  / 2��� 2  0 2�
� 
cpar� o   / 0�� 0 
logtoclean 
logToClean�  e ��� L   _ j�� c   _ i��� I   _ g��� �  0 writetofile___ writeToFile___� ��� o   ` a���� 0 newlog newLog� ��� o   a b���� 0 thisfile thisFile� ���� m   b c��
�� boovfals��  �   � m   g h��
�� 
ctxt�  A ��� l     ��������  ��  ��  � ��� i   { ~��� I      �������  0 writetofile___ writeToFile___� ��� o      ���� 0 	this_data  � ��� o      ���� 0 target_file  � ���� o      ���� 0 append_data  ��  ��  � l    o���� k     o�� ��� r     ��� c     ��� o     ���� 0 	this_data  � m    ��
�� 
ctxt� o      ���� 0 	this_data  � ��� r    ��� c    	��� o    ���� 0 target_file  � m    ��
�� 
ctxt� o      ���� 0 target_file  � ��� r    ��� c    ��� o    ���� 0 append_data  � m    ��
�� 
bool� o      ���� 0 append_data  � ���� Q    o���� k    N�� ��� r    ��� c    ��� l   ������ o    ���� 0 target_file  ��  ��  � m    ��
�� 
ctxt� l     ������ o      ���� 0 target_file  ��  ��  � ��� r    '��� I   %����
�� .rdwropenshor       file� 4    ���
�� 
file� o    ���� 0 target_file  � �����
�� 
perm� m     !��
�� boovtrue��  � l     ������ o      ���� 0 open_target_file  ��  ��  � ��� Z  ( 9������� =  ( +��� o   ( )���� 0 append_data  � m   ) *��
�� boovfals� I  . 5����
�� .rdwrseofnull���     ****� l  . /������ o   . /���� 0 open_target_file  ��  ��  � �����
�� 
set2� m   0 1����  ��  ��  ��  � ��� I  : C����
�� .rdwrwritnull���     ****� o   : ;���� 0 	this_data  � ����
�� 
refn� l  < =������ o   < =���� 0 open_target_file  ��  ��  � �����
�� 
wrat� m   > ?��
�� rdwreof ��  � ��� I  D I�����
�� .rdwrclosnull���     ****� l  D E������ o   D E�� 0 open_target_file  ��  ��  ��  � ��� L   J N�� c   J M��� m   J K�
� boovtrue� m   K L�
� 
bool�  � R      ���
� .ascrerr ****      � ****�  �  � k   V o�� ��� Q   V j���� I  Y a���
� .rdwrclosnull���     ****� 4   Y ]��
� 
file� o   [ \�� 0 target_file  �  � R      ���
� .ascrerr ****      � ****�  �  �  � ��� L   k o�� c   k n� � m   k l�
� boovfals  m   l m�
� 
bool�  ��  � - ' (string, file path as string, boolean)   � � N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n )�  l     ����  �  �    i    � I      ��� 0 dd   	�	 o      �� 0 msg  �  �   I    �
�
� .sysodlogaskr        TEXT
 o     �� 0 msg  �    l     ����  �  �    i   � � I      ��� 0 dda   � o      �� 0 msg  �  �   I    �
� .sysodlogaskr        TEXT m      � . Y o u r   m e s s a g e ,   g o o d   s i r : ��
� 
dtxt o    �� 0 msg  �   � l     ����  �  �  �  ��       ��   �� 0 	apphelper 	AppHelper � ,� 0 	apphelper 	AppHelper  ��
� misccura
� 
pcls �  N S O b j e c t "� ��!"#$%&'()*+,-./0123456789:;<=>�     ���������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m
� 
pare� 0 appdelegate AppDelegate� 0 nscolor NSColor� 0 
killminers 
killMiners� $0 lookuppassword__ lookupPassword__� "0 lookupusername_ lookupUsername_� 0 setpassword__ setPassword__� 0 
loadprefs_ 
loadPrefs_� 0 dodebug doDebug� 0 didminerdie didMinerDie� 0 checkforbug checkForBug� 0 roundnumber__ roundNumber__� 
0 msglog  � *0 gethashratelabel___ getHashRateLabel___�~  0 sendcommand___ sendCommand___�} "0 getcoinbalance_ getCoinBalance_�| .0 toggledevicefromlist_ toggleDeviceFromList_�{ 0 toggledevice_ toggleDevice_�z "0 createdeviceui_ createDeviceUI_�y :0 checkfirstintensitywarning_ checkFirstIntensityWarning_�x $0 changeintensity_ changeIntensity_�w 0 splitstring__ splitString__�v  0 replacetext___ replaceText___�u 0 
htmlify___  �t 0 encode_char  �s  0 makecaseupper_ makeCaseUpper_�r  0 getdevicename_ getDeviceName_�q "0 getsystemconfig getSystemConfig�p "0 cleandebugfile_ cleanDebugFile_�o  0 writetofile___ writeToFile___�n 0 dd  �m 0 dda  �  
� 
msng! ?? �l�k@
�l misccura
�k 
pcls@ �AA  N S C o l o r" �j F�i�hBC�g�j 0 
killminers 
killMiners�i  �h  B �f�e�f 0 x  �e 0 testme testMeC �d O X�c�b�a ` i�` q�_�d 
�c .sysoexecTEXT���     TEXT�b  �a  
�` 
cwor
�_ .sysodelanull��� ��� nmbr�g P Nk�kh  �E�O �j E�W X  hO��  Y hO ��k/%j W X  hO�j 
[OY��# �^ |�]�\DE�[�^ $0 lookuppassword__ lookupPassword__�] �ZF�Z F  �Y�X�Y 0 thispool thisPool�X 0 thisuser thisUser�\  D �W�V�U�W 0 thispool thisPool�V 0 thisuser thisUser�U 0 thispass thisPassE �T � � ��S�R�Q �
�T 
ctxt
�S .sysoexecTEXT���     TEXT�R  �Q  �[ ,��&E�O��&E�O �%�%�%�%j E�O�W 	X  �$ �P ��O�NGH�M�P "0 lookupusername_ lookupUsername_�O �LI�L I  �K�K 0 thispool thisPool�N  G �J�I�J 0 thispool thisPool�I 0 thisuser thisUserH �H � ��G ��F�E�D�C�B �
�H 
ctxt
�G .sysoexecTEXT���     TEXT�F 0 splitstring__ splitString__
�E 
cobj�D �C  �B  �M 3��&E�O $�%�%j E�O*��l+ E�O���/E�O�W 	X  	�% �A ��@�?JK�>�A 0 setpassword__ setPassword__�@ �=L�= L  �<�;�< 0 thispool thisPool�; 0 thispass thisPass�?  J �:�9�8�7�6�: 0 thispool thisPool�9 0 thispass thisPass�8 0 
chosenpool 
chosenPool�7 0 x  �6 0 err  K �5�4�3�2[dmvx�1|�0�/�.�����������-���,
�5 
ctxt�4 0 myprefspools myPrefsPools
�3 
cobj
�2 
nmbr�1 0 
bundlepath 
bundlePath
�0 .sysoexecTEXT���     TEXT�/  �.  �- 0 err  �, 
0 msglog  �>��&E�O��&E�OjvE�O Ekb  j+ �-�,Ekh b  j+ �/�k/�&�  b  j+ �/E�OY h[OY��O 6��m/�&%�%��l/�&%�%��k/�&%�%�%�%b  �,%�%j OeW �X   d��m/�&%�%��l/�&%a %��k/�&%a %j Oa ��m/�&%a %��l/�&%a %��k/�&%a %�%a %b  �,%a %j W X  *a �%a l+ Of& �+�*�)MN�(�+ 0 
loadprefs_ 
loadPrefs_�* �'O�' O  �&�& 0 
resetprefs 
resetPrefs�)  M �%�$�#�"�!� ������������% 0 
resetprefs 
resetPrefs�$ .0 defaultmyprefsgeneral defaultMyPrefsGeneral�# *0 defaultmyprefspools defaultMyPrefsPools�" (0 defaultmyprefsgpus defaultMyPrefsGPUs�! *0 defaultmyprefsfpgas defaultMyPrefsFPGAs�  *0 defaultmyprefsasics defaultMyPrefsASICs� .0 defaultmyprefsdevices defaultMyPrefsDevices� :0 defaultmyprefslifetimestats defaultMyPrefsLifetimeStats� 0 	firstboot 	firstBoot� 0 x  � &0 mydefaultpoolsbtc myDefaultPoolsBTC� &0 mydefaultpoolsltc myDefaultPoolsLTC� 0 thefile theFile� (0 defaultpoolsbtcraw defaultPoolsBTCraw� (0 defaultpoolsltcraw defaultPoolsLTCraw� 0 	olddelims 	oldDelims� 0 poolids poolIDsN }����1�*��4����
�	���������� �����
�����������������������7����T������������������������#������0��G��PWfs|������������������ ��/:��T��ju����������������%��0@K��
� 
bool� 
� misccura
� 
pcls� 0 
mainbundle 
mainBundle� :0 objectforinfodictionarykey_ objectForInfoDictionaryKey_
� 
ctxt� � 0 setavar____ setaVar____�  0 myprefsgeneral myPrefsGeneral
�
 
list�	 0 myprefspools myPrefsPools� 0 myprefsgpus myPrefsGPUs� 0 myprefsfpgas myPrefsFPGAs� 0 myprefsasics myPrefsASICs�  0 myprefsdevices myPrefsDevices� ,0 myprefslifetimestats myPrefsLifetimeStats�  0 nsuserdefaults NSUserDefaults� ,0 standarduserdefaults standardUserDefaults� &0 registerdefaults_ registerDefaults_�  0 objectforkey_ objectForKey_
�� 
cobj
�� 
nmbr�� *0 flushsettingstodisk flushSettingsToDisk�� �� 0 setcoin_ setCoin_�� 0 resourcepath resourcePath
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****
�� 
ascr
�� 
txdl
�� 
cpar
�� 
citm�� "0 defaultpoolsbtc defaultPoolsBTC�� "0 defaultpoolsltc defaultPoolsLTC�� 0 currentcoin currentCoin�� 0 setbitcoinui setBitcoinUI�� 0 setlitecoinui setLitecoinUI�� �� &0 avgscrypthashrate avgScryptHashrate�� �� 0 
currentsub 
currentSub�� 
�� .sysosigtsirr   ��� null
�� 
sicn�� 
�� �� �� �� �� �� �� 
�� 
long�� 	�� �� �� �� &�� 0 dodebug doDebug�({��&E�Ob  �����/�,�k+ �&��+ Ob  j+ �&E�Ob  j+ �&E�Ob  j+ �&E�Ob  j+ �&E�Ob  j+ �&E�Ob  j+ �&E�Ob  j+ �&E�O�a ,j+ �*��lk+ O*�lk+ O*a �lk+ O*a �lk+ O*a �lk+ O*a �lk+ O*a �lk+ O�f  �*a k+ �&b  �,FO*a k+ �&b  �,FO*a k+ �&b  a ,FO*a k+ �&b  a ,FO*a k+ �&b  a ,FO*a k+ �&b  a ,FO*a k+ �&b  a ,FOb  j+ a  -a !,� *b  j+ a  �/�&�a  �/�& 
eE�OPY hY eE�Y hO�e  p��&b  �,FO��&b  �,FO��&b  a ,FO��&b  a ,FO��&b  a ,FO��&b  a ,FO��&b  a ,FOeE�Ob  j+ "Y hOPUO �kb  j+ a  -a !,Ekh 	b  j+ a  �/a  �/�&a # \b  j+ a  �/a  a $/a %  b  a &k+ 'Y .b  j+ a  �/a  a $/a (  b  a )k+ 'Y hY h[OY��OjvE�OjvE�Ob  a *,�&a +%E�O�j ,O�j -E�O�j .Ob  a *,�&a /%E�O�j ,O�j -E�O�j .O_ 0a 1,E�Oa 2_ 0a 1,FOjE^ O Jk�a 3-a !,Ekh 	�a 3�/a 4k/�a 3�/a 4l/�a 3�/a 4m/] �v�6FO] kE^ [OY��O Jk�a 3-a !,Ekh 	�a 3�/a 4k/�a 3�/a 4l/�a 3�/a 4m/] �v�6FO] kE^ [OY��O�_ 0a 1,FO��&b  a 5,FO��&b  a 6,FOb  a 7,�&a 8  b  j+ 9Y !b  a 7,�&a :  b  j+ ;Y hOb  j+ a  a </b  a =,FOb  j+ a  a >/�&b  a ?,FOb  a @a A*j Ba C,�&a D�+ Ob  j+ a  a E/a F 	 b  j+ a  a G/a H�& )b  a Ia Eb  j+ a  a G/�&a J�+ Y Zb  j+ a  a E/a K	 b  j+ a  a G/a L �& )b  a Ma Gb  j+ a  a E/�&a N�+ Y hO3kb  j+ a  -a !,Ekh 	b  a O�a Plvja Q�+ Ob  a R�a Slvja T�+ Ob  a U�a Vlvja W�+ Ob  a X�a Ylvja Z�+ Ob  a [�a \lvja ]�+ Ob  a ^�a <lvja _�+ Ob  a `�a >lvja a�+ Ob  j+ a  �/a  a b/�&a c Ab  j+ a  �/a  a b/a d&a P b  a e�a blva Pa f�+ Y hY hOb  j+ a  �/a  a g/�&a h Ab  j+ a  �/a  a g/a d&a i b  a j�a glva ia k�+ Y hY hOb  j+ a  �/a  a l/�&e  Rb  j+ a  �/a  m/�&e  b  a m�a nlva oa p�+ Y b  a q�a nlva ra s�+ Y b  a t�a nlva ua v�+ Ob  a w�a xlvjva y�+ Ob  a z�a llvfa {�+ OP[OY��O*j+ |OP' ��^����PQ���� 0 dodebug doDebug��  ��  P  Q ������ 0 	debugmode 	debugMode
�� 
bool�� b  �,�&e  hY h( ��p����RS���� 0 didminerdie didMinerDie��  ��  R ���� 0 
pidrunning 
pidRunningS ���������������������� 0 
pidcgminer 
pidCGminer
�� 
long
�� .sysoexecTEXT���     TEXT
�� 
ctxt�� 0 minerrunning minerRunning�� 0 minerapiready minerAPIready
�� 
bool�� *0 minermissedcommands minerMissedCommands�� 80 allowedmissedminercommands allowedMissedMinerCommands�� x�b  �,�&%�%j E�O�b  �,�& fb  �,FOfb  �,FOe�&Y hOb  �,�&kb  �,FOb  �,�&b  �,�& 	e�&Y f�&OP) �������TU���� 0 checkforbug checkForBug��  ��  T 
����������� 0 telluser tellUser� 0 x  � 0 bugcheck bugCheck� 0 	userreply 	userReply� 0 q1  � 0 q2  � 0 
qresponses 
qResponses� 0 hardwareinfo hardwareInfo� 0 y  � 0 thankyou thankYouU B������$3��O��_�i������������������������������	��	��	 ��	B	l�	{��	��	�	�	��  0 myprefsdevices myPrefsDevices
� 
cobj
� 
nmbr
� 
bool� 
� 
ctxt� �  0 sendcommand___ sendCommand___� 0 splitstring__ splitString__� 
� 
doub� 0 msglog__  
� .miscactvnull��� ��� null
� 
ret 
� 
btns
� 
dflt
� 
disp
� stic   � 
� .sysodlogaskr        TEXT
� 
bhit
� 
dtxt
� stic   � 
� .sysosigtsirr   ��� null
� 
sisv
� .sysoexecTEXT���     TEXT
� 
cpar
� 
citm� 
� 
ttxt� 0 feedbacktext feedBackText� 0 
setstring_ 
setString_� *0 openfeedbackwindow_ openFeedbackWindow_���fE�O �kb  j+  �-�,Ekh b  j+  �/�m/�&e 	 b  j+  �/��/�&e �&	 b  j+  �/�l/�&� �& M*�b  j+  �/��/�&fm+ 	E�O*��l+ ��/E�O*��l+ �l/�&E�O�� 
eE�OY hOPY h[OY�hO�e �b  a a l+ O*j Oa _ %_ %a %a a a lva la a a  E�O�a ,a   �a !_ %_ %a "%a a #a $lva la %a &a a 'a ( E�Oa )_ %_ %a *%a a +a ,lva la %a -a a 'a ( E�Oa .*j /a 0,%_ %E�Oa 1j 2E�O �k�a 3-�,Ekh �a 3�/a 4 .��a 3�/[a 5\[Za 6\Z�a 3�/a 5-�,2�&%_ %E�Y hO�a 3�/a 7 .��a 3�/[a 5\[Za 6\Z�a 3�/a 5-�,2�&%_ %E�Y h[OY��O�a 8%�a 9,�&%_ %E�O�a :%�a 9,�&%E�Ob  a ;,�k+ <Ob  a =k+ >Oa ?_ %_ %a @%a a Akva ka a 'a  E�OPY hY hOP* �	���VW�� 0 roundnumber__ roundNumber__� �X� X  ��� 0 thenum theNum� 0 	decplaces 	decPlaces�  V ������ 0 thenum theNum� 0 	decplaces 	decPlaces� 0 tempnum tempNum� 0 	zerocheck 	zeroCheck� 0 x  W ����	�	��	�����
)
7�~�}�|
C
� 
long
� 
doub�  �  � 
0 msglog  � .0 hashratedecimalplaces hashRateDecimalPlaces
� 
ctxt
� .sysorondlong        doub� 
�~ 0 splitstring__ splitString__
�} 
cobj
�| 
leng� ���&E�O 
��&E�W X  *��l+ O�O��  b  �,�&E�Y hO�j  ��&j 
E�Y ��$ E�O�j 
E�O��$!�&E�O�� 1*��l+ �l/E�O �a ,E�kkh �a %�&E�[OY��Y hO�+ �{
S�z�yYZ�x�{ 
0 msglog  �z �w[�w [  �v�u�v 0 atxt aTxt�u 0 alevel aLevel�y  Y �t�s�t 0 atxt aTxt�s 0 alevel aLevelZ �r�r 0 msglog__  �x b  ��l+  , �q
c�p�o\]�n�q *0 gethashratelabel___ getHashRateLabel___�p �m^�m ^  �l�k�j�l 0 therate theRate�k 0 	withunits 	withUnits�j 0 	shortened  �o  \ �i�h�g�f�e�d�c�i 0 therate theRate�h 0 	withunits 	withUnits�g 0 	shortened  �f 0 hashrate hashRate�e 0 theunits theUnits�d 0 theshortunits theShortUnits�c 0 ratetoreturn rateToReturn] �b�a
�
�
��`�_�^�]
�
��\V[����[
�b 
doub
�a 
bool�`��_ d�^ .0 hashratedecimalplaces hashRateDecimalPlaces�] 0 roundnumber__ roundNumber__�\  B@
�[ 
ctxt�nu��&E�O��&E�O��&E�O�j  �Y hOjE�O�E�O�E�O�k B�� � kb  �,FO*�� kl+ E�Y lb  �,FO*�� ll+ E�O�E�O�E�Y ɠ� B��!� kb  �,FO*��!kl+ E�Y lb  �,FO*��!ll+ E�O�E�O�E�Y ��� B��!� kb  �,FO*��!kl+ E�Y lb  �,FO*��!ll+ E�O�E�O�E�Y =�� kb  �,FO*�kl+ E�Y lb  �,FO*�ll+ E�Oa E�Oa E�Oa E�O�e  *�jl+ a &E�O�E�Y hO�e  ��%a &Y �a &OP- �Z��Y�X_`�W�Z  0 sendcommand___ sendCommand___�Y �Va�V a  �U�T�S�U 0 thecmd theCmd�T 0 theopt theOpt�S 0 isquiet isQuiet�X  _ �R�Q�P�O�N�M�L�R 0 thecmd theCmd�Q 0 theopt theOpt�P 0 isquiet isQuiet�O 0 	theresult 	theResult�N 0 commandstring commandString�M 0 shellscript shellScript�L 0 err  ` �K�J��')�I0�H�G�FC�E�DPegn�
�K 
ctxt
�J 
bool�I  0 minercgcommloc minerCGcommLoc�H "0 minercgcommport minerCGcommPort�G 0 quietstring quietString
�F .sysoexecTEXT���     TEXT�E 0 err  �D  �W ���&E�O��&E�O��&E�O�E�O�� ��%�%�&E�Y ��&E�O�e  F 7�%�%b  �,�&%�%b  �,�&%b  �,�&%E�O�j O��&W X  ��&Y ? 1a �%a %b  �,�&%a %b  �,�&%j E�O��&W X  a �&. �C��B�Abc�@�C "0 getcoinbalance_ getCoinBalance_�B �?d�? d  �>�> 0 thisaddy thisAddy�A  b �=�<�;�= 0 thisaddy thisAddy�< 0 queryurl queryURL�; 0 thisbalance thisBalancec �:�9�����8�7�6���5��4�3�

�: 
ctxt
�9 
cha 
�8 .sysoexecTEXT���     TEXT�7  �6  �5 
0 msglog  �4 �� 
�3 
doub�@ h��&E�O��k/�  8�%E�O �%�%j E�W X  *��l+ O�O��!E�O��&OPY $��k/�  hY *a �%a %a l+ Oh/ �2�1�0ef�/�2 .0 toggledevicefromlist_ toggleDeviceFromList_�1 �.g�. g  �-�- 
0 sender  �0  e �,�, 
0 sender  f �+�*-4�)�(C�'�&JY�%�$�#�+ 	0 state  
�* 
ctxt�) 0 tag  
�( 
long�' �& 0 setavar____ setaVar____�%  0 myprefsdevices myPrefsDevices
�$ 
cobj�# 0 toggledevice_ toggleDevice_�/ Q��,�&�  b  ��,�&mlvf��+ Y b  ��,�&mlve��+ O*b  �,��,�&/�k/�&k+ OP0 �"x�!� hi��" 0 toggledevice_ toggleDevice_�! �j� j  �� 0 
thisdevice 
thisDevice�   h ���� 0 
thisdevice 
thisDevice� 0 x  � 0 usethisname useThisNamei +������������������&CFLehn�����������
'�	
� 
TEXT�  0 myprefsdevices myPrefsDevices
� 
cobj
� 
nmbr
� 
ctxt�  0 getdevicename_ getDeviceName_� 
� 
bool� 
0 msglog  � �  0 sendcommand___ sendCommand___� 0 setintensity_ setIntensity_� � � 0 setavar____ setaVar____�
 �	 *0 requestsavesettings requestSaveSettings���&E�Okb  �,�-�,Ekh b  �,�/�k/�&� �*�k+ E�Ob  �,�/��/�&�  ob  �,�/�m/�&e  0*�%�l+ O*�b  �,�/��/�&em+ Ob  �k+ Y **a �%a l+ O*a b  �,�/��/�&em+ OPY �b  �,�/��/�&a   hb  �,�/�m/�&e  +*a �%a l+ O*a b  �,�/��/�&em+ Y (*a �%a l+ O*a b  �,�/��/�&em+ Y b  �,�/��/�&a   hb  �,�/�m/�&e  +*a �%a l+ O*a b  �,�/��/�&em+ Y (*a �%a l+ O*a  b  �,�/��/�&em+ Y hOb  �,�/�m/�&e  hY 5b  a !�a "lva #a $a %+ &Ob  a '�a (lvja )a %+ &OY h[OY�Ob  j+ *OP1 �>��kl�� "0 createdeviceui_ createDeviceUI_� �m� m  �� 0 
thisdevice 
thisDevice�  k 3��� ������������������������������������������������������������������������������������������������� 0 
thisdevice 
thisDevice� 0 devicetodraw deviceToDraw�  0 
framewidth 
frameWidth�� 0 	rowheight 	rowHeight�� 0 
paddingtop 
paddingTop�� 0 paddingleft paddingLeft�� 0 paddingright paddingRight�� 0 submenuwidth submenuWidth�� $0 rowpaddingbottom rowPaddingBottom�� 0 	rowystart 	rowYstart�� 0 hashbarwidth hashbarWidth�� 0 aframe aFrame�� 0 areadoutframe aReadoutFrame��  0 acheckboxframe aCheckboxFrame��  0 atextbox2frame aTextbox2Frame�� 0 atextboxframe aTextboxFrame�� &0 apopupbuttonframe aPopupButtonFrame�� 0 asliderframe aSliderFrame�� *0 asliderreadoutframe aSliderReadoutFrame�� 0 aview aView�� 0 areadout aReadout�� 0 maxhash maxHash�� 0 	acheckbox 	aCheckbox�� 0 atextbox aTextbox�� 0 amenu aMenu�� 0 	amenuname 	aMenuName�� 0 	amenutemp 	aMenuTemp�� "0 amenutempoption aMenuTempOption�� &0 amenusessionstats aMenuSessionStats�� 0 amenuaccepted aMenuAccepted�� 0 amenurejected aMenuRejected�� 0 amenuhwerrors aMenuHWerrors�� 0 amenuutility aMenuUtility�� 0 amenulifetime aMenuLifetime�� .0 amenulifetimeaccepted aMenuLifetimeAccepted�� .0 amenulifetimerejected aMenuLifetimeRejected�� .0 amenulifetimehwerrors aMenuLifetimeHWerrors�� 0 apopupbutton aPopupButton�� 0 aslider aSlider�� 0 	atextbox2 	aTextbox2��  0 asliderreadout aSliderReadout��  0 amenuintensity aMenuIntensity�� 0 startfinish startFinish�� 0 z  �� 0 y  �� "0 amenuintensityx aMenuIntensityX�� 0 
attribdict 
attribDict�� 0 attribtitle attribTitle��  0 attribdictmore attribDictMore�� 0 x  �� 0 err  l ���������f��jm���������������������DN���������������� �)������������������������������������=@����y�������������'�2`�k��������05_r����"(-���~�}�|��{�z�y�x�jo�w���
&�v�u�t�s�r�q�pkw�o�n�m�l�k�j����i���h�#�g�f5?B
�� 
long��  0 myprefsdevices myPrefsDevices
�� 
cobj
�� 
list��  0 getdevicename_ getDeviceName_�� 
0 msglog  ��|�� �� �� �� �� ��� &
�� .corecnte****       ****
�� misccura�� 0 nsview NSView� 	0 alloc  �  0 initwithframe_ initWithFrame_� $0 nslevelindicator NSLevelIndicator�  0 setcontinuous_ setContinuous_� 0 setminvalue_ setMinValue_� 0 currentcoin currentCoin
� 
ctxt� 
� 
doub� � 0 setmaxvalue_ setMaxValue_� $0 setwarningvalue_ setWarningValue_� &0 setcriticalvalue_ setCriticalValue_� 0 cell  � R0 'nscontinuouscapacitylevelindicatorstyle 'NSContinuousCapacityLevelIndicatorStyle� 20 setlevelindicatorstyle_ setLevelIndicatorStyle_� �  0 setfloatvalue_ setFloatValue_� 0 addsubview_ addSubview_� 0 nsbutton NSButton� 0 	settitle_ 	setTitle_�  0 setbuttontype_ setButtonType_� 0 	setstate_ 	setState_� 0 nsfont NSFont� � &0 systemfontofsize_ systemFontOfSize_� 0 setfont_ setFont_� 0 settag_ setTag_� 0 
settarget_ 
setTarget_� 0 
setaction_ 
setAction_� 0 nstextfield NSTextField� *0 gethashratelabel___ getHashRateLabel___� "0 setstringvalue_ setStringValue_� 0 
blackcolor 
blackColor� 0 settextcolor_ setTextColor_� � 0 	graycolor 	grayColor� 0 seteditable_ setEditable_� 0 setbordered_ setBordered_� 0 setbezeled_ setBezeled_� *0 setdrawsbackground_ setDrawsBackground_� 0 setalignment_ setAlignment_� 
� 0 nsmenu NSMenu�  0 initwithtitle_ initWithTitle_� ,0 setautoenablesitems_ setAutoenablesItems_� 0 
nsmenuitem 
NSMenuItem� J0 #initwithtitle_action_keyequivalent_ #initWithTitle_action_keyEquivalent_� 0 additem_ addItem_� 
� 
bool� 0 roundnumber roundNumber
� 
msng� 0 setenabled_ setEnabled_� ,0 setindentationlevel_ setIndentationLevel_� 	� .0 boldsystemfontofsize_ boldSystemFontOfSize_� � � #� � � � 0 nspopupbutton NSPopUpButton� &0 nsalignminxinward NSAlignMinXInward�~ &0 setpreferrededge_ setPreferredEdge_�} 0 setpullsdown_ setPullsDown_�| 0 setmenu_ setMenu_�{ 0 nsslider NSSlider�z 0 
sethidden_ 
setHidden_�y (0 nssmallcontrolsize NSSmallControlSize�x "0 setcontrolsize_ setControlSize_�w *0 insertitem_atindex_ insertItem_atIndex_�v 0 	isenabled 	isEnabled�u 0 nsdictionary NSDictionary�t "0 menufontofsize_ menuFontOfSize_�s *0 nsfontattributename NSFontAttributeName�r >0 dictionarywithobjectsandkeys_ dictionaryWithObjectsAndKeys_�q 60 nsmutableattributedstring NSMutableAttributedString�p 80 initwithstring_attributes_ initWithString_attributes_�o �n T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_�m @0 nsforegroundcolorattributename NSForegroundColorAttributeName
�l 
leng�k ,0 addattributes_range_ addAttributes_range_�j *0 setattributedtitle_ setAttributedTitle_
�i 
nmbr�h 0 setavar____ setaVar____�g 0 err  �f  �f��&E�Ob  �,�/�&E�O*�*�k+ %�%�l+ O�E�O�E�OjE�O�E�O�E�O�E�OlE�O�E�O�E�O���/j j *a *�k+ %a %a l+ OhY hOjjlv��lvlvE�O�����lv��lvlvE�O��lv�������lvlvE�O���mlv�������lvlvE�O����a � �mlv�a  �lvlvE�O���l!��lv��lvlvE^ O�������lv��lvlvE^ O������lv��lvlvE^ O���l!���mlv��lvlvE^ Oa a ,j+ �k+ E^ Oa a ,j+ �k+ E^ O] ek+ O] jk+ Ob  a ,a &a   ��a  /a !&E^ Y (b  a ,a &a "  ��a #/a !&E^ Y hO] ] k+ $O] ] a % k+ &O] ] a ' k+ (O] a ),a a *,k+ +O] ��a ,/a !&k+ -O] ] k+ .Oa a /,j+ �k+ E^ O] *�k+ k+ 0O] mk+ 1O] ��m/�&k+ 2O] a a 3,a 4k+ 5k+ 6O] �k+ 7O] )k+ 8O] a 9k+ :O] ] k+ .Oa a ;,j+ �k+ E^ O��a ,/a !&j 2] *��a ,/a !&efm+ <a &k+ =O] b  a >,k+ ?Y $] ��a @/a &k+ =O] b  a A,k+ ?O] fk+ BO] fk+ CO] fk+ DO] fk+ EO] lk+ FO] a a 3,a Gk+ 5k+ 6O] ] k+ .Oa a H,j+ *�k+ k+ IE^ O] fk+ JOa a K,j+ *�k+ a La Mm+ NE^ O] ] k+ OO��a P/a !&j	 ��m/�&k a Q& �a a K,j+ a R*��a P/a !&kl+ S%a &a T%a Ua Vm+ NE^ O]  *)k+ 8O*fk+ WO*jk+ XUO] a a 3,a Yk+ Zk+ 6O] ] k+ OOa a K,j+ a [a \a ]m+ NE^ O]  *)k+ 8O*ek+ WO*�k+ 7O*kk+ XUO] ] k+ OY hOa a K,j+ a ^a Ua _m+ NE^ O] )k+ 8O] fk+ WO] jk+ XO] ] k+ OOa a K,j+ a `��a a/�&%a Ua bm+ NE^ O]  *)k+ 8O*fk+ WO*kk+ XUO] ] k+ OOa a K,j+ a c��a d/�&%a Ua em+ NE^ O]  *)k+ 8O*fk+ WO*kk+ XUO] ] k+ OOa a K,j+ a f���/�&%a Ua gm+ NE^ O]  *)k+ 8O*fk+ WO*kk+ XUO] ] k+ OOa a K,j+ a h��a i/�&%a Ua jm+ NE^  O]   *)k+ 8O*fk+ WO*kk+ XUO] ]  k+ OO��a k/�&j
 ��a l/�&ja Q&
 ��a m/�&ja Q&Ta a K,j+ a na Ua om+ NE^ !O] !)k+ 8O] !fk+ WO] ] !k+ OOa a K,j+ a p��a k/�&��a a/�&%a Ua qm+ NE^ "O] " *)k+ 8O*fk+ WO*kk+ XUO] ] "k+ OOa a K,j+ a r��a l/�&��a d/�&%a Ua sm+ NE^ #O] # *)k+ 8O*fk+ WO*kk+ XUO] ] #k+ OOa a K,j+ a t��a m/�&���/�&%a Ua um+ NE^ $O] $ *)k+ 8O*fk+ WO*kk+ XUO] ] $k+ OO] !a a 3,a Yk+ Zk+ 6Y a vE^ "Oa wE^ #Oa xE^ $O] a a 3,a Yk+ 5k+ 6O] a a 3,a Yk+ Zk+ 6Oa a y,j+ ] k+ E^ %O] %fk+ CO] %a a z,k+ {O] %ek+ |O] %] k+ }O] ] %k+ .O���/a ~ ha a ,j+ ] k+ E^ &O] &ek+ �O] &a ),a a �,k+ �O] ] &k+ .Oa a ;,j+ �k+ E^ 'O] 'a �k+ =O] 'fk+ BO] 'fk+ CO] 'fk+ DO] 'fk+ EO] 'kk+ FO] 'ek+ �O] 'a a 3,a Yk+ 5k+ 6O] ] 'k+ .Oa a ;,j+ ] k+ E^ (O] (���/a &k+ =O] (fk+ BO] (fk+ CO] (fk+ DO] (ek+ �O] (fk+ EO] (a a 3,a Yk+ 5k+ 6O] ] (k+ .Oa a K,j+ a �a Ua �m+ NE^ )O] ) #*)k+ 8O*fk+ WO*a a 3,a Yk+ Zk+ 6UO] ] )kl+ �Ob  a ,a &a �  ja GlvE^ *Y 
��lvE^ *OlE^ +O�] *�k/E] *�l/Ekh ,a a K,j+ ] ,a &a �a �m+ NE^ -O] -^*)k+ 8O*�k+ 7O��m/�&j  *fk+ WY *ek+ WO*kk+ XO���/a &] ,a & 	 b  a ,a &a � a Q& *kk+ 2Y hO��a Y/a &] ,a & 	 b  a ,a &a � a Q& *kk+ 2Y hO] -j+ �e  �a a �,a a 3,a Yk+ �a a �,a Um+ �E^ .Oa a �,j+ ] ,a &] .l+ �E^ /Oa a �,b  a �] ,] *�l/! a �k] ,] *�l/! jka �+ �a a �,a Um+ �E^ 0O] /] 0j] ,a &a �,lvl+ �O] -] /k+ �Y hUO] ] -] +l+ �O] +kE^ +[OY�^Y a �E^ 'Oa �E^ &Oa �E^ (O :kb  �,�-a �,Ekh 1b  a �] 1�lv*] 1k+ a �a �+ �[OY��Ob  a ���lv] ] ] ] ] %] ] '] &] (] ] ] ] "] #] $]  a ava �a �+ �OPW 3X � �*a �b  �,�/�k/%a &a �%] 2%a �l+ Ofa Q&OP2 �eN�d�cno�b�e :0 checkfirstintensitywarning_ checkFirstIntensityWarning_�d �ap�a p  �`�` 0 anint anInt�c  n �_�^�]�_ 0 anint anInt�^ 0 	thisreply 	thisReply�] 0 err  o �\b�[�Z{�Y�X��W�V�U�T��S��R���Q�P�O�N�M�L�K�J����I�H
�\ 
ctxt
�[ 
long�Z 0 currentcoin currentCoin�Y 
�X 
bool�W �V  0 myprefsgeneral myPrefsGeneral
�U 
cobj�T 
�S 
ret 
�R 
btns
�Q 
dflt
�P 
disp
�O stic   �N 
�M .sysodlogaskr        TEXT�L 0 err  �K  
�J 
bhit�I �H 0 setavar____ setaVar____�b Ԡ�&E�O�� Ơ�&E�Ob  �,�&�  �� 	e�&Y hY "b  �,�&�  �� 	e�&Y hY hOb  �,��/�&e  eY g +��%�%�%�a a ��&%lva la a a  E�W X  f�&O�a ,a ��&%  b  a �ea a + Oe�&Y f�&Y hOP3 �G��F�Eqr�D�G $0 changeintensity_ changeIntensity_�F �Cs�C s  �B�B 
0 sender  �E  q �A�@�?�>�A 
0 sender  �@ 0 thisitem thisItem�? 0 x  �> 0 thismenuitem thisMenuItemr (�=�<�;�:+�9;�8�7�6N�5�4`o�3�������2��1���0!4�/�.�-�,�+�*�)�(�= 	0 title  
�< 
ctxt�; :0 checkfirstintensitywarning_ checkFirstIntensityWarning_�: 0 currentcoin currentCoin�9 (0 isoptionkeypressed isOptionKeyPressed�8 0 tag  
�7 
long�6 �5 �4 0 setavar____ setaVar____�3 
�2 	�1 �0 �/  0 myprefsdevices myPrefsDevices
�. 
cobj�- &�, �+ 0 numberofitems numberOfItems�* 0 itematindex_ itemAtIndex_�) 0 	setstate_ 	setState_�( 40 changeintensityinternal_ changeIntensityInternal_�D�*��,�&k+ f  hY hOb  �,�&�  �b  j+  b  ��,�&�lv��,�&��+ Y d��,�&j b  ���,�&�lvj��+ Y C��,�&� b  a ��,�&�lv�a �+ Y b  a ��,�&�lv��,�&a �+ OPY �b  �,�&a   �b  j+  #b  a ��,�&a lv��,�&a �+ Y v��,�&a  !b  a ��,�&a lva a �+ Y K��,�&a  !b  a ��,�&a lva a �+ Y  b  a ��,�&a lv��,�&a �+ Y hOb  a  ,a !��,�&/a !a "/a !a #/E�O Fj�j+ $�&kkh b  a  ,a !��,�&/a !a "/a !a #/��&k+ %E�O�jk+ &[OY��O�kk+ &Ob  ��,k+ '4 �'��&�%tu�$�' 0 splitstring__ splitString__�& �#v�# v  �"�!�" 0 sometext someText�! 0 	delimiter  �%  t � ���  0 sometext someText� 0 	delimiter  � 0 	olddelims 	oldDelimsu �����
� 
ctxt
� 
ascr
� 
txdl
� 
citm
� 
list�$ +��&E�O��&E�O��,E�O���,FO��-�&E�O���,FO��&5 ����wx��  0 replacetext___ replaceText___� �y� y  ���� 0 	thestring 	theString� 0 fstring fString� 0 rstring rString�  w ������� 0 	thestring 	theString� 0 fstring fString� 0 rstring rString� (0 current_delimiters current_Delimiters� 0 slist sList� 0 	newstring  x �
�	���
�
 
ctxt
�	 
ascr
� 
txdl
� 
citm
� 
TEXT� ;��&E�O��&E�O��&E�O��,E�O���,FO��-E�O���,FO��&E�O���,FO��&6 ���z{�� 0 
htmlify___  � �|� |  � �����  0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B�  z 	�������������������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B�� 0 standard_characters  �� 0 url_a_chars URL_A_chars�� 0 url_b_chars URL_B_chars�� 0 acceptable_characters  �� 0 encoded_text  �� 0 	this_char  { ����=DKr����������
�� 
ctxt
�� 
bool
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 encode_char  
�� 
TEXT� {��&E�O��&E�O��&E�O�E�O�E�O�E�O�E�O�f  
��%E�Y hO�f  
��%E�Y hO�E�O .�[��l kh �� 
��%E�Y �*�k+ 	%�&E�[OY��O��&7 �������}~���� 0 encode_char  �� ����   ���� 0 	this_char  ��  } ������������ 0 	this_char  �� 0 	ascii_num 	ASCII_num�� 0 hex_list  �� 0 x  �� 0 y  ~ ������������������������
�� .sysoctonshor       TEXT�� 
�� 
cobj
�� 
TEXT�� L�j  E�O���������������a a vE�O�a �a "k/E�O�a �a #k/E�Oa �%�%a &8 ������������  0 makecaseupper_ makeCaseUpper_�� ����� �  ���� 0 	thestring 	theString��  � 
���������������������� 0 	thestring 	theString�� 0 	uppercase 	UPPERCASE�� 0 	lowercase  �� 0 thewords theWords�� 0 newlist newList�� 0 theword theWord�� 0 chrs  �� 0 nchrs Nchrs�� 0 k K�� 0 olc  � ��(.4��������D��������������������
�� 
ctxt
�� 
ascr
�� 
txdl
�� 
citm
�� 
list
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cha 
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
TEXT�� ���&E�O�E�O�E�O���,FO��-�&E�O���,FOjvE�O _�[��l kh ��-E�O�j E�O 3k�kh ���/ *���/�� E�O��/��/FY h[OY��O�a &�6F[OY��Oa ��,FO�a &E�Oa ��,FO��&9 ����������  0 getdevicename_ getDeviceName_� ��� �  �� 0 
thisdevice 
thisDevice�  � ����� 0 
thisdevice 
thisDevice� &0 multiplesamenames multipleSameNames� 0 x  � 0 thename theName� ��������T�
� 
long�  0 myprefsdevices myPrefsDevices
� 
cobj
� 
nmbr
� 
ctxt� 
� 
bool� � � ��&E�OfE�O fkb  �,�-�,Ekh ��&��& Db  �,�/�l/�&b  �,�/�l/�& 	 b  �,�/��/�&e �& eE�Y hY h[OY��Ob  �,�/��/�&� b  �,�/��/�&E�Y b  �,�/�l/�&E�O�e  0b  �,�/�l/�&E�O��%b  �,�/��/�&k�&%E�Y hO��&OP: �v������ "0 getsystemconfig getSystemConfig�  �  � ������� 0 systemconfig systemConfig� 0 thiscard thisCard� $0 fullsystemconfig fullSystemConfig� 	0 temp1  � 0 x  � 	0 temp2  � �����������������������
�+
� .sysosigtsirr   ��� null
� 
sisv�  0 sendcommand___ sendCommand___
� 
ctxt� 
0 msglog  � 0 splitstring__ splitString__
� 
cobj� 
�  0 replacetext___ replaceText___
� .sysoexecTEXT���     TEXT
� 
list
� 
nmbr
� 
cpar� �jvE�O*j  �,�6FO*��fm+ E�O��&�  *��l+ 	OPY hO*��l+ ��/E�O*��l+ �l/E�O*��a m+ E�O��6FOa j E�O*�a l+ a &E�O Ol��-a ,Ekh ��/a  /*��/a l+ �l/a k/E�O*�a l+ �k/E�O��6FY h[OY��O�a &OP; �C������ "0 cleandebugfile_ cleanDebugFile_� ��� �  �� 0 thisfile thisFile�  � ����� 0 thisfile thisFile� 0 
logtoclean 
logToClean� 0 newlog newLog� 0 x  � ������b��q���
� 
ctxt
� .rdwropenshor       file
� .rdwrread****        ****
� .rdwrclosnull���     ****�  �  
� 
cpar
� 
nmbr
� 
ret �  0 writetofile___ writeToFile___� k��&E�O �j O�j E�O�j W 	X  hO�E�O 2k��-�,Ekh ��/� ��%E�OPY ���/�&%�%E�[OY��O*��fm+ �&< ��������  0 writetofile___ writeToFile___� �~��~ �  �}�|�{�} 0 	this_data  �| 0 target_file  �{ 0 append_data  �  � �z�y�x�w�z 0 	this_data  �y 0 target_file  �x 0 append_data  �w 0 open_target_file  � �v�u�t�s�r�q�p�o�n�m�l�k�j�i�h
�v 
ctxt
�u 
bool
�t 
file
�s 
perm
�r .rdwropenshor       file
�q 
set2
�p .rdwrseofnull���     ****
�o 
refn
�n 
wrat
�m rdwreof �l 
�k .rdwrwritnull���     ****
�j .rdwrclosnull���     ****�i  �h  � p��&E�O��&E�O��&E�O >��&E�O*�/�el E�O�f  ��jl Y hO����� O�j Oe�&W  X   *�/j W X  hOf�&= �g�f�e���d�g 0 dd  �f �c��c �  �b�b 0 msg  �e  � �a�a 0 msg  � �`
�` .sysodlogaskr        TEXT�d �j  > �_�^�]���\�_ 0 dda  �^ �[��[ �  �Z�Z 0 msg  �]  � �Y�Y 0 msg  � �X�W
�X 
dtxt
�W .sysodlogaskr        TEXT�\ ��l  ascr  ��ޭ