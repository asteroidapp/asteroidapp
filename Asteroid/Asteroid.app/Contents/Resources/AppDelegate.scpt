FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        l     �� 	 
��   	    AppDelegate.applescript    
 �   2     A p p D e l e g a t e . a p p l e s c r i p t      l     ��  ��     
  Asteroid     �        A s t e r o i d      l     ��������  ��  ��        l     ��  ��    - '  Created by Kerry Cupit on 2013-05-01.     �   N     C r e a t e d   b y   K e r r y   C u p i t   o n   2 0 1 3 - 0 5 - 0 1 .      l     ��  ��    < 6  Copyright (c) 2013 Kerry Cupit (http://spaceman.ca/)     �   l     C o p y r i g h t   ( c )   2 0 1 3   K e r r y   C u p i t   ( h t t p : / / s p a c e m a n . c a / )      l     ��������  ��  ��         l     �� ! "��   ! F @  This program is distributed under the terms of the GNU GPL v3.    " � # # �     T h i s   p r o g r a m   i s   d i s t r i b u t e d   u n d e r   t h e   t e r m s   o f   t h e   G N U   G P L   v 3 .    $ % $ l     �� & '��   &ke  This program is free software: you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.  This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.  You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.    ' � ( (�     T h i s   p r o g r a m   i s   f r e e   s o f t w a r e :   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   e i t h e r   v e r s i o n   3   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n .     T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s .     Y o u   s h o u l d   h a v e   r e c e i v e d   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a l o n g   w i t h   t h i s   p r o g r a m .     I f   n o t ,   s e e   < h t t p : / / w w w . g n u . o r g / l i c e n s e s / > . %  ) * ) l     ��������  ��  ��   *  +�� + h     �� ,�� 0 appdelegate AppDelegate , k       - -  . / . l     ��������  ��  ��   /  0 1 0 j     �� 2
�� 
pare 2 4     �� 3
�� 
pcls 3 m     4 4 � 5 5  N S O b j e c t 1  6 7 6 l     ��������  ��  ��   7  8 9 8 l     �� : ;��   :   Parameter strings    ; � < < $   P a r a m e t e r   s t r i n g s 9  = > = j   	 �� ?�� 0 	apphelper 	AppHelper ? m   	 
��
�� 
msng >  @ A @ j    �� B��  0 minercgcommloc minerCGcommLoc B m     C C � D D  l o c a l h o s t A  E F E j    �� G�� "0 minercgcommport minerCGcommPort G m     H H � I I  4 0 3 1 F  J K J l      L M N L j    �� O�� 0 quietstring quietString O m     P P � Q Q    & >   / d e v / n u l l   & M ? 9 appended to shell commands we don't need the result from    N � R R r   a p p e n d e d   t o   s h e l l   c o m m a n d s   w e   d o n ' t   n e e d   t h e   r e s u l t   f r o m K  S T S j    �� U�� 0 minerlogfile minerLogFile U m     V V � W W  m i n e r o u t p u t . t x t T  X Y X j    �� Z�� ,0 asteroiddebuglogfile AsteroidDebugLogFile Z m     [ [ � \ \ $ A s t e r o i d _ d e b u g . t x t Y  ] ^ ] l     ��������  ��  ��   ^  _ ` _ l     �� a b��   a   Program variables    b � c c $   P r o g r a m   v a r i a b l e s `  d e d l      f g h f j    �� i�� 0 waitapistart waitAPIstart i m     j j � k k  3 0 g N H max seconds to wait after launching cgminer for API to start responding    h � l l �   m a x   s e c o n d s   t o   w a i t   a f t e r   l a u n c h i n g   c g m i n e r   f o r   A P I   t o   s t a r t   r e s p o n d i n g e  m n m l      o p q o j    "�� r�� 0 waitgpustable waitGPUstable r m    !���� 
 p � � seconds to wait before logging GPU stats (otherwise too variable at beginning) (TODO: set this to 5 seconds after API starts responding, since that what cgminer does for its own stats)    q � s sr   s e c o n d s   t o   w a i t   b e f o r e   l o g g i n g   G P U   s t a t s   ( o t h e r w i s e   t o o   v a r i a b l e   a t   b e g i n n i n g )   ( T O D O :   s e t   t h i s   t o   5   s e c o n d s   a f t e r   A P I   s t a r t s   r e s p o n d i n g ,   s i n c e   t h a t   w h a t   c g m i n e r   d o e s   f o r   i t s   o w n   s t a t s ) n  t u t l      v w x v j   # '�� y�� ,0 savesettingsinterval saveSettingsInterval y m   # &���� x w E ? seconds to wait before writing any change in prefs to the disk    x � z z ~   s e c o n d s   t o   w a i t   b e f o r e   w r i t i n g   a n y   c h a n g e   i n   p r e f s   t o   t h e   d i s k u  { | { l      } ~  } j   ( ,�� ��� ,0 balancecheckinterval balanceCheckInterval � m   ( +���� ~ N H seconds to refresh bitcoin balance (typically doesn't change too often)     � � � �   s e c o n d s   t o   r e f r e s h   b i t c o i n   b a l a n c e   ( t y p i c a l l y   d o e s n ' t   c h a n g e   t o o   o f t e n ) |  � � � l      � � � � j   - 1�� ���  0 waitlogincheck waitLoginCheck � m   - 0����  � B < seconds to wait before confirming pool login was successful    � � � � x   s e c o n d s   t o   w a i t   b e f o r e   c o n f i r m i n g   p o o l   l o g i n   w a s   s u c c e s s f u l �  � � � l      � � � � j   2 4�� ��� 80 allowedmissedminercommands allowedMissedMinerCommands � m   2 3����  � @ : number of missed API requests before we restart the miner    � � � � t   n u m b e r   o f   m i s s e d   A P I   r e q u e s t s   b e f o r e   w e   r e s t a r t   t h e   m i n e r �  � � � l      � � � � j   5 7�� ��� ,0 allowedminerrestarts allowedMinerRestarts � m   5 6����  � c ] number of times we can reboot the miner before we report an unrecoverrable error to the user    � � � � �   n u m b e r   o f   t i m e s   w e   c a n   r e b o o t   t h e   m i n e r   b e f o r e   w e   r e p o r t   a n   u n r e c o v e r r a b l e   e r r o r   t o   t h e   u s e r �  � � � l      � � � � j   8 <�� ��� 20 minerconsolelinestoshow minerConsoleLinesToShow � m   8 ;����� � 9 3 show the last number of lines in the miner console    � � � � f   s h o w   t h e   l a s t   n u m b e r   o f   l i n e s   i n   t h e   m i n e r   c o n s o l e �  � � � l      � � � � j   = A�� ��� .0 betterscryptthreshold betterScryptThreshold � m   = @ � � ?񙙙��� � k e if crowdsourced scrypt settings for this PC are better by this much, then we should recommend those!    � � � � �   i f   c r o w d s o u r c e d   s c r y p t   s e t t i n g s   f o r   t h i s   P C   a r e   b e t t e r   b y   t h i s   m u c h ,   t h e n   w e   s h o u l d   r e c o m m e n d   t h o s e ! �  � � � l      � � � � j   B H�� ��� ,0 averagescryptgetwait averageScryptGetWait � m   B E���� < � � z number of seconds to wait before we use the miner's reported average hashrate for scrypt mining to the crowdsource server    � � � � �   n u m b e r   o f   s e c o n d s   t o   w a i t   b e f o r e   w e   u s e   t h e   m i n e r ' s   r e p o r t e d   a v e r a g e   h a s h r a t e   f o r   s c r y p t   m i n i n g   t o   t h e   c r o w d s o u r c e   s e r v e r �  � � � l      � � � � j   I O�� ��� *0 scryptsettingscheck scryptSettingsCheck � m   I L����h � � � number of minutes to wait before checking for new settings on the server (if requested by the user) after the initial 1 min check when the miner starts    � � � �0   n u m b e r   o f   m i n u t e s   t o   w a i t   b e f o r e   c h e c k i n g   f o r   n e w   s e t t i n g s   o n   t h e   s e r v e r   ( i f   r e q u e s t e d   b y   t h e   u s e r )   a f t e r   t h e   i n i t i a l   1   m i n   c h e c k   w h e n   t h e   m i n e r   s t a r t s �  � � � l      � � � � j   P T�� ��� .0 hashratedecimalplaces hashRateDecimalPlaces � m   P Q����  � 4 . number of decimal places to show hashrates to    � � � � \   n u m b e r   o f   d e c i m a l   p l a c e s   t o   s h o w   h a s h r a t e s   t o �  � � � l      � � � � j   U [�� ��� (0 asteroidwebsiteurl asteroidWebsiteURL � m   U X � � � � � 4 h t t p : / / w w w . a s t e r o i d a p p . c o m �   shown in the help menu    � � � � .   s h o w n   i n   t h e   h e l p   m e n u �  � � � l      � � � � j   \ b�� ��� *0 asteroiddonationurl asteroidDonationURL � m   \ _ � � � � � T b i t c o i n : 1 8 j z h W i 8 V U 3 R t D A y E G F C a p k f t G 7 h a J y h m Y �   shown in the help menu    � � � � .   s h o w n   i n   t h e   h e l p   m e n u �  � � � j   c i�� ��� 60 mobileminersubmitstatsurl mobileMinerSubmitStatsURL � m   c f � � � � � h h t t p s : / / a p i . m o b i l e m i n e r a p p . c o m / M i n i n g S t a t i s t i c s I n p u t �  � � � j   j p�� ��� <0 mobileminerremotecommandsurl mobileMinerRemoteCommandsURL � m   j m � � � � � Z h t t p s : / / a p i . m o b i l e m i n e r a p p . c o m / R e m o t e C o m m a n d s �  � � � j   q w�� ��� ,0 mobileminerurlapikey mobileMinerURLAPIkey � m   q t � � � � �  V 8 3 6 8 3 E 0 G t 4 5 a 3 �  � � � l      � � � � j   x ~�� ��� >0 mobileminersendstatusinterval mobileMinerSendStatusInterval � m   x {���� < � @ : interval in seconds to send status updates to MobileMiner    � � � � t   i n t e r v a l   i n   s e c o n d s   t o   s e n d   s t a t u s   u p d a t e s   t o   M o b i l e M i n e r �  � � � l      � � � � j    ��� ��� F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsInterval � m    ����� < � ? 9 interval in seconds to request commands from MobileMiner    � � � � r   i n t e r v a l   i n   s e c o n d s   t o   r e q u e s t   c o m m a n d s   f r o m   M o b i l e M i n e r �  � � � l      � � � � j   � ��� ��� (0 mobileminertimeout mobileMinerTimeout � m   � �����  � 6 0 max time to wait communicating with MobileMiner    � � � � `   m a x   t i m e   t o   w a i t   c o m m u n i c a t i n g   w i t h   M o b i l e M i n e r �  � � � l      � � � � j   � ��� ��� 0 	debugmode 	debugMode � m   � ���
�� boovtrue � ) # enable special DEBUG-only features    � � � � F   e n a b l e   s p e c i a l   D E B U G - o n l y   f e a t u r e s �  � � � j   � ��� ��� $0 debugdialogsshow debugDialogsShow � m   � ���
�� boovfals �  � � � l     ��������  ��  ��   �  � � � l     �� � ��   �  
 Constants     �    C o n s t a n t s �  j   � ����� 0 
pidcgminer 
pidCGminer m   � � �    j   � ���	�� 0 resourcepath resourcePath	 m   � �

 �    j   � ����� 0 
bundlepath 
bundlePath m   � � �    j   � �����  0 tempfolderpath tempFolderPath m   � � �    l     ��������  ��  ��    l     ����     Stateful variables    � &   S t a t e f u l   v a r i a b l e s  j   � ����� 0 minerapiready minerAPIready m   � ���
�� boovfals  !  j   � ���"�� 0 getgpustats getGPUstats" m   � ���
�� boovfals! #$# j   � ���%�� 0 updatedgpus updatedGPUs% m   � ���
�� boovfals$ &'& j   � ���(��  0 savingsettings savingSettings( m   � ���
�� boovfals' )*) j   � ���+�� 0 editingpool editingPool+ J   � �����  * ,-, j   � ���.�� 0 revertstatus revertStatus. J   � �����  - /0/ j   � ���1�� "0 badpoolindicies badPoolIndicies1 J   � �����  0 232 j   � ���4�� 0 msglogalerts msgLogAlerts4 J   � �����  3 565 j   � ���7�� "0 msglogcriticals msgLogCriticals7 J   � �����  6 898 j   � ���:��  0 msglogwarnings msgLogWarnings: J   � �����  9 ;<; j   � ���=�� 0 msglognotices msgLogNotices= J   � �����  < >?> j   � ���@�� 0 	msglognum 	msgLogNum@ m   � �����  ? ABA j   � ���C�� 0 poolids poolIDsC m   � �����  B DED j   � ���F�� 0 minerrestarts minerRestartsF m   � �����  E GHG j   ��I�� *0 minermissedcommands minerMissedCommandsI m   ����  H JKJ j  	��L�� .0 includedebuginconsole includeDebugInConsoleL m  ��
�� boovfalsK MNM j  
��O�� 0 currentcoin currentCoinO m  
PP �QQ  B i t c o i nN RSR j  ��T�� 0 currentpool currentPoolT J  ����  S UVU j  ��W�� 0 	minertask 	minerTaskW m  XX �YY  V Z[Z j  "��\�� *0 checkedfirstdevices checkedFirstDevices\ m  ��
�� boovfals[ ]^] j  #'�_� 0 priormaxhash priorMaxHash_ m  #$�~�~  ^ `a` j  (-�}b�} 0 priordevices priorDevicesb J  (*�|�|  a cdc j  .2�{e�{ $0 priordevicecount priorDeviceCounte m  ./�z�z  d fgf j  38�yh�y &0 currentdevicelist currentDeviceListh J  35�x�x  g iji j  9=�wk�w 0 	firstboot 	firstBootk m  9:�v
�v boovfalsj lml l     �u�t�s�u  �t  �s  m non j  >B�rp�r 0 numgpus numGPUsp m  >?�q�q  o qrq j  CG�ps�p 0 numpgas numPGAss m  CD�o�o  r tut j  HL�nv�n 0 numasics numASICsv m  HI�m�m  u wxw l     �l�k�j�l  �k  �j  x yzy l     �i{|�i  { ( " Objective C classes and instances   | �}} D   O b j e c t i v e   C   c l a s s e s   a n d   i n s t a n c e sz ~~ l     �h���h  � ) # property NSTimer : class "NSTimer"   � ��� F   p r o p e r t y   N S T i m e r   :   c l a s s   " N S T i m e r " ��� j  MW�g��g $0 minerstatustimer minerStatusTimer� 4  MT�f�
�f 
pcls� m  OR�� ���  N S T i m e r� ��� j  Xb�e��e &0 savesettingstimer saveSettingsTimer� 4  X_�d�
�d 
pcls� m  Z]�� ���  N S T i m e r� ��� j  cm�c��c 0 donationtimer donationTimer� 4  cj�b�
�b 
pcls� m  eh�� ���  N S T i m e r� ��� j  nx�a��a *0 donationactivetimer donationActiveTimer� 4  nu�`�
�` 
pcls� m  ps�� ���  N S T i m e r� ��� j  y��_��_ &0 balancechecktimer balanceCheckTimer� 4  y��^�
�^ 
pcls� m  {~�� ���  N S T i m e r� ��� j  ���]��] $0 setpoolkilltimer setPoolKillTimer� 4  ���\�
�\ 
pcls� m  ���� ���  N S T i m e r� ��� j  ���[��[ 0 minerlogtimer minerLogTimer� 4  ���Z�
�Z 
pcls� m  ���� ���  N S T i m e r� ��� j  ���Y��Y 0 checkapitimer checkAPItimer� 4  ���X�
�X 
pcls� m  ���� ���  N S T i m e r� ��� j  ���W��W 80 averagescrypthashratetimer averageScryptHashrateTimer� 4  ���V�
�V 
pcls� m  ���� ���  N S T i m e r� ��� j  ���U��U 40 scrypthashratechecktimer scryptHashrateCheckTimer� 4  ���T�
�T 
pcls� m  ���� ���  N S T i m e r� ��� j  ���S��S (0 setstatusbacktimer setStatusBackTimer� 4  ���R�
�R 
pcls� m  ���� ���  N S T i m e r� ��� j  ���Q��Q 0 cooldowntimer cooldownTimer� 4  ���P�
�P 
pcls� m  ���� ���  N S T i m e r� ��� j  ���O��O 20 temperaturewarningtimer temperatureWarningTimer� 4  ���N�
�N 
pcls� m  ���� ���  N S T i m e r� ��� j  ���M��M 80 mobileminersendstatustimer mobileMinerSendStatusTimer� 4  ���L�
�L 
pcls� m  ���� ���  N S T i m e r� ��� j  ���K��K @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer� 4  ���J�
�J 
pcls� m  ���� ���  N S T i m e r� ��� j  ���I��I 0 bugchecktimer bugCheckTimer� 4  ���H�
�H 
pcls� m  ���� ���  N S T i m e r� ��� j  ��G��G &0 curlmmstatustimer curlMMstatusTimer� 4  ��F�
�F 
pcls� m  ��� ���  N S T i m e r� ��� j  �E��E 40 curlmmremotecommandtimer curlMMremotecommandTimer� 4  �D�
�D 
pcls� m  
�� ���  N S T i m e r� ��� j  �C��C 0 nscolor NSColor� 4  �B�
�B 
pcls� m  �� ���  N S C o l o r� ��� l     �A�@�?�A  �@  �?  � ��� l     �>���>  �   Links with NIB   � ���    L i n k s   w i t h   N I B� ��� j  "�=��= 0 
mainwindow 
mainWindow� m  �<
�< 
msng� � � j  #'�;�;  0 mainwindowview mainWindowView m  #$�:
�: 
msng   j  (,�9�9 0 	poolsheet 	poolSheet m  ()�8
�8 
msng  j  -1�7�7 0 prefswindow prefsWindow m  -.�6
�6 
msng 	 j  26�5
�5  0 feedbackwindow feedbackWindow
 m  23�4
�4 
msng	  j  7;�3�3 0 hashratebar hashRateBar m  78�2
�2 
msng  j  <@�1�1 0 hashratelabel hashRateLabel m  <=�0
�0 
msng  j  AE�/�/ 0 
statustag1 
statusTag1 m  AB�.
�. 
msng  j  FJ�-�-  0 statusspinner1 statusSpinner1 m  FG�,
�, 
msng  j  KO�+�+ 0 
statustag2 
statusTag2 m  KL�*
�* 
msng  j  PT�)�)  0 statusspinner2 statusSpinner2 m  PQ�(
�( 
msng  j  UY�'�' 0 statusview1 statusView1 m  UV�&
�& 
msng  !  j  Z^�%"�% 0 statusview2 statusView2" m  Z[�$
�$ 
msng! #$# j  _c�#%�# 0 pausenub pauseNub% m  _`�"
�" 
msng$ &'& j  dh�!(�! 0 infonub infoNub( m  de� 
�  
msng' )*) j  im�+� 0 detailtwistie detailTwistie+ m  ij�
� 
msng* ,-, j  nr�.� 0 poollist poolList. m  no�
� 
msng- /0/ j  sw�1�  0 pooleditbutton poolEditButton1 m  st�
� 
msng0 232 j  x|�4� &0 hashratelayoutbar hashRateLayoutBar4 m  xy�
� 
msng3 565 j  }��7� ,0 hashratelayoutbarber hashrateLayoutBarber7 m  }~�
� 
msng6 898 j  ���:� (0 hashratelayouttext hashrateLayoutText: m  ���
� 
msng9 ;<; j  ���=� 0 prefstoolbar prefsToolbar= m  ���
� 
msng< >?> j  ���@� 00 prefsdonateminsoptions prefsDonateMinsOptions@ m  ���
� 
msng? ABA j  ���C� (0 prefsdonateperhour prefsDonatePerHourC m  ���
� 
msngB DED j  ���F� 60 prefsdonateperhourreadout prefsDonatePerHourReadoutF m  ���
� 
msngE GHG j  ���I� <0 prefsdonateperhourreadoutpct prefsDonatePerHourReadoutPctI m  ���

�
 
msngH JKJ j  ���	L�	 D0  prefsdonateminstext_minutesevery  prefsDonateMinsText_minuteseveryL m  ���
� 
msngK MNM j  ���O� $0 prefscoinmonitor prefsCoinMonitorO m  ���
� 
msngN PQP j  ���R� $0 prefsbadgetoggle prefsBadgeToggleR m  ���
� 
msngQ STS j  ���U� .0 prefsdisablegputoggle prefsDisableGPUToggleU m  ���
� 
msngT VWV j  ���X� $0 prefsviewgeneral prefsViewGeneralX m  ��� 
�  
msngW YZY j  ����[�� &0 prefsviewlitecoin prefsViewLitecoin[ m  ����
�� 
msngZ \]\ j  ����^�� ,0 prefsviewmobileminer prefsViewMobileMiner^ m  ����
�� 
msng] _`_ j  ����a�� ,0 prefslitecointhreads prefsLitecoinThreadsa m  ����
�� 
msng` bcb j  ����d�� .0 prefslitecoinworksize prefsLitecoinWorksized m  ����
�� 
msngc efe j  ����g�� B0 prefslitecoincheckboxsendvalues prefsLitecoinCheckboxSendValuesg m  ����
�� 
msngf hih j  ����j�� @0 prefslitecoincheckboxgetvalues prefsLitecoinCheckboxGetValuesj m  ����
�� 
msngi klk j  ����m�� :0 prefslitecoinbuttonchecknow prefsLitecoinButtonCheckNowm m  ����
�� 
msngl non j  ����p�� F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreadsp m  ����
�� 
msngo qrq j  ����s�� H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksizes m  ����
�� 
msngr tut j  ����v�� 80 prefsmobileminersendstatus prefsMobileMinerSendStatusv m  ����
�� 
msngu wxw j  ����y�� J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsy m  ����
�� 
msngx z{z j  ����|�� .0 prefsmobilemineremail prefsMobileMinerEmail| m  ����
�� 
msng{ }~} j  ������ 00 prefsmobileminerappkey prefsMobileMinerAppKey m  ����
�� 
msng~ ��� j  ������� .0 intensityflexiblemenu intensityFlexibleMenu� m  ����
�� 
msng� ��� j  ������ 00 intensitymenustartstop intensityMenuStartStop� m  � ��
�� 
msng� ��� j  ����� >0 intensitymenustartcommandline intensityMenuStartCommandLine� m  ��
�� 
msng� ��� j  	����� .0 poolsheetbuttonaccept poolSheetButtonAccept� m  	
��
�� 
msng� ��� j  ����� .0 poolsheetbuttoncancel poolSheetButtonCancel� m  ��
�� 
msng� ��� j  ����� 0 poolsheetname poolSheetName� m  ��
�� 
msng� ��� j  ����� (0 poolsheetnamefixed poolSheetNameFixed� m  ��
�� 
msng� ��� j  !����� 0 poolsheeturl poolSheetURL� m  ��
�� 
msng� ��� j  "&����� 20 poolsheetworkerusername poolSheetWorkerUsername� m  "#��
�� 
msng� ��� j  '+����� 20 poolsheetworkerpassword poolSheetWorkerPassword� m  '(��
�� 
msng� ��� j  ,0����� "0 poolsheetstatus poolSheetStatus� m  ,-��
�� 
msng� ��� j  15����� (0 poolsheetcoinfixed poolSheetCoinFixed� m  12��
�� 
msng� ��� j  6:����� 0 poolsheetcoin poolSheetCoin� m  67��
�� 
msng� ��� j  ;?����� 0 feedbacktext feedBackText� m  ;<��
�� 
msng� ��� j  @D����� 0 feedbackemail feedBackEmail� m  @A��
�� 
msng� ��� j  EI����� ,0 feedbackincludeextra feedBackIncludeExtra� m  EF��
�� 
msng� ��� j  JN����� &0 feedbacktableview feedBackTableView� m  JK��
�� 
msng� ��� j  OS����� (0 feedbackbuttonsend feedBackButtonSend� m  OP��
�� 
msng� ��� j  TX����� ,0 feedbackbuttoncancel feedBackButtonCancel� m  TU��
�� 
msng� ��� j  Y]����� 20 feedbackbuttonviewdebug feedBackButtonViewDebug� m  YZ��
�� 
msng� ��� j  ^b����� 20 addresstomonitorreadout addressToMonitorReadout� m  ^_��
�� 
msng� ��� j  cg����� (0 sharestatusreadout shareStatusReadout� m  cd��
�� 
msng� ��� j  hl����� 0 	adockmenu 	aDockMenu� m  hi��
�� 
msng� ��� j  mq����� &0 dockmenustartstop dockMenuStartStop� m  mn��
�� 
msng� ��� j  rv����� (0 minerconsolewindow minerConsoleWindow� m  rs��
�� 
msng� ��� j  w{����� $0 minerconsoletext minerConsoleText� m  wx��
�� 
msng� ��� j  |������ 60 minerconsolecheckboxdebug minerConsoleCheckboxDebug� m  |}��
�� 
msng� ��� j  ������� $0 subviewintensity subviewIntensity� m  ����
�� 
msng� ��� j  ������� "0 subviewlitecoin subviewLitecoin� m  ����
�� 
msng� ��� j  ������� 0 minerlistview minerListView� m  ����
�� 
msng� ��� j  ������� $0 minerlistviewbox minerListViewBox� m  ����
�� 
msng� ��� j  ������� 0 devicesmenu devicesMenu� m  ����
�� 
msng� ��� j  ������� 20 mobileminerinfolinktext mobileMinerInfoLinkText� m  ����
�� 
msng� ��� l     ��������  ��  ��  � ��� l     ���� j  ������� 0 
timertimer 
timerTimer� m  ����         � F @ counts along with NSTimer so that we can cancel it when we want   � ��� �   c o u n t s   a l o n g   w i t h   N S T i m e r   s o   t h a t   w e   c a n   c a n c e l   i t   w h e n   w e   w a n t� ��� j  ������� 0 minerrunning minerRunning� m  ����
�� boovfals� ��� j  ������� $0 currentstatustag currentStatusTag� m  ������ � ��� j  ������� $0 currentprefpanel currentPrefPanel� m  ������ � ��� j  ������� 0 prefsviewlist prefsViewList� J  ������  � ��� j  �������  0 prefsviewsizes prefsViewSizes� J  ������  � ��� j  ������� &0 avgscrypthashrate avgScryptHashrate� m  ������  � � � l      j  ������ 0 
currentsub 
currentSub m  �� �  B a l a n c e #  "Balance", "Shares", others?    � :   " B a l a n c e " ,   " S h a r e s " ,   o t h e r s ?  	 j  ����
�� 80 defaultmainwindowframesize defaultMainWindowFrameSize
 m  ����
�� 
msng	  j  ������ 80 reenableconflictingdrivers reenableConflictingDrivers m  ����
�� boovfals  l     ��������  ��  ��    l     ����   $  Preferences and user settings    � <   P r e f e r e n c e s   a n d   u s e r   s e t t i n g s  j  �����  0 myprefsgeneral myPrefsGeneral J  �  m  �� �  c g m i n e r  m  �� �    p o c l b m !"! m  ��## �$$  f a i l o v e r" %&% m  ������  & '(' m  ������  ( )*) m  ������ * +,+ m  ��-- �..  , /0/ m  ������ 0 121 m  ������ 2 343 m  ��55 �66  4 787 m  ������  8 9:9 m  ������ : ;<; m  ������  < =>= m  ��?? �@@  > ABA m  ��CC �DD  B EFE m  ��GG �HH  F IJI m  ������ 
J KLK m  ������  L MNM m  ��OO �PP  S h a r e sN QRQ m  �SS �TT 
 0 . 9 . 3R UVU m  �
� boovfalsV WXW m  �~
�~ boovfalsX YZY m  �}
�} boovfalsZ [\[ m  �|
�| boovfals\ ]^] m  __ �``  ^ aba m  	�{
�{ boovfalsb cdc m  	
�z
�z boovfalsd efe m  
gg �hh  f iji m  kk �ll  j mnm m  oo �pp  n q�yq m  �x�x  �y   rsr j  !�wt�w 0 myprefspools myPrefsPoolst J  �v�v  s uvu j  "'�uw�u 0 myprefsgpus myPrefsGPUsw J  "$�t�t  v xyx j  (-�sz�s 0 myprefsfpgas myPrefsFPGAsz J  (*�r�r  y {|{ j  .3�q}�q 0 myprefsasics myPrefsASICs} J  .0�p�p  | ~~ j  49�o��o  0 myprefsdevices myPrefsDevices� J  46�n�n   ��� j  :A�m��m ,0 myprefslifetimestats myPrefsLifetimeStats� J  :>�� ��� m  :;�l�l  � ��k� m  ;<�j�j  �k  � ��� j  BH�i��i "0 defaultpoolsbtc defaultPoolsBTC� m  BE�� ���  � ��� j  IO�h��h "0 defaultpoolsltc defaultPoolsLTC� m  IL�� ���  � ��� l     �g�f�e�g  �f  �e  � ��� l      �d���d  ���
 Prefs to store:
 
 myPrefsGeneral
	1 preferredMiner
	2 preferredKernel
	3 poolMgmt
	4 intensity
	5 donateMins
	6 donateEveryHours
	7 addressToMonitor
	8 flexibleIntensity
	9 dockBadgeWithHashrate
	10 feedbackEmail
	11 firstTimeRunningScrypt
	12 doAutomaticScryptSettingsChecks
	13 sendMyScryptSettingsToServer
	14 cmdLineSettings
	15 scryptThreads
	16 scryptWorksize
	17 scryptIntensity
	18 scryptHashrateAverage
	19 subTextLineToStartWith
	20 releaseVersionForThesePrefs
	21 disableGPUMining
	22 twistieOpen
	23 shownDisclaimer
	24 firstIntensityWarning
	25 mobileMinerEmail
	26 mobileMinerSendStatus
	27 mobileMinerAllowRemoteControl
	28 machineName
	29 kernel
	30 mobileMinerAppKey
	31 totalHashRate
 
 myPrefsPools
	 poolName
	 poolURL
	 poolWorker
	 poolOrder -- 0 is turned off
	 poolCoinType
	 poolID
 
 myPrefsGPUs
	 gpuNum
	 gpuEnabled
	 gpuMaxHash
	 gpuAverageScryptHashrate
	 gpuScryptIntensity
	 gpuScryptThreads
	 gpuScryptWorksize
 
 myPrefsFPGAs  -- for future use
	fpgaNum
	fpgaEnabled
	fpgaMaxHash
	fpgaAverageScryptHashrate
	fpgaScryptIntensity
	fpgaScryptThreads
	fpgaScryptWorksize
 
 myPrefsASICs  -- for future use
	asicNum
	asicEnabled
	asicMaxHash
	asicAverageScryptHashrate
	asicScryptIntensity
	asicScryptThreads
	asicScryptWorksize
 
 myPrefsDevices
 1	deviceUID
 2	deviceName
 3	deviceEnabled
 4	deviceConnection (opencl or usb)
 5	deviceType (gpu, asc, pga)
 6	deviceBitcoinMaxHash
 7	deviceBitcoinIntensity
 8	deviceScryptMaxHash
 9	deviceScryptIntensity
 10	deviceScryptThreads
 11	deviceScryptWorksize
 12	deviceShown
 13	deviceTypeID
 14	deviceCurrentHashrate
 15	deviceEasyName
 16	deviceAcceptedShares
 17	deviceRejectedShares
 18	deviceHardwareErrors
 19	deviceTemperature
 20	deviceLifetimeAccepted
 21	deviceLifetimeRejected
 22	deviceLifetimeHWErrors
 23	devicesTemperatureWarningLevel
 24	devicesTemperatureWarningMode
 25	devicesTemperatureCooldown
 26	devicesAsteroidMode
 
 myPrefsLifetimeStats
	 totalHashes
	 averageLifetimeHashrate
 
    � ���~ 
   P r e f s   t o   s t o r e : 
   
   m y P r e f s G e n e r a l 
 	 1   p r e f e r r e d M i n e r 
 	 2   p r e f e r r e d K e r n e l 
 	 3   p o o l M g m t 
 	 4   i n t e n s i t y 
 	 5   d o n a t e M i n s 
 	 6   d o n a t e E v e r y H o u r s 
 	 7   a d d r e s s T o M o n i t o r 
 	 8   f l e x i b l e I n t e n s i t y 
 	 9   d o c k B a d g e W i t h H a s h r a t e 
 	 1 0   f e e d b a c k E m a i l 
 	 1 1   f i r s t T i m e R u n n i n g S c r y p t 
 	 1 2   d o A u t o m a t i c S c r y p t S e t t i n g s C h e c k s 
 	 1 3   s e n d M y S c r y p t S e t t i n g s T o S e r v e r 
 	 1 4   c m d L i n e S e t t i n g s 
 	 1 5   s c r y p t T h r e a d s 
 	 1 6   s c r y p t W o r k s i z e 
 	 1 7   s c r y p t I n t e n s i t y 
 	 1 8   s c r y p t H a s h r a t e A v e r a g e 
 	 1 9   s u b T e x t L i n e T o S t a r t W i t h 
 	 2 0   r e l e a s e V e r s i o n F o r T h e s e P r e f s 
 	 2 1   d i s a b l e G P U M i n i n g 
 	 2 2   t w i s t i e O p e n 
 	 2 3   s h o w n D i s c l a i m e r 
 	 2 4   f i r s t I n t e n s i t y W a r n i n g 
 	 2 5   m o b i l e M i n e r E m a i l 
 	 2 6   m o b i l e M i n e r S e n d S t a t u s 
 	 2 7   m o b i l e M i n e r A l l o w R e m o t e C o n t r o l 
 	 2 8   m a c h i n e N a m e 
 	 2 9   k e r n e l 
 	 3 0   m o b i l e M i n e r A p p K e y 
 	 3 1   t o t a l H a s h R a t e 
   
   m y P r e f s P o o l s 
 	   p o o l N a m e 
 	   p o o l U R L 
 	   p o o l W o r k e r 
 	   p o o l O r d e r   - -   0   i s   t u r n e d   o f f 
 	   p o o l C o i n T y p e 
 	   p o o l I D 
   
   m y P r e f s G P U s 
 	   g p u N u m 
 	   g p u E n a b l e d 
 	   g p u M a x H a s h 
 	   g p u A v e r a g e S c r y p t H a s h r a t e 
 	   g p u S c r y p t I n t e n s i t y 
 	   g p u S c r y p t T h r e a d s 
 	   g p u S c r y p t W o r k s i z e 
   
   m y P r e f s F P G A s     - -   f o r   f u t u r e   u s e 
 	 f p g a N u m 
 	 f p g a E n a b l e d 
 	 f p g a M a x H a s h 
 	 f p g a A v e r a g e S c r y p t H a s h r a t e 
 	 f p g a S c r y p t I n t e n s i t y 
 	 f p g a S c r y p t T h r e a d s 
 	 f p g a S c r y p t W o r k s i z e 
   
   m y P r e f s A S I C s     - -   f o r   f u t u r e   u s e 
 	 a s i c N u m 
 	 a s i c E n a b l e d 
 	 a s i c M a x H a s h 
 	 a s i c A v e r a g e S c r y p t H a s h r a t e 
 	 a s i c S c r y p t I n t e n s i t y 
 	 a s i c S c r y p t T h r e a d s 
 	 a s i c S c r y p t W o r k s i z e 
   
   m y P r e f s D e v i c e s 
   1 	 d e v i c e U I D 
   2 	 d e v i c e N a m e 
   3 	 d e v i c e E n a b l e d 
   4 	 d e v i c e C o n n e c t i o n   ( o p e n c l   o r   u s b ) 
   5 	 d e v i c e T y p e   ( g p u ,   a s c ,   p g a ) 
   6 	 d e v i c e B i t c o i n M a x H a s h 
   7 	 d e v i c e B i t c o i n I n t e n s i t y 
   8 	 d e v i c e S c r y p t M a x H a s h 
   9 	 d e v i c e S c r y p t I n t e n s i t y 
   1 0 	 d e v i c e S c r y p t T h r e a d s 
   1 1 	 d e v i c e S c r y p t W o r k s i z e 
   1 2 	 d e v i c e S h o w n 
   1 3 	 d e v i c e T y p e I D 
   1 4 	 d e v i c e C u r r e n t H a s h r a t e 
   1 5 	 d e v i c e E a s y N a m e 
   1 6 	 d e v i c e A c c e p t e d S h a r e s 
   1 7 	 d e v i c e R e j e c t e d S h a r e s 
   1 8 	 d e v i c e H a r d w a r e E r r o r s 
   1 9 	 d e v i c e T e m p e r a t u r e 
   2 0 	 d e v i c e L i f e t i m e A c c e p t e d 
   2 1 	 d e v i c e L i f e t i m e R e j e c t e d 
   2 2 	 d e v i c e L i f e t i m e H W E r r o r s 
   2 3 	 d e v i c e s T e m p e r a t u r e W a r n i n g L e v e l 
   2 4 	 d e v i c e s T e m p e r a t u r e W a r n i n g M o d e 
   2 5 	 d e v i c e s T e m p e r a t u r e C o o l d o w n 
   2 6 	 d e v i c e s A s t e r o i d M o d e 
   
   m y P r e f s L i f e t i m e S t a t s 
 	   t o t a l H a s h e s 
 	   a v e r a g e L i f e t i m e H a s h r a t e 
   
  � ��� l     �c�b�a�c  �b  �a  � ��� i  PS��� I      �`��_�` B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_� ��^� o      �]�] 0 anotification aNotification�^  �_  � k    ��� ��� l     �\�[�Z�\  �[  �Z  � ��� I     '�Y��X�Y 
0 msglog  � ��� b    "��� b     ��� b    ��� b    ��� m    �� ��� $ S t a r t i n g   A s t e r o i d  � l   ��W�V� c    ��� n   ��� I    �U��T�U :0 objectforinfodictionarykey_ objectForInfoDictionaryKey_� ��S� m    	�� ��� 4 C F B u n d l e S h o r t V e r s i o n S t r i n g�S  �T  � n   ��� o    �R�R 0 
mainbundle 
mainBundle� n   ��� 4    �Q�
�Q 
pcls� m    �� ���  N S B u n d l e� m    �P
�P misccura� m    �O
�O 
ctxt�W  �V  � m    �� ���    (� l   ��N�M� c    ��� n   ��� I    �L��K�L :0 objectforinfodictionarykey_ objectForInfoDictionaryKey_� ��J� m    �� ���  C F B u n d l e V e r s i o n�J  �K  � n   ��� o    �I�I 0 
mainbundle 
mainBundle� n   ��� 4    �H�
�H 
pcls� m    �� ���  N S B u n d l e� m    �G
�G misccura� m    �F
�F 
ctxt�N  �M  � m     !�� ���  ) . . .� ��E� m   " #�� ���  n o t i c e�E  �X  � ��� l  ( (�D�C�B�D  �C  �B  � ��� l  ( (�A���A  � / ) get the path to all our resource goodies   � ��� R   g e t   t h e   p a t h   t o   a l l   o u r   r e s o u r c e   g o o d i e s� ��� r   ( 9��� c   ( 3��� n  ( 1��� I   - 1�@�?�>�@ 0 resourcepath resourcePath�?  �>  � n  ( -��� o   + -�=�= 0 
mainbundle 
mainBundle� n  ( +��� o   ) +�<�< 0 nsbundle NSBundle� m   ( )�;
�; misccura� m   1 2�:
�: 
ctxt� o      �9�9 0 resourcepath resourcePath� ��� r   : K��� c   : E��� n  : C��� I   ? C�8�7�6�8 0 
bundlepath 
bundlePath�7  �6  � n  : ?��� o   = ?�5�5 0 
mainbundle 
mainBundle� n  : =��� o   ; =�4�4 0 nsbundle NSBundle� m   : ;�3
�3 misccura� m   C D�2
�2 
ctxt� o      �1�1 0 
bundlepath 
bundlePath� ��� l  L L�0�/�.�0  �/  �.  � ��� r   L e��� c   L _� � n   L ] 1   Y ]�-
�- 
psxp l  L Y�,�+ I  L Y�*
�* .earsffdralis        afdr m   L O�)
�) afdrtemp �(�'
�( 
from m   R U�&
�& fldmfldu�'  �,  �+    m   ] ^�%
�% 
ctxt� o      �$�$  0 tempfolderpath tempFolderPath�  l  f f�#�"�!�#  �"  �!   	
	 l  f f� �    P J delete old log files (if present) so we can be sure we start from scratch    � �   d e l e t e   o l d   l o g   f i l e s   ( i f   p r e s e n t )   s o   w e   c a n   b e   s u r e   w e   s t a r t   f r o m   s c r a t c h
  Q   f �� I  i ���
� .sysoexecTEXT���     TEXT b   i ~ b   i x b   i r m   i l �  r m   o   l q��  0 tempfolderpath tempFolderPath o   r w�� ,0 asteroiddebuglogfile AsteroidDebugLogFile o   x }�� 0 quietstring quietString�   R      ���
� .ascrerr ****      � ****�  �  �    Q   � �� I  � ���
� .sysoexecTEXT���     TEXT b   � � !  b   � �"#" b   � �$%$ m   � �&& �''  r m  % o   � ���  0 tempfolderpath tempFolderPath# o   � ��� 0 minerlogfile minerLogFile! o   � ��� 0 quietstring quietString�   R      ���
� .ascrerr ****      � ****�  �  �   ()( l  � �����  �  �  ) *+* l  � ��
,-�
  , 4 . load preferences from the userdefaults system   - �.. \   l o a d   p r e f e r e n c e s   f r o m   t h e   u s e r d e f a u l t s   s y s t e m+ /0/ l  � ��	12�	  1 K E check if option key is held down.  If so, then reset the preferences   2 �33 �   c h e c k   i f   o p t i o n   k e y   i s   h e l d   d o w n .     I f   s o ,   t h e n   r e s e t   t h e   p r e f e r e n c e s0 454 l  � ��67�  6 k e User can also hold down the shift key to reset the "progress bar" max value for their hash/s display   7 �88 �   U s e r   c a n   a l s o   h o l d   d o w n   t h e   s h i f t   k e y   t o   r e s e t   t h e   " p r o g r e s s   b a r "   m a x   v a l u e   f o r   t h e i r   h a s h / s   d i s p l a y5 9:9 Z   � �;<�=; =  � �>?> I   � ����� (0 isoptionkeypressed isOptionKeyPressed�  �  ? m   � ��
� boovtrue< n  � �@A@ I   � ��B�� 0 
loadprefs_ 
loadPrefs_B C� C m   � ���
�� boovtrue�   �  A o   � ����� 0 	apphelper 	AppHelper�  = n  � �DED I   � ���F���� 0 
loadprefs_ 
loadPrefs_F G��G m   � ���
�� boovfals��  ��  E o   � ����� 0 	apphelper 	AppHelper: HIH l  � ���������  ��  ��  I JKJ r   � �LML c   � �NON o   � ����� "0 defaultpoolsbtc defaultPoolsBTCO m   � ���
�� 
listM o      ���� "0 defaultpoolsbtc defaultPoolsBTCK PQP r   � �RSR c   � �TUT o   � ����� "0 defaultpoolsltc defaultPoolsLTCU m   � ���
�� 
listS o      ���� "0 defaultpoolsltc defaultPoolsLTCQ VWV l  � ���������  ��  ��  W XYX r   �Z[Z c   � �\]\ o   � �����  0 myprefsgeneral myPrefsGeneral] m   � ���
�� 
list[ o      ����  0 myprefsgeneral myPrefsGeneralY ^_^ r  `a` c  bcb o  	���� 0 myprefspools myPrefsPoolsc m  	��
�� 
lista o      ���� 0 myprefspools myPrefsPools_ ded r  #fgf c  hih o  ���� 0 myprefsgpus myPrefsGPUsi m  ��
�� 
listg o      ���� 0 myprefsgpus myPrefsGPUse jkj r  $3lml c  $-non o  $)���� 0 myprefsfpgas myPrefsFPGAso m  ),��
�� 
listm o      ���� 0 myprefsfpgas myPrefsFPGAsk pqp r  4Crsr c  4=tut o  49���� 0 myprefsasics myPrefsASICsu m  9<��
�� 
lists o      ���� 0 myprefsasics myPrefsASICsq vwv r  DSxyx c  DMz{z o  DI����  0 myprefsdevices myPrefsDevices{ m  IL��
�� 
listy o      ����  0 myprefsdevices myPrefsDevicesw |}| r  Tc~~ c  T]��� o  TY���� ,0 myprefslifetimestats myPrefsLifetimeStats� m  Y\��
�� 
list o      ���� ,0 myprefslifetimestats myPrefsLifetimeStats} ��� l dd��������  ��  ��  � ��� l dd������  � � � kill any similar running miners (mostly just for debug, since in the release version I suppose people could have multiple command-line miners running if they wanted)   � ���L   k i l l   a n y   s i m i l a r   r u n n i n g   m i n e r s   ( m o s t l y   j u s t   f o r   d e b u g ,   s i n c e   i n   t h e   r e l e a s e   v e r s i o n   I   s u p p o s e   p e o p l e   c o u l d   h a v e   m u l t i p l e   c o m m a n d - l i n e   m i n e r s   r u n n i n g   i f   t h e y   w a n t e d )� ��� I  di�������� 0 
killminers 
killMiners��  ��  � ��� I  jo�������� 0 
populateui 
populateUI��  ��  � ��� l pp��������  ��  ��  � ��� n p���� I  y�������� 0 addsubview_ addSubview_� ���� o  y~���� $0 prefsviewgeneral prefsViewGeneral��  ��  � n py��� I  uy�������� 0 contentview contentView��  ��  � o  pu���� 0 prefswindow prefsWindow� ���� l ����������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i  TW��� I      ������� @0 applicationdidfinishlaunching_ applicationDidFinishLaunching_� ���� o      ���� 0 anotification aNotification��  ��  � k    ��� ��� l     ��������  ��  ��  � ��� I    ������
�� .miscactvnull��� ��� null��  ��  � ��� l   ��������  ��  ��  � ��� l   ������  � ; 5 check list of devices recognized and ready right now   � ��� j   c h e c k   l i s t   o f   d e v i c e s   r e c o g n i z e d   a n d   r e a d y   r i g h t   n o w� ��� l    ������  ���
		set deviceCheckTask to current application's NSTask's alloc()'s init()
		deviceCheckTask's setLaunchPath_(resourcePath & "/cgminer")
		deviceCheckTask's setArguments_({"--ndevs"})
		set deviceCheckTaskOutputPipe to current application's NSPipe's pipe()
		set deviceCheckTaskOutputFileHandle to deviceCheckTaskOutputPipe's fileHandleForReading()
		deviceCheckTask's setStandardOutput_(deviceCheckTaskOutputPipe)
		deviceCheckTask's setStandardError_(deviceCheckTaskOutputPipe)
		deviceCheckTask's |launch|()

		set Nf to current application's NSNotificationCenter's defaultCenter()
		Nf's removeObserver_(me)
		Nf's addObserver_selector_name_object_(me, "readResponseDeviceCheck:", "NSFileHandleReadCompletionNotification", deviceCheckTaskOutputFileHandle)

		deviceCheckTaskOutputFileHandle's readInBackgroundAndNotify()

		repeat while checkedFirstDevices is false
			delay 0.05
		end repeat
		   � ��� 
 	 	 s e t   d e v i c e C h e c k T a s k   t o   c u r r e n t   a p p l i c a t i o n ' s   N S T a s k ' s   a l l o c ( ) ' s   i n i t ( ) 
 	 	 d e v i c e C h e c k T a s k ' s   s e t L a u n c h P a t h _ ( r e s o u r c e P a t h   &   " / c g m i n e r " ) 
 	 	 d e v i c e C h e c k T a s k ' s   s e t A r g u m e n t s _ ( { " - - n d e v s " } ) 
 	 	 s e t   d e v i c e C h e c k T a s k O u t p u t P i p e   t o   c u r r e n t   a p p l i c a t i o n ' s   N S P i p e ' s   p i p e ( ) 
 	 	 s e t   d e v i c e C h e c k T a s k O u t p u t F i l e H a n d l e   t o   d e v i c e C h e c k T a s k O u t p u t P i p e ' s   f i l e H a n d l e F o r R e a d i n g ( ) 
 	 	 d e v i c e C h e c k T a s k ' s   s e t S t a n d a r d O u t p u t _ ( d e v i c e C h e c k T a s k O u t p u t P i p e ) 
 	 	 d e v i c e C h e c k T a s k ' s   s e t S t a n d a r d E r r o r _ ( d e v i c e C h e c k T a s k O u t p u t P i p e ) 
 	 	 d e v i c e C h e c k T a s k ' s   | l a u n c h | ( ) 
 
 	 	 s e t   N f   t o   c u r r e n t   a p p l i c a t i o n ' s   N S N o t i f i c a t i o n C e n t e r ' s   d e f a u l t C e n t e r ( ) 
 	 	 N f ' s   r e m o v e O b s e r v e r _ ( m e ) 
 	 	 N f ' s   a d d O b s e r v e r _ s e l e c t o r _ n a m e _ o b j e c t _ ( m e ,   " r e a d R e s p o n s e D e v i c e C h e c k : " ,   " N S F i l e H a n d l e R e a d C o m p l e t i o n N o t i f i c a t i o n " ,   d e v i c e C h e c k T a s k O u t p u t F i l e H a n d l e ) 
 
 	 	 d e v i c e C h e c k T a s k O u t p u t F i l e H a n d l e ' s   r e a d I n B a c k g r o u n d A n d N o t i f y ( ) 
 
 	 	 r e p e a t   w h i l e   c h e c k e d F i r s t D e v i c e s   i s   f a l s e 
 	 	 	 d e l a y   0 . 0 5 
 	 	 e n d   r e p e a t 
 	 	� ��� l   ��������  ��  ��  � ��� l   ������  � a [ if this is the first time running Asteroid and GPUs are detected, then show the disclaimer   � ��� �   i f   t h i s   i s   t h e   f i r s t   t i m e   r u n n i n g   A s t e r o i d   a n d   G P U s   a r e   d e t e c t e d ,   t h e n   s h o w   t h e   d i s c l a i m e r� ��� l   ������  �   TODO: check ndevs first   � ��� 0   T O D O :   c h e c k   n d e v s   f i r s t� ��� Z   ������� =   ��� l   ������ c    ��� n    ��� 4    ���
�� 
cobj� m    ���� � o    ����  0 myprefsgeneral myPrefsGeneral� m    ��
�� 
bool��  ��  � m    ��
�� boovfals� k   	�� ��� l   ��������  ��  ��  � ��� r    ��� I   �����
�� .sysoexecTEXT���     TEXT� m    �� ��� D s y s t e m _ p r o f i l e r   S P H a r d w a r e D a t a T y p e��  � o      ���� 0 hardwareinfo hardwareInfo� ��� l   ��������  ��  ��  � ��� r     ��� m    ��
�� boovfals� o      ���� 0 	minimodel 	miniModel� ��� Y   ! {�������� Z   0 v������� E   0 6��� n   0 4��� 4   1 4���
�� 
cpar� o   2 3���� 0 y  � o   0 1���� 0 hardwareinfo hardwareInfo� m   4 5�� ���  M o d e l   N a m e� k   9 r�� ��� r   9 R��� l  9 P������ c   9 P��� n   9 N��� 7 = N����
�� 
citm� m   A C���� � l  D M������ n   D M��� m   K M��
�� 
nmbr� n  D K��� 2  I K��
�� 
citm� n   D I��� 4   F I���
�� 
cpar� o   G H���� 0 y  � o   D F���� 0 hardwareinfo hardwareInfo��  ��  � n   9 =��� 4   : =���
�� 
cpar� o   ; <���� 0 y  � o   9 :�� 0 hardwareinfo hardwareInfo� m   N O�~
�~ 
ctxt��  ��  � o      �}�} 0 	modelname 	modelName� ��� Z   S p �|�{  G   S f G   S ^ E   S V o   S T�z�z 0 	modelname 	modelName m   T U �		  M a c B o o k E   Y \

 o   Y Z�y�y 0 	modelname 	modelName m   Z [ �  i M a c E   a d o   a b�x�x 0 	modelname 	modelName m   b c �  M i n i r   i l m   i j�w
�w boovtrue o      �v�v 0 	minimodel 	miniModel�|  �{  � �u  S   q r�u  ��  ��  �� 0 y  � m   $ %�t�t � n   % + m   ( *�s
�s 
nmbr n  % ( 2  & (�r
�r 
cpar o   % &�q�q 0 hardwareinfo hardwareInfo��  �  l  | |�p�o�n�p  �o  �n    Z   |�m =  |  !  o   | }�l�l 0 	minimodel 	miniModel! m   } ~�k
�k boovtrue k   � �"" #$# Q   � �%&'% r   � �()( I  � ��j*+
�j .sysodlogaskr        TEXT* b   � �,-, b   � �./. b   � �010 b   � �232 b   � �454 b   � �676 m   � �88 �99 ( W e l c o m e   t o   A s t e r o i d !7 o   � ��i
�i 
ret 5 o   � ��h
�h 
ret 3 m   � �:: �;;� T h e   c o o l i n g   d e s i g n   o f   m o s t   c o m p a c t   M a c s   s u c h   a s   M a c B o o k s ,   i M a c s   a n d   M a c   M i n i s ,   d e s p i t e   h a v i n g   p o w e r f u l   G P U s ,   w i l l   u s u a l l y   n o t   c o p e   w i t h   c o n s t a n t   u s a g e   l e a d i n g   t o   a   h i g h   r i s k   o f   t h e r m a l   d a m a g e .   I t   i s   h i g h l y   r e c o m m e n d e d   n o t   t o   m i n e   o n   a   " c o m p a c t "   M a c   u n l e s s   i t   i s   t o   a   U S B   d e v i c e .   T a k e   s t e p s   t o   a d e q u a t e l y   c o o l   y o u r   d e v i c e   a n d / o r   p r o c e e d   a t   y o u r   o w n   r i s k .1 o   � ��g
�g 
ret / o   � ��f
�f 
ret - m   � �<< �==� T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   w i t h o u t   a n y   w a r r a n t y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   m e r c h a n t a b i l i t y   o r   f i t n e s s   f o r   a   p a r t i c u l a r   p u r p o s e ,   a n d   y o u   a s s u m e   a l l   r i s k s   a s s o c i a t e d   w i t h   i t s   u s e .+ �e>?
�e 
btns> J   � �@@ ABA m   � �CC �DD  C a n c e lB E�dE m   � �FF �GG  U n d e r s t o o d &�d  ? �cHI
�c 
dfltH m   � ��b�b I �aJ�`
�a 
dispJ m   � ��_
�_ stic   �`  ) o      �^�^ 0 	userreply 	userReply& R      �]�\�[
�] .ascrerr ****      � ****�\  �[  ' k   � �KK LML I  � ��Z�Y�X
�Z .aevtquitnull��� ��� null�Y  �X  M N�WN L   � ��V�V  �W  $ O�UO Z   � �PQR�TP =  � �STS n   � �UVU 1   � ��S
�S 
bhitV o   � ��R�R 0 	userreply 	userReplyT m   � �WW �XX  C a n c e lQ I  � ��Q�P�O
�Q .aevtquitnull��� ��� null�P  �O  R YZY =  � �[\[ n   � �]^] 1   � ��N
�N 
bhit^ o   � ��M�M 0 	userreply 	userReply\ m   � �__ �``  U n d e r s t o o d &Z a�La r   � �bcb m   � ��K
�K boovtruec n      ded 4   � ��Jf
�J 
cobjf m   � ��I�I e o   � ��H�H  0 myprefsgeneral myPrefsGeneral�L  �T  �U  �m   r   �ghg m   � ��G
�G boovtrueh n      iji 4  �Fk
�F 
cobjk m  �E�E j o   ��D�D  0 myprefsgeneral myPrefsGeneral l�Cl l �B�A�@�B  �A  �@  �C  ��  ��  � mnm l �?�>�=�?  �>  �=  n opo r  #qrq b  !sts n  uvu 1  �<
�< 
psxpv l w�;�:w I �9xy
�9 .earsffdralis        afdrx m  �8
�8 afdrmacsy �7z�6
�7 
rtypz m  �5
�5 
ctxt�6  �;  �:  t m   {{ �|| N L i b r a r y / E x t e n s i o n s / S i L a b s U S B D r i v e r . k e x tr o      �4�4 0 
baddriver1 
badDriver1p }~} r  $9� b  $7��� n  $3��� 1  /3�3
�3 
psxp� l $/��2�1� I $/�0��
�0 .earsffdralis        afdr� m  $'�/
�/ afdrmacs� �.��-
�. 
rtyp� m  *+�,
�, 
ctxt�-  �2  �1  � m  36�� ��� R L i b r a r y / E x t e n s i o n s / S i L a b s U S B D r i v e r 6 4 . k e x t� o      �+�+ 0 
baddriver2 
badDriver2~ ��� r  :?��� m  :=�� ���  n o� o      �*�* 0 msg  � ��� O @\��� Z F[���)�(� I FO�'��&
�' .coredoexbool        obj � c  FK��� o  FG�%�% 0 
baddriver1 
badDriver1� m  GJ�$
�$ 
psxf�&  � r  RW��� m  RU�� ���  y e s� o      �#�# 0 msg  �)  �(  � m  @C���                                                                                  MACS  alis    x  Macintosh SSD              �xv(H+  �D
Finder.app                                                     	�C���l        ����  	                CoreServices    �xؘ      ��P�    �D�A�@  7Macintosh SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��  � ��� O ]y��� Z cx���"�!� I cl� ��
�  .coredoexbool        obj � c  ch��� o  cd�� 0 
baddriver2 
badDriver2� m  dg�
� 
psxf�  � r  ot��� m  or�� ���  y e s� o      �� 0 msg  �"  �!  � m  ]`���                                                                                  MACS  alis    x  Macintosh SSD              �xv(H+  �D
Finder.app                                                     	�C���l        ����  	                CoreServices    �xؘ      ��P�    �D�A�@  7Macintosh SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��  � ��� l zz����  �  �  � ��� Z  z~����� = z��� o  z{�� 0 msg  � m  {~�� ���  y e s� k  �z�� ��� I �����
� .miscactvnull��� ��� null�  �  � ��� I  ������ 
0 msglog  � ��� m  ���� ��� ~ U S B   t o   U A R T   ( c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e r )   d r i v e r   d e t e c t e d� ��� m  ���� ���  w a r n i n g�  �  � ��� r  ����� I �����
� .sysodlogaskr        TEXT� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� m  ���� ��� � Y o u   h a v e   a   t h i r d - p a r t y   U S B - t o - U A R T   d r i v e r   i n s t a l l e d   w h i c h   w i l l   p r e v e n t   A s t e r o i d   f r o m   u s i n g   U S B - b a s e d   m i n e r s .� o  ���
� 
ret � o  ���
� 
ret � m  ���� ��� � A s t e r o i d   c a n   t e m p o r a r i l y   d i s a b l e   t h i s   d r i v e r   a n d   r e - e n a b l e   i t   f o r   y o u   w h e n   y o u   q u i t .� o  ���
� 
ret � o  ���
� 
ret � m  ���� ��� � Y o u   w i l l   n e e d   t o   e n t e r   a n   a d m i n i s t r a t o r   p a s s w o r d   w h e n   A s t e r o i d   m a k e s   t h e s e   c h a n g e s .� o  ���

�
 
ret � o  ���	
�	 
ret � m  ���� ��� | O r   y o u   m a y   d i s r e g a r d   t h i s   m e s s a g e   a n d   m i n e   o n l y   w i t h   y o u r   G P U .� ���
� 
disp� m  ���
� stic   � ���
� 
btns� J  ���� ��� m  ���� ���  I g n o r e� ��� m  ���� ��� P T e m p o r a r i l y   d i s a b l e   c o n f l i c t i n g   d r i v e r s &�  � ���
� 
dflt� m  ���� �  � o      �� 0 	userreply 	userReply� ��� l ��� �����   ��  ��  � ���� Z  �z������� = ����� n  ����� 1  ����
�� 
bhit� o  ������ 0 	userreply 	userReply� m  ���� ��� P T e m p o r a r i l y   d i s a b l e   c o n f l i c t i n g   d r i v e r s &� k  �v�� ��� l ����� ��  � , & attempt to unload conflicting drivers     � L   a t t e m p t   t o   u n l o a d   c o n f l i c t i n g   d r i v e r s�  r  �� m  ������   o      ���� 0 numerrs numErrs  Q  �	
 I ����
�� .sysoexecTEXT���     TEXT m  �� � b k e x t u n l o a d   - b   c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e r 6 4 ����
�� 
badm m  ����
�� boovtrue��  	 R      ����
�� .ascrerr ****      � **** o      ���� 0 err  ��  
 Z  ����� H  � E  � o  � ���� 0 err   m    � 8 n o t   f o u n d   f o r   u n l o a d   r e q u e s t r   [   o  	���� 0 numerrs numErrs m  	
����  o      ���� 0 numerrs numErrs��  ��    Q  :  I  ��!"
�� .sysoexecTEXT���     TEXT! m  ## �$$ ^ k e x t u n l o a d   - b   c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e r" ��%��
�� 
badm% m  ��
�� boovtrue��   R      ��&��
�� .ascrerr ****      � ****& o      ���� 0 err  ��    Z  (:'(����' H  (.)) E  (-*+* o  ()���� 0 err  + m  ),,, �-- 8 n o t   f o u n d   f o r   u n l o a d   r e q u e s t( r  16./. [  14010 o  12���� 0 numerrs numErrs1 m  23���� / o      ���� 0 numerrs numErrs��  ��   232 l ;;��������  ��  ��  3 454 Z  ;t67��86 @ ;>9:9 o  ;<���� 0 numerrs numErrs: m  <=���� 7 k  A^;; <=< I  AJ��>���� 
0 msglog  > ?@? o  BC���� 0 err  @ A��A m  CFBB �CC  w a r n i n g��  ��  = DED I  KV��F���� 
0 msglog  F GHG m  LOII �JJ � U n a b l e   t o   t e m p o r a r i l y   d i s a b l e   t h e   c o n f l i c t i n g   d r i v e r   ( m a y b e   i t ' s   a l r e a d y   d i s a b l e d ? ) .     P l e a s e   r e p o r t   t h i s   b u g .H K��K m  ORLL �MM 
 a l e r t��  ��  E N��N r  W^OPO m  WX��
�� boovtrueP o      ���� 80 reenableconflictingdrivers reenableConflictingDrivers��  ��  8 k  atQQ RSR r  ahTUT m  ab��
�� boovtrueU o      ���� 80 reenableconflictingdrivers reenableConflictingDriversS V��V I  it��W���� 
0 msglog  W XYX m  jmZZ �[[ t D i s a b l i n g   c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e r   w a s   s u c c e s s f u lY \��\ m  mp]] �^^  w a r n i n g��  ��  ��  5 _��_ l uu��������  ��  ��  ��  ��  ��  ��  �  �  � `a` l ��������  ��  ��  a bcb r  �ded m  ���
�� boovfalse o      ���� 0 	foundpool 	foundPoolc fgf l ����������  ��  ��  g hih l ����jk��  j 0 * check if we have pools ready to mine with   k �ll T   c h e c k   i f   w e   h a v e   p o o l s   r e a d y   t o   m i n e   w i t hi mnm Y  ��o��pq��o Z  ��rs����r = ��tut l ��v����v c  ��wxw n  ��yzy 4  ����{
�� 
cobj{ m  ������ z l ��|����| n  ��}~} 4  ����
�� 
cobj o  ������ 0 x  ~ o  ������ 0 myprefspools myPrefsPools��  ��  x m  ����
�� 
ctxt��  ��  u m  ���� ���  1s l ������ k  ���� ��� I  ��������� 0 setstatusline setStatusLine� ��� m  ���� ��� $ I n i t i a l i z i n g   m i n e r� ��� m  ����
�� boovtrue� ��� m  ������  � ���� m  ���� ���  ��  ��  � ��� I  ��������� 0 
startminer 
startMiner� ���� m  ���� ���  c g m i n e r��  ��  � ���� r  ����� m  ����
�� boovtrue� o      ���� 0 	foundpool 	foundPool��  � 7 1 found a pool to mine with, therefore start miner   � ��� b   f o u n d   a   p o o l   t o   m i n e   w i t h ,   t h e r e f o r e   s t a r t   m i n e r��  ��  �� 0 x  p m  ������ q n  ����� m  ����
�� 
nmbr� n ����� 2 ����
�� 
cobj� o  ������ 0 myprefspools myPrefsPools��  n ��� l ����������  ��  ��  � ��� Z  ��������� = ����� o  ������ 0 	foundpool 	foundPool� m  ����
�� boovfals� k  ���� ��� l ��������  � ; 5 no active pools has been specified or none yet exist   � ��� j   n o   a c t i v e   p o o l s   h a s   b e e n   s p e c i f i e d   o r   n o n e   y e t   e x i s t� ��� I  ��������� 0 setstatusline setStatusLine� ��� m  ���� ��� @ C h o o s e   a   p o o l   t o   b e g i n   m i n i n g . . .� ��� m  ����
�� boovfals� ��� m  ������  � ���� m  ���� ���  ��  ��  � ���� I  ���������� *0 reenableallcontrols reenableAllControls��  ��  ��  ��  ��  � ��� l ����������  ��  ��  � ��� l ��������  � %  start MobileMiner (if enabled)   � ��� >   s t a r t   M o b i l e M i n e r   ( i f   e n a b l e d )� ��� Z  ��������� F  ���� > ����� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������  0 myprefsgeneral myPrefsGeneral� m  ���� ���  � > ���� n  ���� 4  ���
�� 
cobj� m  ���� � o  ���  0 myprefsgeneral myPrefsGeneral� m  
�� ���  � k  ��� ��� Z  Q���~�}� = ��� l ��|�{� c  ��� n  ��� 4  �z�
�z 
cobj� m  �y�y � o  �x�x  0 myprefsgeneral myPrefsGeneral� m  �w
�w 
bool�|  �{  � m  �v
�v boovtrue� k  !M�� ��� I  !,�u��t�u 
0 msglog  � ��� m  "%�� ��� @ W i l l   s e n d   s t a t u s   t o   M o b i l e M i n e r .� ��s� m  %(�� ���  n o t i c e�s  �t  � ��r� r  -M��� n -G��� I  4G�q��p�q �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� ��� o  49�o�o >0 mobileminersendstatusinterval mobileMinerSendStatusInterval� ���  f  9:� ��� m  :=�� ��� . s e n d S t a t u s T o M o b i l e M i n e r�    m  =@ �   �n m  @A�m
�m boovfals�n  �p  � n -4 o  04�l�l 0 nstimer NSTimer m  -0�k
�k misccura� o      �j�j 80 mobileminersendstatustimer mobileMinerSendStatusTimer�r  �~  �}  � �i Z  R�	�h�g = R`

 l R^�f�e c  R^ n  R\ 4  W\�d
�d 
cobj m  X[�c�c  o  RW�b�b  0 myprefsgeneral myPrefsGeneral m  \]�a
�a 
bool�f  �e   m  ^_�`
�` boovtrue	 k  c�  I  cn�_�^�_ 
0 msglog    m  dg � ^ W i l l   w a i t   f o r   r e m o t e   c o m m a n d s   f r o m   M o b i l e M i n e r . �] m  gj �  n o t i c e�]  �^   �\ r  o� n o� !  I  v��["�Z�[ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_" #$# o  v{�Y�Y F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsInterval$ %&%  f  {|& '(' m  |)) �** < c h e c k M o b i l e M i n e r R e m o t e C o m m a n d s( +,+ m  �-- �..  , /�X/ m  ���W
�W boovfals�X  �Z  ! n ov010 o  rv�V�V 0 nstimer NSTimer1 m  or�U
�U misccura o      �T�T @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer�\  �h  �g  �i  ��  ��  � 2�S2 l ���R�Q�P�R  �Q  �P  �S  � 343 l     �O�N�M�O  �N  �M  4 565 i  X[787 I      �L9�K�L 40 readresponsedevicecheck_ readResponseDeviceCheck_9 :�J: o      �I�I 0 anotification aNotification�J  �K  8 k     /;; <=< l     �H>?�H  >  log "read in"   ? �@@  l o g   " r e a d   i n "= ABA r     
CDC n    EFE I    �GG�F�G 0 objectforkey_ objectForKey_G H�EH m    II �JJ @ N S F i l e H a n d l e N o t i f i c a t i o n D a t a I t e m�E  �F  F n    KLK o    �D�D 0 userinfo userInfoL o     �C�C 0 anotification aNotificationD o      �B�B 0 
datastring 
dataStringB MNM r    OPO l   Q�A�@Q n   RSR I    �?T�>�? 00 initwithdata_encoding_ initWithData_encoding_T UVU o    �=�= 0 
datastring 
dataStringV W�<W m    XX �YY ( N S U T F 8 S t r i n g E n c o d i n g�<  �>  S l   Z�;�:Z n   [\[ o    �9�9 	0 alloc  \ l   ]�8�7] n   ^_^ 4    �6`
�6 
pcls` m    aa �bb  N S S t r i n g_ m    �5
�5 misccura�8  �7  �;  �:  �A  �@  P o      �4�4 0 	newstring  N cdc r    efe c    ghg o    �3�3 0 	newstring  h m    �2
�2 
TEXTf o      �1�1 0 	parstring 	parStringd iji l     �0�/�.�0  �/  �.  j klk I    %�-m�,
�- .sysodlogaskr        TEXTm o     !�+�+ 0 	parstring 	parString�,  l non r   & -pqp m   & '�*
�* boovtrueq o      �)�) *0 checkedfirstdevices checkedFirstDeviceso rsr l  . .�(�'�&�(  �'  �&  s t�%t l  . .�$uv�$  u @ :set progress text field and progress bar to parsed results   v �ww t s e t   p r o g r e s s   t e x t   f i e l d   a n d   p r o g r e s s   b a r   t o   p a r s e d   r e s u l t s�%  6 xyx l     �#�"�!�#  �"  �!  y z{z i  \_|}| I      � ���  (0 disableallcontrols disableAllControls�  �  } k     6~~ � n    
��� I    
���� 0 setenabled_ setEnabled_� ��� m    �
� boovfals�  �  � o     �� &0 dockmenustartstop dockMenuStartStop� ��� n   ��� I    ���� 0 setenabled_ setEnabled_� ��� m    �
� boovfals�  �  � o    �� 00 intensitymenustartstop intensityMenuStartStop� ��� l   ����  � ' ! detailTwistie's setHidden_(true)   � ��� B   d e t a i l T w i s t i e ' s   s e t H i d d e n _ ( t r u e )� ��� l   ����  � "  pauseNub's setHidden_(true)   � ��� 8   p a u s e N u b ' s   s e t H i d d e n _ ( t r u e )� ��� l   ����  � "  infoNub's setHidden_(false)   � ��� 8   i n f o N u b ' s   s e t H i d d e n _ ( f a l s e )� ��� n    ��� I     ���� 0 setenabled_ setEnabled_� ��� m    �
� boovfals�  �  � o    �� 00 intensitymenustartstop intensityMenuStartStop� ��� n  ! +��� I   & +���
� 0 setenabled_ setEnabled_� ��	� m   & '�
� boovfals�	  �
  � o   ! &�� 0 poollist poolList� ��� n  , 6��� I   1 6���� 0 setenabled_ setEnabled_� ��� m   1 2�
� boovfals�  �  � o   , 1��  0 pooleditbutton poolEditButton�  { ��� l     � �����   ��  ��  � ��� i  `c��� I      �������� *0 reenableallcontrols reenableAllControls��  ��  � k     U�� ��� n    
��� I    
������� 0 setenabled_ setEnabled_� ���� m    ��
�� boovtrue��  ��  � o     ���� 0 poollist poolList� ��� n   ��� I    ������� 0 setenabled_ setEnabled_� ���� m    ��
�� boovtrue��  ��  � o    ���� &0 dockmenustartstop dockMenuStartStop� ��� n    ��� I     ������� 0 setenabled_ setEnabled_� ���� m    ��
�� boovtrue��  ��  � o    ���� 00 intensitymenustartstop intensityMenuStartStop� ��� l  ! !��������  ��  ��  � ��� Z   ! J������ E   ! 0��� o   ! &���� "0 badpoolindicies badPoolIndicies� n  & /��� I   + /�������� *0 indexofselecteditem indexOfSelectedItem��  ��  � o   & +���� 0 poollist poolList� n  3 =��� I   8 =������� 0 setenabled_ setEnabled_� ���� m   8 9��
�� boovfals��  ��  � o   3 8����  0 pooleditbutton poolEditButton��  � n  @ J��� I   E J������� 0 setenabled_ setEnabled_� ���� m   E F��
�� boovtrue��  ��  � o   @ E����  0 pooleditbutton poolEditButton� ���� n  K U��� I   P U������� 0 setenabled_ setEnabled_� ���� m   P Q��
�� boovtrue��  ��  � o   K P���� 0 poollist poolList��  � ��� l     ��������  ��  ��  � ��� i  dg��� I      �������� 0 
populateui 
populateUI��  ��  � k    1�� ��� l     ��������  ��  ��  � ��� n    
��� I    
������� 60 setusesthreadedanimation_ setUsesThreadedAnimation_� ���� m    ��
�� boovtrue��  ��  � o     ����  0 statusspinner1 statusSpinner1� ��� n   ��� I    ������� 60 setusesthreadedanimation_ setUsesThreadedAnimation_� ���� m    ��
�� boovtrue��  ��  � o    ����  0 statusspinner2 statusSpinner2� ��� l   ��������  ��  ��  � ��� r    !��� n   ��� I    �������� 	0 frame  ��  ��  � o    ���� 0 
mainwindow 
mainWindow� o      ���� 0 mwf  � ��� r   " =��� K   " 7�� ������� 0 size  � K   # 5�� �� �� 	0 width    c   $ + n   $ ) o   ' )���� 	0 width   n   $ ' o   % '���� 0 size   o   $ %���� 0 mwf   m   ) *��
�� 
doub ������ 
0 height   c   , 3	
	 n   , 1 o   / 1���� 
0 height   n   , / o   - /���� 0 size   o   , -���� 0 mwf  
 m   1 2��
�� 
doub��  ��  � o      ���� 80 defaultmainwindowframesize defaultMainWindowFrameSize�  l  > >��������  ��  ��    r   > I n  > G I   C G�������� 	0 frame  ��  ��   o   > C���� 0 hashratebar hashRateBar o      ���� 0 aframe aFrame  r   J Q m   J K����   n       o   N P���� 
0 height   n   K N o   L N���� 0 size   o   K L���� 0 aframe aFrame   n  R \!"! I   W \��#���� 0 	setframe_ 	setFrame_# $��$ o   W X���� 0 aframe aFrame��  ��  " o   R W���� 0 hashratebar hashRateBar  %&% l  ] ]��������  ��  ��  & '(' I   ] b�������� $0 populatepoollist populatePoolList��  ��  ( )*) l  c c��������  ��  ��  * +,+ I   c h�������� (0 disableallcontrols disableAllControls��  ��  , -.- l  i i��������  ��  ��  . /0/ l  i i��12��  1 "  set max on the progress bar   2 �33 8   s e t   m a x   o n   t h e   p r o g r e s s   b a r0 454 Z   i �67����6 ?  i t898 n   i r:;: m   p r��
�� 
nmbr; n  i p<=< 2  n p��
�� 
cobj= o   i n���� 0 myprefsgpus myPrefsGPUs9 m   r s����  7 k   w �>> ?@? l  w w��AB��  A M G sum hash rate for each GPU to use as the max total for the hashratebar   B �CC �   s u m   h a s h   r a t e   f o r   e a c h   G P U   t o   u s e   a s   t h e   m a x   t o t a l   f o r   t h e   h a s h r a t e b a r@ DED r   w zFGF m   w x����  G o      ���� 0 	totalhash 	totalHashE HIH Y   { �J�KL�~J r   � �MNM [   � �OPO o   � ��}�} 0 	totalhash 	totalHashP l  � �Q�|�{Q c   � �RSR n   � �TUT 4   � ��zV
�z 
cobjV m   � ��y�y U l  � �W�x�wW n   � �XYX 4   � ��vZ
�v 
cobjZ o   � ��u�u 0 x  Y o   � ��t�t 0 myprefsgpus myPrefsGPUs�x  �w  S m   � ��s
�s 
nmbr�|  �{  N o      �r�r 0 	totalhash 	totalHash� 0 x  K m   ~ �q�q L n    �[\[ m   � ��p
�p 
nmbr\ n   �]^] 2  � ��o
�o 
cobj^ o    ��n�n 0 myprefsgpus myPrefsGPUs�~  I _`_ n  � �aba I   � ��mc�l�m 0 setmaxvalue_ setMaxValue_c d�kd o   � ��j�j 0 	totalhash 	totalHash�k  �l  b o   � ��i�i 0 hashratebar hashRateBar` efe n  � �ghg I   � ��hi�g�h $0 setwarningvalue_ setWarningValue_i j�fj ]   � �klk o   � ��e�e 0 	totalhash 	totalHashl m   � �mm ?�      �f  �g  h o   � ��d�d 0 hashratebar hashRateBarf n�cn n  � �opo I   � ��bq�a�b &0 setcriticalvalue_ setCriticalValue_q r�`r ]   � �sts o   � ��_�_ 0 	totalhash 	totalHasht m   � �uu ?��������`  �a  p o   � ��^�^ 0 hashratebar hashRateBar�c  ��  ��  5 vwv l  � ��]�\�[�]  �\  �[  w xyx l   � ��Zz{�Z  zy
		set trackingArea to current application's NSTrackingArea's alloc()'s initWithRect_options_owner_userInfo_(thisFrame,(current application's NSTrackingInVisibleRect as integer) + (current application's NSTrackingActiveAlways as integer) + (current application's NSTrackingMouseEnteredAndExited as integer),me,missing value)
		mainWindowView's addTrackingArea_(trackingArea)
		   { �||� 
 	 	 s e t   t r a c k i n g A r e a   t o   c u r r e n t   a p p l i c a t i o n ' s   N S T r a c k i n g A r e a ' s   a l l o c ( ) ' s   i n i t W i t h R e c t _ o p t i o n s _ o w n e r _ u s e r I n f o _ ( t h i s F r a m e , ( c u r r e n t   a p p l i c a t i o n ' s   N S T r a c k i n g I n V i s i b l e R e c t   a s   i n t e g e r )   +   ( c u r r e n t   a p p l i c a t i o n ' s   N S T r a c k i n g A c t i v e A l w a y s   a s   i n t e g e r )   +   ( c u r r e n t   a p p l i c a t i o n ' s   N S T r a c k i n g M o u s e E n t e r e d A n d E x i t e d   a s   i n t e g e r ) , m e , m i s s i n g   v a l u e ) 
 	 	 m a i n W i n d o w V i e w ' s   a d d T r a c k i n g A r e a _ ( t r a c k i n g A r e a ) 
 	 	y }~} l  � ��Y�X�W�Y  �X  �W  ~ � Z   ������ ?  � ���� l  � ���V�U� o   � ��T�T 0 numgpus numGPUs�V  �U  � m   � ��S�S  � n  � ���� I   � ��R��Q�R 0 
sethidden_ 
setHidden_� ��P� m   � ��O
�O boovfals�P  �Q  � o   � ��N�N 0 detailtwistie detailTwistie� ��� G   � ���� l  � ���M�L� ?  � ���� o   � ��K�K 0 numpgas numPGAs� m   � ��J�J  �M  �L  � l  � ���I�H� ?  � ���� o   � ��G�G 0 numasics numASICs� m   � ��F�F  �I  �H  � ��E� n  �	��� I  	�D��C�D 0 
sethidden_ 
setHidden_� ��B� m  �A
�A boovfals�B  �C  � o   ��@�@ 0 detailtwistie detailTwistie�E  � l �?���?  � ' ! detailTwistie's setHidden_(true)   � ��� B   d e t a i l T w i s t i e ' s   s e t H i d d e n _ ( t r u e )� ��� l �>�=�<�>  �=  �<  � ��� l �;���;  � 7 1 show bitcoin balance we want to monitor (if any)   � ��� b   s h o w   b i t c o i n   b a l a n c e   w e   w a n t   t o   m o n i t o r   ( i f   a n y )� ��� I  �:�9�8�: &0 updatecoinbalance updateCoinBalance�9  �8  � ��� Z  I���7�6� > "��� n  ��� 4  �5�
�5 
cobj� m  �4�4 � o  �3�3  0 myprefsgeneral myPrefsGeneral� m  !�� ���  � r  %E��� n %?��� I  ,?�2��1�2 �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� ��� o  ,1�0�0 ,0 balancecheckinterval balanceCheckInterval� ���  f  12� ��� m  25�� ��� " u p d a t e C o i n B a l a n c e� ��� m  58�� ���  � ��/� m  89�.
�. boovtrue�/  �1  � n %,��� o  (,�-�- 0 nstimer NSTimer� m  %(�,
�, misccura� o      �+�+ &0 balancechecktimer balanceCheckTimer�7  �6  � ��� l JJ�*�)�(�*  �)  �(  � ��� Z  J�����'� = JS��� o  JO�&�& 0 
currentsub 
currentSub� m  OR�� ���  S h a r e s� k  Vk�� ��� n V`��� I  [`�%��$�% 0 
sethidden_ 
setHidden_� ��#� m  [\�"
�" boovtrue�#  �$  � o  V[�!�! 20 addresstomonitorreadout addressToMonitorReadout� �� � n ak��� I  fk���� 0 
sethidden_ 
setHidden_� ��� m  fg�
� boovfals�  �  � o  af�� (0 sharestatusreadout shareStatusReadout�   � ��� = nw��� o  ns�� 0 
currentsub 
currentSub� m  sv�� ���  B a l a n c e� ��� k  z��� ��� n z���� I  ����� 0 
sethidden_ 
setHidden_� ��� m  ��
� boovfals�  �  � o  z�� 20 addresstomonitorreadout addressToMonitorReadout� ��� n ����� I  ������ 0 
sethidden_ 
setHidden_� ��� m  ���
� boovtrue�  �  � o  ���� (0 sharestatusreadout shareStatusReadout�  �  �'  � ��� l ������  �  �  � ��� l ���
���
  � "  set our list of prefs panes   � ��� 8   s e t   o u r   l i s t   o f   p r e f s   p a n e s� ��� r  ����� J  ���� ��� o  ���	�	 $0 prefsviewgeneral prefsViewGeneral� ��� o  ���� &0 prefsviewlitecoin prefsViewLitecoin� 	 �	  o  ���� ,0 prefsviewmobileminer prefsViewMobileMiner�  � o      �� 0 prefsviewlist prefsViewList� 			 r  ��			 J  ����  	 o      ��  0 prefsviewsizes prefsViewSizes	 			 Y  ��	�			�	 r  ��	
		
 l ��	� ��	 c  ��			 n  ��			 o  ������ 
0 height  	 n  ��			 o  ������ 0 size  	 l ��	����	 n ��			 I  ���������� 	0 frame  ��  ��  	 l ��	����	 n  ��			 4  ����	
�� 
cobj	 o  ������ 0 x  	 o  ������ 0 prefsviewlist prefsViewList��  ��  ��  ��  	 m  ����
�� 
doub�   ��  	 n      			  ;  ��	 o  ������  0 prefsviewsizes prefsViewSizes� 0 x  	 m  ������ 		 n  ��			 m  ����
�� 
nmbr	 n ��			 2 ����
�� 
cobj	 o  ������ 0 prefsviewlist prefsViewList�  	 	 	!	  l ����������  ��  ��  	! 	"	#	" I  ����������  0 drawdevicelist drawDeviceList��  ��  	# 	$	%	$ l ����������  ��  ��  	% 	&	'	& l ����	(	)��  	( ' ! add minerListView to main window   	) �	*	* B   a d d   m i n e r L i s t V i e w   t o   m a i n   w i n d o w	' 	+	,	+ r  �	-	.	- J  ��	/	/ 	0	1	0 J  ��	2	2 	3	4	3 m  ������ 	4 	5��	5 m  ������ Q��  	1 	6��	6 J  ��	7	7 	8	9	8 m  ������|	9 	:��	: m  ������ 
��  ��  	. o      ���� (0 minerlistviewframe minerListViewFrame	, 	;	<	; n 	=	>	= I  ��	?���� 0 
sethidden_ 
setHidden_	? 	@��	@ m  ��
�� boovtrue��  ��  	> o  ���� 0 minerlistview minerListView	< 	A	B	A n 	C	D	C I  ��	E���� 0 addsubview_ addSubview_	E 	F��	F o  ���� 0 minerlistview minerListView��  ��  	D o  ����  0 mainwindowview mainWindowView	B 	G	H	G l ��������  ��  ��  	H 	I	J	I l ��	K	L��  	K    toggleDeviceListTwistie()   	L �	M	M 4   t o g g l e D e v i c e L i s t T w i s t i e ( )	J 	N	O	N l ��������  ��  ��  	O 	P	Q	P n &	R	S	R I  !&��	T���� :0 setexcludedfromwindowsmenu_ setExcludedFromWindowsMenu_	T 	U��	U m  !"��
�� boovtrue��  ��  	S o  !���� 0 
mainwindow 
mainWindow	Q 	V��	V n '1	W	X	W I  ,1��	Y���� :0 setexcludedfromwindowsmenu_ setExcludedFromWindowsMenu_	Y 	Z��	Z m  ,-��
�� boovtrue��  ��  	X o  ',���� (0 minerconsolewindow minerConsoleWindow��  � 	[	\	[ l     ��������  ��  ��  	\ 	]	^	] i  hk	_	`	_ I      ��	a���� 0 mouseentered_ mouseEntered_	a 	b��	b o      ���� 0 theevent theEvent��  ��  	` k     C	c	c 	d	e	d l     ��	f	g��  	f   show controls   	g �	h	h    s h o w   c o n t r o l s	e 	i	j	i Z     -	k	l��	m	k ?    	n	o	n l    	p����	p [     	q	r	q [     	s	t	s o     ���� 0 numgpus numGPUs	t o    
���� 0 numpgas numPGAs	r o    ���� 0 numasics numASICs��  ��  	o m    ����  	l n    	u	v	u I     ��	w���� 0 
sethidden_ 
setHidden_	w 	x��	x m    ��
�� boovfals��  ��  	v o    ���� 0 detailtwistie detailTwistie��  	m n  # -	y	z	y I   ( -��	{���� 0 
sethidden_ 
setHidden_	{ 	|��	| m   ( )��
�� boovtrue��  ��  	z o   # (���� 0 detailtwistie detailTwistie	j 	}	~	} n  . 8		�	 I   3 8��	����� 0 
sethidden_ 
setHidden_	� 	���	� m   3 4��
�� boovfals��  ��  	� o   . 3���� 0 pausenub pauseNub	~ 	���	� n  9 C	�	�	� I   > C��	����� 0 
sethidden_ 
setHidden_	� 	���	� m   > ?��
�� boovfals��  ��  	� o   9 >���� 0 infonub infoNub��  	^ 	�	�	� l     ��������  ��  ��  	� 	�	�	� i  lo	�	�	� I      ��	����� 0 mouseexited_ mouseExited_	� 	���	� o      ���� 0 theevent theEvent��  ��  	� k     6	�	� 	�	�	� l     ��	�	���  	�   hide controls   	� �	�	�    h i d e   c o n t r o l s	� 	�	�	� n    
	�	�	� I    
��	����� 0 
sethidden_ 
setHidden_	� 	���	� m    ��
�� boovtrue��  ��  	� o     ���� 0 detailtwistie detailTwistie	� 	���	� Z    6	�	�����	� F    	�	�	� o    ���� 0 minerrunning minerRunning	� o    ���� 0 minerapiready minerAPIready	� k    2	�	� 	�	�	� n   '	�	�	� I   " '��	����� 0 
sethidden_ 
setHidden_	� 	���	� m   " #��
�� boovtrue��  ��  	� o    "���� 0 pausenub pauseNub	� 	���	� n  ( 2	�	�	� I   - 2��	����� 0 
sethidden_ 
setHidden_	� 	���	� m   - .�
� boovtrue��  ��  	� o   ( -�~�~ 0 infonub infoNub��  ��  ��  ��  	� 	�	�	� l     �}�|�{�}  �|  �{  	� 	�	�	� i  ps	�	�	� I      �z�y�x�z $0 populatepoollist populatePoolList�y  �x  	� k    	�	� 	�	�	� l     �w	�	��w  	� !  populate the list of pools   	� �	�	� 6   p o p u l a t e   t h e   l i s t   o f   p o o l s	� 	�	�	� r     
	�	�	� J     	�	� 	�	�	� m     �v�v  	� 	��u	� m    �t�t �u  	� o      �s�s "0 badpoolindicies badPoolIndicies	� 	�	�	� l   	�	�	�	� n   	�	�	� I    �r�q�p�r  0 removeallitems removeAllItems�q  �p  	� o    �o�o 0 poollist poolList	�   start from scratch   	� �	�	� &   s t a r t   f r o m   s c r a t c h	� 	�	�	� n   	�	�	� I    �n	��m�n ,0 setautoenablesitems_ setAutoenablesItems_	� 	��l	� m    �k
�k boovfals�l  �m  	� o    �j�j 0 poollist poolList	� 	�	�	� n    1	�	�	� I   % 1�i	��h�i 0 setfont_ setFont_	� 	��g	� n  % -	�	�	� I   ( -�f	��e�f &0 systemfontofsize_ systemFontOfSize_	� 	��d	� m   ( )�c�c �d  �e  	� n  % (	�	�	� o   & (�b�b 0 nsfont NSFont	� m   % &�a
�a misccura�g  �h  	� o     %�`�` 0 poollist poolList	� 	�	�	� n  2 <	�	�	� I   7 <�_	��^�_ &0 additemwithtitle_ addItemWithTitle_	� 	��]	� m   7 8	�	� �	�	�  N e w   p o o l . . .�]  �^  	� o   2 7�\�\ 0 poollist poolList	� 	�	�	� n  = G	�	�	� I   B G�[	��Z�[ &0 additemwithtitle_ addItemWithTitle_	� 	��Y	� m   B C	�	� �	�	�  B i t c o i n   p o o l s :�Y  �Z  	� o   = B�X�X 0 poollist poolList	� 	�	�	� n  H T	�	�	� I   O T�W	��V�W 0 setenabled_ setEnabled_	� 	��U	� m   O P�T
�T boovfals�U  �V  	� n  H O	�	�	� o   M O�S�S 0 lastitem lastItem	� o   H M�R�R 0 poollist poolList	� 	�	�	� n  U h	�	�	� I   \ h�Q	��P�Q 0 setfont_ setFont_	� 	��O	� n  \ d	�	�	� I   _ d�N	��M�N .0 boldsystemfontofsize_ boldSystemFontOfSize_	� 	��L	� m   _ `�K�K �L  �M  	� n  \ _	�	�	� o   ] _�J�J 0 nsfont NSFont	� m   \ ]�I
�I misccura�O  �P  	� n  U \	�
 	� o   Z \�H�H 0 lastitem lastItem
  o   U Z�G�G 0 poollist poolList	� 


 n  i u


 I   p u�F
�E�F ,0 setindentationlevel_ setIndentationLevel_
 
�D
 m   p q�C�C  �D  �E  
 n  i p


 o   n p�B�B 0 lastitem lastItem
 o   i n�A�A 0 poollist poolList
 
	


	 l  v v�@�?�>�@  �?  �>  

 


 r   v y


 m   v w�=�= 
 o      �<�< 0 nummenuitems numMenuItems
 


 r   z �


 n  z �


 o    ��;�; 0 lastitem lastItem
 o   z �:�: 0 poollist poolList
 o      �9�9 0 thisitem thisItem
 


 Y   � �
�8

�7
 k   � �

 


 n  � �


 I   � ��6
�5�6 &0 additemwithtitle_ addItemWithTitle_
 
 �4
  n   � �
!
"
! 4   � ��3
#
�3 
cobj
# m   � ��2�2 
" l  � �
$�1�0
$ n   � �
%
&
% 4   � ��/
'
�/ 
cobj
' o   � ��.�. 0 x  
& o   � ��-�- "0 defaultpoolsbtc defaultPoolsBTC�1  �0  �4  �5  
 o   � ��,�, 0 poollist poolList
 
(
)
( n  � �
*
+
* I   � ��+
,�*�+ ,0 setindentationlevel_ setIndentationLevel_
, 
-�)
- m   � ��(�( �)  �*  
+ n  � �
.
/
. o   � ��'�' 0 lastitem lastItem
/ o   � ��&�& 0 poollist poolList
) 
0�%
0 r   � �
1
2
1 [   � �
3
4
3 o   � ��$�$ 0 nummenuitems numMenuItems
4 m   � ��#�# 
2 o      �"�" 0 nummenuitems numMenuItems�%  �8 0 x  
 m   � ��!�! 
 n   � �
5
6
5 m   � �� 
�  
nmbr
6 n  � �
7
8
7 2  � ��
� 
cobj
8 o   � ��� "0 defaultpoolsbtc defaultPoolsBTC�7  
 
9
:
9 l  � �����  �  �  
: 
;
<
; n  � �
=
>
= I   � ��
?�� &0 additemwithtitle_ addItemWithTitle_
? 
@�
@ m   � �
A
A �
B
B  L i t e c o i n   p o o l s :�  �  
> o   � ��� 0 poollist poolList
< 
C
D
C n  � �
E
F
E I   � ��
G�� 0 setenabled_ setEnabled_
G 
H�
H m   � ��
� boovfals�  �  
F n  � �
I
J
I o   � ��� 0 lastitem lastItem
J o   � ��� 0 poollist poolList
D 
K
L
K n  � �
M
N
M I   � ��
O�� 0 setfont_ setFont_
O 
P�
P n  � �
Q
R
Q I   � ��
S�� .0 boldsystemfontofsize_ boldSystemFontOfSize_
S 
T�
T m   � ��
�
 �  �  
R n  � �
U
V
U o   � ��	�	 0 nsfont NSFont
V m   � ��
� misccura�  �  
N n  � �
W
X
W o   � ��� 0 lastitem lastItem
X o   � ��� 0 poollist poolList
L 
Y
Z
Y r   � �
[
\
[ l  � �
]��
] \   � �
^
_
^ o   � ��� 0 nummenuitems numMenuItems
_ m   � ��� �  �  
\ n      
`
a
`  ;   � �
a o   � ��� "0 badpoolindicies badPoolIndicies
Z 
b
c
b r   �
d
e
d [   � 
f
g
f o   � �� �  0 nummenuitems numMenuItems
g m   � ����� 
e o      ���� 0 nummenuitems numMenuItems
c 
h
i
h Y  B
j��
k
l��
j k  =
m
m 
n
o
n n *
p
q
p I  *��
r���� &0 additemwithtitle_ addItemWithTitle_
r 
s��
s n  &
t
u
t 4  #&��
v
�� 
cobj
v m  $%���� 
u l #
w����
w n  #
x
y
x 4   #��
z
�� 
cobj
z o  !"���� 0 x  
y o   ���� "0 defaultpoolsltc defaultPoolsLTC��  ��  ��  ��  
q o  ���� 0 poollist poolList
o 
{
|
{ n +7
}
~
} I  27��
���� ,0 setindentationlevel_ setIndentationLevel_
 
���
� m  23���� ��  ��  
~ n +2
�
�
� o  02���� 0 lastitem lastItem
� o  +0���� 0 poollist poolList
| 
���
� r  8=
�
�
� [  8;
�
�
� o  89���� 0 nummenuitems numMenuItems
� m  9:���� 
� o      ���� 0 nummenuitems numMenuItems��  �� 0 x  
k m  ���� 
l n  
�
�
� m  ��
�� 
nmbr
� n 
�
�
� 2 ��
�� 
cobj
� o  ���� "0 defaultpoolsltc defaultPoolsLTC��  
i 
�
�
� l CC��������  ��  ��  
� 
�
�
� r  CF
�
�
� m  CD��
�� boovfals
� o      ���� .0 showncustompoolheader shownCustomPoolHeader
� 
�
�
� Y  G
���
�
���
� k  Z�
�
� 
�
�
� Z  Z�
�
�����
� = Zo
�
�
� c  Zk
�
�
� n  Zg
�
�
� 4  bg��
�
�� 
cobj
� m  cf���� 
� l Zb
�����
� n  Zb
�
�
� 4  _b��
�
�� 
cobj
� o  `a���� 0 x  
� o  Z_���� 0 myprefspools myPrefsPools��  ��  
� m  gj��
�� 
ctxt
� m  kn
�
� �
�
�  1
� n r�
�
�
� I  w���
����� ,0 selectitemwithtitle_ selectItemWithTitle_
� 
���
� c  w�
�
�
� n  w�
�
�
� 4  ���
�
�� 
cobj
� m  ������ 
� l w
�����
� n  w
�
�
� 4  |��
�
�� 
cobj
� o  }~���� 0 x  
� o  w|���� 0 myprefspools myPrefsPools��  ��  
� m  ����
�� 
ctxt��  ��  
� o  rw���� 0 poollist poolList��  ��  
� 
�
�
� Z  �u
�
�����
� B ��
�
�
� n  ��
�
�
� m  ����
�� 
nmbr
� n ��
�
�
� 2 ����
�� 
cobj
� l ��
�����
� n  ��
�
�
� 4  ����
�
�� 
cobj
� o  ������ 0 x  
� o  ������ 0 myprefspools myPrefsPools��  ��  
� m  ������ 
� k  �q
�
� 
�
�
� r  ��
�
�
� m  ����
�� boovfals
� o      ���� 0 foundit  
� 
�
�
� Y  �
���
�
���
� Z  �
�
�����
� = ��
�
�
� n  ��
�
�
� 4  ����
�
�� 
cobj
� m  ������ 
� l ��
�����
� n  ��
�
�
� 4  ����
�
�� 
cobj
� o  ������ 0 y  
� o  ������ "0 defaultpoolsbtc defaultPoolsBTC��  ��  
� n  ��
�
�
� 4  ����
�
�� 
cobj
� m  ������ 
� l ��
�����
� n  ��
�
�
� 4  ����
�
�� 
cobj
� o  ������ 0 x  
� o  ������ 0 myprefspools myPrefsPools��  ��  
� k  ��
�
� 
�
�
� r  ��
�
�
� n  ��
�
�
� 4  ����
�
�� 
cobj
� o  ������ 0 x  
� o  ������ 0 myprefspools myPrefsPools
� o      ���� 0 newitem newItem
� 
�
�
� r  ��
�
�
� n  ��
�
�
� 4  ����
�
�� 
cobj
� m  ������ 
� l ��
�����
� n  ��
�
�
� 4  ����
�
�� 
cobj
� o  ������ 0 y  
� o  ������ "0 defaultpoolsbtc defaultPoolsBTC��  ��  
� n      
�
�
�  ;  ��
� o  ������ 0 newitem newItem
� 
�
�
� r  ��
�
�
� o  ������ 0 newitem newItem
� n      
�
�
� 4  ����
�
�� 
cobj
� o  ������ 0 x  
� o  ������ 0 myprefspools myPrefsPools
� 
�
�
� r  ��
�
�
� m  ����
�� boovtrue
� o      ���� 0 foundit  
�  ��   S  ����  ��  ��  �� 0 y  
� m  ������ 
� n  �� m  ����
�� 
nmbr n �� 2 ����
�� 
cobj o  ������ "0 defaultpoolsbtc defaultPoolsBTC��  
� �� Z  	q���� = 		 o  	
���� 0 foundit  	 m  
��
�� boovfals Y  m
����
 Z  "h���� = "9 n  "- 4  *-��
�� 
cobj m  +,����  l "*���� n  "* 4  '*��
�� 
cobj o  ()���� 0 y   o  "'���� "0 defaultpoolsltc defaultPoolsLTC��  ��   n  -8 4  58��
�� 
cobj m  67��  l -5�~�} n  -5 4  25�|
�| 
cobj o  34�{�{ 0 x   o  -2�z�z 0 myprefspools myPrefsPools�~  �}   k  <d  !  r  <F"#" n  <D$%$ 4  AD�y&
�y 
cobj& o  BC�x�x 0 x  % o  <A�w�w 0 myprefspools myPrefsPools# o      �v�v 0 newitem newItem! '(' r  GW)*) n  GT+,+ 4  OT�u-
�u 
cobj- m  PS�t�t , l GO.�s�r. n  GO/0/ 4  LO�q1
�q 
cobj1 o  MN�p�p 0 y  0 o  GL�o�o "0 defaultpoolsltc defaultPoolsLTC�s  �r  * n      232  ;  UV3 o  TU�n�n 0 newitem newItem( 454 r  Xb676 o  XY�m�m 0 newitem newItem7 n      898 4  ^a�l:
�l 
cobj: o  _`�k�k 0 x  9 o  Y^�j�j 0 myprefspools myPrefsPools5 ;�i;  S  cd�i  ��  ��  �� 0 y   m  �h�h  n  <=< m  �g
�g 
nmbr= n >?> 2 �f
�f 
cobj? o  �e�e "0 defaultpoolsltc defaultPoolsLTC��  ��  ��  ��  ��  ��  
� @�d@ Z  v�AB�c�bA = v�CDC I  v��aE�`�a 0 isdefaultpool isDefaultPoolE F�_F n  w�GHG 4  ��^I
�^ 
cobjI m  ���]�] H l wJ�\�[J n  wKLK 4  |�ZM
�Z 
cobjM o  }~�Y�Y 0 x  L o  w|�X�X 0 myprefspools myPrefsPools�\  �[  �_  �`  D m  ���W
�W boovfalsB k  ��NN OPO Z  ��QR�V�UQ = ��STS o  ���T�T .0 showncustompoolheader shownCustomPoolHeaderT m  ���S
�S boovfalsR k  ��UU VWV r  ��XYX m  ���R
�R boovtrueY o      �Q�Q .0 showncustompoolheader shownCustomPoolHeaderW Z[Z n ��\]\ I  ���P^�O�P &0 additemwithtitle_ addItemWithTitle_^ _�N_ m  ��`` �aa  C u s t o m   p o o l s :�N  �O  ] o  ���M�M 0 poollist poolList[ bcb n ��ded I  ���Lf�K�L 0 setenabled_ setEnabled_f g�Jg m  ���I
�I boovfals�J  �K  e n ��hih o  ���H�H 0 lastitem lastItemi o  ���G�G 0 poollist poolListc jkj n ��lml I  ���Fn�E�F 0 setfont_ setFont_n o�Do n ��pqp I  ���Cr�B�C .0 boldsystemfontofsize_ boldSystemFontOfSize_r s�As m  ���@�@ �A  �B  q n ��tut o  ���?�? 0 nsfont NSFontu m  ���>
�> misccura�D  �E  m n ��vwv o  ���=�= 0 lastitem lastItemw o  ���<�< 0 poollist poolListk x�;x r  ��yzy [  ��{|{ o  ���:�: 0 nummenuitems numMenuItems| m  ���9�9 z o      �8�8 0 nummenuitems numMenuItems�;  �V  �U  P }~} n ��� I  ���7��6�7 &0 additemwithtitle_ addItemWithTitle_� ��5� c  ����� n  ����� 4  ���4�
�4 
cobj� m  ���3�3 � l ����2�1� n  ����� 4  ���0�
�0 
cobj� o  ���/�/ 0 x  � o  ���.�. 0 myprefspools myPrefsPools�2  �1  � m  ���-
�- 
ctxt�5  �6  � o  ���,�, 0 poollist poolList~ ��� n ����� I  ���+��*�+ ,0 setindentationlevel_ setIndentationLevel_� ��)� m  ���(�( �)  �*  � n ����� o  ���'�' 0 lastitem lastItem� o  ���&�& 0 poollist poolList� ��%� r  ����� [  ����� o  ���$�$ 0 nummenuitems numMenuItems� m  ���#�# � o      �"�" 0 nummenuitems numMenuItems�%  �c  �b  �d  �� 0 x  
� m  JK�!�! 
� n  KU��� m  RT� 
�  
nmbr� n KR��� 2 PR�
� 
cobj� o  KP�� 0 myprefspools myPrefsPools��  
� ��� l ����  �  �  �  	� ��� l     ����  �  �  � ��� i  tw��� I      ���� 0 setbitcoinui setBitcoinUI�  �  � I     ���� 
0 msglog  � ��� m    �� ��� $ S e t t i n g   B i t c o i n   U I� ��� m    �� ���  n o t i c e�  �  � ��� l     ����  �  �  � ��� i  x{��� I      ���� 0 setlitecoinui setLitecoinUI�  �  � I     �
��	�
 
0 msglog  � ��� m    �� ��� & S e t t i n g   L i t e c o i n   U I� ��� m    �� ���  n o t i c e�  �	  � ��� l     ����  �  �  � ��� i  |��� I      ���� &0 updatecoinbalance updateCoinBalance�  �  � Z     d����� >    
��� n     ��� 4    � �
�  
cobj� m    ���� � o     ����  0 myprefsgeneral myPrefsGeneral� m    	�� ���  � k    W�� ��� r    ��� I    �������  0 getcoinbalance getCoinBalance� ���� n    ��� 4    ���
�� 
cobj� m    ���� � o    ����  0 myprefsgeneral myPrefsGeneral��  ��  � o      ���� 0 thisbal thisBal� ��� Z    4������� =    ��� o    ���� 0 thisbal thisBal� m    �� ���  ?� k   # 0�� ��� n  # -��� I   ( -������� 0 	settitle_ 	setTitle_� ���� m   ( )�� ���  ( N / A )   B T C��  ��  � o   # (���� 20 addresstomonitorreadout addressToMonitorReadout� ���� L   . 0����  ��  ��  ��  � ��� r   5 :��� ]   5 8��� o   5 6���� 0 thisbal thisBal� m   6 7����'� o      ���� 0 thisbal thisBal� ��� r   ; B��� I  ; @�����
�� .sysorondlong        doub� l  ; <������ o   ; <���� 0 thisbal thisBal��  ��  ��  � o      ���� 0 thisbal thisBal� ��� r   C H��� ^   C F��� o   C D���� 0 thisbal thisBal� m   D E����'� o      ���� 0 thisbal thisBal� ���� n  I W��� I   N W������� 0 	settitle_ 	setTitle_� ���� c   N S��� b   N Q� � o   N O���� 0 thisbal thisBal  m   O P �    B T C� m   Q R��
�� 
ctxt��  ��  � o   I N���� 20 addresstomonitorreadout addressToMonitorReadout��  �  � n  Z d I   _ d������ 0 	settitle_ 	setTitle_ �� m   _ ` �  ��  ��   o   Z _���� 20 addresstomonitorreadout addressToMonitorReadout� 	
	 l     ��������  ��  ��  
  i  �� I      �������� 0 setpools setPools��  ��   k    �  l     ��������  ��  ��    r      J     ����   o      ���� 0 thispool thisPool  l   ����   , & find the pool to start the miner with    � L   f i n d   t h e   p o o l   t o   s t a r t   t h e   m i n e r   w i t h  Y    ?���� Z    : !����  =   '"#" l   %$����$ c    %%&% n    #'(' 4     #��)
�� 
cobj) m   ! "���� ( l    *����* n     +,+ 4     ��-
�� 
cobj- o    ���� 0 x  , o    ���� 0 myprefspools myPrefsPools��  ��  & m   # $��
�� 
ctxt��  ��  # m   % &.. �//  1! l  * 60120 k   * 633 454 r   * 4676 n   * 2898 4   / 2��:
�� 
cobj: o   0 1���� 0 x  9 o   * /���� 0 myprefspools myPrefsPools7 o      ���� 0 thispool thisPool5 ;��;  S   5 6��  1 7 1 found a pool to mine with, therefore start miner   2 �<< b   f o u n d   a   p o o l   t o   m i n e   w i t h ,   t h e r e f o r e   s t a r t   m i n e r��  ��  �� 0 x   m    	����  n   	 =>= m    ��
�� 
nmbr> n  	 ?@? 2   ��
�� 
cobj@ o   	 ���� 0 myprefspools myPrefsPools��   ABA l  @ @��������  ��  ��  B CDC Z   @ UEF����E =  @ DGHG o   @ A���� 0 thispool thisPoolH J   A C����  F k   G QII JKJ I   G N��L���� 
0 msglog  L MNM m   H IOO �PP � D o n ' t   k n o w   w h i c h   p o o l   t o   s t a r t   w i t h ,   n o n e   a r e   f l a g g e d   a s   a c t i v e   ( o r   n o n e   a v a i l a b l e )N Q��Q m   I JRR �SS  w a r n i n g��  ��  K T��T L   O Q����  ��  ��  ��  D UVU l  V V��������  ��  ��  V WXW r   V ]YZY o   V W���� 0 thispool thisPoolZ o      ���� 0 currentpool currentPoolX [\[ l  ^ ^��������  ��  ��  \ ]^] Z   ^ �_`��a_ >  ^ jbcb o   ^ c���� 0 currentcoin currentCoinc l  c id����d c   c iefe n   c gghg 4   d g��i
�� 
cobji m   e f���� h o   c d���� 0 thispool thisPoolf m   g h��
�� 
ctxt��  ��  ` k   m �jj klk I   m y��m���� 
0 msglog  m non b   n tpqp m   n orr �ss , R e s t a r t i n g   m i n i n g   f o r  q n   o stut 4   p s��v
�� 
cobjv m   q r���� u o   o p���� 0 thispool thisPoolo w��w m   t uxx �yy  n o t i c e��  ��  l z{z r   z �|}| c   z �~~ n   z ~��� 4   { ~���
�� 
cobj� m   | }���� � o   z {���� 0 thispool thisPool m   ~ ��
�� 
ctxt} o      ���� 0 currentcoin currentCoin{ ��� I   � ��������� 0 	stopminer 	stopMiner��  ��  � ��� I   � �������� 0 
startminer 
startMiner� ���� m   � ��� ���  ��  ��  � ���� L   � �����  ��  ��  a k   � ��� ��� l  � �������  �    kill setStatusBack timers   � ��� 4   k i l l   s e t S t a t u s B a c k   t i m e r s� ��� I   � �������� 0 	killtimer 	killTimer� ���� o   � ����� (0 setstatusbacktimer setStatusBackTimer��  ��  � ��� r   � ���� n  � ���� 4   � ���
� 
pcls� m   � ��� ���  N S T i m e r� m   � ��~
�~ misccura� o      �}�} (0 setstatusbacktimer setStatusBackTimer� ��� l  � ��|���|  � !  empty setStatusBack buffer   � ��� 6   e m p t y   s e t S t a t u s B a c k   b u f f e r� ��{� r   � ���� n   � ����  ;   � �� o   � ��z�z 0 revertstatus revertStatus� o      �y�y 0 revertstatus revertStatus�{  ^ ��� l  � ��x�w�v�x  �w  �v  � ��� I   � ��u��t�u 0 	killtimer 	killTimer� ��s� o   � ��r�r 0 donationtimer donationTimer�s  �t  � ��� r   � ���� n  � ���� 4   � ��q�
�q 
pcls� m   � ��� ���  N S T i m e r� m   � ��p
�p misccura� o      �o�o *0 donationactivetimer donationActiveTimer� ��� l  � ��n�m�l�n  �m  �l  � ��� l  � ��k���k  � ^ X keep the existing pool 0, delete everything else, add all the pools, then delete pool 0   � ��� �   k e e p   t h e   e x i s t i n g   p o o l   0 ,   d e l e t e   e v e r y t h i n g   e l s e ,   a d d   a l l   t h e   p o o l s ,   t h e n   d e l e t e   p o o l   0� ��� l  � ����� I   � ��j��i�j 0 sendcommand sendCommand� ��� m   � ��� ���  e n a b l e p o o l� ��� m   � ��� ���  0� ��h� m   � ��g
�g boovtrue�h  �i  � W Q force enable the first pool so the miner doesn't complain it has no active pools   � ��� �   f o r c e   e n a b l e   t h e   f i r s t   p o o l   s o   t h e   m i n e r   d o e s n ' t   c o m p l a i n   i t   h a s   n o   a c t i v e   p o o l s� ��� l  � ��f�e�d�f  �e  �d  � ��� l  � ��c���c  � $  delete all pools after pool 0   � ��� <   d e l e t e   a l l   p o o l s   a f t e r   p o o l   0� ��� Y   �{��b���a� k   �v�� ��� r   ���� I   � ��`��_�` 0 sendcommand sendCommand� ��� m   � ��� ���  r e m o v e p o o l� ��� m   � ��� ���  1� ��^� m   � ��]
�] boovfals�^  �_  � o      �\�\ 0 thisresponse thisResponse� ��� Z  ���[�Z� = ��� o  �Y�Y 0 thisresponse thisResponse� m  �� ���  0� l 
���� k  
�� ��� I  
�X��W�X 
0 msglog  � ��� m  �� ��� j T r i e d   t o   r e s e t   p o o l s   b u t   g o t   n o   r e s p o n s e   f r o m   t h e   A P I� ��V� m  �� ���  c r i t i c a l�V  �W  �  �U  L   m  �T�T  �U  �   api not ready?   � �    a p i   n o t   r e a d y ?�[  �Z  �  Q  ^ k   K 	
	 r   . n   , 4  ),�S
�S 
cobj m  *+�R�R  I   )�Q�P�Q 0 splitstring splitString  o  !"�O�O 0 thisresponse thisResponse �N m  "% �  ,�N  �P   o      �M�M 0 thisresponse thisResponse
  r  /= n  /; 4  8;�L
�L 
cobj m  9:�K�K  I  /8�J�I�J 0 splitstring splitString  o  01�H�H 0 thisresponse thisResponse  �G  m  14!! �""  =�G  �I   o      �F�F 0 thisresponse thisResponse #�E# Z  >K$%�D�C$ = >C&'& o  >?�B�B 0 thisresponse thisResponse' m  ?B(( �))  E% l FG*+,*  S  FG+ ( " last pool removed, we're all good   , �-- D   l a s t   p o o l   r e m o v e d ,   w e ' r e   a l l   g o o d�D  �C  �E   R      �A�@�?
�A .ascrerr ****      � ****�@  �?   I  S^�>.�=�> 
0 msglog  . /0/ m  TW11 �22 x U n p a r s e a b l e   r e s p o n s e   r e t u r n e d   w h e n   a t t e m p t i n g   t o   r e m o v e   p o o l0 3�<3 m  WZ44 �55  w a r n i n g�<  �=   6�;6 Z _v78�:�97 = _d9:9 o  _`�8�8 0 x  : m  `c�7�7 d8 I  gr�6;�5�6 
0 msglog  ; <=< m  hk>> �?? h U n a b l e   t o   r e m o v e   a l l   p o o l s   w h e n   r e s e t t i n g   p o o l   s e t u p= @�4@ m  knAA �BB  w a r n i n g�4  �5  �:  �9  �;  �b 0 x  � m   � ��3�3 � m   � ��2�2 d�a  � CDC l ||�1�0�/�1  �0  �/  D EFE l ||�.GH�.  G $  add all pools back into miner   H �II <   a d d   a l l   p o o l s   b a c k   i n t o   m i n e rF JKJ Y  |*L�-MN�,L Z  �%OP�+�*O > ��QRQ c  ��STS n  ��UVU 4  ���)W
�) 
cobjW m  ���(�( V l ��X�'�&X n  ��YZY 4  ���%[
�% 
cobj[ o  ���$�$ 0 x  Z o  ���#�# 0 myprefspools myPrefsPools�'  �&  T m  ���"
�" 
ctxtR m  ��\\ �]]  0P k  �!^^ _`_ I  ���!a� �! 
0 msglog  a bcb b  ��ded m  ��ff �gg  A d d i n g   p o o l  e l ��h��h c  ��iji n  ��klk 4  ���m
� 
cobjm m  ���� l l ��n��n n  ��opo 4  ���q
� 
cobjq o  ���� 0 x  p o  ���� 0 myprefspools myPrefsPools�  �  j m  ���
� 
ctxt�  �  c r�r m  ��ss �tt  n o t i c e�  �   ` uvu l ���wx�  w , & lookup the password from the keychain   x �yy L   l o o k u p   t h e   p a s s w o r d   f r o m   t h e   k e y c h a i nv z{z r  ��|}| c  ��~~ I  ������  0 lookuppassword lookupPassword� ��� c  ����� n  ����� 4  ����
� 
cobj� m  ���� � l ������ n  ����� 4  ����
� 
cobj� o  ���� 0 x  � o  ���� 0 myprefspools myPrefsPools�  �  � m  ���

�
 
ctxt� ��	� c  ����� n  ����� 4  ����
� 
cobj� m  ���� � l ������ n  ����� 4  ����
� 
cobj� o  ���� 0 x  � o  ���� 0 myprefspools myPrefsPools�  �  � m  ���
� 
ctxt�	  �   m  ��� 
�  
ctxt} o      ���� 0 thispass thisPass{ ��� l  ��������  ���
				if thisPass is "" then
					try
						do shell script "security add-generic-password -a \"" & (item 3 of (item x of myPrefsPools) as text) & "\" -j \"" & (item 2 of (item x of myPrefsPools) as text) & "\" -s \"Asteroid (" & (item 1 of (item x of myPrefsPools) as text) & ")\" -T " & bundlePath
					end try
				else
					try
						do shell script "security add-generic-password -a \"" & (item 3 of (item x of myPrefsPools) as text) & "\" -j \"" & (item 2 of (item x of myPrefsPools) as text) & "\" -s \"Asteroid (" & (item 1 of (item x of myPrefsPools) as text) & ")\" -w \"" & thisPass & "\" -T " & bundlePath
					end try
				end if
				   � ��� 
 	 	 	 	 i f   t h i s P a s s   i s   " "   t h e n 
 	 	 	 	 	 t r y 
 	 	 	 	 	 	 d o   s h e l l   s c r i p t   " s e c u r i t y   a d d - g e n e r i c - p a s s w o r d   - a   \ " "   &   ( i t e m   3   o f   ( i t e m   x   o f   m y P r e f s P o o l s )   a s   t e x t )   &   " \ "   - j   \ " "   &   ( i t e m   2   o f   ( i t e m   x   o f   m y P r e f s P o o l s )   a s   t e x t )   &   " \ "   - s   \ " A s t e r o i d   ( "   &   ( i t e m   1   o f   ( i t e m   x   o f   m y P r e f s P o o l s )   a s   t e x t )   &   " ) \ "   - T   "   &   b u n d l e P a t h 
 	 	 	 	 	 e n d   t r y 
 	 	 	 	 e l s e 
 	 	 	 	 	 t r y 
 	 	 	 	 	 	 d o   s h e l l   s c r i p t   " s e c u r i t y   a d d - g e n e r i c - p a s s w o r d   - a   \ " "   &   ( i t e m   3   o f   ( i t e m   x   o f   m y P r e f s P o o l s )   a s   t e x t )   &   " \ "   - j   \ " "   &   ( i t e m   2   o f   ( i t e m   x   o f   m y P r e f s P o o l s )   a s   t e x t )   &   " \ "   - s   \ " A s t e r o i d   ( "   &   ( i t e m   1   o f   ( i t e m   x   o f   m y P r e f s P o o l s )   a s   t e x t )   &   " ) \ "   - w   \ " "   &   t h i s P a s s   &   " \ "   - T   "   &   b u n d l e P a t h 
 	 	 	 	 	 e n d   t r y 
 	 	 	 	 e n d   i f 
 	 	 	 	� ��� l ����������  ��  ��  � ��� l ��������  � $  tell the api to add this pool   � ��� <   t e l l   t h e   a p i   t o   a d d   t h i s   p o o l� ��� I  �������� 0 sendcommand sendCommand� ��� m  ���� ���  a d d p o o l� ��� b  �
��� b  ���� b  ���� b  ����� l �������� c  ����� n  ����� 4  �����
�� 
cobj� m  ������ � l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � o  ������ 0 myprefspools myPrefsPools��  ��  � m  ����
�� 
ctxt��  ��  � m  ���� ���  ,� l ������� c  ���� n  ���� 4  ����
�� 
cobj� m  � ���� � l �������� n  ����� 4  �����
�� 
cobj� o  ������ 0 x  � o  ������ 0 myprefspools myPrefsPools��  ��  � m  ��
�� 
ctxt��  ��  � m  �� ���  ,� o  	���� 0 thispass thisPass� ���� m  
��
�� boovtrue��  ��  � ��� l ��������  ��  ��  � ��� r  ��� n  ��� 4  ���
�� 
cobj� m  ���� � l ������ n  ��� 4  ���
�� 
cobj� o  ���� 0 x  � o  ���� 0 myprefspools myPrefsPools��  ��  � o      ���� 0 	thisreply 	thisReply� ���� l   ��������  ��  ��  ��  �+  �*  �- 0 x  M m  ����� N n  ����� m  ����
�� 
nmbr� n ����� 2 ����
�� 
cobj� o  ������ 0 myprefspools myPrefsPools�,  K ��� I  +7������� 0 sendcommand sendCommand� ��� m  ,/�� ���  e n a b l e p o o l� ��� m  /2�� ���  1� ���� m  23��
�� boovfals��  ��  � ��� I  8D������� 0 sendcommand sendCommand� ��� m  9<�� ���  s w i t c h p o o l� ��� m  <?�� ���  1� ���� m  ?@��
�� boovfals��  ��  � ��� r  E]��� n EW��� I  JW������� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� ��� m  JK���� � � �  f  KL   m  LO �  s e t P o o l K i l l  m  OR �   	��	 m  RS��
�� boovfals��  ��  � n EJ

 o  FJ���� 0 nstimer NSTimer m  EF��
�� misccura� o      ���� $0 setpoolkilltimer setPoolKillTimer�  l ^^��������  ��  ��    l ^^����   A ; if user wishes to donate hash time, set the timer to do so    � v   i f   u s e r   w i s h e s   t o   d o n a t e   h a s h   t i m e ,   s e t   t h e   t i m e r   t o   d o   s o �� Z  ^��� ? ^h n  ^f 4  cf��
�� 
cobj m  de����  o  ^c����  0 myprefsgeneral myPrefsGeneral m  fg����   k  k�  I  kp�������� (0 startdonationtimer startDonationTimer��  ��   �� I  q��� ���� 
0 msglog    !"! b  r�#$# b  r�%&% m  ru'' �(( � P o o l   c o n f i g u r a t i o n   u p d a t e d .     W i l l   s w i t c h   t o   t h e   d o n a t i o n   p o o l   i n  & n  u)*) 4  z��+
�� 
cobj+ m  {~���� * o  uz����  0 myprefsgeneral myPrefsGeneral$ m  ��,, �--    h o u r ( s ) ." .��. m  ��// �00  n o t i c e��  ��  ��  ��   I  ����1���� 
0 msglog  1 232 m  ��44 �55 4 P o o l   c o n f i g u r a t i o n   u p d a t e d3 6��6 m  ��77 �88  n o t i c e��  ��  ��   9:9 l     ��������  ��  ��  : ;<; i  ��=>= I      �������� 0 setpoolkill setPoolKill��  ��  > k     '?? @A@ l    BCDB I     ��E���� 0 sendcommand sendCommandE FGF m    HH �II  d i s a b l e p o o lG JKJ m    LL �MM  0K N��N m    ��
�� boovfals��  ��  C   disable the first pool   D �OO .   d i s a b l e   t h e   f i r s t   p o o lA PQP l  	 RSTR I   	 ��U���� 0 sendcommand sendCommandU VWV m   
 XX �YY  r e m o v e p o o lW Z[Z m    \\ �]]  0[ ^��^ m    ��
�� boovfals��  ��  S   delete the first pool   T �__ ,   d e l e t e   t h e   f i r s t   p o o lQ `a` I    ��b���� 0 	killtimer 	killTimerb c��c o    ���� $0 setpoolkilltimer setPoolKillTimer��  ��  a d��d r    'efe n   !ghg 4    !��i
�� 
pclsi m     jj �kk  N S T i m e rh m    ��
�� misccuraf o      ���� $0 setpoolkilltimer setPoolKillTimer��  < lml l     ��������  ��  ��  m non i  ��pqp I      ��r���� 0 isdefaultpool isDefaultPoolr s��s o      ���� 0 
thispoolid 
thisPoolID��  ��  q l    jtuvt k     jww xyx r     z{z c     |}| o     ���� 0 
thispoolid 
thisPoolID} m    ��
�� 
ctxt{ o      ���� 0 
thispoolid 
thisPoolIDy ~~ Y    6�������� Z    1������� =   (��� l   &������ c    &��� n    $��� 4   ! $���
�� 
cobj� m   " #�� � l   !��~�}� n    !��� 4    !�|�
�| 
cobj� o     �{�{ 0 x  � o    �z�z "0 defaultpoolsbtc defaultPoolsBTC�~  �}  � m   $ %�y
�y 
ctxt��  ��  � o   & '�x�x 0 
thispoolid 
thisPoolID� L   + -�� m   + ,�w
�w boovtrue��  ��  �� 0 x  � m   	 
�v�v � n   
 ��� m    �u
�u 
nmbr� n  
 ��� 2   �t
�t 
cobj� o   
 �s�s "0 defaultpoolsbtc defaultPoolsBTC��   ��� Y   7 g��r���q� Z   J b���p�o� =  J Y��� l  J W��n�m� c   J W��� n   J U��� 4   R U�l�
�l 
cobj� m   S T�k�k � l  J R��j�i� n   J R��� 4   O R�h�
�h 
cobj� o   P Q�g�g 0 x  � o   J O�f�f "0 defaultpoolsltc defaultPoolsLTC�j  �i  � m   U V�e
�e 
ctxt�n  �m  � o   W X�d�d 0 
thispoolid 
thisPoolID� L   \ ^�� m   \ ]�c
�c boovtrue�p  �o  �r 0 x  � m   : ;�b�b � n   ; E��� m   B D�a
�a 
nmbr� n  ; B��� 2  @ B�`
�` 
cobj� o   ; @�_�_ "0 defaultpoolsltc defaultPoolsLTC�q  � ��^� L   h j�� m   h i�]
�] boovfals�^  u &   check if this is a default pool   v ��� @   c h e c k   i f   t h i s   i s   a   d e f a u l t   p o o lo ��� l     �\�[�Z�\  �[  �Z  � ��� i  ����� I      �Y��X�Y  0 lookuppassword lookupPassword� ��� o      �W�W 0 thispool thisPool� ��V� o      �U�U 0 thisuser thisUser�V  �X  � L     �� c     ��� n    ��� I    �T��S�T $0 lookuppassword__ lookupPassword__� ��� o    �R�R 0 thispool thisPool� ��Q� o    �P�P 0 thisuser thisUser�Q  �S  � o     �O�O 0 	apphelper 	AppHelper� m    �N
�N 
ctxt� ��� l     �M�L�K�M  �L  �K  � ��� i  ����� I      �J��I�J $0 checkifbadlogin_ checkIfBadLogin_� ��H� o      �G�G 0 
thispoolid 
thisPoolID�H  �I  � k    M�� ��� l     �F���F  � ) # look up pool info based on pool ID   � ��� F   l o o k   u p   p o o l   i n f o   b a s e d   o n   p o o l   I D� ��� l     �E���E  � F @ set thisPoolID to thisPoolID's userInfo's stringValue() as text   � ��� �   s e t   t h i s P o o l I D   t o   t h i s P o o l I D ' s   u s e r I n f o ' s   s t r i n g V a l u e ( )   a s   t e x t� ��� r     
��� n     ��� 4    �D�
�D 
cobj� m    �C�C � o     �B�B 0 currentpool currentPool� o      �A�A 0 
thispoolid 
thisPoolID� ��� r    ��� J    �@�@  � o      �?�? 0 thispool thisPool� ��� r    ��� I    �>��=�> 0 isdefaultpool isDefaultPool� ��<� o    �;�; 0 
thispoolid 
thisPoolID�<  �=  � o      �:�:  0 poolindefaults poolInDefaults� ��� l   �9�8�7�9  �8  �7  � ��� Y    Q��6���5� Z   , L���4�3� =  , ;��� l  , 9��2�1� c   , 9��� n   , 7��� 4   4 7�0�
�0 
cobj� m   5 6�/�/ � l  , 4��.�-� n   , 4��� 4   1 4�,�
�, 
cobj� o   2 3�+�+ 0 x  � o   , 1�*�* 0 myprefspools myPrefsPools�.  �-  � m   7 8�)
�) 
ctxt�2  �1  � o   9 :�(�( 0 
thispoolid 
thisPoolID� l  > H���� r   > H   n   > F 4   C F�'
�' 
cobj o   D E�&�& 0 x   o   > C�%�% 0 myprefspools myPrefsPools o      �$�$ 0 thispool thisPool�  	 found it   � �    f o u n d   i t�4  �3  �6 0 x  � m    �#�# � n    ' m   $ &�"
�" 
nmbr n   $	 2  " $�!
�! 
cobj	 o    "� �  0 myprefspools myPrefsPools�5  � 

 l  R R����  �  �    Z   R g�� =  R V o   R S�� 0 thispool thisPool J   S U��   l  Y c k   Y c  I   Y `��� 
0 msglog    m   Z [ � � W h e n   c h e c k i n g   i f   p o o l   l o g i n   w a s   s u c c e s s f u l ,   I   w a s n ' t   a b l e   t o   f i n d   t h e   c u r r e n t   p o o l   i n   t h e   u s e r   p r e f e r e n c e s . � m   [ \ � 
 a l e r t�  �    �  L   a c��  �   ' ! wasn't in prefs for some reason?    �!! B   w a s n ' t   i n   p r e f s   f o r   s o m e   r e a s o n ?�  �   "#" l  h h����  �  �  # $%$ l  h h�&'�  & 7 1 if pool is not active, then assume it bummed out   ' �(( b   i f   p o o l   i s   n o t   a c t i v e ,   t h e n   a s s u m e   i t   b u m m e d   o u t% )*) r   h r+,+ I   h p�-�� 0 sendcommand sendCommand- ./. m   i j00 �11 
 p o o l s/ 232 m   j k44 �55  3 6�6 m   k l�
� boovfals�  �  , o      �� 0 
poolstatus 
poolStatus* 787 r   s |9:9 I   s z�
;�	�
 0 splitstring splitString; <=< o   t u�� 0 
poolstatus 
poolStatus= >�> m   u v?? �@@  |�  �	  : o      ��  0 thispoolstatus thisPoolStatus8 ABA r   } �CDC m   } ~EE �FF  D o      �� 0 temppool tempPoolB GHG Y   � �I�JK�I Z   � �LM��L E   � �NON n   � �PQP 4   � �� R
�  
cobjR o   � ����� 0 x  Q o   � �����  0 thispoolstatus thisPoolStatusO l  � �S����S c   � �TUT n   � �VWV 4   � ���X
�� 
cobjX m   � ����� W o   � ����� 0 thispool thisPoolU m   � ���
�� 
ctxt��  ��  M k   � �YY Z[Z r   � �\]\ n   � �^_^ 4   � ���`
�� 
cobj` o   � ����� 0 x  _ o   � �����  0 thispoolstatus thisPoolStatus] o      ���� 0 temppool tempPool[ a��a  S   � ���  �  �  � 0 x  J m   � ����� K n   � �bcb m   � ���
�� 
nmbrc n  � �ded 2  � ���
�� 
cobje o   � �����  0 thispoolstatus thisPoolStatus�  H fgf Z   � �hi��jh =  � �klk o   � ����� 0 temppool tempPooll m   � �mm �nn  i r   � �opo m   � ���
�� boovfalsp o      ���� "0 loginsuccessful loginSuccessful��  j k   � �qq rsr r   � �tut n   � �vwv 4   � ���x
�� 
cobjx m   � ����� w I   � ���y���� 0 splitstring splitStringy z{z o   � ����� 0 temppool tempPool{ |��| m   � �}} �~~  ,��  ��  u o      ����  0 thispoolstatus thisPoolStatuss � r   � ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � I   � �������� 0 splitstring splitString� ��� o   � �����  0 thispoolstatus thisPoolStatus� ���� m   � ��� ���  =��  ��  � o      ����  0 thispoolstatus thisPoolStatus� ���� Z   � ������� =  � ���� o   � �����  0 thispoolstatus thisPoolStatus� m   � ��� ���  D e a d� l  � ����� r   � ���� m   � ���
�� boovfals� o      ���� "0 loginsuccessful loginSuccessful�   login unsuccessful   � ��� &   l o g i n   u n s u c c e s s f u l��  � r   � ���� m   � ���
�� boovtrue� o      ���� "0 loginsuccessful loginSuccessful��  g ��� Z   �K������ =  � ���� o   � ����� "0 loginsuccessful loginSuccessful� m   � ���
�� boovfals� k   �0�� ��� I   � ������� 
0 msglog  � ��� b   � ���� m   � ��� ��� , L o g i n   u n s u c c e s s f u l   t o  � n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thispool thisPool� ���� m   � ��� ���  w a r n i n g��  ��  � ��� I  ������� 0 setstatusline setStatusLine� ��� b  
��� m  �� ��� 6 U n s u c c e s s f u l   l o g g i n g   i n   t o  � n  	��� 4  	���
�� 
cobj� m  ���� � o  ���� 0 thispool thisPool� ��� m  
��
�� boovfals� ��� m  ���� � ���� m  �� ���  p o o l s t a t u s��  ��  � ��� r  ��� o  ���� 0 thispool thisPool� o      ���� 0 editingpool editingPool� ��� l ��������  ��  ��  � ��� n *��� I  #*������� "0 setstringvalue_ setStringValue_� ���� m  #&�� ��� $ U n s u c c e s s f u l   l o g i n��  ��  � o  #���� "0 poolsheetstatus poolSheetStatus� ��� l ++��������  ��  ��  � ���� I  +0�������� (0 incorrectpoollogin incorrectPoolLogin��  ��  ��  ��  � l 3K���� I  3K������� 0 setstatusline setStatusLine� ��� b  4@��� b  4<��� m  47�� ���  L o g   i n   t o  � n  7;��� 4  8;���
�� 
cobj� m  9:���� � o  78���� 0 thispool thisPool� m  <?�� ���    w a s   s u c c e s s f u l� ��� m  @A��
�� boovfals� ��� m  AB���� � ���� m  BE�� ���  p o o l s t a t u s��  ��  �   login successful   � ��� "   l o g i n   s u c c e s s f u l� ���� l LL��������  ��  ��  ��  � ��� l     ��������  ��  ��  � ��� i  ����� I      �������� (0 incorrectpoollogin incorrectPoolLogin��  ��  � k    �� ��� l     ��������  ��  ��  � ��� I     �������� &0 stopruntimetimers stopRuntimeTimers��  ��  � ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ��� l   ��������  ��  ��  �    r     o    ���� 0 currentpool currentPool o      ���� 0 thispool thisPool  r     o    ���� 0 currentpool currentPool o      ���� 0 editingpool editingPool 	 l     ��������  ��  ��  	 

 n    0 I   % 0������ 0 settextcolor_ setTextColor_ �� n  % , o   * ,���� 0 redcolor redColor o   % *���� 0 nscolor NSColor��  ��   o     %���� "0 poolsheetstatus poolSheetStatus  n  1 > I   6 >������ "0 setstringvalue_ setStringValue_ �� n   6 : 4   7 :��
�� 
cobj m   8 9����  o   6 7���� 0 thispool thisPool��  ��   o   1 6���� (0 poolsheetnamefixed poolSheetNameFixed  n  ? L I   D L������ "0 setstringvalue_ setStringValue_  ��  n   D H!"! 4   E H�#
� 
cobj# m   F G�~�~ " o   D E�}�} 0 thispool thisPool��  ��   o   ? D�|�| 0 poolsheetname poolSheetName $%$ n  M Z&'& I   R Z�{(�z�{ "0 setstringvalue_ setStringValue_( )�y) n   R V*+* 4   S V�x,
�x 
cobj, m   T U�w�w + o   R S�v�v 0 thispool thisPool�y  �z  ' o   M R�u�u (0 poolsheetcoinfixed poolSheetCoinFixed% -.- n  [ h/0/ I   ` h�t1�s�t ,0 selectitemwithtitle_ selectItemWithTitle_1 2�r2 n   ` d343 4   a d�q5
�q 
cobj5 m   b c�p�p 4 o   ` a�o�o 0 thispool thisPool�r  �s  0 o   [ `�n�n 0 poolsheetcoin poolSheetCoin. 676 r   i t898 I   i r�m:�l�m 0 isdefaultpool isDefaultPool: ;�k; n   j n<=< 4   k n�j>
�j 
cobj> m   l m�i�i = o   j k�h�h 0 thispool thisPool�k  �l  9 o      �g�g  0 poolindefaults poolInDefaults7 ?@? Z   u �AB�fCA =  u xDED o   u v�e�e  0 poolindefaults poolInDefaultsE m   v w�d
�d boovtrueB k   { �FF GHG n  { �IJI I   � ��cK�b�c 0 
sethidden_ 
setHidden_K L�aL m   � ��`
�` boovfals�a  �b  J o   { ��_�_ (0 poolsheetnamefixed poolSheetNameFixedH MNM n  � �OPO I   � ��^Q�]�^ 0 
sethidden_ 
setHidden_Q R�\R m   � ��[
�[ boovtrue�\  �]  P o   � ��Z�Z 0 poolsheetname poolSheetNameN STS n  � �UVU I   � ��YW�X�Y 0 
sethidden_ 
setHidden_W X�WX m   � ��V
�V boovfals�W  �X  V o   � ��U�U (0 poolsheetcoinfixed poolSheetCoinFixedT Y�TY n  � �Z[Z I   � ��S\�R�S 0 
sethidden_ 
setHidden_\ ]�Q] m   � ��P
�P boovtrue�Q  �R  [ o   � ��O�O 0 poolsheetcoin poolSheetCoin�T  �f  C k   � �^^ _`_ n  � �aba I   � ��Nc�M�N 0 
sethidden_ 
setHidden_c d�Ld m   � ��K
�K boovtrue�L  �M  b o   � ��J�J (0 poolsheetnamefixed poolSheetNameFixed` efe n  � �ghg I   � ��Ii�H�I 0 
sethidden_ 
setHidden_i j�Gj m   � ��F
�F boovfals�G  �H  h o   � ��E�E 0 poolsheetname poolSheetNamef klk n  � �mnm I   � ��Do�C�D 0 
sethidden_ 
setHidden_o p�Bp m   � ��A
�A boovtrue�B  �C  n o   � ��@�@ (0 poolsheetcoinfixed poolSheetCoinFixedl q�?q n  � �rsr I   � ��>t�=�> 0 
sethidden_ 
setHidden_t u�<u m   � ��;
�; boovfals�<  �=  s o   � ��:�: 0 poolsheetcoin poolSheetCoin�?  @ vwv n  � �xyx I   � ��9z�8�9 "0 setstringvalue_ setStringValue_z {�7{ n   � �|}| 4   � ��6~
�6 
cobj~ m   � ��5�5 } o   � ��4�4 0 thispool thisPool�7  �8  y o   � ��3�3 0 poolsheeturl poolSheetURLw � n  � ���� I   � ��2��1�2 "0 setstringvalue_ setStringValue_� ��0� n   � ���� 4   � ��/�
�/ 
cobj� m   � ��.�. � o   � ��-�- 0 thispool thisPool�0  �1  � o   � ��,�, 20 poolsheetworkerusername poolSheetWorkerUsername� ��� n  �	��� I   �	�+��*�+ "0 setstringvalue_ setStringValue_� ��)� c   ���� I   ��(��'�(  0 lookuppassword lookupPassword� ��� n   � ���� 4   � ��&�
�& 
cobj� m   � ��%�% � o   � ��$�$ 0 thispool thisPool� ��#� n   � ���� 4   � ��"�
�" 
cobj� m   � ��!�! � o   � �� �  0 thispool thisPool�#  �'  � m  �
� 
ctxt�)  �*  � o   � ��� 20 poolsheetworkerpassword poolSheetWorkerPassword� ��� n 
��� I  ���� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_� ��� o  �� 0 	poolsheet 	poolSheet� ��� o  �� 0 
mainwindow 
mainWindow� ���  f  � ��� m  �
� 
msng� ��� m  �
� 
msng�  �  � n 
��� o  �� 0 nsapp NSApp� m  
�
� misccura�  � ��� l     ����  �  �  � ��� i  ����� I      ���� 0 choosepool_ choosePool_� ��� o      �� 0 thispool thisPool�  �  � k    �� ��� I     
���� 0 	killtimer 	killTimer� ��
� o    �	�	 0 donationtimer donationTimer�
  �  � ��� r    ��� n   ��� 4    ��
� 
pcls� m    �� ���  N S T i m e r� m    �
� misccura� o      �� 0 donationtimer donationTimer� ��� I     ���� 0 	killtimer 	killTimer� ��� o    �� *0 donationactivetimer donationActiveTimer�  �  � ��� r   ! +��� n  ! %��� 4   " %��
� 
pcls� m   # $�� ���  N S T i m e r� m   ! "� 
�  misccura� o      ���� *0 donationactivetimer donationActiveTimer� ��� l  , ,������  � #  set myPrefsPools to this one   � ��� :   s e t   m y P r e f s P o o l s   t o   t h i s   o n e� ��� l  , ,��������  ��  ��  � ��� r   , 5��� c   , 3��� n  , 1��� I   - 1�������� *0 titleofselecteditem titleOfSelectedItem��  ��  � o   , -���� 0 thispool thisPool� m   1 2��
�� 
ctxt� o      ���� 0 apool aPool� ��� l  6 6��������  ��  ��  � ��� Z   6 �������� =  6 9��� o   6 7���� 0 apool aPool� m   7 8�� ���  N e w   p o o l . . .� k   < ��� ��� n  < F��� I   A F������� 0 
sethidden_ 
setHidden_� ���� m   A B��
�� boovtrue��  ��  � o   < A���� (0 poolsheetnamefixed poolSheetNameFixed� ��� n  G Q��� I   L Q������� 0 
sethidden_ 
setHidden_� ���� m   L M��
�� boovfals��  ��  � o   G L���� 0 poolsheetname poolSheetName� ��� n  R \��� I   W \������� 0 
sethidden_ 
setHidden_� ���� m   W X��
�� boovtrue��  ��  � o   R W���� (0 poolsheetcoinfixed poolSheetCoinFixed� ��� n  ] g��� I   b g������� 0 
sethidden_ 
setHidden_� ���� m   b c��
�� boovfals��  ��  � o   ] b���� 0 poolsheetcoin poolSheetCoin� ��� r   h o   m   h i �  n e w o      ���� 0 editingpool editingPool�  n  p z I   u z������ "0 setstringvalue_ setStringValue_ 	��	 m   u v

 �  ��  ��   o   p u���� 0 poolsheetname poolSheetName  n  { � I   � ������� "0 setstringvalue_ setStringValue_ �� m   � � �  ��  ��   o   { ����� (0 poolsheetnamefixed poolSheetNameFixed  n  � � I   � ������� "0 setstringvalue_ setStringValue_ �� m   � � �  ��  ��   o   � ����� "0 poolsheetstatus poolSheetStatus  n  � � I   � ��� ���� "0 setstringvalue_ setStringValue_  !��! m   � �"" �##  ��  ��   o   � ����� 0 poolsheeturl poolSheetURL $%$ n  � �&'& I   � ���(���� "0 setstringvalue_ setStringValue_( )��) m   � �** �++  ��  ��  ' o   � ����� 20 poolsheetworkerusername poolSheetWorkerUsername% ,-, n  � �./. I   � ���0���� "0 setstringvalue_ setStringValue_0 1��1 m   � �22 �33  ��  ��  / o   � ����� 20 poolsheetworkerpassword poolSheetWorkerPassword- 454 n  � �676 I   � ���8���� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_8 9:9 o   � ����� 0 	poolsheet 	poolSheet: ;<; o   � ����� 0 
mainwindow 
mainWindow< =>=  f   � �> ?@? m   � ���
�� 
msng@ A��A m   � ���
�� 
msng��  ��  7 n  � �BCB o   � ����� 0 nsapp NSAppC m   � ���
�� misccura5 D��D L   � �����  ��  ��  ��  � EFE l  � ���������  ��  ��  F GHG l  � ���IJ��  I > 8 turn off all other pools, turn on this pool (if exists)   J �KK p   t u r n   o f f   a l l   o t h e r   p o o l s ,   t u r n   o n   t h i s   p o o l   ( i f   e x i s t s )H LML r   � �NON m   � ���
�� boovfalsO o      ���� 0 	foundpool 	foundPoolM PQP Y   �TR��ST��R Z   �OUV��WU =  �
XYX l  �Z����Z c   �[\[ n   �]^] 4  ��_
�� 
cobj_ m  ���� ^ l  �`����` c   �aba n   � �cdc 4   � ���e
�� 
cobje o   � ����� 0 x  d o   � ����� 0 myprefspools myPrefsPoolsb m   � ��
�� 
list��  ��  \ m  ��
�� 
ctxt��  ��  Y o  	���� 0 apool aPoolV k  7ff ghg r  "iji m  kk �ll  1j n      mnm 4  !��o
�� 
cobjo m   ���� n n  pqp 4  ��r
�� 
cobjr o  ���� 0 x  q o  ���� 0 myprefspools myPrefsPoolsh sts r  #&uvu m  #$��
�� boovtruev o      ���� 0 	foundpool 	foundPoolt w��w r  '7xyx c  '5z{z n  '1|}| 4  ,1��~
�� 
cobj~ o  /0���� 0 x  } o  ',���� 0 myprefspools myPrefsPools{ m  14��
�� 
listy o      ���� 0 
chosenpool 
chosenPool��  ��  W r  :O� m  :=�� ���  0� n      ��� 4  GN���
�� 
cobj� m  JM���� � n  =G��� 4  BG���
�� 
cobj� o  EF���� 0 x  � o  =B���� 0 myprefspools myPrefsPools�� 0 x  S m   � ����� T n   � ���� m   � ���
�� 
nmbr� n  � ���� 2  � ���
�� 
cobj� o   � ����� 0 myprefspools myPrefsPools��  Q ��� Z  U�������� = UX��� o  UV���� 0 	foundpool 	foundPool� m  VW��
�� boovfals� k  [}�� ��� l [[������  � ( "find the pool in the default lists   � ��� D f i n d   t h e   p o o l   i n   t h e   d e f a u l t   l i s t s� ��� Y  [��������� Z  r�������� = r���� c  r���� n  r���� 4  �����
�� 
cobj� m  ������ � l r������ c  r���� n  r|��� 4  w|�~�
�~ 
cobj� o  z{�}�} 0 y  � o  rw�|�| "0 defaultpoolsbtc defaultPoolsBTC� m  |�{
�{ 
list��  �  � m  ���z
�z 
ctxt� o  ���y�y 0 apool aPool� k  ���� ��� r  ����� c  ����� J  ���� ��� o  ���x�x 0 apool aPool� ��� c  ����� n  ����� 4  ���w�
�w 
cobj� m  ���v�v � l ����u�t� c  ����� n  ����� 4  ���s�
�s 
cobj� o  ���r�r 0 y  � o  ���q�q "0 defaultpoolsbtc defaultPoolsBTC� m  ���p
�p 
list�u  �t  � m  ���o
�o 
ctxt� ��� m  ���� ���  � ��� m  ���� ���  1� ��� m  ���� ���  B i t c o i n� ��n� c  ����� n  ����� 4  ���m�
�m 
cobj� m  ���l�l � l ����k�j� c  ����� n  ����� 4  ���i�
�i 
cobj� o  ���h�h 0 y  � o  ���g�g "0 defaultpoolsbtc defaultPoolsBTC� m  ���f
�f 
list�k  �j  � m  ���e
�e 
ctxt�n  � m  ���d
�d 
list� n      ���  ;  ��� o  ���c�c 0 myprefspools myPrefsPools� ��� r  ����� m  ���b
�b boovtrue� o      �a�a 0 	foundpool 	foundPool� ��`�  S  ���`  ��  ��  �� 0 y  � m  ^_�_�_ � n  _m��� m  hl�^
�^ 
nmbr� n _h��� 2 dh�]
�] 
cobj� o  _d�\�\ "0 defaultpoolsbtc defaultPoolsBTC��  � ��� Z  �p���[�Z� = ����� o  ���Y�Y 0 	foundpool 	foundPool� m  ���X
�X boovfals� Y  �l��W���V� Z  �g���U�T� = ���� c  ���� n  ���� 4  �S�
�S 
cobj� m  �R�R � l ���Q�P� c  ���� n  ���� 4  �O�
�O 
cobj� o  �N�N 0 y  � o  ��M�M "0 defaultpoolsltc defaultPoolsLTC� m  �L
�L 
list�Q  �P  � m  �K
�K 
ctxt� o  �J�J 0 apool aPool� k  c��    r  ] c  V J  R  o  �I�I 0 apool aPool 	
	 c  . n  , 4  ',�H
�H 
cobj m  *+�G�G  l '�F�E c  ' n  # 4  #�D
�D 
cobj o  !"�C�C 0 y   o  �B�B "0 defaultpoolsltc defaultPoolsLTC m  #&�A
�A 
list�F  �E   m  ,-�@
�@ 
ctxt
  m  .1 �    m  14 �  1  m  47   �!!  L i t e c o i n "�?" c  7N#$# n  7L%&% 4  EL�>'
�> 
cobj' m  HK�=�= & l 7E(�<�;( c  7E)*) n  7A+,+ 4  <A�:-
�: 
cobj- o  ?@�9�9 0 y  , o  7<�8�8 "0 defaultpoolsltc defaultPoolsLTC* m  AD�7
�7 
list�<  �;  $ m  LM�6
�6 
ctxt�?   m  RU�5
�5 
list n      ./.  ;  [\/ o  V[�4�4 0 myprefspools myPrefsPools 010 r  ^a232 m  ^_�3
�3 boovtrue3 o      �2�2 0 	foundpool 	foundPool1 4�14  S  bc�1  �U  �T  �W 0 y  � m  ���0�0 � n  ��565 m  ���/
�/ 
nmbr6 n ��787 2 ���.
�. 
cobj8 o  ���-�- "0 defaultpoolsltc defaultPoolsLTC�V  �[  �Z  � 9�,9 r  q}:;: n  q{<=< 4 v{�+>
�+ 
cobj> m  yz�*�*��= o  qv�)�) 0 myprefspools myPrefsPools; o      �(�( 0 
chosenpool 
chosenPool�,  ��  ��  � ?@? r  ��ABA o  ���'�' 0 
chosenpool 
chosenPoolB o      �&�& 0 currentpool currentPool@ CDC l ���%�$�#�%  �$  �#  D EFE Z  ��GH�"IG = ��JKJ n  ��LML 4  ���!N
�! 
cobjN m  ��� �  M o  ���� 0 
chosenpool 
chosenPoolK m  ��OO �PP  H l ��QRSQ k  ��TT UVU l ������  �  �  V WXW Z  � YZ�[Y I  ���\�� 0 isdefaultpool isDefaultPool\ ]�] n  ��^_^ 4  ���`
� 
cobj` m  ���� _ o  ���� 0 
chosenpool 
chosenPool�  �  Z k  ��aa bcb n ��ded I  ���f�� 0 
sethidden_ 
setHidden_f g�g m  ���
� boovfals�  �  e o  ���� (0 poolsheetnamefixed poolSheetNameFixedc hih n ��jkj I  ���l�� 0 
sethidden_ 
setHidden_l m�m m  ���
� boovtrue�  �  k o  ���� 0 poolsheetname poolSheetNamei non n ��pqp I  ���
r�	�
 0 
sethidden_ 
setHidden_r s�s m  ���
� boovfals�  �	  q o  ���� (0 poolsheetcoinfixed poolSheetCoinFixedo t�t n ��uvu I  ���w�� 0 
sethidden_ 
setHidden_w x�x m  ���
� boovtrue�  �  v o  ��� �  0 poolsheetcoin poolSheetCoin�  �  [ k  � yy z{z n ��|}| I  ����~���� 0 
sethidden_ 
setHidden_~ �� m  ����
�� boovtrue��  ��  } o  ������ (0 poolsheetnamefixed poolSheetNameFixed{ ��� n ����� I  ��������� 0 
sethidden_ 
setHidden_� ���� m  ����
�� boovfals��  ��  � o  ������ 0 poolsheetname poolSheetName� ��� n ����� I  ��������� 0 
sethidden_ 
setHidden_� ���� m  ����
�� boovtrue��  ��  � o  ������ (0 poolsheetcoinfixed poolSheetCoinFixed� ���� n � ��� I  � ������� 0 
sethidden_ 
setHidden_� ���� m  ����
�� boovfals��  ��  � o  ������ 0 poolsheetcoin poolSheetCoin��  X ��� r  ��� o  ���� 0 
chosenpool 
chosenPool� o      ���� 0 editingpool editingPool� ��� n 	��� I  ������� "0 setstringvalue_ setStringValue_� ���� n  ��� 4  ���
�� 
cobj� m  ���� � o  ���� 0 
chosenpool 
chosenPool��  ��  � o  	���� 0 poolsheetname poolSheetName� ��� n (��� I  (������� "0 setstringvalue_ setStringValue_� ���� n  $��� 4  $���
�� 
cobj� m  "#���� � o  ���� 0 
chosenpool 
chosenPool��  ��  � o  ���� (0 poolsheetnamefixed poolSheetNameFixed� ��� n ):��� I  .:������� ,0 selectitemwithtitle_ selectItemWithTitle_� ���� n  .6��� 4  /6���
�� 
cobj� m  25���� � o  ./���� 0 
chosenpool 
chosenPool��  ��  � o  ).���� 0 poolsheetcoin poolSheetCoin� ��� n ;L��� I  @L������� "0 setstringvalue_ setStringValue_� ���� n  @H��� 4  AH���
�� 
cobj� m  DG���� � o  @A���� 0 
chosenpool 
chosenPool��  ��  � o  ;@���� (0 poolsheetcoinfixed poolSheetCoinFixed� ��� n MY��� I  RY������� "0 setstringvalue_ setStringValue_� ���� m  RU�� ���  ��  ��  � o  MR���� "0 poolsheetstatus poolSheetStatus� ��� n Zi��� I  _i������� "0 setstringvalue_ setStringValue_� ���� n  _e��� 4  `e���
�� 
cobj� m  cd���� � o  _`���� 0 
chosenpool 
chosenPool��  ��  � o  Z_���� 0 poolsheeturl poolSheetURL� ��� n jy��� I  oy������� "0 setstringvalue_ setStringValue_� ���� n  ou��� 4  pu���
�� 
cobj� m  st���� � o  op���� 0 
chosenpool 
chosenPool��  ��  � o  jo���� 20 poolsheetworkerusername poolSheetWorkerUsername� ��� n z���� I  �������� "0 setstringvalue_ setStringValue_� ���� c  ���� I  ��������  0 lookuppassword lookupPassword� ��� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 
chosenpool 
chosenPool� ���� n  ����� 4  �����
�� 
cobj� m  ������ � o  ������ 0 
chosenpool 
chosenPool��  ��  � m  ����
�� 
ctxt��  ��  � o  z���� 20 poolsheetworkerpassword poolSheetWorkerPassword� ���� n ����� I  ��������� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_� ��� o  ������ 0 	poolsheet 	poolSheet� ��� o  ������ 0 
mainwindow 
mainWindow� ���  f  ��� ��� m  ����
�� 
msng� ���� m  ����
�� 
msng��  ��  � n ����� o  ������ 0 nsapp NSApp� m  ����
�� misccura��  R "  blank username, prompt user   S ��� 8   b l a n k   u s e r n a m e ,   p r o m p t   u s e r�"  I Z  �������� = ����� o  ������ 0 minerrunning minerRunning� m  ����
�� boovfals� k  ���� ��� I  ��������� 0 setstatusline setStatusLine� ��� m  ��   � $ I n i t i a l i z i n g   m i n e r�  m  ����
�� boovtrue  m  ������   �� m  �� �  ��  ��  � 	��	 I  ����
���� 0 
startminer 
startMiner
 �� m  �� �  c g m i n e r��  ��  ��  ��  � k  ��  I  ���������� 0 setpools setPools��  ��   �� I  �������� 0 setstatusline setStatusLine  m  �� �  M i n i n g  m  ����
�� boovfals  m  ����   � m  �� �  �  ��  ��  F � Z  � �! E  � "#" o  ���� "0 badpoolindicies badPoolIndicies# n ��$%$ I  ������ *0 indexofselecteditem indexOfSelectedItem�  �  % o  ���� 0 poollist poolList  n &'& I  �(�� 0 setenabled_ setEnabled_( )�) m  	�
� boovfals�  �  ' o  ��  0 pooleditbutton poolEditButton�  ! n *+* I  �,�� 0 setenabled_ setEnabled_, -�- m  �~
�~ boovtrue�  �  + o  �}�}  0 pooleditbutton poolEditButton�  � ./. l     �|�{�z�|  �{  �z  / 010 i  ��232 I      �y�x�w�y 0 savesettings saveSettings�x  �w  3 k     &44 565 I     
�v7�u�v 0 	killtimer 	killTimer7 8�t8 o    �s�s &0 savesettingstimer saveSettingsTimer�t  �u  6 9:9 r    ;<; n   =>= 4    �r?
�r 
pcls? m    @@ �AA  N S T i m e r> m    �q
�q misccura< o      �p�p &0 savesettingstimer saveSettingsTimer: BCB I    �o�n�m�o *0 flushsettingstodisk flushSettingsToDisk�n  �m  C DED r    #FGF m    �l
�l boovfalsG o      �k�k  0 savingsettings savingSettingsE H�jH L   $ &II m   $ %�i
�i boovtrue�j  1 JKJ l     �h�g�f�h  �g  �f  K LML l     �eNO�e  N � � instead of writing every changed setting to disk immediately, wait saveSettingsInterval seconds first so that we're sure there's no short-term instability that kills the program resulting from the user changes   O �PP�   i n s t e a d   o f   w r i t i n g   e v e r y   c h a n g e d   s e t t i n g   t o   d i s k   i m m e d i a t e l y ,   w a i t   s a v e S e t t i n g s I n t e r v a l   s e c o n d s   f i r s t   s o   t h a t   w e ' r e   s u r e   t h e r e ' s   n o   s h o r t - t e r m   i n s t a b i l i t y   t h a t   k i l l s   t h e   p r o g r a m   r e s u l t i n g   f r o m   t h e   u s e r   c h a n g e sM QRQ i  ��STS I      �d�c�b�d *0 requestsavesettings requestSaveSettings�c  �b  T k     BUU VWV Z     #XY�a�`X =    Z[Z o     �_�_  0 savingsettings savingSettings[ m    �^
�^ boovtrueY l  
 \]^\ k   
 __ `a` I   
 �]b�\�] 0 	killtimer 	killTimerb c�[c o    �Z�Z &0 savesettingstimer saveSettingsTimer�[  �\  a d�Yd r    efe n   ghg 4    �Xi
�X 
pclsi m    jj �kk  N S T i m e rh m    �W
�W misccuraf o      �V�V &0 savesettingstimer saveSettingsTimer�Y  ] R L already have a save request pending, thus kill the timer and start it again   ^ �ll �   a l r e a d y   h a v e   a   s a v e   r e q u e s t   p e n d i n g ,   t h u s   k i l l   t h e   t i m e r   a n d   s t a r t   i t   a g a i n�a  �`  W mnm r   $ +opo m   $ %�U
�U boovtruep o      �T�T  0 savingsettings savingSettingsn q�Sq r   , Brsr n  , <tut I   / <�Rv�Q�R �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_v wxw o   / 4�P�P ,0 savesettingsinterval saveSettingsIntervalx yzy  f   4 5z {|{ m   5 6}} �~~  s a v e S e t t i n g s| � m   6 7�� ���  � ��O� m   7 8�N
�N boovfals�O  �Q  u n  , /��� o   - /�M�M 0 nstimer NSTimer� m   , -�L
�L misccuras o      �K�K &0 savesettingstimer saveSettingsTimer�S  R ��� l     �J�I�H�J  �I  �H  � ��� i  ����� I      �G��F�G 0 
startminer 
startMiner� ��E� o      �D�D 0 	thisminer 	thisMiner�E  �F  � l   V���� k    V�� ��� l     �C�B�A�C  �B  �A  � ��� Z     ���@�?� =    ��� o     �>�> 0 	thisminer 	thisMiner� m    �� ���  � r    	��� m    �� ���  c g m i n e r� o      �=�= 0 	thisminer 	thisMiner�@  �?  � ��� l   �<�;�:�<  �;  �:  � ��� n   ��� I    �9��8�9 0 	settitle_ 	setTitle_� ��7� m    �� ��� * I n i t i a l i z i n g   m i n e r . . .�7  �8  � o    �6�6 &0 dockmenustartstop dockMenuStartStop� ��� n   #��� I    #�5��4�5 0 	settitle_ 	setTitle_� ��3� m    �� ��� * I n i t i a l i z i n g   m i n e r . . .�3  �4  � o    �2�2 00 intensitymenustartstop intensityMenuStartStop� ��� l  $ $�1�0�/�1  �0  �/  � ��� I   $ )�.�-�,�. (0 disableallcontrols disableAllControls�-  �,  � ��� l  * *�+�*�)�+  �*  �)  � ��� l  * *�(���(  � #  pauseNub's setHidden_(false)   � ��� :   p a u s e N u b ' s   s e t H i d d e n _ ( f a l s e )� ��� n  * 4��� I   / 4�'��&�' 0 	settitle_ 	setTitle_� ��%� m   / 0�� ���  I I�%  �&  � o   * /�$�$ 0 pausenub pauseNub� ��� l  5 5�#���#  � "  infoNub's setHidden_(false)   � ��� 8   i n f o N u b ' s   s e t H i d d e n _ ( f a l s e )� ��� l  5 5�"�!� �"  �!  �   � ��� r   5 9��� J   5 7��  � o      �� 0 thispool thisPool� ��� l  : :����  � ) # get a pool to start the miner with   � ��� F   g e t   a   p o o l   t o   s t a r t   t h e   m i n e r   w i t h� ��� Y   : t������ Z   M o����� =  M \��� l  M Z���� c   M Z��� n   M X��� 4   U X��
� 
cobj� m   V W�� � l  M U���� n   M U��� 4   R U��
� 
cobj� o   S T�� 0 x  � o   M R�� 0 myprefspools myPrefsPools�  �  � m   X Y�
� 
ctxt�  �  � m   Z [�� ���  1� l  _ k���� k   _ k�� ��� r   _ i��� n   _ g��� 4   d g��
� 
cobj� o   e f�� 0 x  � o   _ d�� 0 myprefspools myPrefsPools� o      �� 0 thispool thisPool� ��
�  S   j k�
  � 7 1 found a pool to mine with, therefore start miner   � ��� b   f o u n d   a   p o o l   t o   m i n e   w i t h ,   t h e r e f o r e   s t a r t   m i n e r�  �  � 0 x  � m   = >�	�	 � n   > H��� m   E G�
� 
nmbr� n  > E��� 2  C E�
� 
cobj� o   > C�� 0 myprefspools myPrefsPools�  � ��� l  u u����  �  �  � ��� r   u |� � o   u v�� 0 thispool thisPool  o      �� 0 currentpool currentPool�  l  } }� �����   ��  ��    Z   } ����� =  } � o   } ~���� 0 thispool thisPool J   ~ �����   k   � �		 

 I   � ������� 
0 msglog    m   � � � p C o u l d n ' t   s t a r t   m i n e r ,   a s   n o   p o o l   w a s   f o u n d   t o   d o   s o   w i t h �� m   � � �  c r i t i c a l��  ��    I   � ��������� 0 	stopminer 	stopMiner��  ��   �� L   � �����  ��  ��  ��    l  � ���������  ��  ��    r   � � c   � � I   � �������  0 lookuppassword lookupPassword  !  n   � �"#" 4   � ���$
�� 
cobj$ m   � ����� # o   � ����� 0 thispool thisPool! %��% n   � �&'& 4   � ���(
�� 
cobj( m   � ����� ' o   � ����� 0 thispool thisPool��  ��   m   � ���
�� 
ctxt o      ���� 0 thispass thisPass )*) r   � �+,+ n   � �-.- 4   � ���/
�� 
cobj/ m   � ����� . o   � ����� 0 thispool thisPool, o      ���� 0 currentcoin currentCoin* 010 l  � ���������  ��  ��  1 232 I   � ���4���� 
0 msglog  4 565 b   � �787 b   � �9:9 m   � �;; �<< H A s t e r o i d   l o g   f i l e   w i l l   b e   s a v e d   a t :  : o   � �����  0 tempfolderpath tempFolderPath8 o   � ����� ,0 asteroiddebuglogfile AsteroidDebugLogFile6 =��= m   � �>> �??  n o t i c e��  ��  3 @A@ I   � ���B���� 
0 msglog  B CDC b   � �EFE b   � �GHG m   � �II �JJ 8 M i n e r   l o g   f i l e   i s   s a v e d   a t :  H o   � �����  0 tempfolderpath tempFolderPathF o   � ����� 0 minerlogfile minerLogFileD K��K m   � �LL �MM  n o t i c e��  ��  A NON l  � ���������  ��  ��  O PQP I   ���R���� 
0 msglog  R STS b   � �UVU b   � �WXW b   � �YZY b   � �[\[ m   � �]] �^^  S t a r t i n g  \ o   � ����� 0 	thisminer 	thisMinerZ m   � �__ �``    i n  X o   � ����� 0 currentcoin currentCoinV m   � �aa �bb 
   m o d eT c��c m   � �dd �ee  n o t i c e��  ��  Q fgf Z  /hijkh = lml o  	���� 0 currentcoin currentCoinm m  	nn �oo  B i t c o i ni k  �pp qrq I  �������� 0 setbitcoinui setBitcoinUI��  ��  r s��s Z  �tu��vt = wxw o  ���� 0 	thisminer 	thisMinerx m  yy �zz  c g m i n e ru k  �{{ |}| l ��������  ��  ��  } ~~ r  S��� b  Q��� b  M��� b  K��� b  G��� b  @��� b  <��� b  5��� b  1��� b  +��� b  '��� m  !�� ���  "� o  !&���� 0 resourcepath resourcePath� m  '*�� ��� D / c g m i n e r "   - - a p i - l i s t e n   - - a p i - p o r t  � o  +0�� "0 minercgcommport minerCGcommPort� m  14�� ��� :   - - a p i - a l l o w   W : 1 2 7 . 0 . 0 . 1   - o   "� l 5;���� c  5;��� n  59��� 4  69��
� 
cobj� m  78�� � o  56�� 0 thispool thisPool� m  9:�
� 
ctxt�  �  � m  <?�� ���  "   - u   "� l @F���� c  @F��� n  @D��� 4  AD��
� 
cobj� m  BC�� � o  @A�� 0 thispool thisPool� m  DE�
� 
ctxt�  �  � m  GJ�� ���  "   - p   "� o  KL�� 0 thispass thisPass� m  MP�� ��� 
 "   - T  � o      �� 0 thiscmd thisCmd ��� Z  Tr����� = Td��� l Tb���� c  Tb��� n  T^��� 4  Y^��
� 
cobj� m  Z]�� � o  TY��  0 myprefsgeneral myPrefsGeneral� m  ^a�
� 
bool�  �  � m  bc�
� boovtrue� r  gn��� b  gl��� o  gh�� 0 thiscmd thisCmd� m  hk�� ���    - - d i s a b l e - g p u� o      �� 0 thiscmd thisCmd�  �  � ��� Z  s������ l s����� > s���� c  s��� n  s}��� 4  x}��
� 
cobj� m  y|�� � o  sx��  0 myprefsgeneral myPrefsGeneral� m  }~�
� 
ctxt� m  ��� ���  �  �  � r  ����� b  ����� b  ����� o  ���� 0 thiscmd thisCmd� m  ���� ���    - - k e r n e l  � l ������ c  ����� n  ����� 4  ����
� 
cobj� m  ���� � o  ����  0 myprefsgeneral myPrefsGeneral� m  ���
� 
ctxt�  �  � o      �� 0 thiscmd thisCmd�  �  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� o  ���� 0 thiscmd thisCmd� m  ���� ��� 
   & >   "� o  ����  0 tempfolderpath tempFolderPath� o  ���� 0 minerlogfile minerLogFile� m  ���� ���  "   &� o      �� 0 thiscmd thisCmd� ��� I  ������ 
0 msglog  � ��� b  ����� m  ���� ��� ( L a u n c h i n g   m i n e r   a s :  � o  ���� 0 thiscmd thisCmd� ��� m  ���� ���  n o t i c e�  �  � ��� I �����
� .sysoexecTEXT���     TEXT� o  ���� 0 thiscmd thisCmd�  � ��� l  ������  ���
				set deviceCheckTask to current application's NSTask's alloc()'s init()
				deviceCheckTask's setLaunchPath_(resourcePath & "/cgminer")
				deviceCheckTask's setArguments_({"--ndevs"})
				set deviceCheckTaskOutputPipe to current application's NSPipe's pipe()
				set deviceCheckTaskOutputFileHandle to deviceCheckTaskOutputPipe's fileHandleForReading()
				deviceCheckTask's setStandardOutput_(deviceCheckTaskOutputPipe)
				deviceCheckTask's setStandardError_(deviceCheckTaskOutputPipe)
				deviceCheckTask's |launch|()

				set Nf to current application's NSNotificationCenter's defaultCenter()
				Nf's removeObserver_(me)
				-- Nf's addObserver_selector_name_object_(me, "readPipe:", "NSFileHandleReadCompletionNotification", deviceCheckTaskOutputFileHandle)
				Nf's addObserver_selector_name_object_(me, "readResponseDeviceCheck:", "NSTaskDidTerminateNotification", deviceCheckTask)

				deviceCheckTaskOutputFileHandle's readInBackgroundAndNotify()


				set minerTask to current application's NSTask's alloc()'s init()
				minerTask's setLaunchPath_(resourcePath & "/cgminer")
				minerTask's setArguments_({"--api-listen","--api-allow=W:127.0.0.1","-o " & (item 2 of thisPool as text),"-u " & (item 3 of thisPool as text),"-p " & thisPass,"-T","-I " & thisIntensity})

				set outputpipe to current application's NSPipe's pipe()
				minerTask's setStandardOutput_(outputpipe)
				minerTask's setStandardError_(outputpipe)

				minerTask's |launch|()
				   � ���z 
 	 	 	 	 s e t   d e v i c e C h e c k T a s k   t o   c u r r e n t   a p p l i c a t i o n ' s   N S T a s k ' s   a l l o c ( ) ' s   i n i t ( ) 
 	 	 	 	 d e v i c e C h e c k T a s k ' s   s e t L a u n c h P a t h _ ( r e s o u r c e P a t h   &   " / c g m i n e r " ) 
 	 	 	 	 d e v i c e C h e c k T a s k ' s   s e t A r g u m e n t s _ ( { " - - n d e v s " } ) 
 	 	 	 	 s e t   d e v i c e C h e c k T a s k O u t p u t P i p e   t o   c u r r e n t   a p p l i c a t i o n ' s   N S P i p e ' s   p i p e ( ) 
 	 	 	 	 s e t   d e v i c e C h e c k T a s k O u t p u t F i l e H a n d l e   t o   d e v i c e C h e c k T a s k O u t p u t P i p e ' s   f i l e H a n d l e F o r R e a d i n g ( ) 
 	 	 	 	 d e v i c e C h e c k T a s k ' s   s e t S t a n d a r d O u t p u t _ ( d e v i c e C h e c k T a s k O u t p u t P i p e ) 
 	 	 	 	 d e v i c e C h e c k T a s k ' s   s e t S t a n d a r d E r r o r _ ( d e v i c e C h e c k T a s k O u t p u t P i p e ) 
 	 	 	 	 d e v i c e C h e c k T a s k ' s   | l a u n c h | ( ) 
 
 	 	 	 	 s e t   N f   t o   c u r r e n t   a p p l i c a t i o n ' s   N S N o t i f i c a t i o n C e n t e r ' s   d e f a u l t C e n t e r ( ) 
 	 	 	 	 N f ' s   r e m o v e O b s e r v e r _ ( m e ) 
 	 	 	 	 - -   N f ' s   a d d O b s e r v e r _ s e l e c t o r _ n a m e _ o b j e c t _ ( m e ,   " r e a d P i p e : " ,   " N S F i l e H a n d l e R e a d C o m p l e t i o n N o t i f i c a t i o n " ,   d e v i c e C h e c k T a s k O u t p u t F i l e H a n d l e ) 
 	 	 	 	 N f ' s   a d d O b s e r v e r _ s e l e c t o r _ n a m e _ o b j e c t _ ( m e ,   " r e a d R e s p o n s e D e v i c e C h e c k : " ,   " N S T a s k D i d T e r m i n a t e N o t i f i c a t i o n " ,   d e v i c e C h e c k T a s k ) 
 
 	 	 	 	 d e v i c e C h e c k T a s k O u t p u t F i l e H a n d l e ' s   r e a d I n B a c k g r o u n d A n d N o t i f y ( ) 
 
 
 	 	 	 	 s e t   m i n e r T a s k   t o   c u r r e n t   a p p l i c a t i o n ' s   N S T a s k ' s   a l l o c ( ) ' s   i n i t ( ) 
 	 	 	 	 m i n e r T a s k ' s   s e t L a u n c h P a t h _ ( r e s o u r c e P a t h   &   " / c g m i n e r " ) 
 	 	 	 	 m i n e r T a s k ' s   s e t A r g u m e n t s _ ( { " - - a p i - l i s t e n " , " - - a p i - a l l o w = W : 1 2 7 . 0 . 0 . 1 " , " - o   "   &   ( i t e m   2   o f   t h i s P o o l   a s   t e x t ) , " - u   "   &   ( i t e m   3   o f   t h i s P o o l   a s   t e x t ) , " - p   "   &   t h i s P a s s , " - T " , " - I   "   &   t h i s I n t e n s i t y } ) 
 
 	 	 	 	 s e t   o u t p u t p i p e   t o   c u r r e n t   a p p l i c a t i o n ' s   N S P i p e ' s   p i p e ( ) 
 	 	 	 	 m i n e r T a s k ' s   s e t S t a n d a r d O u t p u t _ ( o u t p u t p i p e ) 
 	 	 	 	 m i n e r T a s k ' s   s e t S t a n d a r d E r r o r _ ( o u t p u t p i p e ) 
 
 	 	 	 	 m i n e r T a s k ' s   | l a u n c h | ( ) 
 	 	 	 	�  �  l ������  �  �  �  ��  v l ����   2 , launch a different miner here?  -- bfgminer    � X   l a u n c h   a   d i f f e r e n t   m i n e r   h e r e ?     - -   b f g m i n e r��  j  = �� o  ���� 0 currentcoin currentCoin m  �� �		  L i t e c o i n 
�
 k  �  I  ������ 0 setlitecoinui setLitecoinUI�  �    Z  �� = �� o  ���~�~ 0 	thisminer 	thisMiner m  �� �  c g m i n e r k  �  Z  ��} = �� l ���|�{ c  �� !  n  ��"#" 4  ���z$
�z 
cobj$ m  ���y�y # o  ���x�x  0 myprefsgeneral myPrefsGeneral! m  ���w
�w 
ctxt�|  �{   m  ��%% �&&  1 r   '(' m   )) �**  d( o      �v�v 0 thisintensity thisIntensity�}   r  +,+ l -�u�t- c  ./. n  010 4  �s2
�s 
cobj2 m  �r�r 1 o  �q�q  0 myprefsgeneral myPrefsGeneral/ m  �p
�p 
ctxt�u  �t  , o      �o�o 0 thisintensity thisIntensity 343 r  L565 b  J787 b  F9:9 b  D;<; b  @=>= b  9?@? b  5ABA b  .CDC b  *EFE b  $GHG b   IJI m  KK �LL � e x p o r t   G P U _ M A X _ A L L O C _ P E R C E N T = 1 0 0 ;   e x p o r t   G P U _ U S E _ S Y N C _ O B J E C T S = 1 ;   "J o  �n�n 0 resourcepath resourcePathH m   #MM �NN D / c g m i n e r "   - - a p i - l i s t e n   - - a p i - p o r t  F o  $)�m�m "0 minercgcommport minerCGcommPortD m  *-OO �PP L   - - a p i - a l l o w   W : 1 2 7 . 0 . 0 . 1   - - s c r y p t   - o   "B l .4Q�l�kQ c  .4RSR n  .2TUT 4  /2�jV
�j 
cobjV m  01�i�i U o  ./�h�h 0 thispool thisPoolS m  23�g
�g 
ctxt�l  �k  @ m  58WW �XX  "   - u   "> l 9?Y�f�eY c  9?Z[Z n  9=\]\ 4  :=�d^
�d 
cobj^ m  ;<�c�c ] o  9:�b�b 0 thispool thisPool[ m  =>�a
�a 
ctxt�f  �e  < m  @C__ �``  "   - p   ": o  DE�`�` 0 thispass thisPass8 m  FIaa �bb  "   - T   - - l o g   16 o      �_�_ 0 thiscmd thisCmd4 cdc l MM�^�]�\�^  �]  �\  d efe Z  M�gh�[�Zg F  Mniji > M[klk n  MWmnm 4  RW�Yo
�Y 
cobjo m  SV�X�X n o  MR�W�W  0 myprefsgeneral myPrefsGenerall m  WZpp �qq  j ? ^jrsr n  ^htut 4  ch�Vv
�V 
cobjv m  dg�U�U u o  ^c�T�T  0 myprefsgeneral myPrefsGenerals m  hi�S�S  h r  q�wxw b  q�yzy b  qv{|{ o  qr�R�R 0 thiscmd thisCmd| m  ru}} �~~ ,   - - t h r e a d - c o n c u r r e n c y  z l v��Q�P c  v���� n  v���� 4  {��O�
�O 
cobj� m  |�N�N � o  v{�M�M  0 myprefsgeneral myPrefsGeneral� m  ���L
�L 
ctxt�Q  �P  x o      �K�K 0 thiscmd thisCmd�[  �Z  f ��� l ���J�I�H�J  �I  �H  � ��� Z  �����G�F� F  ����� F  ����� > ����� n  ����� 4  ���E�
�E 
cobj� m  ���D�D � o  ���C�C  0 myprefsgeneral myPrefsGeneral� m  ���� ���  � ? ����� n  ����� 4  ���B�
�B 
cobj� m  ���A�A � o  ���@�@  0 myprefsgeneral myPrefsGeneral� m  ���?�?  � > ����� n  ����� 4  ���>�
�> 
cobj� m  ���=�= � o  ���<�<  0 myprefsgeneral myPrefsGeneral� m  ���� ���  A u t o m a t i c� r  ����� b  ����� b  ����� o  ���;�; 0 thiscmd thisCmd� m  ���� ���    - - w o r k s i z e  � l ����:�9� c  ����� n  ����� 4  ���8�
�8 
cobj� m  ���7�7 � o  ���6�6  0 myprefsgeneral myPrefsGeneral� m  ���5
�5 
ctxt�:  �9  � o      �4�4 0 thiscmd thisCmd�G  �F  � ��� l ���3�2�1�3  �2  �1  � ��� r  ����� b  ����� b  ����� b  ����� b  ����� b  ����� b  ����� o  ���0�0 0 thiscmd thisCmd� m  ���� ���    - I  � o  ���/�/ 0 thisintensity thisIntensity� m  ���� ��� 
   & >   "� o  ���.�.  0 tempfolderpath tempFolderPath� o  ���-�- 0 minerlogfile minerLogFile� m  ���� ���  "   &� o      �,�, 0 thiscmd thisCmd� ��� I  ��+��*�+ 
0 msglog  � ��� b  � ��� m  ���� ��� ( L a u n c h i n g   m i n e r   a s :  � o  ���)�) 0 thiscmd thisCmd� ��(� m   �� ���  n o t i c e�(  �*  � ��'� I �&��%
�& .sysoexecTEXT���     TEXT� o  	�$�$ 0 thiscmd thisCmd�%  �'  �   l �#���#  � 2 , launch a different miner here?  -- bfgminer   � ��� X   l a u n c h   a   d i f f e r e n t   m i n e r   h e r e ?     - -   b f g m i n e r ��"� I  �!� ��! 40 startgetlitecoinhashrate startGetLitecoinHashrate�   �  �"  �  k I  /���� 
0 msglog  � ��� b  (��� b  $��� m  �� ��� & U n k n o w n   c o i n   t y p e   "� o  #�� 0 currentcoin currentCoin� m  $'�� ���  "� ��� m  (+�� ���  n o t i c e�  �  g ��� r  0H��� n  0B��� 4 =B��
� 
cwor� m  @A�� � l 0=���� I 0=���
� .sysoexecTEXT���     TEXT� b  09��� b  05��� m  03�� ���  p s   - A   |   g r e p   "� o  34�� 0 	thisminer 	thisMiner� m  58�� ���   "   |   g r e p   - v   g r e p�  �  �  � o      �� 0 
pidcgminer 
pidCGminer� ��� l II����  � C = set pidCGminer to minerTask's processIdentifier() as integer   � ��� z   s e t   p i d C G m i n e r   t o   m i n e r T a s k ' s   p r o c e s s I d e n t i f i e r ( )   a s   i n t e g e r� ��� r  IP   m  IJ�
� boovtrue o      �� 0 minerrunning minerRunning� � l QV I  QV���� 0 startminerapi startMinerAPI�  �     check for api readiness    � 0   c h e c k   f o r   a p i   r e a d i n e s s�  � 6 0 launch the miner, prep the rpc api, and get pid   � � `   l a u n c h   t h e   m i n e r ,   p r e p   t h e   r p c   a p i ,   a n d   g e t   p i d� 	 l     ��
�	�  �
  �	  	 

 i  �� I      ��� 00 startcommandlineminer_ startCommandLineMiner_ � o      �� 	0 miner  �  �   k      l     ����  �  �    r      l    
��  c     
 n      4    ��
�� 
cobj m    ����  o     ����  0 myprefsgeneral myPrefsGeneral m    	��
�� 
ctxt�  �    o      ���� 0 defaultanswer defaultAnswer  Z    S ���� =   !"! o    ���� 0 defaultanswer defaultAnswer" m    ## �$$    k    O%% &'& l   ��()��  ( A ; first time maybe?  populate it with their current settings   ) �** v   f i r s t   t i m e   m a y b e ?     p o p u l a t e   i t   w i t h   t h e i r   c u r r e n t   s e t t i n g s' +,+ Z    +-.����- =   /0/ l   1����1 c    232 n    454 4    ��6
�� 
cobj6 m    ���� 5 o    ����  0 myprefsgeneral myPrefsGeneral3 m    ��
�� 
bool��  ��  0 m    ��
�� boovtrue. r   " '787 b   " %9:9 o   " #���� 0 defaultanswer defaultAnswer: m   # $;; �<<  - - d i s a b l e - g p u  8 o      ���� 0 defaultanswer defaultAnswer��  ��  , =��= Z   , O>?����> l  , 8@����@ >  , 8ABA c   , 6CDC n   , 4EFE 4   1 4��G
�� 
cobjG m   2 3���� F o   , 1����  0 myprefsgeneral myPrefsGeneralD m   4 5��
�� 
ctxtB m   6 7HH �II  ��  ��  ? r   ; KJKJ b   ; ILML b   ; >NON o   ; <���� 0 defaultanswer defaultAnswerO m   < =PP �QQ  - - k e r n e l  M l  > HR����R c   > HSTS n   > FUVU 4   C F��W
�� 
cobjW m   D E���� V o   > C����  0 myprefsgeneral myPrefsGeneralT m   F G��
�� 
ctxt��  ��  K o      ���� 0 defaultanswer defaultAnswer��  ��  ��  ��  ��   XYX l  T T��������  ��  ��  Y Z[Z r   T y\]\ I  T w��^_
�� .sysodlogaskr        TEXT^ b   T [`a` b   T Ybcb b   T Wded m   T Uff �gg x E n t e r   a n y   c o m m a n d   l i n e   o p t i o n s   h e r e   t o   s t a r t   t h e   m i n e r   w i t h :e o   U V��
�� 
ret c o   W X��
�� 
ret a m   Y Zhh �ii � ( A s t e r o i d   w i l l   s t i l l   i n t e r a c t   w i t h   t h e   m i n e r ,   b u t   y o u   w i l l   b e   r e s p o n s i b l e   f o r   j o i n i n g   a   p o o l   a n d   t w e a k i n g   o t h e r   s e t t i n g s   h e r e )_ ��jk
�� 
dtxtj o   \ ]���� 0 defaultanswer defaultAnswerk ��lm
�� 
btnsl J   ^ gnn opo m   ^ _qq �rr  H e l pp sts m   _ buu �vv  C a n c e lt w��w m   b exx �yy  C o n t i n u e &��  m ��z{
�� 
dfltz m   j k���� { ��|��
�� 
disp| m   n q��
�� stic   ��  ] o      ���� 0 	thisreply 	thisReply[ }��} Z   z~���~ =  z ���� n   z ��� 1   { ��
�� 
bhit� o   z {���� 0 	thisreply 	thisReply� m    ��� ���  C o n t i n u e & k   � ��� ��� r   � ���� n   � ���� 1   � ���
�� 
ttxt� o   � ����� 0 	thisreply 	thisReply� n      ��� 4   � ����
�� 
cobj� m   � ����� � o   � �����  0 myprefsgeneral myPrefsGeneral� ��� I   � �������� *0 requestsavesettings requestSaveSettings��  �  � ��� I   � ����� 0 	stopminer 	stopMiner�  �  � ��� I   � ����� 
0 msglog  � ��� b   � ���� m   � ��� ��� ` S t a r t i n g   m i n e r   w i t h   e x t r a   c o m m a n d - l i n e   o p t i o n s :  � l  � ����� c   � ���� n   � ���� 4   � ���
� 
cobj� m   � ��� � o   � ���  0 myprefsgeneral myPrefsGeneral� m   � ��
� 
ctxt�  �  �  �  � ��� O   � ���� k   � ��� ��� I  � ����
� .miscactvnull��� ��� null�  �  � ��� I  � ����
� .sysoexecTEXT���     TEXT� b   � ���� b   � ���� b   � ���� b   � ���� o   � ��� 0 resourcepath resourcePath� m   � ��� ��� B / c g m i n e r   - - a p i - l i s t e n   - - a p i - p o r t  � o   � ��� "0 minercgcommport minerCGcommPort� m   � ��� ��� 2   - - a p i - a l l o w   W : 1 2 7 . 0 . 0 . 1  � l  � ����� n   � ���� 1   � ��
� 
ttxt� o   � ��� 0 	thisreply 	thisReply�  �  �  �  � m   � ����                                                                                      @ alis    p  Macintosh SSD              �xv(H+  �gTerminal.app                                                   ���u�        ����  	                	Utilities     �xؘ      ���O    �g�f  3Macintosh SSD:Applications: Utilities: Terminal.app     T e r m i n a l . a p p    M a c i n t o s h   S S D  #Applications/Utilities/Terminal.app   / ��  � ��� r   � ���� m   � ��
� boovtrue� o      �� 0 minerrunning minerRunning� ��� l  � ����� I   � ����� 0 startminerapi startMinerAPI�  �  �   check for api readiness   � ��� 0   c h e c k   f o r   a p i   r e a d i n e s s�  � ��� =  � ���� n   � ���� 1   � ��
� 
bhit� o   � ��� 0 	thisreply 	thisReply� m   � ��� ���  H e l p� ��� I  ����
� .GURLGURLnull��� ��� TEXT� m   � ��� ��� ` h t t p s : / / b i t c o i n t a l k . o r g / i n d e x . p h p ? t o p i c = 2 8 4 0 2 . 0  �  �  ��  ��   ��� l     ����  �  �  � ��� i  ����� I      ���� &0 stopruntimetimers stopRuntimeTimers�  �  � k     ��� ��� l     ����  � &   stops all mining-related timers   � ��� @   s t o p s   a l l   m i n i n g - r e l a t e d   t i m e r s� ��� l     ����  � D > timers like save settings, BTC balance check, etc stay active   � ��� |   t i m e r s   l i k e   s a v e   s e t t i n g s ,   B T C   b a l a n c e   c h e c k ,   e t c   s t a y   a c t i v e� ��� I     
���� 0 	killtimer 	killTimer� ��� o    �� 0 checkapitimer checkAPItimer�  �  � ��� I    ���� 0 	killtimer 	killTimer� ��� o    �� $0 minerstatustimer minerStatusTimer�  �  � ��� I     ���� 0 	killtimer 	killTimer� ��� o    �� 0 donationtimer donationTimer�  �  � ��� I   ! +���� 0 	killtimer 	killTimer� ��� o   " '�� *0 donationactivetimer donationActiveTimer�  �  � ��� I   , 6���� 0 	killtimer 	killTimer� ��� o   - 2�� $0 setpoolkilltimer setPoolKillTimer�  �  � ��� I   7 A���~� 0 	killtimer 	killTimer� ��}� o   8 =�|�| 80 averagescrypthashratetimer averageScryptHashrateTimer�}  �~  � ��� I   B L�{��z�{ 0 	killtimer 	killTimer� ��y� o   C H�x�x 40 scrypthashratechecktimer scryptHashrateCheckTimer�y  �z  � ��� I   M W�w �v�w 0 	killtimer 	killTimer  �u o   N S�t�t 0 cooldowntimer cooldownTimer�u  �v  �  I   X b�s�r�s 0 	killtimer 	killTimer �q o   Y ^�p�p 20 temperaturewarningtimer temperatureWarningTimer�q  �r    l  c c�o�n�m�o  �n  �m   	 r   c m

 n  c g 4   d g�l
�l 
pcls m   e f �  N S T i m e r m   c d�k
�k misccura o      �j�j 0 checkapitimer checkAPItimer	  r   n x n  n r 4   o r�i
�i 
pcls m   p q �  N S T i m e r m   n o�h
�h misccura o      �g�g $0 minerstatustimer minerStatusTimer  r   y � n  y } 4   z }�f 
�f 
pcls  m   { |!! �""  N S T i m e r m   y z�e
�e misccura o      �d�d 0 donationtimer donationTimer #$# r   � �%&% n  � �'(' 4   � ��c)
�c 
pcls) m   � �** �++  N S T i m e r( m   � ��b
�b misccura& o      �a�a *0 donationactivetimer donationActiveTimer$ ,-, r   � �./. n  � �010 4   � ��`2
�` 
pcls2 m   � �33 �44  N S T i m e r1 m   � ��_
�_ misccura/ o      �^�^ $0 setpoolkilltimer setPoolKillTimer- 565 r   � �787 n  � �9:9 4   � ��];
�] 
pcls; m   � �<< �==  N S T i m e r: m   � ��\
�\ misccura8 o      �[�[ 80 averagescrypthashratetimer averageScryptHashrateTimer6 >?> r   � �@A@ n  � �BCB 4   � ��ZD
�Z 
pclsD m   � �EE �FF  N S T i m e rC m   � ��Y
�Y misccuraA o      �X�X 40 scrypthashratechecktimer scryptHashrateCheckTimer? GHG r   � �IJI n  � �KLK 4   � ��WM
�W 
pclsM m   � �NN �OO  N S T i m e rL m   � ��V
�V misccuraJ o      �U�U 0 cooldowntimer cooldownTimerH P�TP r   � �QRQ n  � �STS 4   � ��SU
�S 
pclsU m   � �VV �WW  N S T i m e rT m   � ��R
�R misccuraR o      �Q�Q 20 temperaturewarningtimer temperatureWarningTimer�T  � XYX l     �P�O�N�P  �O  �N  Y Z[Z i  ��\]\ I      �M�L�K�M 40 minerunexpectedlystopped minerUnexpectedlyStopped�L  �K  ] k    �^^ _`_ l     �J�I�H�J  �I  �H  ` aba l     �Gcd�G  c   cancel timers   d �ee    c a n c e l   t i m e r sb fgf I     �F�E�D�F &0 stopruntimetimers stopRuntimeTimers�E  �D  g hih l   �C�B�A�C  �B  �A  i jkj l   �@lm�@  l   reset counters   m �nn    r e s e t   c o u n t e r sk opo r    qrq m    �?
�? boovfalsr o      �>�> 0 minerapiready minerAPIreadyp sts r    uvu m    �=
�= boovfalsv o      �<�< 0 minerrunning minerRunningt wxw r    yzy m    {{ �||  z o      �;�; 0 
pidcgminer 
pidCGminerx }~} r    %� m    �:�:  � o      �9�9 0 
timertimer 
timerTimer~ ��� r   & -��� m   & '�8�8  � o      �7�7 *0 minermissedcommands minerMissedCommands� ��� r   . 1��� m   . /�6
�6 boovfals� o      �5�5 &0 disablealldevices disableAllDevices� ��� l  2 2�4�3�2�4  �3  �2  � ��� I   2 9�1��0�1 
0 msglog  � ��� m   3 4�� ��� h M i n e r   u n e x p e c t e d l y   s t o p p e d   ( o r   n e v e r   f u l l y   s t a r t e d ) .� ��/� m   4 5�� ���  w a r n i n g�/  �0  � ��� l  : :�.�-�,�.  �-  �,  � ��� l  : :�+���+  �   reset stats in UI   � ��� $   r e s e t   s t a t s   i n   U I� ��� n  : D��� I   ? D�*��)�* "0 setdoublevalue_ setDoubleValue_� ��(� m   ? @�'�'  �(  �)  � o   : ?�&�& 0 hashratebar hashRateBar� ��� n  E Q��� I   J Q�%��$�% "0 setstringvalue_ setStringValue_� ��#� b   J M��� m   J K�� ���  0� m   K L�� ���  M H / s�#  �$  � o   E J�"�" 0 hashratelabel hashRateLabel� ��� Z   R k���!� � =  R ^��� l  R \���� c   R \��� n   R Z��� 4   W Z��
� 
cobj� m   X Y�� 	� o   R W��  0 myprefsgeneral myPrefsGeneral� m   Z [�
� 
ctxt�  �  � m   \ ]�� ���  1� I   a g���� (0 setdockbadgestring setDockBadgeString� ��� m   b c�� ���  �  �  �!  �   � ��� I   l {���� 0 setstatusline setStatusLine� ��� m   m n�� ��� . M i n e r   d i e d   u n e x p e c t e d l y� ��� m   n o�
� boovfals� ��� m   o r�� � ��� m   r u�� ��� 
 m i n e r�  �  � ��� I   | ����� (0 disableallcontrols disableAllControls�  �  � ��� l  � �����  �  �  � ��� l  � �����  � ? 9 check the log for obvious errors we can catch/report/fix   � ��� r   c h e c k   t h e   l o g   f o r   o b v i o u s   e r r o r s   w e   c a n   c a t c h / r e p o r t / f i x� ��� r   � ���� b   � ���� o   � ��
�
  0 tempfolderpath tempFolderPath� o   � ��	�	 0 minerlogfile minerLogFile� o      �� 0 thefile theFile� ��� I  � ����
� .rdwropenshor       file� o   � ��� 0 thefile theFile�  � ��� r   � ���� l  � ����� I  � ����
� .rdwrread****        ****� o   � �� �  0 thefile theFile�  �  �  � o      ���� 0 minerreadout minerReadout� ��� I  � ������
�� .rdwrclosnull���     ****� o   � ����� 0 thefile theFile��  � ��� l  � ���������  ��  ��  � ��� r   � ���� m   � ���
�� boovtrue� o      ���� 0 minerproceed minerProceed� ��� Z   ������� E   � ���� o   � ����� 0 minerreadout minerReadout� m   � ��� ��� ( N o   d e v i c e s   d e t e c t e d !� k   � ��� ��� I   � �������� 0 setstatusline setStatusLine� ��� m   � ��� ��� 4 N o   m i n i n g   d e v i c e s   d e t e c t e d�    m   � ���
�� boovfals  m   � �����   �� m   � � � 
 m i n e r��  ��  �  r   � �	
	 m   � ���
�� boovfals
 o      ���� 0 minerproceed minerProceed �� l  � ���������  ��  ��  ��  �  E   � � o   � ����� 0 minerreadout minerReadout m   � � � $ S e g m e n t a t i o n   f a u l t  k   � �  I   � ������� 0 setstatusline setStatusLine  m   � � � * U n a b l e   t o   s t a r t   m i n e r  m   � ���
�� boovfals  m   � �����    ��  m   � �!! �"" 
 m i n e r��  ��   #$# r   � �%&% m   � ���
�� boovfals& o      ���� 0 minerproceed minerProceed$ '(' I   � ���)���� 
0 msglog  ) *+* m   � �,, �--& U n r e c o v e r a b l e   e r r o r ! 
 
 	 	 	 T h e   m i n e r   e n c o u n t e r e d   a   s e g m e n t a t i o n   f a u l t   w h e n   i t   t r i e d   t o   i n i t i a l i z e .     P l e a s e   t r y   a   d i f f e r e n t   p o o l   t o   s e e   i f   t h a t   h e l p s .+ .��. m   � �// �00 
 a l e r t��  ��  ( 1��1 l  � ���������  ��  ��  ��   232 E   � �454 o   � ����� 0 minerreadout minerReadout5 m   � �66 �77 8 E r r o r   - 5 4 :   E n q u e u e i n g   k e r n e l3 898 k   �H:: ;<; I   ���=���� 0 setstatusline setStatusLine= >?> m   � @@ �AA P I n c o m p a t i b l e   s e t t i n g s ,   t r y i n g   s a f e   m o d e &? BCB m   ��
�� boovfalsC DED m  ����  E F��F m  GG �HH 
 m i n e r��  ��  < IJI r  KLK m  ��
�� boovtrueL o      ���� 0 minerproceed minerProceedJ MNM I  ��O���� 
0 msglog  O PQP m  RR �SS� A s t e r o i d   e n c o u n t e r e d   a n   e r r o r   - 5 4   w h e n   t r y i n g   t o   u s e   y o u r   G P U .     W e ' l l   t r y   a g a i n   w i t h   s e t t i n g s   t w e a k e d   f o r   c o m p a t a b i l i t y .     I f   t h i s   s t i l l   d o e s   n o t   w o r k ,   y o u   m a y   d i s a b l e   G P U   m i n i n g   a l t o g e t h e r   i n   t h e   p r e f e r e n c e s .Q T��T m  UU �VV 
 a l e r t��  ��  N WXW r  *YZY m  [[ �\\  6 4Z n      ]^] 4  $)��_
�� 
cobj_ m  %(���� ^ o  $����  0 myprefsgeneral myPrefsGeneralX `a` r  +7bcb m  +,���� c n      ded 4  16��f
�� 
cobjf m  25���� e o  ,1����  0 myprefsgeneral myPrefsGenerala ghg r  8Fiji m  8;kk �ll  d i a b l oj n      mnm 4  @E��o
�� 
cobjo m  AD���� n o  ;@����  0 myprefsgeneral myPrefsGeneralh p��p l GG��������  ��  ��  ��  9 qrq E  KPsts o  KL���� 0 minerreadout minerReadoutt m  LOuu �vv " F a i l e d   t o   r e s o l v er wxw k  S�yy z{z I  Sb��|��� 0 setstatusline setStatusLine| }~} m  TW ��� 4 U n a b l e   t o   r e s o l v e   p o o l   U R L~ ��� m  WX�
� boovfals� ��� m  XY��  � ��� m  Y\�� ��� 
 m i n e r�  �  { ��� I  cn���� 
0 msglog  � ��� m  dg�� ��� 4 U n a b l e   t o   r e s o l v e   p o o l   U R L� ��� m  gj�� ���  c r i t i c a l�  �  � ��� l oo����  �  �  � ��� r  or��� m  op�
� boovfals� o      �� 0 minerproceed minerProceed� ��� l ss����  �  �  � ��� n s��� I  x���� "0 setstringvalue_ setStringValue_� ��� m  x{�� ��� 2 U n a b l e   t o   c o n n e c t   t o   U R L .�  �  � o  sx�� "0 poolsheetstatus poolSheetStatus� ��� I  ������ (0 incorrectpoollogin incorrectPoolLogin�  �  � ��� l ������  �  �  �  x ��� G  ����� l ������ E  ����� o  ���� 0 minerreadout minerReadout� m  ���� ��� & c r e d e n t i a l s   i n v a l i d�  �  � l ������ E  ����� o  ���� 0 minerreadout minerReadout� m  ���� ���  a u t h   f a i l e d�  �  � ��� k  ���� ��� I  ������ 0 setstatusline setStatusLine� ��� m  ���� ���  I n c o r r e c t   l o g i n� ��� m  ���
� boovfals� ��� m  ����  � ��� m  ���� ��� 
 m i n e r�  �  � ��� I  ������ 
0 msglog  � ��� m  ���� ��� t B a d   l o g i n   c r e d e n t i a l s   o r   o t h e r w i s e   u n a b l e   t o   l o g   i n t o   p o o l� ��� m  ���� ���  c r i t i c a l�  �  � ��� l ������  �  �  � ��� r  ����� m  ���
� boovfals� o      �� 0 minerproceed minerProceed� ��� l ������  �  �  � ��� n ����� I  ������ "0 setstringvalue_ setStringValue_� ��� m  ���� ��� 6 I n c o r r e c t   u s e r n a m e / p a s s w o r d�  �  � o  ���� "0 poolsheetstatus poolSheetStatus� ��� I  ������ (0 incorrectpoollogin incorrectPoolLogin�  �  � ��� l ������  �  �  �  � ��� @ ����� o  ���� 0 minerrestarts minerRestarts� o  ���� ,0 allowedminerrestarts allowedMinerRestarts� ��� k  ��� ��� I  ������ 0 setstatusline setStatusLine� ��� m  ���� ��� * U n a b l e   t o   s t a r t   m i n e r� ��� m  ���
� boovfals� ��� m  ���~�~  � ��}� m  ���� ��� 
 m i n e r�}  �  � ��� r  ����� m  ���|
�| boovfals� o      �{�{ 0 minerproceed minerProceed� ��z� I  ��y��x�y 
0 msglog  � ��� m  ���� ��� � T o o   m a n y   f a i l e d   a t t e m p t s ! 
 
 T h e   m i n e r   k e p t   q u i t t i n g   a n d   w o u l d n ' t   r e s t a r t   s u c c e s s f u l l y .� ��w� m  ��   � 
 a l e r t�w  �x  �z  �  ��  �  l �v�u�t�v  �u  �t    Z  R�s�r = 
	 o  �q�q &0 disablealldevices disableAllDevices	 m  	�p
�p boovtrue Y  N
�o�n
 Z  "I�m�l = "1 l "/�k�j n  "/ 4  */�i
�i 
cobj m  +.�h�h  n  "* 4  '*�g
�g 
cobj o  ()�f�f 0 x   o  "'�e�e  0 myprefsdevices myPrefsDevices�k  �j   m  /0�d
�d boovtrue r  4E c  49 m  45�c�c   m  58�b
�b 
long n       4  AD�a
�a 
cobj m  BC�`�`  n  9A  4  >A�_!
�_ 
cobj! o  ?@�^�^ 0 x    o  9>�]�]  0 myprefsdevices myPrefsDevices�m  �l  �o 0 x   m  �\�\  n  "#" m  �[
�[ 
nmbr# n $%$ 2 �Z
�Z 
cobj% o  �Y�Y  0 myprefsdevices myPrefsDevices�n  �s  �r   &'& l SS�X�W�V�X  �W  �V  ' (�U( Z  S�)*�T+) = SV,-, o  ST�S�S 0 minerproceed minerProceed- m  TU�R
�R boovtrue* k  Y{.. /0/ I  Yh�Q1�P�Q 0 setstatusline setStatusLine1 232 m  Z]44 �55   R e s t a r t i n g   m i n e r3 676 m  ]^�O
�O boovtrue7 898 m  ^_�N�N  9 :�M: m  _b;; �<< 
 m i n e r�M  �P  0 =>= I  in�L�K�J�L 0 restartminer restartMiner�K  �J  > ?�I? n o{@A@ I  t{�HB�G�H 0 	settitle_ 	setTitle_B C�FC m  twDD �EE  I I�F  �G  A o  ot�E�E 0 pausenub pauseNub�I  �T  + k  ~�FF GHG I  ~��D�C�B�D *0 reenableallcontrols reenableAllControls�C  �B  H I�AI n ��JKJ I  ���@L�?�@ 0 	settitle_ 	setTitle_L M�>M m  ��NN �OO %��>  �?  K o  ���=�= 0 pausenub pauseNub�A  �U  [ PQP l     �<�;�:�<  �;  �:  Q RSR i  ��TUT I      �9�8�7�9 0 restartminer restartMiner�8  �7  U k     1VV WXW r     YZY [     [\[ o     �6�6 0 minerrestarts minerRestarts\ m    �5�5 Z o      �4�4 0 minerrestarts minerRestartsX ]�3] Q    1^_`^ k    aa bcb I    �2�1�0�2 0 
killminers 
killMiners�1  �0  c d�/d I    �.e�-�. 0 
startminer 
startMinere f�,f m    gg �hh  �,  �-  �/  _ R      �+i�*
�+ .ascrerr ****      � ****i o      �)�) 0 errmsg errMsg�*  ` k   % 1jj klk I   % .�(m�'�( 
0 msglog  m non c   & )pqp o   & '�&�& 0 errmsg errMsgq m   ' (�%
�% 
ctxto r�$r m   ) *ss �tt  n o t i c e�$  �'  l u�#u L   / 1�"�"  �#  �3  S vwv l     �!� ��!  �   �  w xyx i  ��z{z I      ���� 0 startminerapi startMinerAPI�  �  { l    |}~| k      ��� l     ����  � / ) start a timer to loop the checking query   � ��� R   s t a r t   a   t i m e r   t o   l o o p   t h e   c h e c k i n g   q u e r y� ��� r     ��� n    ��� I    ���� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� ��� m    �� ?�      � ���  f    � ��� m    �� ���  c h e c k A P I r e a d y� ��� m    �� ���  � ��� m    �
� boovfals�  �  � n    ��� o    �� 0 nstimer NSTimer� m     �
� misccura� o      �� 0 checkapitimer checkAPItimer�  } . ( wait and see when the API is responding   ~ ��� P   w a i t   a n d   s e e   w h e n   t h e   A P I   i s   r e s p o n d i n gy ��� l     ����  �  �  � ��� i  ����� I      ���� 0 checkapiready checkAPIready�  �  � k    ��� ��� l     ����  � ? 9 check that the miner is still running and hasn't crashed   � ��� r   c h e c k   t h a t   t h e   m i n e r   i s   s t i l l   r u n n i n g   a n d   h a s n ' t   c r a s h e d� ��� r     ��� m     �� ���  � o      �� 0 testme testMe� ��� Q    ���
� r    ��� I   �	��
�	 .sysoexecTEXT���     TEXT� b    ��� b    ��� m    �� ��� < p s   - A   |   g r e p   " c g m i n e r "   |   g r e p  � o    �� 0 
pidcgminer 
pidCGminer� m    �� ���    |   g r e p   - v   g r e p�  � o      �� 0 testme testMe� R      ���
� .ascrerr ****      � ****�  �  �
  � ��� Z     2����� =    #��� o     !� �  0 testme testMe� m   ! "�� ���  � k   & .�� ��� I   & +�������� 40 minerunexpectedlystopped minerUnexpectedlyStopped��  ��  � ���� L   , .����  ��  �  �  � ��� l  3 3��������  ��  ��  � ��� l  3 ?���� r   3 ?��� l  3 =������ c   3 =��� I   3 ;������� 0 sendcommand sendCommand� ��� m   4 5�� ���  s u m m a r y� ��� m   5 6�� ���  � ���� m   6 7��
�� boovfals��  ��  � m   ; <��
�� 
ctxt��  ��  � o      ���� 0 ananswer anAnswer� A ; send a command, if the result is not "0", then it's ready!   � ��� v   s e n d   a   c o m m a n d ,   i f   t h e   r e s u l t   i s   n o t   " 0 " ,   t h e n   i t ' s   r e a d y !� ��� Q   @ S���� r   C H��� c   C F��� o   C D���� 0 ananswer anAnswer� m   D E��
�� 
ctxt� o      ���� 0 ananswer anAnswer� R      ������
�� .ascrerr ****      � ****��  ��  � r   P S��� m   P Q�� ���  0� o      ���� 0 ananswer anAnswer� ��� Z   T �������� =  T c��� o   T Y���� 0 
timertimer 
timerTimer� I  Y b�����
�� .sysorondlong        doub� l  Y ^������ o   Y ^���� 0 
timertimer 
timerTimer��  ��  ��  � l  f ����� k   f ��� ��� r   f s��� b   f q��� o   f k����  0 tempfolderpath tempFolderPath� o   k p���� 0 minerlogfile minerLogFile� o      ���� 0 thefile theFile� � � I  t y����
�� .rdwropenshor       file o   t u���� 0 thefile theFile��     r   z � l  z ���� I  z ����
�� .rdwrread****        **** o   z {���� 0 thefile theFile��  ��  ��   o      ���� 0 minerreadout minerReadout 	 I  � ���
��
�� .rdwrclosnull���     ****
 o   � ����� 0 thefile theFile��  	  l  � ���������  ��  ��    Z   � ��� l  � ����� E   � � o   � ����� 0 minerreadout minerReadout m   � � � & N o   d e v i c e s   d e t e c t e d��  ��   I   � ������� 0 setstatusline setStatusLine  m   � � � 4 N o   m i n i n g   d e v i c e s   d e t e c t e d  m   � ���
�� boovfals  m   � �����    ��  m   � �!! �"" 
 m i n e r��  ��   #$# G   � �%&% l  � �'����' E   � �()( o   � ����� 0 minerreadout minerReadout) m   � �** �++  a u t h   f a i l e d��  ��  & l  � �,����, E   � �-.- o   � ����� 0 minerreadout minerReadout. m   � �// �00  E r r o r   - 5 4��  ��  $ 1�1 k   � �22 343 I   � ����� 40 minerunexpectedlystopped minerUnexpectedlyStopped�  �  4 5�5 L   � ���  �  �  ��   6�6 l  � �����  �  �  �  � ' ! only execute on the full seconds   � �77 B   o n l y   e x e c u t e   o n   t h e   f u l l   s e c o n d s��  ��  � 898 l  � �����  �  �  9 :�: Z   ��;<�=; =  � �>?> l  � �@��@ o   � ��� 0 ananswer anAnswer�  �  ? m   � �AA �BB  0< k   �8CC DED l  � ��FG�  F 3 - do nothing, still waiting for API to come up   G �HH Z   d o   n o t h i n g ,   s t i l l   w a i t i n g   f o r   A P I   t o   c o m e   u pE IJI r   � �KLK m   � ��
� boovfalsL o      �� 0 minerapiready minerAPIreadyJ MNM r   � �OPO [   � �QRQ o   � ��� 0 
timertimer 
timerTimerR m   � �SS ?�      P o      �� 0 
timertimer 
timerTimerN TUT Z   �VW��V @  � �XYX o   � ��� 0 
timertimer 
timerTimerY o   � ��� 0 waitapistart waitAPIstartW Z   �Z[��Z =  �\]\ l  �^��^ c   �_`_ n  � aba I   � ���� 0 didminerdie didMinerDie�  �  b o   � ��� 0 	apphelper 	AppHelper` m   �
� 
bool�  �  ] m  �
� boovtrue[ k  	cc ded I  	���� 40 minerunexpectedlystopped minerUnexpectedlyStopped�  �  e f�f L  ��  �  �  �  �  �  U g�g r  8hih n 2jkj I  !2�l�� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_l mnm m  !$oo ?�      n pqp  f  $%q rsr m  %(tt �uu  c h e c k A P I r e a d ys vwv m  (+xx �yy  w z�z m  +,�
� boovfals�  �  k n !{|{ o  !�� 0 nstimer NSTimer| m  ��
�� misccurai o      ���� 0 checkapitimer checkAPItimer�  �  = l ;�}~} k  ;��� ��� I  ;F������� 
0 msglog  � ��� m  <?�� ��� � M i n e r   A P I   i s   r e a d y   a n d   r e s p o n d i n g ,   p r o c e e d i n g   t o   n o r m a l   m o n i t o r i n g . . .� ���� m  ?B�� ���  n o t i c e��  ��  � ��� I  GQ������� 0 	killtimer 	killTimer� ���� o  HM���� $0 minerstatustimer minerStatusTimer��  ��  � ��� r  Rb��� n R\��� 4  U\���
�� 
pcls� m  X[�� ���  N S T i m e r� m  RU��
�� misccura� o      ���� $0 minerstatustimer minerStatusTimer� ��� I  ch�������� *0 reenableallcontrols reenableAllControls��  ��  � ��� r  ip��� m  ij��
�� boovtrue� o      �� 0 minerapiready minerAPIready� ��� r  qx��� m  qr�~
�~ boovtrue� o      �}�} 0 minerrunning minerRunning� ��� n y���� I  ~��|��{�| 0 	settitle_ 	setTitle_� ��z� m  ~��� ���  S t o p   m i n i n g�z  �{  � o  y~�y�y &0 dockmenustartstop dockMenuStartStop� ��� n ����� I  ���x��w�x 0 	settitle_ 	setTitle_� ��v� m  ���� ���  S t o p   m i n i n g�v  �w  � o  ���u�u 00 intensitymenustartstop intensityMenuStartStop� ��� n ����� I  ���t��s�t 0 	settitle_ 	setTitle_� ��r� m  ���� ���  I I�r  �s  � o  ���q�q 0 pausenub pauseNub� ��� l ���p���p  � ' ! detailTwistie's setHidden_(true)   � ��� B   d e t a i l T w i s t i e ' s   s e t H i d d e n _ ( t r u e )� ��� l ���o���o  � "  pauseNub's setHidden_(true)   � ��� 8   p a u s e N u b ' s   s e t H i d d e n _ ( t r u e )� ��� l ���n���n  � !  infoNub's setHidden_(true)   � ��� 6   i n f o N u b ' s   s e t H i d d e n _ ( t r u e )� ��� l ���m���m  � Z T log all the devices detected by the miner into the Asteroid log for easier ID later   � ��� �   l o g   a l l   t h e   d e v i c e s   d e t e c t e d   b y   t h e   m i n e r   i n t o   t h e   A s t e r o i d   l o g   f o r   e a s i e r   I D   l a t e r� ��� l ���l�k�j�l  �k  �j  � ��� I  ���i��h�i 
0 msglog  � ��� b  ����� m  ���� ���  S u m m a r y :  � I  ���g��f�g 0 sendcommand sendCommand� ��� m  ���� ���  s u m m a r y� ��� m  ���� ���  � ��e� m  ���d
�d boovfals�e  �f  � ��c� m  ���� ���  n o t i c e�c  �h  � ��� I  ���b��a�b 
0 msglog  � ��� b  ����� m  ���� ���  D e v s :  � I  ���`��_�` 0 sendcommand sendCommand� ��� m  ���� ���  d e v s� ��� m  ���� ���  � ��^� m  ���]
�] boovfals�^  �_  � ��\� m  ���� ���  n o t i c e�\  �a  � ��� I  ���[��Z�[ 
0 msglog  � � � b  �� m  �� �  D e v d e t a i l s :   I  ���Y�X�Y 0 sendcommand sendCommand  m  �� �		  d e v d e t a i l s 

 m  �� �   �W m  ���V
�V boovfals�W  �X    �U m  �� �  n o t i c e�U  �Z  �  I  ��T�S�T 
0 msglog    b  �� m  �� �  U s b s t a t s :   I  ���R�Q�R 0 sendcommand sendCommand  m  �� �  u s b s t a t s  !  m  ��"" �##  ! $�P$ m  ���O
�O boovfals�P  �Q   %�N% m  ��&& �''  n o t i c e�N  �S   ()( l �M�L�K�M  �L  �K  ) *+* I  	�J�I�H�J 0 checkdevices checkDevices�I  �H  + ,-, I  
�G�F�E�G  0 drawdevicelist drawDeviceList�F  �E  - ./. l �D�C�B�D  �C  �B  / 010 l �A23�A  2 e _ if first boot program (or fresh prefs file) and a USB device exists, disable GPU automatically   3 �44 �   i f   f i r s t   b o o t   p r o g r a m   ( o r   f r e s h   p r e f s   f i l e )   a n d   a   U S B   d e v i c e   e x i s t s ,   d i s a b l e   G P U   a u t o m a t i c a l l y1 565 Z  �78�@�?7 = 9:9 o  �>�> 0 	firstboot 	firstBoot: m  �=
�= boovtrue8 k  �;; <=< I  %�<>�;�< 
0 msglog  > ?@? m  AA �BB v F i r s t   t i m e   l a u n c h i n g   A s t e r o i d   ( o r   o p t i o n   k e y   i s   h e l d   d o w n ) .@ C�:C m  !DD �EE  n o t i c e�:  �;  = FGF r  &)HIH m  &'�9
�9 boovfalsI o      �8�8 0 foundusb foundUsbG JKJ r  *-LML m  *+�7
�7 boovfalsM o      �6�6 0 foundgpu foundGpuK NON l ..�5�4�3�5  �4  �3  O PQP r  .mRSR c  .gTUT n  .cVWV 4  ^c�2X
�2 
cobjX m  ab�1�1 W I  .^�0Y�/�0 0 splitstring splitStringY Z[Z n  /W\]\ 4  RW�.^
�. 
cobj^ m  UV�-�- ] I  /R�,_�+�, 0 splitstring splitString_ `a` n  0Kbcb 4  DK�*d
�* 
cobjd m  GJ�)�) c I  0D�(e�'�( 0 splitstring splitStringe fgf I  1=�&h�%�& 0 sendcommand sendCommandh iji m  25kk �ll  g p u c o u n tj mnm m  58oo �pp  n q�$q m  89�#
�# boovfals�$  �%  g r�"r m  =@ss �tt  ,�"  �'  a u�!u m  KNvv �ww  =�!  �+  [ x� x m  WZyy �zz  |�   �/  U m  cf�
� 
longS o      �� 0 numgpus numGPUsQ {|{ r  n�}~} c  n�� n  n���� 4  ����
� 
cobj� m  ���� � I  n����� 0 splitstring splitString� ��� n  o���� 4  ����
� 
cobj� m  ���� � I  o����� 0 splitstring splitString� ��� n  p���� 4  ����
� 
cobj� m  ���� � I  p����� 0 splitstring splitString� ��� I  q}���� 0 sendcommand sendCommand� ��� m  ru�� ���  p g a c o u n t� ��� m  ux�� ���  � ��� m  xy�
� boovfals�  �  � ��� m  }��� ���  ,�  �  � ��� m  ���� ���  =�  �  � ��� m  ���� ���  |�  �  � m  ���

�
 
long~ o      �	�	 0 numpgas numPGAs| ��� r  ����� c  ����� n  ����� 4  ����
� 
cobj� m  ���� � I  ������ 0 splitstring splitString� ��� n  ����� 4  ����
� 
cobj� m  ���� � I  ������ 0 splitstring splitString� ��� n  ����� 4  ��� �
�  
cobj� m  ������ � I  ��������� 0 splitstring splitString� ��� I  ��������� 0 sendcommand sendCommand� ��� m  ���� ���  a s c c o u n t� ��� m  ���� ���  � ���� m  ����
�� boovfals��  ��  � ���� m  ���� ���  ,��  ��  � ���� m  ���� ���  =��  �  � ���� m  ���� ���  |��  �  � m  ����
�� 
long� o      ���� 0 numasics numASICs� ��� l ����������  ��  ��  � ��� Z  ��������� l �������� ? ����� o  ������ 0 numgpus numGPUs� m  ������  ��  ��  � r  ����� m  ����
�� boovtrue� o      ���� 0 foundgpu foundGpu��  ��  � ��� l   ��������  ��  ��  � ��� Z   ������� G   ��� l  ������ ?  ��� o   ���� 0 numpgas numPGAs� m  ����  ��  ��  � l 
������ ? 
��� o  
���� 0 numasics numASICs� m  ����  ��  ��  � r  ��� m  ��
�� boovtrue� o      ���� 0 foundusb foundUsb��  ��  � ��� l   ��������  ��  ��  � ���� Z   �������� F   -��� l  #������ =  #��� o   !���� 0 foundgpu foundGpu� m  !"��
�� boovtrue��  ��  � l &)������ = &)��� o  &'���� 0 foundusb foundUsb� m  '(��
�� boovtrue��  ��  � k  0��� ��� l 00������  � 5 / disable the GPU devices and leave the USB ones   � ��� ^   d i s a b l e   t h e   G P U   d e v i c e s   a n d   l e a v e   t h e   U S B   o n e s� ���� Y  0� ����  Z  G����� = GZ l GX���� n  GX	 4  QX��

�� 
cobj
 m  TW���� 	 n  GQ 4  LQ��
�� 
cobj o  OP���� 0 x   o  GL��  0 myprefsdevices myPrefsDevices��  ��   m  XY�
� boovtrue Z  ]��� = ]t l ]p�� c  ]p n  ]n 4  gn�
� 
cobj m  jm��  n  ]g 4  bg�
� 
cobj o  ef�� 0 x   o  ]b��  0 myprefsdevices myPrefsDevices m  no�
� 
ctxt�  �   m  ps �  g p u r  w� c  w|  m  wx��    m  x{�
� 
long l     !��! n      "#" 4  ���$
� 
cobj$ m  ���� # n  |�%&% 4  ���'
� 
cobj' o  ���� 0 x  & o  |���  0 myprefsdevices myPrefsDevices�  �  �  �  ��  ��  �� 0 x   m  34��  n  4B()( m  =A�
� 
nmbr) n 4=*+* 2 9=�
� 
cobj+ o  49��  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  �@  �?  6 ,-, Y  ��.�/0�. Z  ��12��1 = ��343 l ��5��5 c  ��676 n  ��898 4  ���:
� 
cobj: m  ���� 9 n  ��;<; 4  ���=
� 
cobj= o  ���� 0 x  < o  ����  0 myprefsdevices myPrefsDevices7 m  ���
� 
bool�  �  4 m  ���
� boovtrue2 I  ���>�� 0 toggledevice toggleDevice> ?�? c  ��@A@ n  ��BCB 4  ���D
� 
cobjD m  ���� C n  ��EFE 4  ���G
� 
cobjG o  ���� 0 x  F o  ����  0 myprefsdevices myPrefsDevicesA m  ���
� 
ctxt�  �  �  �  � 0 x  / m  ���� 0 n  ��HIH m  ���
� 
nmbrI n ��JKJ 2 ���
� 
cobjK o  ����  0 myprefsdevices myPrefsDevices�  - LML l ������  �  �  M NON I  ������ *0 startgetminerstatus startGetMinerStatus�  �  O P�P l ������  �  �  �  ~ 1 + api returned something, so we're ready now    �QQ V   a p i   r e t u r n e d   s o m e t h i n g ,   s o   w e ' r e   r e a d y   n o w�  � RSR l     ����  �  �  S TUT i  ��VWV I      ��~�}� 0 setstatusback setStatusBack�~  �}  W k     �XX YZY l     �|[\�|  [  remove it from list   \ �]] & r e m o v e   i t   f r o m   l i s tZ ^�{^ Z     �_`ab_ =    cdc n     	efe m    	�z
�z 
nmbrf n    ghg 2   �y
�y 
cobjh o     �x�x 0 revertstatus revertStatusd m   	 
�w�w  ` r    iji J    �v�v  j o      �u�u 0 revertstatus revertStatusa klk =   $mnm n    "opo m     "�t
�t 
nmbrp n    qrq 2    �s
�s 
cobjr o    �r�r 0 revertstatus revertStatusn m   " #�q�q l s�ps k   ' Ytt uvu Q   ' Pwx�ow I   * G�ny�m�n 0 setstatusline setStatusLiney z{z n   + 6|}| 4   3 6�l~
�l 
cobj~ m   4 5�k�k } l  + 3�j�i n   + 3��� 4  0 3�h�
�h 
cobj� m   1 2�g�g��� o   + 0�f�f 0 revertstatus revertStatus�j  �i  { ��� m   6 7�e
�e boovfals� ��� m   7 8�d�d  � ��c� n   8 C��� 4   @ C�b�
�b 
cobj� m   A B�a�a � l  8 @��`�_� n   8 @��� 4  = @�^�
�^ 
cobj� m   > ?�]�]��� o   8 =�\�\ 0 revertstatus revertStatus�`  �_  �c  �m  x R      �[�Z�Y
�[ .ascrerr ****      � ****�Z  �Y  �o  v ��X� r   Q Y��� J   Q S�W�W  � o      �V�V 0 revertstatus revertStatus�X  �p  b k   \ ��� ��� r   \ `��� J   \ ^�U�U  � o      �T�T 0 newlist newList� ��� Y   a ���S���R� r   u ���� n   u }��� 4   z }�Q�
�Q 
cobj� o   { |�P�P 0 x  � o   u z�O�O 0 revertstatus revertStatus� n      ���  ;   ~ � o   } ~�N�N 0 newlist newList�S 0 x  � m   d e�M�M � l  e p��L�K� \   e p��� l  e n��J�I� n   e n��� m   l n�H
�H 
nmbr� n  e l��� 2  j l�G
�G 
cobj� o   e j�F�F 0 revertstatus revertStatus�J  �I  � m   n o�E�E �L  �K  �R  � ��� r   � ���� o   � ��D�D 0 newlist newList� o      �C�C 0 revertstatus revertStatus� ��B� Q   � ����A� I   � ��@��?�@ 0 setstatusline setStatusLine� ��� n   � ���� 4   � ��>�
�> 
cobj� m   � ��=�= � l  � ���<�;� n   � ���� 4  � ��:�
�: 
cobj� m   � ��9�9��� o   � ��8�8 0 revertstatus revertStatus�<  �;  � ��� m   � ��7
�7 boovfals� ��� m   � ��6�6  � ��5� n   � ���� 4   � ��4�
�4 
cobj� m   � ��3�3 � l  � ���2�1� n   � ���� 4  � ��0�
�0 
cobj� m   � ��/�/��� o   � ��.�. 0 revertstatus revertStatus�2  �1  �5  �?  � R      �-�,�+
�- .ascrerr ****      � ****�,  �+  �A  �B  �{  U ��� l     �*�)�(�*  �)  �(  � ��� i  ����� I      �'��&�' 0 setstatusline setStatusLine� ��� o      �%�% 0 thistext thisText� ��� o      �$�$ 0 	spinneron 	spinnerOn� ��� o      �#�# "0 showforxseconds showForXSeconds� ��"� o      �!�! 0 classofstatus classOfStatus�"  �&  � k    �� ��� l     � ���   � � � classOfStatus: Anything from other classes will wipe out everything else in that class. Can also leave blank for simple first-in, last-out behaviour   � ���*   c l a s s O f S t a t u s :   A n y t h i n g   f r o m   o t h e r   c l a s s e s   w i l l   w i p e   o u t   e v e r y t h i n g   e l s e   i n   t h a t   c l a s s .   C a n   a l s o   l e a v e   b l a n k   f o r   s i m p l e   f i r s t - i n ,   l a s t - o u t   b e h a v i o u r� ��� l     ����  �  �  � ��� l     ����  �   hacky bugfix   � ���    h a c k y   b u g f i x� ��� Z     ����� B    ��� n     ��� 1    �
� 
leng� o     �� 0 thistext thisText� m    �� � L    
��  �  �  � ��� l   ����  �  �  � ��� Z    ����� =   ��� o    �� 0 classofstatus classOfStatus� m    �� ���  � r    ��� m    �� ���  d e f a u l t� o      �� 0 classofstatus classOfStatus�  �  � ��� l   ����  � %  revertStatus = {message,class}   � ��� >   r e v e r t S t a t u s   =   { m e s s a g e , c l a s s }� ��� l   ����  �  �  �    Z    8�
 =   $ o    "�	�	 $0 currentstatustag currentStatusTag m   " #��  r   ' . m   ' (��  o      �� $0 currentstatustag currentStatusTag�
   r   1 8	
	 m   1 2�� 
 o      �� $0 currentstatustag currentStatusTag  l  9 9����  �  �    l  9 9� �    * $ delete anything from the same class    � H   d e l e t e   a n y t h i n g   f r o m   t h e   s a m e   c l a s s  r   9 = J   9 ;����   o      ���� 0 newlist newList  Y   > y���� k   Q t  l  Q Q����   . ( choose from list item x of revertStatus    �   P   c h o o s e   f r o m   l i s t   i t e m   x   o f   r e v e r t S t a t u s !��! Z   Q t"#����" l  Q b$����$ >  Q b%&% l  Q ^'����' c   Q ^()( n   Q \*+* 4   Y \��,
�� 
cobj, m   Z [���� + l  Q Y-����- n   Q Y./. 4   V Y��0
�� 
cobj0 o   W X���� 0 x  / o   Q V���� 0 revertstatus revertStatus��  ��  ) m   \ ]��
�� 
ctxt��  ��  & l  ^ a1����1 c   ^ a232 o   ^ _���� 0 classofstatus classOfStatus3 m   _ `��
�� 
ctxt��  ��  ��  ��  # r   e p454 n   e m676 4   j m��8
�� 
cobj8 o   k l���� 0 x  7 o   e j���� 0 revertstatus revertStatus5 n      9:9  ;   n o: o   m n���� 0 newlist newList��  ��  ��  �� 0 x   m   A B����  n   B L;<; m   I K��
�� 
nmbr< n  B I=>= 2  G I��
�� 
cobj> o   B G���� 0 revertstatus revertStatus��   ?@? r   z �ABA o   z {���� 0 newlist newListB o      ���� 0 revertstatus revertStatus@ CDC r   � �EFE J   � �GG HIH o   � ����� 0 thistext thisTextI J��J o   � ����� 0 classofstatus classOfStatus��  F n      KLK  ;   � �L o   � ����� 0 revertstatus revertStatusD MNM l  � ���OP��  O 8 2 msglog(number of items in revertStatus,"warning")   P �QQ d   m s g l o g ( n u m b e r   o f   i t e m s   i n   r e v e r t S t a t u s , " w a r n i n g " )N RSR l  � ���������  ��  ��  S TUT l  � ���VW��  V 7 1 prep the status line if we need a spinner or not   W �XX b   p r e p   t h e   s t a t u s   l i n e   i f   w e   n e e d   a   s p i n n e r   o r   n o tU YZY r   � �[\[ m   � �]] �^^ 
          \ o      ���� 20 leadingspacesforspinner leadingSpacesForSpinnerZ _`_ r   � �aba m   � �cc �dd  b o      ���� 0 
statusline 
statusLine` efe Z   � �gh��ig =  � �jkj l  � �l����l o   � ����� 0 	spinneron 	spinnerOn��  ��  k m   � ���
�� boovtrueh k   � �mm non Z   � �pq��rp =  � �sts o   � ����� $0 currentstatustag currentStatusTagt m   � ����� q n  � �uvu I   � ���w���� "0 startanimation_ startAnimation_w x��x m   � �yy �zz  ��  ��  v o   � �����  0 statusspinner1 statusSpinner1��  r n  � �{|{ I   � ���}���� "0 startanimation_ startAnimation_} ~��~ m   � � ���  ��  ��  | o   � �����  0 statusspinner2 statusSpinner2o ���� r   � ���� b   � ���� b   � ���� o   � ����� 20 leadingspacesforspinner leadingSpacesForSpinner� o   � ����� 0 thistext thisText� m   � ��� ���  &� o      �� 0 
statusline 
statusLine��  ��  i k   � ��� ��� Z   � ������ =  � ���� o   � ��� $0 currentstatustag currentStatusTag� m   � ��� � n  � ���� I   � �����  0 stopanimation_ stopAnimation_� ��� m   � ��� ���  �  �  � o   � ���  0 statusspinner1 statusSpinner1�  � n  � ���� I   � �����  0 stopanimation_ stopAnimation_� ��� m   � ��� ���  �  �  � o   � ���  0 statusspinner2 statusSpinner2� ��� r   � ���� o   � ��� 0 thistext thisText� o      �� 0 
statusline 
statusLine�  f ��� l  � �����  �  �  � ��� l  � �����  � G A set animationContext to current application's NSAnimationContext   � ��� �   s e t   a n i m a t i o n C o n t e x t   t o   c u r r e n t   a p p l i c a t i o n ' s   N S A n i m a t i o n C o n t e x t� ��� l  � �����  � ) # animationContext's beginGrouping()   � ��� F   a n i m a t i o n C o n t e x t ' s   b e g i n G r o u p i n g ( )� ��� l  � �����  � < 6 animationContext's currentContext's setDuration_(0.1)   � ��� l   a n i m a t i o n C o n t e x t ' s   c u r r e n t C o n t e x t ' s   s e t D u r a t i o n _ ( 0 . 1 )� ��� l  � �����  �   set the status line   � ��� (   s e t   t h e   s t a t u s   l i n e� ��� Z   ������� =  � ���� o   � ��� $0 currentstatustag currentStatusTag� m   � ��� � k   �q�� ��� l  � �����  �   show 1, hide 2   � ���    s h o w   1 ,   h i d e   2� ��� n  ���� I   ����� "0 setstringvalue_ setStringValue_� ��� o   � ��� 0 
statusline 
statusLine�  �  � o   � ��� 0 
statustag1 
statusTag1� ��� n ��� I  ���� 0 
sethidden_ 
setHidden_� ��� m  	�
� boovfals�  �  � o  �� 0 statusview1 statusView1� ��� n ��� I  ���� 0 
sethidden_ 
setHidden_� ��� m  �
� boovtrue�  �  � o  �� 0 statusview2 statusView2� ��� n 0��� I  "0���� ,0 replacesubview_with_ replaceSubview_with_� ��� o  "'�� 0 statusview2 statusView2� ��� o  ',�� 0 statusview1 statusView1�  �  � n "��� I  "���� 0 contentview contentView�  �  � o  �� 0 
mainwindow 
mainWindow� ��� r  1<��� n 1:��� I  6:���� 	0 frame  �  �  � o  16�� 0 statusview2 statusView2� o      �� 0 newframe newFrame� ��� r  =X��� n  =N��� o  JN�� 0 x  � n  =J��� o  FJ�� 
0 origin  � n =F��� I  BF���� 	0 frame  �  �  � o  =B�� 0 statusview2 statusView2� n      ��� o  SW�� 0 x  � n  NS��� o  OS�� 
0 origin  � o  NO�� 0 newframe newFrame� ��� r  Yf��� l Y\���~� m  Y\�}�} �  �~  � n      ��� o  ae�|�| 0 y  � n  \a��� o  ]a�{�{ 
0 origin  � o  \]�z�z 0 newframe newFrame� ��y� n gq��� I  lq�x �w�x 0 	setframe_ 	setFrame_  �v o  lm�u�u 0 newframe newFrame�v  �w  � o  gl�t�t 0 statusview1 statusView1�y  �  � k  t�  l tt�s�s     show 2, hide 1    �    s h o w   2 ,   h i d e   1 	 n t~

 I  y~�r�q�r "0 setstringvalue_ setStringValue_ �p o  yz�o�o 0 
statusline 
statusLine�p  �q   o  ty�n�n 0 
statustag2 
statusTag2	  n � I  ���m�l�m 0 
sethidden_ 
setHidden_ �k m  ���j
�j boovfals�k  �l   o  ��i�i 0 statusview2 statusView2  n �� I  ���h�g�h 0 
sethidden_ 
setHidden_ �f m  ���e
�e boovtrue�f  �g   o  ���d�d 0 statusview1 statusView1  n �� I  ���c�b�c ,0 replacesubview_with_ replaceSubview_with_   o  ���a�a 0 statusview1 statusView1  !�`! o  ���_�_ 0 statusview2 statusView2�`  �b   n ��"#" I  ���^�]�\�^ 0 contentview contentView�]  �\  # o  ���[�[ 0 
mainwindow 
mainWindow $%$ r  ��&'& n ��()( I  ���Z�Y�X�Z 	0 frame  �Y  �X  ) o  ���W�W 0 statusview1 statusView1' o      �V�V 0 newframe newFrame% *+* r  ��,-, n  ��./. o  ���U�U 0 x  / n  ��010 o  ���T�T 
0 origin  1 n ��232 I  ���S�R�Q�S 	0 frame  �R  �Q  3 o  ���P�P 0 statusview1 statusView1- n      454 o  ���O�O 0 x  5 n  ��676 o  ���N�N 
0 origin  7 o  ���M�M 0 newframe newFrame+ 898 r  ��:;: l ��<�L�K< m  ���J�J �L  �K  ; n      =>= o  ���I�I 0 y  > n  ��?@? o  ���H�H 
0 origin  @ o  ���G�G 0 newframe newFrame9 A�FA n ��BCB I  ���ED�D�E 0 	setframe_ 	setFrame_D E�CE o  ���B�B 0 newframe newFrame�C  �D  C o  ���A�A 0 statusview2 statusView2�F  � FGF l ���@�?�>�@  �?  �>  G HIH l ���=JK�=  J N H mainWindow's animator()'s setFrame_display_(mainWindow's frame(), true)   K �LL �   m a i n W i n d o w ' s   a n i m a t o r ( ) ' s   s e t F r a m e _ d i s p l a y _ ( m a i n W i n d o w ' s   f r a m e ( ) ,   t r u e )I MNM l ���<OP�<  O ' ! animationContext's endGrouping()   P �QQ B   a n i m a t i o n C o n t e x t ' s   e n d G r o u p i n g ( )N RSR l ���;TU�;  T * $ set the message expiry if requested   U �VV H   s e t   t h e   m e s s a g e   e x p i r y   i f   r e q u e s t e dS W�:W Z  �XY�9�8X ? ��Z[Z o  ���7�7 "0 showforxseconds showForXSeconds[ m  ���6�6  Y r  �\]\ n �
^_^ I  �
�5`�4�5 �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_` aba o  ���3�3 "0 showforxseconds showForXSecondsb cdc  f  ��d efe m  � gg �hh  s e t S t a t u s B a c kf iji m   kk �ll  j m�2m m  �1
�1 boovfals�2  �4  _ n ��non o  ���0�0 0 nstimer NSTimero m  ���/
�/ misccura] o      �.�. (0 setstatusbacktimer setStatusBackTimer�9  �8  �:  � pqp l     �-�,�+�-  �,  �+  q rsr i  ��tut I      �*v�)�* $0 requesteditpool_ requestEditPool_v w�(w o      �'�' 
0 sender  �(  �)  u k    yxx yzy n    
{|{ I    
�&}�%�& "0 setstringvalue_ setStringValue_} ~�$~ m     ���  �$  �%  | o     �#�# "0 poolsheetstatus poolSheetStatusz ��� n   ��� I    �"��!�" 0 settextcolor_ setTextColor_� �� � n   ��� o    �� 0 
blackcolor 
blackColor� o    �� 0 nscolor NSColor�   �!  � o    �� "0 poolsheetstatus poolSheetStatus� ��� r    )��� c    '��� n   %��� I   ! %���� *0 titleofselecteditem titleOfSelectedItem�  �  � o    !�� 0 poollist poolList� m   % &�
� 
ctxt� o      �� 0 apool aPool� ��� r   * .��� J   * ,��  � o      �� 0 thispool thisPool� ��� l  / /����  �  �  � ��� Y   / i������ Z   B d����� =  B Q��� l  B O���� c   B O��� n   B M��� 4   J M��
� 
cobj� m   K L�
�
 � l  B J��	�� n   B J��� 4   G J��
� 
cobj� o   H I�� 0 x  � o   B G�� 0 myprefspools myPrefsPools�	  �  � m   M N�
� 
ctxt�  �  � o   O P�� 0 apool aPool� k   T `�� ��� r   T ^��� n   T \��� 4   Y \��
� 
cobj� o   Z [�� 0 x  � o   T Y� �  0 myprefspools myPrefsPools� o      ���� 0 thispool thisPool� ����  S   _ `��  �  �  � 0 x  � m   2 3���� � n   3 =��� m   : <��
�� 
nmbr� n  3 :��� 2  8 :��
�� 
cobj� o   3 8���� 0 myprefspools myPrefsPools�  � ��� l  j j��������  ��  ��  � ��� Z   j ������� =  j n��� o   j k���� 0 thispool thisPool� J   k m����  � k   q {�� ��� I   q x������� 
0 msglog  � ��� m   r s�� ��� v C o u l d n ' t   f i n d   t h e   c u r r e n t l y   s e l e c t e d   p o o l   i n   t h e   u s e r   p r e f s� ���� m   s t�� ���  w a r n i n g��  ��  � ���� L   y {����  ��  ��  ��  � ��� r   � ���� o   � ����� 0 thispool thisPool� o      ���� 0 editingpool editingPool� ��� n  � ���� I   � �������� "0 setstringvalue_ setStringValue_� ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thispool thisPool��  ��  � o   � ����� (0 poolsheetnamefixed poolSheetNameFixed� ��� n  � ���� I   � �������� "0 setstringvalue_ setStringValue_� ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thispool thisPool��  ��  � o   � ����� 0 poolsheetname poolSheetName� ��� n  � ���� I   � �������� "0 setstringvalue_ setStringValue_� ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thispool thisPool��  ��  � o   � ����� (0 poolsheetcoinfixed poolSheetCoinFixed� ��� n  � ���� I   � �������� ,0 selectitemwithtitle_ selectItemWithTitle_� ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thispool thisPool��  ��  � o   � ����� 0 poolsheetcoin poolSheetCoin� ��� Z   �'������ =  � ���� I   � �������� 0 isdefaultpool isDefaultPool� ���� n   � ���� 4   � ����
�� 
cobj� m   � ����� � o   � ����� 0 thispool thisPool��  ��  � m   � ���
�� boovtrue� k   � ���    n  � � I   � ������� 0 
sethidden_ 
setHidden_ �� m   � ���
�� boovfals��  ��   o   � ����� (0 poolsheetnamefixed poolSheetNameFixed  n  � �	 I   � ���
���� 0 
sethidden_ 
setHidden_
 �� m   � ���
�� boovtrue��  ��  	 o   � ����� 0 poolsheetname poolSheetName  n  � � I   � ������� 0 
sethidden_ 
setHidden_ �� m   � ���
�� boovfals��  ��   o   � ����� (0 poolsheetcoinfixed poolSheetCoinFixed �� n  � � I   � ������� 0 
sethidden_ 
setHidden_ �� m   � ���
�� boovtrue��  ��   o   � ����� 0 poolsheetcoin poolSheetCoin��  ��  � k   �'  n  � I  ������ 0 
sethidden_ 
setHidden_ �� m  ��
�� boovtrue��  ��   o   ����� (0 poolsheetnamefixed poolSheetNameFixed  n  !  I  ��"���� 0 
sethidden_ 
setHidden_" #��# m  ��
�� boovfals��  ��  ! o  ���� 0 poolsheetname poolSheetName $%$ n &'& I  ��(���� 0 
sethidden_ 
setHidden_( )��) m  ��
�� boovtrue��  ��  ' o  ���� (0 poolsheetcoinfixed poolSheetCoinFixed% *��* n '+,+ I  "'��-���� 0 
sethidden_ 
setHidden_- .��. m  "#�
� boovfals��  ��  , o  "�� 0 poolsheetcoin poolSheetCoin��  � /0/ n (5121 I  -5�3�� "0 setstringvalue_ setStringValue_3 4�4 n  -1565 4  .1�7
� 
cobj7 m  /0�� 6 o  -.�� 0 thispool thisPool�  �  2 o  (-�� 0 poolsheeturl poolSheetURL0 898 n 6C:;: I  ;C�<�� "0 setstringvalue_ setStringValue_< =�= n  ;?>?> 4  <?�@
� 
cobj@ m  =>�� ? o  ;<�� 0 thispool thisPool�  �  ; o  6;�� 20 poolsheetworkerusername poolSheetWorkerUsername9 ABA n D\CDC I  I\�E�� "0 setstringvalue_ setStringValue_E F�F c  IXGHG I  IV�I��  0 lookuppassword lookupPasswordI JKJ n  JNLML 4  KN�N
� 
cobjN m  LM�� M o  JK�� 0 thispool thisPoolK O�O n  NRPQP 4  OR�R
� 
cobjR m  PQ�� Q o  NO�� 0 thispool thisPool�  �  H m  VW�
� 
ctxt�  �  D o  DI�� 20 poolsheetworkerpassword poolSheetWorkerPasswordB S�S n ]yTUT I  dy�V�� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_V WXW o  di�~�~ 0 	poolsheet 	poolSheetX YZY o  in�}�} 0 
mainwindow 
mainWindowZ [\[  f  no\ ]^] m  or�|
�| 
msng^ _�{_ m  ru�z
�z 
msng�{  �  U n ]d`a` o  `d�y�y 0 nsapp NSAppa m  ]`�x
�x misccura�  s bcb l     �w�v�u�w  �v  �u  c ded i  ��fgf I      �t�s�r�t *0 startgetminerstatus startGetMinerStatus�s  �r  g k     2hh iji I     	�qk�p�q 0 setstatusline setStatusLinek lml m    nn �oo & C o n n e c t i n g   t o   p o o l sm pqp m    �o
�o boovtrueq rsr m    �n�n  s t�mt m    uu �vv  �m  �p  j wxw I   
 �l�k�j�l 0 setpools setPools�k  �j  x yzy l   �i�h�g�i  �h  �g  z {|{ l   �f}~�f  } T N start the timer loop for miner stats and the ui updates that go along with it   ~ � �   s t a r t   t h e   t i m e r   l o o p   f o r   m i n e r   s t a t s   a n d   t h e   u i   u p d a t e s   t h a t   g o   a l o n g   w i t h   i t| ��� r    "��� n   ��� I    �e��d�e �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� ��� m    �c�c � ���  f    � ��� m    �� ��� " u p d a t e M i n e r S t a t u s� ��� m    �� ���  � ��b� m    �a
�a boovtrue�b  �d  � n   ��� o    �`�` 0 nstimer NSTimer� m    �_
�_ misccura� o      �^�^ $0 minerstatustimer minerStatusTimer� ��� l  # #�]�\�[�]  �\  �[  � ��� I   # ,�Z��Y�Z 0 setstatusline setStatusLine� ��� m   $ %�� ���  S t a r t i n g   m i n i n g� ��� m   % &�X
�X boovtrue� ��� m   & '�W�W  � ��V� m   ' (�� ���  �V  �Y  � ��U� I   - 2�T�S�R�T &0 updateminerstatus updateMinerStatus�S  �R  �U  e ��� l     �Q�P�O�Q  �P  �O  � ��� i  ����� I      �N�M�L�N *0 updatesharesreadout updateSharesReadout�M  �L  � k     ��� ��� l     �K�J�I�K  �J  �I  � ��� r     
��� I     �H��G�H 0 sendcommand sendCommand� ��� m    �� ���  s u m m a r y� ��� m    �� ���  � ��F� m    �E
�E boovfals�F  �G  � o      �D�D 0 thisresponse thisResponse� ��� l   �C�B�A�C  �B  �A  � ��� r    ��� n    ��� 4    �@�
�@ 
cobj� m    �?�? 
� I    �>��=�> 0 splitstring splitString� ��� o    �<�< 0 thisresponse thisResponse� ��;� m    �� ���  ,�;  �=  � o      �:�:  0 acceptedshares acceptedShares� ��� r    $��� n    "��� 4    "�9�
�9 
cobj� m     !�8�8 � I    �7��6�7 0 splitstring splitString� ��� o    �5�5  0 acceptedshares acceptedShares� ��4� m    �� ���  =�4  �6  � o      �3�3  0 acceptedshares acceptedShares� ��� r   % 1��� n   % /��� 4   , /�2�
�2 
cobj� m   - .�1�1 � I   % ,�0��/�0 0 splitstring splitString� ��� o   & '�.�. 0 thisresponse thisResponse� ��-� m   ' (�� ���  ,�-  �/  � o      �,�,  0 rejectedshares rejectedShares� ��� r   2 >��� n   2 <��� 4   9 <�+�
�+ 
cobj� m   : ;�*�* � I   2 9�)��(�) 0 splitstring splitString� ��� o   3 4�'�'  0 rejectedshares rejectedShares� ��&� m   4 5�� ���  =�&  �(  � o      �%�%  0 rejectedshares rejectedShares� ��� r   ? K��� n   ? I��� 4   F I�$�
�$ 
cobj� m   G H�#�# � I   ? F�"��!�" 0 splitstring splitString� ��� o   @ A� �  0 thisresponse thisResponse� ��� m   A B�� �      ,�  �!  � o      ��  0 hardwareerrors hardwareErrors�     r   L X    n   L V    4   S V� 
� 
cobj  m   T U��   I   L S� �� 0 splitstring splitString   	 
 	 o   M N��  0 hardwareerrors hardwareErrors 
  �  m   N O   �    =�  �    o      ��  0 hardwareerrors hardwareErrors      l  Y Y����  �  �        r   Y b    b   Y `    b   Y ^    b   Y \    m   Y Z   �    A :    o   Z [��  0 acceptedshares acceptedShares  m   \ ]   �   
     R :    o   ^ _��  0 rejectedshares rejectedShares  o      �� 0 thisreadout thisReadout      Z   c |   !��   >  c l " # " c   c h $ % $ o   c d��  0 hardwareerrors hardwareErrors % m   d g�
� 
ctxt # m   h k & & � ' '  0 ! r   o x ( ) ( b   o v * + * b   o t , - , o   o p�� 0 thisreadout thisReadout - m   p s . . � / /      H W :   + o   t u��  0 hardwareerrors hardwareErrors ) o      �
�
 0 thisreadout thisReadout�  �     0 1 0 l  } }�	���	  �  �   1  2 3 2 n  } � 4 5 4 I   � �� 6�� 0 	settitle_ 	setTitle_ 6  7� 7 o   � ��� 0 thisreadout thisReadout�  �   5 o   } ��� (0 sharestatusreadout shareStatusReadout 3  8� 8 l  � �� �����   ��  ��  �  �  9 : 9 l     ��������  ��  ��   :  ; < ; i  �� = > = I      �� ?����  0 sortdevicelist sortDeviceList ?  @�� @ o      ���� 0 sortby sortBy��  ��   > k     ! A A  B C B l     ��������  ��  ��   C  D E D Z      F G H�� F =     I J I o     ���� 0 sortby sortBy J m     K K � L L  h a s h r a t e G l   ��������  ��  ��   H  M N M E   
  O P O o   
 ���� 0 sortby sortBy P m     Q Q � R R  , N  S T S l   ��������  ��  ��   T  U V U =    W X W o    ���� 0 sortby sortBy X m     Y Y � Z Z  a c t i v e V  [�� [ l   ��������  ��  ��  ��  ��   E  \�� \ l     ��������  ��  ��  ��   <  ] ^ ] l     ��������  ��  ��   ^  _ ` _ i  �� a b a I      �� c���� &0 togglesubreadout_ toggleSubReadout_ c  d�� d o      ���� 
0 sender  ��  ��   b k     � e e  f g f Z     r h i j�� h F      k l k l     m���� m =     n o n o     ���� 0 
currentsub 
currentSub o m     p p � q q  B a l a n c e��  ��   l l  
  r���� r =  
  s t s o   
 ���� 0 minerapiready minerAPIready t m    ��
�� boovtrue��  ��   i k    3 u u  v w v n     x y x I     �� z���� 0 
sethidden_ 
setHidden_ z  {�� { m    ��
�� boovtrue��  ��   y o    ���� 20 addresstomonitorreadout addressToMonitorReadout w  | } | n  ! + ~  ~ I   & +�� ����� 0 
sethidden_ 
setHidden_ �  ��� � m   & '��
�� boovfals��  ��    o   ! &���� (0 sharestatusreadout shareStatusReadout }  ��� � r   , 3 � � � m   , - � � � � �  S h a r e s � o      ���� 0 
currentsub 
currentSub��   j  � � � F   6 N � � � =  6 = � � � o   6 ;���� 0 
currentsub 
currentSub � m   ; < � � � � �  S h a r e s � l  @ L ����� � >  @ L � � � c   @ J � � � n   @ H � � � 4   E H�� �
�� 
cobj � m   F G����  � o   @ E����  0 myprefsgeneral myPrefsGeneral � m   H I��
�� 
ctxt � m   J K � � � � �  ��  ��   �  �� � k   Q n � �  � � � n  Q [ � � � I   V [� ��� 0 
sethidden_ 
setHidden_ �  �� � m   V W�
� boovfals�  �   � o   Q V�� 20 addresstomonitorreadout addressToMonitorReadout �  � � � n  \ f � � � I   a f� ��� 0 
sethidden_ 
setHidden_ �  �� � m   a b�
� boovtrue�  �   � o   \ a�� (0 sharestatusreadout shareStatusReadout �  �� � r   g n � � � m   g h � � � � �  B a l a n c e � o      �� 0 
currentsub 
currentSub�  �  ��   g  � � � r   s � � � � o   s x�� 0 
currentsub 
currentSub � n       � � � 4   } �� �
� 
cobj � m   ~ ��  � o   x }��  0 myprefsgeneral myPrefsGeneral �  �� � I   � ����� *0 requestsavesettings requestSaveSettings�  �  �   `  � � � l     ����  �  �   �  � � � i  �� � � � I      � ��� D0  toggledevicelisttwistiereceiver_  toggleDeviceListTwistieReceiver_ �  �� � o      �� 
0 sender  �  �   � k      � �  � � � l     ����  �  �   �  � � � l     � � ��   � !  receive click from twistie    � � � � 6   r e c e i v e   c l i c k   f r o m   t w i s t i e �  � � � r      � � � l     ��� � c      � � � n     � � � o    �� 	0 state   � o     �� 
0 sender   � m    �
� 
bool�  �   � n       � � � 4   
 � �
� 
cobj � m    ��  � o    
��  0 myprefsgeneral myPrefsGeneral �  � � � I    ���� 20 toggledevicelisttwistie toggleDeviceListTwistie�  �   �  � � � l   ����  �  �   �  � � � I    ���� *0 requestsavesettings requestSaveSettings�  �   �  �� � l   ����  �  �  �   �  � � � l     ����  �  �   �  � � � i  �� � � � I      ���� 20 toggledevicelisttwistie toggleDeviceListTwistie�  �   � k    N � �  � � � l     ����  �  �   �  � � � l     � � ��   � "  draw the detail list or not    � � � � 8   d r a w   t h e   d e t a i l   l i s t   o r   n o t �  � � � l     ���~�  �  �~   �  � � � r      � � � H      � � l    
 ��}�| � c     
 � � � n      � � � 4    �{ �
�{ 
cobj � m    �z�z  � o     �y�y  0 myprefsgeneral myPrefsGeneral � m    	�x
�x 
bool�}  �|   � o      �w�w 0 iscollapsed isCollapsed �  � � � l   �v�u�t�v  �u  �t   �  � � � r     � � � n    � � � o    �s�s (0 nsanimationcontext NSAnimationContext � m    �r
�r misccura � o      �q�q $0 animationcontext animationContext �  � � � n    � � � I    �p�o�n�p 0 begingrouping beginGrouping�o  �n   � o    �m�m $0 animationcontext animationContext �  � � � n   "! !!  I    "�l!�k�l 0 setduration_ setDuration_! !�j! m    !! ?�      �j  �k  ! n   !!! o    �i�i  0 currentcontext currentContext! o    �h�h $0 animationcontext animationContext � !!! l  # #�g�f�e�g  �f  �e  ! !	!
!	 l  # #�d!!�d  ! 2 , set minerListViewFrame to {{5,0},{380,100}}   ! �!! X   s e t   m i n e r L i s t V i e w F r a m e   t o   { { 5 , 0 } , { 3 8 0 , 1 0 0 } }!
 !!! l  # #�c!!�c  ! 4 . minerListView's setFrame_(minerListViewFrame)   ! �!! \   m i n e r L i s t V i e w ' s   s e t F r a m e _ ( m i n e r L i s t V i e w F r a m e )! !!! l  # #�b�a�`�b  �a  �`  ! !!! r   # A!!! J   # ?!! !!! n   # 0!!! o   . 0�_�_ 0 x  ! n   # .!!! o   , .�^�^ 
0 origin  ! n  # ,! !!!  I   ( ,�]�\�[�] 	0 frame  �\  �[  !! o   # (�Z�Z 0 
mainwindow 
mainWindow! !"�Y!" n   0 =!#!$!# o   ; =�X�X 0 y  !$ n   0 ;!%!&!% o   9 ;�W�W 
0 origin  !& n  0 9!'!(!' I   5 9�V�U�T�V 	0 frame  �U  �T  !( o   0 5�S�S 0 
mainwindow 
mainWindow�Y  ! o      �R�R 0 currentorigin currentOrigin! !)!*!) l  B B�Q�P�O�Q  �P  �O  !* !+!,!+ Z   B6!-!.�N!/!- o   B C�M�M 0 iscollapsed isCollapsed!. k   F �!0!0 !1!2!1 l  F F�L!3!4�L  !3   shrink it back down   !4 �!5!5 (   s h r i n k   i t   b a c k   d o w n!2 !6!7!6 l  F F�K�J�I�K  �J  �I  !7 !8!9!8 r   F Q!:!;!: n  F O!<!=!< I   K O�H�G�F�H 	0 frame  �G  �F  != o   F K�E�E 0 
mainwindow 
mainWindow!; o      �D�D 0 	thisframe 	thisFrame!9 !>!?!> r   R a!@!A!@ n   R [!B!C!B o   Y [�C�C 
0 height  !C n   R Y!D!E!D o   W Y�B�B 0 size  !E o   R W�A�A 80 defaultmainwindowframesize defaultMainWindowFrameSize!A n      !F!G!F o   ^ `�@�@ 
0 height  !G n   [ ^!H!I!H o   \ ^�?�? 0 size  !I o   [ \�>�> 0 	thisframe 	thisFrame!? !J!K!J r   b l!L!M!L n   b f!N!O!N 4   c f�=!P
�= 
cobj!P m   d e�<�< !O o   b c�;�; 0 currentorigin currentOrigin!M n      !Q!R!Q o   i k�:�: 0 x  !R n   f i!S!T!S o   g i�9�9 
0 origin  !T o   f g�8�8 0 	thisframe 	thisFrame!K !U!V!U r   m �!W!X!W l  m !Y�7�6!Y [   m !Z![!Z n   m q!\!]!\ 4   n q�5!^
�5 
cobj!^ m   o p�4�4 !] o   m n�3�3 0 currentorigin currentOrigin![ l  q ~!_�2�1!_ n   q ~!`!a!` o   | ~�0�0 
0 height  !a n   q |!b!c!b o   z |�/�/ 0 size  !c n  q z!d!e!d I   v z�.�-�,�. 	0 frame  �-  �,  !e o   q v�+�+ 0 minerlistview minerListView�2  �1  �7  �6  !X n      !f!g!f o   � ��*�* 0 y  !g n    �!h!i!h o   � ��)�) 
0 origin  !i o    ��(�( 0 	thisframe 	thisFrame!V !j!k!j n  � �!l!m!l I   � ��'!n�&�'  0 setalphavalue_ setAlphaValue_!n !o�%!o m   � ��$�$  �%  �&  !m n  � �!p!q!p I   � ��#�"�!�# 0 animator  �"  �!  !q o   � �� �  0 minerlistview minerListView!k !r�!r n  � �!s!t!s I   � ��!u�� 0 
sethidden_ 
setHidden_!u !v�!v m   � ��
� boovtrue�  �  !t o   � ��� 0 minerlistview minerListView�  �N  !/ k   �6!w!w !x!y!x l  � ��!z!{�  !z &   grow to accommodate all devices   !{ �!|!| @   g r o w   t o   a c c o m m o d a t e   a l l   d e v i c e s!y !}!~!} r   � �!!�! n  � �!�!�!� I   � ����� 	0 frame  �  �  !� o   � ��� 0 
mainwindow 
mainWindow!� o      �� 0 	thisframe 	thisFrame!~ !�!�!� r   � �!�!�!� o   � ��� 80 defaultmainwindowframesize defaultMainWindowFrameSize!� n      !�!�!� o   � ��� 0 size  !� o   � ��� 0 	thisframe 	thisFrame!� !�!�!� r   � �!�!�!� J   � �!�!� !�!�!� l  � �!���!� n   � �!�!�!� o   � ��� 	0 width  !� n   � �!�!�!� o   � ��� 0 size  !� o   � ��� 80 defaultmainwindowframesize defaultMainWindowFrameSize�  �  !� !��!� [   � �!�!�!� l  � �!��
�	!� n   � �!�!�!� o   � ��� 
0 height  !� n   � �!�!�!� o   � ��� 0 size  !� o   � ��� 80 defaultmainwindowframesize defaultMainWindowFrameSize�
  �	  !� l  � �!���!� n   � �!�!�!� o   � ��� 
0 height  !� n   � �!�!�!� o   � ��� 0 size  !� n  � �!�!�!� I   � ��� ��� 	0 frame  �   ��  !� o   � ����� 0 minerlistview minerListView�  �  �  !� n      !�!�!� o   � ����� 0 size  !� o   � ����� 0 	thisframe 	thisFrame!� !�!�!� r   � �!�!�!� n   � �!�!�!� 4   � ���!�
�� 
cobj!� m   � ����� !� o   � ����� 0 currentorigin currentOrigin!� n      !�!�!� o   � ����� 0 x  !� n   � �!�!�!� o   � ����� 
0 origin  !� o   � ����� 0 	thisframe 	thisFrame!� !�!�!� r   �!�!�!� l  � �!�����!� \   � �!�!�!� n   � �!�!�!� 4   � ���!�
�� 
cobj!� m   � ����� !� o   � ����� 0 currentorigin currentOrigin!� l  � �!�����!� n   � �!�!�!� o   � ����� 
0 height  !� n   � �!�!�!� o   � ����� 0 size  !� n  � �!�!�!� I   � ��������� 	0 frame  ��  ��  !� o   � ����� 0 minerlistview minerListView��  ��  ��  ��  !� n      !�!�!� o  ���� 0 y  !� n   �!�!�!� o   ����� 
0 origin  !� o   � ����� 0 	thisframe 	thisFrame!� !�!�!� l ��������  ��  ��  !� !�!�!� r  !�!�!� n !�!�!� I  
�������� 	0 frame  ��  ��  !� o  
���� 0 minerlistview minerListView!� o      ���� (0 minerlistviewframe minerListViewFrame!� !�!�!� l ��������  ��  ��  !� !�!�!� r  !�!�!� m  ���� !� n      !�!�!� o  ���� 0 y  !� n  !�!�!� o  ���� 
0 origin  !� o  ���� (0 minerlistviewframe minerListViewFrame!� !�!�!� l ��������  ��  ��  !� !�!�!� n %!�!�!� I   %��!����� 0 
sethidden_ 
setHidden_!� !���!� m   !��
�� boovfals��  ��  !� o   ���� 0 minerlistview minerListView!� !�!�!� l &&��!�!���  !� 4 . minerListView's setFrame_(minerListViewFrame)   !� �!�!� \   m i n e r L i s t V i e w ' s   s e t F r a m e _ ( m i n e r L i s t V i e w F r a m e )!� !�!�!� n &4!�!�!� I  /4��!�����  0 setalphavalue_ setAlphaValue_!� !���!� m  /0���� ��  ��  !� n &/!�!�!� I  +/�������� 0 animator  ��  ��  !� o  &+���� 0 minerlistview minerListView!� !�!�!� l 55��������  ��  ��  !� !�!�!� l 55��������  ��  ��  !� !��!� l 55�!�!��  !� R L set status locations (statusline, accepted, bitcoin, and horizontal thingy)   !� �!�!� �   s e t   s t a t u s   l o c a t i o n s   ( s t a t u s l i n e ,   a c c e p t e d ,   b i t c o i n ,   a n d   h o r i z o n t a l   t h i n g y )�  !, !�!�!� l 77����  �  �  !� !�!�!� l 77�!�!��  !� N H prefsWindow's animator()'s setFrame_display_(newPrefsWindowFrame, true)   !� �!�!� �   p r e f s W i n d o w ' s   a n i m a t o r ( ) ' s   s e t F r a m e _ d i s p l a y _ ( n e w P r e f s W i n d o w F r a m e ,   t r u e )!� !�!�!� l 77����  �  �  !� !�!�!� l 77����  �  �  !� " ""  l 77�""�  " z t set thisConstrainedViewFrame to mainWindow's constrainFrameRect_toScreen_(minerListViewFrame,mainWindow's screen())   " �"" �   s e t   t h i s C o n s t r a i n e d V i e w F r a m e   t o   m a i n W i n d o w ' s   c o n s t r a i n F r a m e R e c t _ t o S c r e e n _ ( m i n e r L i s t V i e w F r a m e , m a i n W i n d o w ' s   s c r e e n ( ) )" """ l 77����  �  �  " """ l 77�"	"
�  "	 � � set |size| of thisFrame to {width of |size| of mainWindow's visibleRect(),height of |size| of mainWindow's superview()'s visibleRect}   "
 �""   s e t   | s i z e |   o f   t h i s F r a m e   t o   { w i d t h   o f   | s i z e |   o f   m a i n W i n d o w ' s   v i s i b l e R e c t ( ) , h e i g h t   o f   | s i z e |   o f   m a i n W i n d o w ' s   s u p e r v i e w ( ) ' s   v i s i b l e R e c t }" """ l 77����  �  �  " """ n 7F""" I  @F�"�� &0 setframe_display_ setFrame_display_" """ o  @A�� 0 	thisframe 	thisFrame" "�" m  AB�
� boovtrue�  �  " n 7@""" I  <@���� 0 animator  �  �  " o  7<�� 0 
mainwindow 
mainWindow" """ n GL""" I  HL���� 0 endgrouping endGrouping�  �  " o  GH�� $0 animationcontext animationContext" "�" l MM����  �  �  �   � """ l     ����  �  �  " "" " i  ��"!"""! I      �"#�� 0 toggledevice toggleDevice"# "$�"$ o      �� 0 
thisdevice 
thisDevice�  �  "" k     "%"% "&"'"& r     "(")"( c     "*"+"* o     �� 0 
thisdevice 
thisDevice"+ m    �
� 
TEXT") o      �� 0 
thisdevice 
thisDevice"' ",�", n   "-"."- I    �"/�� 0 toggledevice_ toggleDevice_"/ "0�"0 o    �� 0 
thisdevice 
thisDevice�  �  ". o    �� 0 	apphelper 	AppHelper�  "  "1"2"1 l     ����  �  �  "2 "3"4"3 i  ��"5"6"5 I      �"7�� 0 setavar____ setaVar____"7 "8"9"8 o      �� 0 atype aType"9 ":";": o      �� 0 itemnum itemNum"; "<"="< o      �� 0 avalue aValue"= ">�"> o      �� 0 
avaluetype 
aValueType�  �  "6 k     �"?"? "@"A"@ r     "B"C"B c     "D"E"D o     �� 0 atype aType"E m    �
� 
ctxt"C o      �~�~ 0 atype aType"A "F"G"F r    "H"I"H c    	"J"K"J o    �}�} 0 
avaluetype 
aValueType"K m    �|
�| 
ctxt"I o      �{�{ 0 
avaluetype 
aValueType"G "L"M"L l   �z�y�x�z  �y  �x  "M "N"O"N Z    i"P"Q"R�w"P =   "S"T"S o    �v�v 0 
avaluetype 
aValueType"T m    "U"U �"V"V  b o o l e a n"Q r    "W"X"W c    "Y"Z"Y o    �u�u 0 avalue aValue"Z m    �t
�t 
bool"X o      �s�s 0 avalue aValue"R "["\"[ G    %"]"^"] =   "_"`"_ o    �r�r 0 
avaluetype 
aValueType"` m    "a"a �"b"b  t e x t"^ =    #"c"d"c o     !�q�q 0 
avaluetype 
aValueType"d m   ! ""e"e �"f"f  s t r i n g"\ "g"h"g r   ( -"i"j"i c   ( +"k"l"k o   ( )�p�p 0 avalue aValue"l m   ) *�o
�o 
ctxt"j o      �n�n 0 avalue aValue"h "m"n"m =  0 3"o"p"o o   0 1�m�m 0 
avaluetype 
aValueType"p m   1 2"q"q �"r"r  i n t e g e r"n "s"t"s r   6 ;"u"v"u c   6 9"w"x"w o   6 7�l�l 0 avalue aValue"x m   7 8�k
�k 
long"v o      �j�j 0 avalue aValue"t "y"z"y =  > A"{"|"{ o   > ?�i�i 0 
avaluetype 
aValueType"| m   ? @"}"} �"~"~  n u m b e r"z ""�" r   D I"�"�"� c   D G"�"�"� o   D E�h�h 0 avalue aValue"� m   E F�g
�g 
nmbr"� o      �f�f 0 avalue aValue"� "�"�"� =  L O"�"�"� o   L M�e�e 0 
avaluetype 
aValueType"� m   M N"�"� �"�"�  r e a l"� "�"�"� r   R W"�"�"� c   R U"�"�"� o   R S�d�d 0 avalue aValue"� m   S T�c
�c 
doub"� o      �b�b 0 avalue aValue"� "�"�"� =  Z ]"�"�"� o   Z [�a�a 0 
avaluetype 
aValueType"� m   [ \"�"� �"�"�  l i s t"� "��`"� r   ` e"�"�"� c   ` c"�"�"� o   ` a�_�_ 0 avalue aValue"� m   a b�^
�^ 
list"� o      �]�] 0 avalue aValue�`  �w  "O "�"�"� l  j j�\�[�Z�\  �[  �Z  "� "�"�"� Z   j �"�"�"��Y"� G   j u"�"�"� =  j m"�"�"� o   j k�X�X 0 atype aType"� m   k l"�"� �"�"�  g e n e r a l"� =  p s"�"�"� o   p q�W�W 0 atype aType"� m   q r"�"� �"�"�  m y P r e f s G e n e r a l"� k   x �"�"� "�"�"� r   x }"�"�"� c   x {"�"�"� o   x y�V�V 0 itemnum itemNum"� m   y z�U
�U 
long"� o      �T�T 0 itemnum itemNum"� "��S"� r   ~ �"�"�"� o   ~ �R�R 0 avalue aValue"� n      "�"�"� 4   � ��Q"�
�Q 
cobj"� o   � ��P�P 0 itemnum itemNum"� o    ��O�O  0 myprefsgeneral myPrefsGeneral�S  "� "�"�"� G   � �"�"�"� =  � �"�"�"� o   � ��N�N 0 atype aType"� m   � �"�"� �"�"�  d e v i c e s"� =  � �"�"�"� o   � ��M�M 0 atype aType"� m   � �"�"� �"�"�  m y P r e f s D e v i c e s"� "��L"� k   � �"�"� "�"�"� r   � �"�"�"� c   � �"�"�"� o   � ��K�K 0 itemnum itemNum"� m   � ��J
�J 
list"� o      �I�I 0 itemnum itemNum"� "��H"� r   � �"�"�"� o   � ��G�G 0 avalue aValue"� n      "�"�"� 4   � ��F"�
�F 
cobj"� l  � �"��E�D"� n   � �"�"�"� 4   � ��C"�
�C 
cobj"� m   � ��B�B "� o   � ��A�A 0 itemnum itemNum�E  �D  "� l  � �"��@�?"� n   � �"�"�"� 4   � ��>"�
�> 
cobj"� l  � �"��=�<"� n   � �"�"�"� 4   � ��;"�
�; 
cobj"� m   � ��:�: "� o   � ��9�9 0 itemnum itemNum�=  �<  "� o   � ��8�8  0 myprefsdevices myPrefsDevices�@  �?  �H  �L  �Y  "� "��7"� l  � ��6�5�4�6  �5  �4  �7  "4 "�"�"� l     �3�2�1�3  �2  �1  "� "�"�"� i  ��"�"�"� I      �0�/�.�0 0 checkforbug checkForBug�/  �.  "� n    	"�"�"� I    	�-�,�+�- 0 checkforbug checkForBug�,  �+  "� o     �*�* 0 	apphelper 	AppHelper"� "�"�"� l     �)�(�'�)  �(  �'  "� "�"�"� i  ��"�"�"� I      �&�%�$�& 0 checkdevices checkDevices�%  �$  "� k    v"�"� "�"�"� l     �#�"�!�#  �"  �!  "� "�"�"� r     "�"�"� m     � 
�  boovfals"� o      �� 0 devicesdirty devicesDirty"� "�"�"� l   ����  �  �  "� "�"�"� l   �"�"��  "� L F count and loop through every device, updating myPrefsDevices as we go   "� �"�"� �   c o u n t   a n d   l o o p   t h r o u g h   e v e r y   d e v i c e ,   u p d a t i n g   m y P r e f s D e v i c e s   a s   w e   g o"� "�"�"� r    /"�# "� c    )### n    '### 4   $ '�#
� 
cobj# m   % &�� # I    $�#�� 0 splitstring splitString# ### n    #	#
#	 4    �#
� 
cobj# m    �� #
 I    �#�� 0 splitstring splitString# ### n    ### 4    �#
� 
cobj# m    �� # I    �#�� 0 splitstring splitString# ### I    �#�� 0 sendcommand sendCommand# ### m    	## �##  g p u c o u n t# ### m   	 
## �##  # #�# m   
 �
� boovfals�  �  # #�
# m    # #  �#!#!  ,�
  �  # #"�	#" m    #### �#$#$  =�	  �  # #%�#% m     #&#& �#'#'  |�  �  # m   ' (�
� 
long#  o      �� 0 numgpus numGPUs"� #(#)#( r   0 [#*#+#* c   0 U#,#-#, n   0 S#.#/#. 4   P S�#0
� 
cobj#0 m   Q R�� #/ I   0 P�#1�� 0 splitstring splitString#1 #2#3#2 n   1 K#4#5#4 4   H K�#6
� 
cobj#6 m   I J� �  #5 I   1 H��#7���� 0 splitstring splitString#7 #8#9#8 n   2 C#:#;#: 4   @ C��#<
�� 
cobj#< m   A B���� #; I   2 @��#=���� 0 splitstring splitString#= #>#?#> I   3 ;��#@���� 0 sendcommand sendCommand#@ #A#B#A m   4 5#C#C �#D#D  p g a c o u n t#B #E#F#E m   5 6#G#G �#H#H  #F #I��#I m   6 7��
�� boovfals��  ��  #? #J��#J m   ; <#K#K �#L#L  ,��  ��  #9 #M��#M m   C D#N#N �#O#O  =��  ��  #3 #P��#P m   K L#Q#Q �#R#R  |��  �  #- m   S T��
�� 
long#+ o      ���� 0 numpgas numPGAs#) #S#T#S r   \ �#U#V#U c   \ �#W#X#W n   \ �#Y#Z#Y 4   � ���#[
�� 
cobj#[ m   � ����� #Z I   \ ���#\���� 0 splitstring splitString#\ #]#^#] n   ] }#_#`#_ 4   z }��#a
�� 
cobj#a m   { |���� #` I   ] z��#b���� 0 splitstring splitString#b #c#d#c n   ^ s#e#f#e 4   p s��#g
�� 
cobj#g m   q r���� #f I   ^ p��#h���� 0 splitstring splitString#h #i#j#i I   _ i��#k���� 0 sendcommand sendCommand#k #l#m#l m   ` a#n#n �#o#o  a s c c o u n t#m #p#q#p m   a d#r#r �#s#s  #q #t��#t m   d e��
�� boovfals��  ��  #j #u��#u m   i l#v#v �#w#w  ,��  ��  #d #x��#x m   s v#y#y �#z#z  =��  ��  #^ #{��#{ m   } �#|#| �#}#}  |��  ��  #X m   � ���
�� 
long#V o      ���� 0 numasics numASICs#T #~##~ l  � ���������  ��  ��  # #�#�#� r   � �#�#�#� \   � �#�#�#� l  � �#�����#� c   � �#�#�#� n   � �#�#�#� m   � ���
�� 
nmbr#� n  � �#�#�#� 2  � ���
�� 
cobj#� I   � ���#����� 0 splitstring splitString#� #�#�#� I   � ���#����� 0 sendcommand sendCommand#� #�#�#� m   � �#�#� �#�#�  d e v d e t a i l s#� #�#�#� m   � �#�#� �#�#�  #� #���#� m   � ���
�� boovfals��  ��  #� #���#� m   � �#�#� �#�#�  |��  ��  #� m   � ���
�� 
long��  ��  #� m   � ����� #� o      ���� 0 
numdevices 
numDevices#� #�#�#� Z   � �#�#�����#� >  � �#�#�#� o   � ����� 0 
numdevices 
numDevices#� o   � ����� $0 priordevicecount priorDeviceCount#� k   � �#�#� #�#�#� r   � �#�#�#� m   � ���
�� boovtrue#� o      ���� 0 devicesdirty devicesDirty#� #�#�#� r   � �#�#�#� J   � �#�#� #�#�#� o   � ����� 0 numgpus numGPUs#� #�#�#� o   � ����� 0 numpgas numPGAs#� #���#� o   � ����� 0 numasics numASICs��  #� o      ���� 0 priordevices priorDevices#� #��#� r   � �#�#�#� o   � ��� 0 
numdevices 
numDevices#� o      �� $0 priordevicecount priorDeviceCount�  ��  ��  #� #�#�#� l  � �����  �  �  #� #�#�#� l  � ��#�#��  #� = 7 look for any enabled devices without a UI attached yet   #� �#�#� n   l o o k   f o r   a n y   e n a b l e d   d e v i c e s   w i t h o u t   a   U I   a t t a c h e d   y e t#� #�#�#� Y   �4#��#�#��#� Z   �/#�#���#� F   �%#�#�#� =  �#�#�#� l  �	#���#� c   �	#�#�#� n   �#�#�#� 4   �#�
� 
cobj#� m  �� #� l  � #���#� n   � #�#�#� 4   � �#�
� 
cobj#� o   � ��� 0 x  #� o   � ���  0 myprefsdevices myPrefsDevices�  �  #� m  �
� 
bool�  �  #� m  	
�
� boovtrue#� l !#���#� = !#�#�#� I �#��
� .corecnte****       ****#� l #���#� n  #�#�#� 4  �#�
� 
cobj#� m  �� &#� l #���#� n  #�#�#� 4  �#�
� 
cobj#� o  �� 0 x  #� o  ��  0 myprefsdevices myPrefsDevices�  �  �  �  �  #� m   ��  �  �  #� k  (+#�#� #�#�#� l ((�#�#��  #�   drawDeviceList()   #� �#�#� "   d r a w D e v i c e L i s t ( )#� #��#� r  (+#�#�#� m  ()�
� boovtrue#� o      �� 0 devicesdirty devicesDirty�  �  �  � 0 x  #� m   � ��� #� n   � �#�#�#� m   � ��
� 
nmbr#� n  � �#�#�#� 2  � ��
� 
cobj#� o   � ���  0 myprefsdevices myPrefsDevices�  #� #�#�#� l 55����  �  �  #� #�#�#� Z  5a#�#���#� = 58#�#�#� o  56�� 0 devicesdirty devicesDirty#� m  67�
� boovtrue#� k  ;]#�#� #�#�#� I  ;F�#��� 
0 msglog  #� #�#�#� m  <?#�#� �#�#� @ D e v i c e s   a r e   d i r t y ,   r e b u i l d i n g . . .#� #��#� m  ?B#�#� �#�#�  n o t i c e�  �  #� #�#�#� l GG�#�$ �  #� M G match each device to myPrefsDevices for Asteroid's own hotplug support   $  �$$ �   m a t c h   e a c h   d e v i c e   t o   m y P r e f s D e v i c e s   f o r   A s t e r o i d ' s   o w n   h o t p l u g   s u p p o r t#� $$$ r  GU$$$ I  GS�$�� 0 sendcommand sendCommand$ $$$ m  HK$	$	 �$
$
  d e v d e t a i l s$ $$$ m  KN$$ �$$  $ $�$ m  NO�
� boovfals�  �  $ o      �� 0 
devicelist 
deviceList$ $$$ r  Va$$$ I  V_�$�� 0 splitstring splitString$ $$$ o  WX�� 0 
devicelist 
deviceList$ $�$ m  X[$$ �$$  |�  �  $ o      �� 0 
devicelist 
deviceList$ $$$ l bb�~�}�|�~  �}  �|  $ $$$ l bb�{$$�{  $ ` Z loop through each device reported by the miner (inactive, active, unplugged, all of them)   $ �$ $  �   l o o p   t h r o u g h   e a c h   d e v i c e   r e p o r t e d   b y   t h e   m i n e r   ( i n a c t i v e ,   a c t i v e ,   u n p l u g g e d ,   a l l   o f   t h e m )$ $!$"$! Y  bQ$#�z$$$%�y$# k  tL$&$& $'$($' r  t�$)$*$) I  t��x$+�w�x 0 splitstring splitString$+ $,$-$, n  uy$.$/$. 4  vy�v$0
�v 
cobj$0 o  wx�u�u 0 x  $/ o  uv�t�t 0 
devicelist 
deviceList$- $1�s$1 m  y|$2$2 �$3$3  ,�s  �w  $* o      �r�r 0 devicedetails deviceDetails$( $4$5$4 r  ��$6$7$6 c  ��$8$9$8 n  ��$:$;$: 4  ���q$<
�q 
cobj$< m  ���p�p $; I  ���o$=�n�o 0 splitstring splitString$= $>$?$> n  ��$@$A$@ 4  ���m$B
�m 
cobj$B m  ���l�l $A o  ���k�k 0 devicedetails deviceDetails$? $C�j$C m  ��$D$D �$E$E  =�j  �n  $9 m  ���i
�i 
ctxt$7 o      �h�h 0 deviceid deviceID$5 $F$G$F l ���g$H$I�g  $H � � if GPU, then also include the ID since GPUs don't get hot-swapped.  USB-based miners can be unplugged and replugged, so a better ID for them is the device path   $I �$J$J@   i f   G P U ,   t h e n   a l s o   i n c l u d e   t h e   I D   s i n c e   G P U s   d o n ' t   g e t   h o t - s w a p p e d .     U S B - b a s e d   m i n e r s   c a n   b e   u n p l u g g e d   a n d   r e p l u g g e d ,   s o   a   b e t t e r   I D   f o r   t h e m   i s   t h e   d e v i c e   p a t h$G $K$L$K Z  ��$M$N�f$O$M = ��$P$Q$P o  ���e�e 0 deviceid deviceID$Q m  ��$R$R �$S$S  G P U$N r  ��$T$U$T c  ��$V$W$V b  ��$X$Y$X o  ���d�d 0 deviceid deviceID$Y l ��$Z�c�b$Z c  ��$[$\$[ n  ��$]$^$] 4  ���a$_
�a 
cobj$_ m  ���`�` $^ I  ���_$`�^�_ 0 splitstring splitString$` $a$b$a n  ��$c$d$c 4  ���]$e
�] 
cobj$e m  ���\�\ $d o  ���[�[ 0 devicedetails deviceDetails$b $f�Z$f m  ��$g$g �$h$h  =�Z  �^  $\ m  ���Y
�Y 
ctxt�c  �b  $W m  ���X
�X 
ctxt$U o      �W�W 0 deviceid deviceID�f  $O r  ��$i$j$i c  ��$k$l$k b  ��$m$n$m o  ���V�V 0 deviceid deviceID$n l ��$o�U�T$o c  ��$p$q$p n  ��$r$s$r 4  ���S$t
�S 
cobj$t m  ���R�R $s I  ���Q$u�P�Q 0 splitstring splitString$u $v$w$v n  ��$x$y$x 4  ���O$z
�O 
cobj$z m  ���N�N $y o  ���M�M 0 devicedetails deviceDetails$w ${�L${ m  ��$|$| �$}$}  =�L  �P  $q m  ���K
�K 
ctxt�U  �T  $l m  ���J
�J 
ctxt$j o      �I�I 0 deviceid deviceID$L $~$$~ r  ��$�$�$� c  ��$�$�$� b  ��$�$�$� o  ���H�H 0 deviceid deviceID$� l ��$��G�F$� c  ��$�$�$� n  ��$�$�$� 4  ���E$�
�E 
cobj$� m  ���D�D $� I  ���C$��B�C 0 splitstring splitString$� $�$�$� n  ��$�$�$� 4  ���A$�
�A 
cobj$� m  ���@�@ $� o  ���?�? 0 devicedetails deviceDetails$� $��>$� m  ��$�$� �$�$�  =�>  �B  $� m  ���=
�= 
ctxt�G  �F  $� m  ���<
�< 
ctxt$� o      �;�; 0 deviceid deviceID$ $�$�$� r  �$�$�$� c  �$�$�$� b  �$�$�$� o  ���:�: 0 deviceid deviceID$� l �$��9�8$� c  �$�$�$� n  �$�$�$� 4  �7$�
�7 
cobj$� m  	
�6�6 $� I  ��5$��4�5 0 splitstring splitString$� $�$�$� n  �$�$�$� 4  ��3$�
�3 
cobj$� m  � �2�2 $� o  ���1�1 0 devicedetails deviceDetails$� $��0$� m  $�$� �$�$�  =�0  �4  $� m  �/
�/ 
ctxt�9  �8  $� m  �.
�. 
ctxt$� o      �-�- 0 deviceid deviceID$� $�$�$� I  $�,$��+�, 
0 msglog  $� $�$�$� b  $�$�$� m  $�$� �$�$�  F o u n d   d e v i c e :  $� o  �*�* 0 deviceid deviceID$� $��)$� m   $�$� �$�$�  n o t i c e�)  �+  $� $�$�$� r  %:$�$�$� l %8$��(�'$� c  %8$�$�$� n  %4$�$�$� 4  14�&$�
�& 
cobj$� m  23�%�% $� I  %1�$$��#�$ 0 splitstring splitString$� $�$�$� n  &*$�$�$� 4  '*�"$�
�" 
cobj$� m  ()�!�! $� o  &'� �  0 devicedetails deviceDetails$� $��$� m  *-$�$� �$�$�  =�  �#  $� m  47�
� 
ctxt�(  �'  $� o      �� 0 deviceidshort deviceIDshort$� $�$�$� l ;;����  �  �  $� $�$�$� r  ;>$�$�$� m  ;<�
� boovfals$� o      �� 0 foundit  $� $�$�$� Y  ?�$��$�$��$� Z  T�$�$���$� = Ti$�$�$� l Tc$���$� c  Tc$�$�$� n  T_$�$�$� 4  \_�$�
� 
cobj$� m  ]^�� $� n  T\$�$�$� 4  Y\�$�
� 
cobj$� o  Z[�� 0 y  $� o  TY��  0 myprefsdevices myPrefsDevices$� m  _b�
� 
ctxt�  �  $� l ch$���
$� c  ch$�$�$� o  cd�	�	 0 deviceid deviceID$� m  dg�
� 
ctxt�  �
  $� k  l�$�$� $�$�$� l ll�$�$��  $� 6 0 update ID just in case the miner has changed it   $� �$�$� `   u p d a t e   I D   j u s t   i n   c a s e   t h e   m i n e r   h a s   c h a n g e d   i t$� $�$�$� r  l�$�$�$� l l$���$� c  l$�$�$� n  l{$�$�$� 4  x{�$�
� 
cobj$� m  yz�� $� I  lx�$��� 0 splitstring splitString$� $�$�$� n  mq$�$�$� 4  nq� $�
�  
cobj$� m  op���� $� o  mn���� 0 devicedetails deviceDetails$� $���$� m  qt$�$� �$�$�  =��  �  $� m  {~��
�� 
nmbr�  �  $� n      $�% $� 4  ����%
�� 
cobj% m  ������ %  n  �%%% 4  ����%
�� 
cobj% o  ������ 0 y  % o  �����  0 myprefsdevices myPrefsDevices$� %%% l ����%%��  % / ) set it to be shown in the device list UI   % �%	%	 R   s e t   i t   t o   b e   s h o w n   i n   t h e   d e v i c e   l i s t   U I% %
%%
 r  ��%%% c  ��%%% m  ����
�� boovtrue% m  ����
�� 
bool% n      %%% 4  ����%
�� 
cobj% m  ������ % n  ��%%% 4  ����%
�� 
cobj% o  ������ 0 y  % o  ������  0 myprefsdevices myPrefsDevices% %%% r  ��%%% m  ����
�� boovtrue% o      ���� 0 foundit  % %��%  S  ����  �  �  � 0 y  $� m  BC���� $� n  CO%%% m  JN��
�� 
nmbr% n CJ%%% 2 HJ��
�� 
cobj% o  CH����  0 myprefsdevices myPrefsDevices�  $� %% % l ����������  ��  ��  %  %!��%! Z  �L%"%#����%" = ��%$%%%$ o  ������ 0 foundit  %% m  ����
�� boovfals%# l �H%&%'%(%& k  �H%)%) %*%+%* I  ����%,���� 
0 msglog  %, %-%.%- b  ��%/%0%/ m  ��%1%1 �%2%2 2 A d d i n g   l o c a l   r e c o r d   f o r :  %0 o  ������ 0 devicedetails deviceDetails%. %3��%3 m  ��%4%4 �%5%5  n o t i c e��  ��  %+ %6%7%6 r  �%8%9%8 J  �%:%: %;%<%; o  ������ 0 deviceid deviceID%< %=%>%= m  ��%?%? �%@%@  %> %A%B%A m  ����
�� boovtrue%B %C%D%C m  ��%E%E �%F%F  %D %G%H%G m  ��%I%I �%J%J  %H %K%L%K m  ������  %L %M%N%M m  ��%O%O �%P%P  d%N %Q%R%Q m  ������  %R %S%T%S m  ��%U%U �%V%V  d%T %W%X%W m  ��%Y%Y �%Z%Z  %X %[%\%[ m  ��%]%] �%^%^  %\ %_%`%_ m  ����
�� boovtrue%` %a%b%a o  ������ 0 deviceidshort deviceIDshort%b %c%d%c m  ������  %d %e%f%e m  ��%g%g �%h%h  %f %i%j%i m  ������  %j %k%l%k m  ������  %l %m%n%m m  ������  %n %o%p%o m  ������  %p %q%r%q m  ������  %r %s%t%s m  ������  %t %u%v%u m  ������  %v %w%x%w m  ��%y%y �%z%z  %x %{%|%{ m  ��%}%} �%~%~  %| %%�% m  ����
�� boovfals%� %�%�%� m  ��%�%� �%�%�  %� %�%�%� m  ������  %� %�%�%� m  ������  %� %�%�%� m  ������  %� %�%�%� m  ������  %� %�%�%� m  ��%�%�         %� %�%�%� m  ������  %� %�%�%� m  ������  %� %�%�%� m  �%�%�         %� %�%�%� m  %�%�         %� %�%�%� m  %�%� �%�%�  %� %�%�%� m  ��
�� boovfals%� %���%� J  
����  ��  %9 n      %�%�%�  ;  %� o  ����  0 myprefsdevices myPrefsDevices%7 %���%� Z  H%�%�%���%� = /%�%�%� l +%����%� c  +%�%�%� n  '%�%�%� 4  $'�%�
� 
cobj%� m  %&�� %� I  $�%��� 0 splitstring splitString%� %�%�%� n  %�%�%� 4  �%�
� 
cobj%� m  �� %� o  �� 0 devicedetails deviceDetails%� %��%� m   %�%� �%�%�  =�  �  %� m  '*�
� 
ctxt��  �  %� m  +.%�%� �%�%�  o p e n c l%� k  2u%�%� %�%�%� l 22�%�%��  %�   this is a GPU   %� �%�%�    t h i s   i s   a   G P U%� %�%�%� r  2Q%�%�%� l 2E%���%� c  2E%�%�%� n  2A%�%�%� 4  >A�%�
� 
cobj%� m  ?@�� %� I  2>�%��� 0 splitstring splitString%� %�%�%� n  37%�%�%� 4  47�%�
� 
cobj%� m  56�� %� o  34�� 0 devicedetails deviceDetails%� %��%� m  7:%�%� �%�%�  =�  �  %� m  AD�
� 
ctxt�  �  %� n      %�%�%� 4  MP�%�
� 
cobj%� m  NO�� %� n  EM%�%�%� 4 JM�%�
� 
cobj%� m  KL����%� o  EJ��  0 myprefsdevices myPrefsDevices%� %�%�%� r  Rc%�%�%� m  RU%�%� �%�%�  o p e n c l%� n      %�%�%� 4  ]b�%�
� 
cobj%� m  ^a�� %� n  U]%�%�%� 4 Z]�%�
� 
cobj%� m  [\����%� o  UZ��  0 myprefsdevices myPrefsDevices%� %��%� r  du%�%�%� m  dg%�%� �%�%�  g p u%� n      %�%�%� 4  ot�%�
� 
cobj%� m  ps�� %� n  go%�%�%� 4 lo�%�
� 
cobj%� m  mn����%� o  gl��  0 myprefsdevices myPrefsDevices�  %� %�%�%� = x�%�%�%� l x�%���%� c  x�%�%�%� n  x�%�%�%� 4  ���%�
� 
cobj%� m  ���� %� I  x��%��� 0 splitstring splitString%� %�%�%� n  y%�%�%� 4  z�%�
� 
cobj%� m  {~�� %� o  yz�� 0 devicedetails deviceDetails%� & �&  m  �&& �&&  =�  �  %� m  ���
� 
ctxt�  �  %� m  ��&& �&&  I c a r u s%� &&& k  � && &&	& l ���&
&�  &
 8 2 usb based fpga, or an ASICMINER USB Block Erupter   & �&& d   u s b   b a s e d   f p g a ,   o r   a n   A S I C M I N E R   U S B   B l o c k   E r u p t e r&	 &&& r  ��&&& l ��&��& c  ��&&& n  ��&&& 4  ���&
� 
cobj& m  ���� & I  ���&�� 0 splitstring splitString& &&& n  ��&&& 4  ���&
� 
cobj& m  ���� & o  ���� 0 devicedetails deviceDetails& &�& m  ��&& �&&  =�  �  & m  ���
� 
ctxt�  �  & n      & &!&  4  ���&"
� 
cobj&" m  ���� &! n  ��&#&$&# 4 ���&%
� 
cobj&% m  ������&$ o  ���~�~  0 myprefsdevices myPrefsDevices& &&&'&& Z  ��&(&)�}�|&( = ��&*&+&* n  ��&,&-&, 4  ���{&.
�{ 
cobj&. m  ���z�z &- n  ��&/&0&/ 4 ���y&1
�y 
cobj&1 m  ���x�x��&0 o  ���w�w  0 myprefsdevices myPrefsDevices&+ m  ��&2&2 �&3&3  A M U&) k  ��&4&4 &5&6&5 r  ��&7&8&7 m  ��&9&9 �&:&: 6 A S I C M I N E R   U S B   B l o c k   E r u p t e r&8 n      &;&<&; 4  ���v&=
�v 
cobj&= m  ���u�u &< n  ��&>&?&> 4 ���t&@
�t 
cobj&@ m  ���s�s��&? o  ���r�r  0 myprefsdevices myPrefsDevices&6 &A&B&A l ���q�p�o�q  �p  �o  &B &C&D&C l ���n&E&F�n  &E < 6 start the timer loop for checking for our obscure bug   &F �&G&G l   s t a r t   t h e   t i m e r   l o o p   f o r   c h e c k i n g   f o r   o u r   o b s c u r e   b u g&D &H&I&H r  ��&J&K&J n ��&L&M&L I  ���m&N�l�m �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_&N &O&P&O m  ���k�k&P &Q&R&Q  f  ��&R &S&T&S m  ��&U&U �&V&V  c h e c k F o r B u g&T &W&X&W m  ��&Y&Y �&Z&Z  &X &[�j&[ m  ���i
�i boovfals�j  �l  &M n ��&\&]&\ o  ���h�h 0 nstimer NSTimer&] m  ���g
�g misccura&K o      �f�f 0 bugchecktimer bugCheckTimer&I &^�e&^ l ���d�c�b�d  �c  �b  �e  �}  �|  &' &_&`&_ r  �&a&b&a m  � &c&c �&d&d  u s b&b n      &e&f&e 4  �a&g
�a 
cobj&g m  	�`�` &f n   &h&i&h 4 �_&j
�_ 
cobj&j m  �^�^��&i o   �]�]  0 myprefsdevices myPrefsDevices&` &k�\&k r   &l&m&l m  &n&n �&o&o  p g a&m n      &p&q&p 4  �[&r
�[ 
cobj&r m  �Z�Z &q n  &s&t&s 4 �Y&u
�Y 
cobj&u m  �X�X��&t o  �W�W  0 myprefsdevices myPrefsDevices�\  & &v&w&v = #<&x&y&x l #8&z�V�U&z c  #8&{&|&{ n  #4&}&~&} 4  14�T&
�T 
cobj& m  23�S�S &~ I  #1�R&��Q�R 0 splitstring splitString&� &�&�&� n  $*&�&�&� 4  %*�P&�
�P 
cobj&� m  &)�O�O &� o  $%�N�N 0 devicedetails deviceDetails&� &��M&� m  *-&�&� �&�&�  =�M  �Q  &| m  47�L
�L 
ctxt�V  �U  &y m  8;&�&� �&�&�  M o d M i n e r&w &�&�&� k  ?�&�&� &�&�&� r  ?^&�&�&� l ?R&��K�J&� c  ?R&�&�&� n  ?N&�&�&� 4  KN�I&�
�I 
cobj&� m  LM�H�H &� I  ?K�G&��F�G 0 splitstring splitString&� &�&�&� n  @D&�&�&� 4  AD�E&�
�E 
cobj&� m  BC�D�D &� o  @A�C�C 0 devicedetails deviceDetails&� &��B&� m  DG&�&� �&�&�  =�B  �F  &� m  NQ�A
�A 
ctxt�K  �J  &� n      &�&�&� 4  Z]�@&�
�@ 
cobj&� m  [\�?�? &� n  RZ&�&�&� 4 WZ�>&�
�> 
cobj&� m  XY�=�=��&� o  RW�<�<  0 myprefsdevices myPrefsDevices&� &�&�&� Z  _�&�&��;�:&� = _n&�&�&� n  _j&�&�&� 4  gj�9&�
�9 
cobj&� m  hi�8�8 &� n  _g&�&�&� 4 dg�7&�
�7 
cobj&� m  ef�6�6��&� o  _d�5�5  0 myprefsdevices myPrefsDevices&� m  jm&�&� �&�&�  M M Q&� r  q�&�&�&� m  qt&�&� �&�&�  M o d M i n e r&� n      &�&�&� 4  |��4&�
�4 
cobj&� m  }��3�3 &� n  t|&�&�&� 4 y|�2&�
�2 
cobj&� m  z{�1�1��&� o  ty�0�0  0 myprefsdevices myPrefsDevices�;  �:  &� &�&�&� r  ��&�&�&� m  ��&�&� �&�&�  u s b&� n      &�&�&� 4  ���/&�
�/ 
cobj&� m  ���.�. &� n  ��&�&�&� 4 ���-&�
�- 
cobj&� m  ���,�,��&� o  ���+�+  0 myprefsdevices myPrefsDevices&� &��*&� r  ��&�&�&� m  ��&�&� �&�&�  p g a&� n      &�&�&� 4  ���)&�
�) 
cobj&� m  ���(�( &� n  ��&�&�&� 4 ���'&�
�' 
cobj&� m  ���&�&��&� o  ���%�%  0 myprefsdevices myPrefsDevices�*  &� &�&�&� = ��&�&�&� l ��&��$�#&� c  ��&�&�&� n  ��&�&�&� 4  ���"&�
�" 
cobj&� m  ���!�! &� I  ��� &���  0 splitstring splitString&� &�&�&� n  ��&�&�&� 4  ���&�
� 
cobj&� m  ���� &� o  ���� 0 devicedetails deviceDetails&� &��&� m  ��&�&� �&�&�  =�  �  &� m  ���
� 
ctxt�$  �#  &� m  ��&�&� �&�&�  a v a l o n&� &�&�&� k  �4&�&� &�&�&� r  ��&�&�&� l ��&���&� c  ��&�&�&� n  ��&�&�&� 4  ���&�
� 
cobj&� m  ���� &� I  ���&��� 0 splitstring splitString&� &�&�&� n  ��&�&�&� 4  ���&�
� 
cobj&� m  ���� &� o  ���� 0 devicedetails deviceDetails&� &��&� m  ��&�&� �' '   =�  �  &� m  ���
� 
ctxt�  �  &� n      ''' 4  ���'
� 
cobj' m  ���� ' n  ��''' 4 ���'
� 
cobj' m  ������' o  ���
�
  0 myprefsdevices myPrefsDevices&� ''' Z  �'	'
�	�'	 = ��''' n  ��''' 4  ���'
� 
cobj' m  ���� ' n  ��''' 4 ���'
� 
cobj' m  ������' o  ����  0 myprefsdevices myPrefsDevices' m  ��'' �''  A V A'
 r  �''' m  ��'' �''  A v a l o n' n      ''' 4  �'
� 
cobj' m  
�� ' n  �''' 4 � '
�  
cobj' m  ������' o  �����  0 myprefsdevices myPrefsDevices�	  �  ' '' ' r  "'!'"'! m  '#'# �'$'$  u s b'" n      '%'&'% 4  !��''
�� 
cobj'' m   ���� '& n  '(')'( 4 ��'*
�� 
cobj'* m  ������') o  ����  0 myprefsdevices myPrefsDevices'  '+��'+ r  #4','-', m  #&'.'. �'/'/  a s c'- n      '0'1'0 4  .3��'2
�� 
cobj'2 m  /2���� '1 n  &.'3'4'3 4 +.��'5
�� 
cobj'5 m  ,-������'4 o  &+����  0 myprefsdevices myPrefsDevices��  &� '6'7'6 = 7P'8'9'8 l 7L':����': c  7L';'<'; n  7H'='>'= 4  EH��'?
�� 
cobj'? m  FG���� '> I  7E��'@���� 0 splitstring splitString'@ 'A'B'A n  8>'C'D'C 4  9>��'E
�� 
cobj'E m  :=���� 'D o  89���� 0 devicedetails deviceDetails'B 'F��'F m  >A'G'G �'H'H  =��  ��  '< m  HK��
�� 
ctxt��  ��  '9 m  LO'I'I �'J'J  z t e x'7 'K'L'K k  S�'M'M 'N'O'N r  Sr'P'Q'P l Sf'R����'R c  Sf'S'T'S n  Sb'U'V'U 4  _b��'W
�� 
cobj'W m  `a���� 'V I  S_��'X���� 0 splitstring splitString'X 'Y'Z'Y n  TX'['\'[ 4  UX��']
�� 
cobj'] m  VW���� '\ o  TU���� 0 devicedetails deviceDetails'Z '^��'^ m  X['_'_ �'`'`  =��  ��  'T m  be��
�� 
ctxt��  ��  'Q n      'a'b'a 4  nq��'c
�� 
cobj'c m  op���� 'b n  fn'd'e'd 4 kn��'f
�� 
cobj'f m  lm������'e o  fk����  0 myprefsdevices myPrefsDevices'O 'g'h'g Z  s�'i'j����'i = s�'k'l'k n  s~'m'n'm 4  {~��'o
�� 
cobj'o m  |}���� 'n n  s{'p'q'p 4 x{��'r
�� 
cobj'r m  yz������'q o  sx����  0 myprefsdevices myPrefsDevices'l m  ~�'s's �'t't  Z T X'j r  ��'u'v'u m  ��'w'w �'x'x  Z T E X'v n      'y'z'y 4  ����'{
�� 
cobj'{ m  ������ 'z n  ��'|'}'| 4 ����'~
�� 
cobj'~ m  ��������'} o  ������  0 myprefsdevices myPrefsDevices��  ��  'h ''�' r  ��'�'�'� m  ��'�'� �'�'�  u s b'� n      '�'�'� 4  ����'�
�� 
cobj'� m  ������ '� n  ��'�'�'� 4 ����'�
�� 
cobj'� m  ��������'� o  ������  0 myprefsdevices myPrefsDevices'� '���'� r  ��'�'�'� m  ��'�'� �'�'�  p g a'� n      '�'�'� 4  ����'�
�� 
cobj'� m  ������ '� n  ��'�'�'� 4 ����'�
�� 
cobj'� m  ��������'� o  ������  0 myprefsdevices myPrefsDevices��  'L '�'�'� = ��'�'�'� l ��'����'� c  ��'�'�'� n  ��'�'�'� 4  ���'�
� 
cobj'� m  ���� '� I  ���'��� 0 splitstring splitString'� '�'�'� n  ��'�'�'� 4  ���'�
� 
cobj'� m  ���� '� o  ���� 0 devicedetails deviceDetails'� '��'� m  ��'�'� �'�'�  =�  �  '� m  ���
� 
ctxt��  �  '� m  ��'�'� �'�'�  B i t F o r c e'� '�'�'� k  �H'�'� '�'�'� r  ��'�'�'� l ��'���'� c  ��'�'�'� n  ��'�'�'� 4  ���'�
� 
cobj'� m  ���� '� I  ���'��� 0 splitstring splitString'� '�'�'� n  ��'�'�'� 4  ���'�
� 
cobj'� m  ���� '� o  ���� 0 devicedetails deviceDetails'� '��'� m  ��'�'� �'�'�  =�  �  '� m  ���
� 
ctxt�  �  '� n      '�'�'� 4  ���'�
� 
cobj'� m  ���� '� n  ��'�'�'� 4 ���'�
� 
cobj'� m  ������'� o  ����  0 myprefsdevices myPrefsDevices'� '�'�'� Z  �$'�'���'� = �'�'�'� n  �'�'�'� 4  �'�
� 
cobj'� m  �� '� n  �'�'�'� 4 �'�
� 
cobj'� m  ����'� o  ���  0 myprefsdevices myPrefsDevices'� m  '�'� �'�'�  B F L'� r   '�'�'� m  '�'� �'�'�  B F L   B i t F o r c e'� n      '�'�'� 4  �'�
� 
cobj'� m  �� '� n  '�'�'� 4 �'�
� 
cobj'� m  ����'� o  ��  0 myprefsdevices myPrefsDevices�  �  '� '�'�'� r  %6'�'�'� m  %('�'� �'�'�  u s b'� n      '�'�'� 4  05�'�
� 
cobj'� m  14�� '� n  (0'�'�'� 4 -0�'�
� 
cobj'� m  ./����'� o  (-��  0 myprefsdevices myPrefsDevices'� '��'� r  7H'�'�'� m  7:'�'� �'�'�  p g a'� n      '�'�'� 4  BG�'�
� 
cobj'� m  CF�� '� n  :B'�'�'� 4 ?B�'�
� 
cobj'� m  @A����'� o  :?��  0 myprefsdevices myPrefsDevices�  '� '�'�'� = Kd'�'�'� l K`'���'� c  K`'�'�'� n  K\'�'�'� 4  Y\�'�
� 
cobj'� m  Z[�� '� I  KY�( �� 0 splitstring splitString(  ((( n  LR((( 4  MR�(
� 
cobj( m  NQ�� ( o  LM�� 0 devicedetails deviceDetails( (�( m  RU(( �((  =�  �  '� m  \_�
� 
ctxt�  �  '� m  `c(	(	 �(
(
  B i t F o r c e S C'� (�( k  gD(( ((( r  g�((( l gz(��( c  gz((( n  gv((( 4  sv�(
� 
cobj( m  tu�� ( I  gs�~(�}�~ 0 splitstring splitString( ((( n  hl((( 4  il�|(
�| 
cobj( m  jk�{�{ ( o  hi�z�z 0 devicedetails deviceDetails( (�y( m  lo(( �((  =�y  �}  ( m  vy�x
�x 
ctxt�  �  ( n      ( (!(  4  ���w("
�w 
cobj(" m  ���v�v (! n  z�(#($(# 4 ��u(%
�u 
cobj(% m  ���t�t��($ o  z�s�s  0 myprefsdevices myPrefsDevices( (&('(& Z  � ((()(*�r(( = ��(+(,(+ n  ��(-(.(- 4  ���q(/
�q 
cobj(/ m  ���p�p (. n  ��(0(1(0 4 ���o(2
�o 
cobj(2 m  ���n�n��(1 o  ���m�m  0 myprefsdevices myPrefsDevices(, m  ��(3(3 �(4(4  B A M() r  ��(5(6(5 m  ��(7(7 �(8(8 ( B i t F o r c e   M i n i   R i g   S C(6 n      (9(:(9 4  ���l(;
�l 
cobj(; m  ���k�k (: n  ��(<(=(< 4 ���j(>
�j 
cobj(> m  ���i�i��(= o  ���h�h  0 myprefsdevices myPrefsDevices(* (?(@(? = ��(A(B(A n  ��(C(D(C 4  ���g(E
�g 
cobj(E m  ���f�f (D n  ��(F(G(F 4 ���e(H
�e 
cobj(H m  ���d�d��(G o  ���c�c  0 myprefsdevices myPrefsDevices(B m  ��(I(I �(J(J  B A J(@ (K(L(K r  ��(M(N(M m  ��(O(O �(P(P , B i t F o r c e   S C   ( J a l a p e � o )(N n      (Q(R(Q 4  ���b(S
�b 
cobj(S m  ���a�a (R n  ��(T(U(T 4 ���`(V
�` 
cobj(V m  ���_�_��(U o  ���^�^  0 myprefsdevices myPrefsDevices(L (W(X(W = ��(Y(Z(Y n  ��([(\([ 4  ���](]
�] 
cobj(] m  ���\�\ (\ n  ��(^(_(^ 4 ���[(`
�[ 
cobj(` m  ���Z�Z��(_ o  ���Y�Y  0 myprefsdevices myPrefsDevices(Z m  ��(a(a �(b(b  B A S(X (c(d(c r  ��(e(f(e m  ��(g(g �(h(h $ B i t F o r c e   S i n g l e   S C(f n      (i(j(i 4  ���X(k
�X 
cobj(k m  ���W�W (j n  ��(l(m(l 4 ���V(n
�V 
cobj(n m  ���U�U��(m o  ���T�T  0 myprefsdevices myPrefsDevices(d (o(p(o = �(q(r(q n  �(s(t(s 4  �S(u
�S 
cobj(u m  �R�R (t n  �(v(w(v 4 ��Q(x
�Q 
cobj(x m  � �P�P��(w o  ���O�O  0 myprefsdevices myPrefsDevices(r m  (y(y �(z(z  B A L(p ({�N({ r  (|(}(| m  (~(~ �(( 2 B i t F o r c e   L i t t l e   S i n g l e   S C(} n      (�(�(� 4  �M(�
�M 
cobj(� m  �L�L (� n  (�(�(� 4 �K(�
�K 
cobj(� m  �J�J��(� o  �I�I  0 myprefsdevices myPrefsDevices�N  �r  (' (�(�(� r  !2(�(�(� m  !$(�(� �(�(�  u s b(� n      (�(�(� 4  ,1�H(�
�H 
cobj(� m  -0�G�G (� n  $,(�(�(� 4 ),�F(�
�F 
cobj(� m  *+�E�E��(� o  $)�D�D  0 myprefsdevices myPrefsDevices(� (��C(� r  3D(�(�(� m  36(�(� �(�(�  a s c(� n      (�(�(� 4  >C�B(�
�B 
cobj(� m  ?B�A�A (� n  6>(�(�(� 4 ;>�@(�
�@ 
cobj(� m  <=�?�?��(� o  6;�>�>  0 myprefsdevices myPrefsDevices�C  �  ��  ��  %' H B not in myPrefsDevices, therefore we add it now (just hotplugged?)   %( �(�(� �   n o t   i n   m y P r e f s D e v i c e s ,   t h e r e f o r e   w e   a d d   i t   n o w   ( j u s t   h o t p l u g g e d ? )��  ��  ��  �z 0 x  $$ m  ef�=�= $% l fo(��<�;(� \  fo(�(�(� l fm(��:�9(� n  fm(�(�(� m  im�8
�8 
nmbr(� n fi(�(�(� 2 gi�7
�7 
cobj(� o  fg�6�6 0 
devicelist 
deviceList�:  �9  (� m  mn�5�5 �<  �;  �y  $" (�(�(� I  RW�4�3�2�4 0 savesettings saveSettings�3  �2  (� (��1(� I  X]�0�/�.�0  0 drawdevicelist drawDeviceList�/  �.  �1  �  �  #� (�(�(� l bb�-�,�+�-  �,  �+  (� (�(�(� L  bt(�(� J  bs(�(� (�(�(� o  bg�*�* 0 numgpus numGPUs(� (�(�(� o  gl�)�) 0 numpgas numPGAs(� (��((� o  lq�'�' 0 numasics numASICs�(  (� (��&(� l uu�%�$�#�%  �$  �#  �&  "� (�(�(� l     �"�!� �"  �!  �   (� (�(�(� i  ��(�(�(� I      ���� &0 updateminerstatus updateMinerStatus�  �  (� k    (�(� (�(�(� l     ����  �  �  (� (�(�(� r     
(�(�(� I     �(��� 0 sendcommand sendCommand(� (�(�(� m    (�(� �(�(�  s u m m a r y(� (�(�(� m    (�(� �(�(�  (� (��(� m    �
� boovfals�  �  (� o      �� *0 summaryresponsedevs summaryResponseDevs(� (�(�(� l   ����  �  �  (� (�(�(� l   �(�(��  (�   check the success code   (� �(�(� .   c h e c k   t h e   s u c c e s s   c o d e(� (�(�(� Z    1(�(���(� =   (�(�(� o    �� *0 summaryresponsedevs summaryResponseDevs(� m    (�(� �(�(�  0(� Z    -(�(���(� =   (�(�(� l   (���
(� c    (�(�(� n   (�(�(� I    �	���	 0 didminerdie didMinerDie�  �  (� o    �� 0 	apphelper 	AppHelper(� m    �
� 
bool�  �
  (� m    �
� boovtrue(� k   ! )(�(� (�(�(� I   ! &���� 40 minerunexpectedlystopped minerUnexpectedlyStopped�  �  (� (�� (� L   ' )����  �   �  �  �  �  (� (�(�(� l  2 2��������  ��  ��  (� (�(�(� r   2 9(�(�(� I   2 7�������� 0 checkdevices checkDevices��  ��  (� o      ���� 0 
numdevices 
numDevices(� (�(�(� l  : :��������  ��  ��  (� (�(�(� r   : D(�(�(� n   : >(�(�(� 4   ; >��(�
�� 
cobj(� m   < =���� (� o   : ;���� 0 
numdevices 
numDevices(� o      ���� 0 numgpus numGPUs(� (�(�(� r   E O(�(�(� n   E I(�(�(� 4   F I��(�
�� 
cobj(� m   G H���� (� o   E F���� 0 
numdevices 
numDevices(� o      ���� 0 numpgas numPGAs(� (�(�(� r   P Z) ))  n   P T))) 4   Q T��)
�� 
cobj) m   R S���� ) o   P Q���� 0 
numdevices 
numDevices) o      ���� 0 numasics numASICs(� ))) l  [ [��������  ��  ��  ) ))) l  [ [��)	)
��  )	 8 2 set nodevice to true on all devices to start with   )
 �)) d   s e t   n o d e v i c e   t o   t r u e   o n   a l l   d e v i c e s   t o   s t a r t   w i t h) ))) Y   [ �)��))��) r   n }))) c   n q))) m   n o��
�� boovtrue) m   o p��
�� 
bool) n      ))) 4   y |��)
�� 
cobj) m   z {���� %) l  q y)����) n   q y))) 4   v y��)
�� 
cobj) o   w x���� 0 x  ) o   q v����  0 myprefsdevices myPrefsDevices��  ��  �� 0 x  ) m   ^ _���� ) n   _ i))) m   f h��
�� 
nmbr) n  _ f))) 2  d f��
�� 
cobj) o   _ d����  0 myprefsdevices myPrefsDevices��  ) ) )!)  l  � ���������  ��  ��  )! )")#)" l  � ���)$)%��  )$ $  request hash rate on each GPU   )% �)&)& <   r e q u e s t   h a s h   r a t e   o n   e a c h   G P U)# )')()' Z   ��)))*����)) ?  � �)+),)+ o   � ����� 0 numgpus numGPUs), m   � �����  )* Y   ��)-��).)/��)- k   ��)0)0 )1)2)1 l  � ���������  ��  ��  )2 )3)4)3 r   � �)5)6)5 I   � ���)7���� 0 splitstring splitString)7 )8)9)8 I   � ���):���� 0 sendcommand sendCommand): );)<); m   � �)=)= �)>)>  g p u)< )?)@)? o   � ����� 0 x  )@ )A��)A m   � ���
�� boovfals��  ��  )9 )B��)B m   � �)C)C �)D)D  ,��  ��  )6 o      ���� 0 	gpurecord 	gpuRecord)4 )E)F)E l  � �����  �  �  )F )G)H)G l  � ��)I)J�  )I 7 1 find this record in myPrefsDevices and update it   )J �)K)K b   f i n d   t h i s   r e c o r d   i n   m y P r e f s D e v i c e s   a n d   u p d a t e   i t)H )L�)L Y   ��)M�)N)O�)M Z   ��)P)Q��)P F   � �)R)S)R l  � �)T��)T =  � �)U)V)U l  � �)W��)W c   � �)X)Y)X n   � �)Z)[)Z 4   � ��)\
� 
cobj)\ m   � ��� )[ n   � �)])^)] 4   � ��)_
� 
cobj)_ o   � ��� 0 y  )^ o   � ���  0 myprefsdevices myPrefsDevices)Y m   � ��
� 
ctxt�  �  )V m   � �)`)` �)a)a  o p e n c l�  �  )S l  � �)b��)b =  � �)c)d)c c   � �)e)f)e l  � �)g��)g n   � �)h)i)h 4   � ��)j
� 
cobj)j m   � ��� )i n   � �)k)l)k 4   � ��)m
� 
cobj)m o   � ��� 0 y  )l o   � ���  0 myprefsdevices myPrefsDevices�  �  )f m   � ��
� 
long)d l  � �)n��)n c   � �)o)p)o o   � ��� 0 x  )p m   � ��
� 
long�  �  �  �  )Q k   ��)q)q )r)s)r l  � ��)t)u�  )t ' ! if it's a GPU and the ID matches   )u �)v)v B   i f   i t ' s   a   G P U   a n d   t h e   I D   m a t c h e s)s )w)x)w l  � �����  �  �  )x )y)z)y l  � ��){)|�  ){ ; 5 check the record hashrates and update if appropriate   )| �)})} j   c h e c k   t h e   r e c o r d   h a s h r a t e s   a n d   u p d a t e   i f   a p p r o p r i a t e)z )~))~ Z   ��)�)�)��)� =  � �)�)�)� o   � ��� 0 currentcoin currentCoin)� m   � �)�)� �)�)�  B i t c o i n)� k   �F)�)� )�)�)� r   �)�)�)� c   �)�)�)� l  �)���)� n   �)�)�)� 4  �)�
� 
cobj)� m  �� )� I   ��)��� 0 splitstring splitString)� )�)�)� n   �)�)�)� 4   ��)�
� 
cobj)� m   �� )� o   � ��� 0 	gpurecord 	gpuRecord)� )��)� m  )�)� �)�)�  =�  �  �  �  )� m  �
� 
doub)� o      �� 0 thishashrate thisHashrate)� )��)� Z  F)�)���)� A ,)�)�)� l &)���)� c  &)�)�)� n  ")�)�)� 4  "�)�
� 
cobj)� m  !�� )� n  )�)�)� 4  �)�
� 
cobj)� o  �� 0 y  )� o  ��  0 myprefsdevices myPrefsDevices)� m  "%�
� 
doub�  �  )� l &+)���)� c  &+)�)�)� o  &'�~�~ 0 thishashrate thisHashrate)� m  '*�}
�} 
doub�  �  )� k  /B)�)� )�)�)� l //�|)�)��|  )� > 8 if existing hashrate on record is less than the current   )� �)�)� p   i f   e x i s t i n g   h a s h r a t e   o n   r e c o r d   i s   l e s s   t h a n   t h e   c u r r e n t)� )��{)� l /B)�)�)�)� r  /B)�)�)� l /4)��z�y)� c  /4)�)�)� o  /0�x�x 0 thishashrate thisHashrate)� m  03�w
�w 
doub�z  �y  )� n      )�)�)� 4  <A�v)�
�v 
cobj)� m  =@�u�u )� n  4<)�)�)� 4  9<�t)�
�t 
cobj)� o  :;�s�s 0 y  )� o  49�r�r  0 myprefsdevices myPrefsDevices)�   update record hashrate   )� �)�)� .   u p d a t e   r e c o r d   h a s h r a t e�{  �  �  �  )� )�)�)� = IR)�)�)� o  IN�q�q 0 currentcoin currentCoin)� m  NQ)�)� �)�)�  L i t e c o i n)� )��p)� k  U�)�)� )�)�)� l UU�o�n�m�o  �n  �m  )� )�)�)� l UU�l)�)��l  )� � � current API implementation for cgminer doesn't show enough decimal places, therefore lets get the hashrate from the logfile output   )� �)�)�   c u r r e n t   A P I   i m p l e m e n t a t i o n   f o r   c g m i n e r   d o e s n ' t   s h o w   e n o u g h   d e c i m a l   p l a c e s ,   t h e r e f o r e   l e t s   g e t   t h e   h a s h r a t e   f r o m   t h e   l o g f i l e   o u t p u t)� )�)�)� l UU�k�j�i�k  �j  �i  )� )�)�)� r  Uj)�)�)� b  Uh)�)�)� b  Ud)�)�)� b  U^)�)�)� m  UX)�)� �)�)�  t a i l   - n   2 0   ")� o  X]�h�h  0 tempfolderpath tempFolderPath)� o  ^c�g�g 0 minerlogfile minerLogFile)� m  dg)�)� �)�)� > "   |   g r e p   " ( a v g ) "   |   g r e p   - v   g r e p)� o      �f�f 0 logtailscript logTailScript)� )�)�)� l kk�e�d�c�e  �d  �c  )� )�)�)� r  kr)�)�)� I kp�b)��a
�b .sysoexecTEXT���     TEXT)� o  kl�`�` 0 logtailscript logTailScript�a  )� o      �_�_ 0 logtail logTail)� )�)�)� l ss�^�]�\�^  �]  �\  )� )�)�)� l ss�[)�)��[  )� F @ (5s):5.267K (avg):6.061Kh/s | A:0  R:0  HW:0  U:0.0/m  WU:7.7/m   )� �)�)� �   ( 5 s ) : 5 . 2 6 7 K   ( a v g ) : 6 . 0 6 1 K h / s   |   A : 0     R : 0     H W : 0     U : 0 . 0 / m     W U : 7 . 7 / m)� )�)�)� Q  s�)�)�)�)� k  v�)�)� )�)�)� r  v�)�)�)� n  v�)�)�)� 4  ���Z)�
�Z 
cobj)� m  ���Y�Y )� I  v��X)��W�X 0 splitstring splitString)� )�)�)� n  w})�* )� 4 x}�V*
�V 
cpar* m  {|�U�U��*  o  wx�T�T 0 logtail logTail)� *�S* m  }�** �**  :�S  �W  )� o      �R�R 0 thishashrate thisHashrate)� *** r  ��*** n  ��*	*
*	 4  ���Q*
�Q 
cobj* m  ���P�P *
 I  ���O*�N�O 0 splitstring splitString* *** o  ���M�M 0 thishashrate thisHashrate* *�L* m  ��** �**  K�L  �N  * o      �K�K 0 thishashrate thisHashrate* *** r  ��*** c  ��*** o  ���J�J 0 thishashrate thisHashrate* m  ���I
�I 
doub* o      �H�H 0 thishashrate thisHashrate* *�G* r  ��*** ^  ��*** o  ���F�F 0 thishashrate thisHashrate* m  ���E�E�* o      �D�D 0 thishashrate thisHashrate�G  )� R      �C�B�A
�C .ascrerr ****      � ****�B  �A  )� r  ��*** m  ���@�@  * o      �?�? 0 thishashrate thisHashrate)� ** * l ���>�=�<�>  �=  �<  *  *!�;*! Z  ��*"*#�:�9*" A ��*$*%*$ l ��*&�8�7*& c  ��*'*(*' n  ��*)***) 4  ���6*+
�6 
cobj*+ m  ���5�5 ** n  ��*,*-*, 4  ���4*.
�4 
cobj*. o  ���3�3 0 y  *- o  ���2�2  0 myprefsdevices myPrefsDevices*( m  ���1
�1 
doub�8  �7  *% l ��*/�0�/*/ o  ���.�. 0 thishashrate thisHashrate�0  �/  *# k  ��*0*0 *1*2*1 l ���-*3*4�-  *3 > 8 if existing hashrate on record is less than the current   *4 �*5*5 p   i f   e x i s t i n g   h a s h r a t e   o n   r e c o r d   i s   l e s s   t h a n   t h e   c u r r e n t*2 *6�,*6 l ��*7*8*9*7 r  ��*:*;*: l ��*<�+�**< o  ���)�) 0 thishashrate thisHashrate�+  �*  *; n      *=*>*= 4  ���(*?
�( 
cobj*? m  ���'�' *> n  ��*@*A*@ 4  ���&*B
�& 
cobj*B o  ���%�% 0 y  *A o  ���$�$  0 myprefsdevices myPrefsDevices*8   update record hashrate   *9 �*C*C .   u p d a t e   r e c o r d   h a s h r a t e�,  �:  �9  �;  �p  �  ) *D*E*D l ���#�"�!�#  �"  �!  *E *F*G*F l ��� *H*I�   *H "  update the current hashrate   *I �*J*J 8   u p d a t e   t h e   c u r r e n t   h a s h r a t e*G *K*L*K r  ��*M*N*M l ��*O��*O c  ��*P*Q*P o  ���� 0 thishashrate thisHashrate*Q m  ���
� 
doub�  �  *N n      *R*S*R 4  ���*T
� 
cobj*T m  ���� *S n  ��*U*V*U 4  ���*W
� 
cobj*W o  ���� 0 y  *V o  ����  0 myprefsdevices myPrefsDevices*L *X*Y*X l ������  �  �  *Y *Z*[*Z l ���*\*]�  *\ #  udpate the shares and errors   *] �*^*^ :   u d p a t e   t h e   s h a r e s   a n d   e r r o r s*[ *_*`*_ l �*a*b*c*a r  �*d*e*d l �*f��*f c  �*g*h*g n  �*i*j*i 4  �*k
� 
cobj*k m  �� *j I  ��*l�� 0 splitstring splitString*l *m*n*m n  ��*o*p*o 4  ���*q
� 
cobj*q m  ���� *p o  ���
�
 0 	gpurecord 	gpuRecord*n *r�	*r m  � *s*s �*t*t  =�	  �  *h m  
�
� 
long�  �  *e n      *u*v*u 4  �*w
� 
cobj*w m  �� *v n  *x*y*x 4  �*z
� 
cobj*z o  �� 0 y  *y o  ��  0 myprefsdevices myPrefsDevices*b   accepted shares   *c �*{*{     a c c e p t e d   s h a r e s*` *|*}*| l =*~**�*~ r  =*�*�*� l /*���*� c  /*�*�*� n  +*�*�*� 4  (+� *�
�  
cobj*� m  )*���� *� I  (��*����� 0 splitstring splitString*� *�*�*� n  !*�*�*� 4  !��*�
�� 
cobj*� m   ���� *� o  ���� 0 	gpurecord 	gpuRecord*� *���*� m  !$*�*� �*�*�  =��  ��  *� m  +.��
�� 
long�  �  *� n      *�*�*� 4  7<��*�
�� 
cobj*� m  8;���� *� n  /7*�*�*� 4  47��*�
�� 
cobj*� o  56���� 0 y  *� o  /4����  0 myprefsdevices myPrefsDevices*   rejected shares   *� �*�*�     r e j e c t e d   s h a r e s*} *�*�*� l >a*�*�*�*� r  >a*�*�*� l >S*�����*� c  >S*�*�*� n  >O*�*�*� 4  LO��*�
�� 
cobj*� m  MN���� *� I  >L��*����� 0 splitstring splitString*� *�*�*� n  ?E*�*�*� 4  @E��*�
�� 
cobj*� m  AD���� *� o  ?@���� 0 	gpurecord 	gpuRecord*� *���*� m  EH*�*� �*�*�  =��  ��  *� m  OR��
�� 
long��  ��  *� n      *�*�*� 4  [`��*�
�� 
cobj*� m  \_���� *� n  S[*�*�*� 4  X[��*�
�� 
cobj*� o  YZ���� 0 y  *� o  SX����  0 myprefsdevices myPrefsDevices*�   hardware errors   *� �*�*�     h a r d w a r e   e r r o r s*� *�*�*� l bb��������  ��  ��  *� *�*�*� l bb��*�*���  *� 7 1 update temperature (just in case it's supported)   *� �*�*� b   u p d a t e   t e m p e r a t u r e   ( j u s t   i n   c a s e   i t ' s   s u p p o r t e d )*� *�*�*� r  b�*�*�*� l bw*�����*� c  bw*�*�*� n  bs*�*�*� 4  ps��*�
�� 
cobj*� m  qr���� *� I  bp��*����� 0 splitstring splitString*� *�*�*� n  ci*�*�*� 4  di��*�
�� 
cobj*� m  eh���� *� o  cd���� 0 	gpurecord 	gpuRecord*� *���*� m  il*�*� �*�*�  =��  ��  *� m  sv��
�� 
doub��  ��  *� n      *�*�*� 4  ���*�
�� 
cobj*� m  ������ *� n  w*�*�*� 4  |��*�
�� 
cobj*� o  }~���� 0 y  *� o  w|����  0 myprefsdevices myPrefsDevices*� *�*�*� l ����*�*���  *�  
 Fan speed   *� �*�*�    F a n   s p e e d*� *�*�*� r  ��*�*�*� l ��*�����*� c  ��*�*�*� n  ��*�*�*� 4  ����*�
�� 
cobj*� m  ������ *� I  ����*����� 0 splitstring splitString*� *�*�*� n  ��*�*�*� 4  ����*�
�� 
cobj*� m  ������ 	*� o  ������ 0 	gpurecord 	gpuRecord*� *���*� m  ��*�*� �*�*�  =��  ��  *� m  ����
�� 
long��  ��  *� n      *�*�*� 4  ����*�
�� 
cobj*� m  ������ *� n  ��*�*�*� 4  ����*�
�� 
cobj*� o  ���� 0 y  *� o  ����  0 myprefsdevices myPrefsDevices*� *�*�*� l ���*�*��  *�   Fan percent   *� �*�*�    F a n   p e r c e n t*� *�*�*� r  ��*�*�*� l ��*���*� c  ��*�*�*� n  ��+ ++  4  ���+
� 
cobj+ m  ���� + I  ���+�� 0 splitstring splitString+ +++ n  ��+++ 4  ���+
� 
cobj+ m  ���� 
+ o  ���� 0 	gpurecord 	gpuRecord+ +	�+	 m  ��+
+
 �++  =�  �  *� m  ���
� 
long�  �  *� n      +++ 4  ���+
� 
cobj+ m  ���� + n  ��+++ 4  ���+
� 
cobj+ o  ���� 0 y  + o  ����  0 myprefsdevices myPrefsDevices*� +++ l ���++�  +  
 GPU clock   + �++    G P U   c l o c k+ +++ r  ��+++ l ��+��+ c  ��+++ n  ��+++ 4  ���+ 
� 
cobj+  m  ���� + I  ���+!�� 0 splitstring splitString+! +"+#+" n  ��+$+%+$ 4  ���+&
� 
cobj+& m  ���� +% o  ���� 0 	gpurecord 	gpuRecord+# +'�+' m  ��+(+( �+)+)  =�  �  + m  ���
� 
long�  �  + n      +*+++* 4  ���+,
� 
cobj+, m  ���� ++ n  ��+-+.+- 4  ���+/
� 
cobj+/ o  ���� 0 y  +. o  ����  0 myprefsdevices myPrefsDevices+ +0+1+0 l ���+2+3�  +2   Memory clock   +3 �+4+4    M e m o r y   c l o c k+1 +5+6+5 r  �+7+8+7 l �+9��+9 c  �+:+;+: n  �+<+=+< 4   �+>
� 
cobj+> m  �� += I  � �+?�� 0 splitstring splitString+? +@+A+@ n  ��+B+C+B 4  ���+D
� 
cobj+D m  ���� +C o  ���� 0 	gpurecord 	gpuRecord+A +E�+E m  ��+F+F �+G+G  =�  �  +; m  �
� 
long�  �  +8 n      +H+I+H 4  �+J
� 
cobj+J m  �� +I n  +K+L+K 4  �+M
� 
cobj+M o  �� 0 y  +L o  ��  0 myprefsdevices myPrefsDevices+6 +N+O+N l �+P+Q�  +P   GPU voltage   +Q �+R+R    G P U   v o l t a g e+O +S+T+S r  9+U+V+U l ++W��+W c  ++X+Y+X n  '+Z+[+Z 4  $'�+\
� 
cobj+\ m  %&�� +[ I  $�+]�� 0 splitstring splitString+] +^+_+^ n  +`+a+` 4  �+b
� 
cobj+b m  �� +a o  �� 0 	gpurecord 	gpuRecord+_ +c�+c m   +d+d �+e+e  =�  �  +Y m  '*�
� 
doub�  �  +V n      +f+g+f 4  38�~+h
�~ 
cobj+h m  47�}�} +g n  +3+i+j+i 4  03�|+k
�| 
cobj+k o  12�{�{ 0 y  +j o  +0�z�z  0 myprefsdevices myPrefsDevices+T +l+m+l l ::�y+n+o�y  +n   GPU activity   +o �+p+p    G P U   a c t i v i t y+m +q+r+q r  :]+s+t+s l :O+u�x�w+u c  :O+v+w+v n  :K+x+y+x 4  HK�v+z
�v 
cobj+z m  IJ�u�u +y I  :H�t+{�s�t 0 splitstring splitString+{ +|+}+| n  ;A+~++~ 4  <A�r+�
�r 
cobj+� m  =@�q�q + o  ;<�p�p 0 	gpurecord 	gpuRecord+} +��o+� m  AD+�+� �+�+�  =�o  �s  +w m  KN�n
�n 
long�x  �w  +t n      +�+�+� 4  W\�m+�
�m 
cobj+� m  X[�l�l  +� n  OW+�+�+� 4  TW�k+�
�k 
cobj+� o  UV�j�j 0 y  +� o  OT�i�i  0 myprefsdevices myPrefsDevices+r +�+�+� l ^^�h+�+��h  +�  
 Powertune   +� �+�+�    P o w e r t u n e+� +�+�+� r  ^�+�+�+� l ^s+��g�f+� c  ^s+�+�+� n  ^o+�+�+� 4  lo�e+�
�e 
cobj+� m  mn�d�d +� I  ^l�c+��b�c 0 splitstring splitString+� +�+�+� n  _e+�+�+� 4  `e�a+�
�a 
cobj+� m  ad�`�` +� o  _`�_�_ 0 	gpurecord 	gpuRecord+� +��^+� m  eh+�+� �+�+�  =�^  �b  +� m  or�]
�] 
long�g  �f  +� n      +�+�+� 4  {��\+�
�\ 
cobj+� m  |�[�[ !+� n  s{+�+�+� 4  x{�Z+�
�Z 
cobj+� o  yz�Y�Y 0 y  +� o  sx�X�X  0 myprefsdevices myPrefsDevices+� +�+�+� l ���W+�+��W  +� %  Average hashrate (since start)   +� �+�+� >   A v e r a g e   h a s h r a t e   ( s i n c e   s t a r t )+� +�+�+� r  ��+�+�+� c  ��+�+�+� I  ���V+��U�V 0 roundnumber roundNumber+� +�+�+� c  ��+�+�+� n  ��+�+�+� 4  ���T+�
�T 
cobj+� m  ���S�S +� I  ���R+��Q�R 0 splitstring splitString+� +�+�+� n  ��+�+�+� 4  ���P+�
�P 
cobj+� m  ���O�O +� o  ���N�N 0 	gpurecord 	gpuRecord+� +��M+� m  ��+�+� �+�+�  =�M  �Q  +� m  ���L
�L 
doub+� +��K+� m  ���J�J �K  �U  +� m  ���I
�I 
doub+� n      +�+�+� 4  ���H+�
�H 
cobj+� m  ���G�G "+� n  ��+�+�+� 4  ���F+�
�F 
cobj+� o  ���E�E 0 y  +� o  ���D�D  0 myprefsdevices myPrefsDevices+� +�+�+� l ���C+�+��C  +�   Utility   +� �+�+�    U t i l i t y+� +�+�+� r  ��+�+�+� l ��+��B�A+� c  ��+�+�+� n  ��+�+�+� 4  ���@+�
�@ 
cobj+� m  ���?�? +� I  ���>+��=�> 0 splitstring splitString+� +�+�+� n  ��+�+�+� 4  ���<+�
�< 
cobj+� m  ���;�; +� o  ���:�: 0 	gpurecord 	gpuRecord+� +��9+� m  ��+�+� �+�+�  =�9  �=  +� m  ���8
�8 
doub�B  �A  +� n      +�+�+� 4  ���7+�
�7 
cobj+� m  ���6�6 #+� n  ��+�+�+� 4  ���5+�
�5 
cobj+� o  ���4�4 0 y  +� o  ���3�3  0 myprefsdevices myPrefsDevices+� +�+�+� l ���2+�+��2  +�   Status from miner   +� �+�+� $   S t a t u s   f r o m   m i n e r+� +�+�+� r  ��+�+�+� l ��+��1�0+� c  ��+�+�+� n  ��+�+�+� 4  ���/+�
�/ 
cobj+� m  ���.�. +� I  ���-+��,�- 0 splitstring splitString+� +�+�+� n  ��+�+�+� 4  ���++�
�+ 
cobj+� m  ���*�* +� o  ���)�) 0 	gpurecord 	gpuRecord+� +��(+� m  ��+�+� �, ,   =�(  �,  +� m  ���'
�' 
ctxt�1  �0  +� n      ,,, 4  ���&,
�& 
cobj, m  ���%�% $, n  ��,,, 4  ���$,
�$ 
cobj, o  ���#�# 0 y  , o  ���"�"  0 myprefsdevices myPrefsDevices+� ,,, l ���!,	,
�!  ,	   NoDevice from miner   ,
 �,, (   N o D e v i c e   f r o m   m i n e r, ,,, r  �,,, m  ��� 
�  boovfals, n      ,,, 4  ��,
� 
cobj, m   �� %, n  ��,,, 4  ���,
� 
cobj, o  ���� 0 y  , o  ����  0 myprefsdevices myPrefsDevices, ,,, l ����  �  �  , ,,, l �,,�  , S M if the miner reports using it, then we must show it in the list, and enabled   , �,, �   i f   t h e   m i n e r   r e p o r t s   u s i n g   i t ,   t h e n   w e   m u s t   s h o w   i t   i n   t h e   l i s t ,   a n d   e n a b l e d, ,,, Z  -,, ��, = ,!,",! c  ,#,$,# n  ,%,&,% 4  �,'
� 
cobj,' m  �� $,& l ,(��,( n  ,),*,) 4  	�,+
� 
cobj,+ o  
�� 0 y  ,* o  	��  0 myprefsdevices myPrefsDevices�  �  ,$ m  �
� 
ctxt," m  ,,,, �,-,- 
 A l i v e,  r  ),.,/,. m  �
� boovtrue,/ n      ,0,1,0 4  #(�,2
� 
cobj,2 m  $'�
�
 ,1 l #,3�	�,3 n  #,4,5,4 4   #�,6
� 
cobj,6 o  !"�� 0 y  ,5 o   ��  0 myprefsdevices myPrefsDevices�	  �  �  �  , ,7,8,7 Z  .c,9,:�,;,9 = .C,<,=,< n  .?,>,?,> 4  <?�,@
� 
cobj,@ m  =>�� ,? l .<,A�� ,A I  .<��,B���� 0 splitstring splitString,B ,C,D,C n  /5,E,F,E 4  05��,G
�� 
cobj,G m  14���� ,F o  /0���� 0 	gpurecord 	gpuRecord,D ,H��,H m  58,I,I �,J,J  =��  ��  �  �   ,= m  ?B,K,K �,L,L  Y,: r  FS,M,N,M m  FG��
�� boovtrue,N n      ,O,P,O 4  OR��,Q
�� 
cobj,Q m  PQ���� ,P l GO,R����,R n  GO,S,T,S 4  LO��,U
�� 
cobj,U o  MN���� 0 y  ,T o  GL����  0 myprefsdevices myPrefsDevices��  ��  �  ,; r  Vc,V,W,V m  VW��
�� boovfals,W n      ,X,Y,X 4  _b��,Z
�� 
cobj,Z m  `a���� ,Y l W_,[����,[ n  W_,\,],\ 4  \_��,^
�� 
cobj,^ o  ]^���� 0 y  ,] o  W\����  0 myprefsdevices myPrefsDevices��  ��  ,8 ,_,`,_ l dd��������  ��  ��  ,` ,a,b,a l dd��,c,d��  ,c   do we show this device?   ,d �,e,e 0   d o   w e   s h o w   t h i s   d e v i c e ?,b ,f,g,f l dd��,h,i��  ,h 9 3 yes, always show GPUs if GPU mining is not disable   ,i �,j,j f   y e s ,   a l w a y s   s h o w   G P U s   i f   G P U   m i n i n g   i s   n o t   d i s a b l e,g ,k,l,k Z  d�,m,n����,m = dr,o,p,o l dp,q����,q c  dp,r,s,r n  dn,t,u,t 4  in��,v
�� 
cobj,v m  jm���� ,u o  di����  0 myprefsgeneral myPrefsGeneral,s m  no��
�� 
bool��  ��  ,p m  pq��
�� boovfals,n r  u�,w,x,w m  uv��
�� boovtrue,x n      ,y,z,y 4  ~���,{
�� 
cobj,{ m  ����� ,z n  v~,|,},| 4  {~��,~
�� 
cobj,~ o  |}���� 0 y  ,} o  v{����  0 myprefsdevices myPrefsDevices��  ��  ,l ,,�, l ����������  ��  ��  ,� ,���,�  S  ����  �  �  � 0 y  )N m   � ����� )O n   � �,�,�,� m   � ���
�� 
nmbr,� n  � �,�,�,� 2  � ���
�� 
cobj,� o   � �����  0 myprefsdevices myPrefsDevices�  �  �� 0 x  ). m   � �����  )/ l  � �,�����,� \   � �,�,�,� o   � ����� 0 numgpus numGPUs,� m   � ����� ��  ��  ��  ��  ��  )( ,�,�,� l ����������  ��  ��  ,� ,�,�,� l ����,�,���  ,� %  request hash rate on each FPGA   ,� �,�,� >   r e q u e s t   h a s h   r a t e   o n   e a c h   F P G A,� ,�,�,� Z  �,�,�����,� ? ��,�,�,� o  ������ 0 numpgas numPGAs,� m  ������  ,� Y  �,���,�,��,� k  ��,�,� ,�,�,� l ������  �  �  ,� ,�,�,� r  ��,�,�,� I  ���,��� 0 splitstring splitString,� ,�,�,� I  ���,��� 0 sendcommand sendCommand,� ,�,�,� m  ��,�,� �,�,�  p g a,� ,�,�,� o  ���� 0 x  ,� ,��,� m  ���
� boovfals�  �  ,� ,��,� m  ��,�,� �,�,�  ,�  �  ,� o      �� 0 devicerecord deviceRecord,� ,�,�,� l ������  �  �  ,� ,�,�,� l ���,�,��  ,� 7 1 find this record in myPrefsDevices and update it   ,� �,�,� b   f i n d   t h i s   r e c o r d   i n   m y P r e f s D e v i c e s   a n d   u p d a t e   i t,� ,��,� Y  ��,��,�,��,� Z  ��,�,���,� F  �,�,�,� l ��,���,� = ��,�,�,� l ��,���,� c  ��,�,�,� n  ��,�,�,� 4  ���,�
� 
cobj,� m  ���� ,� n  ��,�,�,� 4  ���,�
� 
cobj,� o  ���� 0 y  ,� o  ����  0 myprefsdevices myPrefsDevices,� m  ���
� 
ctxt�  �  ,� m  ��,�,� �,�,�  u s b�  �  ,� l �,���,� = �,�,�,� n  ��,�,�,� 4  ���,�
� 
cobj,� m  ���� ,� n  ��,�,�,� 4  ���,�
� 
cobj,� o  ���� 0 y  ,� o  ����  0 myprefsdevices myPrefsDevices,� l �,���,� n  �,�,�,� 4  �,�
� 
cobj,� m  �� ,� I  ��,��� 0 splitstring splitString,� ,�,�,� n  �,�,�,� 4   �,�
� 
cobj,� m  �� ,� o  � �� 0 devicerecord deviceRecord,� ,��,� m  ,�,� �,�,�  =�  �  �  �  �  �  ,� k  �,�,� ,�,�,� l �,�,��  ,� 0 * if it's a USB device and the name matches   ,� �,�,� T   i f   i t ' s   a   U S B   d e v i c e   a n d   t h e   n a m e   m a t c h e s,� ,�,�,� l ����  �  �  ,� ,�,�,� r  ,,�,�,� c  *,�,�,� l &,���,� n  &,�,�,� 4  #&�,�
� 
cobj,� m  $%�� ,� I  #�,��� 0 splitstring splitString,� ,�,�,� n  ,�,�,� 4  �,�
� 
cobj,� m  �� ,� o  �� 0 devicerecord deviceRecord,� ,��,� m  ,�,� �,�,�  =�  �  �  �  ,� m  &)�
� 
doub,� o      �� 0 thishashrate thisHashrate,� ,�,�,� l --�~�}�|�~  �}  �|  ,� ,�,�,� l --�{- -�{  -  ; 5 check the record hashrates and update if appropriate   - �-- j   c h e c k   t h e   r e c o r d   h a s h r a t e s   a n d   u p d a t e   i f   a p p r o p r i a t e,� --- Z  -�---�z- = -6--	- o  -2�y�y 0 currentcoin currentCoin-	 m  25-
-
 �--  B i t c o i n- Z  9b--�x�w- A 9L--- l 9J-�v�u- c  9J--- n  9F--- 4  AF�t-
�t 
cobj- m  BE�s�s - n  9A--- 4  >A�r-
�r 
cobj- o  ?@�q�q 0 y  - o  9>�p�p  0 myprefsdevices myPrefsDevices- m  FI�o
�o 
doub�v  �u  - l JK-�n�m- o  JK�l�l 0 thishashrate thisHashrate�n  �m  - k  O^-- --- l OO�k--�k  - > 8 if existing hashrate on record is less than the current   - �-- p   i f   e x i s t i n g   h a s h r a t e   o n   r e c o r d   i s   l e s s   t h a n   t h e   c u r r e n t- - �j-  l O^-!-"-#-! r  O^-$-%-$ l OP-&�i�h-& o  OP�g�g 0 thishashrate thisHashrate�i  �h  -% n      -'-(-' 4  X]�f-)
�f 
cobj-) m  Y\�e�e -( n  PX-*-+-* 4  UX�d-,
�d 
cobj-, o  VW�c�c 0 y  -+ o  PU�b�b  0 myprefsdevices myPrefsDevices-"   update record hashrate   -# �---- .   u p d a t e   r e c o r d   h a s h r a t e�j  �x  �w  - -.-/-. = en-0-1-0 o  ej�a�a 0 currentcoin currentCoin-1 m  jm-2-2 �-3-3  L i t e c o i n-/ -4�`-4 Z  q�-5-6�_�^-5 A q�-7-8-7 l q�-9�]�\-9 c  q�-:-;-: n  q~-<-=-< 4  y~�[->
�[ 
cobj-> m  z}�Z�Z -= n  qy-?-@-? 4  vy�Y-A
�Y 
cobj-A o  wx�X�X 0 y  -@ o  qv�W�W  0 myprefsdevices myPrefsDevices-; m  ~��V
�V 
doub�]  �\  -8 l ��-B�U�T-B o  ���S�S 0 thishashrate thisHashrate�U  �T  -6 k  ��-C-C -D-E-D l ���R-F-G�R  -F > 8 if existing hashrate on record is less than the current   -G �-H-H p   i f   e x i s t i n g   h a s h r a t e   o n   r e c o r d   i s   l e s s   t h a n   t h e   c u r r e n t-E -I�Q-I l ��-J-K-L-J r  ��-M-N-M l ��-O�P�O-O o  ���N�N 0 thishashrate thisHashrate�P  �O  -N n      -P-Q-P 4  ���M-R
�M 
cobj-R m  ���L�L -Q n  ��-S-T-S 4  ���K-U
�K 
cobj-U o  ���J�J 0 y  -T o  ���I�I  0 myprefsdevices myPrefsDevices-K   update record hashrate   -L �-V-V .   u p d a t e   r e c o r d   h a s h r a t e�Q  �_  �^  �`  �z  - -W-X-W l ���H�G�F�H  �G  �F  -X -Y-Z-Y l ���E-[-\�E  -[ "  update the current hashrate   -\ �-]-] 8   u p d a t e   t h e   c u r r e n t   h a s h r a t e-Z -^-_-^ r  ��-`-a-` l ��-b�D�C-b o  ���B�B 0 thishashrate thisHashrate�D  �C  -a n      -c-d-c 4  ���A-e
�A 
cobj-e m  ���@�@ -d n  ��-f-g-f 4  ���?-h
�? 
cobj-h o  ���>�> 0 y  -g o  ���=�=  0 myprefsdevices myPrefsDevices-_ -i-j-i l ���<�;�:�<  �;  �:  -j -k-l-k l ���9-m-n�9  -m #  udpate the shares and errors   -n �-o-o :   u d p a t e   t h e   s h a r e s   a n d   e r r o r s-l -p-q-p l ��-r-s-t-r r  ��-u-v-u l ��-w�8�7-w c  ��-x-y-x n  ��-z-{-z 4  ���6-|
�6 
cobj-| m  ���5�5 -{ I  ���4-}�3�4 0 splitstring splitString-} -~--~ n  ��-�-�-� 4  ���2-�
�2 
cobj-� m  ���1�1 -� o  ���0�0 0 devicerecord deviceRecord- -��/-� m  ��-�-� �-�-�  =�/  �3  -y m  ���.
�. 
long�8  �7  -v n      -�-�-� 4  ���--�
�- 
cobj-� m  ���,�, -� n  ��-�-�-� 4  ���+-�
�+ 
cobj-� o  ���*�* 0 y  -� o  ���)�)  0 myprefsdevices myPrefsDevices-s   accepted shares   -t �-�-�     a c c e p t e d   s h a r e s-q -�-�-� l ��-�-�-�-� r  ��-�-�-� l ��-��(�'-� c  ��-�-�-� n  ��-�-�-� 4  ���&-�
�& 
cobj-� m  ���%�% -� I  ���$-��#�$ 0 splitstring splitString-� -�-�-� n  ��-�-�-� 4  ���"-�
�" 
cobj-� m  ���!�! -� o  ��� �  0 devicerecord deviceRecord-� -��-� m  ��-�-� �-�-�  =�  �#  -� m  ���
� 
long�(  �'  -� n      -�-�-� 4  ���-�
� 
cobj-� m  ���� -� n  ��-�-�-� 4  ���-�
� 
cobj-� o  ���� 0 y  -� o  ����  0 myprefsdevices myPrefsDevices-�   rejected shares   -� �-�-�     r e j e c t e d   s h a r e s-� -�-�-� l �-�-�-�-� r  �-�-�-� l �-���-� c  �-�-�-� n  �-�-�-� 4  �-�
� 
cobj-� m  �� -� I  ��-��� 0 splitstring splitString-� -�-�-� n  ��-�-�-� 4  ���-�
� 
cobj-� m  ���� -� o  ���� 0 devicerecord deviceRecord-� -��-� m  �-�-� �-�-�  =�  �  -� m  �
� 
long�  �  -� n      -�-�-� 4  �-�
� 
cobj-� m  �� -� n  -�-�-� 4  �-�
� 
cobj-� o  �
�
 0 y  -� o  �	�	  0 myprefsdevices myPrefsDevices-�   hardware errors   -� �-�-�     h a r d w a r e   e r r o r s-� -�-�-� l ����  �  �  -� -�-�-� l �-�-��  -� 7 1 update temperature (just in case it's supported)   -� �-�-� b   u p d a t e   t e m p e r a t u r e   ( j u s t   i n   c a s e   i t ' s   s u p p o r t e d )-� -�-�-� r  >-�-�-� l 0-���-� c  0-�-�-� n  ,-�-�-� 4  ),�-�
� 
cobj-� m  *+�� -� I  )� -����  0 splitstring splitString-� -�-�-� n  "-�-�-� 4  "��-�
�� 
cobj-� m  !���� 
-� o  ���� 0 devicerecord deviceRecord-� -���-� m  "%-�-� �-�-�  =��  ��  -� m  ,/��
�� 
doub�  �  -� n      -�-�-� 4  8=��-�
�� 
cobj-� m  9<���� -� n  08-�-�-� 4  58��-�
�� 
cobj-� o  67���� 0 y  -� o  05����  0 myprefsdevices myPrefsDevices-� -�-�-� l ??��������  ��  ��  -� -�-�-� l ??��-�-���  -�  
 Fan speed   -� �-�-�    F a n   s p e e d-� -�-�-� r  ?R-�-�-� c  ?D-�-�-� m  ?@����  -� m  @C��
�� 
long-� n      -�-�-� 4  LQ��-�
�� 
cobj-� m  MP���� -� n  DL-�-�-� 4  IL��-�
�� 
cobj-� o  JK���� 0 y  -� o  DI����  0 myprefsdevices myPrefsDevices-� -�-�-� l SS��-�-���  -�   Fan percent   -� �-�-�    F a n   p e r c e n t-� -�. -� r  Sf... c  SX... m  ST����  . m  TW��
�� 
long. n      ... 4  `e��.
�� 
cobj. m  ad���� . n  X`..	. 4  ]`��.

�� 
cobj.
 o  ^_���� 0 y  .	 o  X]����  0 myprefsdevices myPrefsDevices.  ... l gg��..��  .  
 GPU clock   . �..    G P U   c l o c k. ... r  gz... c  gl... m  gh����  . m  hk��
�� 
long. n      ... 4  ty��.
�� 
cobj. m  ux���� . n  lt... 4  qt��.
�� 
cobj. o  rs���� 0 y  . o  lq����  0 myprefsdevices myPrefsDevices. ... l {{��..��  .   Memory clock   . �. .     M e m o r y   c l o c k. .!.".! r  {�.#.$.# c  {�.%.&.% m  {|����  .& m  |��
�� 
long.$ n      .'.(.' 4  ����.)
�� 
cobj.) m  ������ .( n  ��.*.+.* 4  ����.,
�� 
cobj., o  ������ 0 y  .+ o  ������  0 myprefsdevices myPrefsDevices." .-...- l ����./.0��  ./   GPU voltage   .0 �.1.1    G P U   v o l t a g e.. .2.3.2 r  ��.4.5.4 c  ��.6.7.6 m  ������  .7 m  ����
�� 
doub.5 n      .8.9.8 4  ����.:
�� 
cobj.: m  ������ .9 n  ��.;.<.; 4  ����.=
�� 
cobj.= o  ������ 0 y  .< o  ������  0 myprefsdevices myPrefsDevices.3 .>.?.> l ����.@.A��  .@   GPU activity   .A �.B.B    G P U   a c t i v i t y.? .C.D.C r  ��.E.F.E c  ��.G.H.G m  ������  .H m  ����
�� 
long.F n      .I.J.I 4  ����.K
�� 
cobj.K m  ������  .J n  ��.L.M.L 4  ����.N
�� 
cobj.N o  ������ 0 y  .M o  ������  0 myprefsdevices myPrefsDevices.D .O.P.O l ����.Q.R��  .Q  
 Powertune   .R �.S.S    P o w e r t u n e.P .T.U.T r  ��.V.W.V c  ��.X.Y.X m  ������  .Y m  ���
� 
long.W n      .Z.[.Z 4  ���.\
� 
cobj.\ m  ���� !.[ n  ��.].^.] 4  ���._
� 
cobj._ o  ���� 0 y  .^ o  ����  0 myprefsdevices myPrefsDevices.U .`.a.` l ���.b.c�  .b %  Average hashrate (since start)   .c �.d.d >   A v e r a g e   h a s h r a t e   ( s i n c e   s t a r t ).a .e.f.e r  ��.g.h.g c  ��.i.j.i I  ���.k�� 0 roundnumber roundNumber.k .l.m.l c  ��.n.o.n n  ��.p.q.p 4  ���.r
� 
cobj.r m  ���� .q I  ���.s�� 0 splitstring splitString.s .t.u.t n  ��.v.w.v 4  ���.x
� 
cobj.x m  ���� .w o  ���� 0 devicerecord deviceRecord.u .y�.y m  ��.z.z �.{.{  =�  �  .o m  ���
� 
doub.m .|�.| m  ���� �  �  .j m  ���
� 
doub.h n      .}.~.} 4  ���.
� 
cobj. m  ���� ".~ n  ��.�.�.� 4  ���.�
� 
cobj.� o  ���� 0 y  .� o  ����  0 myprefsdevices myPrefsDevices.f .�.�.� l ���.�.��  .�   Utility   .� �.�.�    U t i l i t y.� .�.�.� r  �.�.�.� l �.���.� c  �.�.�.� n  �
.�.�.� 4  
�.�
� 
cobj.� m  	�� .� I  ��.��� 0 splitstring splitString.� .�.�.� n  � .�.�.� 4  � �.�
� 
cobj.� m  ���� .� o  ���� 0 devicerecord deviceRecord.� .��.� m   .�.� �.�.�  =�  �  .� m  
�
� 
doub�  �  .� n      .�.�.� 4  �.�
� 
cobj.� m  �� #.� n  .�.�.� 4  �.�
� 
cobj.� o  �� 0 y  .� o  ��  0 myprefsdevices myPrefsDevices.� .�.�.� l �.�.��  .�   Status from miner   .� �.�.� $   S t a t u s   f r o m   m i n e r.� .�.�.� r  >.�.�.� l 0.���.� c  0.�.�.� n  ..�.�.� 4  +.�.�
� 
cobj.� m  ,-�� .� I  +�.��� 0 splitstring splitString.� .�.�.� n  $.�.�.� 4  $�.�
� 
cobj.� m   #�� 	.� o  �� 0 devicerecord deviceRecord.� .��.� m  $'.�.� �.�.�  =�  �  .� m  ./�
� 
ctxt�  �  .� n      .�.�.� 4  8=�.�
� 
cobj.� m  9<�� $.� n  08.�.�.� 4  58�.�
� 
cobj.� o  67�� 0 y  .� o  05��  0 myprefsdevices myPrefsDevices.� .�.�.� l ??����  �  �  .� .�.�.� l ??�.�.��  .�   Nodevice from miner   .� �.�.� (   N o d e v i c e   f r o m   m i n e r.� .�.�.� r  ?^.�.�.� l ?R.���~.� c  ?R.�.�.� n  ?P.�.�.� 4  MP�}.�
�} 
cobj.� m  NO�|�| .� I  ?M�{.��z�{ 0 splitstring splitString.� .�.�.� n  @F.�.�.� 4  AF�y.�
�y 
cobj.� m  BE�x�x .� o  @A�w�w 0 devicerecord deviceRecord.� .��v.� m  FI.�.� �.�.�  =�v  �z  .� m  PQ�u
�u 
ctxt�  �~  .� n      .�.�.� 4  Z]�t.�
�t 
cobj.� m  [\�s�s %.� n  RZ.�.�.� 4  WZ�r.�
�r 
cobj.� o  XY�q�q 0 y  .� o  RW�p�p  0 myprefsdevices myPrefsDevices.� .�.�.� l __�o�n�m�o  �n  �m  .� .�.�.� l __�l.�.��l  .� S M if the miner reports using it, then we must show it in the list, and enabled   .� �.�.� �   i f   t h e   m i n e r   r e p o r t s   u s i n g   i t ,   t h e n   w e   m u s t   s h o w   i t   i n   t h e   l i s t ,   a n d   e n a b l e d.� .�.�.� Z  _�.�.��k�j.� = _p.�.�.� n  _l.�.�.� 4  gl�i.�
�i 
cobj.� m  hk�h�h $.� n  _g.�.�.� 4  dg�g.�
�g 
cobj.� o  ef�f�f 0 y  .� o  _d�e�e  0 myprefsdevices myPrefsDevices.� m  lo.�.� �.�.� 
 A l i v e.� r  s�.�.�.� m  st�d
�d boovtrue.� n      .�.�.� 4  |��c.�
�c 
cobj.� m  }��b�b .� l t|.��a�`.� n  t|.�.�.� 4  y|�_.�
�_ 
cobj.� o  z{�^�^ 0 y  .� o  ty�]�]  0 myprefsdevices myPrefsDevices�a  �`  �k  �j  .� .�.�.� Z  ��.�/ �\/.� = ��/// n  ��/// 4  ���[/
�[ 
cobj/ m  ���Z�Z / l ��/�Y�X/ I  ���W/�V�W 0 splitstring splitString/ /	/
/	 n  ��/// 4  ���U/
�U 
cobj/ m  ���T�T / o  ���S�S 0 devicerecord deviceRecord/
 /�R/ m  ��// �//  =�R  �V  �Y  �X  / m  ��// �//  Y/  r  ��/// m  ���Q
�Q boovtrue/ n      /// 4  ���P/
�P 
cobj/ m  ���O�O / l ��/�N�M/ n  ��/// 4  ���L/
�L 
cobj/ o  ���K�K 0 y  / o  ���J�J  0 myprefsdevices myPrefsDevices�N  �M  �\  / r  ��/// m  ���I
�I boovfals/ n      /// 4  ���H/ 
�H 
cobj/  m  ���G�G / l ��/!�F�E/! n  ��/"/#/" 4  ���D/$
�D 
cobj/$ o  ���C�C 0 y  /# o  ���B�B  0 myprefsdevices myPrefsDevices�F  �E  .� /%/&/% l ���A�@�?�A  �@  �?  /& /'/(/' l ���>/)/*�>  /)   do we show this device?   /* �/+/+ 0   d o   w e   s h o w   t h i s   d e v i c e ?/( /,/-/, l ���=/.//�=  /. 3 - yes, if it is plugged in (nodevice is false)   // �/0/0 Z   y e s ,   i f   i t   i s   p l u g g e d   i n   ( n o d e v i c e   i s   f a l s e )/- /1/2/1 Z  ��/3/4�</5/3 = ��/6/7/6 l ��/8�;�:/8 c  ��/9/:/9 n  ��/;/</; 4  ���9/=
�9 
cobj/= m  ���8�8 %/< l ��/>�7�6/> n  ��/?/@/? 4  ���5/A
�5 
cobj/A o  ���4�4 0 y  /@ o  ���3�3  0 myprefsdevices myPrefsDevices�7  �6  /: m  ���2
�2 
bool�;  �:  /7 m  ���1
�1 boovfals/4 r  ��/B/C/B m  ���0
�0 boovtrue/C n      /D/E/D 4  ���//F
�/ 
cobj/F m  ���.�. /E n  ��/G/H/G 4  ���-/I
�- 
cobj/I o  ���,�, 0 y  /H o  ���+�+  0 myprefsdevices myPrefsDevices�<  /5 r  ��/J/K/J m  ��/L/L �/M/M  d i s c o n n e c t e d/K n      /N/O/N 4  ���*/P
�* 
cobj/P m  ���)�) /O n  ��/Q/R/Q 4  ���(/S
�( 
cobj/S o  ���'�' 0 y  /R o  ���&�&  0 myprefsdevices myPrefsDevices/2 /T/U/T l ���%�$�#�%  �$  �#  /U /V�"/V  S  ���"  �  �  � 0 y  ,� m  ���!�! ,� n  ��/W/X/W m  ��� 
�  
nmbr/X n ��/Y/Z/Y 2 ���
� 
cobj/Z o  ����  0 myprefsdevices myPrefsDevices�  �  �� 0 x  ,� m  ����  ,� l ��/[��/[ \  ��/\/]/\ o  ���� 0 numpgas numPGAs/] m  ���� �  �  �  ��  ��  ,� /^/_/^ l ����  �  �  /_ /`/a/` l �/b/c�  /b %  request hash rate on each ASIC   /c �/d/d >   r e q u e s t   h a s h   r a t e   o n   e a c h   A S I C/a /e/f/e Z  f/g/h��/g ? /i/j/i o  �� 0 numasics numASICs/j m  ��  /h Y  b/k�/l/m�/k k  !]/n/n /o/p/o l !!����  �  �  /p /q/r/q r  !5/s/t/s I  !3�/u�
� 0 splitstring splitString/u /v/w/v I  ",�	/x��	 0 sendcommand sendCommand/x /y/z/y m  #&/{/{ �/|/|  a s c/z /}/~/} o  &'�� 0 x  /~ /�/ m  '(�
� boovfals�  �  /w /��/� m  ,//�/� �/�/�  ,�  �
  /t o      �� 0 devicerecord deviceRecord/r /�/�/� l 66��� �  �  �   /� /�/�/� l 66��/�/���  /� 7 1 find this record in myPrefsDevices and update it   /� �/�/� b   f i n d   t h i s   r e c o r d   i n   m y P r e f s D e v i c e s   a n d   u p d a t e   i t/� /���/� Y  6]/���/�/���/� Z  IX/�/�����/� F  I|/�/�/� l IZ/�����/� = IZ/�/�/� l IV/�����/� c  IV/�/�/� n  IT/�/�/� 4  QT��/�
�� 
cobj/� m  RS���� /� n  IQ/�/�/� 4  NQ��/�
�� 
cobj/� o  OP���� 0 y  /� o  IN����  0 myprefsdevices myPrefsDevices/� m  TU��
�� 
ctxt��  ��  /� m  VY/�/� �/�/�  u s b��  ��  /� l ]z/�����/� = ]z/�/�/� n  ]h/�/�/� 4  eh��/�
�� 
cobj/� m  fg���� /� n  ]e/�/�/� 4  be��/�
�� 
cobj/� o  cd���� 0 y  /� o  ]b����  0 myprefsdevices myPrefsDevices/� l hy/�����/� n  hy/�/�/� 4  vy��/�
�� 
cobj/� m  wx���� /� I  hv��/����� 0 splitstring splitString/� /�/�/� n  io/�/�/� 4  jo��/�
�� 
cobj/� m  kn���� /� o  ij���� 0 devicerecord deviceRecord/� /���/� m  or/�/� �/�/�  =��  ��  ��  ��  ��  ��  /� k  T/�/� /�/�/� l ��/�/���  /� 0 * if it's a USB device and the name matches   /� �/�/� T   i f   i t ' s   a   U S B   d e v i c e   a n d   t h e   n a m e   m a t c h e s/� /�/�/� l ��������  ��  ��  /� /�/�/� r  �/�/�/� c  �/�/�/� l �/�����/� n  �/�/�/� 4  ����/�
�� 
cobj/� m  ������ /� I  ���/����� 0 splitstring splitString/� /�/�/� n  ��/�/�/� 4  ����/�
�� 
cobj/� m  ������ /� o  ������ 0 devicerecord deviceRecord/� /���/� m  ��/�/� �/�/�  =��  ��  ��  ��  /� m  ����
�� 
doub/� o      ���� 0 thishashrate thisHashrate/� /�/�/� l ����������  ��  ��  /� /�/�/� l ����/�/���  /� ; 5 check the record hashrates and update if appropriate   /� �/�/� j   c h e c k   t h e   r e c o r d   h a s h r a t e s   a n d   u p d a t e   i f   a p p r o p r i a t e/� /�/�/� Z  �	/�/�/���/� = ��/�/�/� o  ������ 0 currentcoin currentCoin/� m  ��/�/� �/�/�  B i t c o i n/� Z  ��/�/�����/� A ��/�/�/� l ��/�����/� c  ��/�/�/� n  ��/�/�/� 4  ����/�
�� 
cobj/� m  ������ /� n  ��/�/�/� 4  ����/�
�� 
cobj/� o  ������ 0 y  /� o  ������  0 myprefsdevices myPrefsDevices/� m  ���
� 
doub��  ��  /� l ��/���/� o  ���� 0 thishashrate thisHashrate�  �  /� k  ��/�/� /�/�/� l ���/�/��  /� > 8 if existing hashrate on record is less than the current   /� �/�/� p   i f   e x i s t i n g   h a s h r a t e   o n   r e c o r d   i s   l e s s   t h a n   t h e   c u r r e n t/� /��/� l ��/�/�/�/� r  ��/�/�/� l ��/���/� o  ���� 0 thishashrate thisHashrate�  �  /� n      /�/�/� 4  ���/�
� 
cobj/� m  ���� /� n  ��/�0 /� 4  ���0
� 
cobj0 o  ���� 0 y  0  o  ����  0 myprefsdevices myPrefsDevices/�   update record hashrate   /� �00 .   u p d a t e   r e c o r d   h a s h r a t e�  ��  ��  /� 000 = ��000 o  ���� 0 currentcoin currentCoin0 m  ��00 �00  L i t e c o i n0 0	�0	 Z  �	0
0��0
 A ��000 l ��0��0 c  ��000 n  ��000 4  ���0
� 
cobj0 m  ���� 0 n  ��000 4  ���0
� 
cobj0 o  ���� 0 y  0 o  ����  0 myprefsdevices myPrefsDevices0 m  ���
� 
doub�  �  0 l ��0��0 o  ���� 0 thishashrate thisHashrate�  �  0 k  �	 00 000 l ���00�  0 > 8 if existing hashrate on record is less than the current   0 �00 p   i f   e x i s t i n g   h a s h r a t e   o n   r e c o r d   i s   l e s s   t h a n   t h e   c u r r e n t0 0�0 l �	 00 0!0 r  �	 0"0#0" l ��0$��0$ o  ���� 0 thishashrate thisHashrate�  �  0# n      0%0&0% 4  ���0'
� 
cobj0' m  ���� 0& n  ��0(0)0( 4  ���0*
� 
cobj0* o  ���� 0 y  0) o  ����  0 myprefsdevices myPrefsDevices0    update record hashrate   0! �0+0+ .   u p d a t e   r e c o r d   h a s h r a t e�  �  �  �  ��  /� 0,0-0, l 				����  �  �  0- 0.0/0. l 				�0001�  00 "  update the current hashrate   01 �0202 8   u p d a t e   t h e   c u r r e n t   h a s h r a t e0/ 030403 r  			050605 l 			
07��07 o  			
�� 0 thishashrate thisHashrate�  �  06 n      080908 4  		�0:
� 
cobj0: m  		�� 09 n  	
	0;0<0; 4  		�0=
� 
cobj0= o  		�� 0 y  0< o  	
	��  0 myprefsdevices myPrefsDevices04 0>0?0> l 		����  �  �  0? 0@0A0@ l 		�0B0C�  0B #  udpate the shares and errors   0C �0D0D :   u d p a t e   t h e   s h a r e s   a n d   e r r o r s0A 0E0F0E l 		<0G0H0I0G r  		<0J0K0J l 		.0L��0L c  		.0M0N0M n  		*0O0P0O 4  	'	*�0Q
� 
cobj0Q m  	(	)�� 0P I  		'�0R�� 0 splitstring splitString0R 0S0T0S n  		 0U0V0U 4  		 �0W
� 
cobj0W m  		�� 0V o  		�� 0 devicerecord deviceRecord0T 0X�0X m  	 	#0Y0Y �0Z0Z  =�  �  0N m  	*	-�~
�~ 
long�  �  0K n      0[0\0[ 4  	6	;�}0]
�} 
cobj0] m  	7	:�|�| 0\ n  	.	60^0_0^ 4  	3	6�{0`
�{ 
cobj0` o  	4	5�z�z 0 y  0_ o  	.	3�y�y  0 myprefsdevices myPrefsDevices0H   accepted shares   0I �0a0a     a c c e p t e d   s h a r e s0F 0b0c0b l 	=	`0d0e0f0d r  	=	`0g0h0g l 	=	R0i�x�w0i c  	=	R0j0k0j n  	=	N0l0m0l 4  	K	N�v0n
�v 
cobj0n m  	L	M�u�u 0m I  	=	K�t0o�s�t 0 splitstring splitString0o 0p0q0p n  	>	D0r0s0r 4  	?	D�r0t
�r 
cobj0t m  	@	C�q�q 0s o  	>	?�p�p 0 devicerecord deviceRecord0q 0u�o0u m  	D	G0v0v �0w0w  =�o  �s  0k m  	N	Q�n
�n 
long�x  �w  0h n      0x0y0x 4  	Z	_�m0z
�m 
cobj0z m  	[	^�l�l 0y n  	R	Z0{0|0{ 4  	W	Z�k0}
�k 
cobj0} o  	X	Y�j�j 0 y  0| o  	R	W�i�i  0 myprefsdevices myPrefsDevices0e   rejected shares   0f �0~0~     r e j e c t e d   s h a r e s0c 00�0 l 	a	�0�0�0�0� r  	a	�0�0�0� l 	a	v0��h�g0� c  	a	v0�0�0� n  	a	r0�0�0� 4  	o	r�f0�
�f 
cobj0� m  	p	q�e�e 0� I  	a	o�d0��c�d 0 splitstring splitString0� 0�0�0� n  	b	h0�0�0� 4  	c	h�b0�
�b 
cobj0� m  	d	g�a�a 0� o  	b	c�`�` 0 devicerecord deviceRecord0� 0��_0� m  	h	k0�0� �0�0�  =�_  �c  0� m  	r	u�^
�^ 
long�h  �g  0� n      0�0�0� 4  	~	��]0�
�] 
cobj0� m  		��\�\ 0� n  	v	~0�0�0� 4  	{	~�[0�
�[ 
cobj0� o  	|	}�Z�Z 0 y  0� o  	v	{�Y�Y  0 myprefsdevices myPrefsDevices0�   hardware errors   0� �0�0�     h a r d w a r e   e r r o r s0� 0�0�0� l 	�	��X�W�V�X  �W  �V  0� 0�0�0� l 	�	��U0�0��U  0� 7 1 update temperature (just in case it's supported)   0� �0�0� b   u p d a t e   t e m p e r a t u r e   ( j u s t   i n   c a s e   i t ' s   s u p p o r t e d )0� 0�0�0� r  	�	�0�0�0� l 	�	�0��T�S0� c  	�	�0�0�0� n  	�	�0�0�0� 4  	�	��R0�
�R 
cobj0� m  	�	��Q�Q 0� I  	�	��P0��O�P 0 splitstring splitString0� 0�0�0� n  	�	�0�0�0� 4  	�	��N0�
�N 
cobj0� m  	�	��M�M 
0� o  	�	��L�L 0 devicerecord deviceRecord0� 0��K0� m  	�	�0�0� �0�0�  =�K  �O  0� m  	�	��J
�J 
doub�T  �S  0� n      0�0�0� 4  	�	��I0�
�I 
cobj0� m  	�	��H�H 0� n  	�	�0�0�0� 4  	�	��G0�
�G 
cobj0� o  	�	��F�F 0 y  0� o  	�	��E�E  0 myprefsdevices myPrefsDevices0� 0�0�0� l 	�	��D�C�B�D  �C  �B  0� 0�0�0� l 	�	��A0�0��A  0�  
 Fan speed   0� �0�0�    F a n   s p e e d0� 0�0�0� r  	�	�0�0�0� c  	�	�0�0�0� m  	�	��@�@  0� m  	�	��?
�? 
long0� n      0�0�0� 4  	�	��>0�
�> 
cobj0� m  	�	��=�= 0� n  	�	�0�0�0� 4  	�	��<0�
�< 
cobj0� o  	�	��;�; 0 y  0� o  	�	��:�:  0 myprefsdevices myPrefsDevices0� 0�0�0� l 	�	��90�0��9  0�   Fan percent   0� �0�0�    F a n   p e r c e n t0� 0�0�0� r  	�	�0�0�0� c  	�	�0�0�0� m  	�	��8�8  0� m  	�	��7
�7 
long0� n      0�0�0� 4  	�	��60�
�6 
cobj0� m  	�	��5�5 0� n  	�	�0�0�0� 4  	�	��40�
�4 
cobj0� o  	�	��3�3 0 y  0� o  	�	��2�2  0 myprefsdevices myPrefsDevices0� 0�0�0� l 	�	��10�0��1  0�  
 GPU clock   0� �0�0�    G P U   c l o c k0� 0�0�0� r  	�	�0�0�0� c  	�	�0�0�0� m  	�	��0�0  0� m  	�	��/
�/ 
long0� n      0�0�0� 4  	�	��.0�
�. 
cobj0� m  	�	��-�- 0� n  	�	�0�0�0� 4  	�	��,0�
�, 
cobj0� o  	�	��+�+ 0 y  0� o  	�	��*�*  0 myprefsdevices myPrefsDevices0� 0�0�0� l 	�	��)0�0��)  0�   Memory clock   0� �0�0�    M e m o r y   c l o c k0� 0�0�0� r  	�	�0�0�0� c  	�	�0�0�0� m  	�	��(�(  0� m  	�	��'
�' 
long0� n      0�0�0� 4  	�	��&0�
�& 
cobj0� m  	�	��%�% 0� n  	�	�0�1 0� 4  	�	��$1
�$ 
cobj1 o  	�	��#�# 0 y  1  o  	�	��"�"  0 myprefsdevices myPrefsDevices0� 111 l 	�	��!11�!  1   GPU voltage   1 �11    G P U   v o l t a g e1 111 r  	�
1	1
1	 c  	�	�111 m  	�	�� �   1 m  	�	��
� 
doub1
 n      111 4  

�1
� 
cobj1 m  


�� 1 n  	�
111 4  

�1
� 
cobj1 o  

�� 0 y  1 o  	�
��  0 myprefsdevices myPrefsDevices1 111 l 

�11�  1   GPU activity   1 �11    G P U   a c t i v i t y1 111 r  

 111 c  

111 m  

��  1 m  

�
� 
long1 n      111 4  

�1 
� 
cobj1  m  

��  1 n  

1!1"1! 4  

�1#
� 
cobj1# o  

�� 0 y  1" o  

��  0 myprefsdevices myPrefsDevices1 1$1%1$ l 
!
!�1&1'�  1&  
 Powertune   1' �1(1(    P o w e r t u n e1% 1)1*1) r  
!
41+1,1+ c  
!
&1-1.1- m  
!
"��  1. m  
"
%�
� 
long1, n      1/101/ 4  
.
3�11
� 
cobj11 m  
/
2�� !10 n  
&
.121312 4  
+
.�14
� 
cobj14 o  
,
-�� 0 y  13 o  
&
+�
�
  0 myprefsdevices myPrefsDevices1* 151615 l 
5
5�	1718�	  17 %  Average hashrate (since start)   18 �1919 >   A v e r a g e   h a s h r a t e   ( s i n c e   s t a r t )16 1:1;1: r  
5
X1<1=1< l 
5
J1>��1> c  
5
J1?1@1? n  
5
F1A1B1A 4  
C
F�1C
� 
cobj1C m  
D
E�� 1B I  
5
C�1D�� 0 splitstring splitString1D 1E1F1E n  
6
<1G1H1G 4  
7
<�1I
� 
cobj1I m  
8
;�� 1H o  
6
7� �  0 devicerecord deviceRecord1F 1J��1J m  
<
?1K1K �1L1L  =��  �  1@ m  
F
I��
�� 
doub�  �  1= n      1M1N1M 4  
R
W��1O
�� 
cobj1O m  
S
V���� "1N n  
J
R1P1Q1P 4  
O
R��1R
�� 
cobj1R o  
P
Q���� 0 y  1Q o  
J
O����  0 myprefsdevices myPrefsDevices1; 1S1T1S l 
Y
Y��1U1V��  1U   Utility   1V �1W1W    U t i l i t y1T 1X1Y1X r  
Y
|1Z1[1Z l 
Y
n1\����1\ c  
Y
n1]1^1] n  
Y
j1_1`1_ 4  
g
j��1a
�� 
cobj1a m  
h
i���� 1` I  
Y
g��1b���� 0 splitstring splitString1b 1c1d1c n  
Z
`1e1f1e 4  
[
`��1g
�� 
cobj1g m  
\
_���� 1f o  
Z
[���� 0 devicerecord deviceRecord1d 1h��1h m  
`
c1i1i �1j1j  =��  ��  1^ m  
j
m��
�� 
doub��  ��  1[ n      1k1l1k 4  
v
{��1m
�� 
cobj1m m  
w
z���� #1l n  
n
v1n1o1n 4  
s
v��1p
�� 
cobj1p o  
t
u���� 0 y  1o o  
n
s����  0 myprefsdevices myPrefsDevices1Y 1q1r1q l 
}
}��1s1t��  1s   Status from miner   1t �1u1u $   S t a t u s   f r o m   m i n e r1r 1v1w1v r  
}
�1x1y1x l 
}
�1z����1z c  
}
�1{1|1{ n  
}
�1}1~1} 4  
�
���1
�� 
cobj1 m  
�
����� 1~ I  
}
���1����� 0 splitstring splitString1� 1�1�1� n  
~
�1�1�1� 4  

���1�
�� 
cobj1� m  
�
����� 	1� o  
~
���� 0 devicerecord deviceRecord1� 1���1� m  
�
�1�1� �1�1�  =��  ��  1| m  
�
���
�� 
ctxt��  ��  1y n      1�1�1� 4  
�
���1�
�� 
cobj1� m  
�
����� $1� n  
�
�1�1�1� 4  
�
���1�
�� 
cobj1� o  
�
����� 0 y  1� o  
�
�����  0 myprefsdevices myPrefsDevices1w 1�1�1� l 
�
���������  ��  ��  1� 1�1�1� l 
�
���1�1���  1�   Nodevice from miner   1� �1�1� (   N o d e v i c e   f r o m   m i n e r1� 1�1�1� r  
�
�1�1�1� l 
�
�1�����1� c  
�
�1�1�1� n  
�
�1�1�1� 4  
�
���1�
�� 
cobj1� m  
�
����� 1� I  
�
���1����� 0 splitstring splitString1� 1�1�1� n  
�
�1�1�1� 4  
�
���1�
�� 
cobj1� m  
�
����� 1� o  
�
����� 0 devicerecord deviceRecord1� 1���1� m  
�
�1�1� �1�1�  =��  ��  1� m  
�
���
�� 
bool��  ��  1� n      1�1�1� 4  
�
���1�
�� 
cobj1� m  
�
����� %1� n  
�
�1�1�1� 4  
�
���1�
�� 
cobj1� o  
�
����� 0 y  1� o  
�
�����  0 myprefsdevices myPrefsDevices1� 1�1�1� l 
�
���������  ��  ��  1� 1�1�1� l 
�
��1�1��  1� S M if the miner reports using it, then we must show it in the list, and enabled   1� �1�1� �   i f   t h e   m i n e r   r e p o r t s   u s i n g   i t ,   t h e n   w e   m u s t   s h o w   i t   i n   t h e   l i s t ,   a n d   e n a b l e d1� 1�1�1� Z  
�
�1�1���1� = 
�
�1�1�1� n  
�
�1�1�1� 4  
�
��1�
� 
cobj1� m  
�
��� $1� n  
�
�1�1�1� 4  
�
��1�
� 
cobj1� o  
�
��� 0 y  1� o  
�
���  0 myprefsdevices myPrefsDevices1� m  
�
�1�1� �1�1� 
 A l i v e1� r  
�
�1�1�1� m  
�
��
� boovtrue1� n      1�1�1� 4  
�
��1�
� 
cobj1� m  
�
��� 1� l 
�
�1���1� n  
�
�1�1�1� 4  
�
��1�
� 
cobj1� o  
�
��� 0 y  1� o  
�
���  0 myprefsdevices myPrefsDevices�  �  �  �  1� 1�1�1� Z  
�1�1��1�1� = 
�
�1�1�1� n  
�
�1�1�1� 4  
�
��1�
� 
cobj1� m  
�
��� 1� l 
�
�1���1� I  
�
��1��� 0 splitstring splitString1� 1�1�1� n  
�
�1�1�1� 4  
�
��1�
� 
cobj1� m  
�
��� 1� o  
�
��� 0 devicerecord deviceRecord1� 1��1� m  
�
�1�1� �1�1�  =�  �  �  �  1� m  
�
�1�1� �1�1�  Y1� r  
�1�1�1� m  
� �
� boovtrue1� n      1�1�1� 4  �1�
� 
cobj1� m  	
�� 1� l  1���1� n   1�1�1� 4  �1�
� 
cobj1� o  �� 0 y  1� o   ��  0 myprefsdevices myPrefsDevices�  �  �  1� r  1�1�1� m  �
� boovfals1� n      1�1�1� 4  �1�
� 
cobj1� m  �� 1� l 1���1� n  1�1�1� 4  �1�
� 
cobj1� o  �� 0 y  1� o  ��  0 myprefsdevices myPrefsDevices�  �  1� 1�1�1� l ����  �  �  1� 1�1�1� l �1�1��  1�   do we show this device?   1� �1�1� 0   d o   w e   s h o w   t h i s   d e v i c e ?1� 1�1�1� l �1�1��  1� 3 - yes, if it is plugged in (nodevice is false)   1� �2 2  Z   y e s ,   i f   i t   i s   p l u g g e d   i n   ( n o d e v i c e   i s   f a l s e )1� 222 Z  R22�22 = ,222 l *2��2 c  *2	2
2	 n  (222 4  %(�2
� 
cobj2 m  &'�� %2 l %2��2 n  %222 4  "%�2
� 
cobj2 o  #$�� 0 y  2 o  "��  0 myprefsdevices myPrefsDevices�  �  2
 m  ()�
� 
bool�  �  2 m  *+�
� boovfals2 r  />222 m  /0�
� boovtrue2 n      222 4  8=�2
� 
cobj2 m  9<�� 2 n  08222 4  58�2
� 
cobj2 o  67�� 0 y  2 o  05�~�~  0 myprefsdevices myPrefsDevices�  2 r  AR222 m  AD22 �22  d i s c o n n e c t e d2 n      222 4  LQ�}2 
�} 
cobj2  m  MP�|�| 2 n  DL2!2"2! 4  IL�{2#
�{ 
cobj2# o  JK�z�z 0 y  2" o  DI�y�y  0 myprefsdevices myPrefsDevices2 2$2%2$ l SS�x�w�v�x  �w  �v  2% 2&�u2&  S  ST�u  ��  ��  �� 0 y  /� m  9:�t�t /� n  :D2'2(2' m  AC�s
�s 
nmbr2( n :A2)2*2) 2 ?A�r
�r 
cobj2* o  :?�q�q  0 myprefsdevices myPrefsDevices��  ��  � 0 x  /l m  �p�p  /m l 2+�o�n2+ \  2,2-2, o  �m�m 0 numasics numASICs2- m  �l�l �o  �n  �  �  �  /f 2.2/2. l gg�k�j�i�k  �j  �i  2/ 202120 l gg�h2223�h  22 #  add up all current hashrates   23 �2424 :   a d d   u p   a l l   c u r r e n t   h a s h r a t e s21 252625 r  gj272827 m  gh�g�g  28 o      �f�f 0 	totalhash 	totalHash26 292:29 r  kn2;2<2; m  kl�e�e  2< o      �d�d 0 enabledcount enabledCount2: 2=2>2= Y  o�2?�c2@2A�b2? Z  ��2B2C�a�`2B = ��2D2E2D n  ��2F2G2F 4  ���_2H
�_ 
cobj2H m  ���^�^ 2G l ��2I�]�\2I n  ��2J2K2J 4  ���[2L
�[ 
cobj2L o  ���Z�Z 0 x  2K o  ���Y�Y  0 myprefsdevices myPrefsDevices�]  �\  2E m  ���X
�X boovtrue2C k  ��2M2M 2N2O2N r  ��2P2Q2P [  ��2R2S2R o  ���W�W 0 	totalhash 	totalHash2S l ��2T�V�U2T c  ��2U2V2U n  ��2W2X2W 4  ���T2Y
�T 
cobj2Y m  ���S�S 2X n  ��2Z2[2Z 4  ���R2\
�R 
cobj2\ o  ���Q�Q 0 x  2[ o  ���P�P  0 myprefsdevices myPrefsDevices2V m  ���O
�O 
doub�V  �U  2Q o      �N�N 0 	totalhash 	totalHash2O 2]�M2] Z  ��2^2_�L�K2^ > ��2`2a2` c  ��2b2c2b n  ��2d2e2d 4  ���J2f
�J 
cobj2f m  ���I�I %2e l ��2g�H�G2g n  ��2h2i2h 4  ���F2j
�F 
cobj2j o  ���E�E 0 x  2i o  ���D�D  0 myprefsdevices myPrefsDevices�H  �G  2c m  ���C
�C 
bool2a m  ���B
�B boovtrue2_ r  ��2k2l2k [  ��2m2n2m o  ���A�A 0 enabledcount enabledCount2n l ��2o�@�?2o c  ��2p2q2p l ��2r�>�=2r n  ��2s2t2s 4  ���<2u
�< 
cobj2u m  ���;�; 2t n  ��2v2w2v 4  ���:2x
�: 
cobj2x o  ���9�9 0 x  2w o  ���8�8  0 myprefsdevices myPrefsDevices�>  �=  2q m  ���7
�7 
long�@  �?  2l o      �6�6 0 enabledcount enabledCount�L  �K  �M  �a  �`  �c 0 x  2@ m  rs�5�5 2A n  s}2y2z2y m  z|�4
�4 
nmbr2z n sz2{2|2{ 2 xz�3
�3 
cobj2| o  sx�2�2  0 myprefsdevices myPrefsDevices�b  2> 2}2~2} l ���1�0�/�1  �0  �/  2~ 22�2 r  ��2�2�2� o  ���.�. 0 	totalhash 	totalHash2� n      2�2�2� 4  ���-2�
�- 
cobj2� m  ���,�, 2� o  ���+�+  0 myprefsgeneral myPrefsGeneral2� 2�2�2� l ���*�)�(�*  �)  �(  2� 2�2�2� l ���'2�2��'  2� "  show the hashrate in the UI   2� �2�2� 8   s h o w   t h e   h a s h r a t e   i n   t h e   U I2� 2�2�2� I  ���&2��%�& &0 updatehashratebar updateHashRateBar2� 2��$2� o  ���#�# 0 	totalhash 	totalHash�$  �%  2� 2�2�2� I  ���"2��!�" *0 updatehashratelabel updateHashRateLabel2� 2�� 2� o  ���� 0 	totalhash 	totalHash�   �!  2� 2�2�2� I  ������ *0 updatesharesreadout updateSharesReadout�  �  2� 2�2�2� l ������  �  �  2� 2�2�2� Z  �2�2���2� = �2�2�2� o  ���� 0 enabledcount enabledCount2� m  � ��  2� I  �2��� 0 setstatusline setStatusLine2� 2�2�2� m  2�2� �2�2� 8 N o   d e v i c e s   e n a b l e d ,   w a i t i n g &2� 2�2�2� m  	�
� boovfals2� 2�2�2� m  	
�� 2� 2��2� m  
2�2� �2�2�  �  �  �  �  2� 2�2�2� l ����  �  �  2� 2�2�2� Z  �2�2�2��2� ? 2�2�2� o  �� 0 	totalhash 	totalHash2� o  �
�
 0 priormaxhash priorMaxHash2� k   G2�2� 2�2�2� I   -�	2���	 0 setstatusline setStatusLine2� 2�2�2� m  !$2�2� �2�2�  M i n i n g2� 2�2�2� m  $%�
� boovfals2� 2�2�2� m  %&��  2� 2��2� m  &)2�2� �2�2�  �  �  2� 2�2�2� I  .?�2��� 0 setstatusline setStatusLine2� 2�2�2� b  /42�2�2� m  /22�2� �2�2� $ N e w   m a x   h a s h r a t e :  2� o  23�� 0 	totalhash 	totalHash2� 2�2�2� m  45�
� boovfals2� 2�2�2� m  58� �  2� 2���2� m  8;2�2� �2�2�  m a x h a s h��  �  2� 2���2� r  @G2�2�2� o  @A���� 0 	totalhash 	totalHash2� o      ���� 0 priormaxhash priorMaxHash��  2� 2�2�2� = JU2�2�2� n  JS2�2�2� m  QS��
�� 
nmbr2� n JQ2�2�2� 2 OQ��
�� 
cobj2� o  JO���� 0 revertstatus revertStatus2� m  ST���� 2� 2�2�2� Z  X{2�2�����2� > Xg2�2�2� n  Xc2�2�2� 4  `c��2�
�� 
cobj2� m  ab���� 2� l X`2�����2� n  X`2�2�2� 4 ]`��2�
�� 
cobj2� m  ^_������2� o  X]���� 0 revertstatus revertStatus��  ��  2� m  cf2�2� �2�2�  M i n i n g2� I  jw��2����� 0 setstatusline setStatusLine2� 2�2�2� m  kn2�2� �2�2�  M i n i n g2� 2�2�2� m  no��
�� boovfals2� 2�2�2� m  op����  2� 2���2� m  ps2�2� �2�2�  ��  ��  ��  ��  2� 2�2�2� = ~�2�2�2� n  ~�2�2�2� m  ����
�� 
nmbr2� n ~�2�3 2� 2 ����
�� 
cobj3  o  ~����� 0 revertstatus revertStatus2� m  ������  2� 3��3 l ����33��  3 ) # setStatusLine("Mining",false,0,"")   3 �33 F   s e t S t a t u s L i n e ( " M i n i n g " , f a l s e , 0 , " " )��  �  2� 333 l ����������  ��  ��  3 333 n ��3	3
3	 I  ����3���� 0 setmaxvalue_ setMaxValue_3 3��3 o  ������ 0 priormaxhash priorMaxHash��  ��  3
 o  ������ 0 hashratebar hashRateBar3 333 n ��333 I  ����3���� $0 setwarningvalue_ setWarningValue_3 3��3 ]  ��333 o  ������ 0 priormaxhash priorMaxHash3 m  ��33 ?�      ��  ��  3 o  ������ 0 hashratebar hashRateBar3 333 n ��333 I  ����3���� &0 setcriticalvalue_ setCriticalValue_3 3��3 ]  ��333 o  ������ 0 priormaxhash priorMaxHash3 m  ��33 ?���������  ��  3 o  ������ 0 hashratebar hashRateBar3 33 3 l ����������  ��  ��  3  3!3"3! I  ���������� 0 checkdevices checkDevices��  ��  3" 3#3$3# I  ���������� (0 updatedevicelistui updateDeviceListUI��  ��  3$ 3%3&3% l ����������  ��  ��  3& 3'3(3' l ����3)3*��  3) + % check for any excessive temperatures   3* �3+3+ J   c h e c k   f o r   a n y   e x c e s s i v e   t e m p e r a t u r e s3( 3,3-3, Y  �3.��3/30��3. Z  �	3132����31 F  �333433 > ��353635 l ��37���37 c  ��383938 n  ��3:3;3: 4  ���3<
� 
cobj3< m  ���� 3; n  ��3=3>3= 4  ���3?
� 
cobj3? o  ���� 0 y  3> o  ����  0 myprefsdevices myPrefsDevices39 m  ���
� 
ctxt��  �  36 m  ��3@3@ �3A3A  34 ? �3B3C3B l �3D��3D c  �3E3F3E n  �	3G3H3G 4  	�3I
� 
cobj3I m  �� 3H n  �3J3K3J 4  �3L
� 
cobj3L o  �� 0 y  3K o  ���  0 myprefsdevices myPrefsDevices3F m  	�
� 
doub�  �  3C m  ��  32 k  3M3M 3N3O3N l �3P3Q�  3P F @ we're monitoring temperature on this device, so check it out yo   3Q �3R3R �   w e ' r e   m o n i t o r i n g   t e m p e r a t u r e   o n   t h i s   d e v i c e ,   s o   c h e c k   i t   o u t   y o3O 3S3T3S l �3U3V�  3U � display dialog "monitoring temp!" & return & item 1 of item y of myPrefsDevices & return & (item 19 of item y of myPrefsDevices as real) & return & (item 23 of item y of myPrefsDevices as real) & return & (item 25 of item y of myPrefsDevices as text)   3V �3W3W�   d i s p l a y   d i a l o g   " m o n i t o r i n g   t e m p ! "   &   r e t u r n   &   i t e m   1   o f   i t e m   y   o f   m y P r e f s D e v i c e s   &   r e t u r n   &   ( i t e m   1 9   o f   i t e m   y   o f   m y P r e f s D e v i c e s   a s   r e a l )   &   r e t u r n   &   ( i t e m   2 3   o f   i t e m   y   o f   m y P r e f s D e v i c e s   a s   r e a l )   &   r e t u r n   &   ( i t e m   2 5   o f   i t e m   y   o f   m y P r e f s D e v i c e s   a s   t e x t )3T 3X�3X Z  3Y3Z��3Y F  M3[3\3[ ? 73]3^3] l %3_��3_ c  %3`3a3` n  !3b3c3b 4  !�3d
� 
cobj3d m   �� 3c n  3e3f3e 4  �3g
� 
cobj3g o  �� 0 y  3f o  ��  0 myprefsdevices myPrefsDevices3a m  !$�
� 
doub�  �  3^ l %63h��3h c  %63i3j3i n  %23k3l3k 4  -2�3m
� 
cobj3m m  .1�� 3l n  %-3n3o3n 4  *-�3p
� 
cobj3p o  +,�� 0 y  3o o  %*��  0 myprefsdevices myPrefsDevices3j m  25�
� 
doub�  �  3\ = :K3q3r3q l :I3s��3s c  :I3t3u3t n  :G3v3w3v 4  BG�3x
� 
cobj3x m  CF�� 3w n  :B3y3z3y 4  ?B�3{
� 
cobj3{ o  @A�� 0 y  3z o  :?��  0 myprefsdevices myPrefsDevices3u m  GH�
� 
bool�  �  3r m  IJ�
� boovfals3Z Z  P3|3}3~�3| = Pc33�3 l P_3���3� c  P_3�3�3� n  P]3�3�3� 4  X]�3�
� 
cobj3� m  Y\�� 3� n  PX3�3�3� 4  UX�3�
� 
cobj3� o  VW�� 0 y  3� o  PU��  0 myprefsdevices myPrefsDevices3� m  ]^�
� 
ctxt�  �  3� m  _b3�3� �3�3�  p a u s e 5 m i n s3} k  f@3�3� 3�3�3� l ff�3�3��  3� L F pause mining on this device, set a timer to resume it after 5 minutes   3� �3�3� �   p a u s e   m i n i n g   o n   t h i s   d e v i c e ,   s e t   a   t i m e r   t o   r e s u m e   i t   a f t e r   5   m i n u t e s3� 3�3�3� I  f��3��� 0 sendcommand sendCommand3� 3�3�3� b  gx3�3�3� n  gt3�3�3� 4  ot�3�
� 
cobj3� m  ps�� 3� n  go3�3�3� 4  lo�3�
� 
cobj3� o  mn�� 0 y  3� o  gl��  0 myprefsdevices myPrefsDevices3� m  tw3�3� �3�3�  d i s a b l e3� 3�3�3� n  x�3�3�3� 4  ���3�
� 
cobj3� m  ���� 3� n  x�3�3�3� 4  }��~3�
�~ 
cobj3� o  ~�}�} 0 y  3� o  x}�|�|  0 myprefsdevices myPrefsDevices3� 3��{3� m  ���z
�z boovtrue�{  �  3� 3�3�3� r  ��3�3�3� m  ���y
�y boovtrue3� n      3�3�3� 4  ���x3�
�x 
cobj3� m  ���w�w 3� n  ��3�3�3� 4  ���v3�
�v 
cobj3� o  ���u�u 0 y  3� o  ���t�t  0 myprefsdevices myPrefsDevices3� 3�3�3� r  ��3�3�3� m  ��3�3� �3�3�  c o o l d o w n3� n      3�3�3� 4  ���s3�
�s 
cobj3� m  ���r�r 3� n  ��3�3�3� 4  ���q3�
�q 
cobj3� o  ���p�p 0 y  3� o  ���o�o  0 myprefsdevices myPrefsDevices3� 3�3�3� r  ��3�3�3� n ��3�3�3� 4  ���n3�
�n 
pcls3� m  ��3�3� �3�3�  N S T i m e r3� m  ���m
�m misccura3� o      �l�l 0 cooldowntimer cooldownTimer3� 3�3�3� r  ��3�3�3� n ��3�3�3� I  ���k3��j�k �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_3� 3�3�3� ]  ��3�3�3� m  ���i�i 3� m  ���h�h <3� 3�3�3�  f  ��3� 3�3�3� m  ��3�3� �3�3�  o f f C o o l d o w n :3� 3�3�3� l ��3��g�f3� c  ��3�3�3� n  ��3�3�3� 4  ���e3�
�e 
cobj3� m  ���d�d 3� n  ��3�3�3� 4  ���c3�
�c 
cobj3� o  ���b�b 0 y  3� o  ���a�a  0 myprefsdevices myPrefsDevices3� m  ���`
�` 
ctxt�g  �f  3� 3��_3� m  ���^
�^ boovfals�_  �j  3� n ��3�3�3� o  ���]�] 0 nstimer NSTimer3� m  ���\
�\ misccura3� o      �[�[ 0 cooldowntimer cooldownTimer3� 3�3�3� I  �)�Z3��Y�Z 
0 msglog  3� 3�3�3� b  �"3�3�3� b  �3�3�3� b  �3�3�3� b  �
3�3�3� b  ��3�3�3� b  ��3�3�3� m  ��3�3� �3�3� : T h e   t e m p e r a t u r e   t h r e s h o l d   o n  3� I  ���X3��W�X 0 getdevicename getDeviceName3� 3��V3� o  ���U�U 0 y  �V  �W  3� m  ��3�3� �3�3� :   h a s   b e e n   e x c e e d e d   ( c u r r e n t :  3� l �	3��T�S3� c  �	4 44  n  �444 4  �R4
�R 
cobj4 m  �Q�Q 4 n  �444 4  ��P4
�P 
cobj4 o   �O�O 0 y  4 o  ���N�N  0 myprefsdevices myPrefsDevices4 m  �M
�M 
ctxt�T  �S  3� m  
44 �4	4	  �   t h r e s h o l d :  3� l 4
�L�K4
 c  444 n  444 4  �J4
�J 
cobj4 m  �I�I 4 n  444 4  �H4
�H 
cobj4 o  �G�G 0 y  4 o  �F�F  0 myprefsdevices myPrefsDevices4 m  �E
�E 
ctxt�L  �K  3� m  !44 �44 B � ) .     B e g i n n i n g   5   m i n u t e   c o o l d o w n .3� 4�D4 m  "%44 �44  w a r n i n g�D  �Y  3� 4�C4 I  *@�B4�A�B 0 setstatusline setStatusLine4 444 b  +5444 I  +1�@4�?�@ 0 getdevicename getDeviceName4 4�>4 o  ,-�=�= 0 y  �>  �?  4 m  144 4  �4!4!  o n   c o o l d o w n4 4"4#4" m  56�<
�< boovfals4# 4$4%4$ m  69�;�; 4% 4&�:4& m  9<4'4' �4(4(  t e m p e r a t u r e�:  �A  �C  3~ 4)4*4) = CV4+4,4+ l CR4-�9�84- c  CR4.4/4. n  CP404140 4  KP�742
�7 
cobj42 m  LO�6�6 41 n  CK434443 4  HK�545
�5 
cobj45 o  IJ�4�4 0 y  44 o  CH�3�3  0 myprefsdevices myPrefsDevices4/ m  PQ�2
�2 
ctxt�9  �8  4, m  RU4646 �4747 
 a l e r t4* 48�148 k  Y�4949 4:4;4: l YY�04<4=�0  4< #  anything else we need to do?   4= �4>4> :   a n y t h i n g   e l s e   w e   n e e d   t o   d o ?4; 4?4@4? I Y^�/�.�-
�/ .miscactvnull��� ��� null�.  �-  4@ 4A4B4A I  _��,4C�+�, 
0 msglog  4C 4D4E4D b  `�4F4G4F b  `�4H4I4H b  `�4J4K4J b  `�4L4M4L b  `�4N4O4N b  `�4P4Q4P b  `z4R4S4R b  `v4T4U4T b  `r4V4W4V b  `n4X4Y4X b  `j4Z4[4Z m  `c4\4\ �4]4] : T h e   t e m p e r a t u r e   t h r e s h o l d   o n  4[ I  ci�*4^�)�* 0 getdevicename getDeviceName4^ 4_�(4_ o  de�'�' 0 y  �(  �)  4Y m  jm4`4` �4a4a &   h a s   b e e n   e x c e e d e d .4W o  nq�&
�& 
ret 4U o  ru�%
�% 
ret 4S m  vy4b4b �4c4c * C u r r e n t   t e m p e r a t u r e :  4Q l z�4d�$�#4d c  z�4e4f4e n  z�4g4h4g 4  ���"4i
�" 
cobj4i m  ���!�! 4h n  z�4j4k4j 4  �� 4l
�  
cobj4l o  ���� 0 y  4k o  z��  0 myprefsdevices myPrefsDevices4f m  ���
� 
ctxt�$  �#  4O m  ��4m4m �4n4n  �4M o  ���
� 
ret 4K m  ��4o4o �4p4p . T h r e s h o l d   t e m p e r a t u r e :  4I l ��4q��4q c  ��4r4s4r n  ��4t4u4t 4  ���4v
� 
cobj4v m  ���� 4u n  ��4w4x4w 4  ���4y
� 
cobj4y o  ���� 0 y  4x o  ����  0 myprefsdevices myPrefsDevices4s m  ���
� 
ctxt�  �  4G m  ��4z4z �4{4{  �4E 4|�4| m  ��4}4} �4~4~ 
 a l e r t�  �+  4B 44�4 r  ��4�4�4� n ��4�4�4� 4  ���4�
� 
pcls4� m  ��4�4� �4�4�  N S T i m e r4� m  ���
� misccura4� o      �� 20 temperaturewarningtimer temperatureWarningTimer4� 4�4�4� r  ��4�4�4� n ��4�4�4� I  ���4��� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_4� 4�4�4� m  ���� 4� 4�4�4�  f  ��4� 4�4�4� m  ��4�4� �4�4�  o f f T e m p W a r n i n g :4� 4�4�4� l ��4���4� c  ��4�4�4� n  ��4�4�4� 4  ���
4�
�
 
cobj4� m  ���	�	 4� n  ��4�4�4� 4  ���4�
� 
cobj4� o  ���� 0 y  4� o  ����  0 myprefsdevices myPrefsDevices4� m  ���
� 
ctxt�  �  4� 4��4� m  ���
� boovfals�  �  4� n ��4�4�4� o  ���� 0 nstimer NSTimer4� m  ���
� misccura4� o      � �  20 temperaturewarningtimer temperatureWarningTimer4� 4���4� r  ��4�4�4� m  ��4�4� �4�4�  a l e r t h o l d4� n      4�4�4� 4  ����4�
�� 
cobj4� m  ������ 4� n  ��4�4�4� 4  ����4�
�� 
cobj4� o  ������ 0 y  4� o  ������  0 myprefsdevices myPrefsDevices��  �1  �  �  �  �  ��  ��  �� 0 y  3/ m  ������ 30 l ��4�����4� n  ��4�4�4� m  ����
�� 
nmbr4� n ��4�4�4� 2 ����
�� 
cobj4� o  ������  0 myprefsdevices myPrefsDevices��  ��  ��  3- 4���4� l ��������  ��  ��  ��  (� 4�4�4� l     ��������  ��  ��  4� 4�4�4� i  ��4�4�4� I      �������� (0 updatedevicelistui updateDeviceListUI��  ��  4� k    )4�4� 4�4�4� l     ��������  ��  ��  4� 4�4�4� Y    '4���4�4���4� k   "4�4� 4�4�4� l   ��������  ��  ��  4� 4�4�4� l   ��4�4���  4� 5 / create a UI for this device if none exists yet   4� �4�4� ^   c r e a t e   a   U I   f o r   t h i s   d e v i c e   i f   n o n e   e x i s t s   y e t4� 4�4�4� Z    54�4�����4� l   $4�����4� =   $4�4�4� I   "��4���
�� .corecnte****       ****4� l   4�����4� n    4�4�4� 4    ��4�
�� 
cobj4� m    ���� &4� l   4�����4� n    4�4�4� 4    ��4�
�� 
cobj4� o    ���� 0 x  4� o    ����  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  4� m   " #����  ��  ��  4� k   ' 14�4� 4�4�4� l  ' '��4�4���  4� Z T set item 38 of (item x of myPrefsDevices) to AppHelper's createDeviceUI_(x) as list   4� �4�4� �   s e t   i t e m   3 8   o f   ( i t e m   x   o f   m y P r e f s D e v i c e s )   t o   A p p H e l p e r ' s   c r e a t e D e v i c e U I _ ( x )   a s   l i s t4� 4���4� n  ' 14�4�4� I   , 1��4����� "0 createdeviceui_ createDeviceUI_4� 4���4� o   , -���� 0 x  ��  ��  4� o   ' ,���� 0 	apphelper 	AppHelper��  ��  ��  4� 4�4�4� l  6 6��������  ��  ��  4� 4���4� Z   6"4�4�����4� =  6 E4�4�4� l  6 C4�����4� c   6 C4�4�4� n   6 A4�4�4� 4   > A��4�
�� 
cobj4� m   ? @���� 4� l  6 >4���4� n   6 >4�4�4� 4   ; >�4�
� 
cobj4� o   < =�� 0 x  4� o   6 ;��  0 myprefsdevices myPrefsDevices�  �  4� m   A B�
� 
bool��  ��  4� m   C D�
� boovtrue4� k   H4�4� 4�4�4� l  H H����  �  �  4� 4�4�4� l  H H�4�4��  4�   set hashrate bar				   4� �4�4� *   s e t   h a s h r a t e   b a r 	 	 	 	4� 5 55  l  H H�55�  5 H B if (item 3 of (item x of myPrefsDevices) as boolean) is true then   5 �55 �   i f   ( i t e m   3   o f   ( i t e m   x   o f   m y P r e f s D e v i c e s )   a s   b o o l e a n )   i s   t r u e   t h e n5 555 n  H g555 I   V g�5	�� "0 setdoublevalue_ setDoubleValue_5	 5
�5
 c   V c555 n   V a555 4   ^ a�5
� 
cobj5 m   _ `�� 5 l  V ^5��5 n   V ^555 4   [ ^�5
� 
cobj5 o   \ ]�� 0 x  5 o   V [��  0 myprefsdevices myPrefsDevices�  �  5 m   a b�
� 
doub�  �  5 l  H V5��5 n   H V555 4   S V�5
� 
cobj5 m   T U�� 5 l  H S5��5 n   H S555 4   P S�5
� 
cobj5 m   Q R�� &5 l  H P5���5 n   H P555 4   M P��5
�� 
cobj5 o   N O���� 0 x  5 o   H M����  0 myprefsdevices myPrefsDevices�  ��  �  �  �  �  5 5 5!5  l  h h��5"5#��  5"   end if   5# �5$5$    e n d   i f5! 5%5&5% l  h h��������  ��  ��  5& 5'5(5' l  h h��5)5*��  5)   set if it's on or not   5* �5+5+ ,   s e t   i f   i t ' s   o n   o r   n o t5( 5,5-5, n  h �5.5/5. I   v ���50���� 0 	setstate_ 	setState_50 51��51 c   v �525352 n   v �545554 4   ~ ���56
�� 
cobj56 m    ����� 55 l  v ~57����57 n   v ~585958 4   { ~��5:
�� 
cobj5: o   | }���� 0 x  59 o   v {����  0 myprefsdevices myPrefsDevices��  ��  53 m   � ���
�� 
bool��  ��  5/ l  h v5;����5; n   h v5<5=5< 4   s v��5>
�� 
cobj5> m   t u���� 5= l  h s5?����5? n   h s5@5A5@ 4   p s��5B
�� 
cobj5B m   q r���� &5A l  h p5C����5C n   h p5D5E5D 4   m p��5F
�� 
cobj5F o   n o���� 0 x  5E o   h m��  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  ��  5- 5G5H5G l  � ��~�}�|�~  �}  �|  5H 5I5J5I l  � ��{5K5L�{  5K   set hashrate text   5L �5M5M $   s e t   h a s h r a t e   t e x t5J 5N5O5N Z   �5P5Q�z5R5P =  � �5S5T5S l  � �5U�y�x5U c   � �5V5W5V n   � �5X5Y5X 4   � ��w5Z
�w 
cobj5Z m   � ��v�v 5Y n   � �5[5\5[ 4   � ��u5]
�u 
cobj5] o   � ��t�t 0 x  5\ o   � ��s�s  0 myprefsdevices myPrefsDevices5W m   � ��r
�r 
doub�y  �x  5T m   � ��q�q  5Q k   � �5^5^ 5_5`5_ n  � �5a5b5a I   � ��p5c�o�p "0 setstringvalue_ setStringValue_5c 5d�n5d c   � �5e5f5e n   � �5g5h5g 4   � ��m5i
�m 
cobj5i m   � ��l�l 5h n   � �5j5k5j 4   � ��k5l
�k 
cobj5l o   � ��j�j 0 x  5k o   � ��i�i  0 myprefsdevices myPrefsDevices5f m   � ��h
�h 
ctxt�n  �o  5b l  � �5m�g�f5m n   � �5n5o5n 4   � ��e5p
�e 
cobj5p m   � ��d�d 5o l  � �5q�c�b5q n   � �5r5s5r 4   � ��a5t
�a 
cobj5t m   � ��`�` &5s l  � �5u�_�^5u n   � �5v5w5v 4   � ��]5x
�] 
cobj5x o   � ��\�\ 0 x  5w o   � ��[�[  0 myprefsdevices myPrefsDevices�_  �^  �c  �b  �g  �f  5` 5y�Z5y n  � �5z5{5z I   � ��Y5|�X�Y 0 settextcolor_ setTextColor_5| 5}�W5} n  � �5~55~ o   � ��V�V 0 	graycolor 	grayColor5 o   � ��U�U 0 nscolor NSColor�W  �X  5{ l  � �5��T�S5� n   � �5�5�5� 4   � ��R5�
�R 
cobj5� m   � ��Q�Q 5� l  � �5��P�O5� n   � �5�5�5� 4   � ��N5�
�N 
cobj5� m   � ��M�M &5� l  � �5��L�K5� n   � �5�5�5� 4   � ��J5�
�J 
cobj5� o   � ��I�I 0 x  5� o   � ��H�H  0 myprefsdevices myPrefsDevices�L  �K  �P  �O  �T  �S  �Z  �z  5R k   �5�5� 5�5�5� n  � �5�5�5� I   � ��G5��F�G "0 setstringvalue_ setStringValue_5� 5��E5� c   � �5�5�5� I   � ��D5��C�D $0 gethashratelabel getHashRateLabel5� 5�5�5� n   � �5�5�5� 4   � ��B5�
�B 
cobj5� m   � ��A�A 5� n   � �5�5�5� 4   � ��@5�
�@ 
cobj5� o   � ��?�? 0 x  5� o   � ��>�>  0 myprefsdevices myPrefsDevices5� 5�5�5� m   � ��=
�= boovtrue5� 5��<5� m   � ��;
�; boovfals�<  �C  5� m   � ��:
�: 
ctxt�E  �F  5� l  � �5��9�85� n   � �5�5�5� 4   � ��75�
�7 
cobj5� m   � ��6�6 5� l  � �5��5�45� n   � �5�5�5� 4   � ��35�
�3 
cobj5� m   � ��2�2 &5� l  � �5��1�05� n   � �5�5�5� 4   � ��/5�
�/ 
cobj5� o   � ��.�. 0 x  5� o   � ��-�-  0 myprefsdevices myPrefsDevices�1  �0  �5  �4  �9  �8  5� 5�5�5� l  � ��,5�5��,  5� x r (item 4 of (item 38 of (item x of myPrefsDevices)))'s setStringValue_(item 1 of item x of myPrefsDevices as text)   5� �5�5� �   ( i t e m   4   o f   ( i t e m   3 8   o f   ( i t e m   x   o f   m y P r e f s D e v i c e s ) ) ) ' s   s e t S t r i n g V a l u e _ ( i t e m   1   o f   i t e m   x   o f   m y P r e f s D e v i c e s   a s   t e x t )5� 5��+5� n  �5�5�5� I  �*5��)�* 0 settextcolor_ setTextColor_5� 5��(5� n 5�5�5� o  �'�' 0 
blackcolor 
blackColor5� o  �&�& 0 nscolor NSColor�(  �)  5� l  �5��%�$5� n   �5�5�5� 4  �#5�
�# 
cobj5� m  	
�"�" 5� l  �5��!� 5� n   �5�5�5� 4  �5�
� 
cobj5� m  �� &5� l  �5���5� n   �5�5�5� 4  �5�
� 
cobj5� o  �� 0 x  5� o   ���  0 myprefsdevices myPrefsDevices�  �  �!  �   �%  �$  �+  5O 5�5�5� l ����  �  �  5� 5�5�5� r  25�5�5� l &5���5� c  &5�5�5� n  $5�5�5� 4  !$�5�
� 
cobj5� m  "#�� 5� l !5���5� n  !5�5�5� 4  !�5�
� 
cobj5� o   �� 0 x  5� o  ��  0 myprefsdevices myPrefsDevices�  �  5� m  $%�
� 
doub�  �  5� n      5�5�5� 4  .1�5�
� 
cobj5� m  /0�
�
 5� l &.5��	�5� n  &.5�5�5� 4  +.�5�
� 
cobj5� o  ,-�� 0 x  5� o  &+��  0 myprefsdevices myPrefsDevices�	  �  5� 5�5�5� r  3P5�5�5� l 3B5���5� c  3B5�5�5� n  3@5�5�5� 4  ;@�5�
� 
cobj5� m  <?�� 5� l 3;5�� ��5� n  3;5�5�5� 4  8;��5�
�� 
cobj5� o  9:���� 0 x  5� o  38����  0 myprefsdevices myPrefsDevices�   ��  5� m  @A��
�� 
doub�  �  5� n      5�5�5� 4  JO��5�
�� 
cobj5� m  KN���� 5� l BJ5�����5� n  BJ5�5�5� 4  GJ��5�
�� 
cobj5� o  HI���� 0 x  5� o  BG����  0 myprefsdevices myPrefsDevices��  ��  5� 5�5�5� r  Qn5�5�5� l Q`5�����5� c  Q`5�5�5� n  Q^5�5�5� 4  Y^��5�
�� 
cobj5� m  Z]���� 5� l QY5�����5� n  QY5�5�5� 4  VY��5�
�� 
cobj5� o  WX���� 0 x  5� o  QV����  0 myprefsdevices myPrefsDevices��  ��  5� m  ^_��
�� 
doub��  ��  5� n      5�6 5� 4  hm��6
�� 
cobj6 m  il���� 6  l `h6����6 n  `h666 4  eh��6
�� 
cobj6 o  fg���� 0 x  6 o  `e����  0 myprefsdevices myPrefsDevices��  ��  5� 666 l oo��������  ��  ��  6 66	6 l oo��6
6��  6
 V P check if we need to adjust the hashrate bar's maximum value (broke our record?)   6 �66 �   c h e c k   i f   w e   n e e d   t o   a d j u s t   t h e   h a s h r a t e   b a r ' s   m a x i m u m   v a l u e   ( b r o k e   o u r   r e c o r d ? )6	 666 Z  o�666��6 F  o�666 = ox666 o  ot���� 0 currentcoin currentCoin6 m  tw66 �66  B i t c o i n6 = {�666 l {�6����6 n  {�666 4  ����6
�� 
cobj6 m  ������ 6 l {�6����6 n  {�66 6 4  ����6!
�� 
cobj6! o  ������ 0 x  6  o  {�����  0 myprefsdevices myPrefsDevices��  ��  ��  ��  6 l ��6"����6" n  ��6#6$6# 4  ����6%
�� 
cobj6% m  ������ 6$ l ��6&����6& n  ��6'6(6' 4  ����6)
�� 
cobj6) o  ������ 0 x  6( o  ������  0 myprefsdevices myPrefsDevices��  ��  ��  ��  6 k  �6*6* 6+6,6+ n ��6-6.6- I  ����6/���� 0 setmaxvalue_ setMaxValue_6/ 60��60 c  ��616261 n  ��636463 4  ����65
�� 
cobj65 m  ������ 64 l ��66����66 n  ��676867 4  ����69
�� 
cobj69 o  ������ 0 x  68 o  ������  0 myprefsdevices myPrefsDevices��  ��  62 m  ����
�� 
doub��  ��  6. l ��6:߿߾6: n  ��6;6<6; 4  ��߽6=
߽ 
cobj6= m  ��߼߼ 6< l ��6>߻ߺ6> n  ��6?6@6? 4  ��߹6A
߹ 
cobj6A m  ��߸߸ &6@ l ��6B߷߶6B n  ��6C6D6C 4  ��ߵ6E
ߵ 
cobj6E o  ��ߴߴ 0 x  6D o  ��߳߳  0 myprefsdevices myPrefsDevices߷  ߶  ߻  ߺ  ߿  ߾  6, 6F6G6F n ��6H6I6H I  ��߲6J߱߲ $0 setwarningvalue_ setWarningValue_6J 6K߰6K ]  ��6L6M6L l ��6N߯߮6N c  ��6O6P6O n  ��6Q6R6Q 4  ��߭6S
߭ 
cobj6S m  ��߬߬ 6R l ��6T߫ߪ6T n  ��6U6V6U 4  ��ߩ6W
ߩ 
cobj6W o  ��ߨߨ 0 x  6V o  ��ߧߧ  0 myprefsdevices myPrefsDevices߫  ߪ  6P m  ��ߦ
ߦ 
doub߯  ߮  6M m  ��6X6X ?�      ߰  ߱  6I l ��6Yߥߤ6Y n  ��6Z6[6Z 4  ��ߣ6\
ߣ 
cobj6\ m  ��ߢߢ 6[ l ��6]ߡߠ6] n  ��6^6_6^ 4  ��ߟ6`
ߟ 
cobj6` m  ��ߞߞ &6_ l ��6aߝߜ6a n  ��6b6c6b 4  ��ߛ6d
ߛ 
cobj6d o  ��ߚߚ 0 x  6c o  ��ߙߙ  0 myprefsdevices myPrefsDevicesߝ  ߜ  ߡ  ߠ  ߥ  ߤ  6G 6eߘ6e n �6f6g6f I  �ߗ6hߖߗ &0 setcriticalvalue_ setCriticalValue_6h 6iߕ6i ]  �6j6k6j l ��6lߔߓ6l c  ��6m6n6m n  ��6o6p6o 4  ��ߒ6q
ߒ 
cobj6q m  ��ߑߑ 6p l ��6rߐߏ6r n  ��6s6t6s 4  ��ߎ6u
ߎ 
cobj6u o  ��ߍߍ 0 x  6t o  ��ߌߌ  0 myprefsdevices myPrefsDevicesߐ  ߏ  6n m  ��ߋ
ߋ 
doubߔ  ߓ  6k m  �6v6v ?�������ߕ  ߖ  6g l ��6wߊ߉6w n  ��6x6y6x 4  ��߈6z
߈ 
cobj6z m  ��߇߇ 6y l ��6{߆߅6{ n  ��6|6}6| 4  ��߄6~
߄ 
cobj6~ m  ��߃߃ &6} l ��6߂߁6 n  ��6�6�6� 4  ��߀6�
߀ 
cobj6� o  ���� 0 x  6� o  ���~�~  0 myprefsdevices myPrefsDevices߂  ߁  ߆  ߅  ߊ  ߉  ߘ  6 6�6�6� F  	36�6�6� = 	6�6�6� o  	�}�} 0 currentcoin currentCoin6� m  6�6� �6�6�  L i t e c o i n6� = 16�6�6� l  6��|�{6� n   6�6�6� 4   �z6�
�z 
cobj6� m  �y�y 6� l 6��x�w6� n  6�6�6� 4  �v6�
�v 
cobj6� o  �u�u 0 x  6� o  �t�t  0 myprefsdevices myPrefsDevices�x  �w  �|  �{  6� l  06��s�r6� n   06�6�6� 4  +0�q6�
�q 
cobj6� m  ,/�p�p 6� l  +6��o�n6� n   +6�6�6� 4  (+�m6�
�m 
cobj6� m  )*�l�l &6� l  (6��k�j6� n   (6�6�6� 4  %(�i6�
�i 
cobj6� o  &'�h�h 0 x  6� o   %�g�g  0 myprefsdevices myPrefsDevices�k  �j  �o  �n  �s  �r  6� 6��f6� k  6�6�6� 6�6�6� n 6W6�6�6� I  DW�e6��d�e 0 setmaxvalue_ setMaxValue_6� 6��c6� c  DS6�6�6� n  DQ6�6�6� 4  LQ�b6�
�b 
cobj6� m  MP�a�a 6� l DL6��`�_6� n  DL6�6�6� 4  IL�^6�
�^ 
cobj6� o  JK�]�] 0 x  6� o  DI�\�\  0 myprefsdevices myPrefsDevices�`  �_  6� m  QR�[
�[ 
doub�c  �d  6� l 6D6��Z�Y6� n  6D6�6�6� 4  AD�X6�
�X 
cobj6� m  BC�W�W 6� l 6A6��V�U6� n  6A6�6�6� 4  >A�T6�
�T 
cobj6� m  ?@�S�S &6� l 6>6��R�Q6� n  6>6�6�6� 4  ;>�P6�
�P 
cobj6� o  <=�O�O 0 x  6� o  6;�N�N  0 myprefsdevices myPrefsDevices�R  �Q  �V  �U  �Z  �Y  6� 6�6�6� n X}6�6�6� I  f}�M6��L�M $0 setwarningvalue_ setWarningValue_6� 6��K6� ]  fy6�6�6� l fu6��J�I6� c  fu6�6�6� n  fs6�6�6� 4  ns�H6�
�H 
cobj6� m  or�G�G 6� l fn6��F�E6� n  fn6�6�6� 4  kn�D6�
�D 
cobj6� o  lm�C�C 0 x  6� o  fk�B�B  0 myprefsdevices myPrefsDevices�F  �E  6� m  st�A
�A 
doub�J  �I  6� m  ux6�6� ?�      �K  �L  6� l Xf6��@�?6� n  Xf6�6�6� 4  cf�>6�
�> 
cobj6� m  de�=�= 6� l Xc6��<�;6� n  Xc6�6�6� 4  `c�:6�
�: 
cobj6� m  ab�9�9 &6� l X`6��8�76� n  X`6�6�6� 4  ]`�66�
�6 
cobj6� o  ^_�5�5 0 x  6� o  X]�4�4  0 myprefsdevices myPrefsDevices�8  �7  �<  �;  �@  �?  6� 6��36� n ~�6�6�6� I  ���26��1�2 &0 setcriticalvalue_ setCriticalValue_6� 6��06� ]  ��6�6�6� l ��6��/�.6� c  ��6�6�6� n  ��6�6�6� 4  ���-6�
�- 
cobj6� m  ���,�, 6� l ��6��+�*6� n  ��6�6�6� 4  ���)6�
�) 
cobj6� o  ���(�( 0 x  6� o  ���'�'  0 myprefsdevices myPrefsDevices�+  �*  6� m  ���&
�& 
doub�/  �.  6� m  ��6�6� ?��������0  �1  6� l ~�6��%�$6� n  ~�6�6�6� 4  ���#6�
�# 
cobj6� m  ���"�" 6� l ~�6��!� 6� n  ~�6�6�6� 4  ���6�
� 
cobj6� m  ���� &6� l ~�6���6� n  ~�6�6�6� 4  ���6�
� 
cobj6� o  ���� 0 x  6� o  ~���  0 myprefsdevices myPrefsDevices�  �  �!  �   �%  �$  �3  �f  ��  6 6�6�6� l ������  �  �  6� 6�6�6� l ���6�7 �  6�   update shares   7  �77    u p d a t e   s h a r e s6� 777 l ���77�  7 � | (item 10 of (item 38 of (item x of myPrefsDevices)))'s setTitle_("Accepted: " & item 1 of item x of myPrefsDevices as text)   7 �77 �   ( i t e m   1 0   o f   ( i t e m   3 8   o f   ( i t e m   x   o f   m y P r e f s D e v i c e s ) ) ) ' s   s e t T i t l e _ ( " A c c e p t e d :   "   &   i t e m   1   o f   i t e m   x   o f   m y P r e f s D e v i c e s   a s   t e x t )7 777 n ��7	7
7	 I  ���7�� 0 	settitle_ 	setTitle_7 7�7 c  ��777 b  ��777 m  ��77 �77  A c c e p t e d :  7 n  ��777 4  ���7
� 
cobj7 m  ���� 7 n  ��777 4  ���7
� 
cobj7 o  ���� 0 x  7 o  ����  0 myprefsdevices myPrefsDevices7 m  ���
� 
ctxt�  �  7
 l ��7�
�	7 n  ��777 4  ���7
� 
cobj7 m  ���� 
7 l ��7��7 n  ��777 4  ���7 
� 
cobj7  m  ���� &7 l ��7!��7! n  ��7"7#7" 4  ��� 7$
�  
cobj7$ o  ������ 0 x  7# o  ������  0 myprefsdevices myPrefsDevices�  �  �  �  �
  �	  7 7%7&7% n ��7'7(7' I  ����7)���� 0 	settitle_ 	setTitle_7) 7*��7* c  ��7+7,7+ b  ��7-7.7- m  ��7/7/ �7070  R e j e c t e d :  7. n  ��717271 4  ����73
�� 
cobj73 m  ������ 72 n  ��747574 4  ����76
�� 
cobj76 o  ������ 0 x  75 o  ������  0 myprefsdevices myPrefsDevices7, m  ����
�� 
ctxt��  ��  7( l ��77����77 n  ��787978 4  ����7:
�� 
cobj7: m  ������ 79 l ��7;����7; n  ��7<7=7< 4  ����7>
�� 
cobj7> m  ������ &7= l ��7?����7? n  ��7@7A7@ 4  ����7B
�� 
cobj7B o  ������ 0 x  7A o  ������  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  ��  7& 7C7D7C n �7E7F7E I  ��7G���� 0 	settitle_ 	setTitle_7G 7H��7H c  7I7J7I b  7K7L7K m  	7M7M �7N7N  H W   e r r o r s :  7L n  	7O7P7O 4  ��7Q
�� 
cobj7Q m  ���� 7P n  	7R7S7R 4  ��7T
�� 
cobj7T o  ���� 0 x  7S o  	����  0 myprefsdevices myPrefsDevices7J m  ��
�� 
ctxt��  ��  7F l �7U����7U n  �7V7W7V 4  ��7X
�� 
cobj7X m  ���� 7W l �7Y����7Y n  �7Z7[7Z 4   ��7\
�� 
cobj7\ m  ���� &7[ l � 7]����7] n  � 7^7_7^ 4  � ��7`
�� 
cobj7` o  ������ 0 x  7_ o  ������  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  ��  7D 7a7b7a l ��������  ��  ��  7b 7c7d7c l ��7e7f��  7e   utility   7f �7g7g    u t i l i t y7d 7h7i7h n E7j7k7j I  .E��7l���� 0 	settitle_ 	setTitle_7l 7m��7m c  .A7n7o7n b  .?7p7q7p m  .17r7r �7s7s  U t i l i t y :  7q n  1>7t7u7t 4  9>��7v
�� 
cobj7v m  :=���� #7u n  197w7x7w 4  69��7y
�� 
cobj7y o  78���� 0 x  7x o  16����  0 myprefsdevices myPrefsDevices7o m  ?@��
�� 
ctxt��  ��  7k l .7z����7z n  .7{7|7{ 4  ).��7}
�� 
cobj7} m  *-���� 7| l )7~��޿7~ n  )77�7 4  &)޾7�
޾ 
cobj7� m  '(޽޽ &7� l &7�޼޻7� n  &7�7�7� 4  #&޺7�
޺ 
cobj7� o  $%޹޹ 0 x  7� o  #޸޸  0 myprefsdevices myPrefsDevices޼  ޻  ��  ޿  ��  ��  7i 7�7�7� l FF޷޶޵޷  ޶  ޵  7� 7�7�7� l FF޴7�7�޴  7� 0 * update lifetime shares (if any yet exist)   7� �7�7� T   u p d a t e   l i f e t i m e   s h a r e s   ( i f   a n y   y e t   e x i s t )7� 7�޳7� Z  F7�7�޲ޱ7� > FZ7�7�7� l FV7�ްޯ7� n  FV7�7�7� 4  QVޮ7�
ޮ 
cobj7� m  RUޭޭ 7� l FQ7�ެޫ7� n  FQ7�7�7� 4  NQު7�
ު 
cobj7� m  OPީީ &7� l FN7�ިާ7� n  FN7�7�7� 4  KNަ7�
ަ 
cobj7� o  LMޥޥ 0 x  7� o  FKޤޤ  0 myprefsdevices myPrefsDevicesި  ާ  ެ  ޫ  ް  ޯ  7� m  VY7�7� �7�7�  7� k  ]7�7� 7�7�7� n ]�7�7�7� I  m�ޣ7�ޢޣ 0 	settitle_ 	setTitle_7� 7�ޡ7� c  m�7�7�7� b  m�7�7�7� m  mp7�7� �7�7�  A c c e p t e d :  7� I  p�ޠ7�ޟޠ 0 roundnumber roundNumber7� 7�7�7� [  q�7�7�7� l q�7�ޞޝ7� c  q�7�7�7� n  q~7�7�7� 4  y~ޜ7�
ޜ 
cobj7� m  z}ޛޛ 7� n  qy7�7�7� 4  vyޚ7�
ޚ 
cobj7� o  wxޙޙ 0 x  7� o  qvޘޘ  0 myprefsdevices myPrefsDevices7� m  ~ޗ
ޗ 
doubޞ  ޝ  7� l ��7�ޖޕ7� c  ��7�7�7� n  ��7�7�7� 4  ��ޔ7�
ޔ 
cobj7� m  ��ޓޓ 7� n  ��7�7�7� 4  ��ޒ7�
ޒ 
cobj7� o  ��ޑޑ 0 x  7� o  ��ސސ  0 myprefsdevices myPrefsDevices7� m  ��ޏ
ޏ 
doubޖ  ޕ  7� 7�ގ7� m  ��ލލ  ގ  ޟ  7� m  ��ތ
ތ 
ctxtޡ  ޢ  7� l ]m7�ދފ7� n  ]m7�7�7� 4  hmމ7�
މ 
cobj7� m  ilވވ 7� l ]h7�އކ7� n  ]h7�7�7� 4  ehޅ7�
ޅ 
cobj7� m  fgބބ &7� l ]e7�ރނ7� n  ]e7�7�7� 4  beށ7�
ށ 
cobj7� o  cdހހ 0 x  7� o  ]b��  0 myprefsdevices myPrefsDevicesރ  ނ  އ  ކ  ދ  ފ  7� 7�7�7� n ��7�7�7� I  ���~7��}�~ 0 	settitle_ 	setTitle_7� 7��|7� c  ��7�7�7� b  ��7�7�7� m  ��7�7� �7�7�  R e j e c t e d :  7� I  ���{7��z�{ 0 roundnumber roundNumber7� 7�7�7� [  ��7�7�7� l ��7��y�x7� c  ��7�7�7� n  ��7�7�7� 4  ���w7�
�w 
cobj7� m  ���v�v 7� n  ��7�7�7� 4  ���u7�
�u 
cobj7� o  ���t�t 0 x  7� o  ���s�s  0 myprefsdevices myPrefsDevices7� m  ���r
�r 
doub�y  �x  7� l ��7��q�p7� c  ��7�7�7� n  ��7�7�7� 4  ���o7�
�o 
cobj7� m  ���n�n 7� n  ��7�7�7� 4  ���m7�
�m 
cobj7� o  ���l�l 0 x  7� o  ���k�k  0 myprefsdevices myPrefsDevices7� m  ���j
�j 
doub�q  �p  7� 7��i7� m  ���h�h  �i  �z  7� m  ���g
�g 
ctxt�|  �}  7� l ��7��f�e7� n  ��7�7�7� 4  ���d7�
�d 
cobj7� m  ���c�c 7� l ��7��b�a7� n  ��7�7�7� 4  ���`7�
�` 
cobj7� m  ���_�_ &7� l ��7��^�]7� n  ��7�7�7� 4  ���\8 
�\ 
cobj8  o  ���[�[ 0 x  7� o  ���Z�Z  0 myprefsdevices myPrefsDevices�^  �]  �b  �a  �f  �e  7� 8�Y8 n �888 I  ��X8�W�X 0 	settitle_ 	setTitle_8 8�V8 c  �888 b  �88	8 m  ��8
8
 �88  H W   e r r o r s :  8	 I  ��U8�T�U 0 roundnumber roundNumber8 888 [  �888 l ��8�S�R8 c  ��888 n  ��888 4  ���Q8
�Q 
cobj8 m  ���P�P 8 n  ��888 4  ���O8
�O 
cobj8 o  ���N�N 0 x  8 o  ���M�M  0 myprefsdevices myPrefsDevices8 m  ���L
�L 
doub�S  �R  8 l �8�K�J8 c  �888 n  �888 4  �I8
�I 
cobj8 m  
�H�H 8 n  �8 8!8  4  �G8"
�G 
cobj8" o  �F�F 0 x  8! o  ��E�E  0 myprefsdevices myPrefsDevices8 m  �D
�D 
doub�K  �J  8 8#�C8# m  �B�B  �C  �T  8 m  �A
�A 
ctxt�V  �W  8 l ��8$�@�?8$ n  ��8%8&8% 4  ���>8'
�> 
cobj8' m  ���=�= 8& l ��8(�<�;8( n  ��8)8*8) 4  ���:8+
�: 
cobj8+ m  ���9�9 &8* l ��8,�8�78, n  ��8-8.8- 4  ���68/
�6 
cobj8/ o  ���5�5 0 x  8. o  ���4�4  0 myprefsdevices myPrefsDevices�8  �7  �<  �;  �@  �?  �Y  ޲  ޱ  ޳  ��  ��  ��  �� 0 x  4� m    �3�3 4� n    808180 m    �2
�2 
nmbr81 n   828382 2  	 �1
�1 
cobj83 o    	�0�0  0 myprefsdevices myPrefsDevices��  4� 84�/84 l ((�.�-�,�.  �-  �,  �/  4� 858685 l     �+�*�)�+  �*  �)  86 878887 i  ��898:89 I      �(8;�'�( 0 setcoin_ setCoin_8; 8<�&8< o      �%�% 0 thiscoin thisCoin�&  �'  8: k     8=8= 8>8?8> r     8@8A8@ c     8B8C8B o     �$�$ 0 thiscoin thisCoin8C m    �#
�# 
ctxt8A o      �"�" 0 thiscoin thisCoin8? 8D�!8D r    8E8F8E o    � �  0 thiscoin thisCoin8F o      �� 0 currentcoin currentCoin�!  88 8G8H8G l     ����  �  �  8H 8I8J8I i   8K8L8K I      �8M�� "0 offtempwarning_ offTempWarning_8M 8N�8N o      �� 
0 sender  �  �  8L k     #8O8O 8P8Q8P I     
�8R�� 0 	killtimer 	killTimer8R 8S�8S o    �� 20 temperaturewarningtimer temperatureWarningTimer�  �  8Q 8T8U8T r    8V8W8V n   8X8Y8X 4    �8Z
� 
pcls8Z m    8[8[ �8\8\  N S T i m e r8Y m    �
� misccura8W o      �� 20 temperaturewarningtimer temperatureWarningTimer8U 8]�8] r    #8^8_8^ m    8`8` �8a8a 
 a l e r t8_ n      8b8c8b 4    "�8d
� 
cobj8d m     !�� 8c n    8e8f8e 4    �8g
� 
cobj8g o    �� 0 thisdata thisData8f o    ��  0 myprefsdevices myPrefsDevices�  8J 8h8i8h l     �
�	��
  �	  �  8i 8j8k8j i  8l8m8l I      �8n�� 0 offcooldown_ offCooldown_8n 8o�8o o      �� 
0 sender  �  �  8m k     �8p8p 8q8r8q l     ����  �  �  8r 8s8t8s Y     �8u� 8v8w��8u Z    �8x8y����8x =   $8z8{8z c     8|8}8| n    8~88~ 4    ��8�
�� 
cobj8� m    ���� 8 n    8�8�8� 4    ��8�
�� 
cobj8� o    ���� 0 x  8� o    ����  0 myprefsdevices myPrefsDevices8} m    ��
�� 
ctxt8{ c     #8�8�8� o     !���� 0 thisdata thisData8� m   ! "��
�� 
ctxt8y k   ' �8�8� 8�8�8� I   ' 1��8����� 0 	killtimer 	killTimer8� 8���8� o   ( -���� 0 cooldowntimer cooldownTimer��  ��  8� 8�8�8� r   2 <8�8�8� n  2 68�8�8� 4   3 6��8�
�� 
pcls8� m   4 58�8� �8�8�  N S T i m e r8� m   2 3��
�� misccura8� o      ���� 0 cooldowntimer cooldownTimer8� 8�8�8� I   = M��8����� 
0 msglog  8� 8�8�8� b   > H8�8�8� b   > F8�8�8� m   > ?8�8� �8�8�  C o o l d o w n   f o r  8� I   ? E��8����� 0 getdevicename getDeviceName8� 8���8� o   @ A���� 0 x  ��  ��  8� m   F G8�8� �8�8� H   h a s   c o m p l e t e d .     R e - e n a b l i n g   d e v i c e .8� 8���8� m   H I8�8� �8�8�  w a r n i n g��  ��  8� 8�8�8� I   N p��8����� 0 sendcommand sendCommand8� 8�8�8� b   O ^8�8�8� c   O \8�8�8� n   O Z8�8�8� 4   W Z��8�
�� 
cobj8� m   X Y���� 8� n   O W8�8�8� 4   T W��8�
�� 
cobj8� o   U V���� 0 x  8� o   O T����  0 myprefsdevices myPrefsDevices8� m   Z [��
�� 
ctxt8� m   \ ]8�8� �8�8�  e n a b l e8� 8�8�8� c   ^ k8�8�8� n   ^ i8�8�8� 4   f i��8�
�� 
cobj8� m   g h���� 8� n   ^ f8�8�8� 4   c f��8�
�� 
cobj8� o   d e���� 0 x  8� o   ^ c����  0 myprefsdevices myPrefsDevices8� m   i j��
�� 
ctxt8� 8���8� m   k l��
�� boovtrue��  ��  8� 8�8�8� r   q �8�8�8� m   q r��
�� boovfals8� n      8�8�8� 4   z ��8�
�� 
cobj8� m   { ~���� 8� n   r z8�8�8� 4   w z��8�
�� 
cobj8� o   x y���� 0 x  8� o   r w����  0 myprefsdevices myPrefsDevices8� 8�8�8� r   � �8�8�8� m   � �8�8� �8�8�  8� n      8�8�8� 4   � ���8�
�� 
cobj8� m   � ����� 8� n   � �8�8�8� 4   � ���8�
�� 
cobj8� o   � ����� 0 x  8� o   � �����  0 myprefsdevices myPrefsDevices8� 8���8�  S   � ���  ��  ��  �  0 x  8v m    ���� 8w n    8�8�8� m    ��
�� 
nmbr8� n   8�8�8� 2  	 ��
�� 
cobj8� o    	����  0 myprefsdevices myPrefsDevices��  8t 8���8� l  � ���������  ��  ��  ��  8k 8�8�8� l     ��������  ��  ��  8� 8�8�8� i  8�8�8� I      ݿ8�ݾݿ &0 updatehashratebar updateHashRateBar8� 8�ݽ8� o      ݼݼ 0 hashrate hashRateݽ  ݾ  8� n    
8�8�8� I    
ݻ8�ݺݻ "0 setdoublevalue_ setDoubleValue_8� 8�ݹ8� o    ݸݸ 0 hashrate hashRateݹ  ݺ  8� o     ݷݷ 0 hashratebar hashRateBar8� 8�8�8� l     ݶݵݴݶ  ݵ  ݴ  8� 8�8�8� i  8�8�8� I      ݳ8�ݲݳ *0 updatehashratelabel updateHashRateLabel8� 8�ݱ8� o      ݰݰ 0 therate theRateݱ  ݲ  8� k     :8�8� 8�8�8� n    8�8�8� I    ݯ8�ݮݯ "0 setstringvalue_ setStringValue_8� 8�ݭ8� c    8�8�8� I    ݬ8�ݫݬ $0 gethashratelabel getHashRateLabel8� 8�8�8� o    ݪݪ 0 therate theRate8� 8�8�8� m    ݩ
ݩ boovtrue8� 9 ݨ9  m    	ݧ
ݧ boovfalsݨ  ݫ  8� m    ݦ
ݦ 
ctxtݭ  ݮ  8� o     ݥݥ 0 hashratelabel hashRateLabel8� 9ݤ9 Z    :99ݣݢ9 =    999 l   9ݡݠ9 c    999 n    9	9
9	 4    ݟ9
ݟ 
cobj9 m    ݞݞ 	9
 o    ݝݝ  0 myprefsgeneral myPrefsGeneral9 m    ݜ
ݜ 
ctxtݡ  ݠ  9 m    99 �99  19 k   # 699 999 r   # /999 c   # -999 I   # +ݛ9ݚݛ $0 gethashratelabel getHashRateLabel9 999 o   $ %ݙݙ 0 therate theRate9 999 m   % &ݘ
ݘ boovtrue9 9ݗ9 m   & 'ݖ
ݖ boovtrueݗ  ݚ  9 m   + ,ݕ
ݕ 
ctxt9 o      ݔݔ 0 	badgetext 	badgeText9 9ݓ9 I   0 6ݒ9ݑݒ (0 setdockbadgestring setDockBadgeString9 9ݐ9 o   1 2ݏݏ 0 	badgetext 	badgeTextݐ  ݑ  ݓ  ݣ  ݢ  ݤ  8� 999 l     ݎݍ݌ݎ  ݍ  ݌  9 9 9!9  i  9"9#9" I      ݋9$݊݋ 0 sendcommand sendCommand9$ 9%9&9% o      ݉݉ 0 thecmd theCmd9& 9'9(9' o      ݈݈ 0 theopt theOpt9( 9)݇9) o      ݆݆ 0 isquiet isQuiet݇  ݊  9# l    69*9+9,9* k     69-9- 9.9/9. r     909190 c     929392 o     ݅݅ 0 thecmd theCmd93 m    ݄
݄ 
ctxt91 o      ݃݃ 0 thecmd theCmd9/ 949594 r    969796 c    	989998 o    ݂݂ 0 theopt theOpt99 m    ݁
݁ 
ctxt97 o      ݀݀ 0 theopt theOpt95 9:9;9: r    9<9=9< c    9>9?9> o    �� 0 isquiet isQuiet9? m    �~
�~ 
bool9= o      �}�} 0 isquiet isQuiet9; 9@�|9@ Z    69A9B�{9C9A =   9D9E9D o    �z�z 0 isquiet isQuiet9E m    �y
�y boovfals9B L    '9F9F c    &9G9H9G l   $9I�x�w9I n   $9J9K9J I    $�v9L�u�v  0 sendcommand___ sendCommand___9L 9M9N9M o    �t�t 0 thecmd theCmd9N 9O9P9O o    �s�s 0 theopt theOpt9P 9Q�r9Q o     �q�q 0 isquiet isQuiet�r  �u  9K o    �p�p 0 	apphelper 	AppHelper�x  �w  9H m   $ %�o
�o 
ctxt�{  9C n  * 69R9S9R I   / 6�n9T�m�n  0 sendcommand___ sendCommand___9T 9U9V9U o   / 0�l�l 0 thecmd theCmd9V 9W9X9W o   0 1�k�k 0 theopt theOpt9X 9Y�j9Y o   1 2�i�i 0 isquiet isQuiet�j  �m  9S o   * /�h�h 0 	apphelper 	AppHelper�|  9+ "  send a command to the miner   9, �9Z9Z 8   s e n d   a   c o m m a n d   t o   t h e   m i n e r9! 9[9\9[ l     �g�f�e�g  �f  �e  9\ 9]9^9] i  9_9`9_ I      �d9a�c�d 0 
dotrigger_ 
doTrigger_9a 9b�b9b o      �a�a 
0 sender  �b  �c  9` k     9c9c 9d9e9d l     �`�_�^�`  �_  �^  9e 9f9g9f I     �]�\�[�] (0 drawmenudevicelist drawMenuDeviceList�\  �[  9g 9h9i9h l   �Z�Y�X�Z  �Y  �X  9i 9j9k9j l   �W9l9m�W  9l ' ! checkMobileMinerRemoteCommands()   9m �9n9n B   c h e c k M o b i l e M i n e r R e m o t e C o m m a n d s ( )9k 9o9p9o l   �V9q9r�V  9q    sendStatusToMobileMiner()   9r �9s9s 4   s e n d S t a t u s T o M o b i l e M i n e r ( )9p 9t9u9t l   �U�T�S�U  �T  �S  9u 9v9w9v l   �R9x9y�R  9x    AppHelper's checkForBug()   9y �9z9z 4   A p p H e l p e r ' s   c h e c k F o r B u g ( )9w 9{9|9{ l   �Q�P�O�Q  �P  �O  9| 9}9~9} l   �N99��N  9 * $ get a list of all objects in a view   9� �9�9� H   g e t   a   l i s t   o f   a l l   o b j e c t s   i n   a   v i e w9~ 9�9�9� l   �M�L�K�M  �L  �K  9� 9�9�9� l    �J9�9��J  9� 
		repeat with x from 1 to number of items in myPrefsDevices
			if item 12 of item x of myPrefsDevices as boolean is true then
				set thisBar to item 2 of (item 38 of item x of myPrefsDevices)
				thisBar's setDoubleValue_(500.0)
			end if
		end repeat
		   9� �9�9�  
 	 	 r e p e a t   w i t h   x   f r o m   1   t o   n u m b e r   o f   i t e m s   i n   m y P r e f s D e v i c e s 
 	 	 	 i f   i t e m   1 2   o f   i t e m   x   o f   m y P r e f s D e v i c e s   a s   b o o l e a n   i s   t r u e   t h e n 
 	 	 	 	 s e t   t h i s B a r   t o   i t e m   2   o f   ( i t e m   3 8   o f   i t e m   x   o f   m y P r e f s D e v i c e s ) 
 	 	 	 	 t h i s B a r ' s   s e t D o u b l e V a l u e _ ( 5 0 0 . 0 ) 
 	 	 	 e n d   i f 
 	 	 e n d   r e p e a t 
 	 	9� 9�9�9� l   �I�H�G�I  �H  �G  9� 9�9�9� l   �F9�9��F  9�   add UI code to dock menu   9� �9�9� 2   a d d   U I   c o d e   t o   d o c k   m e n u9� 9�9�9� l   �E9�9��E  9� C = repeat with x from 1 to number of items in currentDeviceList   9� �9�9� z   r e p e a t   w i t h   x   f r o m   1   t o   n u m b e r   o f   i t e m s   i n   c u r r e n t D e v i c e L i s t9� 9�9�9� l   �D9�9��D  9� A ; 	dockMenu's addItem(item 6 of item x of currentDeviceList)   9� �9�9� v   	 d o c k M e n u ' s   a d d I t e m ( i t e m   6   o f   i t e m   x   o f   c u r r e n t D e v i c e L i s t )9� 9�9�9� l   �C9�9��C  9�   end repeat   9� �9�9�    e n d   r e p e a t9� 9��B9� l   �A�@�?�A  �@  �?  �B  9^ 9�9�9� l     �>�=�<�>  �=  �<  9� 9�9�9� i  9�9�9� I      �;�:�9�; @0 checkmobileminerremotecommands checkMobileMinerRemoteCommands�:  �9  9� k     �9�9� 9�9�9� l     �8�7�6�8  �7  �6  9� 9�9�9� l     �59�9��5  9� #  send request to check status   9� �9�9� :   s e n d   r e q u e s t   t o   c h e c k   s t a t u s9� 9�9�9� Z     �9�9��4�39� =    9�9�9� l    
9��2�19� c     
9�9�9� n     9�9�9� 4    �09�
�0 
cobj9� m    �/�/ 9� o     �.�.  0 myprefsgeneral myPrefsGeneral9� m    	�-
�- 
bool�2  �1  9� m   
 �,
�, boovtrue9� k    �9�9� 9�9�9� r    _9�9�9� b    ]9�9�9� b    [9�9�9� b    U9�9�9� b    S9�9�9� b    M9�9�9� b    K9�9�9� b    99�9�9� b    79�9�9� b    %9�9�9� b    #9�9�9� b    9�9�9� b    9�9�9� m    9�9� �9�9�  c u r l   - S   - s   "9� o    �+�+ <0 mobileminerremotecommandsurl mobileMinerRemoteCommandsURL9� m    9�9� �9�9�  ? e m a i l A d d r e s s =9� l   "9��*�)9� c    "9�9�9� n     9�9�9� 4     �(9�
�( 
cobj9� m    �'�' 9� o    �&�&  0 myprefsgeneral myPrefsGeneral9� m     !�%
�% 
ctxt�*  �)  9� m   # $9�9� �9�9�   & a p p l i c a t i o n K e y =9� I   % 6�$9��#�$ 0 htmlify  9� 9�9�9� c   & 09�9�9� n   & .9�9�9� 4   + .�"9�
�" 
cobj9� m   , -�!�! 9� o   & +� �   0 myprefsgeneral myPrefsGeneral9� m   . /�
� 
ctxt9� 9�9�9� m   0 1�
� boovtrue9� 9��9� m   1 2�
� boovtrue�  �#  9� m   7 89�9� �9�9�  & m a c h i n e N a m e =9� I   9 J�9��� 0 htmlify  9� 9�9�9� c   : D9�9�9� n   : B9�9�9� 4   ? B�9�
� 
cobj9� m   @ A�� 9� o   : ?��  0 myprefsgeneral myPrefsGeneral9� m   B C�
� 
ctxt9� 9�9�9� m   D E�
� boovtrue9� 9��9� m   E F�
� boovtrue�  �  9� m   K L9�9� �9�9�  & a p i K e y =9� o   M R�� ,0 mobileminerurlapikey mobileMinerURLAPIkey9� m   S T9�9� �9�9�  "   & >   "9� o   U Z��  0 tempfolderpath tempFolderPath9� m   [ \9�9� �: :  J A s t e r o i d _ M M _ r e m o t e c o m m a n d r e p l y . t x t "   &9� o      �� 0 thisreq thisReq9� ::: l  ` `����  �  �  : ::: Q   ` :::: k   c j:: :	:
:	 I  c h�:�
� .sysoexecTEXT���     TEXT: o   c d�
�
 0 thisreq thisReq�  :
 ::: l  i i�	::�	  : M G msglog("Checked for MobileMiner remote commands: " & thisReq,"notice")   : �:: �   m s g l o g ( " C h e c k e d   f o r   M o b i l e M i n e r   r e m o t e   c o m m a n d s :   "   &   t h i s R e q , " n o t i c e " ): :�: l  i i�::�  : @ : msglog("Got reply from MobileMiner: " & aResult,"notice")   : �:: t   m s g l o g ( " G o t   r e p l y   f r o m   M o b i l e M i n e r :   "   &   a R e s u l t , " n o t i c e " )�  : R      �:�
� .ascrerr ****      � ****: o      �� 0 err  �  : I   r �:�� 
0 msglog  : ::: b   s x::: m   s v:: �:: b U n a b l e   t o   c h e c k   f o r   r e m o t e   M o b i l e M i n e r   c o m m a n d s :  : o   v w�� 0 err  : :� : m   x {:: �::  w a r n i n g�   �  : : :!:  l  � ���������  ��  ��  :! :":#:" I   � ���:$���� 0 	killtimer 	killTimer:$ :%��:% o   � ����� 40 curlmmremotecommandtimer curlMMremotecommandTimer��  ��  :# :&:':& r   � �:(:):( n  � �:*:+:* I   � ���:,���� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_:, :-:.:- o   � ����� (0 mobileminertimeout mobileMinerTimeout:. :/:0:/  f   � �:0 :1:2:1 m   � �:3:3 �:4:4 F c h e c k M o b i l e M i n e r R e m o t e C o m m a n d s R e p l y:2 :5:6:5 m   � �:7:7 �:8:8  :6 :9��:9 m   � ���
�� boovfals��  ��  :+ n  � �:::;:: o   � ����� 0 nstimer NSTimer:; m   � ���
�� misccura:) o      ���� 40 curlmmremotecommandtimer curlMMremotecommandTimer:' :<��:< l  � ���������  ��  ��  ��  �4  �3  9� :=��:= l  � ���������  ��  ��  ��  9� :>:?:> l     ��������  ��  ��  :? :@:A:@ i  :B:C:B I      �������� J0 #checkmobileminerremotecommandsreply #checkMobileMinerRemoteCommandsReply��  ��  :C k    �:D:D :E:F:E r     :G:H:G m     :I:I �:J:J  :H o      ���� 0 aresult aResult:F :K:L:K Q    -:M:N:O:M k    $:P:P :Q:R:Q r    :S:T:S b    :U:V:U o    ����  0 tempfolderpath tempFolderPath:V m    :W:W �:X:X D A s t e r o i d _ M M _ r e m o t e c o m m a n d r e p l y . t x t:T o      ���� 0 thefile theFile:R :Y:Z:Y I   ��:[��
�� .rdwropenshor       file:[ o    ���� 0 thefile theFile��  :Z :\:]:\ r    :^:_:^ l   :`����:` I   ��:a��
�� .rdwrread****        ****:a o    ���� 0 thefile theFile��  ��  ��  :_ o      ���� 0 aresult aResult:] :b��:b I   $��:c��
�� .rdwrclosnull���     ****:c o     ���� 0 thefile theFile��  ��  :N R      ������
�� .ascrerr ****      � ****��  ��  :O l  , ,��:d:e��  :d  
 do nothin   :e �:f:f    d o   n o t h i n:L :g:h:g l  . .��������  ��  ��  :h :i:j:i l   . .��:k:l��  :k x r
		 response:
		 [{"Id":16,"Machine":null,"CommandText":"START"}]
		 
		 Possible values: START, STOP, RESTART
		    :l �:m:m � 
 	 	   r e s p o n s e : 
 	 	   [ { " I d " : 1 6 , " M a c h i n e " : n u l l , " C o m m a n d T e x t " : " S T A R T " } ] 
 	 	   
 	 	   P o s s i b l e   v a l u e s :   S T A R T ,   S T O P ,   R E S T A R T 
 	 	  :j :n:o:n l  . .��������  ��  ��  :o :p:q:p Z   .�:r:s:t:u:r G   . A:v:w:v G   . 9:x:y:x =  . 1:z:{:z o   . /���� 0 aresult aResult:{ m   / 0:|:| �:}:}  [ ]:y =  4 7:~::~ o   4 5���� 0 aresult aResult: m   5 6:�:� �:�:�  :w =  < ?:�:�:� o   < =���� 0 aresult aResult:� m   = >:�:� �:�:�  ] [:s k   D D:�:� :�:�:� l  D D��:�:���  :� 4 . no pending commands, don't attempt to process   :� �:�:� \   n o   p e n d i n g   c o m m a n d s ,   d o n ' t   a t t e m p t   t o   p r o c e s s:� :���:� l  D D��������  ��  ��  ��  :t :�:�:� F   H S:�:�:� E   H K:�:�:� o   H Iܿܿ 0 aresult aResult:� m   I J:�:� �:�:�  {:� E   N Q:�:�:� o   N Oܾܾ 0 aresult aResult:� m   O P:�:� �:�:�  C o m m a n d T e x t:� :�ܽ:� k   V�:�:� :�:�:� r   V _:�:�:� I   V ]ܼ:�ܻܼ 0 splitstring splitString:� :�:�:� o   W Xܺܺ 0 aresult aResult:� :�ܹ:� m   X Y:�:� �:�:�  ,ܹ  ܻ  :� o      ܸܸ 0 acommandlist aCommandList:� :�:�:� l  ` `ܷܶܵܷ  ܶ  ܵ  :� :�:�:� Y   ` �:�ܴ:�:�ܳ:� k   q �:�:� :�:�:� Z   q �:�:�ܱܲ:� E   q y:�:�:� n   q u:�:�:� 4   r uܰ:�
ܰ 
cobj:� o   s tܯܯ 0 x  :� o   q rܮܮ 0 acommandlist aCommandList:� m   u x:�:� �:�:�  C o m m a n d T e x t:� k   | �:�:� :�:�:� l  | |ܭ:�:�ܭ  :� 7 1 [{"Id":16,"Machine":null,"CommandText":"START"}]   :� �:�:� b   [ { " I d " : 1 6 , " M a c h i n e " : n u l l , " C o m m a n d T e x t " : " S T A R T " } ]:� :�ܬ:� r   | �:�:�:� n   | �:�:�:� 4   � �ܫ:�
ܫ 
cobj:� m   � �ܪܪ :� I   | �ܩ:�ܨܩ 0 splitstring splitString:� :�:�:� n   } �:�:�:� 4   ~ �ܧ:�
ܧ 
cobj:� o    �ܦܦ 0 x  :� o   } ~ܥܥ 0 acommandlist aCommandList:� :�ܤ:� m   � �:�:� �:�:�  "ܤ  ܨ  :� o      ܣܣ 0 acommand aCommandܬ  ܲ  ܱ  :� :�ܢ:� Z   � �:�:�ܡܠ:� E   � �:�:�:� n   � �:�:�:� 4   � �ܟ:�
ܟ 
cobj:� o   � �ܞܞ 0 x  :� o   � �ܝܝ 0 acommandlist aCommandList:� m   � �:�:� �:�:�  I d:� k   � �:�:� :�:�:� r   � �:�:�:� n   � �:�:�:� 4   � �ܜ:�
ܜ 
cobj:� m   � �ܛܛ :� I   � �ܚ:�ܙܚ 0 splitstring splitString:� :�:�:� n   � �:�:�:� 4   � �ܘ:�
ܘ 
cobj:� o   � �ܗܗ 0 x  :� o   � �ܖܖ 0 acommandlist aCommandList:� :�ܕ:� m   � �:�:� �:�:�  "ܕ  ܙ  :� o      ܔܔ 0 	commandid 	commandID:� :�ܓ:� r   � �:�:�:� c   � �:�:�:� l  � �:�ܒܑ:� n   � �:�:�:� 7 � �ܐ:�:�
ܐ 
cha :� m   � �܏܏ :� l  � �:�܎܍:� n   � �:�:�:� m   � �܌
܌ 
nmbr:� n  � �:�:�:� 2  � �܋
܋ 
cha :� o   � �܊܊ 0 	commandid 	commandID܎  ܍  :� o   � �܉܉ 0 	commandid 	commandIDܒ  ܑ  :� m   � �܈
܈ 
ctxt:� o      ܇܇ 0 	commandid 	commandIDܓ  ܡ  ܠ  ܢ  ܴ 0 x  :� m   c d܆܆ :� n   d l:�:�:� m   g k܅
܅ 
nmbr:� n  d g:�:�:� 2  e g܄
܄ 
cobj:� o   d e܃܃ 0 acommandlist aCommandListܳ  :� :�:�:� l  � �܂܁܀܂  ܁  ܀  :� :�:�:� r   � �:�; :� m   � ��
� boovfals;  o      �~�~ 0 gotanerr gotAnErr:� ;;; l  � ��}�|�{�}  �|  �{  ; ;;; Z   ��;;;�z; =  � �;;	; o   � ��y�y 0 acommand aCommand;	 m   � �;
;
 �;; 
 S T A R T; Q   �7;;;; Z   �,;;�x;; =  � �;;; o   � ��w�w 0 minerrunning minerRunning; m   � ��v
�v boovtrue; I   � ��u;�t�u 
0 msglog  ; ;;; m   � �;; �;; � M o b i l e M i n e r   r e q u e s t s   w e   S T A R T   t h e   m i n e r ,   b u t   i t ' s   a l r e a d y   r u n n i n g .     N o   a c t i o n   t a k e n .; ;�s; m   � �;; �;;  n o t i c e�s  �t  �x  ; k   �,;; ;;; I   ��r;�q�r 
0 msglog  ; ; ;!;  m   �;";" �;#;# P M o b i l e M i n e r   r e q u e s t s   w e   s t a r t   t h e   m i n e r .;! ;$�p;$ m  ;%;% �;&;&  n o t i c e�p  �q  ; ;';(;' I  	�o;)�n�o 0 
startminer 
startMiner;) ;*�m;* c  
;+;,;+ n  
;-;.;- 4  �l;/
�l 
cobj;/ m  �k�k ;. o  
�j�j  0 myprefsgeneral myPrefsGeneral;, m  �i
�i 
ctxt�m  �n  ;( ;0�h;0 I  ,�g;1�f�g 0 setstatusline setStatusLine;1 ;2;3;2 m  ;4;4 �;5;5 @ R e c e i v e d   r e m o t e   s t a r t   r e q u e s t . . .;3 ;6;7;6 m   �e
�e boovfals;7 ;8;9;8 m   #�d�d 
;9 ;:�c;: m  #&;;;; �;<;<  u s e r�c  �f  �h  ; R      �b;=�a
�b .ascrerr ****      � ****;= o      �`�` 0 err  �a  ; r  47;>;?;> m  45�_
�_ boovtrue;? o      �^�^ 0 gotanerr gotAnErr; ;@;A;@ = :?;B;C;B o  :;�]�] 0 acommand aCommand;C m  ;>;D;D �;E;E  S T O P;A ;F;G;F Q  B�;H;I;J;H Z  E�;K;L�\;M;K = EL;N;O;N o  EJ�[�[ 0 minerrunning minerRunning;O m  JK�Z
�Z boovtrue;L k  Or;P;P ;Q;R;Q I  OZ�Y;S�X�Y 
0 msglog  ;S ;T;U;T m  PS;V;V �;W;W N M o b i l e M i n e r   r e q u e s t s   w e   S T O P   t h e   m i n e r .;U ;X�W;X m  SV;Y;Y �;Z;Z  n o t i c e�W  �X  ;R ;[;\;[ I  [`�V�U�T�V 0 	stopminer 	stopMiner�U  �T  ;\ ;]�S;] I  ar�R;^�Q�R 0 setstatusline setStatusLine;^ ;_;`;_ m  be;a;a �;b;b > R e c e i v e d   r e m o t e   s t o p   r e q u e s t . . .;` ;c;d;c m  ef�P
�P boovfals;d ;e;f;e m  fi�O�O 
;f ;g�N;g m  il;h;h �;i;i  u s e r�N  �Q  �S  �\  ;M I  u��M;j�L�M 
0 msglog  ;j ;k;l;k m  vy;m;m �;n;n � M o b i l e M i n e r   r e q u e s t s   w e   S T O P   t h e   m i n e r ,   b u t   i t ' s   a l r e a d y   s t o p p e d .     N o   a c t i o n   t a k e n .;l ;o�K;o m  y|;p;p �;q;q  n o t i c e�K  �L  ;I R      �J;r�I
�J .ascrerr ****      � ****;r o      �H�H 0 err  �I  ;J r  ��;s;t;s m  ���G
�G boovtrue;t o      �F�F 0 gotanerr gotAnErr;G ;u;v;u = ��;w;x;w o  ���E�E 0 acommand aCommand;x m  ��;y;y �;z;z  R E S T A R T;v ;{�D;{ Q  ��;|;};~;| k  ��;; ;�;�;� I  ���C;��B�C 
0 msglog  ;� ;�;�;� m  ��;�;� �;�;� T M o b i l e M i n e r   r e q u e s t s   w e   R E S T A R T   t h e   m i n e r .;� ;��A;� m  ��;�;� �;�;�  n o t i c e�A  �B  ;� ;�;�;� I  ���@�?�>�@ 0 restartminer restartMiner�?  �>  ;� ;��=;� I  ���<;��;�< 0 setstatusline setStatusLine;� ;�;�;� m  ��;�;� �;�;� D R e c e i v e d   r e m o t e   r e s t a r t   r e q u e s t . . .;� ;�;�;� m  ���:
�: boovfals;� ;�;�;� m  ���9�9 
;� ;��8;� m  ��;�;� �;�;�  u s e r�8  �;  �=  ;} R      �7;��6
�7 .ascrerr ****      � ****;� o      �5�5 0 err  �6  ;~ r  ��;�;�;� m  ���4
�4 boovtrue;� o      �3�3 0 gotanerr gotAnErr�D  �z  ; ;�;�;� l ���2�1�0�2  �1  �0  ;� ;�;�;� Z  ��;�;�;��/;� = ��;�;�;� o  ���.�. 0 gotanerr gotAnErr;� m  ���-
�- boovtrue;� I  ���,;��+�, 
0 msglog  ;� ;�;�;� b  ��;�;�;� m  ��;�;� �;�;� ` U n a b l e   t o   p e r f o r m   r e q u e s t e d   M o b i l e M i n e r   a c t i o n :  ;� o  ���*�* 0 err  ;� ;��);� m  ��;�;� �;�;�  w a r n i n g�)  �+  ;� ;�;�;� G  ��;�;�;� G  ��;�;�;� = ��;�;�;� o  ���(�( 0 acommand aCommand;� m  ��;�;� �;�;� 
 S T A R T;� = ��;�;�;� o  ���'�' 0 acommand aCommand;� m  ��;�;� �;�;�  S T O P;� = ��;�;�;� o  ���&�& 0 acommand aCommand;� m  ��;�;� �;�;�  R E S T A R T;� ;��%;� k  ��;�;� ;�;�;� l ���$�#�"�$  �#  �"  ;� ;�;�;� l ���!;�;��!  ;� P J send an HTTP DELETE request back to acknoledge the command was successful   ;� �;�;� �   s e n d   a n   H T T P   D E L E T E   r e q u e s t   b a c k   t o   a c k n o l e d g e   t h e   c o m m a n d   w a s   s u c c e s s f u l;� ;�;�;� r  �d;�;�;� b  �b;�;�;� b  �^;�;�;� b  �X;�;�;� b  �T;�;�;� b  �R;�;�;� b  �N;�;�;� b  �8;�;�;� b  �4;�;�;� b  �;�;�;� b  �;�;�;� b  �;�;�;� b  �;�;�;� m  �;�;� �;�;�  c u r l   ";� o  � �  <0 mobileminerremotecommandsurl mobileMinerRemoteCommandsURL;� m  
;�;� �;�;�  ? e m a i l A d d r e s s =;� l ;���;� c  ;�;�;� n  ;�;�;� 4  �;�
� 
cobj;� m  �� ;� o  ��  0 myprefsgeneral myPrefsGeneral;� m  �
� 
ctxt�  �  ;� m  ;�;� �;�;�   & a p p l i c a t i o n K e y =;� I  3�;��� 0 htmlify  ;� ;�;�;� c  -;�;�;� n  );�;�;� 4  $)�;�
� 
cobj;� m  %(�� ;� o  $��  0 myprefsgeneral myPrefsGeneral;� m  ),�
� 
ctxt;� ;�;�;� m  -.�
� boovtrue;� ;��;� m  ./�
� boovtrue�  �  ;� m  47;�;� �;�;�  & m a c h i n e N a m e =;� I  8M�;��� 0 htmlify  ;� < <<  c  9G<<< n  9C<<< 4  >C�<
� 
cobj< m  ?B�� < o  9>��  0 myprefsgeneral myPrefsGeneral< m  CF�
� 
ctxt< <<< m  GH�

�
 boovtrue< <	�	<	 m  HI�
� boovtrue�	  �  ;� m  NQ<
<
 �<<  & c o m m a n d I d =;� o  RS�� 0 	commandid 	commandID;� m  TW<< �<<  & a p i K e y =;� o  X]�� ,0 mobileminerurlapikey mobileMinerURLAPIkey;� m  ^a<< �<< ( "   - - r e q u e s t   D E L E T E   &;� o      �� 0 thisreq thisReq;� <<< l ee����  �  �  < <�< Q  e�<<<< k  hm<< <<< l hh� <<�   < J D msglog("Acknowledging command to MobileMiner: " & thisReq,"notice")   < �<< �   m s g l o g ( " A c k n o w l e d g i n g   c o m m a n d   t o   M o b i l e M i n e r :   "   &   t h i s R e q , " n o t i c e " )< <��< I hm��<��
�� .sysoexecTEXT���     TEXT< o  hi���� 0 thisreq thisReq��  ��  < R      ��<��
�� .ascrerr ****      � ****< o      ���� 0 err  ��  < I  u���<���� 
0 msglog  < < <!<  b  v{<"<#<" m  vy<$<$ �<%<% \ U n a b l e   t o   a c k n o w l e d g e   c o m m a n d   t o   M o b i l e M i n e r :  <# o  yz���� 0 err  <! <&��<& m  {~<'<' �<(<(  c r i t i c a l��  ��  �  �%  �/  ;� <)��<) l ����������  ��  ��  ��  ܽ  :u I  ����<*���� 
0 msglog  <* <+<,<+ b  ��<-<.<- m  ��</</ �<0<0 ~ U n a b l e   t o   u n d e r s t a n d   r e m o t e   c o m m a n d   r e s p o n s e   f r o m   M o b i l e M i n e r :  <. o  ������ 0 aresult aResult<, <1��<1 m  ��<2<2 �<3<3  w a r n i n g��  ��  :q <4<5<4 l ����������  ��  ��  <5 <6<7<6 l ����<8<9��  <8   do it again   <9 �<:<:    d o   i t   a g a i n<7 <;<<<; I  ����<=���� 0 	killtimer 	killTimer<= <>��<> o  ������ @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer��  ��  << <?<@<? r  ��<A<B<A n ��<C<D<C I  ����<E���� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_<E <F<G<F o  ������ F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsInterval<G <H<I<H  f  ��<I <J<K<J m  ��<L<L �<M<M < c h e c k M o b i l e M i n e r R e m o t e C o m m a n d s<K <N<O<N m  ��<P<P �<Q<Q  <O <R��<R m  ����
�� boovfals��  ��  <D n ��<S<T<S o  ������ 0 nstimer NSTimer<T m  ����
�� misccura<B o      ���� @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer<@ <U��<U l ����������  ��  ��  ��  :A <V<W<V l     ��������  ��  ��  <W <X<Y<X i   #<Z<[<Z I      �������� 20 sendstatustomobileminer sendStatusToMobileMiner��  ��  <[ k    �<\<\ <]<^<] l     ��������  ��  ��  <^ <_<`<_ Z    �<a<b����<a =    <c<d<c l    
<e����<e c     
<f<g<f n     <h<i<h 4    ��<j
�� 
cobj<j m    ���� <i o     ����  0 myprefsgeneral myPrefsGeneral<g m    	��
�� 
bool��  ��  <d m   
 ��
�� boovtrue<b k   �<k<k <l<m<l l   ��������  ��  ��  <m <n<o<n r   �<p<q<p J   �<r<r <s<t<s l 	  <u����<u K    <v<v ��<w<x�� 0 varname varName<w m    <y<y �<z<z  M i n e r N a m e<x ��<{<|�� 0 vartype varType<{ m    <}<} �<~<~  s t r i n g<| ۿ<<�ۿ 0 
vardefault 
varDefault< m    <�<� �<�<�  ' '<� ۾<�<�۾ 0 devsvar devsVar<� m    <�<� �<�<�  M i n e r N a m e<� ۽<�ۼ۽ 0 varvalue varValue<� m    <�<� �<�<�  ۼ  ��  ��  <t <�<�<� l 	  -<�ۻۺ<� K    -<�<� ۹<�<�۹ 0 varname varName<� m    <�<� �<�<�  C o i n S y m b o l<� ۸<�<�۸ 0 vartype varType<� m    <�<� �<�<�  s t r i n g<� ۷<�<�۷ 0 
vardefault 
varDefault<� m     #<�<� �<�<�  ' '<� ۶<�<�۶ 0 devsvar devsVar<� m   $ '<�<� �<�<�  C o i n S y m b o l<� ۵<�۴۵ 0 varvalue varValue<� m   ( +<�<� �<�<�  ۴  ۻ  ۺ  <� <�<�<� l 	 - C<�۳۲<� K   - C<�<� ۱<�<�۱ 0 varname varName<� m   . 1<�<� �<�<�  C o i n N a m e<� ۰<�<�۰ 0 vartype varType<� m   2 5<�<� �<�<�  s t r i n g<� ۯ<�<�ۯ 0 
vardefault 
varDefault<� m   6 9<�<� �<�<�  ' '<� ۮ<�<�ۮ 0 devsvar devsVar<� m   : =<�<� �<�<�  C o i n N a m e<� ۭ<�۬ۭ 0 varvalue varValue<� m   > A<�<� �<�<�  ۬  ۳  ۲  <� <�<�<� l 	 C Y<�۪۫<� K   C Y<�<� ۩<�<�۩ 0 varname varName<� m   D G<�<� �<�<�  A l g o r i t h m<� ۨ<�<�ۨ 0 vartype varType<� m   H K<�<� �<�<�  s t r i n g<� ۧ<�<�ۧ 0 
vardefault 
varDefault<� m   L O<�<� �<�<�  ' '<� ۦ<�<�ۦ 0 devsvar devsVar<� m   P S<�<� �<�<�  A l g o r i t h m<� ۥ<�ۤۥ 0 varvalue varValue<� m   T W<�<� �<�<�  ۤ  ۫  ۪  <� <�<�<� l 	 Y o<�ۣۢ<� K   Y o<�<� ۡ<�<�ۡ 0 varname varName<� m   Z ]<�<� �<�<�  K i n d<� ۠<�<�۠ 0 vartype varType<� m   ^ a<�<� �<�<�  s t r i n g<� ۟<�<�۟ 0 
vardefault 
varDefault<� m   b e<�<� �<�<�  ' '<� ۞<�<�۞ 0 devsvar devsVar<� m   f i<�<� �<�<�  <� ۝<�ۜ۝ 0 varvalue varValue<� m   j m<�<� �<�<�  ۜ  ۣ  ۢ  <� <�<�<� l 	 o �<�ۛۚ<� K   o �<�<� ۙ<�<�ۙ 0 varname varName<� m   p s<�<� �<�<� 
 I n d e x<� ۘ<�<�ۘ 0 vartype varType<� m   t w<�<� �<�<�  i n t e g e r<� ۗ<�<�ۗ 0 
vardefault 
varDefault<� m   x yۖۖ  <� ە<�<�ە 0 devsvar devsVar<� m   z }<�<� �<�<�  G P U<� ۔<�ۓ۔ 0 varvalue varValue<� m   ~ �<�<� �<�<�  ۓ  ۛ  ۚ  <� <�<�<� l 	 � �<�ےۑ<� K   � �<�<� ې<�= ې 0 varname varName<� m   � �== �==  E n a b l e d=  ۏ==ۏ 0 vartype varType= m   � �== �==  b o o l e a n= ێ==ێ 0 
vardefault 
varDefault= m   � �=	=	 �=
=
  ' Y '= ۍ==ۍ 0 devsvar devsVar= m   � �== �==  E n a b l e d= ی=ۋی 0 varvalue varValue= m   � �== �==  ۋ  ے  ۑ  <� === l 	 � �=ۊۉ= K   � �== ۈ==ۈ 0 varname varName= m   � �== �==  S t a t u s= ۇ==ۇ 0 vartype varType= m   � �== �==  s t r i n g= ۆ==ۆ 0 
vardefault 
varDefault= m   � �= =  �=!=!  ' '= ۅ="=#ۅ 0 devsvar devsVar=" m   � �=$=$ �=%=%  S t a t u s=# ۄ=&ۃۄ 0 varvalue varValue=& m   � �='=' �=(=(  ۃ  ۊ  ۉ  = =)=*=) l 	 � �=+ۂہ=+ K   � �=,=, ۀ=-=.ۀ 0 varname varName=- m   � �=/=/ �=0=0  T e m p e r a t u r e=. �=1=2� 0 vartype varType=1 m   � �=3=3 �=4=4  r e a l=2 �~=5=6�~ 0 
vardefault 
varDefault=5 m   � ��}�}  =6 �|=7=8�| 0 devsvar devsVar=7 m   � �=9=9 �=:=:  T e m p e r a t u r e=8 �{=;�z�{ 0 varvalue varValue=; m   � �=<=< �====  �z  ۂ  ہ  =* =>=?=> l 	 � �=@�y�x=@ K   � �=A=A �w=B=C�w 0 varname varName=B m   � �=D=D �=E=E  F a n S p e e d=C �v=F=G�v 0 vartype varType=F m   � �=H=H �=I=I  i n t e g e r=G �u=J=K�u 0 
vardefault 
varDefault=J m   � ��t�t  =K �s=L=M�s 0 devsvar devsVar=L m   � �=N=N �=O=O  F a n   S p e e d=M �r=P�q�r 0 varvalue varValue=P m   � �=Q=Q �=R=R  �q  �y  �x  =? =S=T=S l 	 � �=U�p�o=U K   � �=V=V �n=W=X�n 0 varname varName=W m   � �=Y=Y �=Z=Z  F a n P e r c e n t=X �m=[=\�m 0 vartype varType=[ m   � �=]=] �=^=^  i n t e g e r=\ �l=_=`�l 0 
vardefault 
varDefault=_ m   � ��k�k  =` �j=a=b�j 0 devsvar devsVar=a m   � �=c=c �=d=d  F a n   P e r c e n t=b �i=e�h�i 0 varvalue varValue=e m   � �=f=f �=g=g  �h  �p  �o  =T =h=i=h l 	 � �=j�g�f=j K   � �=k=k �e=l=m�e 0 varname varName=l m   � �=n=n �=o=o  G p u C l o c k=m �d=p=q�d 0 vartype varType=p m   � �=r=r �=s=s  i n t e g e r=q �c=t=u�c 0 
vardefault 
varDefault=t m   � ��b�b  =u �a=v=w�a 0 devsvar devsVar=v m   � �=x=x �=y=y  G P U   C l o c k=w �`=z�_�` 0 varvalue varValue=z m   � �={={ �=|=|  �_  �g  �f  =i =}=~=} l 	 �=�^�]= K   �=�=� �\=�=��\ 0 varname varName=� m   =�=� �=�=�  M e m o r y C l o c k=� �[=�=��[ 0 vartype varType=� m  =�=� �=�=�  i n t e g e r=� �Z=�=��Z 0 
vardefault 
varDefault=� m  	�Y�Y  =� �X=�=��X 0 devsvar devsVar=� m  
=�=� �=�=�  M e m o r y   C l o c k=� �W=��V�W 0 varvalue varValue=� m  =�=� �=�=�  �V  �^  �]  =~ =�=�=� l 	'=��U�T=� K  '=�=� �S=�=��S 0 varname varName=� m  =�=� �=�=�  G p u V o l t a g e=� �R=�=��R 0 vartype varType=� m  =�=� �=�=�  r e a l=� �Q=�=��Q 0 
vardefault 
varDefault=� m  �P�P  =� �O=�=��O 0 devsvar devsVar=� m  !=�=� �=�=�  G P U   V o l t a g e=� �N=��M�N 0 varvalue varValue=� m  "%=�=� �=�=�  �M  �U  �T  =� =�=�=� l 	';=��L�K=� K  ';=�=� �J=�=��J 0 varname varName=� m  (+=�=� �=�=�  G p u A c t i v i t y=� �I=�=��I 0 vartype varType=� m  ,/=�=� �=�=�  i n t e g e r=� �H=�=��H 0 
vardefault 
varDefault=� m  01�G�G  =� �F=�=��F 0 devsvar devsVar=� m  25=�=� �=�=�  G P U   A c t i v i t y=� �E=��D�E 0 varvalue varValue=� m  69=�=� �=�=�  �D  �L  �K  =� =�=�=� l 	;O=��C�B=� K  ;O=�=� �A=�=��A 0 varname varName=� m  <?=�=� �=�=�  P o w e r T u n e=� �@=�=��@ 0 vartype varType=� m  @C=�=� �=�=�  i n t e g e r=� �?=�=��? 0 
vardefault 
varDefault=� m  DE�>�>  =� �==�=��= 0 devsvar devsVar=� m  FI=�=� �=�=�  P o w e r t u n e=� �<=��;�< 0 varvalue varValue=� m  JM=�=� �=�=�  �;  �C  �B  =� =�=�=� l 	Oc=��:�9=� K  Oc=�=� �8=�=��8 0 varname varName=� m  PS=�=� �=�=�  A v e r a g e H a s h r a t e=� �7=�=��7 0 vartype varType=� m  TW=�=� �=�=�  r e a l=� �6=�=��6 0 
vardefault 
varDefault=� m  XY�5�5  =� �4=�=��4 0 devsvar devsVar=� m  Z]=�=� �=�=�  M H S   a v=� �3=��2�3 0 varvalue varValue=� m  ^a=�=� �=�=�  �2  �:  �9  =� =�=�=� l 	cw=��1�0=� K  cw=�=� �/=�=��/ 0 varname varName=� m  dg=�=� �=�=�  C u r r e n t H a s h r a t e=� �.=�=��. 0 vartype varType=� m  hk=�=� �=�=�  r e a l=� �-=�=��- 0 
vardefault 
varDefault=� m  lm�,�,  =� �+=�=��+ 0 devsvar devsVar=� m  nq=�=� �=�=�  M H S   5 s=� �*=��)�* 0 varvalue varValue=� m  ru=�=� �=�=�  �)  �1  �0  =� =�=�=� l 	w�=��(�'=� K  w�=�=� �&=�> �& 0 varname varName=� m  x{>> �>>  A c c e p t e d S h a r e s>  �%>>�% 0 vartype varType> m  |>> �>>  i n t e g e r> �$>>�$ 0 
vardefault 
varDefault> m  ���#�#  > �">	>
�" 0 devsvar devsVar>	 m  ��>> �>>  A c c e p t e d>
 �!>� �! 0 varvalue varValue> m  ��>> �>>  �   �(  �'  =� >>> l 	��>��> K  ��>> �>>� 0 varname varName> m  ��>> �>>  R e j e c t e d S h a r e s> �>>� 0 vartype varType> m  ��>> �>>  i n t e g e r> �>>� 0 
vardefault 
varDefault> m  ����  > �>>� 0 devsvar devsVar> m  ��> >  �>!>!  R e j e c t e d> �>"�� 0 varvalue varValue>" m  ��>#># �>$>$  �  �  �  > >%>&>% l 	��>'��>' K  ��>(>( �>)>*� 0 varname varName>) m  ��>+>+ �>,>,  H a r d w a r e E r r o r s>* �>->.� 0 vartype varType>- m  ��>/>/ �>0>0  i n t e g e r>. �>1>2� 0 
vardefault 
varDefault>1 m  ����  >2 �>3>4� 0 devsvar devsVar>3 m  ��>5>5 �>6>6  H a r d w a r e   E r r o r s>4 �>7�� 0 varvalue varValue>7 m  ��>8>8 �>9>9  �  �  �  >& >:>;>: l 	��><��>< K  ��>=>= �>>>?� 0 varname varName>> m  ��>@>@ �>A>A  U t i l i t y>? �
>B>C�
 0 vartype varType>B m  ��>D>D �>E>E  r e a l>C �	>F>G�	 0 
vardefault 
varDefault>F m  ����  >G �>H>I� 0 devsvar devsVar>H m  ��>J>J �>K>K  U t i l i t y>I �>L�� 0 varvalue varValue>L m  ��>M>M �>N>N  �  �  �  >; >O�>O l 	��>P��>P l 
��>Q�� >Q K  ��>R>R ��>S>T�� 0 varname varName>S m  ��>U>U �>V>V  I n t e n s i t y>T ��>W>X�� 0 vartype varType>W m  ��>Y>Y �>Z>Z  i n t e g e r>X ��>[>\�� 0 
vardefault 
varDefault>[ m  ��>]>] �>^>^  ' D '>\ ��>_>`�� 0 devsvar devsVar>_ m  ��>a>a �>b>b  I n t e n s i t y>` ��>c���� 0 varvalue varValue>c m  ��>d>d �>e>e  ��  �  �   �  �  �  <q o      ���� *0 mmexpectedperdevice mmExpectedPerDevice<o >f>g>f l ����������  ��  ��  >g >h>i>h l ����>j>k��  >j   loop through each device   >k �>l>l 2   l o o p   t h r o u g h   e a c h   d e v i c e>i >m>n>m r  ��>o>p>o m  ������  >p o      ���� "0 numvaliddevices numValidDevices>n >q>r>q r  ��>s>t>s m  ��>u>u �>v>v  '>t o      ���� 0 qt  >r >w>x>w r  ��>y>z>y m  ��>{>{ �>|>|  ,>z o      ���� 0 sep  >x >}>~>} r  ��>>�> m  ��>�>� �>�>�  [>� o      ���� 
0 jts jTS>~ >�>�>� Y  ��>���>�>���>� k  �>�>� >�>�>� l ��>�>���  >� - ' only report on active, enabled devices   >� �>�>� N   o n l y   r e p o r t   o n   a c t i v e ,   e n a b l e d   d e v i c e s>� >���>� Z  �>�>�����>� =  >�>�>� l >�����>� c  >�>�>� n  >�>�>� 4  ��>�
�� 
cobj>� m  ���� >� l >�����>� n  >�>�>� 4  ��>�
�� 
cobj>� o  ���� 0 x  >� o  ����  0 myprefsdevices myPrefsDevices��  ��  >� m  ��
�� 
bool��  ��  >� m  ��
�� boovtrue>� k  #�>�>� >�>�>� Z  #4>�>�����>� ? #&>�>�>� o  #$���� "0 numvaliddevices numValidDevices>� m  $%����  >� r  )0>�>�>� b  ).>�>�>� o  )*���� 
0 jts jTS>� m  *->�>� �>�>�  ,>� o      ���� 
0 jts jTS��  ��  >� >�>�>� r  5<>�>�>� b  5:>�>�>� o  56���� 
0 jts jTS>� m  69>�>� �>�>�  {>� o      ���� 
0 jts jTS>� >�>�>� l ==��������  ��  ��  >� >�>�>� r  =g>�>�>� b  =e>�>�>� b  =c>�>�>� b  =_>�>�>� b  =P>�>�>� b  =L>�>�>� b  =J>�>�>� b  =F>�>�>� b  =D>�>�>� b  =@>�>�>� o  =>���� 
0 jts jTS>� o  >?���� 0 qt  >� m  @C>�>� �>�>�  M i n e r N a m e>� o  DE���� 0 qt  >� m  FI>�>� �>�>�  :>� o  JK���� 0 qt  >� m  LO>�>� �>�>�  A s t e r o i d   (>� l P^>�����>� c  P^>�>�>� n  PZ>�>�>� 4  UZ��>�
�� 
cobj>� m  VY���� >� o  PU����  0 myprefsgeneral myPrefsGeneral>� m  Z]��
�� 
ctxt��  ��  >� m  _b>�>� �>�>�  )>� o  cd���� 0 qt  >� o      ���� 
0 jts jTS>� >�>�>� l hh��������  ��  ��  >� >�>�>� Z  h�>�>�>���>� = hq>�>�>� o  hm���� 0 currentcoin currentCoin>� m  mp>�>� �>�>�  B i t c o i n>� k  t#>�>� >�>�>� r  t�>�>�>� b  t�>�>�>� b  t�>�>�>� b  t�>�>�>� b  t�>�>�>� b  t>�>�>� b  t}>�>�>� b  ty>�>�>� b  tw>�>�>� o  tu���� 
0 jts jTS>� o  uv���� 0 sep  >� o  wx���� 0 qt  >� m  y|>�>� �>�>�  C o i n S y m b o l>� o  }~ڿڿ 0 qt  >� m  �>�>� �>�>�  :>� o  ��ھھ 0 qt  >� m  ��>�>� �>�>�  B T C>� o  ��ڽڽ 0 qt  >� o      ڼڼ 
0 jts jTS>� >�>�>� r  ��? ??  b  ��??? b  ��??? b  ��??? b  ��??	? b  ��?
??
 b  ��??? b  ��??? b  ��??? o  ��ڻڻ 
0 jts jTS? o  ��ںں 0 sep  ? o  ��ڹڹ 0 qt  ? m  ��?? �??  A l g o r i t h m? o  ��ڸڸ 0 qt  ?	 m  ��?? �??  :? o  ��ڷڷ 0 qt  ? m  ��?? �??  S H A - 2 5 6? o  ��ڶڶ 0 qt  ? o      ڵڵ 
0 jts jTS>� ?ڴ? Z  �#??ڳ?? = ��??? l ��?ڲڱ? c  ��?? ? n ��?!?"?! I  ��ڰ?#گڰ  0 makecaseupper_ makeCaseUpper_?# ?$ڮ?$ c  ��?%?&?% n  ��?'?(?' 4  ��ڭ?)
ڭ 
cobj?) m  ��ڬڬ ?( l ��?*ګڪ?* n  ��?+?,?+ 4  ��ک?-
ک 
cobj?- o  ��ڨڨ 0 x  ?, o  ��ڧڧ  0 myprefsdevices myPrefsDevicesګ  ڪ  ?& m  ��ڦ
ڦ 
ctxtڮ  گ  ?" o  ��ڥڥ 0 	apphelper 	AppHelper?  m  ��ڤ
ڤ 
ctxtڲ  ڱ  ? m  ��?.?. �?/?/  D? r  ��?0?1?0 b  ��?2?3?2 b  ��?4?5?4 b  ��?6?7?6 b  ��?8?9?8 b  ��?:?;?: b  ��?<?=?< b  ��?>???> b  ��?@?A?@ o  ��ڣڣ 
0 jts jTS?A o  ��ڢڢ 0 sep  ?? o  ��ڡڡ 0 qt  ?= m  ��?B?B �?C?C  I n t e n s i t y?; o  ��ڠڠ 0 qt  ?9 m  ��?D?D �?E?E  :?7 o  ��ڟڟ 0 qt  ?5 n ��?F?G?F I  ��ڞ?Hڝڞ  0 makecaseupper_ makeCaseUpper_?H ?Iڜ?I c  ��?J?K?J n  ��?L?M?L 4  ��ڛ?N
ڛ 
cobj?N m  ��ښښ ?M l ��?Oڙژ?O n  ��?P?Q?P 4  ��ڗ?R
ڗ 
cobj?R o  ��ږږ 0 x  ?Q o  ��ڕڕ  0 myprefsdevices myPrefsDevicesڙ  ژ  ?K m  ��ڔ
ڔ 
ctxtڜ  ڝ  ?G o  ��ړړ 0 	apphelper 	AppHelper?3 o  ��ڒڒ 0 qt  ?1 o      ڑڑ 
0 jts jTSڳ  ? r   #?S?T?S b   !?U?V?U b   ?W?X?W b   ?Y?Z?Y b   	?[?\?[ b   ?]?^?] b   ?_?`?_ o   ڐڐ 
0 jts jTS?` o  ڏڏ 0 sep  ?^ o  ڎڎ 0 qt  ?\ m  ?a?a �?b?b  I n t e n s i t y?Z o  	
ڍڍ 0 qt  ?X m  ?c?c �?d?d  :?V l  ?eڌڋ?e c   ?f?g?f n  ?h?i?h 4  ڊ?j
ڊ 
cobj?j m  ډډ ?i n  ?k?l?k 4  ڈ?m
ڈ 
cobj?m o  ڇڇ 0 x  ?l o  چچ  0 myprefsdevices myPrefsDevices?g m  څ
څ 
longڌ  ڋ  ?T o      ڄڄ 
0 jts jTSڴ  >� ?n?o?n = &/?p?q?p o  &+ڃڃ 0 currentcoin currentCoin?q m  +.?r?r �?s?s  L i t e c o i n?o ?tڂ?t k  2�?u?u ?v?w?v r  2K?x?y?x b  2I?z?{?z b  2G?|?}?| b  2C?~??~ b  2A?�?�?� b  2=?�?�?� b  2;?�?�?� b  27?�?�?� b  25?�?�?� o  23ځځ 
0 jts jTS?� o  34ڀڀ 0 sep  ?� o  56�� 0 qt  ?� m  7:?�?� �?�?�  C o i n S y m b o l?� o  ;<�~�~ 0 qt  ?� m  =@?�?� �?�?�  :? o  AB�}�} 0 qt  ?} m  CF?�?� �?�?�  L T C?{ o  GH�|�| 0 qt  ?y o      �{�{ 
0 jts jTS?w ?�?�?� r  Le?�?�?� b  Lc?�?�?� b  La?�?�?� b  L]?�?�?� b  L[?�?�?� b  LW?�?�?� b  LU?�?�?� b  LQ?�?�?� b  LO?�?�?� o  LM�z�z 
0 jts jTS?� o  MN�y�y 0 sep  ?� o  OP�x�x 0 qt  ?� m  QT?�?� �?�?�  A l g o r i t h m?� o  UV�w�w 0 qt  ?� m  WZ?�?� �?�?�  :?� o  [\�v�v 0 qt  ?� m  ]`?�?� �?�?�  s c r y p t?� o  ab�u�u 0 qt  ?� o      �t�t 
0 jts jTS?� ?��s?� Z  f�?�?��r?�?� = f�?�?�?� l f�?��q�p?� c  f�?�?�?� n f�?�?�?� I  k��o?��n�o  0 makecaseupper_ makeCaseUpper_?� ?��m?� c  k|?�?�?� n  kx?�?�?� 4  sx�l?�
�l 
cobj?� m  tw�k�k 	?� l ks?��j�i?� n  ks?�?�?� 4  ps�h?�
�h 
cobj?� o  qr�g�g 0 x  ?� o  kp�f�f  0 myprefsdevices myPrefsDevices�j  �i  ?� m  x{�e
�e 
ctxt�m  �n  ?� o  fk�d�d 0 	apphelper 	AppHelper?� m  ���c
�c 
ctxt�q  �p  ?� m  ��?�?� �?�?�  D?� r  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� o  ���b�b 
0 jts jTS?� o  ���a�a 0 sep  ?� o  ���`�` 0 qt  ?� m  ��?�?� �?�?�  I n t e n s i t y?� o  ���_�_ 0 qt  ?� m  ��?�?� �?�?�  :?� o  ���^�^ 0 qt  ?� n ��?�?�?� I  ���]?��\�]  0 makecaseupper_ makeCaseUpper_?� ?��[?� c  ��?�?�?� n  ��?�?�?� 4  ���Z?�
�Z 
cobj?� m  ���Y�Y 	?� l ��?��X�W?� n  ��?�?�?� 4  ���V?�
�V 
cobj?� o  ���U�U 0 x  ?� o  ���T�T  0 myprefsdevices myPrefsDevices�X  �W  ?� m  ���S
�S 
ctxt�[  �\  ?� o  ���R�R 0 	apphelper 	AppHelper?� o  ���Q�Q 0 qt  ?� o      �P�P 
0 jts jTS�r  ?� r  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� b  ��?�?�?� o  ���O�O 
0 jts jTS?� o  ���N�N 0 sep  ?� o  ���M�M 0 qt  ?� m  ��?�?� �?�?�  I n t e n s i t y?� o  ���L�L 0 qt  ?� m  ��?�?� �?�?�  :?� l ��?��K�J?� c  ��?�?�?� n  ��?�?�?� 4  ���I?�
�I 
cobj?� m  ���H�H 	?� n  ��?�?�?� 4  ���G?�
�G 
cobj?� o  ���F�F 0 x  ?� o  ���E�E  0 myprefsdevices myPrefsDevices?� m  ���D
�D 
long�K  �J  ?� o      �C�C 
0 jts jTS�s  ڂ  ��  >� @ @@  r  �@@@ b  ��@@@ b  ��@@@ b  ��@@	@ b  ��@
@@
 b  ��@@@ b  ��@@@ b  ��@@@ b  ��@@@ o  ���B�B 
0 jts jTS@ o  ���A�A 0 sep  @ o  ���@�@ 0 qt  @ m  ��@@ �@@  C o i n N a m e@ o  ���?�? 0 qt  @ m  ��@@ �@@  :@	 o  ���>�> 0 qt  @ o  ���=�= 0 currentcoin currentCoin@ o  ���<�< 0 qt  @ o      �;�; 
0 jts jTS@ @@@ l �:�9�8�:  �9  �8  @ @@@ r  6@@@ b  4@@@ b  2@ @!@  b  @"@#@" b  @$@%@$ b  @&@'@& b  @(@)@( b  @*@+@* b  @,@-@, o  �7�7 
0 jts jTS@- o  �6�6 0 sep  @+ o  �5�5 0 qt  @) m  
@.@. �@/@/  K i n d@' o  �4�4 0 qt  @% m  @0@0 �@1@1  :@# o  �3�3 0 qt  @! l 1@2�2�1@2 c  1@3@4@3 n -@5@6@5 I  -�0@7�/�0  0 makecaseupper_ makeCaseUpper_@7 @8�.@8 l )@9�-�,@9 c  )@:@;@: n  %@<@=@< 4   %�+@>
�+ 
cobj@> m  !$�*�* @= l  @?�)�(@? n   @@@A@@ 4   �'@B
�' 
cobj@B o  �&�& 0 x  @A o  �%�%  0 myprefsdevices myPrefsDevices�)  �(  @; m  %(�$
�$ 
ctxt�-  �,  �.  �/  @6 o  �#�# 0 	apphelper 	AppHelper@4 m  -0�"
�" 
ctxt�2  �1  @ o  23�!�! 0 qt  @ o      � �  
0 jts jTS@ @C@D@C r  7Z@E@F@E b  7X@G@H@G b  7F@I@J@I b  7B@K@L@K b  7@@M@N@M b  7<@O@P@O b  7:@Q@R@Q o  78�� 
0 jts jTS@R o  89�� 0 sep  @P o  :;�� 0 qt  @N m  <?@S@S �@T@T 
 I n d e x@L o  @A�� 0 qt  @J m  BE@U@U �@V@V  :@H l FW@W��@W c  FW@X@Y@X n  FS@Z@[@Z 4  NS�@\
� 
cobj@\ m  OR�� @[ l FN@]��@] n  FN@^@_@^ 4  KN�@`
� 
cobj@` o  LM�� 0 x  @_ o  FK��  0 myprefsdevices myPrefsDevices�  �  @Y m  SV�
� 
long�  �  @F o      �� 
0 jts jTS@D @a@b@a Z  [�@c@d�@e@c = [j@f@g@f l [h@h��@h c  [h@i@j@i n  [f@k@l@k 4  cf�@m
� 
cobj@m m  de�� @l l [c@n��
@n n  [c@o@p@o 4  `c�	@q
�	 
cobj@q o  ab�� 0 x  @p o  [`��  0 myprefsdevices myPrefsDevices�  �
  @j m  fg�
� 
bool�  �  @g m  hi�
� boovtrue@d r  m�@r@s@r b  m�@t@u@t b  m|@v@w@v b  mx@x@y@x b  mv@z@{@z b  mr@|@}@| b  mp@~@@~ o  mn�� 
0 jts jTS@ o  no�� 0 sep  @} o  pq�� 0 qt  @{ m  ru@�@� �@�@�  E n a b l e d@y o  vw�� 0 qt  @w m  x{@�@� �@�@�  :@u m  |@�@� �@�@�  t r u e@s o      � �  
0 jts jTS�  @e r  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� o  ������ 
0 jts jTS@� o  ������ 0 sep  @� o  ������ 0 qt  @� m  ��@�@� �@�@�  E n a b l e d@� o  ������ 0 qt  @� m  ��@�@� �@�@�  :@� m  ��@�@� �@�@� 
 f a l s e@� o      ���� 
0 jts jTS@b @�@�@� r  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� o  ������ 
0 jts jTS@� o  ������ 0 sep  @� o  ������ 0 qt  @� m  ��@�@� �@�@�  S t a t u s@� o  ������ 0 qt  @� m  ��@�@� �@�@�  :@� o  ������ 0 qt  @� l ��@�����@� c  ��@�@�@� n  ��@�@�@� 4  ����@�
�� 
cobj@� m  ������ $@� n  ��@�@�@� 4  ����@�
�� 
cobj@� o  ������ 0 x  @� o  ������  0 myprefsdevices myPrefsDevices@� m  ����
�� 
ctxt��  ��  @� o  ������ 0 qt  @� o      ���� 
0 jts jTS@� @�@�@� r  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� o  ������ 
0 jts jTS@� o  ������ 0 sep  @� o  ������ 0 qt  @� m  ��@�@� �@�@�  T e m p e r a t u r e@� o  ������ 0 qt  @� m  ��@�@� �@�@�  :@� l ��@�����@� c  ��@�@�@� n  ��@�@�@� 4  ����@�
�� 
cobj@� m  ������ @� n  ��@�@�@� 4  ����@�
�� 
cobj@� o  ������ 0 x  @� o  ������  0 myprefsdevices myPrefsDevices@� m  ����
�� 
doub��  ��  @� o      ���� 
0 jts jTS@� @�@�@� r  �
@�@�@� b  �@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� b  ��@�@�@� o  ������ 
0 jts jTS@� o  ������ 0 sep  @� o  ������ 0 qt  @� m  ��@�@� �@�@�  F a n S p e e d@� o  ������ 0 qt  @� m  ��@�@� �@�@�  :@� l �@�����@� c  �@�@�@� n  �@�@�@� 4  ���@�
�� 
cobj@� m  ����� @� n  ��@�@�@� 4  ����@�
�� 
cobj@� o  ������ 0 x  @� o  ������  0 myprefsdevices myPrefsDevices@� m  ��
�� 
long��  ��  @� o      ���� 
0 jts jTS@� @�@�@� r  .@�@�@� b  ,@�@�@� b  @�@�@� b  @�@�@� b  @�A @� b  AAA b  AAA o  ���� 
0 jts jTSA o  ���� 0 sep  A o  ���� 0 qt  A  m  AA �AA  F a n P e r c e n t@� o  ���� 0 qt  @� m  AA �AA  :@� l +A	����A	 c  +A
AA
 n  'AAA 4  "'��A
�� 
cobjA m  #&���� A n  "AAA 4  "��A
�� 
cobjA o   !���� 0 x  A o  ����  0 myprefsdevices myPrefsDevicesA m  '*��
�� 
long��  ��  @� o      ���� 
0 jts jTS@� AAA r  /RAAA b  /PAAA b  />AAA b  /:AAA b  /8AAA b  /4AAA b  /2A A!A  o  /0���� 
0 jts jTSA! o  01���� 0 sep  A o  23���� 0 qt  A m  47A"A" �A#A#  G p u C l o c kA o  89���� 0 qt  A m  :=A$A$ �A%A%  :A l >OA&��ٿA& c  >OA'A(A' n  >KA)A*A) 4  FKپA+
پ 
cobjA+ m  GJٽٽ A* n  >FA,A-A, 4  CFټA.
ټ 
cobjA. o  DEٻٻ 0 x  A- o  >Cٺٺ  0 myprefsdevices myPrefsDevicesA( m  KNٹ
ٹ 
long��  ٿ  A o      ٸٸ 
0 jts jTSA A/A0A/ r  SvA1A2A1 b  StA3A4A3 b  SbA5A6A5 b  S^A7A8A7 b  S\A9A:A9 b  SXA;A<A; b  SVA=A>A= o  STٷٷ 
0 jts jTSA> o  TUٶٶ 0 sep  A< o  VWٵٵ 0 qt  A: m  X[A?A? �A@A@  M e m o r y C l o c kA8 o  \]ٴٴ 0 qt  A6 m  ^aAAAA �ABAB  :A4 l bsACٳٲAC c  bsADAEAD n  boAFAGAF 4  joٱAH
ٱ 
cobjAH m  knٰٰ AG n  bjAIAJAI 4  gjٯAK
ٯ 
cobjAK o  hiٮٮ 0 x  AJ o  bg٭٭  0 myprefsdevices myPrefsDevicesAE m  or٬
٬ 
longٳ  ٲ  A2 o      ٫٫ 
0 jts jTSA0 ALAMAL r  w�ANAOAN b  w�APAQAP b  w�ARASAR b  w�ATAUAT b  w�AVAWAV b  w|AXAYAX b  wzAZA[AZ o  wx٪٪ 
0 jts jTSA[ o  xy٩٩ 0 sep  AY o  z{٨٨ 0 qt  AW m  |A\A\ �A]A]  G p u V o l t a g eAU o  ��٧٧ 0 qt  AS m  ��A^A^ �A_A_  :AQ l ��A`٦٥A` c  ��AaAbAa n  ��AcAdAc 4  ��٤Ae
٤ 
cobjAe m  ��٣٣ Ad n  ��AfAgAf 4  ��٢Ah
٢ 
cobjAh o  ��١١ 0 x  Ag o  ��٠٠  0 myprefsdevices myPrefsDevicesAb m  ��ٟ
ٟ 
doub٦  ٥  AO o      ٞٞ 
0 jts jTSAM AiAjAi r  ��AkAlAk b  ��AmAnAm b  ��AoApAo b  ��AqArAq b  ��AsAtAs b  ��AuAvAu b  ��AwAxAw o  ��ٝٝ 
0 jts jTSAx o  ��ٜٜ 0 sep  Av o  ��ٛٛ 0 qt  At m  ��AyAy �AzAz  G p u A c t i v i t yAr o  ��ٚٚ 0 qt  Ap m  ��A{A{ �A|A|  :An l ��A}ٙ٘A} c  ��A~AA~ n  ��A�A�A� 4  ��ٗA�
ٗ 
cobjA� m  ��ٖٖ  A� n  ��A�A�A� 4  ��ٕA�
ٕ 
cobjA� o  ��ٔٔ 0 x  A� o  ��ٓٓ  0 myprefsdevices myPrefsDevicesA m  ��ْ
ْ 
longٙ  ٘  Al o      ّّ 
0 jts jTSAj A�A�A� r  ��A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� o  ��ِِ 
0 jts jTSA� o  ��ُُ 0 sep  A� o  ��ََ 0 qt  A� m  ��A�A� �A�A�  P o w e r T u n eA� o  ��ٍٍ 0 qt  A� m  ��A�A� �A�A�  :A� l ��A�ًٌA� c  ��A�A�A� n  ��A�A�A� 4  ��يA�
ي 
cobjA� m  ��ىى !A� n  ��A�A�A� 4  ��وA�
و 
cobjA� o  ��هه 0 x  A� o  ��نن  0 myprefsdevices myPrefsDevicesA� m  ��م
م 
longٌ  ً  A� o      لل 
0 jts jTSA� A�A�A� l ��كA�A�ك  A� � � set jTS to jTS &sep&qt& "AverageHashrate" &qt& ":" & (roundNumber(item 34 of item x of myPrefsDevices as real,4)*1000 as integer)   A� �A�A�   s e t   j T S   t o   j T S   & s e p & q t &   " A v e r a g e H a s h r a t e "   & q t &   " : "   &   ( r o u n d N u m b e r ( i t e m   3 4   o f   i t e m   x   o f   m y P r e f s D e v i c e s   a s   r e a l , 4 ) * 1 0 0 0   a s   i n t e g e r )A� A�A�A� r  �A�A�A� b  �A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� b  ��A�A�A� o  ��قق 
0 jts jTSA� o  ��فف 0 sep  A� o  ��ــ 0 qt  A� m  ��A�A� �A�A�  A v e r a g e H a s h r a t eA� o  ���� 0 qt  A� m  ��A�A� �A�A�  :A� l �A��~�}A� c  �A�A�A� ]  �A�A�A� I  ��|A��{�| 0 roundnumber roundNumberA� A�A�A� c  �A�A�A� n  � A�A�A� 4  � �zA�
�z 
cobjA� m  ���y�y A� n  ��A�A�A� 4  ���xA�
�x 
cobjA� o  ���w�w 0 x  A� o  ���v�v  0 myprefsdevices myPrefsDevicesA� m   �u
�u 
doubA� A��tA� m  �s�s �t  �{  A� m  �r�r�A� m  �q
�q 
long�~  �}  A� o      �p�p 
0 jts jTSA� A�A�A� r  JA�A�A� b  HA�A�A� b  &A�A�A� b  "A�A�A� b   A�A�A� b  A�A�A� b  A�A�A� o  �o�o 
0 jts jTSA� o  �n�n 0 sep  A� o  �m�m 0 qt  A� m  A�A� �A�A�  C u r r e n t H a s h r a t eA� o   !�l�l 0 qt  A� m  "%A�A� �A�A�  :A� l &GA��k�jA� c  &GA�A�A� ]  &CA�A�A� I  &?�iA��h�i 0 roundnumber roundNumberA� A�A�A� c  '8A�A�A� n  '4A�A�A� 4  /4�gA�
�g 
cobjA� m  03�f�f A� n  '/A�A�A� 4  ,/�eA�
�e 
cobjA� o  -.�d�d 0 x  A� o  ',�c�c  0 myprefsdevices myPrefsDevicesA� m  47�b
�b 
doubA� A��aA� m  8;�`�` �a  �h  A� m  ?B�_�_�A� m  CF�^
�^ 
long�k  �j  A� o      �]�] 
0 jts jTSA� A�A�A� r  KnA�A�A� b  KlA�A�A� b  KZA�A�A� b  KVA�A�A� b  KTA�A�A� b  KPA�A�A� b  KNB BB  o  KL�\�\ 
0 jts jTSB o  LM�[�[ 0 sep  A� o  NO�Z�Z 0 qt  A� m  PSBB �BB  A c c e p t e d S h a r e sA� o  TU�Y�Y 0 qt  A� m  VYBB �BB  :A� l ZkB�X�WB c  ZkBBB n  ZgB	B
B	 4  bg�VB
�V 
cobjB m  cf�U�U B
 n  ZbBBB 4  _b�TB
�T 
cobjB o  `a�S�S 0 x  B o  Z_�R�R  0 myprefsdevices myPrefsDevicesB m  gj�Q
�Q 
long�X  �W  A� o      �P�P 
0 jts jTSA� BBB r  o�BBB b  o�BBB b  o~BBB b  ozBBB b  oxBBB b  otBBB b  orBBB o  op�O�O 
0 jts jTSB o  pq�N�N 0 sep  B o  rs�M�M 0 qt  B m  twBB �B B   R e j e c t e d S h a r e sB o  xy�L�L 0 qt  B m  z}B!B! �B"B"  :B l ~�B#�K�JB# c  ~�B$B%B$ n  ~�B&B'B& 4  ���IB(
�I 
cobjB( m  ���H�H B' n  ~�B)B*B) 4  ���GB+
�G 
cobjB+ o  ���F�F 0 x  B* o  ~��E�E  0 myprefsdevices myPrefsDevicesB% m  ���D
�D 
long�K  �J  B o      �C�C 
0 jts jTSB B,B-B, r  ��B.B/B. b  ��B0B1B0 b  ��B2B3B2 b  ��B4B5B4 b  ��B6B7B6 b  ��B8B9B8 b  ��B:B;B: o  ���B�B 
0 jts jTSB; o  ���A�A 0 sep  B9 o  ���@�@ 0 qt  B7 m  ��B<B< �B=B=  H a r d w a r e E r r o r sB5 o  ���?�? 0 qt  B3 m  ��B>B> �B?B?  :B1 l ��B@�>�=B@ c  ��BABBBA n  ��BCBDBC 4  ���<BE
�< 
cobjBE m  ���;�; BD n  ��BFBGBF 4  ���:BH
�: 
cobjBH o  ���9�9 0 x  BG o  ���8�8  0 myprefsdevices myPrefsDevicesBB m  ���7
�7 
long�>  �=  B/ o      �6�6 
0 jts jTSB- BIBJBI r  ��BKBLBK b  ��BMBNBM b  ��BOBPBO b  ��BQBRBQ b  ��BSBTBS b  ��BUBVBU b  ��BWBXBW o  ���5�5 
0 jts jTSBX o  ���4�4 0 sep  BV o  ���3�3 0 qt  BT m  ��BYBY �BZBZ  U t i l i t yBR o  ���2�2 0 qt  BP m  ��B[B[ �B\B\  :BN l ��B]�1�0B] c  ��B^B_B^ n  ��B`BaB` 4  ���/Bb
�/ 
cobjBb m  ���.�. #Ba n  ��BcBdBc 4  ���-Be
�- 
cobjBe o  ���,�, 0 x  Bd o  ���+�+  0 myprefsdevices myPrefsDevicesB_ m  ���*
�* 
doub�1  �0  BL o      �)�) 
0 jts jTSBJ BfBgBf r  ��BhBiBh b  ��BjBkBj o  ���(�( 
0 jts jTSBk m  ��BlBl �BmBm  }Bi o      �'�' 
0 jts jTSBg Bn�&Bn r  ��BoBpBo [  ��BqBrBq o  ���%�% "0 numvaliddevices numValidDevicesBr m  ���$�$ Bp o      �#�# "0 numvaliddevices numValidDevices�&  ��  ��  ��  �� 0 x  >� m  ���"�" >� n  �
BsBtBs m  	�!
�! 
nmbrBt n �BuBvBu 2 � 
�  
cobjBv o  ���  0 myprefsdevices myPrefsDevices��  >� BwBxBw l ������  �  �  Bx ByBzBy r  ��B{B|B{ b  ��B}B~B} o  ���� 
0 jts jTSB~ m  ��BB �B�B�  ]B| o      �� 
0 jts jTSBz B�B�B� l ������  �  �  B� B�B�B� l ���B�B��  B� &   get curl to output to text file   B� �B�B� @   g e t   c u r l   t o   o u t p u t   t o   t e x t   f i l eB� B�B�B� l ���B�B��  B�   set timer to check   B� �B�B� &   s e t   t i m e r   t o   c h e c kB� B�B�B� l ������  �  �  B� B�B�B� r  �qB�B�B� b  �oB�B�B� b  �kB�B�B� b  �eB�B�B� b  �aB�B�B� b  �KB�B�B� b  �GB�B�B� b  �1B�B�B� b  �-B�B�B� b  �B�B�B� b  �B�B�B� b  �B�B�B� b  �	B�B�B� b  �B�B�B� b  ��B�B�B� m  ��B�B� �B�B� v c u r l   - S   - s   - H   " C o n t e n t - T y p e :   a p p l i c a t i o n / j s o n "   - X   P O S T   - d   "B� o  ���� 
0 jts jTSB� m  �B�B� �B�B�  "   "B� o  �� 60 mobileminersubmitstatsurl mobileMinerSubmitStatsURLB� m  	B�B� �B�B�  ? a p i K e y =B� o  �� ,0 mobileminerurlapikey mobileMinerURLAPIkeyB� m  B�B� �B�B�  & E m a i l A d d r e s s =B� I  ,�B��� 0 htmlify  B� B�B�B� c  &B�B�B� n  "B�B�B� 4  "�B�
� 
cobjB� m  !�� B� o  �
�
  0 myprefsgeneral myPrefsGeneralB� m  "%�	
�	 
ctxtB� B�B�B� m  &'�
� boovtrueB� B��B� m  '(�
� boovtrue�  �  B� m  -0B�B� �B�B�   & A p p l i c a t i o n K e y =B� I  1F�B��� 0 htmlify  B� B�B�B� c  2@B�B�B� n  2<B�B�B� 4  7<�B�
� 
cobjB� m  8;�� B� o  27��  0 myprefsgeneral myPrefsGeneralB� m  <?� 
�  
ctxtB� B�B�B� m  @A��
�� boovtrueB� B���B� m  AB��
�� boovtrue��  �  B� m  GJB�B� �B�B�  & M a c h i n e N a m e =B� I  K`��B����� 0 htmlify  B� B�B�B� c  LZB�B�B� n  LVB�B�B� 4  QV��B�
�� 
cobjB� m  RU���� B� o  LQ����  0 myprefsgeneral myPrefsGeneralB� m  VY��
�� 
ctxtB� B�B�B� m  Z[��
�� boovtrueB� B���B� m  [\��
�� boovtrue��  ��  B� m  adB�B� �B�B�  "   & >   "B� o  ej����  0 tempfolderpath tempFolderPathB� m  knB�B� �B�B� < A s t e r o i d _ M M _ s t a t u s r e p l y . t x t "   &B� o      ���� 0 shellscript shellScriptB� B�B�B� l rr��������  ��  ��  B� B�B�B� Q  r�B�B�B�B� k  u�B�B� B�B�B� r  u|B�B�B� I uz��B���
�� .sysoexecTEXT���     TEXTB� o  uv���� 0 shellscript shellScript��  B� o      ���� 0 	thisstuff 	thisStuffB� B�B�B� l }}��B�B���  B� D > msglog("Sent status to MobileMiner: " & shellScript,"notice")   B� �B�B� |   m s g l o g ( " S e n t   s t a t u s   t o   M o b i l e M i n e r :   "   &   s h e l l S c r i p t , " n o t i c e " )B� B���B� I  }���B����� 0 setstatusline setStatusLineB� B�B�B� m  ~�B�B� �B�B� 4 S e n t   s t a t u s   t o   M o b i l e M i n e rB� B�B�B� m  ����
�� boovfalsB� B�B�B� m  ������ B� B���B� m  ��B�B� �B�B�  u s e r��  ��  ��  B� R      ��B���
�� .ascrerr ****      � ****B� o      ���� 0 err  ��  B� I  ����C ���� 
0 msglog  C  CCC b  ��CCC m  ��CC �CC F P r o b l e m   s u b m i t t i n g   t o   M o b i l e M i n e r :  C o  ������ 0 err  C C��C m  ��CC �C	C	  w a r n i n g��  ��  B� C
CC
 l ����������  ��  ��  C CCC I  ����C���� 0 	killtimer 	killTimerC C��C o  ������ &0 curlmmstatustimer curlMMstatusTimer��  ��  C CCC r  ��CCC n ��CCC I  ����C���� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_C CCC o  ������ (0 mobileminertimeout mobileMinerTimeoutC CCC  f  ��C CCC m  ��CC �CC 8 s e n d S t a t u s T o M o b i l e M i n e r R e p l yC CC C m  ��C!C! �C"C"  C  C#��C# m  ����
�� boovfals��  ��  C n ��C$C%C$ o  ������ 0 nstimer NSTimerC% m  ����
�� misccuraC o      ���� &0 curlmmstatustimer curlMMstatusTimerC C&C'C& l ����������  ��  ��  C' C(C)C( I  ����C*���� 0 setstatusline setStatusLineC* C+C,C+ m  ��C-C- �C.C. 4 S e n t   s t a t u s   t o   M o b i l e M i n e rC, C/C0C/ m  ����
�� boovfalsC0 C1C2C1 m  ������ C2 C3��C3 m  ��C4C4 �C5C5  u s e r��  ��  C) C6��C6 l ����������  ��  ��  ��  ��  ��  <` C7��C7 l ����ؿؾ��  ؿ  ؾ  ��  <Y C8C9C8 l     ؽؼػؽ  ؼ  ػ  C9 C:C;C: i  $'C<C=C< I      غعظغ <0 sendstatustomobileminerreply sendStatusToMobileMinerReplyع  ظ  C= k     eC>C> C?C@C? Q     ACACBCCCA k    8CDCD CECFCE r    CGCHCG b    
CICJCI o    طط  0 tempfolderpath tempFolderPathCJ m    	CKCK �CLCL 6 A s t e r o i d _ M M _ s t a t u s r e p l y . t x tCH o      ضض 0 thefile theFileCF CMCNCM I   صCOش
ص .rdwropenshor       fileCO o    سس 0 thefile theFileش  CN CPCQCP r    CRCSCR l   CTزرCT I   ذCUد
ذ .rdwrread****        ****CU o    خخ 0 thefile theFileد  ز  ر  CS o      حح 0 	curlreply 	curlReplyCQ CVCWCV I    جCXث
ج .rdwrclosnull���     ****CX o    تت 0 thefile theFileث  CW CYةCY Z   ! 8CZC[باCZ ?  ! (C\C]C\ n   ! &C^C_C^ m   $ &ئ
ئ 
nmbrC_ n  ! $C`CaC` 2  " $إ
إ 
cparCa o   ! "ؤؤ 0 	curlreply 	curlReplyC] m   & 'أأ  C[ I   + 4آCbءآ 
0 msglog  Cb CcCdCc b   , /CeCfCe m   , -CgCg �ChCh J E r r o r   s e n d i n g   s t a t u s   t o   M o b i l e M i n e r :  Cf o   - .ؠؠ 0 	curlreply 	curlReplyCd Ci؟Ci m   / 0CjCj �CkCk  w a r n i n g؟  ء  ب  ا  ة  CB R      ؞؝؜
؞ .ascrerr ****      � ****؝  ؜  CC l  @ @؛ClCm؛  Cl  
 do nothin   Cm �CnCn    d o   n o t h i nC@ CoCpCo l  B Bؘؙؚؚ  ؙ  ؘ  Cp CqCrCq I   B LؗCsؖؗ 0 	killtimer 	killTimerCs CtؕCt o   C Hؔؔ 80 mobileminersendstatustimer mobileMinerSendStatusTimerؕ  ؖ  Cr CuؓCu r   M eCvCwCv n  M _CxCyCx I   P _ؒCzؑؒ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Cz C{C|C{ o   P Uؐؐ >0 mobileminersendstatusinterval mobileMinerSendStatusIntervalC| C}C~C}  f   U VC~ CC�C m   V WC�C� �C�C� . s e n d S t a t u s T o M o b i l e M i n e rC� C�C�C� m   W XC�C� �C�C�  C� C�؏C� m   X Y؎
؎ boovfals؏  ؑ  Cy n  M PC�C�C� o   N P؍؍ 0 nstimer NSTimerC� m   M N،
، misccuraCw o      ؋؋ 80 mobileminersendstatustimer mobileMinerSendStatusTimerؓ  C; C�C�C� l     ؊؉؈؊  ؉  ؈  C� C�C�C� i  (+C�C�C� I      ؇؆؅؇  0 drawdevicelist drawDeviceList؆  ؅  C� k    �C�C� C�C�C� l     ؄؃؂؄  ؃  ؂  C� C�C�C� l     ؁C�C�؁  C� < 6 get UI for each device and arrange it in a nice list!   C� �C�C� l   g e t   U I   f o r   e a c h   d e v i c e   a n d   a r r a n g e   i t   i n   a   n i c e   l i s t !C� C�C�C� l     ؀C�C�؀  C�   animate and resize?   C� �C�C� (   a n i m a t e   a n d   r e s i z e ?C� C�C�C� l     �C�C��  C�   just show 'em for now   C� �C�C� ,   j u s t   s h o w   ' e m   f o r   n o wC� C�C�C� l     �~�}�|�~  �}  �|  C� C�C�C� l     �{C�C��{  C� T N some of these variables are duplicated in AppHelper's createDeviceUI_ as well   C� �C�C� �   s o m e   o f   t h e s e   v a r i a b l e s   a r e   d u p l i c a t e d   i n   A p p H e l p e r ' s   c r e a t e D e v i c e U I _   a s   w e l lC� C�C�C� r     C�C�C� m     �z�z|C� o      �y�y 0 
framewidth 
frameWidthC� C�C�C� r    C�C�C� m    �x�x C� o      �w�w 0 	rowheight 	rowHeightC� C�C�C� r    C�C�C� m    	�v�v 
C� o      �u�u $0 rowpaddingbottom rowPaddingBottomC� C�C�C� r    C�C�C� m    �t�t C� o      �s�s 0 
rowpadding 
rowPaddingC� C�C�C� l   �r�q�p�r  �q  �p  C� C�C�C� r    C�C�C� m    �o�o  C� o      �n�n 0 devicesshown devicesShownC� C�C�C� Y    �C��mC�C��lC� Z   ' �C�C��k�jC� =  ' 6C�C�C� l  ' 4C��i�hC� c   ' 4C�C�C� n   ' 2C�C�C� 4   / 2�gC�
�g 
cobjC� m   0 1�f�f C� l  ' /C��e�dC� n   ' /C�C�C� 4   , /�cC�
�c 
cobjC� o   - .�b�b 0 x  C� o   ' ,�a�a  0 myprefsdevices myPrefsDevices�e  �d  C� m   2 3�`
�` 
bool�i  �h  C� m   4 5�_
�_ boovtrueC� l  9 �C�C�C�C� k   9 �C�C� C�C�C� l  9 9�^�]�\�^  �]  �\  C� C�C�C� l  9 9�[C�C��[  C� 5 / create a UI for this device if none exists yet   C� �C�C� ^   c r e a t e   a   U I   f o r   t h i s   d e v i c e   i f   n o n e   e x i s t s   y e tC� C�C�C� Z   9 ]C�C��Z�YC� l  9 JC��X�WC� A  9 JC�C�C� I  9 H�VC��U
�V .corecnte****       ****C� l  9 DC��T�SC� n   9 DC�C�C� 4   A D�RC�
�R 
cobjC� m   B C�Q�Q &C� l  9 AC��P�OC� n   9 AC�C�C� 4   > A�NC�
�N 
cobjC� o   ? @�M�M 0 x  C� o   9 >�L�L  0 myprefsdevices myPrefsDevices�P  �O  �T  �S  �U  C� m   H I�K�K �X  �W  C� k   M YC�C� C�C�C� l  M M�JC�C��J  C� Z T set item 38 of (item x of myPrefsDevices) to AppHelper's createDeviceUI_(x) as list   C� �C�C� �   s e t   i t e m   3 8   o f   ( i t e m   x   o f   m y P r e f s D e v i c e s )   t o   A p p H e l p e r ' s   c r e a t e D e v i c e U I _ ( x )   a s   l i s tC� C�C�C� n  M WC�C�C� I   R W�IC��H�I "0 createdeviceui_ createDeviceUI_C� C��GC� o   R S�F�F 0 x  �G  �H  C� o   M R�E�E 0 	apphelper 	AppHelperC� C��DC� l  X X�CC�C��C  C� Z T set end of currentDeviceList to (item 1 of (item 38 of (item x of myPrefsDevices)))   C� �C�C� �   s e t   e n d   o f   c u r r e n t D e v i c e L i s t   t o   ( i t e m   1   o f   ( i t e m   3 8   o f   ( i t e m   x   o f   m y P r e f s D e v i c e s ) ) )�D  �Z  �Y  C� C�C�C� l  ^ ^�B�A�@�B  �A  �@  C� C�D C� l  ^ ^�?DD�?  D H B- get each frame, and position it accordingly in the minerListView   D �DD � -   g e t   e a c h   f r a m e ,   a n d   p o s i t i o n   i t   a c c o r d i n g l y   i n   t h e   m i n e r L i s t V i e wD  DDD r   ^ rDDD n  ^ pDD	D I   l p�>�=�<�> 	0 frame  �=  �<  D	 l  ^ lD
�;�:D
 n   ^ lDDD 4   i l�9D
�9 
cobjD m   j k�8�8 D l  ^ iD�7�6D n   ^ iDDD 4   f i�5D
�5 
cobjD m   g h�4�4 &D l  ^ fD�3�2D n   ^ fDDD 4   c f�1D
�1 
cobjD o   d e�0�0 0 x  D o   ^ c�/�/  0 myprefsdevices myPrefsDevices�3  �2  �7  �6  �;  �:  D o      �.�. 0 	thisframe 	thisFrameD DDD r   s zDDD m   s t�-�-  D n      DDD o   w y�,�, 0 x  D n   t wDDD o   u w�+�+ 
0 origin  D o   t u�*�* 0 	thisframe 	thisFrameD DDD r   { �D D!D  [   { �D"D#D" [   { �D$D%D$ l  { ~D&�)�(D& ]   { ~D'D(D' o   { |�'�' 0 devicesshown devicesShownD( o   | }�&�& 0 	rowheight 	rowHeight�)  �(  D% l  ~ �D)�%�$D) ]   ~ �D*D+D* o   ~ �#�# 0 devicesshown devicesShownD+ o    ��"�" 0 
rowpadding 
rowPadding�%  �$  D# o   � ��!�! $0 rowpaddingbottom rowPaddingBottomD! n      D,D-D, o   � �� �  0 y  D- n   � �D.D/D. o   � ��� 
0 origin  D/ o   � ��� 0 	thisframe 	thisFrameD D0D1D0 r   � �D2D3D2 o   � ��� 0 	rowheight 	rowHeightD3 n      D4D5D4 o   � ��� 
0 height  D5 n   � �D6D7D6 o   � ��� 0 size  D7 o   � ��� 0 	thisframe 	thisFrameD1 D8D9D8 r   � �D:D;D: o   � ��� 0 
framewidth 
frameWidthD; n      D<D=D< o   � ��� 	0 width  D= n   � �D>D?D> o   � ��� 0 size  D? o   � ��� 0 	thisframe 	thisFrameD9 D@DAD@ n  � �DBDCDB I   � ��DD�� 0 	setframe_ 	setFrame_DD DE�DE o   � ��� 0 	thisframe 	thisFrame�  �  DC l  � �DF��DF n   � �DGDHDG 4   � ��DI
� 
cobjDI m   � ��� DH l  � �DJ��DJ n   � �DKDLDK 4   � ��DM
� 
cobjDM m   � ��
�
 &DL l  � �DN�	�DN n   � �DODPDO 4   � ��DQ
� 
cobjDQ o   � ��� 0 x  DP o   � ���  0 myprefsdevices myPrefsDevices�	  �  �  �  �  �  DA DRDSDR l  � �����  �  �  DS DTDUDT l  � ��DVDW�  DV 0 * add it to our main UI element for display   DW �DXDX T   a d d   i t   t o   o u r   m a i n   U I   e l e m e n t   f o r   d i s p l a yDU DYDZDY n  � �D[D\D[ I   � �� D]���  0 addsubview_ addSubview_D] D^��D^ n   � �D_D`D_ 4   � ���Da
�� 
cobjDa m   � ����� D` l  � �Db����Db n   � �DcDdDc 4   � ���De
�� 
cobjDe m   � ����� &Dd l  � �Df����Df n   � �DgDhDg 4   � ���Di
�� 
cobjDi o   � ����� 0 x  Dh o   � �����  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  ��  D\ o   � ����� 0 minerlistview minerListViewDZ DjDkDj l  � ���������  ��  ��  Dk Dl��Dl r   � �DmDnDm [   � �DoDpDo o   � ����� 0 devicesshown devicesShownDp m   � ����� Dn o      ���� 0 devicesshown devicesShown��  C�   to be shown in list   C� �DqDq (   t o   b e   s h o w n   i n   l i s t�k  �j  �m 0 x  C� m    ���� C� n    "DrDsDr m    !��
�� 
nmbrDs n   DtDuDt 2   ��
�� 
cobjDu o    ����  0 myprefsdevices myPrefsDevices�l  C� DvDwDv l  � ���������  ��  ��  Dw DxDyDx l  � ���DzD{��  Dz . ( size this main UI element appropriately   D{ �D|D| P   s i z e   t h i s   m a i n   U I   e l e m e n t   a p p r o p r i a t e l yDy D}D~D} l  � ���������  ��  ��  D~ DD�D r   � �D�D�D� n  � �D�D�D� I   � ��������� 	0 frame  ��  ��  D� o   � ����� 0 minerlistview minerListViewD� o      ���� (0 minerlistviewframe minerListViewFrameD� D�D�D� r   � �D�D�D� m   � ����� D� n      D�D�D� o   � ����� 0 x  D� n   � �D�D�D� o   � ����� 
0 origin  D� o   � ����� (0 minerlistviewframe minerListViewFrameD� D�D�D� r   � �D�D�D� o   � ����� 0 
framewidth 
frameWidthD� n      D�D�D� o   � ����� 	0 width  D� n   � �D�D�D� o   � ����� 0 size  D� o   � ����� (0 minerlistviewframe minerListViewFrameD� D�D�D� r   �D�D�D� l  �D�����D� [   �D�D�D� [   � �D�D�D� l  � �D�����D� ]   � �D�D�D� o   � ����� 0 	rowheight 	rowHeightD� o   � ����� 0 devicesshown devicesShown��  ��  D� l  � �D�����D� ]   � �D�D�D� o   � ����� 0 devicesshown devicesShownD� o   � ����� 0 
rowpadding 
rowPadding��  ��  D� o   � ���� $0 rowpaddingbottom rowPaddingBottom��  ��  D� n      D�D�D� o  ���� 
0 height  D� n  D�D�D� o  ���� 0 size  D� o  ���� (0 minerlistviewframe minerListViewFrameD� D�D�D� l ��������  ��  ��  D� D�D�D� Z  7D�D���D�D� = D�D�D� l D���׿D� c  D�D�D� n D�D�D� I  ׾׽׼׾ 	0 state  ׽  ׼  D� o  ׻׻ 0 detailtwistie detailTwistieD� m  ׺
׺ 
bool��  ׿  D� m  ׹
׹ boovtrueD� r  !D�D�D� m  ׸׸ QD� n      D�D�D� o   ׷׷ 0 y  D� n  D�D�D� o  ׶׶ 
0 origin  D� o  ׵׵ (0 minerlistviewframe minerListViewFrame��  D� r  $7D�D�D� \  $1D�D�D� m  $'״״ QD� l '0D�׳ײD� [  '0D�D�D� [  '.D�D�D� l '*D�ױװD� ]  '*D�D�D� o  '(ׯׯ 0 	rowheight 	rowHeightD� o  ()׮׮ 0 devicesshown devicesShownױ  װ  D� l *-D�׭׬D� ]  *-D�D�D� o  *+׫׫ 0 devicesshown devicesShownD� o  +,תת 0 
rowpadding 
rowPadding׭  ׬  D� o  ./שש $0 rowpaddingbottom rowPaddingBottom׳  ײ  D� n      D�D�D� o  46רר 0 y  D� n  14D�D�D� o  24קק 
0 origin  D� o  12צצ (0 minerlistviewframe minerListViewFrameD� D�D�D� l 88ץפףץ  פ  ף  D� D�D�D� l 88עD�D�ע  D� A ; set minerListViewFrame to {{28,81},{frameWidth,rowYstart}}   D� �D�D� v   s e t   m i n e r L i s t V i e w F r a m e   t o   { { 2 8 , 8 1 } , { f r a m e W i d t h , r o w Y s t a r t } }D� D�D�D� l 88סD�D�ס  D� j d set thisRect to mainWindow's constrainFrameRect_toScreen_(minerListViewFrame,mainWindow's screen())   D� �D�D� �   s e t   t h i s R e c t   t o   m a i n W i n d o w ' s   c o n s t r a i n F r a m e R e c t _ t o S c r e e n _ ( m i n e r L i s t V i e w F r a m e , m a i n W i n d o w ' s   s c r e e n ( ) )D� D�D�D� l 88נןמנ  ן  מ  D� D�D�D� n 8BD�D�D� I  =BםD�לם 0 	setframe_ 	setFrame_D� D�כD� o  =>ךך (0 minerlistviewframe minerListViewFrameכ  ל  D� o  8=יי 0 minerlistview minerListViewD� D�D�D� l CCטחזט  ח  ז  D� D�D�D� l CCוD�D�ו  D�   size the bg box   D� �D�D�     s i z e   t h e   b g   b o xD� D�D�D� r  CND�D�D� n CLD�D�D� I  HLהדגה 	0 frame  ד  ג  D� o  CHבב $0 minerlistviewbox minerListViewBoxD� o      אא 0 boxframe boxFrameD� D�D�D� r  OVD�D�D� m  OP׏׏  D� n      D�D�D� o  SU׎׎ 0 x  D� n  PSD�D�D� o  QS׍׍ 
0 origin  D� o  PQ׌׌ 0 boxframe boxFrameD� D�D�D� r  W^D�D�D� m  WX׋׋  D� n      D�D�D� o  []׊׊ 0 y  D� n  X[D�D�D� o  Y[׉׉ 
0 origin  D� o  XY׈׈ 0 boxframe boxFrameD� E EE  r  _hEEE o  _`ׇׇ 0 
framewidth 
frameWidthE n      EEE o  cg׆׆ 	0 width  E n  `cEEE o  acׅׅ 0 size  E o  `aׄׄ 0 boxframe boxFrameE EE	E r  i~E
EE
 [  ixEEE l ivE׃ׂE n  ivEEE o  tvׁׁ 
0 height  E n  itEEE o  rt׀׀ 0 size  E n irEEE I  nr��~�}� 	0 frame  �~  �}  E o  in�|�| 0 minerlistview minerListView׃  ׂ  E m  vw�{�{ 
E n      EEE o  {}�z�z 
0 height  E n  x{EEE o  y{�y�y 0 size  E o  xy�x�x 0 boxframe boxFrameE	 EEE n �EEE I  ���wE�v�w 0 	setframe_ 	setFrame_E E�uE o  ���t�t 0 boxframe boxFrame�u  �v  E o  ��s�s $0 minerlistviewbox minerListViewBoxE EE E l ���r�q�p�r  �q  �p  E  E!E"E! l ���oE#E$�o  E# ' ! update the dock menu accordingly   E$ �E%E% B   u p d a t e   t h e   d o c k   m e n u   a c c o r d i n g l yE" E&E'E& I  ���n�m�l�n (0 drawdockdevicelist drawDockDeviceList�m  �l  E' E(E)E( l ���k�j�i�k  �j  �i  E) E*E+E* l ���hE,E-�h  E, * $ update the devices menu accordingly   E- �E.E. H   u p d a t e   t h e   d e v i c e s   m e n u   a c c o r d i n g l yE+ E/E0E/ I  ���g�f�e�g (0 drawmenudevicelist drawMenuDeviceList�f  �e  E0 E1�dE1 l ���c�b�a�c  �b  �a  �d  C� E2E3E2 l     �`�_�^�`  �_  �^  E3 E4E5E4 i  ,/E6E7E6 I      �]�\�[�] (0 drawdockdevicelist drawDockDeviceList�\  �[  E7 k     �E8E8 E9E:E9 l     �ZE;E<�Z  E; , & remove all device items from the dock   E< �E=E= L   r e m o v e   a l l   d e v i c e   i t e m s   f r o m   t h e   d o c kE: E>E?E> V     E@EAE@ n   EBECEB I    �YED�X�Y (0 removeitematindex_ removeItemAtIndex_ED EE�WEE m    �V�V �W  �X  EC o    �U�U 0 	adockmenu 	aDockMenuEA ?   EFEGEF l   EH�T�SEH n   EIEJEI I   	 �R�Q�P�R 0 numberofitems numberOfItems�Q  �P  EJ o    	�O�O 0 	adockmenu 	aDockMenu�T  �S  EG m    �N�N E? EKELEK l     �M�L�K�M  �L  �K  EL EMENEM l     �JEOEP�J  EO #  add the device menu here too   EP �EQEQ :   a d d   t h e   d e v i c e   m e n u   h e r e   t o oEN ER�IER Y     �ES�HETEU�GES Z   3 �EVEW�F�EEV =  3 BEXEYEX c   3 @EZE[EZ n   3 >E\E]E\ 4   ; >�DE^
�D 
cobjE^ m   < =�C�C E] n   3 ;E_E`E_ 4   8 ;�BEa
�B 
cobjEa o   9 :�A�A 0 x  E` o   3 8�@�@  0 myprefsdevices myPrefsDevicesE[ m   > ?�?
�? 
boolEY m   @ A�>
�> boovtrueEW k   E �EbEb EcEdEc r   E REeEfEe n  E PEgEhEg I   L P�=�<�;�= 0 init  �<  �;  Eh n  E LEiEjEi I   H L�:�9�8�: 	0 alloc  �9  �8  Ej n  E HEkElEk o   F H�7�7 0 
nsmenuitem 
NSMenuItemEl m   E F�6
�6 misccuraEf o      �5�5 0 thismenuitem thisMenuItemEd EmEnEm n  S ^EoEpEo I   T ^�4Eq�3�4 0 	settitle_ 	setTitle_Eq Er�2Er I   T Z�1Es�0�1 0 getdevicename getDeviceNameEs Et�/Et o   U V�.�. 0 x  �/  �0  �2  �3  Ep o   S T�-�- 0 thismenuitem thisMenuItemEn EuEvEu n  _ rEwExEw I   ` r�,Ey�+�, 0 setsubmenu_ setSubmenu_Ey Ez�*Ez n   ` nE{E|E{ 4   k n�)E}
�) 
cobjE} m   l m�(�( E| l  ` kE~�'�&E~ n   ` kEE�E 4   h k�%E�
�% 
cobjE� m   i j�$�$ &E� l  ` hE��#�"E� n   ` hE�E�E� 4   e h�!E�
�! 
cobjE� o   f g� �  0 x  E� o   ` e��  0 myprefsdevices myPrefsDevices�#  �"  �'  �&  �*  �+  Ex o   _ `�� 0 thismenuitem thisMenuItemEv E�E�E� n  s ~E�E�E� I   x ~�E��� *0 insertitem_atindex_ insertItem_atIndex_E� E�E�E� o   x y�� 0 thismenuitem thisMenuItemE� E��E� m   y z�� �  �  E� o   s x�� 0 	adockmenu 	aDockMenuE� E��E� l   ����  �  �  �  �F  �E  �H 0 x  ET m   # $�� EU n   $ .E�E�E� m   + -�
� 
nmbrE� n  $ +E�E�E� 2  ) +�
� 
cobjE� o   $ )��  0 myprefsdevices myPrefsDevices�G  �I  E5 E�E�E� l     ����  �  �  E� E�E�E� i  03E�E�E� I      ���
� (0 drawmenudevicelist drawMenuDeviceList�  �
  E� k     zE�E� E�E�E� n    	E�E�E� I    	�	���	  0 removeallitems removeAllItems�  �  E� o     �� 0 devicesmenu devicesMenuE� E�E�E� l  
 
����  �  �  E� E�E�E� l  
 
�E�E��  E� #  add the device menu here too   E� �E�E� :   a d d   t h e   d e v i c e   m e n u   h e r e   t o oE� E��E� Y   
 zE�� E�E���E� Z    uE�E�����E� =   ,E�E�E� c    *E�E�E� n    (E�E�E� 4   % (��E�
�� 
cobjE� m   & '���� E� n    %E�E�E� 4   " %��E�
�� 
cobjE� o   # $���� 0 x  E� o    "����  0 myprefsdevices myPrefsDevicesE� m   ( )��
�� 
boolE� m   * +��
�� boovtrueE� k   / qE�E� E�E�E� l  / /��������  ��  ��  E� E�E�E� r   / CE�E�E� n  / AE�E�E� I   = A�������� 0 copy  ��  ��  E� l  / =E�����E� n   / =E�E�E� 4   : =��E�
�� 
cobjE� m   ; <���� E� l  / :E�����E� n   / :E�E�E� 4   7 :��E�
�� 
cobjE� m   8 9���� &E� l  / 7E�����E� n   / 7E�E�E� 4   4 7��E�
�� 
cobjE� o   5 6���� 0 x  E� o   / 4����  0 myprefsdevices myPrefsDevices��  ��  ��  ��  ��  ��  E� o      ���� 0 	amenucopy 	aMenuCopyE� E�E�E� l  D D��������  ��  ��  E� E�E�E� r   D QE�E�E� n  D OE�E�E� I   K O�������� 0 init  ��  ��  E� n  D KE�E�E� I   G K�������� 	0 alloc  ��  ��  E� n  D GE�E�E� o   E G���� 0 
nsmenuitem 
NSMenuItemE� m   D E��
�� misccuraE� o      ���� 0 thismenuitem thisMenuItemE� E�E�E� n  R ]E�E�E� I   S ]��E����� 0 	settitle_ 	setTitle_E� E���E� I   S Y��E����� 0 getdevicename getDeviceNameE� E���E� o   T U���� 0 x  ��  ��  ��  ��  E� o   R S���� 0 thismenuitem thisMenuItemE� E�E�E� n  ^ dE�E�E� I   _ d��E����� 0 setsubmenu_ setSubmenu_E� E���E� o   _ `���� 0 	amenucopy 	aMenuCopy��  ��  E� o   ^ _���� 0 thismenuitem thisMenuItemE� E�E�E� n  e oE�E�E� I   j o��E����� 0 additem_ addItem_E� E���E� o   j k���� 0 thismenuitem thisMenuItem��  ��  E� o   e j���� 0 devicesmenu devicesMenuE� E���E� l  p p��������  ��  ��  ��  ��  ��  �  0 x  E� m    ֿֿ E� n    E�E�E� m    ־
־ 
nmbrE� n   E�E�E� 2   ֽ
ֽ 
cobjE� o    ּּ  0 myprefsdevices myPrefsDevices��  �  E� E�E�E� l     ֺֹֻֻ  ֺ  ֹ  E� E�E�E� i  47E�E�E� I      ָE�ַָ "0 settempwarning_ setTempWarning_E� E�ֶE� o      ֵֵ 
0 sender  ֶ  ַ  E� k     �E�E� E�E�E� r     3E�E�E� I    1ִE�E�
ִ .sysodlogaskr        TEXTE� b     E�E�E� b     F FF  b     FFF I     
ֳFֲֳ 0 getdevicename getDeviceNameF FֱF c    FFF n   FF	F o    ְְ 0 tag  F	 o    ֯֯ 
0 sender  F m    ֮
֮ 
longֱ  ֲ  F o   
 ֭
֭ 
ret F o    ֬
֬ 
ret E� m    F
F
 �FF � E n t e r   a   t e m p e r a t u r e   a t   w h i c h   y o u   w i l l   b e   a l e r t e d   i f   t h i s   d e v i c e   e x c e e d s   ( l e a v e   b l a n k   t o   a l l o w   a n y   t e m p e r a t u r e ) .E� ֫FF
֫ 
dtxtF l   !F֪֩F c    !FFF n    FFF 4    ֨F
֨ 
cobjF m    ֧֧ F n    FFF 4    ֦F
֦ 
cobjF l   F֥֤F n   FFF o    ֣֣ 0 tag  F o    ֢֢ 
0 sender  ֥  ֤  F o    ֡֡  0 myprefsdevices myPrefsDevicesF m     ֠
֠ 
ctxt֪  ֩  F ֟FF
֟ 
btnsF J   " 'FF FFF m   " #FF �F F   C a n c e lF F!F"F! m   # $F#F# �F$F$  P a u s e   5   m i n sF" F%֞F% m   $ %F&F& �F'F'  J u s t   a l e r t   m e֞  F ֝F(F)
֝ 
dfltF( m   ( )֜֜ F) ֛F*֚
֛ 
dispF* m   * +֙
֙ stic   ֚  E� o      ֘֘ 0 userresponse userResponseE� F+֗F+ Z   4 �F,F-F.֖F, =  4 =F/F0F/ n   4 9F1F2F1 1   5 9֕
֕ 
bhitF2 o   4 5֔֔ 0 userresponse userResponseF0 m   9 <F3F3 �F4F4  C o o l d o w n   5   m i n sF- k   @ mF5F5 F6F7F6 r   @ TF8F9F8 m   @ CF:F: �F;F;  p a u s e 5 m i n sF9 n      F<F=F< 4   N S֓F>
֓ 
cobjF> m   O R֒֒ F= n   C NF?F@F? 4   H N֑FA
֑ 
cobjFA l  I MFB֐֏FB n  I MFCFDFC o   J L֎֎ 0 tag  FD o   I J֍֍ 
0 sender  ֐  ֏  F@ o   C H֌֌  0 myprefsdevices myPrefsDevicesF7 FE֋FE r   U mFFFGFF l  U ^FH֊։FH c   U ^FIFJFI n   U ZFKFLFK 1   V Zֈ
ֈ 
ttxtFL o   U Vևև 0 userresponse userResponseFJ m   Z ]ֆ
ֆ 
doub֊  ։  FG n      FMFNFM 4   i lօFO
օ 
cobjFO m   j kքք FN n   ^ iFPFQFP 4   c iփFR
փ 
cobjFR l  d hFSւցFS n  d hFTFUFT o   e gրր 0 tag  FU o   d e�� 
0 sender  ւ  ց  FQ o   ^ c�~�~  0 myprefsdevices myPrefsDevices֋  F. FVFWFV =  p yFXFYFX n   p uFZF[FZ 1   q u�}
�} 
bhitF[ o   p q�|�| 0 userresponse userResponseFY m   u xF\F\ �F]F]  J u s t   a l e r t   m eFW F^�{F^ k   | �F_F_ F`FaF` r   | �FbFcFb m   | FdFd �FeFe 
 a l e r tFc n      FfFgFf 4   � ��zFh
�z 
cobjFh m   � ��y�y Fg n    �FiFjFi 4   � ��xFk
�x 
cobjFk l  � �Fl�w�vFl n  � �FmFnFm o   � ��u�u 0 tag  Fn o   � ��t�t 
0 sender  �w  �v  Fj o    ��s�s  0 myprefsdevices myPrefsDevicesFa Fo�rFo r   � �FpFqFp l  � �Fr�q�pFr c   � �FsFtFs n   � �FuFvFu 1   � ��o
�o 
ttxtFv o   � ��n�n 0 userresponse userResponseFt m   � ��m
�m 
doub�q  �p  Fq n      FwFxFw 4   � ��lFy
�l 
cobjFy m   � ��k�k Fx n   � �FzF{Fz 4   � ��jF|
�j 
cobjF| l  � �F}�i�hF} n  � �F~FF~ o   � ��g�g 0 tag  F o   � ��f�f 
0 sender  �i  �h  F{ o   � ��e�e  0 myprefsdevices myPrefsDevices�r  �{  ֖  ֗  E� F�F�F� l     �d�c�b�d  �c  �b  F� F�F�F� i  8;F�F�F� I      �aF��`�a 0 dominermenu_ doMinerMenu_F� F��_F� o      �^�^ 
0 sender  �_  �`  F� l     �]F�F��]  F�   display dialog "Hi"   F� �F�F� (   d i s p l a y   d i a l o g   " H i "F� F�F�F� l     �\�[�Z�\  �[  �Z  F� F�F�F� i  <?F�F�F� I      �YF��X�Y 0 getdevicename getDeviceNameF� F��WF� o      �V�V 0 
thisdevice 
thisDevice�W  �X  F� L     F�F� c     F�F�F� n    
F�F�F� I    
�UF��T�U  0 getdevicename_ getDeviceName_F� F��SF� o    �R�R 0 
thisdevice 
thisDevice�S  �T  F� o     �Q�Q 0 	apphelper 	AppHelperF� m   
 �P
�P 
ctxtF� F�F�F� l     �O�N�M�O  �N  �M  F� F�F�F� i  @CF�F�F� I      �LF��K�L (0 getdeviceintensity getDeviceIntensityF� F��JF� o      �I�I 0 
thisdevice 
thisDevice�J  �K  F� k     5F�F� F�F�F� l     �HF�F��H  F�   (thisDevice)   F� �F�F�    ( t h i s D e v i c e )F� F��GF� Z     5F�F�F��FF� =    F�F�F� o     �E�E 0 currentcoin currentCoinF� m    F�F� �F�F�  B i t c o i nF� L   
 F�F� n   
 F�F�F� 4    �DF�
�D 
cobjF� m    �C�C F� n   
 F�F�F� 4    �BF�
�B 
cobjF� o    �A�A 0 
thisdevice 
thisDeviceF� o   
 �@�@  0 myprefsdevices myPrefsDevicesF� F�F�F� =   !F�F�F� o    �?�? 0 currentcoin currentCoinF� m     F�F� �F�F�  L i t e c o i nF� F��>F� L   $ 1F�F� n   $ 0F�F�F� 4   , /�=F�
�= 
cobjF� m   - .�<�< 	F� n   $ ,F�F�F� 4   ) ,�;F�
�; 
cobjF� o   * +�:�: 0 
thisdevice 
thisDeviceF� o   $ )�9�9  0 myprefsdevices myPrefsDevices�>  �F  �G  F� F�F�F� l     �8�7�6�8  �7  �6  F� F�F�F� i  DGF�F�F� I      �5F��4�5 0 setintensity_ setIntensity_F� F��3F� o      �2�2 0 
thisdevice 
thisDevice�3  �4  F� k     ;F�F� F�F�F� r     F�F�F� c     F�F�F� o     �1�1 0 
thisdevice 
thisDeviceF� m    �0
�0 
longF� o      �/�/ 0 
thisdevice 
thisDeviceF� F�F�F� l   �.F�F��.  F� / ) submit the intensity change to the miner   F� �F�F� R   s u b m i t   t h e   i n t e n s i t y   c h a n g e   t o   t h e   m i n e rF� F�F�F� I    �-F��,�- 
0 msglog  F� F�F�F� b    F�F�F� b    F�F�F� b    F�F�F� m    F�F� �F�F�  I n t e n s i t y   f o r  F� I    �+F��*�+ 0 getdevicename getDeviceNameF� F��)F� o   	 
�(�( 0 
thisdevice 
thisDevice�)  �*  F� m    F�F� �F�F�    c h a n g e d   t o  F� I    �'F��&�' (0 getdeviceintensity getDeviceIntensityF� F��%F� o    �$�$ 0 
thisdevice 
thisDevice�%  �&  F� F��#F� m    F�F� �F�F�  n o t i c e�#  �,  F� F��"F� I    ;�!F�� �! 0 sendcommand sendCommandF� F�F�F� m     F�F� �F�F�  g p u i n t e n s i t yF� F�F�F� b     6F�F�F� b     /F�F�F� l    -F���F� c     -F�F�F� n     +F�F�F� 4   ( +�G 
� 
cobjG  m   ) *�� F� l    (G��G n     (GGG 4   % (�G
� 
cobjG o   & '�� 0 
thisdevice 
thisDeviceG o     %��  0 myprefsdevices myPrefsDevices�  �  F� m   + ,�
� 
ctxt�  �  F� m   - .GG �GG  ,F� I   / 5�G�� (0 getdeviceintensity getDeviceIntensityG G�G o   0 1�� 0 
thisdevice 
thisDevice�  �  F� G	�G	 m   6 7�
� boovtrue�  �   �"  F� G
GG
 l     ����  �  �  G GGG i  HKGGG I      �G�� $0 changeintensity_ changeIntensity_G G�
G o      �	�	 
0 sender  �
  �  G n    
GGG I    
�G�� $0 changeintensity_ changeIntensity_G G�G o    �� 
0 sender  �  �  G o     �� 0 	apphelper 	AppHelperG GGG l     ����  �  �  G GGG i  LOGGG I      � �����  20 updatedockintensitymenu updateDockIntensityMenu��  ��  G l     ��������  ��  ��  G GGG l     ��������  ��  ��  G GGG i  PSG G!G  I      ��G"���� 20 changeintensityinternal changeIntensityInternalG" G#��G# o      ���� 0 
thisdevice 
thisDevice��  ��  G! I     ��G$���� 40 changeintensityinternal_ changeIntensityInternal_G$ G%��G% o    ���� 0 
thisdevice 
thisDevice��  ��  G G&G'G& l     ��������  ��  ��  G' G(G)G( i  TWG*G+G* I      ��G,���� 40 changeintensityinternal_ changeIntensityInternal_G, G-��G- o      ���� 0 
thisdevice 
thisDevice��  ��  G+ k     G.G. G/G0G/ r     G1G2G1 c     G3G4G3 o     ���� 0 
thisdevice 
thisDeviceG4 m    ��
�� 
longG2 o      ���� 0 
thisdevice 
thisDeviceG0 G5G6G5 l   ��G7G8��  G7   update dock menu   G8 �G9G9 "   u p d a t e   d o c k   m e n uG6 G:G;G: I    �������� 20 updatedockintensitymenu updateDockIntensityMenu��  ��  G; G<G=G< l   ��G>G?��  G> E ? save the requested settings change to the user defaults system   G? �G@G@ ~   s a v e   t h e   r e q u e s t e d   s e t t i n g s   c h a n g e   t o   t h e   u s e r   d e f a u l t s   s y s t e mG= GAGBGA I    �������� *0 requestsavesettings requestSaveSettings��  ��  GB GCGDGC l   ��GEGF��  GE   tell the miner to change   GF �GGGG 2   t e l l   t h e   m i n e r   t o   c h a n g eGD GH��GH I    ��GI���� 0 setintensity_ setIntensity_GI GJ��GJ o    ���� 0 
thisdevice 
thisDevice��  ��  ��  G) GKGLGK l     ��������  ��  ��  GL GMGNGM i  X[GOGPGO I      ��GQ���� .0 togglestartstopminer_ toggleStartStopMiner_GQ GR��GR o      ���� 
0 sender  ��  ��  GP k     rGSGS GTGUGT l     ��������  ��  ��  GU GV��GV Z     rGWGXGY��GW =    GZG[GZ o     ���� 0 minerrunning minerRunningG[ m    ��
�� boovtrueGX k   
 0G\G\ G]G^G] I   
 �������� 0 	stopminer 	stopMiner��  ��  G^ G_G`G_ n   GaGbGa I    ��Gc���� 0 	settitle_ 	setTitle_Gc Gd��Gd m    GeGe �GfGf  S t a r t   m i n i n g��  ��  Gb o    ���� &0 dockmenustartstop dockMenuStartStopG` GgGhGg n   %GiGjGi I     %��Gk���� 0 	settitle_ 	setTitle_Gk Gl��Gl m     !GmGm �GnGn  S t a r t   m i n i n g��  ��  Gj o     տտ 00 intensitymenustartstop intensityMenuStartStopGh GoվGo n  & 0GpGqGp I   + 0սGrռս 0 	settitle_ 	setTitle_Gr GsջGs m   + ,GtGt �GuGu %�ջ  ռ  Gq o   & +պպ 0 pausenub pauseNubվ  GY GvGwGv =  3 :GxGyGx o   3 8չչ 0 minerrunning minerRunningGy m   8 9ո
ո boovfalsGw GzշGz k   = nG{G{ G|G}G| I   = FնG~յն 0 setstatusline setStatusLineG~ GG�G m   > ?G�G� �G�G� $ I n i t i a l i z i n g   m i n e rG� G�G�G� m   ? @մ
մ boovtrueG� G�G�G� m   @ Aճճ  G� G�ղG� m   A BG�G� �G�G� 
 m i n e rղ  յ  G} G�G�G� I   G MձG�հձ 0 
startminer 
startMinerG� G�կG� m   H IG�G� �G�G�  կ  հ  G� G�G�G� n  N XG�G�G� I   S XծG�խծ 0 	settitle_ 	setTitle_G� G�լG� m   S TG�G� �G�G�  S t o p   m i n i n gլ  խ  G� o   N Sիի &0 dockmenustartstop dockMenuStartStopG� G�G�G� n  Y cG�G�G� I   ^ cժG�թժ 0 	settitle_ 	setTitle_G� G�ըG� m   ^ _G�G� �G�G�  S t o p   m i n i n gը  թ  G� o   Y ^էէ 00 intensitymenustartstop intensityMenuStartStopG� G�զG� n  d nG�G�G� I   i nեG�դե 0 	settitle_ 	setTitle_G� G�գG� m   i jG�G� �G�G�  I Iգ  դ  G� o   d iբբ 0 pausenub pauseNubզ  շ  ��  ��  GN G�G�G� l     աՠ՟ա  ՠ  ՟  G� G�G�G� i  \_G�G�G� I      ՞՝՜՞  0 closepoolsheet closePoolSheet՝  ՜  G� k     G�G� G�G�G� n    G�G�G� I    ՛G�՚՛ 0 	endsheet_ 	endSheet_G� G�ՙG� o    ՘՘ 0 	poolsheet 	poolSheetՙ  ՚  G� n    G�G�G� o    ՗՗ 0 nsapp NSAppG� m     Ֆ
Ֆ misccuraG� G�ՕG� n   G�G�G� I    ՔG�ՓՔ 0 	orderout_ 	orderOut_G� G�ՒG� o    ՑՑ 0 	poolsheet 	poolSheetՒ  Փ  G� o    ՐՐ 0 	poolsheet 	poolSheetՕ  G� G�G�G� l     ՏՎՍՏ  Վ  Ս  G� G�G�G� i  `cG�G�G� I      ՌG�ՋՌ $0 poolsheetaccept_ poolSheetAccept_G� G�ՊG� o      ՉՉ 
0 sender  Պ  Ջ  G� k    KG�G� G�G�G� l     ՈՇՆՈ  Շ  Ն  G� G�G�G� r     G�G�G� o     ՅՅ 0 currentcoin currentCoinG� o      ՄՄ 0 oldcoin oldCoinG� G�G�G� l   ՃՂՁՃ  Ղ  Ձ  G� G�G�G� I    ՀG��Հ 0 setstatusline setStatusLineG� G�G�G� b   	 G�G�G� m   	 
G�G� �G�G� " C h a n g i n g   p o o l   t o  G� l  
 G��~�}G� c   
 G�G�G� n  
 G�G�G� I    �|�{�z�| 0 stringvalue stringValue�{  �z  G� o   
 �y�y 0 poolsheetname poolSheetNameG� m    �x
�x 
ctxt�~  �}  G� G�G�G� m    �w
�w boovtrueG� G�G�G� m    �v�v G� G��uG� m    G�G� �G�G�  p o o l s t a t u s�u  �  G� G�G�G� l   �t�s�r�t  �s  �r  G� G�G�G� l   �qG�G��q  G�   save settings   G� �G�G�    s a v e   s e t t i n g sG� G�G�G� r    !G�G�G� m    �p
�p boovfalsG� o      �o�o 0 foundit  G� G�G�G� Z   " �G�G��n�mG� >  " )G�G�G� o   " '�l�l 0 editingpool editingPoolG� m   ' (G�G� �G�G�  n e wG� Y   , �G��kG�G��jG� Z   ? �G�G��iG�G� =  ? WG�G�G� l  ? IG��h�gG� c   ? IG�G�G� n   ? GG�H G� 4   D G�fH
�f 
cobjH m   E F�e�e H  o   ? D�d�d 0 editingpool editingPoolG� m   G H�c
�c 
ctxt�h  �g  G� l  I VH�b�aH c   I VHHH n   I THHH 4   Q T�`H
�` 
cobjH m   R S�_�_ H l  I QH�^�]H n   I QH	H
H	 4   N Q�\H
�\ 
cobjH o   O P�[�[ 0 x  H
 o   I N�Z�Z 0 myprefspools myPrefsPools�^  �]  H m   T U�Y
�Y 
ctxt�b  �a  G� k   Z �HH HHH r   Z qHHH l  Z eH�X�WH c   Z eHHH n  Z cHHH I   _ c�V�U�T�V 0 stringvalue stringValue�U  �T  H o   Z _�S�S 0 poolsheeturl poolSheetURLH m   c d�R
�R 
ctxt�X  �W  H n      HHH 4   m p�QH
�Q 
cobjH m   n o�P�P H l  e mH�O�NH n   e mHHH 4   j m�MH
�M 
cobjH o   k l�L�L 0 x  H o   e j�K�K 0 myprefspools myPrefsPools�O  �N  H HHH r   r �HH H l  r }H!�J�IH! c   r }H"H#H" n  r {H$H%H$ I   w {�H�G�F�H 0 stringvalue stringValue�G  �F  H% o   r w�E�E 20 poolsheetworkerusername poolSheetWorkerUsernameH# m   { |�D
�D 
ctxt�J  �I  H  n      H&H'H& 4   � ��CH(
�C 
cobjH( m   � ��B�B H' l  } �H)�A�@H) n   } �H*H+H* 4   � ��?H,
�? 
cobjH, o   � ��>�> 0 x  H+ o   } ��=�= 0 myprefspools myPrefsPools�A  �@  H H-H.H- r   � �H/H0H/ m   � �H1H1 �H2H2  1H0 n      H3H4H3 4   � ��<H5
�< 
cobjH5 m   � ��;�; H4 l  � �H6�:�9H6 n   � �H7H8H7 4   � ��8H9
�8 
cobjH9 o   � ��7�7 0 x  H8 o   � ��6�6 0 myprefspools myPrefsPools�:  �9  H. H:H;H: r   � �H<H=H< l  � �H>�5�4H> c   � �H?H@H? n  � �HAHBHA I   � ��3�2�1�3 *0 titleofselecteditem titleOfSelectedItem�2  �1  HB o   � ��0�0 0 poolsheetcoin poolSheetCoinH@ m   � ��/
�/ 
ctxt�5  �4  H= n      HCHDHC 4   � ��.HE
�. 
cobjHE m   � ��-�- HD l  � �HF�,�+HF n   � �HGHHHG 4   � ��*HI
�* 
cobjHI o   � ��)�) 0 x  HH o   � ��(�( 0 myprefspools myPrefsPools�,  �+  H; HJHKHJ r   � �HLHMHL c   � �HNHOHN n  � �HPHQHP I   � ��'�&�%�' *0 titleofselecteditem titleOfSelectedItem�&  �%  HQ o   � ��$�$ 0 poolsheetcoin poolSheetCoinHO m   � ��#
�# 
ctxtHM o      �"�" 0 currentcoin currentCoinHK HR�!HR r   � �HSHTHS m   � �� 
�  boovtrueHT o      �� 0 foundit  �!  �i  G� r   � �HUHVHU m   � �HWHW �HXHX  0HV n      HYHZHY 4   � ��H[
� 
cobjH[ m   � ��� HZ l  � �H\��H\ n   � �H]H^H] 4   � ��H_
� 
cobjH_ o   � ��� 0 x  H^ o   � ��� 0 myprefspools myPrefsPools�  �  �k 0 x  G� m   / 0�� G� n   0 :H`HaH` m   7 9�
� 
nmbrHa n  0 7HbHcHb 2  5 7�
� 
cobjHc o   0 5�� 0 myprefspools myPrefsPools�j  �n  �m  G� HdHeHd l  � �����  �  �  He HfHgHf Z   � �HhHi��Hh ?  � �HjHkHj n   � �HlHmHl m   � ��
� 
nmbrHm n  � �HnHoHn 2  � ��
� 
cobjHo o   � ��� 0 myprefspools myPrefsPoolsHk m   � ��� Hi l  � ��
HpHq�
  Hp $  choose from list myPrefsPools   Hq �HrHr <   c h o o s e   f r o m   l i s t   m y P r e f s P o o l s�  �  Hg HsHtHs Z   �~HuHv�	�Hu =  � �HwHxHw o   � ��� 0 foundit  Hx m   � ��
� boovfalsHv l  �zHyHzH{Hy k   �zH|H| H}H~H} Y   �H�H�H��H r  H�H�H� m  H�H� �H�H�  0H� n      H�H�H� 4  �H�
� 
cobjH� m  �� H� l H��� H� n  H�H�H� 4  ��H�
�� 
cobjH� o  ���� 0 x  H� o  ���� 0 myprefspools myPrefsPools�  �   � 0 x  H� m   � ����� H� n   �H�H�H� m  ��
�� 
nmbrH� n  �H�H�H� 2 ��
�� 
cobjH� o   ����� 0 myprefspools myPrefsPools�  H~ H�H�H� r  ZH�H�H� J  SH�H� H�H�H� c  *H�H�H� n (H�H�H� I  $(�������� 0 stringvalue stringValue��  ��  H� o  $���� 0 poolsheetname poolSheetNameH� m  ()��
�� 
ctxtH� H�H�H� c  *5H�H�H� n *3H�H�H� I  /3�������� 0 stringvalue stringValue��  ��  H� o  */���� 0 poolsheeturl poolSheetURLH� m  34��
�� 
ctxtH� H�H�H� c  5@H�H�H� n 5>H�H�H� I  :>�������� 0 stringvalue stringValue��  ��  H� o  5:���� 20 poolsheetworkerusername poolSheetWorkerUsernameH� m  >?��
�� 
ctxtH� H�H�H� m  @A���� H� H�H�H� c  ALH�H�H� n AJH�H�H� I  FJ�������� *0 titleofselecteditem titleOfSelectedItem��  ��  H� o  AF���� 0 poolsheetcoin poolSheetCoinH� m  JK��
�� 
ctxtH� H���H� o  LQ���� 0 poolids poolIDs��  H� n      H�H�H�  ;  XYH� o  SX���� 0 myprefspools myPrefsPoolsH� H�H�H� r  [lH�H�H� c  [fH�H�H� n [dH�H�H� I  `d�������� 0 stringvalue stringValue��  ��  H� o  [`���� 0 poolsheetcoin poolSheetCoinH� m  de��
�� 
ctxtH� o      ���� 0 currentcoin currentCoinH� H���H� r  mzH�H�H� [  mtH�H�H� o  mr���� 0 poolids poolIDsH� m  rs���� H� o      ���� 0 poolids poolIDs��  Hz   add it to the prefs   H{ �H�H� (   a d d   i t   t o   t h e   p r e f s�	  �  Ht H�H�H� l ��������  ��  ��  H� H�H�H� l ��H�H���  H�   add/update keychain item   H� �H�H� 2   a d d / u p d a t e   k e y c h a i n   i t e mH� H�H�H� r  �H�H�H� c  �H�H�H� n �H�H�H� I  ����H����� 0 setpassword__ setPassword__H� H�H�H� c  ��H�H�H� n ��H�H�H� I  ���������� 0 stringvalue stringValue��  ��  H� o  ������ 0 poolsheetname poolSheetNameH� m  ����
�� 
ctxtH� H���H� c  ��H�H�H� n ��H�H�H� I  ���������� 0 stringvalue stringValue��  ��  H� o  ������ 20 poolsheetworkerpassword poolSheetWorkerPasswordH� m  ����
�� 
ctxt��  ��  H� o  ����� 0 	apphelper 	AppHelperH� m  ����
�� 
ctxtH� o      ���� 0 pwresult pwResultH� H�H�H� l ����������  ��  ��  H� H�H�H� l ��ԿH�H�Կ  H�   effect changes   H� �H�H�    e f f e c t   c h a n g e sH� H�H�H� Z  ��H�H�ԾԽH� = ��H�H�H� o  ��ԼԼ 0 editingpool editingPoolH� m  ��H�H� �H�H�  n e wH� I  ��ԻԺԹԻ $0 populatepoollist populatePoolListԺ  Թ  Ծ  Խ  H� H�H�H� I  ��ԸԷԶԸ *0 requestsavesettings requestSaveSettingsԷ  Զ  H� H�H�H� l ��ԵԴԳԵ  Դ  Գ  H� H�H�H� Z  �H�H�H�H�H� = ��H�H�H� o  ��ԲԲ 0 minerrunning minerRunningH� m  ��Ա
Ա boovfalsH� k  ��H�H� H�H�H� I  ��԰H�ԯ԰ 0 setstatusline setStatusLineH� H�H�H� m  ��H�H� �H�H� $ I n i t i a l i z i n g   m i n e rH� H�I H� m  ��Ԯ
Ԯ boovtrueI  III m  ��ԭԭ  I IԬI m  ��II �II  Ԭ  ԯ  H� IԫI I  ��ԪIԩԪ 0 
startminer 
startMinerI IԨI m  ��I	I	 �I
I
  c g m i n e rԨ  ԩ  ԫ  H� III = ��III o  ��ԧԧ 0 currentcoin currentCoinI o  ��ԦԦ 0 oldcoin oldCoinI IԥI I  ��ԤԣԢԤ 0 setpools setPoolsԣ  Ԣ  ԥ  H� k  �II III I  �ԡIԠԡ 0 setstatusline setStatusLineI III b  �III b  ��III m  ��II �II * R e s t a r t i n g   m i n e r   f o r  I o  ��ԟԟ 0 currentcoin currentCoinI m  �II �II    m i n i n gI III m  Ԟ
Ԟ boovtrueI I I!I  m  ԝԝ  I! I"ԜI" m  I#I# �I$I$ 
 m i n e rԜ  Ԡ  I I%I&I% I  ԛԚԙԛ 0 	stopminer 	stopMinerԚ  ԙ  I& I'ԘI' I  ԗI(Ԗԗ 0 
startminer 
startMinerI( I)ԕI) m  I*I* �I+I+  c g m i n e rԕ  Ԗ  Ԙ  H� I,I-I, l ԔԓԒԔ  ԓ  Ԓ  I- I.I/I. l ԑI0I1ԑ  I0  	 clean up   I1 �I2I2    c l e a n   u pI/ I3I4I3 r  #I5I6I5 J  ԐԐ  I6 o      ԏԏ 0 editingpool editingPoolI4 I7I8I7 l $$ԎԍԌԎ  ԍ  Ԍ  I8 I9I:I9 l $$ԋI;I<ԋ  I;   close sheet   I< �I=I=    c l o s e   s h e e tI: I>I?I> I  $)ԊԉԈԊ  0 closepoolsheet closePoolSheetԉ  Ԉ  I? I@IAI@ l **ԇԆԅԇ  Ԇ  ԅ  IA IBICIB n *6IDIEID I  /6ԄIFԃԄ "0 setstringvalue_ setStringValue_IF IGԂIG m  /2IHIH �IIII  Ԃ  ԃ  IE o  */ԁԁ "0 poolsheetstatus poolSheetStatusIC IJIKIJ n 7IILIMIL I  <IԀIN�Ԁ 0 settextcolor_ setTextColor_IN IO�~IO n <EIPIQIP o  AE�}�} 0 
blackcolor 
blackColorIQ o  <A�|�| 0 nscolor NSColor�~  �  IM o  7<�{�{ "0 poolsheetstatus poolSheetStatusIK IR�zIR l JJ�y�x�w�y  �x  �w  �z  G� ISITIS l     �v�u�t�v  �u  �t  IT IUIVIU i  dgIWIXIW I      �sIY�r�s $0 poolsheetcancel_ poolSheetCancel_IY IZ�qIZ o      �p�p 
0 sender  �q  �r  IX k    �I[I[ I\I]I\ r     I^I_I^ m     I`I` �IaIa  I_ o      �o�o 0 	alivepool 	alivePoolI] IbIcIb l   �n�m�l�n  �m  �l  Ic IdIeId l   �kIfIg�k  If 8 2 if incorrect login, then delete from myPrefsPools   Ig �IhIh d   i f   i n c o r r e c t   l o g i n ,   t h e n   d e l e t e   f r o m   m y P r e f s P o o l sIe IiIjIi Z    [IkIl�j�iIk =   ImInIm l   Io�h�gIo c    IpIqIp n   IrIsIr I   	 �f�e�d�f 0 stringvalue stringValue�e  �d  Is o    	�c�c "0 poolsheetstatus poolSheetStatusIq m    �b
�b 
ctxt�h  �g  In m    ItIt �IuIu 6 I n c o r r e c t   u s e r n a m e / p a s s w o r dIl l   WIvIwIxIv k    WIyIy IzI{Iz r    I|I}I| J    �a�a  I} o      �`�` 0 	temppools 	tempPoolsI{ I~�_I~ Y    WI�^I�I��]I Z   , RI�I��\�[I� >  , @I�I�I� n   , 7I�I�I� 4   4 7�ZI�
�Z 
cobjI� m   5 6�Y�Y I� l  , 4I��X�WI� n   , 4I�I�I� 4   1 4�VI�
�V 
cobjI� o   2 3�U�U 0 x  I� o   , 1�T�T 0 myprefspools myPrefsPools�X  �W  I� n   7 ?I�I�I� 4   < ?�SI�
�S 
cobjI� m   = >�R�R I� o   7 <�Q�Q 0 editingpool editingPoolI� r   C NI�I�I� n   C KI�I�I� 4   H K�PI�
�P 
cobjI� o   I J�O�O 0 x  I� o   C H�N�N 0 myprefspools myPrefsPoolsI� n      I�I�I�  ;   L MI� o   K L�M�M 0 	temppools 	tempPools�\  �[  �^ 0 x  I� m    �L�L I� n    'I�I�I� m   $ &�K
�K 
nmbrI� n   $I�I�I� 2  " $�J
�J 
cobjI� o    "�I�I 0 myprefspools myPrefsPools�]  �_  Iw < 6 not the best way to detect this, but it works for now   Ix �I�I� l   n o t   t h e   b e s t   w a y   t o   d e t e c t   t h i s ,   b u t   i t   w o r k s   f o r   n o w�j  �i  Ij I�I�I� l  \ \�H�G�F�H  �G  �F  I� I�I�I� r   \ dI�I�I� J   \ ^�E�E  I� o      �D�D 0 editingpool editingPoolI� I�I�I� l  e e�C�B�A�C  �B  �A  I� I�I�I� l  e e�@I�I��@  I� @ : set the dropdown box to the active poolset currentPool to   I� �I�I� t   s e t   t h e   d r o p d o w n   b o x   t o   t h e   a c t i v e   p o o l s e t   c u r r e n t P o o l   t oI� I�I�I� Z   e�I�I��?I�I� =  e lI�I�I� o   e j�>�> 0 minerapiready minerAPIreadyI� m   j k�=
�= boovtrueI� k   o�I�I� I�I�I� r   o yI�I�I� I   o w�<I��;�< 0 sendcommand sendCommandI� I�I�I� m   p qI�I� �I�I� 
 p o o l sI� I�I�I� m   q rI�I� �I�I�  I� I��:I� m   r s�9
�9 boovfals�:  �;  I� o      �8�8 &0 lookupcurrentpool lookupCurrentPoolI� I�I�I� r   z �I�I�I� I   z ��7I��6�7 0 splitstring splitStringI� I�I�I� o   { |�5�5 &0 lookupcurrentpool lookupCurrentPoolI� I��4I� m   | }I�I� �I�I�  |�4  �6  I� o      �3�3 &0 lookupcurrentpool lookupCurrentPoolI� I�I�I� l  � ��2�1�0�2  �1  �0  I� I�I�I� r   � �I�I�I� n   � �I�I�I� 4   � ��/I�
�/ 
cobjI� m   � ��.�. I� I   � ��-I��,�- 0 splitstring splitStringI� I�I�I� n   � �I�I�I� 4   � ��+I�
�+ 
cobjI� m   � ��*�* I� o   � ��)�) &0 lookupcurrentpool lookupCurrentPoolI� I��(I� m   � �I�I� �I�I�  ,�(  �,  I� o      �'�' 0 numpools numPoolsI� I�I�I� r   � �I�I�I� n   � �I�I�I� 4   � ��&I�
�& 
cobjI� m   � ��%�% I� I   � ��$I��#�$ 0 splitstring splitStringI� I�I�I� o   � ��"�" 0 numpools numPoolsI� I��!I� m   � �I�I� �I�I�  =�!  �#  I� o      � �  0 numpools numPoolsI� I�I�I� r   � �I�I�I� n   � �I�I�I� 4   � ��I�
� 
cobjI� m   � ��� I� I   � ��I��� 0 splitstring splitStringI� I�I�I� o   � ��� 0 numpools numPoolsI� I��I� m   � �I�I� �I�I�   �  �  I� o      �� 0 numpools numPoolsI� I�I�I� l  � �����  �  �  I� I�I�I� Z   � �I�I���I� ?  � �I�I�I� o   � ��� 0 numpools numPoolsI� m   � ��� I� Y   � �I��I�I��I� Z   � �J J��J  E   � �JJJ n   � �JJJ 4   � ��J
� 
cobjJ o   � ��� 0 x  J o   � ��� 0 currentpool currentPoolJ m   � �JJ �JJ 
 A l i v eJ l  � �J	J
JJ	 k   � �JJ JJJ r   � �JJJ n   � �JJJ 4   � ��
J
�
 
cobjJ m   � ��	�	 J I   � ��J�� 0 splitstring splitStringJ JJJ n   � �JJJ 4   � ��J
� 
cobjJ o   � ��� 0 x  J o   � ��� &0 lookupcurrentpool lookupCurrentPoolJ J�J m   � �JJ �JJ  ,�  �  J o      �� 0 	alivepool 	alivePoolJ JJJ r   � �JJ J n   � �J!J"J! 4   � ��J#
� 
cobjJ# m   � �� �  J" I   � ���J$���� 0 splitstring splitStringJ$ J%J&J% o   � ����� 0 	alivepool 	alivePoolJ& J'��J' m   � �J(J( �J)J)  =��  ��  J  o      ���� 0 	alivepool 	alivePoolJ J*��J*  S   � ���  J
   it's this pool   J �J+J+    i t ' s   t h i s   p o o l�  �  � 0 x  I� m   � ����� I� n   � �J,J-J, m   � ���
�� 
nmbrJ- n  � �J.J/J. 2  � ���
�� 
cobjJ/ o   � ����� &0 lookupcurrentpool lookupCurrentPool�  �  �  I� J0J1J0 l   ��������  ��  ��  J1 J2��J2 Z   �J3J4J5��J3 F   J6J7J6 l  J8����J8 =  J9J:J9 o   ���� 0 	alivepool 	alivePoolJ: m  J;J; �J<J<  ��  ��  J7 l J=����J= > J>J?J> o  	���� 0 numpools numPoolsJ? m  	J@J@ �JAJA  0��  ��  J4 I  ��JB���� 
0 msglog  JB JCJDJC m  JEJE �JFJF ~ U n a b l e   t o   s e t   t h e   d r o p - d o w n   b o x   b a c k   t o   t h e   c u r r e n t   m i n i n g   p o o lJD JG��JG m  JHJH �JIJI  w a r n i n g��  ��  J5 JJJKJJ > "'JLJMJL o  "#���� 0 numpools numPoolsJM m  #&JNJN �JOJO  0JK JP��JP Y  *�JQ��JRJS��JQ Z  =�JTJU����JT = =LJVJWJV l =JJX����JX c  =JJYJZJY n  =HJ[J\J[ 4  EH��J]
�� 
cobjJ] m  FG���� J\ l =EJ^����J^ n  =EJ_J`J_ 4  BE��Ja
�� 
cobjJa o  CD���� 0 x  J` o  =B���� 0 myprefspools myPrefsPools��  ��  JZ m  HI��
�� 
ctxt��  ��  JW o  JK���� 0 	alivepool 	alivePoolJU k  OJbJb JcJdJc n OcJeJfJe I  Tc��Jg���� ,0 selectitemwithtitle_ selectItemWithTitle_Jg Jh��Jh n  T_JiJjJi 4  \_��Jk
�� 
cobjJk m  ]^���� Jj l T\Jl����Jl n  T\JmJnJm 4  Y\��Jo
�� 
cobjJo o  Z[���� 0 x  Jn o  TY���� 0 myprefspools myPrefsPools��  ��  ��  ��  Jf o  OT���� 0 poollist poolListJd JpJqJp I  d}��Jr���� 0 setstatusline setStatusLineJr JsJtJs b  etJuJvJu m  ehJwJw �JxJx  M i n i n g   t o  Jv n  hsJyJzJy 4  ps��J{
�� 
cobjJ{ m  qr���� Jz l hpJ|����J| n  hpJ}J~J} 4  mp��J
�� 
cobjJ o  no���� 0 x  J~ o  hm���� 0 myprefspools myPrefsPools��  ��  Jt J�J�J� m  tu��
�� boovfalsJ� J�J�J� m  uv���� J� J���J� m  vyJ�J� �J�J�  ��  ��  Jq J�ӿJ�  S  ~ӿ  ��  ��  �� 0 x  JR m  -.ӾӾ JS n  .8J�J�J� m  57ӽ
ӽ 
nmbrJ� n .5J�J�J� 2 35Ӽ
Ӽ 
cobjJ� o  .3ӻӻ 0 myprefspools myPrefsPools��  ��  ��  ��  �?  I� I  ��ӺJ�ӹӺ 0 setstatusline setStatusLineJ� J�J�J� m  ��J�J� �J�J�  J� J�J�J� m  ��Ӹ
Ӹ boovfalsJ� J�J�J� m  ��ӷӷ  J� J�ӶJ� m  ��J�J� �J�J�  Ӷ  ӹ  I� J�J�J� l ��ӵӴӳӵ  Ӵ  ӳ  J� J�J�J� I  ��ӲӱӰӲ  0 closepoolsheet closePoolSheetӱ  Ӱ  J� J�ӯJ� l ��ӮӭӬӮ  ӭ  Ӭ  ӯ  IV J�J�J� l     ӫӪөӫ  Ӫ  ө  J� J�J�J� i  hkJ�J�J� I      ӨJ�ӧӨ "0 feedbackcancel_ feedBackCancel_J� J�ӦJ� o      ӥӥ 
0 sender  Ӧ  ӧ  J� k     J�J� J�J�J� l     ӤJ�J�Ӥ  J�   close window   J� �J�J�    c l o s e   w i n d o wJ� J�J�J� n    	J�J�J� I    	ӣӢӡӣ 	0 close  Ӣ  ӡ  J� o     ӠӠ  0 feedbackwindow feedbackWindowJ� J�ӟJ� n  
 J�J�J� I    ӞJ�ӝӞ 0 
setstring_ 
setString_J� J�ӜJ� m    J�J� �J�J�  Ӝ  ӝ  J� o   
 ӛӛ 0 feedbacktext feedBackTextӟ  J� J�J�J� l     ӚәӘӚ  ә  Ә  J� J�J�J� i  loJ�J�J� I      ӗJ�Ӗӗ "0 feedbackaccept_ feedbackAccept_J� J�ӕJ� o      ӔӔ 
0 sender  ӕ  Ӗ  J� k    �J�J� J�J�J� r     J�J�J� m     ӓ
ӓ boovfalsJ� o      ӒӒ 0 	senddebug 	sendDebugJ� J�J�J� l   ӑӐӏӑ  Ӑ  ӏ  J� J�J�J� Z    MJ�J�ӎӍJ� =   J�J�J� n   J�J�J� I   	 ӌӋӊӌ 	0 state  Ӌ  ӊ  J� o    	ӉӉ ,0 feedbackincludeextra feedBackIncludeExtraJ� m    ӈӈ J� k    IJ�J� J�J�J� l   ӇJ�J�Ӈ  J� 2 , user elected to include debugging info, yay   J� �J�J� X   u s e r   e l e c t e d   t o   i n c l u d e   d e b u g g i n g   i n f o ,   y a yJ� J�J�J� I    ӆӅӄӆ "0 createdebugfile createDebugFileӅ  ӄ  J� J�J�J� I    .ӃJ�ӂӃ  0 cleandebugfile cleanDebugFileJ� J�ӁJ� n    *J�J�J� 1   ( *Ӏ
Ӏ 
psxpJ� l   (J���~J� b    (J�J�J� l   "J��}�|J� I   "�{J�J�
�{ .earsffdralis        afdrJ� m    �z
�z afdrtempJ� �yJ�J�
�y 
fromJ� m    �x
�x fldmflduJ� �wJ��v
�w 
rtypJ� m    �u
�u 
ctxt�v  �}  �|  J� o   " '�t�t ,0 asteroiddebuglogfile AsteroidDebugLogFile�  �~  Ӂ  ӂ  J� J�J�J� I   / E�sJ��r�s  0 cleandebugfile cleanDebugFileJ� J��qJ� n   0 AJ�J�J� 1   ? A�p
�p 
psxpJ� l  0 ?J��o�nJ� b   0 ?J�J�J� l  0 9J��m�lJ� I  0 9�kJ�J�
�k .earsffdralis        afdrJ� m   0 1�j
�j afdrtempJ� �iJ�J�
�i 
fromJ� m   2 3�h
�h fldmflduJ� �gJ��f
�g 
rtypJ� m   4 5�e
�e 
ctxt�f  �m  �l  J� o   9 >�d�d 0 minerlogfile minerLogFile�o  �n  �q  �r  J� J��cJ� r   F IJ�J�J� m   F G�b
�b boovtrueJ� o      �a�a 0 	senddebug 	sendDebug�c  ӎ  Ӎ  J� J�J�J� l  N N�`�_�^�`  �_  �^  J� J�J�J� l  N N�]J�J��]  J�   submit to developer   J� �J�J� (   s u b m i t   t o   d e v e l o p e rJ� J�J�J� r   N _J�K J� n   N ]KKK 1   [ ]�\
�\ 
strqK l  N [K�[�ZK c   N [KKK n  N YKKK I   U Y�Y�X�W�Y 0 mutablestring mutableString�X  �W  K n  N UKK	K o   S U�V�V 0 textstorage textStorageK	 o   N S�U�U 0 feedbacktext feedBackTextK m   Y Z�T
�T 
ctxt�[  �Z  K  o      �S�S 0 thismsg thisMsgJ� K
KK
 r   ` mKKK l  ` kK�R�QK c   ` kKKK n  ` iKKK I   e i�P�O�N�P 0 stringvalue stringValue�O  �N  K o   ` e�M�M 0 feedbackemail feedBackEmailK m   i j�L
�L 
ctxt�R  �Q  K o      �K�K 0 	thisemail 	thisEmailK KKK Z   n �KK�J�IK >  n qKKK o   n o�H�H 0 	thisemail 	thisEmailK m   o pKK �KK  K k   t �KK KKK r   t �KKK c   t wK K!K  o   t u�G�G 0 	thisemail 	thisEmailK! m   u v�F
�F 
ctxtK n      K"K#K" 4   | ��EK$
�E 
cobjK$ m    ��D�D 
K# o   w |�C�C  0 myprefsgeneral myPrefsGeneralK K%�BK% I   � ��A�@�?�A *0 requestsavesettings requestSaveSettings�@  �?  �B  �J  �I  K K&K'K& l  � ��>�=�<�>  �=  �<  K' K(K)K( r   � �K*K+K* b   � �K,K-K, n   � �K.K/K. 1   � ��;
�; 
psxpK/ l  � �K0�:�9K0 I  � ��8K1K2
�8 .earsffdralis        afdrK1 m   � ��7
�7 afdrtempK2 �6K3K4
�6 
fromK3 m   � ��5
�5 fldmflduK4 �4K5�3
�4 
rtypK5 m   � ��2
�2 
ctxt�3  �:  �9  K- o   � ��1�1 ,0 asteroiddebuglogfile AsteroidDebugLogFileK+ o      �0�0 0 logfile1 logFile1K) K6K7K6 r   � �K8K9K8 b   � �K:K;K: n   � �K<K=K< 1   � ��/
�/ 
psxpK= l  � �K>�.�-K> I  � ��,K?K@
�, .earsffdralis        afdrK? m   � ��+
�+ afdrtempK@ �*KAKB
�* 
fromKA m   � ��)
�) fldmflduKB �(KC�'
�( 
rtypKC m   � ��&
�& 
ctxt�'  �.  �-  K; o   � ��%�% 0 minerlogfile minerLogFileK9 o      �$�$ 0 logfile2 logFile2K7 KDKEKD l  � ��#�"�!�#  �"  �!  KE KFKGKF O   � �KHKIKH k   � �KJKJ KKKLKK Z   � �KMKN� KOKM I  � ��KP�
� .coredoexbool        obj KP c   � �KQKRKQ o   � ��� 0 logfile1 logFile1KR m   � ��
� 
psxf�  KN r   � �KSKTKS m   � ��
� boovtrueKT o      �� 0 sendlog1 sendLog1�   KO r   � �KUKVKU m   � ��
� boovfalsKV o      �� 0 sendlog1 sendLog1KL KW�KW Z   � �KXKY�KZKX I  � ��K[�
� .coredoexbool        obj K[ c   � �K\K]K\ o   � ��� 0 logfile2 logFile2K] m   � ��
� 
psxf�  KY r   � �K^K_K^ m   � ��
� boovtrueK_ o      �� 0 sendlog2 sendLog2�  KZ r   � �K`KaK` m   � ��
� boovfalsKa o      �� 0 sendlog2 sendLog2�  KI m   � �KbKb�                                                                                  MACS  alis    x  Macintosh SSD              �xv(H+  �D
Finder.app                                                     	�C���l        ����  	                CoreServices    �xؘ      ��P�    �D�A�@  7Macintosh SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��  KG KcKdKc l  � �����  �  �  Kd KeKfKe Z   �UKgKh�
KiKg =  � �KjKkKj o   � ��	�	 0 	senddebug 	sendDebugKk m   � ��
� boovtrueKh k   �=KlKl KmKnKm r   � �KoKpKo m   � �KqKq �KrKr  c u r lKp o      �� 0 thiscmd thisCmdKn KsKtKs Z   �KuKv��Ku =  � �KwKxKw o   � ��� 0 sendlog1 sendLog1Kx m   � ��
� boovtrueKv r   �	KyKzKy b   �K{K|K{ b   �K}K~K} b   �KK�K o   � ��� 0 thiscmd thisCmdK� m   � K�K� �K�K� $   - F   A s t e r o i d L o g = @ "K~ o  �� 0 logfile1 logFile1K| m  K�K� �K�K�  "Kz o      � �  0 thiscmd thisCmd�  �  Kt K�K�K� Z  %K�K�����K� = K�K�K� o  ���� 0 sendlog2 sendLog2K� m  ��
�� boovtrueK� r  !K�K�K� b  K�K�K� b  K�K�K� b  K�K�K� o  ���� 0 thiscmd thisCmdK� m  K�K� �K�K�    - F   M i n e r L o g = @ "K� o  ���� 0 logfile2 logFile2K� m  K�K� �K�K�  "K� o      ���� 0 thiscmd thisCmd��  ��  K� K���K� r  &=K�K�K� b  &;K�K�K� b  &7K�K�K� b  &3K�K�K� b  &/K�K�K� b  &+K�K�K� o  &'���� 0 thiscmd thisCmdK� m  '*K�K� �K�K� ,   - F   A s t e r o i d F e e d b a c k = "K� n  +.K�K�K� 1  ,.��
�� 
strqK� o  +,���� 0 thismsg thisMsgK� m  /2K�K� �K�K� 8 "   - F   A s t e r o i d F e e d b a c k E m a i l = "K� n  36K�K�K� 1  46��
�� 
strqK� o  34���� 0 	thisemail 	thisEmailK� m  7:K�K� �K�K� ` "   " h t t p : / / w w w . a s t e r o i d a p p . c o m / i n a p p f e e d b a c k . p h p "K� o      ���� 0 thiscmd thisCmd��  �
  Ki r  @UK�K�K� b  @SK�K�K� b  @OK�K�K� b  @KK�K�K� b  @GK�K�K� m  @CK�K� �K�K� 4 c u r l   - F   A s t e r o i d F e e d b a c k = "K� n  CFK�K�K� 1  DF��
�� 
strqK� o  CD���� 0 thismsg thisMsgK� m  GJK�K� �K�K� 8 "   - F   A s t e r o i d F e e d b a c k E m a i l = "K� n  KNK�K�K� 1  LN��
�� 
strqK� o  KL���� 0 	thisemail 	thisEmailK� m  ORK�K� �K�K� ` "   " h t t p : / / w w w . a s t e r o i d a p p . c o m / i n a p p f e e d b a c k . p h p "K� o      ���� 0 thiscmd thisCmdKf K�K�K� l VV��������  ��  ��  K� K�K�K� Q  ViK�K���K� r  Y`K�K�K� I Y^��K���
�� .sysoexecTEXT���     TEXTK� o  YZ���� 0 thiscmd thisCmd��  K� o      ���� 0 	catchnull 	catchNullK� R      ������
�� .ascrerr ****      � ****��  ��  ��  K� K�K�K� l jj��������  ��  ��  K� K�K�K� n jsK�K�K� I  os�������� 	0 close  ��  ��  K� o  jo����  0 feedbackwindow feedbackWindowK� K�K�K� n t�K�K�K� I  y���K����� 0 
setstring_ 
setString_K� K���K� m  y|K�K� �K�K�  ��  ��  K� o  ty���� 0 feedbacktext feedBackTextK� K���K� I  ����K����� 0 setstatusline setStatusLineK� K�K�K� m  ��K�K� �K�K� D T h a n k   y o u   f o r   s u b m i t t i n g   f e e d b a c k !K� K�K�K� m  ����
�� boovfalsK� K�K�K� m  ������ K� K���K� m  ��K�K� �K�K�  ��  ��  ��  J� K�K�K� l     ��������  ��  ��  K� K�K�K� i  psK�K�K� I      ��K����� "0 showprefsubview showPrefSubviewK� K���K� o      ���� "0 newsubviewindex newSubviewIndex��  ��  K� k     �K�K� K�K�K� l     ��������  ��  ��  K� K�K�K� r     K�K�K� c     K�K�K� o     ���� "0 newsubviewindex newSubviewIndexK� m    ��
�� 
longK� o      ���� "0 newsubviewindex newSubviewIndexK� K�K�K� l   ��������  ��  ��  K� K�K�K� r    K�K�K� n   	K�K�K� o    	���� (0 nsanimationcontext NSAnimationContextK� m    ҿ
ҿ misccuraK� o      ҾҾ $0 animationcontext animationContextK� K�L K� n   LLL I    ҽҼһҽ 0 begingrouping beginGroupingҼ  һ  L o    ҺҺ $0 animationcontext animationContextL  LLL n   LLL I    ҹLҸҹ 0 setduration_ setDuration_L LҷL m    L	L	 ?�������ҷ  Ҹ  L n   L
LL
 o    ҶҶ  0 currentcontext currentContextL o    ҵҵ $0 animationcontext animationContextL LLL l   ҴҳҲҴ  ҳ  Ҳ  L LLL n   @LLL I   ( @ұLҰұ ,0 replacesubview_with_ replaceSubview_with_L LLL n   ( 4LLL 4   - 4үL
ү 
cobjL o   . 3ҮҮ $0 currentprefpanel currentPrefPanelL o   ( -ҭҭ 0 prefsviewlist prefsViewListL LҬL n   4 <LLL 4   9 <ҫL
ҫ 
cobjL o   : ;ҪҪ "0 newsubviewindex newSubviewIndexL o   4 9ҩҩ 0 prefsviewlist prefsViewListҬ  Ұ  L n   (LLL I   $ (ҨҧҦҨ 0 contentview contentViewҧ  Ҧ  L n   $LLL I     $ҥҤңҥ 0 animator  Ҥ  ң  L o     ҢҢ 0 prefswindow prefsWindowL L L!L  l  A AҡҠҟҡ  Ҡ  ҟ  L! L"L#L" l  A AҞL$L%Ҟ  L$   height of toolbar   L% �L&L& $   h e i g h t   o f   t o o l b a rL# L'L(L' r   A `L)L*L) \   A ^L+L,L+ l  A NL-ҝҜL- n   A NL.L/L. o   L Nққ 
0 height  L/ n   A LL0L1L0 o   J LҚҚ 0 size  L1 n  A JL2L3L2 I   F JҙҘҗҙ 	0 frame  Ҙ  җ  L3 o   A FҖҖ 0 prefswindow prefsWindowҝ  Ҝ  L, l  N ]L4ҕҔL4 n   N ]L5L6L5 o   [ ]ғғ 
0 height  L6 n   N [L7L8L7 o   Y [ҒҒ 0 size  L8 n  N YL9L:L9 I   U YґҐҏґ 	0 frame  Ґ  ҏ  L: n  N UL;L<L; o   S UҎҎ 0 contentview contentViewL< o   N Sҍҍ 0 prefswindow prefsWindowҕ  Ҕ  L* o      ҌҌ 0 toolbarheight toolbarHeightL( L=L>L= l  a aҋҊ҉ҋ  Ҋ  ҉  L> L?L@L? l  a a҈LALB҈  LA   set size of prefsWindow   LB �LCLC 0   s e t   s i z e   o f   p r e f s W i n d o wL@ LDLELD l  a a҇LFLG҇  LF 9 3 get current frame of prefs window so we can modify   LG �LHLH f   g e t   c u r r e n t   f r a m e   o f   p r e f s   w i n d o w   s o   w e   c a n   m o d i f yLE LILJLI r   a lLKLLLK n  a jLMLNLM I   f j҆҅҄҆ 	0 frame  ҅  ҄  LN o   a f҃҃ 0 prefswindow prefsWindowLL o      ҂҂ *0 newprefswindowframe newPrefsWindowFrameLJ LOLPLO r   m LQLRLQ [   m yLSLTLS l  m wLUҁҀLU c   m wLVLWLV n   m uLXLYLX 4   r u�LZ
� 
cobjLZ o   s t�~�~ "0 newsubviewindex newSubviewIndexLY o   m r�}�}  0 prefsviewsizes prefsViewSizesLW m   u v�|
�| 
doubҁ  Ҁ  LT o   w x�{�{ 0 toolbarheight toolbarHeightLR n      L[L\L[ o   | ~�z�z 
0 height  L\ n   y |L]L^L] o   z |�y�y 0 size  L^ o   y z�x�x *0 newprefswindowframe newPrefsWindowFrameLP L_L`L_ l  � ��w�v�u�w  �v  �u  L` LaLbLa r   � �LcLdLc \   � �LeLfLe l  � �Lg�t�sLg n   � �LhLiLh o   � ��r�r 0 y  Li n   � �LjLkLj o   � ��q�q 
0 origin  Lk o   � ��p�p *0 newprefswindowframe newPrefsWindowFrame�t  �s  Lf l  � �Ll�o�nLl \   � �LmLnLm l  � �Lo�m�lLo n   � �LpLqLp 4   � ��kLr
�k 
cobjLr o   � ��j�j "0 newsubviewindex newSubviewIndexLq o   � ��i�i  0 prefsviewsizes prefsViewSizes�m  �l  Ln l  � �Ls�h�gLs n   � �LtLuLt 4   � ��fLv
�f 
cobjLv o   � ��e�e $0 currentprefpanel currentPrefPanelLu o   � ��d�d  0 prefsviewsizes prefsViewSizes�h  �g  �o  �n  Ld n      LwLxLw o   � ��c�c 0 y  Lx n   � �LyLzLy o   � ��b�b 
0 origin  Lz o   � ��a�a *0 newprefswindowframe newPrefsWindowFrameLb L{L|L{ l  � ��`�_�^�`  �_  �^  L| L}L~L} n  � �LL�L I   � ��]L��\�] &0 setframe_display_ setFrame_display_L� L�L�L� o   � ��[�[ *0 newprefswindowframe newPrefsWindowFrameL� L��ZL� m   � ��Y
�Y boovtrue�Z  �\  L� n  � �L�L�L� I   � ��X�W�V�X 0 animator  �W  �V  L� o   � ��U�U 0 prefswindow prefsWindowL~ L�L�L� l  � ��T�S�R�T  �S  �R  L� L�L�L� r   � �L�L�L� n  � �L�L�L� I   � ��Q�P�O�Q 	0 frame  �P  �O  L� l  � �L��N�ML� n   � �L�L�L� 4   � ��LL�
�L 
cobjL� o   � ��K�K "0 newsubviewindex newSubviewIndexL� o   � ��J�J 0 prefsviewlist prefsViewList�N  �M  L� o      �I�I 0 newframe newFrameL� L�L�L� r   � �L�L�L� m   � ��H�H  L� n      L�L�L� o   � ��G�G 0 y  L� n   � �L�L�L� o   � ��F�F 
0 origin  L� o   � ��E�E 0 newframe newFrameL� L�L�L� l  � ��D�C�B�D  �C  �B  L� L�L�L� n  � �L�L�L� I   � ��AL��@�A 0 	setframe_ 	setFrame_L� L��?L� o   � ��>�> 0 newframe newFrame�?  �@  L� n  � �L�L�L� I   � ��=�<�;�= 0 animator  �<  �;  L� l  � �L��:�9L� n   � �L�L�L� 4   � ��8L�
�8 
cobjL� o   � ��7�7 "0 newsubviewindex newSubviewIndexL� o   � ��6�6 0 prefsviewlist prefsViewList�:  �9  L� L�L�L� l  � ��5�4�3�5  �4  �3  L� L�L�L� n  � �L�L�L� I   � ��2�1�0�2 0 endgrouping endGrouping�1  �0  L� o   � ��/�/ $0 animationcontext animationContextL� L�L�L� l  � ��.�-�,�.  �-  �,  L� L��+L� r   � �L�L�L� o   � ��*�* "0 newsubviewindex newSubviewIndexL� o      �)�) $0 currentprefpanel currentPrefPanel�+  K� L�L�L� l     �(�'�&�(  �'  �&  L� L�L�L� i  twL�L�L� I      �%L��$�% &0 prefsshowgeneral_ prefsShowGeneral_L� L��#L� o      �"�" 
0 sender  �#  �$  L� Z     L�L��!� L� >    L�L�L� l    L���L� o     �� $0 currentprefpanel currentPrefPanel�  �  L� m    �� L� I   
 �L��� "0 showprefsubview showPrefSubviewL� L��L� m    �� �  �  �!  �   L� L�L�L� l     ����  �  �  L� L�L�L� i  x{L�L�L� I      �L��� (0 prefsshowlitecoin_ prefsShowLitecoin_L� L��L� o      �� 
0 sender  �  �  L� Z     �L�L���L� >    L�L�L� l    L���L� o     �� $0 currentprefpanel currentPrefPanel�  �  L� m    �� L� k   
 �L�L� L�L�L� l  
 
�
�	��
  �	  �  L� L�L�L� Z   
 0L�L��L�L� =  
 L�L�L� l  
 L���L� c   
 L�L�L� n   
 L�L�L� 4    �L�
� 
cobjL� m    �� L� o   
 ��  0 myprefsgeneral myPrefsGeneralL� m    �
� 
ctxt�  �  L� m    L�L� �L�L�  1L� n   #L�L�L� I    #� L����  0 	setstate_ 	setState_L� L���L� m    ��
�� boovtrue��  ��  L� o    ���� @0 prefslitecoincheckboxgetvalues prefsLitecoinCheckboxGetValues�  L� n  & 0L�L�L� I   + 0��L����� 0 	setstate_ 	setState_L� L���L� m   + ,��
�� boovfals��  ��  L� o   & +���� @0 prefslitecoincheckboxgetvalues prefsLitecoinCheckboxGetValuesL� L�L�L� l  1 1��������  ��  ��  L� L�L�L� Z   1 WL�L���L�L� =  1 =L�L�L� l  1 ;L�����L� c   1 ;L�L�L� n   1 9L�L�L� 4   6 9��L�
�� 
cobjL� m   7 8���� L� o   1 6����  0 myprefsgeneral myPrefsGeneralL� m   9 :��
�� 
ctxt��  ��  L� m   ; <L�L� �L�L�  1L� n  @ JL�L�L� I   E J��L����� 0 	setstate_ 	setState_L� L���L� m   E F��
�� boovtrue��  ��  L� o   @ E���� B0 prefslitecoincheckboxsendvalues prefsLitecoinCheckboxSendValues��  L� n  M WL�M L� I   R W��M���� 0 	setstate_ 	setState_M M��M m   R S��
�� boovfals��  ��  M  o   M R���� B0 prefslitecoincheckboxsendvalues prefsLitecoinCheckboxSendValuesL� MMM l  X X��������  ��  ��  M MMM Z   X �MM��M	M =  X dM
MM
 l  X bM����M c   X bMMM n   X `MMM 4   ] `��M
�� 
cobjM m   ^ _���� M o   X ]����  0 myprefsgeneral myPrefsGeneralM m   ` a��
�� 
ctxt��  ��  M m   b cMM �MM  M n  g qMMM I   l q��M���� "0 setstringvalue_ setStringValue_M M��M m   l mMM �MM  ��  ��  M o   g l���� ,0 prefslitecointhreads prefsLitecoinThreads��  M	 n  t �MMM I   y ���M���� 0 setintvalue_ setIntValue_M M��M c   y �MMM n   y �M M!M  4   ~ ���M"
�� 
cobjM" m    ����� M! o   y ~����  0 myprefsgeneral myPrefsGeneralM m   � ���
�� 
long��  ��  M o   t y���� ,0 prefslitecointhreads prefsLitecoinThreadsM M#M$M# l  � ���������  ��  ��  M$ M%M&M% Z   � �M'M(��M)M' =  � �M*M+M* l  � �M,����M, c   � �M-M.M- n   � �M/M0M/ 4   � ���M1
�� 
cobjM1 m   � ����� M0 o   � �����  0 myprefsgeneral myPrefsGeneralM. m   � ���
�� 
ctxt��  ��  M+ m   � �M2M2 �M3M3  M( n  � �M4M5M4 I   � ���M6���� 0 	settitle_ 	setTitle_M6 M7��M7 m   � �M8M8 �M9M9  A u t o m a t i c��  ��  M5 o   � �ѿѿ .0 prefslitecoinworksize prefsLitecoinWorksize��  M) n  � �M:M;M: I   � �ѾM<ѽѾ 0 	settitle_ 	setTitle_M< M=ѼM= c   � �M>M?M> n   � �M@MAM@ 4   � �ѻMB
ѻ 
cobjMB m   � �ѺѺ MA o   � �ѹѹ  0 myprefsgeneral myPrefsGeneralM? m   � �Ѹ
Ѹ 
ctxtѼ  ѽ  M; o   � �ѷѷ .0 prefslitecoinworksize prefsLitecoinWorksizeM& MCMDMC l  � �ѶѵѴѶ  ѵ  Ѵ  MD MEMFME I   � �ѳMGѲѳ "0 showprefsubview showPrefSubviewMG MHѱMH m   � �ѰѰ ѱ  Ѳ  MF MIѯMI l  � �ѮѭѬѮ  ѭ  Ѭ  ѯ  �  �  L� MJMKMJ l     ѫѪѩѫ  Ѫ  ѩ  MK MLMMML i  |MNMOMN I      ѨMPѧѨ .0 prefsshowmobileminer_ prefsShowMobileMiner_MP MQѦMQ o      ѥѥ 
0 sender  Ѧ  ѧ  MO Z    �MRMSѤѣMR >    MTMUMT l    MVѢѡMV o     ѠѠ $0 currentprefpanel currentPrefPanelѢ  ѡ  MU m    џџ MS k   
�MWMW MXMYMX l  
 
ўѝќў  ѝ  ќ  MY MZM[MZ l  
 
ћM\M]ћ  M\   populate this UI   M] �M^M^ "   p o p u l a t e   t h i s   U IM[ M_M`M_ Z   
 0MaMbњMcMa =  
 MdMeMd l  
 MfљјMf c   
 MgMhMg n   
 MiMjMi 4    їMk
ї 
cobjMk m    іі Mj o   
 ѕѕ  0 myprefsgeneral myPrefsGeneralMh m    є
є 
boolљ  ј  Me m    ѓ
ѓ boovtrueMb n   #MlMmMl I    #ђMnёђ 0 	setstate_ 	setState_Mn MoѐMo m    я
я boovtrueѐ  ё  Mm o    юю 80 prefsmobileminersendstatus prefsMobileMinerSendStatusњ  Mc n  & 0MpMqMp I   + 0эMrьэ 0 	setstate_ 	setState_Mr MsыMs m   + ,ъ
ъ boovfalsы  ь  Mq o   & +щщ 80 prefsmobileminersendstatus prefsMobileMinerSendStatusM` MtMuMt l  1 1шчцш  ч  ц  Mu MvMwMv Z   1 WMxMyхMzMx =  1 =M{M|M{ l  1 ;M}фуM} c   1 ;M~MM~ n   1 9M�M�M� 4   6 9тM�
т 
cobjM� m   7 8сс M� o   1 6рр  0 myprefsgeneral myPrefsGeneralM m   9 :�
� 
boolф  у  M| m   ; <�~
�~ boovtrueMy n  @ JM�M�M� I   E J�}M��|�} 0 	setstate_ 	setState_M� M��{M� m   E F�z
�z boovtrue�{  �|  M� o   @ E�y�y J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsх  Mz n  M WM�M�M� I   R W�xM��w�x 0 	setstate_ 	setState_M� M��vM� m   R S�u
�u boovfals�v  �w  M� o   M R�t�t J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsMw M�M�M� l  X X�s�r�q�s  �r  �q  M� M�M�M� Z   X �M�M��pM�M� =  X dM�M�M� l  X bM��o�nM� c   X bM�M�M� n   X `M�M�M� 4   ] `�mM�
�m 
cobjM� m   ^ _�l�l M� o   X ]�k�k  0 myprefsgeneral myPrefsGeneralM� m   ` a�j
�j 
ctxt�o  �n  M� m   b cM�M� �M�M�  M� n  g qM�M�M� I   l q�iM��h�i "0 setstringvalue_ setStringValue_M� M��gM� m   l mM�M� �M�M�  �g  �h  M� o   g l�f�f .0 prefsmobilemineremail prefsMobileMinerEmail�p  M� n  t �M�M�M� I   y ��eM��d�e "0 setstringvalue_ setStringValue_M� M��cM� c   y �M�M�M� n   y �M�M�M� 4   ~ ��bM�
�b 
cobjM� m    ��a�a M� o   y ~�`�`  0 myprefsgeneral myPrefsGeneralM� m   � ��_
�_ 
ctxt�c  �d  M� o   t y�^�^ .0 prefsmobilemineremail prefsMobileMinerEmailM� M�M�M� l  � ��]�\�[�]  �\  �[  M� M�M�M� Z   � �M�M��ZM�M� =  � �M�M�M� l  � �M��Y�XM� c   � �M�M�M� n   � �M�M�M� 4   � ��WM�
�W 
cobjM� m   � ��V�V M� o   � ��U�U  0 myprefsgeneral myPrefsGeneralM� m   � ��T
�T 
ctxt�Y  �X  M� m   � �M�M� �M�M�  M� n  � �M�M�M� I   � ��SM��R�S "0 setstringvalue_ setStringValue_M� M��QM� m   � �M�M� �M�M�  �Q  �R  M� o   � ��P�P 00 prefsmobileminerappkey prefsMobileMinerAppKey�Z  M� n  � �M�M�M� I   � ��OM��N�O "0 setstringvalue_ setStringValue_M� M��MM� c   � �M�M�M� n   � �M�M�M� 4   � ��LM�
�L 
cobjM� m   � ��K�K M� o   � ��J�J  0 myprefsgeneral myPrefsGeneralM� m   � ��I
�I 
ctxt�M  �N  M� o   � ��H�H 00 prefsmobileminerappkey prefsMobileMinerAppKeyM� M�M�M� l  � ��G�F�E�G  �F  �E  M� M�M�M� Z   � �M�M��D�CM� G   � �M�M�M� =  � �M�M�M� l  � �M��B�AM� c   � �M�M�M� n   � �M�M�M� 4   � ��@M�
�@ 
cobjM� m   � ��?�? M� o   � ��>�>  0 myprefsgeneral myPrefsGeneralM� m   � ��=
�= 
ctxt�B  �A  M� m   � �M�M� �M�M�  M� =  � �M�M�M� l  � �M��<�;M� c   � �M�M�M� n   � �M�M�M� 4   � ��:M�
�: 
cobjM� m   � ��9�9 M� o   � ��8�8  0 myprefsgeneral myPrefsGeneralM� m   � ��7
�7 
ctxt�<  �;  M� m   � �M�M� �M�M�  M� k   � �M�M� M�M�M� n  � �M�M�M� I   � ��6M��5�6 0 setenabled_ setEnabled_M� M��4M� m   � ��3
�3 boovfals�4  �5  M� o   � ��2�2 80 prefsmobileminersendstatus prefsMobileMinerSendStatusM� M��1M� n  � �M�M�M� I   � ��0M��/�0 0 setenabled_ setEnabled_M� M��.M� m   � ��-
�- boovfals�.  �/  M� o   � ��,�, J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommands�1  �D  �C  M� M�M�M� l  � ��+�*�)�+  �*  �)  M� M�M�M� r   � �M�M�M� c   � �M�M�M� n  � �M�M�M� I   � ��(�'�&�( 	0 title  �'  �&  M� o   � ��%�% 20 mobileminerinfolinktext mobileMinerInfoLinkTextM� m   � ��$
�$ 
ctxtM� o      �#�# 0 
mminfotext 
mmInfoTextM� M�M�M� r   %M�N M� n  #NNN I  #�"N�!�" >0 dictionarywithobjectsandkeys_ dictionaryWithObjectsAndKeys_N NNN n NNN I  � N��  "0 menufontofsize_ menuFontOfSize_N N	�N	 m  �� �  �  N n N
NN
 o  
�� 0 nsfont NSFontN m  
�
� misccuraN NNN n NNN o  �� *0 nsfontattributename NSFontAttributeNameN m  �
� misccuraN N�N m  �
� 
msng�  �!  N n  NNN o  �� 0 nsdictionary NSDictionaryN m   �
� misccuraN  o      �� 0 
attribdict 
attribDictM� NNN r  &9NNN n &7NNN I  17�N�� 80 initwithstring_attributes_ initWithString_attributes_N NNN o  12�� 0 
mminfotext 
mmInfoTextN N�N o  23�� 0 
attribdict 
attribDict�  �  N n &1NNN I  -1���� 	0 alloc  �  �  N n &-NN N o  )-�� 60 nsmutableattributedstring NSMutableAttributedStringN  m  &)�

�
 misccuraN o      �	�	 0 attribtitle attribTitleN N!N"N! r  :bN#N$N# n :`N%N&N% I  A`�N'�� >0 dictionarywithobjectsandkeys_ dictionaryWithObjectsAndKeys_N' N(N)N( n ARN*N+N* I  FR�N,�� T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_N, N-N.N- m  FG��  N. N/N0N/ m  GH��  N0 N1N2N1 m  HKN3N3 ?�ffffffN2 N4�N4 m  KL�� �  �  N+ o  AF� �  0 nscolor NSColorN) N5N6N5 n RYN7N8N7 o  UY���� @0 nsforegroundcolorattributename NSForegroundColorAttributeNameN8 m  RU��
�� misccuraN6 N9��N9 m  Y\��
�� 
msng��  �  N& n :AN:N;N: o  =A���� 0 nsdictionary NSDictionaryN; m  :=��
�� misccuraN$ o      ����  0 attribdictmore attribDictMoreN" N<N=N< n cqN>N?N> I  dq��N@���� ,0 addattributes_range_ addAttributes_range_N@ NANBNA o  de����  0 attribdictmore attribDictMoreNB NC��NC J  emNDND NENFNE m  ef����  NF NG��NG n  fkNHNINH 1  gk��
�� 
lengNI l fgNJ����NJ o  fg���� 0 
mminfotext 
mmInfoText��  ��  ��  ��  ��  N? o  cd���� 0 attribtitle attribTitleN= NKNLNK n r|NMNNNM I  w|��NO���� *0 setattributedtitle_ setAttributedTitle_NO NP��NP o  wx���� 0 attribtitle attribTitle��  ��  NN o  rw���� 20 mobileminerinfolinktext mobileMinerInfoLinkTextNL NQNRNQ l }}��������  ��  ��  NR NSNTNS I  }���NU���� "0 showprefsubview showPrefSubviewNU NV��NV m  ~���� ��  ��  NT NW��NW l ����������  ��  ��  ��  Ѥ  ѣ  MM NXNYNX l     ��������  ��  ��  NY NZN[NZ i  ��N\N]N\ I      ��N^���� &0 prefswindowclose_ prefsWindowClose_N^ N_��N_ o      ���� 
0 sender  ��  ��  N] k     !N`N` NaNbNa l     ��NcNd��  Nc b \ read values out of any text fields and request a save (in case the user didn't press return   Nd �NeNe �   r e a d   v a l u e s   o u t   o f   a n y   t e x t   f i e l d s   a n d   r e q u e s t   a   s a v e   ( i n   c a s e   t h e   u s e r   d i d n ' t   p r e s s   r e t u r nNb NfNgNf I     ��Nh���� &0 entercoinaddress_ enterCoinAddress_Nh Ni��Ni m    NjNj �NkNk  ��  ��  Ng NlNmNl I    ��Nn���� 00 setprefsscryptthreads_ setPrefsScryptThreads_Nn No��No m    	NpNp �NqNq  ��  ��  Nm NrNsNr I    ��Nt���� >0 entermobilemineremailaddress_ enterMobileMinerEmailAddress_Nt Nu��Nu m    NvNv �NwNw  ��  ��  Ns NxNyNx I    ��Nz���� 20 entermobileminerappkey_ enterMobileMinerAppKey_Nz N{��N{ m    N|N| �N}N}  ��  ��  Ny N~NN~ l   ��������  ��  ��  N N���N� I    !�������� *0 requestsavesettings requestSaveSettings��  ��  ��  N[ N�N�N� l     ��������  ��  ��  N� N�N�N� i  ��N�N�N� I      пN�оп  0 getcoinbalance getCoinBalanceN� N�нN� o      мм 0 thisaddy thisAddyн  о  N� L     N�N� c     N�N�N� n    
N�N�N� I    
лN�кл "0 getcoinbalance_ getCoinBalance_N� N�йN� o    ии 0 thisaddy thisAddyй  к  N� o     зз 0 	apphelper 	AppHelperN� m   
 ж
ж 
ctxtN� N�N�N� l     едге  д  г  N� N�N�N� i  ��N�N�N� I      вбав 0 	stopminer 	stopMinerб  а  N� l   @N�N�N�N� k    @N�N� N�N�N� l     ЯЮЭЯ  Ю  Э  N� N�N�N� I     ЬN�ЫЬ 
0 msglog  N� N�N�N� m    N�N� �N�N� $ S t o p p i n g   m i n i n g . . .N� N�ЪN� m    N�N� �N�N�  n o t i c eЪ  Ы  N� N�N�N� l   ЩШЧЩ  Ш  Ч  N� N�N�N� l   ЦN�N�Ц  N�   cancel timers   N� �N�N�    c a n c e l   t i m e r sN� N�N�N� I    ХФУХ &0 stopruntimetimers stopRuntimeTimersФ  У  N� N�N�N� l   ТСРТ  С  Р  N� N�N�N� l   ПN�N�П  N�    kill setStatusBack timers   N� �N�N� 4   k i l l   s e t S t a t u s B a c k   t i m e r sN� N�N�N� I    ОN�НО 0 	killtimer 	killTimerN� N�МN� o    ЛЛ (0 setstatusbacktimer setStatusBackTimerМ  Н  N� N�N�N� r    #N�N�N� n   N�N�N� 4    КN�
К 
pclsN� m    N�N� �N�N�  N S T i m e rN� m    Й
Й misccuraN� o      ИИ (0 setstatusbacktimer setStatusBackTimerN� N�N�N� l  $ $ЗN�N�З  N� !  empty setStatusBack buffer   N� �N�N� 6   e m p t y   s e t S t a t u s B a c k   b u f f e rN� N�N�N� r   $ ,N�N�N� J   $ &ЖЖ  N� o      ЕЕ 0 revertstatus revertStatusN� N�N�N� I   - 6ДN�ГД 0 setstatusline setStatusLineN� N�N�N� m   . /N�N� �N�N�  S t o p p i n g   m i n e rN� N�N�N� m   / 0В
В boovtrueN� N�N�N� m   0 1ББ  N� N�АN� m   1 2N�N� �N�N� 
 m i n e rА  Г  N� N�N�N� l  7 7ЏЎЍЏ  Ў  Ѝ  N� N�N�N� l  7 :N�N�N�N� r   7 :N�N�N� m   7 8ЌЌ N� o      ЋЋ 0 
timetoquit 
timeToQuitN� 1 + seconds to wait to finish cleanup of miner   N� �N�N� V   s e c o n d s   t o   w a i t   t o   f i n i s h   c l e a n u p   o f   m i n e rN� N�N�N� l  ; >N�N�N�N� r   ; >N�N�N� m   ; <ЊЊ N� o      ЉЉ *0 timetoquitincrement timeToQuitIncrementN� ( " polling interval for miner status   N� �N�N� D   p o l l i n g   i n t e r v a l   f o r   m i n e r   s t a t u sN� N�N�N� l  ? BN�N�N�N� r   ? BN�N�N� m   ? @ЈЈ N� o      ЇЇ :0 timetoquitescalatethreshold timeToQuitEscalateThresholdN� 0 * seconds to allow miner to exit gracefully   N� �N�N� T   s e c o n d s   t o   a l l o w   m i n e r   t o   e x i t   g r a c e f u l l yN� N�N�N� l  C CІЅЄІ  Ѕ  Є  N� N�N�N� l  C CЃN�N�Ѓ  N� !  attempt to use API to quit   N� �N�N� 6   a t t e m p t   t o   u s e   A P I   t o   q u i tN� N�N�N� I   C KЂN�ЁЂ 0 sendcommand sendCommandN� N�N�N� m   D EO O  �OO  q u i tN� OOO m   E FOO �OO  O OЀO m   F G�
� boovtrueЀ  Ё  N� OOO I  L Q�~O	�}
�~ .sysodelanull��� ��� nmbrO	 o   L M�|�| *0 timetoquitincrement timeToQuitIncrement�}  O O
OO
 l  R R�{�z�y�{  �z  �y  O OOO l  R R�xOO�x  O - ' check if the instance is still running   O �OO N   c h e c k   i f   t h e   i n s t a n c e   i s   s t i l l   r u n n i n gO OOO Y   R �O�wOOOO k   \ �OO OOO l  \ \�v�u�t�v  �u  �t  O OOO r   \ aOOO m   \ _OO �OO  O o      �s�s 0 testme testMeO O O!O  Q   b �O"O#�rO" r   e xO$O%O$ I  e v�qO&�p
�q .sysoexecTEXT���     TEXTO& b   e rO'O(O' b   e nO)O*O) m   e hO+O+ �O,O, < p s   - A   |   g r e p   " c g m i n e r "   |   g r e p  O* o   h m�o�o 0 
pidcgminer 
pidCGminerO( m   n qO-O- �O.O.    |   g r e p   - v   g r e p�p  O% o      �n�n 0 testme testMeO# R      �m�l�k
�m .ascrerr ****      � ****�l  �k  �r  O! O/O0O/ Z   � �O1O2�j�iO1 =  � �O3O4O3 o   � ��h�h 0 testme testMeO4 m   � �O5O5 �O6O6  O2  S   � ��j  �i  O0 O7O8O7 l  � ��g�f�e�g  �f  �e  O8 O9O:O9 Z   � �O;O<�d�cO; ?  � �O=O>O= o   � ��b�b 0 	delaytest 	delayTestO> o   � ��a�a :0 timetoquitescalatethreshold timeToQuitEscalateThresholdO< k   � �O?O? O@OAO@ Q   � �OBOC�`OB I  � ��_OD�^
�_ .sysoexecTEXT���     TEXTOD b   � �OEOFOE m   � �OGOG �OHOH 
 k i l l  OF o   � ��]�] 0 
pidcgminer 
pidCGminer�^  OC R      �\�[�Z
�\ .ascrerr ****      � ****�[  �Z  �`  OA OI�YOI I  � ��XOJ�W
�X .sysodelanull��� ��� nmbrOJ l  � �OK�V�UOK ]   � �OLOMOL o   � ��T�T *0 timetoquitincrement timeToQuitIncrementOM m   � ��S�S �V  �U  �W  �Y  �d  �c  O: ONOOON l  � ��R�Q�P�R  �Q  �P  OO OP�OOP I  � ��NOQ�M
�N .sysodelanull��� ��� nmbrOQ o   � ��L�L *0 timetoquitincrement timeToQuitIncrement�M  �O  �w 0 	delaytest 	delayTestO m   U V�K�K  O o   V W�J�J 0 
timetoquit 
timeToQuitO o   W X�I�I *0 timetoquitincrement timeToQuitIncrementO OROSOR l  � ��H�G�F�H  �G  �F  OS OTOUOT l  � ��EOVOW�E  OV   reset stats in UI   OW �OXOX $   r e s e t   s t a t s   i n   U IOU OYOZOY n  � �O[O\O[ I   � ��DO]�C�D "0 setdoublevalue_ setDoubleValue_O] O^�BO^ m   � ��A�A  �B  �C  O\ o   � ��@�@ 0 hashratebar hashRateBarOZ O_O`O_ n  � �OaObOa I   � ��?Oc�>�? "0 setstringvalue_ setStringValue_Oc Od�=Od b   � �OeOfOe m   � �OgOg �OhOh  0Of m   � �OiOi �OjOj  M H / s�=  �>  Ob o   � ��<�< 0 hashratelabel hashRateLabelO` OkOlOk Z   �OmOn�;�:Om =  � �OoOpOo l  � �Oq�9�8Oq c   � �OrOsOr n   � �OtOuOt 4   � ��7Ov
�7 
cobjOv m   � ��6�6 	Ou o   � ��5�5  0 myprefsgeneral myPrefsGeneralOs m   � ��4
�4 
ctxt�9  �8  Op m   � �OwOw �OxOx  1On I   ��3Oy�2�3 (0 setdockbadgestring setDockBadgeStringOy Oz�1Oz m   � �O{O{ �O|O|  �1  �2  �;  �:  Ol O}O~O} I  �0O�/�0 0 setstatusline setStatusLineO O�O�O� m  O�O� �O�O�  M i n e r   s t o p p e dO� O�O�O� m  �.
�. boovfalsO� O�O�O� m  �-�-  O� O��,O� m  O�O� �O�O�  �,  �/  O~ O�O�O� n !O�O�O� I  !�+O��*�+ 0 	settitle_ 	setTitle_O� O��)O� m  O�O� �O�O� %��)  �*  O� o  �(�( 0 pausenub pauseNubO� O�O�O� I  "'�'�&�%�' (0 disableallcontrols disableAllControls�&  �%  O� O�O�O� l ((�$O�O��$  O� #  pauseNub's setHidden_(false)   O� �O�O� :   p a u s e N u b ' s   s e t H i d d e n _ ( f a l s e )O� O�O�O� l ((�#O�O��#  O� "  infoNub's setHidden_(false)   O� �O�O� 8   i n f o N u b ' s   s e t H i d d e n _ ( f a l s e )O� O�O�O� l ((�"�!� �"  �!  �   O� O�O�O� n (2O�O�O� I  -2�O��� 0 setenabled_ setEnabled_O� O��O� m  -.�
� boovtrue�  �  O� o  (-�� 0 poollist poolListO� O�O�O� n 3=O�O�O� I  8=�O��� 0 setenabled_ setEnabled_O� O��O� m  89�
� boovtrue�  �  O� o  38��  0 pooleditbutton poolEditButtonO� O�O�O� l >>����  �  �  O� O�O�O� n >HO�O�O� I  CH�O��� 0 setenabled_ setEnabled_O� O��O� m  CD�
� boovtrue�  �  O� o  >C�� &0 dockmenustartstop dockMenuStartStopO� O�O�O� n ISO�O�O� I  NS�O��� 0 setenabled_ setEnabled_O� O��O� m  NO�

�
 boovtrue�  �  O� o  IN�	�	 00 intensitymenustartstop intensityMenuStartStopO� O�O�O� n T`O�O�O� I  Y`�O��� 0 	settitle_ 	setTitle_O� O��O� m  Y\O�O� �O�O�  S t a r t   m i n e r�  �  O� o  TY�� &0 dockmenustartstop dockMenuStartStopO� O�O�O� n amO�O�O� I  fm�O��� 0 	settitle_ 	setTitle_O� O��O� m  fiO�O� �O�O�  S t a r t   m i n e r�  �  O� o  af�� 00 intensitymenustartstop intensityMenuStartStopO� O�O�O� l nn� �����   ��  ��  O� O�O�O� Y  nO���O�O���O� k  �O�O� O�O�O� l ����O�O���  O� % reset current hash rates stored   O� �O�O� > r e s e t   c u r r e n t   h a s h   r a t e s   s t o r e dO� O�O�O� r  ��O�O�O� m  ������  O� n      O�O�O� 4  ����O�
�� 
cobjO� m  ������ O� n  ��O�O�O� 4  ����O�
�� 
cobjO� o  ������ 0 x  O� o  ������  0 myprefsdevices myPrefsDevicesO� O�O�O� l ����������  ��  ��  O� O�O�O� l ����O�O���  O�   update lifetime shares   O� �O�O� .   u p d a t e   l i f e t i m e   s h a r e sO� O�O�O� l ��O�O�O�O� r  ��O�O�O� c  ��O�O�O� I  ����O����� 0 roundnumber roundNumberO� O�O�O� [  ��O�O�O� l ��O�����O� c  ��O�O�O� l ��O�����O� n  ��O�O�O� 4  ����O�
�� 
cobjO� m  ������ O� n  ��O�O�O� 4  ����P 
�� 
cobjP  o  ������ 0 x  O� o  ������  0 myprefsdevices myPrefsDevices��  ��  O� m  ����
�� 
long��  ��  O� l ��P����P c  ��PPP l ��P����P n  ��PPP 4  ����P
�� 
cobjP m  ������ P n  ��PP	P 4  ����P

�� 
cobjP
 o  ������ 0 x  P	 o  ������  0 myprefsdevices myPrefsDevices��  ��  P m  ����
�� 
long��  ��  O� P��P m  ������  ��  ��  O� m  ����
�� 
longO� n      PPP 4  ����P
�� 
cobjP m  ������ P n  ��PPP 4  ����P
�� 
cobjP o  ������ 0 x  P o  ������  0 myprefsdevices myPrefsDevicesO�   lifetime accepted shares   O� �PP 2   l i f e t i m e   a c c e p t e d   s h a r e sO� PPP l �(PPPP r  �(PPP c  �PPP I  ���P���� 0 roundnumber roundNumberP PPP [  �PP P l ��P!����P! c  ��P"P#P" l ��P$����P$ n  ��P%P&P% 4  ����P'
�� 
cobjP' m  ������ P& n  ��P(P)P( 4  ����P*
�� 
cobjP* o  ������ 0 x  P) o  ������  0 myprefsdevices myPrefsDevices��  ��  P# m  ����
�� 
long��  ��  P  l �P+����P+ c  �P,P-P, l �P.����P. n  �P/P0P/ 4  ��P1
�� 
cobjP1 m  ���� P0 n  �P2P3P2 4  ���P4
�� 
cobjP4 o  � ϿϿ 0 x  P3 o  ��ϾϾ  0 myprefsdevices myPrefsDevices��  ��  P- m  Ͻ
Ͻ 
long��  ��  P P5ϼP5 m  ϻϻ  ϼ  ��  P m  Ϻ
Ϻ 
longP n      P6P7P6 4   'ϹP8
Ϲ 
cobjP8 m  #&ϸϸ P7 n   P9P:P9 4   ϷP;
Ϸ 
cobjP; o  ϶϶ 0 x  P: o  ϵϵ  0 myprefsdevices myPrefsDevicesP   lifetime rejected shares   P �P<P< 2   l i f e t i m e   r e j e c t e d   s h a r e sP P=P>P= l )pP?P@PAP? r  )pPBPCPB c  )^PDPEPD I  )ZϴPFϳϴ 0 roundnumber roundNumberPF PGPHPG [  *UPIPJPI l *?PKϲϱPK c  *?PLPMPL l *;PNϰϯPN n  *;POPPPO 4  4;ϮPQ
Ϯ 
cobjPQ m  7:ϭϭ PP n  *4PRPSPR 4  /4ϬPT
Ϭ 
cobjPT o  23ϫϫ 0 x  PS o  */ϪϪ  0 myprefsdevices myPrefsDevicesϰ  ϯ  PM m  ;>ϩ
ϩ 
longϲ  ϱ  PJ l ?TPUϨϧPU c  ?TPVPWPV l ?PPXϦϥPX n  ?PPYPZPY 4  IPϤP[
Ϥ 
cobjP[ m  LOϣϣ PZ n  ?IP\P]P\ 4  DIϢP^
Ϣ 
cobjP^ o  GHϡϡ 0 x  P] o  ?DϠϠ  0 myprefsdevices myPrefsDevicesϦ  ϥ  PW m  PSϟ
ϟ 
longϨ  ϧ  PH P_ϞP_ m  UVϝϝ  Ϟ  ϳ  PE m  Z]Ϝ
Ϝ 
longPC n      P`PaP` 4  hoϛPb
ϛ 
cobjPb m  knϚϚ Pa n  ^hPcPdPc 4  chϙPe
ϙ 
cobjPe o  fgϘϘ 0 x  Pd o  ^cϗϗ  0 myprefsdevices myPrefsDevicesP@   lifetime hardware errors   PA �PfPf 2   l i f e t i m e   h a r d w a r e   e r r o r sP> PgPhPg l qqϖϕϔϖ  ϕ  ϔ  Ph PiPjPi l qqϓPkPlϓ  Pk ? 9 reset the session accepted/rejected shares and HW errors   Pl �PmPm r   r e s e t   t h e   s e s s i o n   a c c e p t e d / r e j e c t e d   s h a r e s   a n d   H W   e r r o r sPj PnPoPn r  q�PpPqPp m  qrϒϒ  Pq n      PrPsPr 4  |�ϑPt
ϑ 
cobjPt m  �ϐϐ Ps n  r|PuPvPu 4  w|ϏPw
Ϗ 
cobjPw o  z{ώώ 0 x  Pv o  rwύύ  0 myprefsdevices myPrefsDevicesPo PxPyPx r  ��PzP{Pz m  ��όό  P{ n      P|P}P| 4  ��ϋP~
ϋ 
cobjP~ m  ��ϊϊ P} n  ��PP�P 4  ��ωP�
ω 
cobjP� o  ��ψψ 0 x  P� o  ��χχ  0 myprefsdevices myPrefsDevicesPy P�P�P� r  ��P�P�P� m  ��φφ  P� n      P�P�P� 4  ��υP�
υ 
cobjP� m  ��ττ P� n  ��P�P�P� 4  ��σP�
σ 
cobjP� o  ��ςς 0 x  P� o  ��ρρ  0 myprefsdevices myPrefsDevicesP� P�P�P� l ��π��~π  �  �~  P� P�P�P� l ���}P�P��}  P�   reset the temperature   P� �P�P� ,   r e s e t   t h e   t e m p e r a t u r eP� P�P�P� r  ��P�P�P� m  ���|�|  P� n      P�P�P� 4  ���{P�
�{ 
cobjP� m  ���z�z P� n  ��P�P�P� 4  ���yP�
�y 
cobjP� o  ���x�x 0 x  P� o  ���w�w  0 myprefsdevices myPrefsDevicesP� P�P�P� l ���v�u�t�v  �u  �t  P� P�P�P� l ���sP�P��s  P�   custom status lines   P� �P�P� (   c u s t o m   s t a t u s   l i n e sP� P�P�P� Z  ��P�P��r�qP� = ��P�P�P� l ��P��p�oP� c  ��P�P�P� n  ��P�P�P� 4  ���nP�
�n 
cobjP� m  ���m�m P� n  ��P�P�P� 4  ���lP�
�l 
cobjP� o  ���k�k 0 x  P� o  ���j�j  0 myprefsdevices myPrefsDevicesP� m  ���i
�i 
bool�p  �o  P� m  ���h
�h boovtrueP� r  ��P�P�P� m  ��P�P� �P�P�  m i n e r   s t o p p e dP� n      P�P�P� 4  ���gP�
�g 
cobjP� m  ���f�f P� n  ��P�P�P� 4  ���eP�
�e 
cobjP� o  ���d�d 0 x  P� o  ���c�c  0 myprefsdevices myPrefsDevices�r  �q  P� P�P�P� l ���b�a�`�b  �a  �`  P� P�P�P� l ���_P�P��_  P� 1 + turn off any cooldown modes, if they're on   P� �P�P� V   t u r n   o f f   a n y   c o o l d o w n   m o d e s ,   i f   t h e y ' r e   o nP� P��^P� r  �P�P�P� m  ���]
�] boovfalsP� n      P�P�P� 4   �\P�
�\ 
cobjP� m  �[�[ P� n  � P�P�P� 4  � �ZP�
�Z 
cobjP� o  ���Y�Y 0 x  P� o  ���X�X  0 myprefsdevices myPrefsDevices�^  �� 0 x  O� m  qr�W�W O� n  r�P�P�P� m  {�V
�V 
nmbrP� n r{P�P�P� 2 w{�U
�U 
cobjP� o  rw�T�T  0 myprefsdevices myPrefsDevices��  O� P�P�P� l �S�R�Q�S  �R  �Q  P� P�P�P� I  �P�O�N�P (0 updatedevicelistui updateDeviceListUI�O  �N  P� P�P�P� l �M�L�K�M  �L  �K  P� P�P�P� r  P�P�P� m  �J
�J boovfalsP� o      �I�I 0 minerapiready minerAPIreadyP� P�P�P� r  #P�P�P� m  �H
�H boovfalsP� o      �G�G 0 minerrunning minerRunningP� P�P�P� r  $-P�P�P� m  $'P�P� �P�P�  P� o      �F�F 0 
pidcgminer 
pidCGminerP� P�P�P� r  .5P�P�P� m  ./�E�E  P� o      �D�D 0 
timertimer 
timerTimerP� P�P�P� r  6=P�P�P� m  67�C�C  P� o      �B�B *0 minermissedcommands minerMissedCommandsP� P�P�P� l >>�A�@�?�A  �@  �?  P� P��>P� L  >@�=�=  �>  N� #  Shut down CGminer if running   N� �P�P� :   S h u t   d o w n   C G m i n e r   i f   r u n n i n gN� P�P�P� l     �<�;�:�<  �;  �:  P� P�P�P� i  ��P�P�P� I      �9�8�7�9 (0 startdonationtimer startDonationTimer�8  �7  P� k     3P�P� P�P�P� I     
�6P��5�6 0 	killtimer 	killTimerP� P��4P� o    �3�3 0 donationtimer donationTimer�4  �5  P� P�P�P� r    P�P�P� n   Q QQ  4    �2Q
�2 
pclsQ m    QQ �QQ  N S T i m e rQ m    �1
�1 misccuraP� o      �0�0 0 donationtimer donationTimerP� Q�/Q r    3QQQ n   -QQ	Q I    -�.Q
�-�. �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Q
 QQQ ]    %QQQ ]    #QQQ l   !Q�,�+Q n    !QQQ 4    !�*Q
�* 
cobjQ m     �)�) Q o    �(�(  0 myprefsgeneral myPrefsGeneral�,  �+  Q m   ! "�'�' <Q m   # $�&�& <Q QQQ  f   % &Q QQQ m   & 'QQ �QQ  d o D o n a t i o n P o o lQ QQQ m   ' (QQ �QQ  Q Q�%Q m   ( )�$
�$ boovtrue�%  �-  Q	 n   Q Q!Q  o    �#�# 0 nstimer NSTimerQ! m    �"
�" misccuraQ o      �!�! 0 donationtimer donationTimer�/  P� Q"Q#Q" l     � ���   �  �  Q# Q$Q%Q$ i  ��Q&Q'Q& I      ����  0 dodonationpool doDonationPool�  �  Q' k    �Q(Q( Q)Q*Q) I     �Q+�� 
0 msglog  Q+ Q,Q-Q, m    Q.Q. �Q/Q/ t S t a r t i n g   s w i t c h   t o   d o n a t i o n   p o o l   b a s e d   o n   u s e r   p r e f e r e n c e sQ- Q0�Q0 m    Q1Q1 �Q2Q2  n o t i c e�  �  Q* Q3Q4Q3 I    '�Q5�� 0 setstatusline setStatusLineQ5 Q6Q7Q6 b   	 Q8Q9Q8 c   	 Q:Q;Q: b   	 Q<Q=Q< m   	 
Q>Q> �Q?Q?  H a s h i n g   f o r  Q= l  
 Q@��Q@ n   
 QAQBQA 4    �QC
� 
cobjQC m    �� QB o   
 ��  0 myprefsgeneral myPrefsGeneral�  �  Q; m    �
� 
ctxtQ9 m    QDQD �QEQE 4   m i n s   a s   d o n a t i o n ,   t h a n k s !Q7 QFQGQF m    �
� boovfalsQG QHQIQH ]    "QJQKQJ l    QL��QL n     QMQNQM 4     �QO
� 
cobjQO m    �� QN o    �
�
  0 myprefsgeneral myPrefsGeneral�  �  QK m     !�	�	 <QI QP�QP m   " #QQQQ �QRQR  d o n a t i o n�  �  Q4 QSQTQS l  ( (����  �  �  QT QUQVQU l  ( (�QWQX�  QW W Q check out a donation worker pool via curl and PHP scripts on www.asteroidapp.com   QX �QYQY �   c h e c k   o u t   a   d o n a t i o n   w o r k e r   p o o l   v i a   c u r l   a n d   P H P   s c r i p t s   o n   w w w . a s t e r o i d a p p . c o mQV QZQ[QZ Q   ( [Q\Q]Q^Q\ r   + EQ_Q`Q_ I  + C�Qa�
� .sysoexecTEXT���     TEXTQa b   + ?QbQcQb b   + =QdQeQd b   + 7QfQgQf b   + 5QhQiQh m   + ,QjQj �QkQk n c u r l   " h t t p : / / w w w . a s t e r o i d a p p . c o m / d o n o r s / i n d e x . p h p ? m i n s =Qi n   , 4QlQmQl 4   1 4�Qn
� 
cobjQn m   2 3� �  Qm o   , 1����  0 myprefsgeneral myPrefsGeneralQg m   5 6QoQo �QpQp  & C o i n =Qe o   7 <���� 0 currentcoin currentCoinQc m   = >QqQq �QrQr  "�  Q` o      ���� 0 	donorpool 	donorPoolQ] R      ������
�� .ascrerr ****      � ****��  ��  Q^ k   M [QsQs QtQuQt I   M X��Qv���� 
0 msglog  Qv QwQxQw m   N QQyQy �QzQz ~ U n a b l e   t o   c h e c k   o u t   a   v a l i d   w o r k e r ,   c a n c e l l i n g   d o n a t i o n   a t t e m p tQx Q{��Q{ m   Q TQ|Q| �Q}Q}  n o t i c e��  ��  Qu Q~��Q~ L   Y [����  ��  Q[ QQ�Q Z   \ vQ�Q�����Q� =  \ aQ�Q�Q� o   \ ]���� 0 	donorpool 	donorPoolQ� m   ] `Q�Q� �Q�Q�  Q� k   d rQ�Q� Q�Q�Q� I   d o��Q����� 
0 msglog  Q� Q�Q�Q� m   e hQ�Q� �Q�Q� ~ U n a b l e   t o   c h e c k   o u t   a   v a l i d   w o r k e r ,   c a n c e l l i n g   d o n a t i o n   a t t e m p tQ� Q���Q� m   h kQ�Q� �Q�Q�  n o t i c e��  ��  Q� Q���Q� L   p r����  ��  ��  ��  Q� Q�Q�Q� l  w w��������  ��  ��  Q� Q�Q�Q� r   w �Q�Q�Q� I   w ���Q����� 0 splitstring splitStringQ� Q�Q�Q� o   x y���� 0 	donorpool 	donorPoolQ� Q���Q� m   y |Q�Q� �Q�Q�  |��  ��  Q� o      ���� 0 	donorpool 	donorPoolQ� Q�Q�Q� Z   � �Q�Q���Q�Q� ?  � �Q�Q�Q� n   � �Q�Q�Q� m   � ���
�� 
nmbrQ� n  � �Q�Q�Q� 2  � ���
�� 
cobjQ� o   � ����� 0 	donorpool 	donorPoolQ� m   � ����� Q� I   � ���Q����� 
0 msglog  Q� Q�Q�Q� m   � �Q�Q� �Q�Q� r C h e c k e d   o u t   a   d o n o r   p o o l   w o r k e r   f r o m   t h e   A s t e r o i d   w e b s i t eQ� Q���Q� m   � �Q�Q� �Q�Q�  n o t i c e��  ��  ��  Q� k   � �Q�Q� Q�Q�Q� l  � ���Q�Q���  Q� %  can't get a donor pool, abort!   Q� �Q�Q� >   c a n ' t   g e t   a   d o n o r   p o o l ,   a b o r t !Q� Q�Q�Q� I   � ���Q����� 
0 msglog  Q� Q�Q�Q� m   � �Q�Q� �Q�Q� � U n a b l e   t o   s w i t c h   t o   a   d o n o r   p o o l   w o r k e r ,   u n a b l e   t o   o b t a i n   f r o m   t h e   A s t e r o i d   w e b s i t eQ� Q���Q� m   � �Q�Q� �Q�Q�  w a r n i n g��  ��  Q� Q���Q� L   � �����  ��  Q� Q�Q�Q� l  � ���������  ��  ��  Q� Q�Q�Q� l  � ���Q�Q���  Q�   add donation pool   Q� �Q�Q� $   a d d   d o n a t i o n   p o o lQ� Q�Q�Q� r   � �Q�Q�Q� I   � ���Q����� 0 sendcommand sendCommandQ� Q�Q�Q� m   � �Q�Q� �Q�Q�  a d d p o o lQ� Q�Q�Q� b   � �Q�Q�Q� b   � �Q�Q�Q� b   � �Q�Q�Q� b   � �Q�Q�Q� n   � �Q�Q�Q� 4   � ���Q�
�� 
cobjQ� m   � ����� Q� o   � ����� 0 	donorpool 	donorPoolQ� m   � �Q�Q� �Q�Q�  ,Q� n   � �Q�Q�Q� 4   � ���Q�
�� 
cobjQ� m   � ����� Q� o   � ����� 0 	donorpool 	donorPoolQ� m   � �Q�Q� �Q�Q�  ,Q� n   � �Q�Q�Q� 4   � ���Q�
�� 
cobjQ� m   � ����� Q� o   � ����� 0 	donorpool 	donorPoolQ� Q���Q� m   � ���
�� boovfals��  ��  Q� o      ���� 0 addedit addedItQ� Q�Q�Q� l  � ���������  ��  ��  Q� Q�Q�Q� l  � ���Q�Q���  Q� 0 * disable all pools except for the last one   Q� �Q�Q� T   d i s a b l e   a l l   p o o l s   e x c e p t   f o r   t h e   l a s t   o n eQ� Q�Q�Q� r   � �Q�Q�Q� I   � ���Q�ο�� 0 sendcommand sendCommandQ� Q�Q�Q� m   � �Q�Q� �Q�Q� 
 p o o l sQ� Q�Q�Q� m   � �Q�Q� �Q�Q�  Q� Q�ξQ� m   � �ν
ν boovfalsξ  ο  Q� o      μμ 0 
countpools 
countPoolsQ� R RR  r   � �RRR n   � �RRR 4   � �λR
λ 
cobjR m   � �κκ R I   � �ιRθι 0 splitstring splitStringR RR	R o   � �ηη 0 
countpools 
countPoolsR	 R
ζR
 m   � �RR �RR  |ζ  θ  R o      εε 0 
countpools 
countPoolsR RRR r   � �RRR n   � �RRR 4   � �δR
δ 
cobjR m   � �γγ R I   � �βRαβ 0 splitstring splitStringR RRR o   � �ΰΰ 0 
countpools 
countPoolsR RίR m   � �RR �RR  ,ί  α  R o      ήή 0 
countpools 
countPoolsR RRR r   �	RRR n   �RRR 4  έR 
έ 
cobjR  m  άά R I   �ΫR!ΪΫ 0 splitstring splitStringR! R"R#R" o   � �ΩΩ 0 
countpools 
countPoolsR# R$ΨR$ m   � R%R% �R&R&  =Ψ  Ϊ  R o      ΧΧ 0 
countpools 
countPoolsR R'R(R' r  
R)R*R) n  
R+R,R+ 4  ΦR-
Φ 
cobjR- m  ΥΥ R, I  
ΤR.ΣΤ 0 splitstring splitStringR. R/R0R/ o  ΢΢ 0 
countpools 
countPoolsR0 R1ΡR1 m  R2R2 �R3R3   Ρ  Σ  R* o      ΠΠ 0 
countpools 
countPoolsR( R4R5R4 l ΟΞΝΟ  Ξ  Ν  R5 R6R7R6 I  *ΜR8ΛΜ 
0 msglog  R8 R9R:R9 b  #R;R<R; b  R=R>R= m  R?R? �R@R@  T h e r e   a r e  R> o  ΚΚ 0 
countpools 
countPoolsR< m  "RARA �RBRB �   p o o l s   c u r r e n t l y   c o n f i g u r e d   f o r   t h e   m i n e r ,   i n c l u d i n g   t h e   d o n a t i o n   p o o l .R: RCΙRC m  #&RDRD �RERE  n o t i c eΙ  Λ  R7 RFRGRF l ++ΘΗΖΘ  Η  Ζ  RG RHRIRH Y  +\RJΕRKRLΔRJ k  7WRMRM RNRORN I  7JΓRPΒΓ 
0 msglog  RP RQRRRQ b  8CRSRTRS b  8?RURVRU m  8;RWRW �RXRX  D i s a b l e d   p o o l  RV \  ;>RYRZRY o  ;<ΑΑ 0 x  RZ m  <=ΐΐ RT m  ?BR[R[ �R\R\  .RR R]ΏR] m  CFR^R^ �R_R_  n o t i c eΏ  Β  RO R`ΎR` I  KW΍RaΌ΍ 0 sendcommand sendCommandRa RbRcRb m  LORdRd �ReRe  d i s a b l e p o o lRc RfRgRf \  ORRhRiRh o  OP΋΋ 0 x  Ri m  PQΊΊ Rg RjΉRj m  RSΈ
Έ boovtrueΉ  Ό  Ύ  Ε 0 x  RK m  ./·· RL l /2RkΆ΅Rk \  /2RlRmRl o  /0΄΄ 0 
countpools 
countPoolsRm m  01΃΃ Ά  ΅  Δ  RI RnRoRn r  ]wRpRqRp n ]qRrRsRr I  dq΂Rt΁΂ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Rt RuRvRu m  de΀΀ Rv RwRxRw  f  efRx RyRzRy m  fiR{R{ �R|R|  s e t P o o l K i l lRz R}R~R} m  ilRR �R�R�  R~ R��R� m  lm�~
�~ boovfals�  ΁  Rs n ]dR�R�R� o  `d�}�} 0 nstimer NSTimerR� m  ]`�|
�| misccuraRq o      �{�{ $0 setpoolkilltimer setPoolKillTimerRo R�R�R� I  x��zR��y�z 
0 msglog  R� R�R�R� b  y�R�R�R� b  y�R�R�R� m  y|R�R� �R�R� | D i s a b l e d   a l l   p o o l s   e x c e p t   f o r   t h e   d o n a t i o n   p o o l .     R u n n i n g   f o r  R� n  |�R�R�R� 4  ���xR�
�x 
cobjR� m  ���w�w R� o  |��v�v  0 myprefsgeneral myPrefsGeneralR� m  ��R�R� �R�R� H   m i n s   u n t i l   r e s e t t i n g   b a c k   t o   n o r m a lR� R��uR� m  ��R�R� �R�R�  n o t i c e�u  �y  R� R�R�R� l ���t�s�r�t  �s  �r  R� R��qR� r  ��R�R�R� n ��R�R�R� I  ���pR��o�p �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_R� R�R�R� ]  ��R�R�R� l ��R��n�mR� n  ��R�R�R� 4  ���lR�
�l 
cobjR� m  ���k�k R� o  ���j�j  0 myprefsgeneral myPrefsGeneral�n  �m  R� m  ���i�i <R� R�R�R�  f  ��R� R�R�R� m  ��R�R� �R�R� $ f i n i s h D o n a t i o n P o o lR� R�R�R� m  ��R�R� �R�R�  R� R��hR� m  ���g
�g boovfals�h  �o  R� n ��R�R�R� o  ���f�f 0 nstimer NSTimerR� m  ���e
�e misccuraR� o      �d�d *0 donationactivetimer donationActiveTimer�q  Q% R�R�R� l     �c�b�a�c  �b  �a  R� R�R�R� i  ��R�R�R� I      �`�_�^�` (0 finishdonationpool finishDonationPool�_  �^  R� k     <R�R� R�R�R� I     �]R��\�] 
0 msglog  R� R�R�R� m    R�R� �R�R� j D o n a t i o n   p o o l   f i n i s h e d .     R e t u r n i n g   t o   n o r m a l   h a s h i n g .R� R��[R� m    R�R� �R�R�  n o t i c e�[  �\  R� R�R�R� I    �ZR��Y�Z 0 setstatusline setStatusLineR� R�R�R� b   	 R�R�R� c   	 R�R�R� b   	 R�R�R� m   	 
R�R� �R�R�  D o n a t e d  R� l  
 R��X�WR� n   
 R�R�R� 4    �VR�
�V 
cobjR� m    �U�U R� o   
 �T�T  0 myprefsgeneral myPrefsGeneral�X  �W  R� m    �S
�S 
ctxtR� m    R�R� �R�R� &   m i n s   - -   t h a n k   y o u !R� R�R�R� m    �R
�R boovfalsR� R�R�R� m    �Q�Q R� R��PR� m    R�R� �R�R�  d o n a t i o n�P  �Y  R� R�R�R� l   �OR�R��O  R�   kill timer   R� �R�R�    k i l l   t i m e rR� R�R�R� I    )�NR��M�N 0 	killtimer 	killTimerR� R��LR� o     %�K�K 0 donationtimer donationTimer�L  �M  R� R�R�R� r   * 4R�R�R� n  * .R�R�R� 4   + .�JR�
�J 
pclsR� m   , -R�R� �R�R�  N S T i m e rR� m   * +�I
�I misccuraR� o      �H�H 0 donationtimer donationTimerR� R�R�R� I   5 :�G�F�E�G 0 setpools setPools�F  �E  R� R��DR� l  ; ;�CR�R��C  R� !  start donation timer again   R� �R�R� 6   s t a r t   d o n a t i o n   t i m e r   a g a i n�D  R� R�R�R� l     �B�A�@�B  �A  �@  R� R�R�R� i  ��R�R�R� I      �?R��>�? $0 setintensityto1_ setIntensityTo1_R� R��=R� o      �<�< 
0 sender  �=  �>  R� k     jR�R� S SS  l     �;SS�;  S   set all GPUs to 1   S �SS $   s e t   a l l   G P U s   t o   1S S�:S Y     jS�9SS�8S Z    eS	S
�7�6S	 =   "SSS l    S�5�4S c     SSS n    SSS 4    �3S
�3 
cobjS m    �2�2 S n    SSS 4    �1S
�1 
cobjS o    �0�0 0 x  S o    �/�/  0 myprefsdevices myPrefsDevicesS m    �.
�. 
ctxt�5  �4  S m     !SS �SS  g p uS
 k   % aSS SSS Z   % ZSSS�-S =  % ,SSS o   % *�,�, 0 currentcoin currentCoinS m   * +S S  �S!S!  B i t c o i nS r   / <S"S#S" m   / 0�+�+ S# n      S$S%S$ 4   8 ;�*S&
�* 
cobjS& m   9 :�)�) S% n   0 8S'S(S' 4   5 8�(S)
�( 
cobjS) o   6 7�'�' 0 x  S( o   0 5�&�&  0 myprefsdevices myPrefsDevicesS S*S+S* =  ? FS,S-S, o   ? D�%�% 0 currentcoin currentCoinS- m   D ES.S. �S/S/  L i t e c o i nS+ S0�$S0 r   I VS1S2S1 m   I J�#�# S2 n      S3S4S3 4   R U�"S5
�" 
cobjS5 m   S T�!�! 	S4 n   J RS6S7S6 4   O R� S8
�  
cobjS8 o   P Q�� 0 x  S7 o   J O��  0 myprefsdevices myPrefsDevices�$  �-  S S9�S9 I   [ a�S:�� 20 changeintensityinternal changeIntensityInternalS: S;�S; o   \ ]�� 0 x  �  �  �  �7  �6  �9 0 x  S m    �� S n    S<S=S< m    �
� 
nmbrS= n   S>S?S> 2  	 �
� 
cobjS? o    	��  0 myprefsdevices myPrefsDevices�8  �:  R� S@SAS@ l     ����  �  �  SA SBSCSB i  ��SDSESD I      �SF�� $0 setintensityto4_ setIntensityTo4_SF SG�SG o      �� 
0 sender  �  �  SE k     jSHSH SISJSI l     �SKSL�  SK   set all GPUs to 4   SL �SMSM $   s e t   a l l   G P U s   t o   4SJ SN�SN Y     jSO�SPSQ�
SO Z    eSRSS�	�SR =   "STSUST l    SV��SV c     SWSXSW n    SYSZSY 4    �S[
� 
cobjS[ m    �� SZ n    S\S]S\ 4    �S^
� 
cobjS^ o    �� 0 x  S] o    ��  0 myprefsdevices myPrefsDevicesSX m    � 
�  
ctxt�  �  SU m     !S_S_ �S`S`  g p uSS k   % aSaSa SbScSb Z   % ZSdSeSf��Sd =  % ,SgShSg o   % *���� 0 currentcoin currentCoinSh m   * +SiSi �SjSj  B i t c o i nSe r   / <SkSlSk m   / 0���� Sl n      SmSnSm 4   8 ;��So
�� 
cobjSo m   9 :���� Sn n   0 8SpSqSp 4   5 8��Sr
�� 
cobjSr o   6 7���� 0 x  Sq o   0 5����  0 myprefsdevices myPrefsDevicesSf SsStSs =  ? FSuSvSu o   ? D���� 0 currentcoin currentCoinSv m   D ESwSw �SxSx  L i t e c o i nSt Sy��Sy r   I VSzS{Sz m   I J���� 
S{ n      S|S}S| 4   R U��S~
�� 
cobjS~ m   S T���� 	S} n   J RSS�S 4   O R��S�
�� 
cobjS� o   P Q���� 0 x  S� o   J O����  0 myprefsdevices myPrefsDevices��  ��  Sc S���S� I   [ a��S����� 20 changeintensityinternal changeIntensityInternalS� S���S� o   \ ]���� 0 x  ��  ��  ��  �	  �  � 0 x  SP m    ���� SQ n    S�S�S� m    ��
�� 
nmbrS� n   S�S�S� 2  	 ��
�� 
cobjS� o    	����  0 myprefsdevices myPrefsDevices�
  �  SC S�S�S� l     ��������  ��  ��  S� S�S�S� i  ��S�S�S� I      ��S����� $0 setintensityto7_ setIntensityTo7_S� S���S� o      ���� 
0 sender  ��  ��  S� k     �S�S� S�S�S� l     ��S�S���  S�   set all GPUs to 1   S� �S�S� $   s e t   a l l   G P U s   t o   1S� S���S� Y     �S���S�S���S� Z    �S�S�����S� =   "S�S�S� l    S�����S� c     S�S�S� n    S�S�S� 4    ��S�
�� 
cobjS� m    ���� S� n    S�S�S� 4    ��S�
�� 
cobjS� o    ���� 0 x  S� o    ����  0 myprefsdevices myPrefsDevicesS� m    ��
�� 
ctxt��  ��  S� m     !S�S� �S�S�  g p uS� Z   % �S�S�S���S� F   % 9S�S�S� =  % ,S�S�S� o   % *���� 0 currentcoin currentCoinS� m   * +S�S� �S�S�  B i t c o i nS� =  / 7S�S�S� I   / 5��S����� 80 checkfirstintensitywarning checkFirstIntensityWarningS� S���S� m   0 1���� ��  ��  S� m   5 6��
�� boovtrueS� k   < PS�S� S�S�S� r   < IS�S�S� m   < =���� S� n      S�S�S� 4   E H��S�
�� 
cobjS� m   F G���� S� n   = ES�S�S� 4   B E��S�
�� 
cobjS� o   C D���� 0 x  S� o   = B����  0 myprefsdevices myPrefsDevicesS� S���S� I   J P��S����� 20 changeintensityinternal changeIntensityInternalS� S���S� o   K L���� 0 x  ��  ��  ��  S� S�S�S� F   S gS�S�S� =  S ZS�S�S� o   S XͿͿ 0 currentcoin currentCoinS� m   X YS�S� �S�S�  L i t e c o i nS� =  ] eS�S�S� I   ] c;S�ͽ; 80 checkfirstintensitywarning checkFirstIntensityWarningS� S�ͼS� m   ^ _ͻͻ ͼ  ͽ  S� m   c dͺ
ͺ boovtrueS� S�͹S� k   j ~S�S� S�S�S� r   j wS�S�S� m   j k͸͸ S� n      S�S�S� 4   s vͷS�
ͷ 
cobjS� m   t uͶͶ 	S� n   k sS�S�S� 4   p s͵S�
͵ 
cobjS� o   q rʹʹ 0 x  S� o   k pͳͳ  0 myprefsdevices myPrefsDevicesS� S�ͲS� I   x ~ͱS�Ͱͱ 20 changeintensityinternal changeIntensityInternalS� S�ͯS� o   y zͮͮ 0 x  ͯ  Ͱ  Ͳ  ͹  ��  ��  ��  �� 0 x  S� m    ͭͭ S� n    S�S�S� m    ͬ
ͬ 
nmbrS� n   S�S�S� 2  	 ͫ
ͫ 
cobjS� o    	ͪͪ  0 myprefsdevices myPrefsDevices��  ��  S� S�S�S� l     ͩͨͧͩ  ͨ  ͧ  S� S�S�S� i  ��S�S�S� I      ͦS�ͥͦ $0 gethashratelabel getHashRateLabelS� S�S�S� o      ͤͤ 0 therate theRateS� S�S�S� o      ͣͣ 0 	withunits 	withUnitsS� S�͢S� o      ͡͡ 0 	shortened  ͢  ͥ  S� L     S�S� c     S�S�S� n    S�S�S� I    ͠S�͟͠ *0 gethashratelabel___ getHashRateLabel___S� S�S�S� o    ͞͞ 0 therate theRateS� S�S�S� o    ͝͝ 0 	withunits 	withUnitsS� S�͜S� o    ͛͛ 0 	shortened  ͜  ͟  S� o     ͚͚ 0 	apphelper 	AppHelperS� m    ͙
͙ 
ctxtS� S�S�S� l     ͖͗͘͘  ͗  ͖  S� S�S�S� i  ��S�T S� I      ͕T͔͕ 80 checkfirstintensitywarning checkFirstIntensityWarningT T͓T o      ͒͒ 0 anint anInt͓  ͔  T  L     TT c     TTT n    
TTT I    
͑T͐͑ :0 checkfirstintensitywarning_ checkFirstIntensityWarning_T T	͏T	 o    ͎͎ 0 anint anInt͏  ͐  T o     ͍͍ 0 	apphelper 	AppHelperT m   
 ͌
͌ 
boolS� T
TT
 l     ͉͋͊͋  ͊  ͉  T TTT i  ��TTT I      ͈T͇͈ $0 minpowermaxhash_ minPowerMaxHash_T T͆T o      ͅͅ 
0 sender  ͆  ͇  T k     'TT TTT l     ̈́̓͂̈́  ̓  ͂  T TTT I    ́̀�
́ .miscactvnull��� ��� null̀  �  T TTT l   �~�}�|�~  �}  �|  T TTT r    TTT I   �{TT
�{ .sysodlogaskr        TEXTT m    TT �T T � M i n   P o w e r   /   M a x   H a s h 
 
 	 T h i s   w i l l   t u r n   d o w n   y o u r   s c r e e n   b r i g h t n e s s ,   k e y b o a r d   b a c k l i g h t   ( i f   a p p l i c a b l e ) ,   t e m p o r a r i l y   t u r n   o f f   y o u r   s c r e e n   s a v e r ,   a n d   i n c r e a s e   t h e   m i n i n g   i n t e n s i t y . 
 
 	 T h i s   w i l l   m i n i m i z e   t h e   a m o u n t   o f   p o w e r   y o u r   c o m p u t e r   c o n s u m e s ,   a s   w e l l   a s   m a x i m i z e   y o u r   h a s h r a t e   f r o m   y o u r   G P U . 
 
 	 I t   i s   i n t e n d e d   f o r   w h e n   y o u   a r e   n o t   a t   y o u r   c o m p u t e r .     W o u l d   y o u   l i k e   t o   p r o c e e d ?T �zT!T"
�z 
dispT! m    	�y
�y stic   T" �xT#T$
�x 
btnsT# J   
 T%T% T&T'T& m   
 T(T( �T)T)  C a n c e lT' T*�wT* m    T+T+ �T,T,  P r o c e e d�w  T$ �vT-�u
�v 
dfltT- m    �t�t �u  T o      �s�s 0 userresponse userResponseT T.T/T. l   �r�q�p�r  �q  �p  T/ T0T1T0 Z    %T2�o�nT3T2 =   T4T5T4 n    T6T7T6 1    �m
�m 
bhitT7 o    �l�l 0 userresponse userResponseT5 m    T8T8 �T9T9 
 S t a r t�o  �n  T3 k   # %T:T: T;T<T; l  # #�kT=T>�k  T= ' ! user selected cancel, do nothing   T> �T?T? B   u s e r   s e l e c t e d   c a n c e l ,   d o   n o t h i n gT< T@�jT@ L   # %�i�i  �j  T1 TA�hTA l  & &�g�f�e�g  �f  �e  �h  T TBTCTB l     �d�c�b�d  �c  �b  TC TDTETD i  ��TFTGTF I      �aTH�`�a &0 setdonateminutes_ setDonateMinutes_TH TI�_TI o      �^�^ 
0 sender  �_  �`  TG k     TJTJ TKTLTK r     TMTNTM c     TOTPTO l    TQ�]�\TQ n    TRTSTR I    �[�Z�Y�[ *0 titleofselecteditem titleOfSelectedItem�Z  �Y  TS o     �X�X 
0 sender  �]  �\  TP m    �W
�W 
ctxtTN n      TTTUTT 4    �VTV
�V 
cobjTV m    �U�U TU o    �T�T  0 myprefsgeneral myPrefsGeneralTL TWTXTW I    �STY�R�S ,0 updatedonateperhours updateDonatePerHoursTY TZ�QTZ m    �P
�P boovtrue�Q  �R  TX T[�OT[ I    �N�M�L�N *0 requestsavesettings requestSaveSettings�M  �L  �O  TE T\T]T\ l     �K�J�I�K  �J  �I  T] T^T_T^ i  ��T`TaT` I      �HTb�G�H (0 setdonateperhours_ setDonatePerHours_Tb Tc�FTc o      �E�E 
0 sender  �F  �G  Ta k     TdTd TeTfTe r     TgThTg l    Ti�D�CTi c     TjTkTj l    Tl�B�ATl n    TmTnTm I    �@�?�>�@ 0 intvalue intValue�?  �>  Tn o     �=�= 
0 sender  �B  �A  Tk m    �<
�< 
long�D  �C  Th n      ToTpTo 4    �;Tq
�; 
cobjTq m    �:�: Tp o    �9�9  0 myprefsgeneral myPrefsGeneralTf TrTsTr I    �8Tt�7�8 ,0 updatedonateperhours updateDonatePerHoursTt Tu�6Tu m    �5
�5 boovtrue�6  �7  Ts Tv�4Tv I    �3�2�1�3 *0 requestsavesettings requestSaveSettings�2  �1  �4  T_ TwTxTw l     �0�/�.�0  �/  �.  Tx TyTzTy i  ��T{T|T{ I      �-T}�,�- ,0 updatedonateperhours updateDonatePerHoursT} T~�+T~ o      �*�* 0 resettimers resetTimers�+  �,  T| k    TT T�T�T� l     �)�(�'�)  �(  �'  T� T�T�T� r     T�T�T� c     T�T�T� o     �&�& 0 resettimers resetTimersT� m    �%
�% 
boolT� o      �$�$ 0 resettimers resetTimersT� T�T�T� l   �#�"�!�#  �"  �!  T� T�T�T� Z    %T�T�� �T� =   	T�T�T� o    �� 0 resettimers resetTimersT� m    �
� boovtrueT� k    !T�T� T�T�T� I    �T��� 0 	killtimer 	killTimerT� T��T� o    �� 0 donationtimer donationTimer�  �  T� T��T� r    !T�T�T� n   T�T�T� 4    �T�
� 
pclsT� m    T�T� �T�T�  N S T i m e rT� m    �
� misccuraT� o      �� 0 donationtimer donationTimer�  �   �  T� T�T�T� l  & &����  �  �  T� T�T�T� l  & &�T�T��  T� / ) update the readout to reflect the slider   T� �T�T� R   u p d a t e   t h e   r e a d o u t   t o   r e f l e c t   t h e   s l i d e rT� T�T�T� Z   & RT�T��T�T� =  & 0T�T�T� l  & .T���T� n   & .T�T�T� 4   + .�T�
� 
cobjT� m   , -�� T� o   & +��  0 myprefsgeneral myPrefsGeneral�  �  T� m   . /�
�
 T� r   3 AT�T�T� c   3 ?T�T�T� b   3 =T�T�T� n   3 ;T�T�T� 4   8 ;�	T�
�	 
cobjT� m   9 :�� T� o   3 8��  0 myprefsgeneral myPrefsGeneralT� m   ; <T�T� �T�T� 
   h o u rT� m   = >�
� 
ctxtT� o      �� 0 outputstring outputString�  T� r   D RT�T�T� c   D PT�T�T� b   D NT�T�T� n   D LT�T�T� 4   I L�T�
� 
cobjT� m   J K�� T� o   D I��  0 myprefsgeneral myPrefsGeneralT� m   L MT�T� �T�T�    h o u r sT� m   N O�
� 
ctxtT� o      � �  0 outputstring outputStringT� T�T�T� n  S ]T�T�T� I   X ]��T����� "0 setstringvalue_ setStringValue_T� T���T� o   X Y���� 0 outputstring outputString��  ��  T� o   S X���� 60 prefsdonateperhourreadout prefsDonatePerHourReadoutT� T�T�T� l  ^ ^��������  ��  ��  T� T�T�T� l  ^ ^��T�T���  T� < 6 update the readout (percentage) to reflect the slider   T� �T�T� l   u p d a t e   t h e   r e a d o u t   ( p e r c e n t a g e )   t o   r e f l e c t   t h e   s l i d e rT� T�T�T� l  ^ ^��������  ��  ��  T� T�T�T� r   ^ ~T�T�T� ]   ^ |T�T�T� l  ^ zT�����T� ^   ^ zT�T�T� l  ^ fT�����T� n   ^ fT�T�T� 4   c f��T�
�� 
cobjT� m   d e���� T� o   ^ c����  0 myprefsgeneral myPrefsGeneral��  ��  T� l  f yT�����T� [   f yT�T�T� l  f nT�����T� n   f nT�T�T� 4   k n��T�
�� 
cobjT� m   l m���� T� o   f k����  0 myprefsgeneral myPrefsGeneral��  ��  T� l  n xT�����T� ]   n xT�T�T� l  n vT�����T� n   n vT�T�T� 4   s v��T�
�� 
cobjT� m   t u���� T� o   n s����  0 myprefsgeneral myPrefsGeneral��  ��  T� m   v w���� <��  ��  ��  ��  ��  ��  T� m   z {���� dT� o      ���� 0 thepct thePctT� T�T�T� l   ��������  ��  ��  T� T�T�T� r    �T�T�T� I   ���T���
�� .sysorondlong        doubT� l   �T�����T� ]    �T�T�T� o    ����� 0 thepct thePctT� m   � ����� 
��  ��  ��  T� o      ���� 0 thepct thePctT� T�T�T� r   � �T�T�T� ^   � �T�T�T� o   � ����� 0 thepct thePctT� m   � �T�T� @$      T� o      ���� 0 thepct thePctT� U UU  n  � �UUU I   � ���U���� "0 setstringvalue_ setStringValue_U U��U c   � �UUU b   � �UU	U b   � �U
UU
 m   � �UU �UU  (U o   � ����� 0 thepct thePctU	 m   � �UU �UU  %   d o n a t i o n )U m   � ���
�� 
ctxt��  ��  U o   � ����� <0 prefsdonateperhourreadoutpct prefsDonatePerHourReadoutPctU UUU l  � ���������  ��  ��  U UUU Z   � �UU��UU =  � �UUU n   � �UUU 4   � ���U
�� 
cobjU m   � ����� U o   � �����  0 myprefsgeneral myPrefsGeneralU m   � �UU �UU  1U n  � �UUU I   � ���U ���� "0 setstringvalue_ setStringValue_U  U!��U! m   � �U"U" �U#U#  m i n u t e   e v e r y��  ��  U o   � �̿̿ D0  prefsdonateminstext_minutesevery  prefsDonateMinsText_minutesevery��  U n  � �U$U%U$ I   � �̾U&̽̾ "0 setstringvalue_ setStringValue_U& U'̼U' m   � �U(U( �U)U)  m i n u t e s   e v e r y̼  ̽  U% o   � �̻̻ D0  prefsdonateminstext_minutesevery  prefsDonateMinsText_minuteseveryU U*U+U* l  � �̸̺̹̺  ̹  ̸  U+ U,U-U, Z   �U.U/̷̶U. =  � �U0U1U0 o   � �̵̵ 0 resettimers resetTimersU1 m   � �̴
̴ boovtrueU/ Z   �U2U3̳U4U2 ?  � �U5U6U5 n   � �U7U8U7 4   � �̲U9
̲ 
cobjU9 m   � �̱̱ U8 o   � �̰̰  0 myprefsgeneral myPrefsGeneralU6 m   � �̯̯  U3 k   �U:U: U;U<U; I   � �̮̭̬̮ (0 startdonationtimer startDonationTimer̭  ̬  U< U=̫U= I   �̪U>̩̪ 
0 msglog  U> U?U@U? b   � �UAUBUA b   � �UCUDUC m   � �UEUE �UFUF � D o n a t i o n   a m o u n t s / t i m e s   h a v e   c h a n g e d .     W i l l   s w i t c h   t o   t h e   d o n a t i o n   p o o l   i n  UD n   � �UGUHUG 4   � �̨UI
̨ 
cobjUI m   � �̧̧ UH o   � �̦̦  0 myprefsgeneral myPrefsGeneralUB m   � �UJUJ �UKUK    h o u r s .U@ UL̥UL m   � �UMUM �UNUN  n o t i c e̥  ̩  ̫  ̳  U4 I  ̤UỌ̤ 
0 msglog  UO UPUQUP m  	URUR �USUS X D o n a t i o n   s c h e d u l e   c a n c e l l e d   a t   u s e r   r e q u e s t .UQ UT̢UT m  	UUUU �UVUV  n o t i c e̢  ̣  ̷  ̶  U- UW̡UW l ̠̟̞̠  ̟  ̞  ̡  Tz UXUYUX l     ̛̝̜̝  ̜  ̛  UY UZU[UZ i  ��U\U]U\ I      ̚U^̙̚ ,0 gotoasteroidwebsite_ gotoAsteroidWebsite_U^ U_̘U_ o      ̗̗ 
0 sender  ̘  ̙  U] I    	̖U`̕
̖ .GURLGURLnull��� ��� TEXTU` o     ̔̔ (0 asteroidwebsiteurl asteroidWebsiteURL̕  U[ UaUbUa l     ̓̒̑̓  ̒  ̑  Ub UcUdUc i  ��UeUfUe I      ̐Ug̏̐ .0 gotoasteroiddonation_ gotoAsteroidDonation_Ug Uh̎Uh o      ̍̍ 
0 sender  ̎  ̏  Uf I    	̌Ui̋
̌ .GURLGURLnull��� ��� TEXTUi o     ̊̊ *0 asteroiddonationurl asteroidDonationURL̋  Ud UjUkUj l     ̉̈̇̉  ̈  ̇  Uk UlUmUl i  ��UnUoUn I      ̆Up̅̆ 20 gotomobileminerwebsite_ gotoMobileMinerWebsite_Up Uq̄Uq o      ̃̃ 
0 sender  ̄  ̅  Uo I    ̂Uŕ
̂ .GURLGURLnull��� ��� TEXTUr m     UsUs �UtUt < h t t p : / / w w w . m o b i l e m i n e r a p p . c o m /́  Um UuUvUu l     ̀��~̀  �  �~  Uv UwUxUw i  ��UyUzUy I      �}U{�|�} (0 gotopoolstatspage_ gotoPoolStatsPage_U{ U|�{U| o      �z�z 
0 sender  �{  �|  Uz k     �U}U} U~UU~ l     �yU�U��y  U� , & search for stats URL in defaults list   U� �U�U� L   s e a r c h   f o r   s t a t s   U R L   i n   d e f a u l t s   l i s tU U�U�U� Y     KU��xU�U��wU� Z    FU�U��v�uU� =   +U�U�U� l    U��t�sU� c     U�U�U� n    U�U�U� 4    �rU�
�r 
cobjU� m    �q�q U� l   U��p�oU� n    U�U�U� 4    �nU�
�n 
cobjU� o    �m�m 0 x  U� o    �l�l "0 defaultpoolsbtc defaultPoolsBTC�p  �o  U� m    �k
�k 
ctxt�t  �s  U� l    *U��j�iU� c     *U�U�U� n     (U�U�U� 4   % (�hU�
�h 
cobjU� m   & '�g�g U� o     %�f�f 0 currentpool currentPoolU� m   ( )�e
�e 
ctxt�j  �i  U� k   . BU�U� U�U�U� I  . ?�dU��c
�d .GURLGURLnull��� ��� TEXTU� l  . ;U��b�aU� c   . ;U�U�U� n   . 9U�U�U� 4   6 9�`U�
�` 
cobjU� m   7 8�_�_ U� l  . 6U��^�]U� n   . 6U�U�U� 4   3 6�\U�
�\ 
cobjU� o   4 5�[�[ 0 x  U� o   . 3�Z�Z "0 defaultpoolsbtc defaultPoolsBTC�^  �]  U� m   9 :�Y
�Y 
ctxt�b  �a  �c  U� U��XU� L   @ B�W�W  �X  �v  �u  �x 0 x  U� m    �V�V U� n    U�U�U� m    �U
�U 
nmbrU� n   U�U�U� 2  	 �T
�T 
cobjU� o    	�S�S "0 defaultpoolsbtc defaultPoolsBTC�w  U� U�U�U� Y   L �U��RU�U��QU� Z   _ �U�U��P�OU� =  _ wU�U�U� l  _ lU��N�MU� c   _ lU�U�U� n   _ jU�U�U� 4   g j�LU�
�L 
cobjU� m   h i�K�K U� l  _ gU��J�IU� n   _ gU�U�U� 4   d g�HU�
�H 
cobjU� o   e f�G�G 0 x  U� o   _ d�F�F "0 defaultpoolsltc defaultPoolsLTC�J  �I  U� m   j k�E
�E 
ctxt�N  �M  U� l  l vU��D�CU� c   l vU�U�U� n   l tU�U�U� 4   q t�BU�
�B 
cobjU� m   r s�A�A U� o   l q�@�@ 0 currentpool currentPoolU� m   t u�?
�? 
ctxt�D  �C  U� k   z �U�U� U�U�U� I  z ��>U��=
�> .GURLGURLnull��� ��� TEXTU� l  z �U��<�;U� c   z �U�U�U� n   z �U�U�U� 4   � ��:U�
�: 
cobjU� m   � ��9�9 U� l  z �U��8�7U� n   z �U�U�U� 4    ��6U�
�6 
cobjU� o   � ��5�5 0 x  U� o   z �4�4 "0 defaultpoolsltc defaultPoolsLTC�8  �7  U� m   � ��3
�3 
ctxt�<  �;  �=  U� U��2U� L   � ��1�1  �2  �P  �O  �R 0 x  U� m   O P�0�0 U� n   P ZU�U�U� m   W Y�/
�/ 
nmbrU� n  P WU�U�U� 2  U W�.
�. 
cobjU� o   P U�-�- "0 defaultpoolsltc defaultPoolsLTC�Q  U� U�U�U� l  � ��,�+�*�,  �+  �*  U� U�U�U� l  � ��)U�U��)  U� 2 , if can't find, then guess based on pool URL   U� �U�U� X   i f   c a n ' t   f i n d ,   t h e n   g u e s s   b a s e d   o n   p o o l   U R LU� U�U�U� r   � �U�U�U� c   � �U�U�U� n   � �U�U�U� 4   � ��(U�
�( 
cobjU� m   � ��'�' U� o   � ��&�& 0 currentpool currentPoolU� m   � ��%
�% 
ctxtU� o      �$�$ 0 testurl testURLU� U�U�U� Z   � �U�U��#�"U� E   � �U�U�U� o   � ��!�! 0 testurl testURLU� m   � �U�U� �U�U�  / /U� r   � �U�U�U� n   � �U�U�U� 4   � �� U�
�  
cobjU� m   � ��� U� I   � ��U��� 0 splitstring splitStringU� U�U�U� o   � ��� 0 testurl testURLU� U��U� m   � �U�U� �U�U�  / /�  �  U� o      �� 0 testurl testURL�#  �"  U� U�U�U� Z   � �V V�VV  E   � �VVV o   � ��� 0 testurl testURLV m   � �VV �VV  :V r   � �VVV n   � �V	V
V	 4   � ��V
� 
cobjV m   � ��� V
 I   � ��V�� 0 splitstring splitStringV VVV o   � ��� 0 testurl testURLV V�V m   � �VV �VV  :�  �  V o      �� 0 testurl testURL�  V k   � �VV VVV I   � ��V�� 
0 msglog  V VVV b   � �VVV b   � �VVV m   � �VV �VV T D o n ' t   k n o w   w h a t   t h e   s t a t s   p a g e   U R L   i s   f o r  V n   � �VVV 4   � ��V 
� 
cobjV  m   � ��� V o   � ��� 0 currentpool currentPoolV m   � �V!V! �V"V" V ,   a n d   I   c o u l d n ' t   g u e s s   a t   i t   e i t h e r ,   s o r r y !V V#�V# m   � �V$V$ �V%V% 
 a l e r t�  �  V V&�
V& L   � ��	�	  �
  U� V'V(V' I  � ��V)�
� .GURLGURLnull��� ��� TEXTV) l  � �V*��V* b   � �V+V,V+ m   � �V-V- �V.V.  h t t p : / /V, o   � ��� 0 testurl testURL�  �  �  V( V/�V/ l  � ���� �  �  �   �  Ux V0V1V0 l     ��������  ��  ��  V1 V2V3V2 i  ��V4V5V4 I      ��V6���� &0 entercoinaddress_ enterCoinAddress_V6 V7��V7 o      ���� 
0 sender  ��  ��  V5 k     kV8V8 V9V:V9 l     ��������  ��  ��  V: V;V<V; r     V=V>V= l    V?����V? c     V@VAV@ n    	VBVCVB I    	�������� 0 stringvalue stringValue��  ��  VC o     ���� $0 prefscoinmonitor prefsCoinMonitorVA m   	 
��
�� 
ctxt��  ��  V> n      VDVEVD 4    ��VF
�� 
cobjVF m    ���� VE o    ����  0 myprefsgeneral myPrefsGeneralV< VGVHVG l   ��������  ��  ��  VH VIVJVI I    �������� &0 updatecoinbalance updateCoinBalance��  ��  VJ VKVLVK I    %��VM���� 0 	killtimer 	killTimerVM VN��VN o    !���� &0 balancechecktimer balanceCheckTimer��  ��  VL VOVPVO r   & 0VQVRVQ n  & *VSVTVS 4   ' *��VU
�� 
pclsVU m   ( )VVVV �VWVW  N S T i m e rVT m   & '��
�� misccuraVR o      ���� &0 balancechecktimer balanceCheckTimerVP VXVYVX r   1 GVZV[VZ n  1 AV\V]V\ I   4 A��V^���� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_V^ V_V`V_ o   4 9���� ,0 balancecheckinterval balanceCheckIntervalV` VaVbVa  f   9 :Vb VcVdVc m   : ;VeVe �VfVf " u p d a t e C o i n B a l a n c eVd VgVhVg m   ; <ViVi �VjVj  Vh Vk��Vk m   < =��
�� boovtrue��  ��  V] n  1 4VlVmVl o   2 4���� 0 nstimer NSTimerVm m   1 2��
�� misccuraV[ o      ���� &0 balancechecktimer balanceCheckTimerVY VnVoVn l  H H��������  ��  ��  Vo VpVqVp r   H OVrVsVr m   H IVtVt �VuVu  B a l a n c eVs o      ���� 0 
currentsub 
currentSubVq VvVwVv n  P ZVxVyVx I   U Z��Vz���� 0 
sethidden_ 
setHidden_Vz V{��V{ m   U V��
�� boovfals��  ��  Vy o   P U���� 20 addresstomonitorreadout addressToMonitorReadoutVw V|V}V| n  [ eV~VV~ I   ` e��V����� 0 
sethidden_ 
setHidden_V� V���V� m   ` a��
�� boovtrue��  ��  V o   [ `���� (0 sharestatusreadout shareStatusReadoutV} V�V�V� l  f f��������  ��  ��  V� V���V� I   f k�������� *0 requestsavesettings requestSaveSettings��  ��  ��  V3 V�V�V� l     ����˿��  ��  ˿  V� V�V�V� i  ��V�V�V� I      ˾V�˽˾ (0 setdockbadgestring setDockBadgeStringV� V�˼V� o      ˻˻ "0 dockbadgestring dockBadgeString˼  ˽  V� k     V�V� V�V�V� r     	V�V�V� n    V�V�V� I    ˺˹˸˺ 0 docktile dockTile˹  ˸  V� n    V�V�V� o    ˷˷ 0 nsapp NSAppV� m     ˶
˶ misccuraV� o      ˵˵ 0 appdocktile appDockTileV� V�˴V� n  
 V�V�V� I    ˳V�˲˳  0 setbadgelabel_ setBadgeLabel_V� V�˱V� c    V�V�V� o    ˰˰ "0 dockbadgestring dockBadgeStringV� m    ˯
˯ 
ctxt˱  ˲  V� o   
 ˮˮ 0 appdocktile appDockTile˴  V� V�V�V� l     ˭ˬ˫˭  ˬ  ˫  V� V�V�V� i  ��V�V�V� I      ˪V�˩˪ 0 togglebadge_ toggleBadge_V� V�˨V� o      ˧˧ 
0 sender  ˨  ˩  V� k     !V�V� V�V�V� r     V�V�V� l    V�˦˥V� c     V�V�V� n    V�V�V� o    ˤˤ 	0 state  V� o     ˣˣ 
0 sender  V� m    ˢ
ˢ 
long˦  ˥  V� o      ˡˡ 0 toggleto toggleToV� V�V�V� r    V�V�V� l   V�ˠ˟V� c    V�V�V� o    	˞˞ 0 toggleto toggleToV� m   	 
˝
˝ 
ctxtˠ  ˟  V� n      V�V�V� 4    ˜V�
˜ 
cobjV� m    ˛˛ 	V� o    ˚˚  0 myprefsgeneral myPrefsGeneralV� V�V�V� I    ˙V�˘˙ (0 setdockbadgestring setDockBadgeStringV� V�˗V� m    V�V� �V�V�  ˗  ˘  V� V�˖V� I    !˕˔˓˕ *0 requestsavesettings requestSaveSettings˔  ˓  ˖  V� V�V�V� l     ˒ˑː˒  ˑ  ː  V� V�V�V� i  ��V�V�V� I      ˏV�ˎˏ 20 toggledisablegpumining_ toggleDisableGPUMining_V� V�ˍV� o      ˌˌ 
0 sender  ˍ  ˎ  V� k     4V�V� V�V�V� r     V�V�V� l    V�ˋˊV� c     V�V�V� n    V�V�V� o    ˉˉ 	0 state  V� o     ˈˈ 
0 sender  V� m    ˇ
ˇ 
longˋ  ˊ  V� o      ˆˆ 0 toggleto toggleToV� V�V�V� r    V�V�V� l   V�˅˄V� c    V�V�V� o    	˃˃ 0 toggleto toggleToV� m   	 
˂
˂ 
bool˅  ˄  V� n      V�V�V� 4    ˁV�
ˁ 
cobjV� m    ˀˀ V� o    ��  0 myprefsgeneral myPrefsGeneralV� V�V�V� l   �~V�V��~  V�   setDockBadgeString("")   V� �V�V� .   s e t D o c k B a d g e S t r i n g ( " " )V� V�V�V� Z    .V�V��}�|V� o    �{�{ 0 minerrunning minerRunningV� I   *�zV�V�
�z .sysodlogaskr        TEXTV� m    V�V� �V�V� � Y o u   w i l l   n e e d   t o   r e s t a r t   t h e   m i n i n g   e n g i n e   f o r   y o u r   c h a n g e s   t o   t a k e   e f f e c tV� �yV�V�
�y 
dispV� m     �x
�x stic   V� �wV�V�
�w 
btnsV� J   ! $V�V� V��vV� m   ! "V�V� �V�V�  O k a y�v  V� �uV��t
�u 
dfltV� m   % &�s�s �t  �}  �|  V� V��rV� I   / 4�q�p�o�q *0 requestsavesettings requestSaveSettings�p  �o  �r  V� V�V�V� l     �n�m�l�n  �m  �l  V� V�V�V� i  ��V�V�V� I      �kV��j�k :0 togglesendlitecoinsettings_ toggleSendLitecoinSettings_V� V��iV� o      �h�h 
0 sender  �i  �j  V� k     V�V� V�V�V� r     V�V�V� l    W �g�fW  c     WWW n    WWW o    �e�e 	0 state  W o     �d�d 
0 sender  W m    �c
�c 
long�g  �f  V� o      �b�b 0 toggleto toggleToV� WWW r    WWW l   W	�a�`W	 c    W
WW
 o    	�_�_ 0 toggleto toggleToW m   	 
�^
�^ 
ctxt�a  �`  W n      WWW 4    �]W
�] 
cobjW m    �\�\ W o    �[�[  0 myprefsgeneral myPrefsGeneralW W�ZW I    �Y�X�W�Y *0 requestsavesettings requestSaveSettings�X  �W  �Z  V� WWW l     �V�U�T�V  �U  �T  W WWW i  ��WWW I      �SW�R�S 80 togglegetlitecoinsettings_ toggleGetLitecoinSettings_W W�QW o      �P�P 
0 sender  �Q  �R  W k     .WW WWW r     WWW l    W�O�NW c     WWW n    W W!W  o    �M�M 	0 state  W! o     �L�L 
0 sender  W m    �K
�K 
long�O  �N  W o      �J�J 0 toggleto toggleToW W"W#W" r    W$W%W$ l   W&�I�HW& c    W'W(W' o    	�G�G 0 toggleto toggleToW( m   	 
�F
�F 
ctxt�I  �H  W% n      W)W*W) 4    �EW+
�E 
cobjW+ m    �D�D W* o    �C�C  0 myprefsgeneral myPrefsGeneralW# W,W-W, I    �B�A�@�B *0 requestsavesettings requestSaveSettings�A  �@  W- W.�?W. Z    .W/W0�>�=W/ =   "W1W2W1 o     �<�< 0 minerrunning minerRunningW2 m     !�;
�; boovtrueW0 I   % *�:�9�8�: 40 startgetlitecoinhashrate startGetLitecoinHashrate�9  �8  �>  �=  �?  W W3W4W3 l     �7�6�5�7  �6  �5  W4 W5W6W5 i  ��W7W8W7 I      �4W9�3�4 0 	killtimer 	killTimerW9 W:�2W: o      �1�1 0 	thistimer 	thisTimer�2  �3  W8 Q     W;W<W=W; n   W>W?W> I    �0�/�.�0 0 
invalidate  �/  �.  W? o    �-�- 0 	thistimer 	thisTimerW< R      �,W@�+
�, .ascrerr ****      � ****W@ o      �*�* 0 err  �+  W= l   �)WAWB�)  WA   do nuttin'   WB �WCWC    d o   n u t t i n 'W6 WDWEWD l     �(�'�&�(  �'  �&  WE WFWGWF i  ��WHWIWH I      �%WJ�$�% <0 togglemobileminersendstatus_ toggleMobileMinerSendStatus_WJ WK�#WK o      �"�" 
0 sender  �#  �$  WI k     �WLWL WMWNWM r     WOWPWO l    WQ�!� WQ c     WRWSWR n    WTWUWT o    �� 	0 state  WU o     �� 
0 sender  WS m    �
� 
bool�!  �   WP o      �� 0 toggleto toggleToWN WVWWWV r    WXWYWX c    WZW[WZ o    	�� 0 toggleto toggleToW[ m   	 
�
� 
boolWY n      W\W]W\ 4    �W^
� 
cobjW^ m    �� W] o    ��  0 myprefsgeneral myPrefsGeneralWW W_W`W_ Z    �WaWbWcWdWa =   WeWfWe o    �� 0 toggleto toggleToWf m    �
� boovfalsWb k    8WgWg WhWiWh I    "�Wj�� 
0 msglog  Wj WkWlWk m    WmWm �WnWn N S t o p p i n g   s t a t u s   u p d a t e s   t o   M o b i l e M i n e r .Wl Wo�Wo m    WpWp �WqWq  n o t i c e�  �  Wi WrWsWr l  # #�WtWu�  Wt   kill any timers   Wu �WvWv     k i l l   a n y   t i m e r sWs WwWxWw I   # -�Wy�� 0 	killtimer 	killTimerWy Wz�Wz o   $ )�� 80 mobileminersendstatustimer mobileMinerSendStatusTimer�  �  Wx W{�W{ r   . 8W|W}W| n  . 2W~WW~ 4   / 2�W�
� 
pclsW� m   0 1W�W� �W�W�  N S T i m e rW m   . /�

�
 misccuraW} o      �	�	 80 mobileminersendstatustimer mobileMinerSendStatusTimer�  Wc W�W�W� F   ; TW�W�W� >  ; EW�W�W� n   ; CW�W�W� 4   @ C�W�
� 
cobjW� m   A B�� W� o   ; @��  0 myprefsgeneral myPrefsGeneralW� m   C DW�W� �W�W�  W� >  H RW�W�W� n   H PW�W�W� 4   M P�W�
� 
cobjW� m   N O�� W� o   H M��  0 myprefsgeneral myPrefsGeneralW� m   P QW�W� �W�W�  W� W��W� k   W �W�W� W�W�W� r   W cW�W�W� c   W ZW�W�W� o   W X�� 0 toggleto toggleToW� m   X Y� 
�  
boolW� n      W�W�W� 4   _ b��W�
�� 
cobjW� m   ` a���� W� o   Z _����  0 myprefsgeneral myPrefsGeneralW� W�W�W� l  d d��������  ��  ��  W� W�W�W� I   d m��W����� 
0 msglog  W� W�W�W� m   e fW�W� �W�W� D S t a r t i n g   r e p o r t i n g   t o   M o b i l e M i n e r .W� W���W� m   f iW�W� �W�W�  n o t i c e��  ��  W� W�W�W� l  n n��W�W���  W�   start the timers   W� �W�W� "   s t a r t   t h e   t i m e r sW� W���W� r   n �W�W�W� n  n �W�W�W� I   s ���W����� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_W� W�W�W� o   s x���� >0 mobileminersendstatusinterval mobileMinerSendStatusIntervalW� W�W�W�  f   x yW� W�W�W� m   y |W�W� �W�W� . s e n d S t a t u s T o M o b i l e M i n e rW� W�W�W� m   | W�W� �W�W�  W� W���W� m    ���
�� boovfals��  ��  W� n  n sW�W�W� o   o s���� 0 nstimer NSTimerW� m   n o��
�� misccuraW� o      ���� 80 mobileminersendstatustimer mobileMinerSendStatusTimer��  �  Wd k   � �W�W� W�W�W� I   � ���W����� 
0 msglog  W� W�W�W� m   � �W�W� �W�W� � Y o u   m u s t   e n t e r   a n   e m a i l   a d d r e s s   a n d   A p p   K e y   f i r s t   b e f o r e   e n a b l i n g   M o b i l e M i n e r .W� W���W� m   � �W�W� �W�W� 
 a l e r t��  ��  W� W���W� n  � �W�W�W� I   � ���W����� 0 	setstate_ 	setState_W� W���W� m   � ���
�� boovfals��  ��  W� o   � ����� 
0 sender  ��  W` W���W� I   � ��������� *0 requestsavesettings requestSaveSettings��  ��  ��  WG W�W�W� l     ��������  ��  ��  W� W�W�W� i  ��W�W�W� I      ��W����� >0 togglemobileminerallowremote_ toggleMobileMinerAllowRemote_W� W���W� o      ���� 
0 sender  ��  ��  W� k     �W�W� W�W�W� r     W�W�W� l    W�����W� c     W�W�W� n    W�W�W� o    ���� 	0 state  W� o     ���� 
0 sender  W� m    ��
�� 
bool��  ��  W� o      ���� 0 toggleto toggleToW� W�W�W� r    W�W�W� o    	���� 0 toggleto toggleToW� n      W�W�W� 4    ��W�
�� 
cobjW� m    ���� W� o   	 ����  0 myprefsgeneral myPrefsGeneralW� W�W�W� Z    W�W�W�W�W� =   W�W�W� o    ���� 0 toggleto toggleToW� m    ��
�� boovfalsW� k    6W�W� W�W�W� I     ��W����� 
0 msglog  W� W�W�W� m    W�W� �W�W� N S t o p p i n g   s t a t u s   u p d a t e s   t o   M o b i l e M i n e r .W� X ��X  m    XX �XX  n o t i c e��  ��  W� XXX l  ! !��������  ��  ��  X XXX l  ! !��XX��  X   kill any timers   X �X	X	     k i l l   a n y   t i m e r sX X
XX
 I   ! +��X���� 0 	killtimer 	killTimerX X��X o   " '���� @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer��  ��  X X��X r   , 6XXX n  , 0XXX 4   - 0��X
�� 
pclsX m   . /XX �XX  N S T i m e rX m   , -ʿ
ʿ misccuraX o      ʾʾ @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer��  W� XXX >  9 CXXX n   9 AXXX 4   > AʽX
ʽ 
cobjX m   ? @ʼʼ X o   9 >ʻʻ  0 myprefsgeneral myPrefsGeneralX m   A BXX �XX  X XʺX k   F jX X  X!X"X! l  F Fʹʸʷʹ  ʸ  ʷ  X" X#X$X# I   F MʶX%ʵʶ 
0 msglog  X% X&X'X& m   G HX(X( �X)X) f S t a r t i n g   l i s t e n i n g   f o r   M o b i l e M i n e r   r e m o t e   c o m m a n d s .X' X*ʴX* m   H IX+X+ �X,X,  n o t i c eʴ  ʵ  X$ X-X.X- l  N NʳX/X0ʳ  X/   start the timers   X0 �X1X1 "   s t a r t   t h e   t i m e r sX. X2ʲX2 r   N jX3X4X3 n  N dX5X6X5 I   Q dʱX7ʰʱ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_X7 X8X9X8 o   Q Vʯʯ F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsIntervalX9 X:X;X:  f   V WX; X<X=X< m   W ZX>X> �X?X? < c h e c k M o b i l e M i n e r R e m o t e C o m m a n d sX= X@XAX@ m   Z ]XBXB �XCXC  XA XDʮXD m   ] ^ʭ
ʭ boovfalsʮ  ʰ  X6 n  N QXEXFXE o   O Qʬʬ 0 nstimer NSTimerXF m   N Oʫ
ʫ misccuraX4 o      ʪʪ @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimerʲ  ʺ  W� k   m XGXG XHXIXH I   m xʩXJʨʩ 
0 msglog  XJ XKXLXK m   n qXMXM �XNXN � Y o u   m u s t   e n t e r   a n   e m a i l   a d d r e s s   f i r s t   b e f o r e   e n a b l i n g   M o b i l e M i n e r .XL XOʧXO m   q tXPXP �XQXQ 
 a l e r tʧ  ʨ  XI XRʦXR n  y XSXTXS I   z ʥXUʤʥ 0 	setstate_ 	setState_XU XVʣXV m   z {ʢ
ʢ boovfalsʣ  ʤ  XT o   y zʡʡ 
0 sender  ʦ  W� XWʠXW I   � �ʟʞʝʟ *0 requestsavesettings requestSaveSettingsʞ  ʝ  ʠ  W� XXXYXX l     ʜʛʚʜ  ʛ  ʚ  XY XZX[XZ i  ��X\X]X\ I      ʙX^ʘʙ >0 entermobilemineremailaddress_ enterMobileMinerEmailAddress_X^ X_ʗX_ o      ʖʖ 
0 sender  ʗ  ʘ  X] k    8X`X` XaXbXa Z    2XcXdʕXeXc =    XfXgXf l    XhʔʓXh c     XiXjXi n    	XkXlXk I    	ʒʑʐʒ 0 stringvalue stringValueʑ  ʐ  Xl o     ʏʏ .0 prefsmobilemineremail prefsMobileMinerEmailXj m   	 
ʎ
ʎ 
ctxtʔ  ʓ  Xg m    XmXm �XnXn  Xd k    }XoXo XpXqXp l   ʍXrXsʍ  Xr P J email address deleted or not entered, therefore disable MM and checkboxes   Xs �XtXt �   e m a i l   a d d r e s s   d e l e t e d   o r   n o t   e n t e r e d ,   t h e r e f o r e   d i s a b l e   M M   a n d   c h e c k b o x e sXq XuXvXu r    XwXxXw m    ʌ
ʌ boovfalsXx n      XyXzXy 4    ʋX{
ʋ 
cobjX{ m    ʊʊ Xz o    ʉʉ  0 myprefsgeneral myPrefsGeneralXv X|X}X| r    %X~XX~ m    ʈ
ʈ boovfalsX n      X�X�X� 4   ! $ʇX�
ʇ 
cobjX� m   " #ʆʆ X� o    !ʅʅ  0 myprefsgeneral myPrefsGeneralX} X�X�X� n  & 0X�X�X� I   + 0ʄX�ʃʄ 0 setenabled_ setEnabled_X� X�ʂX� m   + ,ʁ
ʁ boovfalsʂ  ʃ  X� o   & +ʀʀ 80 prefsmobileminersendstatus prefsMobileMinerSendStatusX� X�X�X� n  1 ;X�X�X� I   6 ;�X��~� 0 setenabled_ setEnabled_X� X��}X� m   6 7�|
�| boovfals�}  �~  X� o   1 6�{�{ J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsX� X�X�X� n  < FX�X�X� I   A F�zX��y�z 0 	setstate_ 	setState_X� X��xX� m   A B�w
�w boovfals�x  �y  X� o   < A�v�v 80 prefsmobileminersendstatus prefsMobileMinerSendStatusX� X�X�X� n  G QX�X�X� I   L Q�uX��t�u 0 	setstate_ 	setState_X� X��sX� m   L M�r
�r boovfals�s  �t  X� o   G L�q�q J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsX� X�X�X� l  R R�p�o�n�p  �o  �n  X� X�X�X� l  R R�mX�X��m  X�   stop timers, if any   X� �X�X� (   s t o p   t i m e r s ,   i f   a n yX� X�X�X� I   R \�lX��k�l 0 	killtimer 	killTimerX� X��jX� o   S X�i�i @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer�j  �k  X� X�X�X� r   ] gX�X�X� n  ] aX�X�X� 4   ^ a�hX�
�h 
pclsX� m   _ `X�X� �X�X�  N S T i m e rX� m   ] ^�g
�g misccuraX� o      �f�f @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimerX� X�X�X� I   h r�eX��d�e 0 	killtimer 	killTimerX� X��cX� o   i n�b�b @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer�c  �d  X� X��aX� r   s }X�X�X� n  s wX�X�X� 4   t w�`X�
�` 
pclsX� m   u vX�X� �X�X�  N S T i m e rX� m   s t�_
�_ misccuraX� o      �^�^ @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer�a  ʕ  Xe k   �2X�X� X�X�X� l  � ��]X�X��]  X� 3 - email address was entered, let's run with it   X� �X�X� Z   e m a i l   a d d r e s s   w a s   e n t e r e d ,   l e t ' s   r u n   w i t h   i tX� X�X�X� r   � �X�X�X� l  � �X��\�[X� c   � �X�X�X� n  � �X�X�X� I   � ��Z�Y�X�Z 0 stringvalue stringValue�Y  �X  X� o   � ��W�W .0 prefsmobilemineremail prefsMobileMinerEmailX� m   � ��V
�V 
ctxt�\  �[  X� n      X�X�X� 4   � ��UX�
�U 
cobjX� m   � ��T�T X� o   � ��S�S  0 myprefsgeneral myPrefsGeneralX� X�X�X� l  � ��R�Q�P�R  �Q  �P  X� X��OX� Z   �2X�X��N�MX� F   � �X�X�X� >  � �X�X�X� l  � �X��L�KX� c   � �X�X�X� n   � �X�X�X� 4   � ��JX�
�J 
cobjX� m   � ��I�I X� o   � ��H�H  0 myprefsgeneral myPrefsGeneralX� m   � ��G
�G 
ctxt�L  �K  X� m   � �X�X� �X�X�  X� >  � �X�X�X� l  � �X��F�EX� c   � �X�X�X� n   � �X�X�X� 4   � ��DX�
�D 
cobjX� m   � ��C�C X� o   � ��B�B  0 myprefsgeneral myPrefsGeneralX� m   � ��A
�A 
ctxt�F  �E  X� m   � �X�X� �X�X�  X� k   �.X�X� X�X�X� n  � �X�X�X� I   � ��@X��?�@ 0 setenabled_ setEnabled_X� X��>X� m   � ��=
�= boovtrue�>  �?  X� o   � ��<�< 80 prefsmobileminersendstatus prefsMobileMinerSendStatusX� X�X�X� n  � �X�X�X� I   � ��;X��:�; 0 setenabled_ setEnabled_X� X��9X� m   � ��8
�8 boovtrue�9  �:  X� o   � ��7�7 J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsX� X�X�X� l  � ��6�5�4�6  �5  �4  X� X�X�X� l  � ��3X�X��3  X�   start timers   X� �X�X�    s t a r t   t i m e r sX� X�X�X� Z   � �X�X��2�1X� =  � �Y YY  n   � �YYY 4   � ��0Y
�0 
cobjY m   � ��/�/ Y o   � ��.�.  0 myprefsgeneral myPrefsGeneralY m   � ��-
�- boovtrueX� r   � �YYY n  � �YYY I   � ��,Y	�+�, �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Y	 Y
YY
 o   � ��*�* F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsIntervalY YYY  f   � �Y YYY m   � �YY �YY < c h e c k M o b i l e M i n e r R e m o t e C o m m a n d sY YYY m   � �YY �YY  Y Y�)Y m   � ��(
�( boovfals�)  �+  Y n  � �YYY o   � ��'�' 0 nstimer NSTimerY m   � ��&
�& misccuraY o      �%�% @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer�2  �1  X� Y�$Y Z   �.YY�#�"Y =  �	YYY n   �YYY 4  �!Y 
�! 
cobjY  m  � �  Y o   ���  0 myprefsgeneral myPrefsGeneralY m  �
� boovtrueY r  *Y!Y"Y! n $Y#Y$Y# I  $�Y%�� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Y% Y&Y'Y& o  �� >0 mobileminersendstatusinterval mobileMinerSendStatusIntervalY' Y(Y)Y(  f  Y) Y*Y+Y* m  Y,Y, �Y-Y- . s e n d S t a t u s T o M o b i l e M i n e rY+ Y.Y/Y. m  Y0Y0 �Y1Y1  Y/ Y2�Y2 m  �
� boovfals�  �  Y$ n Y3Y4Y3 o  �� 0 nstimer NSTimerY4 m  �
� misccuraY" o      �� 80 mobileminersendstatustimer mobileMinerSendStatusTimer�#  �"  �$  �N  �M  �O  Xb Y5�Y5 I  38���� *0 requestsavesettings requestSaveSettings�  �  �  X[ Y6Y7Y6 l     ����  �  �  Y7 Y8Y9Y8 i  ��Y:Y;Y: I      �Y<�� 20 entermobileminerappkey_ enterMobileMinerAppKey_Y< Y=�Y= o      �� 
0 sender  �  �  Y; k     Y>Y> Y?Y@Y? Z    YAYB�
YCYA =    YDYEYD l    YF�	�YF c     YGYHYG n    	YIYJYI I    	���� 0 stringvalue stringValue�  �  YJ o     �� 00 prefsmobileminerappkey prefsMobileMinerAppKeyYH m   	 
�
� 
ctxt�	  �  YE m    YKYK �YLYL  YB k    gYMYM YNYOYN l   �YPYQ�  YP J D app key deleted or not entered, therefore disable MM and checkboxes   YQ �YRYR �   a p p   k e y   d e l e t e d   o r   n o t   e n t e r e d ,   t h e r e f o r e   d i s a b l e   M M   a n d   c h e c k b o x e sYO YSYTYS r    YUYVYU m    �
� boovfalsYV n      YWYXYW 4    � YY
�  
cobjYY m    ���� YX o    ����  0 myprefsgeneral myPrefsGeneralYT YZY[YZ r    %Y\Y]Y\ m    ��
�� boovfalsY] n      Y^Y_Y^ 4   ! $��Y`
�� 
cobjY` m   " #���� Y_ o    !����  0 myprefsgeneral myPrefsGeneralY[ YaYbYa n  & 0YcYdYc I   + 0��Ye���� 0 setenabled_ setEnabled_Ye Yf��Yf m   + ,��
�� boovfals��  ��  Yd o   & +���� 80 prefsmobileminersendstatus prefsMobileMinerSendStatusYb YgYhYg n  1 ;YiYjYi I   6 ;��Yk���� 0 setenabled_ setEnabled_Yk Yl��Yl m   6 7��
�� boovfals��  ��  Yj o   1 6���� J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsYh YmYnYm n  < FYoYpYo I   A F��Yq���� 0 	setstate_ 	setState_Yq Yr��Yr m   A B��
�� boovfals��  ��  Yp o   < A���� 80 prefsmobileminersendstatus prefsMobileMinerSendStatusYn YsYtYs n  G QYuYvYu I   L Q��Yw���� 0 	setstate_ 	setState_Yw Yx��Yx m   L M��
�� boovfals��  ��  Yv o   G L���� J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsYt YyYzYy l  R R��������  ��  ��  Yz Y{Y|Y{ l  R R��Y}Y~��  Y}   stop timers, if any   Y~ �YY (   s t o p   t i m e r s ,   i f   a n yY| Y�Y�Y� I   R \��Y����� 0 	killtimer 	killTimerY� Y���Y� o   S X���� @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer��  ��  Y� Y���Y� r   ] gY�Y�Y� n  ] aY�Y�Y� 4   ^ a��Y�
�� 
pclsY� m   _ `Y�Y� �Y�Y�  N S T i m e rY� m   ] ^��
�� misccuraY� o      ���� @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer��  �
  YC k   jY�Y� Y�Y�Y� l  j j��Y�Y���  Y� - ' app key was entered, let's run with it   Y� �Y�Y� N   a p p   k e y   w a s   e n t e r e d ,   l e t ' s   r u n   w i t h   i tY� Y�Y�Y� r   j ~Y�Y�Y� l  j uY�����Y� c   j uY�Y�Y� n  j sY�Y�Y� I   o s�������� 0 stringvalue stringValue��  ��  Y� o   j o���� 00 prefsmobileminerappkey prefsMobileMinerAppKeyY� m   s t��
�� 
ctxt��  ��  Y� n      Y�Y�Y� 4   z }��Y�
�� 
cobjY� m   { |���� Y� o   u z����  0 myprefsgeneral myPrefsGeneralY� Y���Y� Z   Y�Y�����Y� F    �Y�Y�Y� >   �Y�Y�Y� l   �Y�����Y� c    �Y�Y�Y� n    �Y�Y�Y� 4   � ���Y�
�� 
cobjY� m   � ����� Y� o    �����  0 myprefsgeneral myPrefsGeneralY� m   � ���
�� 
ctxt��  ��  Y� m   � �Y�Y� �Y�Y�  Y� >  � �Y�Y�Y� l  � �Y�����Y� c   � �Y�Y�Y� n   � �Y�Y�Y� 4   � ���Y�
�� 
cobjY� m   � ����� Y� o   � �����  0 myprefsgeneral myPrefsGeneralY� m   � ���
�� 
ctxt��  ��  Y� m   � �Y�Y� �Y�Y�  Y� k   �Y�Y� Y�Y�Y� n  � �Y�Y�Y� I   � �ɿY�ɾɿ 0 setenabled_ setEnabled_Y� Y�ɽY� m   � �ɼ
ɼ boovtrueɽ  ɾ  Y� o   � �ɻɻ 80 prefsmobileminersendstatus prefsMobileMinerSendStatusY� Y�Y�Y� n  � �Y�Y�Y� I   � �ɺY�ɹɺ 0 setenabled_ setEnabled_Y� Y�ɸY� m   � �ɷ
ɷ boovtrueɸ  ɹ  Y� o   � �ɶɶ J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommandsY� Y�Y�Y� l  � �ɵɴɳɵ  ɴ  ɳ  Y� Y�Y�Y� l  � �ɲY�Y�ɲ  Y�   start timers   Y� �Y�Y�    s t a r t   t i m e r sY� Y�Y�Y� Z   � �Y�Y�ɱɰY� =  � �Y�Y�Y� n   � �Y�Y�Y� 4   � �ɯY�
ɯ 
cobjY� m   � �ɮɮ Y� o   � �ɭɭ  0 myprefsgeneral myPrefsGeneralY� m   � �ɬ
ɬ boovtrueY� r   � �Y�Y�Y� n  � �Y�Y�Y� I   � �ɫY�ɪɫ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Y� Y�Y�Y� o   � �ɩɩ F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsIntervalY� Y�Y�Y�  f   � �Y� Y�Y�Y� m   � �Y�Y� �Y�Y� < c h e c k M o b i l e M i n e r R e m o t e C o m m a n d sY� Y�Y�Y� m   � �Y�Y� �Y�Y�  Y� Y�ɨY� m   � �ɧ
ɧ boovfalsɨ  ɪ  Y� n  � �Y�Y�Y� o   � �ɦɦ 0 nstimer NSTimerY� m   � �ɥ
ɥ misccuraY� o      ɤɤ @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimerɱ  ɰ  Y� Y�ɣY� Z   �Y�Y�ɢɡY� =  � �Y�Y�Y� n   � �Y�Y�Y� 4   � �ɠY�
ɠ 
cobjY� m   � �ɟɟ Y� o   � �ɞɞ  0 myprefsgeneral myPrefsGeneralY� m   � �ɝ
ɝ boovtrueY� r   �Y�Y�Y� n  �Y�Y�Y� I   �ɜY�ɛɜ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_Y� Y�Y�Y� o   � �ɚɚ >0 mobileminersendstatusinterval mobileMinerSendStatusIntervalY� Y�Y�Y�  f   � �Y� Y�Y�Y� m   �Y�Y� �Y�Y� . s e n d S t a t u s T o M o b i l e M i n e rY� Y�Y�Y� m  Y�Y� �Z Z   Y� ZəZ m  ɘ
ɘ boovfalsə  ɛ  Y� n  � �ZZZ o   � �ɗɗ 0 nstimer NSTimerZ m   � �ɖ
ɖ misccuraY� o      ɕɕ 80 mobileminersendstatustimer mobileMinerSendStatusTimerɢ  ɡ  ɣ  ��  ��  ��  Y@ ZɔZ I   ɓɒɑɓ *0 requestsavesettings requestSaveSettingsɒ  ɑ  ɔ  Y9 ZZZ l     ɐɏɎɐ  ɏ  Ɏ  Z ZZZ i  ��Z	Z
Z	 I      ɍZɌɍ 00 setprefsscryptthreads_ setPrefsScryptThreads_Z ZɋZ o      ɊɊ 
0 sender  ɋ  Ɍ  Z
 k     %ZZ ZZZ r     ZZZ l    ZɉɈZ c     ZZZ n    	ZZZ I    	ɇɆɅɇ 0 stringvalue stringValueɆ  Ʌ  Z o     ɄɄ ,0 prefslitecointhreads prefsLitecoinThreadsZ m   	 
Ƀ
Ƀ 
ctxtɉ  Ɉ  Z n      ZZZ 4    ɂZ
ɂ 
cobjZ m    ɁɁ Z o    ɀɀ  0 myprefsgeneral myPrefsGeneralZ ZZZ n   ZZZ I    �Z�~� 0 
sethidden_ 
setHidden_Z Z�}Z m    �|
�| boovtrue�}  �~  Z o    �{�{ F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreadsZ Z �zZ  I     %�y�x�w�y *0 requestsavesettings requestSaveSettings�x  �w  �z  Z Z!Z"Z! l     �v�u�t�v  �u  �t  Z" Z#Z$Z# i  ��Z%Z&Z% I      �sZ'�r�s 20 setprefsscryptworksize_ setPrefsScryptWorksize_Z' Z(�qZ( o      �p�p 
0 sender  �q  �r  Z& k     %Z)Z) Z*Z+Z* r     Z,Z-Z, l    Z.�o�nZ. c     Z/Z0Z/ n    	Z1Z2Z1 I    	�m�l�k�m *0 titleofselecteditem titleOfSelectedItem�l  �k  Z2 o     �j�j .0 prefslitecoinworksize prefsLitecoinWorksizeZ0 m   	 
�i
�i 
ctxt�o  �n  Z- n      Z3Z4Z3 4    �hZ5
�h 
cobjZ5 m    �g�g Z4 o    �f�f  0 myprefsgeneral myPrefsGeneralZ+ Z6Z7Z6 n   Z8Z9Z8 I    �eZ:�d�e 0 
sethidden_ 
setHidden_Z: Z;�cZ; m    �b
�b boovtrue�c  �d  Z9 o    �a�a H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksizeZ7 Z<�`Z< I     %�_�^�]�_ *0 requestsavesettings requestSaveSettings�^  �]  �`  Z$ Z=Z>Z= l     �\�[�Z�\  �[  �Z  Z> Z?Z@Z? i   ZAZBZA I      �Y�X�W�Y 40 startgetlitecoinhashrate startGetLitecoinHashrate�X  �W  ZB k     ,ZCZC ZDZEZD I     
�VZF�U�V 0 	killtimer 	killTimerZF ZG�TZG o    �S�S 80 averagescrypthashratetimer averageScryptHashrateTimer�T  �U  ZE ZHZIZH r    ZJZKZJ n   ZLZMZL 4    �RZN
�R 
pclsZN m    ZOZO �ZPZP  N S T i m e rZM m    �Q
�Q misccuraZK o      �P�P 80 averagescrypthashratetimer averageScryptHashrateTimerZI ZQ�OZQ r    ,ZRZSZR n   &ZTZUZT I    &�NZV�M�N �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_ZV ZWZXZW o    �L�L ,0 averagescryptgetwait averageScryptGetWaitZX ZYZZZY  f    ZZ Z[Z\Z[ m     Z]Z] �Z^Z^ 0 g e t A v e r a g e S c r y p t H a s h r a t eZ\ Z_Z`Z_ m     !ZaZa �ZbZb  Z` Zc�KZc m   ! "�J
�J boovfals�K  �M  ZU n   ZdZeZd o    �I�I 0 nstimer NSTimerZe m    �H
�H misccuraZS o      �G�G 80 averagescrypthashratetimer averageScryptHashrateTimer�O  Z@ ZfZgZf l     �F�E�D�F  �E  �D  Zg ZhZiZh i  ZjZkZj I      �CZl�B�C ,0 dockchangeintensity_ dockChangeIntensity_Zl Zm�AZm o      �@�@ 
0 sender  �A  �B  Zk k     jZnZn ZoZpZo r     	ZqZrZq c     ZsZtZs n    ZuZvZu I    �?�>�=�? 	0 title  �>  �=  Zv o     �<�< 
0 sender  Zt m    �;
�; 
ctxtZr o      �:�: 0 thisval thisValZp ZwZxZw Z   
 cZyZz�9Z{Zy =  
 Z|Z}Z| o   
 �8�8 0 thisval thisValZ} m    Z~Z~ �ZZ  A u t oZz l   �7Z�Z��7  Z�   TODO   Z� �Z�Z� 
   T O D O�9  Z{ k    cZ�Z� Z�Z�Z� Z    CZ�Z�Z��6Z� =   Z�Z�Z� o    �5�5 0 currentcoin currentCoinZ� m    Z�Z� �Z�Z�  B i t c o i nZ� r    (Z�Z�Z� o    �4�4 0 thisval thisValZ� n      Z�Z�Z� 4   $ '�3Z�
�3 
cobjZ� m   % &�2�2 Z� o    $�1�1  0 myprefsgeneral myPrefsGeneralZ� Z�Z�Z� =  + 2Z�Z�Z� o   + 0�0�0 0 currentcoin currentCoinZ� m   0 1Z�Z� �Z�Z�  L i t e c o i nZ� Z��/Z� r   5 ?Z�Z�Z� o   5 6�.�. 0 thisval thisValZ� n      Z�Z�Z� 4   ; >�-Z�
�- 
cobjZ� m   < =�,�, Z� o   6 ;�+�+  0 myprefsgeneral myPrefsGeneral�/  �6  Z� Z�Z�Z� Z   D XZ�Z��*�)Z� =  D PZ�Z�Z� l  D NZ��(�'Z� c   D NZ�Z�Z� n   D LZ�Z�Z� 4   I L�&Z�
�& 
cobjZ� m   J K�%�% Z� o   D I�$�$  0 myprefsgeneral myPrefsGeneralZ� m   L M�#
�# 
ctxt�(  �'  Z� m   N OZ�Z� �Z�Z�  1Z� l  S S�"Z�Z��"  Z�   TODO?   Z� �Z�Z�    T O D O ?�*  �)  Z� Z��!Z� r   Y cZ�Z�Z� m   Y Z� �   Z� n      Z�Z�Z� 4   _ b�Z�
� 
cobjZ� m   ` a�� Z� o   Z _��  0 myprefsgeneral myPrefsGeneral�!  Zx Z��Z� I   d j�Z��� 20 changeintensityinternal changeIntensityInternalZ� Z��Z� o   e f�� 0 thisval thisVal�  �  �  Zi Z�Z�Z� l     ����  �  �  Z� Z�Z�Z� i  Z�Z�Z� I      ���� "0 getsystemconfig getSystemConfig�  �  Z� L     Z�Z� c     Z�Z�Z� n    	Z�Z�Z� I    	���� "0 getsystemconfig getSystemConfig�  �  Z� o     �� 0 	apphelper 	AppHelperZ� m   	 
�
� 
listZ� Z�Z�Z� l     ���
�  �  �
  Z� Z�Z�Z� i  Z�Z�Z� I      �	Z���	 H0 "checkbetterscryptsettingsonserver_ "checkBetterScryptSettingsOnServer_Z� Z��Z� o      �� 
0 sender  �  �  Z� k    RZ�Z� Z�Z�Z� l     ����  �  �  Z� Z�Z�Z� n    
Z�Z�Z� I    
�Z��� 0 
sethidden_ 
setHidden_Z� Z�� Z� m    ��
�� boovtrue�   �  Z� o     ���� F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreadsZ� Z�Z�Z� n   Z�Z�Z� I    ��Z����� 0 
sethidden_ 
setHidden_Z� Z���Z� m    ��
�� boovtrue��  ��  Z� o    ���� H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksizeZ� Z�Z�Z� l   ��������  ��  ��  Z� Z�Z�Z� Z    @Z�Z�����Z� =   Z�Z�Z� o    ���� &0 avgscrypthashrate avgScryptHashrateZ� m    ����  Z� k     <Z�Z� Z�Z�Z� Z     9Z�Z�����Z� >    #Z�Z�Z� o     !���� 
0 sender  Z� m   ! "Z�Z� �Z�Z�  Z� I   & 5��Z����� 
0 msglog  Z� Z�Z�Z� b   ' 0Z�Z�Z� b   ' .Z�Z�Z� m   ' (Z�Z� �Z�Z� � Y o u   h a v e n ' t   b e e n   m i n i n g   l o g   e n o u g h   y e t   t o   g e t   a   s t a b l e   a v e r a g e   h a s h r a t e .     T r y   m i n i n g   f o r   a t   l e a s t  Z� o   ( -���� ,0 averagescryptgetwait averageScryptGetWaitZ� m   . /Z�Z� �Z�Z� .   s e c o n d s   a n d   t r y   a g a i n .Z� Z���Z� m   0 1Z�Z� �Z�Z� 
 a l e r t��  ��  ��  ��  Z� Z���Z� L   : <����  ��  ��  ��  Z� Z�Z�Z� l  A A��������  ��  ��  Z� Z�Z�Z� r   A HZ�Z�Z� I   A F�������� "0 getsystemconfig getSystemConfig��  ��  Z� o      ���� 0 
mycomputer 
myComputerZ� [ [[  l  I I��������  ��  ��  [ [[[ r   I i[[[ b   I g[[[ b   I e[[	[ b   I _[
[[
 b   I ][[[ b   I X[[[ b   I V[[[ b   I Q[[[ b   I O[[[ m   I J[[ �[[ p c u r l   " h t t p : / / w w w . a s t e r o i d a p p . c o m / g e t s c r y p t . p h p ? M a c O S v e r =[ n   J N[[[ 4   K N��[
�� 
cobj[ m   L M���� [ o   J K���� 0 
mycomputer 
myComputer[ m   O P[[ �[[ 
 & G P U =[ n   Q U[[[ 4   R U��[
�� 
cobj[ m   S T���� [ o   Q R���� 0 
mycomputer 
myComputer[ m   V W[ [  �[![!  & G P U m e m =[ n   X \["[#[" 4   Y \��[$
�� 
cobj[$ m   Z [���� [# o   X Y���� 0 
mycomputer 
myComputer[ m   ] ^[%[% �[&[&   & S c r y p t H a s h r a t e =[	 o   _ d���� &0 avgscrypthashrate avgScryptHashrate[ m   e f['[' �[([(  "[ o      ���� 0 thiscmd thisCmd[ [)[*[) l  j j��������  ��  ��  [* [+[,[+ r   j q[-[.[- I  j o��[/��
�� .sysoexecTEXT���     TEXT[/ o   j k���� 0 thiscmd thisCmd��  [. o      ���� 0 replystring replyString[, [0[1[0 l  r r��������  ��  ��  [1 [2[3[2 Z   r �[4[5��[6[4 G   r �[7[8[7 G   r }[9[:[9 =  r u[;[<[; o   r s���� 0 replystring replyString[< m   s t����  [: =  x {[=[>[= o   x y���� 0 replystring replyString[> m   y z[?[? �[@[@  0[8 =  � �[A[B[A o   � ����� 0 replystring replyString[B m   � �[C[C �[D[D  [5 k   � �[E[E [F[G[F l  � ���[H[I��  [H A ; no better settings exist (or none have been submitted yet)   [I �[J[J v   n o   b e t t e r   s e t t i n g s   e x i s t   ( o r   n o n e   h a v e   b e e n   s u b m i t t e d   y e t )[G [K[L[K I   � ���[M���� 
0 msglog  [M [N[O[N m   � �[P[P �[Q[Q � C h e c k e d   A s t e r o i d   w e b s i t e   f o r   b e t t e r   s c r y p t   v a l u e s   f o r   t h i s   c o m p u t e r   b u t   n o n e   f o u n d[O [R��[R m   � �[S[S �[T[T  n o t i c e��  ��  [L [U��[U L   � �ȿȿ  ��  ��  [6 I   � �Ⱦ[VȽȾ 
0 msglog  [V [W[X[W b   � �[Y[Z[Y m   � �[[[[ �[\[\ x R e c e i v e d   t h e   f o l l o w i n g   r e s p o n s e   f o r   o p t i m a l   s c r y p t   r e q u e s t :  [Z o   � �ȼȼ 0 replystring replyString[X []Ȼ[] m   � �[^[^ �[_[_  n o t i c eȻ  Ƚ  [3 [`[a[` l  � �ȺȹȸȺ  ȹ  ȸ  [a [b[c[b r   � �[d[e[d I   � �ȷ[fȶȷ 0 splitstring splitString[f [g[h[g o   � �ȵȵ 0 replystring replyString[h [iȴ[i m   � �[j[j �[k[k  |ȴ  ȶ  [e o      ȳȳ 0 
thisconfig 
thisConfig[c [l[m[l l  � �ȲȱȰȲ  ȱ  Ȱ  [m [n[o[n Z   � �[p[qȯȮ[p =  � �[r[s[r l  � �[tȭȬ[t c   � �[u[v[u n   � �[w[x[w 4   � �ȫ[y
ȫ 
cobj[y m   � �ȪȪ [x o   � �ȩȩ 0 
thisconfig 
thisConfig[v m   � �Ȩ
Ȩ 
ctxtȭ  Ȭ  [s m   � �[z[z �[{[{  0[q k   � �[|[| [}[~[} l  � �ȧ[[�ȧ  [ X R check for the "Automatic" setting, which is reported by the Asteroid website as 0   [� �[�[� �   c h e c k   f o r   t h e   " A u t o m a t i c "   s e t t i n g ,   w h i c h   i s   r e p o r t e d   b y   t h e   A s t e r o i d   w e b s i t e   a s   0[~ [�Ȧ[� r   � �[�[�[� m   � �[�[� �[�[�  [� n      [�[�[� 4   � �ȥ[�
ȥ 
cobj[� m   � �ȤȤ [� o   � �ȣȣ 0 
thisconfig 
thisConfigȦ  ȯ  Ȯ  [o [�[�[� l  � �ȢȡȠȢ  ȡ  Ƞ  [� [�[�[� Z   � �[�[�ȟȞ[� =  � �[�[�[� l  � �[�ȝȜ[� c   � �[�[�[� n   � �[�[�[� 4   � �ț[�
ț 
cobj[� m   � �ȚȚ [� o   � �șș 0 
thisconfig 
thisConfig[� m   � �Ș
Ș 
ctxtȝ  Ȝ  [� m   � �[�[� �[�[�  0[� k   � �[�[� [�[�[� l  � �ȗ[�[�ȗ  [� X R check for the "Automatic" setting, which is reported by the Asteroid website as 0   [� �[�[� �   c h e c k   f o r   t h e   " A u t o m a t i c "   s e t t i n g ,   w h i c h   i s   r e p o r t e d   b y   t h e   A s t e r o i d   w e b s i t e   a s   0[� [�Ȗ[� r   � �[�[�[� m   � �[�[� �[�[�  [� n      [�[�[� 4   � �ȕ[�
ȕ 
cobj[� m   � �ȔȔ [� o   � �ȓȓ 0 
thisconfig 
thisConfigȖ  ȟ  Ȟ  [� [�[�[� l  � �ȒȑȐȒ  ȑ  Ȑ  [� [�[�[� Z   �=[�[�ȏȎ[� =  �[�[�[� l  � �[�ȍȌ[� c   � �[�[�[� n   � �[�[�[� 4   � �ȋ[�
ȋ 
cobj[� m   � �ȊȊ [� o   � �ȉȉ 0 
thisconfig 
thisConfig[� m   � �Ȉ
Ȉ 
ctxtȍ  Ȍ  [� l  �[�ȇȆ[� c   �[�[�[� n   � �[�[�[� 4   � �ȅ[�
ȅ 
cobj[� m   � �ȄȄ [� o   � �ȃȃ  0 myprefsgeneral myPrefsGeneral[� m   �Ȃ
Ȃ 
ctxtȇ  Ȇ  [� k  9[�[� [�[�[� n ![�[�[� I  !ȁ[�Ȁȁ 0 settextcolor_ setTextColor_[� [��[� n [�[�[� I  �~[��}�~ T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_[� [�[�[� m  �|�|  [� [�[�[� m  [�[� ?�333333[� [�[�[� m  �{�{  [� [��z[� m  �y�y �z  �}  [� o  �x�x 0 nscolor NSColor�  Ȁ  [� o  �w�w F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads[� [�[�[� n ",[�[�[� I  ',�v[��u�v 0 
sethidden_ 
setHidden_[� [��t[� m  '(�s
�s boovfals�t  �u  [� o  "'�r�r F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads[� [��q[� n -9[�[�[� I  29�p[��o�p "0 setstringvalue_ setStringValue_[� [��n[� m  25[�[� �[�[� . N o   c h a n g e s   t o   r e c o m m e n d�n  �o  [� o  -2�m�m F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads�q  ȏ  Ȏ  [� [�[�[� l >>�l�k�j�l  �k  �j  [� [�[�[� Z  >�[�[��i�h[� = >U[�[�[� l >F[��g�f[� c  >F[�[�[� n  >B[�[�[� 4  ?B�e[�
�e 
cobj[� m  @A�d�d [� o  >?�c�c 0 
thisconfig 
thisConfig[� m  BE�b
�b 
ctxt�g  �f  [� l FT[��a�`[� c  FT[�[�[� n  FP[�[�[� 4  KP�_[�
�_ 
cobj[� m  LO�^�^ [� o  FK�]�]  0 myprefsgeneral myPrefsGeneral[� m  PS�\
�\ 
ctxt�a  �`  [� k  X�[�[� [�[�[� n Xr[�[�[� I  ]r�[[��Z�[ 0 settextcolor_ setTextColor_[� [��Y[� n ]n[�[�[� I  bn�X[��W�X T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_[� [�[�[� m  bc�V�V  [� [�[�[� m  cf[�[� ?�333333[� [�[�[� m  fg�U�U  [� \ �T\  m  gh�S�S �T  �W  [� o  ]b�R�R 0 nscolor NSColor�Y  �Z  [� o  X]�Q�Q H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize[� \\\ n s}\\\ I  x}�P\�O�P 0 
sethidden_ 
setHidden_\ \�N\ m  xy�M
�M boovfals�N  �O  \ o  sx�L�L H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize\ \�K\ n ~�\\	\ I  ���J\
�I�J "0 setstringvalue_ setStringValue_\
 \�H\ m  ��\\ �\\ . N o   c h a n g e s   t o   r e c o m m e n d�H  �I  \	 o  ~��G�G H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize�K  �i  �h  [� \\\ l ���F�E�D�F  �E  �D  \ \\\ Z  ��\\�C�B\ F  ��\\\ = ��\\\ l ��\�A�@\ c  ��\\\ n  ��\\\ 4  ���?\
�? 
cobj\ m  ���>�> \ o  ���=�= 0 
thisconfig 
thisConfig\ m  ���<
�< 
ctxt�A  �@  \ l ��\�;�:\ c  ��\\ \ n  ��\!\"\! 4  ���9\#
�9 
cobj\# m  ���8�8 \" o  ���7�7  0 myprefsgeneral myPrefsGeneral\  m  ���6
�6 
ctxt�;  �:  \ = ��\$\%\$ l ��\&�5�4\& c  ��\'\(\' n  ��\)\*\) 4  ���3\+
�3 
cobj\+ m  ���2�2 \* o  ���1�1 0 
thisconfig 
thisConfig\( m  ���0
�0 
ctxt�5  �4  \% l ��\,�/�.\, c  ��\-\.\- n  ��\/\0\/ 4  ���-\1
�- 
cobj\1 m  ���,�, \0 o  ���+�+  0 myprefsgeneral myPrefsGeneral\. m  ���*
�* 
ctxt�/  �.  \ k  ��\2\2 \3\4\3 l ���)\5\6�)  \5 [ U nothing to recommend, we're probably just using a lower intensity than everyone else   \6 �\7\7 �   n o t h i n g   t o   r e c o m m e n d ,   w e ' r e   p r o b a b l y   j u s t   u s i n g   a   l o w e r   i n t e n s i t y   t h a n   e v e r y o n e   e l s e\4 \8�(\8 L  ���'�'  �(  �C  �B  \ \9\:\9 l ���&�%�$�&  �%  �$  \: \;\<\; Z  �P\=\>�#�"\= ? ��\?\@\? n  ��\A\B\A 4  ���!\C
�! 
cobj\C m  ��� �  \B o  ���� 0 
thisconfig 
thisConfig\@ l ��\D��\D ]  ��\E\F\E l ��\G��\G c  ��\H\I\H o  ���� &0 avgscrypthashrate avgScryptHashrate\I m  ���
� 
doub�  �  \F l ��\J��\J c  ��\K\L\K o  ���� .0 betterscryptthreshold betterScryptThreshold\L m  ���
� 
doub�  �  �  �  \> k  �L\M\M \N\O\N l ���\P\Q�  \P ' ! suggest to user the new settings   \Q �\R\R B   s u g g e s t   t o   u s e r   t h e   n e w   s e t t i n g s\O \S\T\S l ���\U\V�  \U Z T if prefs window is open and litecoin display is on, then silently update the fields   \V �\W\W �   i f   p r e f s   w i n d o w   i s   o p e n   a n d   l i t e c o i n   d i s p l a y   i s   o n ,   t h e n   s i l e n t l y   u p d a t e   t h e   f i e l d s\T \X\Y\X l ���\Z\[�  \Z O I otherwise alert and ask user if they would like to update their settings   \[ �\\\\ �   o t h e r w i s e   a l e r t   a n d   a s k   u s e r   i f   t h e y   w o u l d   l i k e   t o   u p d a t e   t h e i r   s e t t i n g s\Y \]\^\] l ������  �  �  \^ \_\`\_ Z  �R\a\b��\a > ��\c\d\c l ��\e��\e c  ��\f\g\f n  ��\h\i\h 4  ���
\j
�
 
cobj\j m  ���	�	 \i o  ���� 0 
thisconfig 
thisConfig\g m  ���
� 
ctxt�  �  \d l ��\k��\k c  ��\l\m\l n  ��\n\o\n 4  ���\p
� 
cobj\p m  ���� \o o  ����  0 myprefsgeneral myPrefsGeneral\m m  ���
� 
ctxt�  �  \b k  N\q\q \r\s\r n \t\u\t I  � \v���  0 settextcolor_ setTextColor_\v \w��\w n \x\y\x o  ���� 0 redcolor redColor\y o  ���� 0 nscolor NSColor��  ��  \u o  ���� F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads\s \z\{\z n \|\}\| I  ��\~���� 0 
sethidden_ 
setHidden_\~ \��\ m  ��
�� boovfals��  ��  \} o  ���� F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads\{ \���\� Z  N\�\���\�\� = '\�\�\� n  #\�\�\� 4   #��\�
�� 
cobj\� m  !"���� \� o   ���� 0 
thisconfig 
thisConfig\� m  #&\�\� �\�\�  \� n *6\�\�\� I  /6��\����� "0 setstringvalue_ setStringValue_\� \���\� m  /2\�\� �\�\� ( R e c o m m e n d :   A u t o m a t i c��  ��  \� o  */���� F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads��  \� n 9N\�\�\� I  >N��\����� "0 setstringvalue_ setStringValue_\� \���\� b  >J\�\�\� m  >A\�\� �\�\�  R e c o m m e n d :  \� l AI\�����\� c  AI\�\�\� n  AE\�\�\� 4  BE��\�
�� 
cobj\� m  CD���� \� o  AB���� 0 
thisconfig 
thisConfig\� m  EH��
�� 
ctxt��  ��  ��  ��  \� o  9>���� F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads��  �  �  \` \�\�\� l SS��������  ��  ��  \� \�\�\� Z  S�\�\�����\� > Sj\�\�\� l S[\�����\� c  S[\�\�\� n  SW\�\�\� 4  TW��\�
�� 
cobj\� m  UV���� \� o  ST���� 0 
thisconfig 
thisConfig\� m  WZ��
�� 
ctxt��  ��  \� l [i\�����\� c  [i\�\�\� n  [e\�\�\� 4  `e��\�
�� 
cobj\� m  ad���� \� o  [`����  0 myprefsgeneral myPrefsGeneral\� m  eh��
�� 
ctxt��  ��  \� k  m�\�\� \�\�\� n m\�\�\� I  r��\����� 0 settextcolor_ setTextColor_\� \���\� n r{\�\�\� o  w{���� 0 redcolor redColor\� o  rw���� 0 nscolor NSColor��  ��  \� o  mr���� H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize\� \�\�\� n ��\�\�\� I  ����\����� 0 
sethidden_ 
setHidden_\� \���\� m  ����
�� boovfals��  ��  \� o  ������ H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize\� \���\� Z  ��\�\���\�\� = ��\�\�\� n  ��\�\�\� 4  ����\�
�� 
cobj\� m  ������ \� o  ������ 0 
thisconfig 
thisConfig\� m  ��\�\� �\�\�  \� n ��\�\�\� I  ����\����� "0 setstringvalue_ setStringValue_\� \�ǿ\� m  ��\�\� �\�\� ( R e c o m m e n d :   A u t o m a t i cǿ  ��  \� o  ��ǾǾ H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize��  \� n ��\�\�\� I  ��ǽ\�Ǽǽ "0 setstringvalue_ setStringValue_\� \�ǻ\� b  ��\�\�\� m  ��\�\� �\�\�  R e c o m m e n d :  \� l ��\�Ǻǹ\� c  ��\�\�\� n  ��\�\�\� 4  ��Ǹ\�
Ǹ 
cobj\� m  ��ǷǷ \� o  ��ǶǶ 0 
thisconfig 
thisConfig\� m  ��ǵ
ǵ 
ctxtǺ  ǹ  ǻ  Ǽ  \� o  ��ǴǴ H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize��  ��  ��  \� \�\�\� l ��ǳǲǱǳ  ǲ  Ǳ  \� \�ǰ\� Z  �L\�\�ǯǮ\� F  ��\�\�\� > ��\�\�\� o  ��ǭǭ $0 currentprefpanel currentPrefPanel\� m  ��ǬǬ \� l ��\�ǫǪ\� = ��\�\�\� n ��\�\�\� I  ��ǩǨǧǩ 0 	isvisible 	isVisibleǨ  ǧ  \� o  ��ǦǦ 0 prefswindow prefsWindow\� m  ��ǥ
ǥ boovfalsǫ  Ǫ  \� k  �H\�\� \�\�\� r  �"\�\�\� I � Ǥ\�\�
Ǥ .sysodlogaskr        TEXT\� b  �\�\�\� b  �\�\�\� b  ��\�\�\� b  ��\�\�\� c  ��\�\�\� b  ��] ]]  m  ��]] �]] � T h e   A s t e r o i d   c o m m u n i t y   h a s   f o u n d   b e t t e r   s c r y p t   ( L i t e c o i n )   s e t t i n g s   f o r   y o u r   h a r d w a r e ,   r e s u l t i n g   i n   a  ] I  ��ǣ]Ǣǣ 0 roundnumber roundNumber] ]]] ]  ��]]] l ��]	ǡǠ]	 ^  ��]
]]
 l ��]ǟǞ] n  ��]]] 4  ��ǝ]
ǝ 
cobj] m  ��ǜǜ ] o  ��ǛǛ 0 
thisconfig 
thisConfigǟ  Ǟ  ] o  ��ǚǚ &0 avgscrypthashrate avgScryptHashrateǡ  Ǡ  ] m  ��ǙǙ d] ]ǘ] m  ��ǗǗ  ǘ  Ǣ  \� m  ��ǖ
ǖ 
ctxt\� m  ��]] �]] f %   i n c r e a s e   i n   h a s h r a t e s   o v e r   y o u r   c u r r e n t   s e t t i n g s .\� o  ��Ǖ
Ǖ 
ret \� o  � ǔ
ǔ 
ret \� m  ]] �]] l W o u l d   y o u   l i k e   t o   r e v i e w   t h e   n e w   r e c o m m e n d e d   s e t t i n g s ?\� Ǔ]]
Ǔ 
disp] m  ǒ
ǒ stic   ] Ǒ]]
Ǒ 
btns] J  ]] ]]] m  ]] �]]  N o   t h a n k s] ]ǐ] m  ]] �] ]    R e v i e w   s e t t i n g s &ǐ  ] Ǐ]!ǎ
Ǐ 
dflt]! m  ǍǍ ǎ  \� o      ǌǌ 0 	theresult 	theResult\� ]"ǋ]" Z  #H]#]$Ǌ]%]# = #,]&]']& n  #(](])]( 1  $(ǉ
ǉ 
bhit]) o  #$ǈǈ 0 	theresult 	theResult]' m  (+]*]* �]+]+   R e v i e w   s e t t i n g s &]$ k  /D],], ]-].]- l //Ǉ]/]0Ǉ  ]/   show Litecoin prefs pane   ]0 �]1]1 2   s h o w   L i t e c o i n   p r e f s   p a n e]. ]2]3]2 n /;]4]5]4 I  4;ǆ]6ǅǆ .0 makekeyandorderfront_ makeKeyAndOrderFront_]6 ]7Ǆ]7 m  47]8]8 �]9]9  Ǆ  ǅ  ]5 o  /4ǃǃ 0 prefswindow prefsWindow]3 ]:ǂ]: I  <Dǁ];ǀǁ (0 prefsshowlitecoin_ prefsShowLitecoin_]; ]<�]< m  =@]=]= �]>]>  �  ǀ  ǂ  Ǌ  ]% l GG�~]?]@�~  ]?   do nuttin!   ]@ �]A]A    d o   n u t t i n !ǋ  ǯ  Ǯ  ǰ  �#  �"  \< ]B�}]B l QQ�|�{�z�|  �{  �z  �}  Z� ]C]D]C l     �y�x�w�y  �x  �w  ]D ]E]F]E i  ]G]H]G I      �v�u�t�v 60 sendaveragescrypthashrate sendAverageScryptHashrate�u  �t  ]H k     h]I]I ]J]K]J l     �s�r�q�s  �r  �q  ]K ]L]M]L I     �p]N�o�p 
0 msglog  ]N ]O]P]O m    ]Q]Q �]R]R � S e n d i n g   s c r y p t   s e t t i n g s   a n d   h a s h r a t e   t o   t h e   A s t e r o i d   w e b s i t e   s o   o t h e r   u s e r s   m a y   b e n e f i t]P ]S�n]S m    ]T]T �]U]U  n o t i c e�n  �o  ]M ]V]W]V l   �m�l�k�m  �l  �k  ]W ]X]Y]X r    ]Z][]Z I    �j�i�h�j "0 getsystemconfig getSystemConfig�i  �h  ][ o      �g�g 0 
mycomputer 
myComputer]Y ]\]]]\ l   �f�e�d�f  �e  �d  ]] ]^]_]^ l   �c]`]a�c  ]`   EXPECTED VALUES:   ]a �]b]b "   E X P E C T E D   V A L U E S :]_ ]c]d]c l   �b]e]f�b  ]e  	 MacOSver   ]f �]g]g    M a c O S v e r]d ]h]i]h l   �a]j]k�a  ]j 
  GPU   ]k �]l]l    G P U]i ]m]n]m l   �`]o]p�`  ]o   GPUmem   ]p �]q]q    G P U m e m]n ]r]s]r l   �_]t]u�_  ]t   ScryptHashrate   ]u �]v]v    S c r y p t H a s h r a t e]s ]w]x]w l   �^]y]z�^  ]y   ScryptThreads   ]z �]{]{    S c r y p t T h r e a d s]x ]|]}]| l   �]]~]�]  ]~   ScryptWorksize   ] �]�]�    S c r y p t W o r k s i z e]} ]�]�]� l   �\�[�Z�\  �[  �Z  ]� ]�]�]� l   �Y]�]��Y  ]� E ? send my hashrate and computer settings to PHP script on server   ]� �]�]� ~   s e n d   m y   h a s h r a t e   a n d   c o m p u t e r   s e t t i n g s   t o   P H P   s c r i p t   o n   s e r v e r]� ]�]�]� Q    f]�]�]�]� k    S]�]� ]�]�]� r    M]�]�]� b    K]�]�]� b    I]�]�]� b    >]�]�]� b    <]�]�]� b    1]�]�]� b    /]�]�]� b    )]�]�]� b    ']�]�]� b    "]�]�]� b     ]�]�]� b    ]�]�]� b    ]�]�]� m    ]�]� �]�]� t c u r l   " h t t p : / / w w w . a s t e r o i d a p p . c o m / s t o r e s c r y p t . p h p ? M a c O S v e r =]� n    ]�]�]� 4    �X]�
�X 
cobj]� m    �W�W ]� o    �V�V 0 
mycomputer 
myComputer]� m    ]�]� �]�]� 
 & G P U =]� n    ]�]�]� 4    �U]�
�U 
cobj]� m    �T�T ]� o    �S�S 0 
mycomputer 
myComputer]� m     !]�]� �]�]�  & G P U m e m =]� n   " &]�]�]� 4   # &�R]�
�R 
cobj]� m   $ %�Q�Q ]� o   " #�P�P 0 
mycomputer 
myComputer]� m   ' (]�]� �]�]�   & S c r y p t H a s h r a t e =]� o   ) .�O�O &0 avgscrypthashrate avgScryptHashrate]� m   / 0]�]� �]�]�  & S c r y p t T h r e a d s =]� l  1 ;]��N�M]� c   1 ;]�]�]� n   1 9]�]�]� 4   6 9�L]�
�L 
cobj]� m   7 8�K�K ]� o   1 6�J�J  0 myprefsgeneral myPrefsGeneral]� m   9 :�I
�I 
ctxt�N  �M  ]� m   < =]�]� �]�]�   & S c r y p t W o r k s i z e =]� l  > H]��H�G]� c   > H]�]�]� n   > F]�]�]� 4   C F�F]�
�F 
cobj]� m   D E�E�E ]� o   > C�D�D  0 myprefsgeneral myPrefsGeneral]� m   F G�C
�C 
ctxt�H  �G  ]� m   I J]�]� �]�]�  "]� o      �B�B 0 thecmd theCmd]� ]��A]� I  N S�@]��?
�@ .sysoexecTEXT���     TEXT]� o   N O�>�> 0 thecmd theCmd�?  �A  ]� R      �=�<�;
�= .ascrerr ****      � ****�<  �;  ]� I   [ f�:]��9�: 
0 msglog  ]� ]�]�]� m   \ _]�]� �]�]� ^ E r r o r   w h e n   s u b m i t t i n g   s c r y p t   h a s h r a t e   t o   s e r v e r]� ]��8]� m   _ b]�]� �]�]�  n o t i c e�8  �9  ]� ]��7]� l  g g�6�5�4�6  �5  �4  �7  ]F ]�]�]� l     �3�2�1�3  �2  �1  ]� ]�]�]� i  ]�]�]� I      �0�/�.�0 40 getaveragescrypthashrate getAverageScryptHashrate�/  �.  ]� k     �]�]� ]�]�]� l     �-�,�+�-  �,  �+  ]� ]�]�]� l     �*]�]��*  ]� �  due to a current bug in the cgminer API, we have to read the average hashrate from the logfile instead of from the API itself.   ]� �]�]� �   d u e   t o   a   c u r r e n t   b u g   i n   t h e   c g m i n e r   A P I ,   w e   h a v e   t o   r e a d   t h e   a v e r a g e   h a s h r a t e   f r o m   t h e   l o g f i l e   i n s t e a d   o f   f r o m   t h e   A P I   i t s e l f .]� ]�]�]� l     �)�(�'�)  �(  �'  ]� ]�]�]� r     ]�]�]� I    �&]��%
�& .sysoexecTEXT���     TEXT]� b     ]�]�]� b     ]�]�]� b     ]�]�]� m     ]�]� �]�]�  t a i l   - n   2 0   "]� o    �$�$  0 tempfolderpath tempFolderPath]� o    �#�# 0 minerlogfile minerLogFile]� m    ]�]� �]�]� > "   |   g r e p   " ( a v g ) "   |   g r e p   - v   g r e p�%  ]� o      �"�" 0 logtail logTail]� ]�]�]� l   �!� ��!  �   �  ]� ]�]�]� l   �]�]��  ]� F @ (5s):5.267K (avg):6.061Kh/s | A:0  R:0  HW:0  U:0.0/m  WU:7.7/m   ]� �]�]� �   ( 5 s ) : 5 . 2 6 7 K   ( a v g ) : 6 . 0 6 1 K h / s   |   A : 0     R : 0     H W : 0     U : 0 . 0 / m     W U : 7 . 7 / m]� ]�]�]� Q    L^ ^^^  k    A^^ ^^^ r    (^^^ n    &^^	^ 4   # &�^

� 
cobj^
 m   $ %�� ^	 I    #�^�� 0 splitstring splitString^ ^^^ n    ^^^ 4   �^
� 
cpar^ m    ����^ o    �� 0 logtail logTail^ ^�^ m    ^^ �^^  :�  �  ^ o      �� 0 	ahashrate 	aHashRate^ ^^^ r   ) 5^^^ n   ) 3^^^ 4   0 3�^
� 
cobj^ m   1 2�� ^ I   ) 0�^�� 0 splitstring splitString^ ^^^ o   * +�� 0 	ahashrate 	aHashRate^ ^�^ m   + ,^^ �^ ^   K�  �  ^ o      �� 0 	ahashrate 	aHashRate^ ^!^"^! r   6 ;^#^$^# c   6 9^%^&^% o   6 7�� 0 	ahashrate 	aHashRate^& m   7 8�
� 
doub^$ o      �� 0 	ahashrate 	aHashRate^" ^'�
^' r   < A^(^)^( ^   < ?^*^+^* o   < =�	�	 0 	ahashrate 	aHashRate^+ m   = >���^) o      �� 0 	ahashrate 	aHashRate�
  ^ R      ���
� .ascrerr ****      � ****�  �  ^ r   I L^,^-^, m   I J��  ^- o      �� 0 	ahashrate 	aHashRate]� ^.^/^. l  M M�� ���  �   ��  ^/ ^0^1^0 r   M T^2^3^2 o   M N���� 0 	ahashrate 	aHashRate^3 o      ���� &0 avgscrypthashrate avgScryptHashrate^1 ^4^5^4 r   U c^6^7^6 o   U Z���� &0 avgscrypthashrate avgScryptHashrate^7 n      ^8^9^8 4   _ b��^:
�� 
cobj^: m   ` a���� ^9 o   Z _����  0 myprefsgeneral myPrefsGeneral^5 ^;^<^; l  d d��������  ��  ��  ^< ^=^>^= Z   d �^?^@����^? G   d }^A^B^A =  d n^C^D^C n   d l^E^F^E 4   i l��^G
�� 
cobj^G m   j k���� ^F o   d i����  0 myprefsgeneral myPrefsGeneral^D m   l m���� ^B =  q {^H^I^H n   q y^J^K^J 4   v y��^L
�� 
cobj^L m   w x���� ^K o   q v����  0 myprefsgeneral myPrefsGeneral^I m   y z^M^M �^N^N  1^@ I   � ��������� 60 sendaveragescrypthashrate sendAverageScryptHashrate��  ��  ��  ��  ^> ^O^P^O l  � ���������  ��  ��  ^P ^Q^R^Q Z   � �^S^T����^S G   � �^U^V^U =  � �^W^X^W n   � �^Y^Z^Y 4   � ���^[
�� 
cobj^[ m   � ����� ^Z o   � �����  0 myprefsgeneral myPrefsGeneral^X m   � ����� ^V =  � �^\^]^\ n   � �^^^_^^ 4   � ���^`
�� 
cobj^` m   � ����� ^_ o   � �����  0 myprefsgeneral myPrefsGeneral^] m   � �^a^a �^b^b  1^T I   � ���^c���� H0 "checkbetterscryptsettingsonserver_ "checkBetterScryptSettingsOnServer_^c ^d��^d m   � �^e^e �^f^f  ��  ��  ��  ��  ^R ^g^h^g l  � ���������  ��  ��  ^h ^i^j^i I   � ���^k���� 0 	killtimer 	killTimer^k ^l��^l o   � ����� 80 averagescrypthashratetimer averageScryptHashrateTimer��  ��  ^j ^m^n^m r   � �^o^p^o n  � �^q^r^q 4   � ���^s
�� 
pcls^s m   � �^t^t �^u^u  N S T i m e r^r m   � ���
�� misccura^p o      ���� 80 averagescrypthashratetimer averageScryptHashrateTimer^n ^v��^v l  � ���������  ��  ��  ��  ]� ^w^x^w l     ��������  ��  ��  ^x ^y^z^y i  ^{^|^{ I      ��^}���� 0 splitstring splitString^} ^~^^~ o      ���� 0 sometext someText^ ^���^� o      ���� 0 	delimiter  ��  ��  ^| k     ^�^� ^�^�^� r     ^�^�^� c     ^�^�^� o     ���� 0 sometext someText^� m    ��
�� 
ctxt^� o      ���� 0 sometext someText^� ^�^�^� r    ^�^�^� c    	^�^�^� o    ���� 0 	delimiter  ^� m    ��
�� 
ctxt^� o      ƿƿ 0 	delimiter  ^� ^�ƾ^� L    ^�^� c    ^�^�^� n   ^�^�^� I    ƽ^�Ƽƽ 0 splitstring__ splitString__^� ^�^�^� o    ƻƻ 0 sometext someText^� ^�ƺ^� o    ƹƹ 0 	delimiter  ƺ  Ƽ  ^� o    ƸƸ 0 	apphelper 	AppHelper^� m    Ʒ
Ʒ 
listƾ  ^z ^�^�^� l     ƶƵƴƶ  Ƶ  ƴ  ^� ^�^�^� i  ^�^�^� I      Ƴ^�ƲƳ 0 replacetext replaceText^� ^�^�^� o      ƱƱ 0 	thestring 	theString^� ^�^�^� o      ưư 0 fstring fString^� ^�Ư^� o      ƮƮ 0 rstring rStringƯ  Ʋ  ^� L     ^�^� c     ^�^�^� n    ^�^�^� I    ƭ^�Ƭƭ  0 replacetext___ replaceText___^� ^�^�^� o    ƫƫ 0 	thestring 	theString^� ^�^�^� o    ƪƪ 0 fstring fString^� ^�Ʃ^� o    ƨƨ 0 rstring rStringƩ  Ƭ  ^� o     ƧƧ 0 	apphelper 	AppHelper^� m    Ʀ
Ʀ 
ctxt^� ^�^�^� l     ƥƤƣƥ  Ƥ  ƣ  ^� ^�^�^� i   #^�^�^� I      Ƣ^�ơƢ 
0 msglog  ^� ^�^�^� o      ƠƠ 0 msg  ^� ^�Ɵ^� o      ƞƞ 	0 level  Ɵ  ơ  ^� k     �^�^� ^�^�^� r     ^�^�^� [     ^�^�^� o     ƝƝ 0 	msglognum 	msgLogNum^� m    ƜƜ ^� o      ƛƛ 0 	msglognum 	msgLogNum^� ^�^�^� r    ^�^�^� I   ƚƙƘ
ƚ .misccurdldt    ��� nullƙ  Ƙ  ^� o      ƗƗ 0 	timestamp  ^� ^�^�^� l   ƖƕƔƖ  ƕ  Ɣ  ^� ^�^�^� Z    {^�^�^�Ɠ^� =   ^�^�^� o    ƒƒ 	0 level  ^� m    ^�^� �^�^�  c r i t i c a l^� r    ,^�^�^� J    %^�^� ^�^�^� o    !ƑƑ 0 	msglognum 	msgLogNum^� ^�^�^� o   ! "ƐƐ 0 	timestamp  ^� ^�Ə^� o   " #ƎƎ 0 msg  Ə  ^� n      ^�^�^�  ;   * +^� o   % *ƍƍ "0 msglogcriticals msgLogCriticals^� ^�^�^� =  / 2^�^�^� o   / 0ƌƌ 	0 level  ^� m   0 1^�^� �^�^�  w a r n i n g^� ^�^�^� r   5 E^�^�^� J   5 >^�^� ^�^�^� o   5 :ƋƋ 0 	msglognum 	msgLogNum^� ^�^�^� o   : ;ƊƊ 0 	timestamp  ^� ^�Ɖ^� o   ; <ƈƈ 0 msg  Ɖ  ^� n      ^�^�^�  ;   C D^� o   > CƇƇ  0 msglogwarnings msgLogWarnings^� ^�^�^� =  H K^�^�^� o   H IƆƆ 	0 level  ^� m   I J^�^� �^�^�  n o t i c e^� ^�^�^� r   N ^^�^�^� J   N W^�^� ^�^�^� o   N Sƅƅ 0 	msglognum 	msgLogNum^� ^�^�^� o   S TƄƄ 0 	timestamp  ^� ^�ƃ^� o   T UƂƂ 0 msg  ƃ  ^� n      ^�^�^�  ;   \ ]^� o   W \ƁƁ 0 msglognotices msgLogNotices^� ^�^�^� =  a d^�_ ^� o   a bƀƀ 	0 level  _  m   b c__ �__ 
 a l e r t^� _�_ r   g w___ J   g p__ ___ o   g l�~�~ 0 	msglognum 	msgLogNum_ _	_
_	 o   l m�}�} 0 	timestamp  _
 _�|_ o   m n�{�{ 0 msg  �|  _ n      ___  ;   u v_ o   p u�z�z 0 msglogalerts msgLogAlerts�  Ɠ  ^� ___ l  | |�y�x�w�y  �x  �w  _ ___ Z   | �__�v�u_ =  | ___ o   | }�t�t 	0 level  _ m   } ~__ �__ 
 a l e r t_ k   � �__ ___ r   � �___ I  � ��s__
�s .sysodlogaskr        TEXT_ b   � �__ _ o   � ��r�r 0 msg  _  m   � �_!_! �_"_" 
 
 I f   y o u   c o n s i d e r   t h i s   m e s s a g e   t o   b e   i n   e r r o r   o r   w o u l d   l i k e   t o   r e p o r t   i t ,   p l e a s e   c l i c k   " S u b m i t   F e e d b a c k "   a n d   i n c l u d e   a n y   a d d i t i o n a l   d e t a i l s ._ �q_#_$
�q 
disp_# m   � ��p
�p stic   _$ �o_%_&
�o 
btns_% J   � �_'_' _(_)_( m   � �_*_* �_+_+  S u b m i t   f e e d b a c k_) _,�n_, m   � �_-_- �_._.  O k a y�n  _& �m_/�l
�m 
dflt_/ m   � ��k�k �l  _ o      �j�j 0 	thebutton 	theButton_ _0_1_0 r   � �_2_3_2 n   � �_4_5_4 1   � ��i
�i 
bhit_5 o   � ��h�h 0 	thebutton 	theButton_3 o      �g�g 0 	thebutton 	theButton_1 _6�f_6 Z   � �_7_8�e�d_7 =  � �_9_:_9 o   � ��c�c 0 	thebutton 	theButton_: m   � �_;_; �_<_<  S u b m i t   f e e d b a c k_8 I   � ��b_=�a�b *0 openfeedbackwindow_ openFeedbackWindow__= _>�`_> m   � �_?_? �_@_@  �`  �a  �e  �d  �f  �v  �u  _ _A_B_A l  � ��_�^�]�_  �^  �]  _B _C_D_C l  � ��\_E_F�\  _E   send to console   _F �_G_G     s e n d   t o   c o n s o l e_D _H�[_H I  � ��Z_I�Y
�Z .ascrcmnt****      � ****_I b   � �_J_K_J b   � �_L_M_L o   � ��X�X 	0 level  _M m   � �_N_N �_O_O  :  _K o   � ��W�W 0 msg  �Y  �[  ^� _P_Q_P l     �V�U�T�V  �U  �T  _Q _R_S_R i  $'_T_U_T I      �S_V�R�S 0 msglog__  _V _W_X_W o      �Q�Q 0 msg  _X _Y�P_Y o      �O�O 	0 level  �P  �R  _U k     _Z_Z _[_\_[ r     _]_^_] c     ___`__ o     �N�N 0 msg  _` m    �M
�M 
ctxt_^ o      �L�L 0 msg  _\ _a_b_a r    _c_d_c c    	_e_f_e o    �K�K 	0 level  _f m    �J
�J 
ctxt_d o      �I�I 	0 level  _b _g_h_g l   �H�G�F�H  �G  �F  _h _i_j_i I    �E_k�D�E 
0 msglog  _k _l_m_l o    �C�C 0 msg  _m _n�B_n o    �A�A 	0 level  �B  �D  _j _o�@_o l   �?�>�=�?  �>  �=  �@  _S _p_q_p l     �<�;�:�<  �;  �:  _q _r_s_r i  (+_t_u_t I      �9_v�8�9 0 roundnumber roundNumber_v _w_x_w o      �7�7 0 thenum theNum_x _y�6_y o      �5�5 0 	decplaces 	decPlaces�6  �8  _u L     _z_z c     _{_|_{ l    _}�4�3_} n    _~__~ I    �2_��1�2 0 roundnumber__ roundNumber___� _�_�_� o    �0�0 0 thenum theNum_� _��/_� o    �.�. 0 	decplaces 	decPlaces�/  �1  _ o     �-�- 0 	apphelper 	AppHelper�4  �3  _| m    �,
�, 
doub_s _�_�_� l     �+�*�)�+  �*  �)  _� _�_�_� i  ,/_�_�_� I      �(_��'�( $0 openprefswindow_ openPrefsWindow__� _��&_� o      �%�% 
0 sender  �&  �'  _� k    _�_� _�_�_� l     �$_�_��$  _� + % populate the UI for the prefs window   _� �_�_� J   p o p u l a t e   t h e   U I   f o r   t h e   p r e f s   w i n d o w_� _�_�_� l    	_�_�_�_� n    	_�_�_� I    	�#�"�!�#  0 removeallitems removeAllItems�"  �!  _� o     � �  00 prefsdonateminsoptions prefsDonateMinsOptions_� = 7 get rid of the default "Item 1", "Item 2" and "Item 3"   _� �_�_� n   g e t   r i d   o f   t h e   d e f a u l t   " I t e m   1 " ,   " I t e m   2 "   a n d   " I t e m   3 "_� _�_�_� n  
 _�_�_� I    �_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m    _�_� �_�_�  0�  �  _� o   
 �� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n   _�_�_� I    �_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m    _�_� �_�_�  1�  �  _� o    �� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n    *_�_�_� I   % *�_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m   % &_�_� �_�_�  2�  �  _� o     %�� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  + 5_�_�_� I   0 5�_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m   0 1_�_� �_�_�  3�  �  _� o   + 0�� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  6 @_�_�_� I   ; @�_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m   ; <_�_� �_�_�  5�  �  _� o   6 ;�� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  A K_�_�_� I   F K�_��
� &0 additemwithtitle_ addItemWithTitle__� _��	_� m   F G_�_� �_�_�  1 0�	  �
  _� o   A F�� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  L V_�_�_� I   Q V�_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m   Q R_�_� �_�_�  1 5�  �  _� o   L Q�� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  W a_�_�_� I   \ a�_��� &0 additemwithtitle_ addItemWithTitle__� _��_� m   \ ]_�_� �_�_�  2 0�  �  _� o   W \� �  00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  b l_�_�_� I   g l��_����� &0 additemwithtitle_ addItemWithTitle__� _���_� m   g h_�_� �_�_�  3 0��  ��  _� o   b g���� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  m w_�_�_� I   r w��_����� &0 additemwithtitle_ addItemWithTitle__� _���_� m   r s_�_� �_�_�  4 5��  ��  _� o   m r���� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� n  x �_�_�_� I   } ���_����� &0 additemwithtitle_ addItemWithTitle__� _���_� m   } ~_�_� �_�_�  6 0��  ��  _� o   x }���� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�_�_� l  � ���������  ��  ��  _� _�_�_� n  � �_�_�_� I   � ���_����� ,0 selectitemwithtitle_ selectItemWithTitle__� _���_� c   � �_�_�_� n   � �_�_�_� 4   � ���_�
�� 
cobj_� m   � ����� _� o   � �����  0 myprefsgeneral myPrefsGeneral_� m   � ���
�� 
ctxt��  ��  _� o   � ����� 00 prefsdonateminsoptions prefsDonateMinsOptions_� _�` _� n  � �``` I   � ���`���� 0 setintvalue_ setIntValue_` `��` c   � �``` n   � �``` 4   � ���`	
�� 
cobj`	 m   � ����� ` o   � �����  0 myprefsgeneral myPrefsGeneral` m   � ���
�� 
long��  ��  ` o   � ����� (0 prefsdonateperhour prefsDonatePerHour`  `
``
 l  � ���������  ��  ��  ` ``` Z   � �``����` >  � �``` n   � �``` 4   � ���`
�� 
cobj` m   � ����� ` o   � �����  0 myprefsgeneral myPrefsGeneral` m   � �`` �``  ` n  � �``` I   � ���`���� "0 setstringvalue_ setStringValue_` `��` n   � �``` 4   � ���`
�� 
cobj` m   � ����� ` o   � �����  0 myprefsgeneral myPrefsGeneral��  ��  ` o   � ����� $0 prefscoinmonitor prefsCoinMonitor��  ��  ` ``` l  � ���������  ��  ��  ` ` `!`  I   � ���`"���� ,0 updatedonateperhours updateDonatePerHours`" `#��`# m   � ���
�� boovfals��  ��  `! `$`%`$ l  � ���������  ��  ��  `% `&`'`& n  � �`(`)`( I   � ���`*���� 0 setintvalue_ setIntValue_`* `+��`+ c   � �`,`-`, n   � �`.`/`. 4   � ���`0
�� 
cobj`0 m   � ����� 	`/ o   � �����  0 myprefsgeneral myPrefsGeneral`- m   � ���
�� 
long��  ��  `) o   � ����� $0 prefsbadgetoggle prefsBadgeToggle`' `1`2`1 n  �`3`4`3 I   �ſ`5žſ 0 setintvalue_ setIntValue_`5 `6Ž`6 c   �
`7`8`7 n   �`9`:`9 4  ż`;
ż 
cobj`; m  ŻŻ `: o   �źź  0 myprefsgeneral myPrefsGeneral`8 m  	Ź
Ź 
longŽ  ž  `4 o   � �ŸŸ .0 prefsdisablegputoggle prefsDisableGPUToggle`2 `<`=`< l ŷŶŵŷ  Ŷ  ŵ  `= `>`?`> l Ŵ`@`AŴ  `@ ; 5 prefsToolbar's setSelectedItemIdentifier_("General")   `A �`B`B j   p r e f s T o o l b a r ' s   s e t S e l e c t e d I t e m I d e n t i f i e r _ ( " G e n e r a l " )`? `C`D`C l ųŲűų  Ų  ű  `D `E`F`E l Ű`G`HŰ  `G   open the window   `H �`I`I     o p e n   t h e   w i n d o w`F `Jů`J n `K`L`K I  Ů`MŭŮ .0 makekeyandorderfront_ makeKeyAndOrderFront_`M `NŬ`N  f  Ŭ  ŭ  `L o  ūū 0 prefswindow prefsWindowů  _� `O`P`O l     ŪũŨŪ  ũ  Ũ  `P `Q`R`Q i  03`S`T`S I      ŧŦťŧ "0 createdebugfile createDebugFileŦ  ť  `T k    9`U`U `V`W`V r     `X`Y`X c     `Z`[`Z b     `\`]`\ o     ŤŤ  0 tempfolderpath tempFolderPath`] o    
ţţ ,0 asteroiddebuglogfile AsteroidDebugLogFile`[ m    Ţ
Ţ 
ctxt`Y o      šš 0 thisfile thisFile`W `^`_`^ r    ```a`` m    `b`b �`c`c  `a o      ŠŠ 0 thismsg thisMsg`_ `d`e`d r    `f`g`f m    şş `g o      ŞŞ 0 	localerts 	locAlerts`e `h`i`h r    `j`k`j m    ŝŝ `k o      ŜŜ 0 loccriticals locCriticals`i `l`m`l r    `n`o`n m    śś `o o      ŚŚ 0 locwarnings locWarnings`m `p`q`p r     #`r`s`r m     !řř `s o      ŘŘ 0 
locnotices 
locNotices`q `t`u`t Y   $�`vŗ`w`xŖ`v k   2�`y`y `z`{`z l  2 2ŕŔœŕ  Ŕ  œ  `{ `|`}`| Y   2 �`~Œ``�ő`~ Z   E �`�`�`�Ő`� =  E R`�`�`� n   E P`�`�`� 4   M Pŏ`�
ŏ 
cobj`� m   N OŎŎ `� l  E M`�ōŌ`� n   E M`�`�`� 4   J Mŋ`�
ŋ 
cobj`� o   K LŊŊ 0 y  `� o   E Jŉŉ 0 msglogalerts msgLogAlertsō  Ō  `� o   P Qňň 0 x  `� k   U �`�`� `�`�`� r   U x`�`�`� b   U v`�`�`� b   U t`�`�`� b   U f`�`�`� b   U d`�`�`� o   U VŇŇ 0 thismsg thisMsg`� n   V c`�`�`� 1   a cņ
ņ 
tstr`� l  V a`�Ņń`� n   V a`�`�`� 4   ^ aŃ`�
Ń 
cobj`� m   _ `łł `� l  V ^`�Łŀ`� n   V ^`�`�`� 4   [ ^�`�
� 
cobj`� o   \ ]�~�~ 0 y  `� o   V [�}�} 0 msglogalerts msgLogAlertsŁ  ŀ  Ņ  ń  `� m   d e`�`� �`�`�      A l e r t :  `� l  f s`��|�{`� c   f s`�`�`� n   f q`�`�`� 4   n q�z`�
�z 
cobj`� m   o p�y�y `� l  f n`��x�w`� n   f n`�`�`� 4   k n�v`�
�v 
cobj`� o   l m�u�u 0 y  `� o   f k�t�t 0 msglogalerts msgLogAlerts�x  �w  `� m   q r�s
�s 
ctxt�|  �{  `� m   t u`�`� �`�`�  
`� o      �r�r 0 thismsg thisMsg`� `�`�`� r   y ~`�`�`� [   y |`�`�`� o   y z�q�q 0 	localerts 	locAlerts`� m   z {�p�p `� o      �o�o 0 	localerts 	locAlerts`� `��n`�  S    ��n  `� `�`�`� ?  � �`�`�`� o   � ��m�m 0 x  `� n   � �`�`�`� 4   � ��l`�
�l 
cobj`� m   � ��k�k `� l  � �`��j�i`� n   � �`�`�`� 4   � ��h`�
�h 
cobj`� o   � ��g�g 0 y  `� o   � ��f�f 0 msglogalerts msgLogAlerts�j  �i  `� `��e`� k   � �`�`� `�`�`� r   � �`�`�`� [   � �`�`�`� o   � ��d�d 0 y  `� m   � ��c�c `� o      �b�b 0 	localerts 	locAlerts`� `��a`�  S   � ��a  �e  Ő  Œ 0 y  ` o   5 6�`�` 0 	localerts 	locAlerts`� n   6 @`�`�`� m   = ?�_
�_ 
nmbr`� n  6 =`�`�`� 2  ; =�^
�^ 
cobj`� o   6 ;�]�] 0 msglogalerts msgLogAlertső  `} `�`�`� l  � ��\�[�Z�\  �[  �Z  `� `�`�`� Y   �`��Y`�`��X`� Z   �`�`�`��W`� =  � �`�`�`� n   � �`�`�`� 4   � ��V`�
�V 
cobj`� m   � ��U�U `� l  � �`��T�S`� n   � �`�`�`� 4   � ��R`�
�R 
cobj`� o   � ��Q�Q 0 y  `� o   � ��P�P "0 msglogcriticals msgLogCriticals�T  �S  `� o   � ��O�O 0 x  `� k   � �`�`� `�`�`� r   � �`�`�`� b   � �`�`�`� b   � �`�`�`� b   � �`�`�`� b   � �`�`�`� o   � ��N�N 0 thismsg thisMsg`� n   � �`�`�`� 1   � ��M
�M 
tstr`� l  � �`��L�K`� n   � �`�`�`� 4   � ��J`�
�J 
cobj`� m   � ��I�I `� l  � �`��H�G`� n   � �`�`�`� 4   � ��F`�
�F 
cobj`� o   � ��E�E 0 y  `� o   � ��D�D "0 msglogcriticals msgLogCriticals�H  �G  �L  �K  `� m   � �`�`� �`�`�      C r i t i c a l :  `� l  � �`��C�B`� c   � �`�`�`� n   � �a aa  4   � ��Aa
�A 
cobja m   � ��@�@ a l  � �a�?�>a n   � �aaa 4   � ��=a
�= 
cobja o   � ��<�< 0 y  a o   � ��;�; "0 msglogcriticals msgLogCriticals�?  �>  `� m   � ��:
�: 
ctxt�C  �B  `� m   � �aa �aa  
`� o      �9�9 0 thismsg thisMsg`� a	a
a	 r   � �aaa [   � �aaa o   � ��8�8 0 loccriticals locCriticalsa m   � ��7�7 a o      �6�6 0 loccriticals locCriticalsa
 a�5a  S   � ��5  `� aaa ?  �aaa o   � ��4�4 0 x  a n   �aaa 4   ��3a
�3 
cobja m   � �2�2 a l  � �a�1�0a n   � �aaa 4   � ��/a
�/ 
cobja o   � ��.�. 0 y  a o   � ��-�- "0 msglogcriticals msgLogCriticals�1  �0  a a�,a k  aa aaa r  
aa a [  a!a"a! o  �+�+ 0 y  a" m  �*�* a  o      �)�) 0 loccriticals locCriticalsa a#�(a#  S  �(  �,  �W  �Y 0 y  `� o   � ��'�' 0 loccriticals locCriticals`� n   � �a$a%a$ m   � ��&
�& 
nmbra% n  � �a&a'a& 2  � ��%
�% 
cobja' o   � ��$�$ "0 msglogcriticals msgLogCriticals�X  `� a(a)a( l �#�"�!�#  �"  �!  a) a*a+a* Y  �a,� a-a.�a, Z  )�a/a0a1�a/ = )6a2a3a2 n  )4a4a5a4 4  14�a6
� 
cobja6 m  23�� a5 l )1a7��a7 n  )1a8a9a8 4  .1�a:
� 
cobja: o  /0�� 0 y  a9 o  ).��  0 msglogwarnings msgLogWarnings�  �  a3 o  45�� 0 x  a0 k  9da;a; a<a=a< r  9\a>a?a> b  9Za@aAa@ b  9XaBaCaB b  9JaDaEaD b  9HaFaGaF o  9:�� 0 thismsg thisMsgaG n  :GaHaIaH 1  EG�
� 
tstraI l :EaJ��aJ n  :EaKaLaK 4  BE�aM
� 
cobjaM m  CD�� aL l :BaN��aN n  :BaOaPaO 4  ?B�aQ
� 
cobjaQ o  @A�� 0 y  aP o  :?��  0 msglogwarnings msgLogWarnings�  �  �  �  aE m  HIaRaR �aSaS      W a r n i n g :  aC l JWaT�
�	aT c  JWaUaVaU n  JUaWaXaW 4  RU�aY
� 
cobjaY m  ST�� aX l JRaZ��aZ n  JRa[a\a[ 4  OR�a]
� 
cobja] o  PQ�� 0 y  a\ o  JO��  0 msglogwarnings msgLogWarnings�  �  aV m  UV�
� 
ctxt�
  �	  aA m  XYa^a^ �a_a_  
a? o      � �  0 thismsg thisMsga= a`aaa` r  ]babacab [  ]`adaead o  ]^���� 0 locwarnings locWarningsae m  ^_���� ac o      ���� 0 locwarnings locWarningsaa af��af  S  cd��  a1 agahag ? gtaiajai o  gh���� 0 x  aj n  hsakalak 4  ps��am
�� 
cobjam m  qr���� al l hpan����an n  hpaoapao 4  mp��aq
�� 
cobjaq o  no���� 0 y  ap o  hm����  0 msglogwarnings msgLogWarnings��  ��  ah ar��ar k  w~asas atauat r  w|avawav [  wzaxayax o  wx���� 0 y  ay m  xy���� aw o      ���� 0 locwarnings locWarningsau az��az  S  }~��  ��  �  �  0 y  a- o  ���� 0 locwarnings locWarningsa. n  $a{a|a{ m  !#��
�� 
nmbra| n !a}a~a} 2 !��
�� 
cobja~ o  ����  0 msglogwarnings msgLogWarnings�  a+ a��a Y  ��a���a�a���a� Z  ��a�a�a���a� = ��a�a�a� n  ��a�a�a� 4  ����a�
�� 
cobja� m  ������ a� l ��a�����a� n  ��a�a�a� 4  ����a�
�� 
cobja� o  ������ 0 y  a� o  ������ 0 msglognotices msgLogNotices��  ��  a� o  ������ 0 x  a� k  ��a�a� a�a�a� r  ��a�a�a� b  ��a�a�a� b  ��a�a�a� b  ��a�a�a� b  ��a�a�a� o  ������ 0 thismsg thisMsga� n  ��a�a�a� 1  ����
�� 
tstra� l ��a�����a� n  ��a�a�a� 4  ����a�
�� 
cobja� m  ������ a� l ��a�����a� n  ��a�a�a� 4  ����a�
�� 
cobja� o  ������ 0 y  a� o  ������ 0 msglognotices msgLogNotices��  ��  ��  ��  a� m  ��a�a� �a�a�      N o t i c e :  a� l ��a�����a� c  ��a�a�a� n  ��a�a�a� 4  ����a�
�� 
cobja� m  ������ a� l ��a�����a� n  ��a�a�a� 4  ����a�
�� 
cobja� o  ������ 0 y  a� o  ������ 0 msglognotices msgLogNotices��  ��  a� m  ����
�� 
ctxt��  ��  a� m  ��a�a� �a�a�  
a� o      ���� 0 thismsg thisMsga� a�a�a� r  ��a�a�a� [  ��a�a�a� o  ������ 0 
locnotices 
locNoticesa� m  ������ a� o      ���� 0 
locnotices 
locNoticesa� a���a�  S  ����  a� a�a�a� ? ��a�a�a� o  ������ 0 x  a� n  ��a�a�a� 4  ����a�
�� 
cobja� m  ������ a� l ��a�����a� n  ��a�a�a� 4  ��Ŀa�
Ŀ 
cobja� o  ��ľľ 0 y  a� o  ��ĽĽ 0 msglognotices msgLogNotices��  ��  a� a�ļa� k  ��a�a� a�a�a� r  ��a�a�a� [  ��a�a�a� o  ��ĻĻ 0 y  a� m  ��ĺĺ a� o      ĹĹ 0 
locnotices 
locNoticesa� a�ĸa�  S  ��ĸ  ļ  ��  �� 0 y  a� o  ��ķķ 0 
locnotices 
locNoticesa� n  ��a�a�a� m  ��Ķ
Ķ 
nmbra� n ��a�a�a� 2 ��ĵ
ĵ 
cobja� o  ��ĴĴ 0 msglognotices msgLogNotices��  ��  ŗ 0 x  `w m   ' (ĳĳ `x o   ( -ĲĲ 0 	msglognum 	msgLogNumŖ  `u a�a�a� l ��ıİįı  İ  į  a� a�a�a� r  �a�a�a� l �a�Įĭa� b  �a�a�a� l �a�Ĭīa� I �Īa�a�
Ī .earsffdralis        afdra� m  � ĩ
ĩ afdrtempa� Ĩa�a�
Ĩ 
froma� m  ħ
ħ fldmfldua� Ħa�ĥ
Ħ 
rtypa� m  Ĥ
Ĥ 
ctxtĥ  Ĭ  ī  a� o  ģģ ,0 asteroiddebuglogfile AsteroidDebugLogFileĮ  ĭ  a� o      ĢĢ 0 thislog thisLoga� a�a�a� l ġa�a�ġ  a� 	 try   a� �a�a�  t r ya� a�a�a� r  'a�a�a� l %a�Ġğa� I %Ğa�a�
Ğ .rdwropenshor       filea� n a�a�a� 4  ĝa�
ĝ 
filea� o  ĜĜ 0 thislog thisLoga� m  ě
ě misccuraa� Ěa�ę
Ě 
perma� m   !Ę
Ę boovtrueę  Ġ  ğ  a� o      ėė 0 filereference fileReferencea� a�a�a� I (1Ėa�a�
Ė .rdwrwritnull���     ****a� o  ()ĕĕ 0 thismsg thisMsga� Ĕa�ē
Ĕ 
refna� o  ,-ĒĒ 0 filereference fileReferenceē  a� a�a�a� I 27đa�Đ
đ .rdwrclosnull���     ****a� o  23ďď 0 filereference fileReferenceĐ  a� a�a�a� l 88Ďa�a�Ď  a�  on error   a� �a�a�  o n   e r r o ra� a�b a� l 88čbbč  b 
 	try   b �bb  	 t r yb  bbb l 88ČbbČ  b ' !		close access file fileReference   b �bb B 	 	 c l o s e   a c c e s s   f i l e   f i l e R e f e r e n c eb b	b
b	 l 88ċbbċ  b  	end try   b �bb  	 e n d   t r yb
 bbb l 88ĊbbĊ  b  end try   b �bb  e n d   t r yb bĉb l 88ĈćĆĈ  ć  Ć  ĉ  `R bbb l     ąĄăą  Ą  ă  b bbb i  47bbb I      ĂbāĂ *0 openfeedbackwindow_ openFeedbackWindow_b bĀb o      �� 
0 sender  Ā  ā  b k     3bb bbb I     �~b�}�~ 
0 msglog  b b b!b  I    	�|b"�{�| 0 sendcommand sendCommandb" b#b$b# m    b%b% �b&b&  d e v d e t a i l sb$ b'b(b' m    b)b) �b*b*  b( b+�zb+ m    �y
�y boovfals�z  �{  b! b,�xb, m   	 
b-b- �b.b.  c r i t i c a l�x  �}  b b/b0b/ n   "b1b2b1 I    "�wb3�v�w "0 setstringvalue_ setStringValue_b3 b4�ub4 c    b5b6b5 n    b7b8b7 4    �tb9
�t 
cobjb9 m    �s�s 
b8 o    �r�r  0 myprefsgeneral myPrefsGeneralb6 m    �q
�q 
ctxt�u  �v  b2 o    �p�p 0 feedbackemail feedBackEmailb0 b:b;b: I  # (�o�n�m
�o .miscactvnull��� ��� null�n  �m  b; b<�lb< n  ) 3b=b>b= I   . 3�kb?�j�k .0 makekeyandorderfront_ makeKeyAndOrderFront_b? b@�ib@  f   . /�i  �j  b> o   ) .�h�h  0 feedbackwindow feedbackWindow�l  b bAbBbA l     �g�f�e�g  �f  �e  bB bCbDbC i  8;bEbFbE I      �dbG�c�d  0 viewdebugfile_ viewDebugFile_bG bH�bbH o      �a�a 
0 sender  �b  �c  bF k     �bIbI bJbKbJ I     �`�_�^�` "0 createdebugfile createDebugFile�_  �^  bK bLbMbL I    �]bN�\�]  0 cleandebugfile cleanDebugFilebN bO�[bO n    bPbQbP 1    �Z
�Z 
psxpbQ l   bR�Y�XbR b    bSbTbS l   bU�W�VbU I   �UbVbW
�U .earsffdralis        afdrbV m    �T
�T afdrtempbW �SbXbY
�S 
frombX m   	 
�R
�R fldmfldubY �QbZ�P
�Q 
rtypbZ m    �O
�O 
ctxt�P  �W  �V  bT o    �N�N ,0 asteroiddebuglogfile AsteroidDebugLogFile�Y  �X  �[  �\  bM b[b\b[ I    3�Mb]�L�M  0 cleandebugfile cleanDebugFileb] b^�Kb^ n    /b_b`b_ 1   - /�J
�J 
psxpb` l   -ba�I�Hba b    -bbbcbb l   'bd�G�Fbd I   '�Ebebf
�E .earsffdralis        afdrbe m    �D
�D afdrtempbf �Cbgbh
�C 
frombg m     !�B
�B fldmfldubh �Abi�@
�A 
rtypbi m   " #�?
�? 
ctxt�@  �G  �F  bc o   ' ,�>�> 0 minerlogfile minerLogFile�I  �H  �K  �L  b\ bjbkbj Q   4 ]blbm�=bl O  7 Tbnbobn I  ; S�<bp�;
�< .aevtodocnull  �    alisbp c   ; Obqbrbq 4   ; M�:bs
�: 
filebs l  = Lbt�9�8bt b   = Lbubvbu l  = Fbw�7�6bw I  = F�5bxby
�5 .earsffdralis        afdrbx m   = >�4
�4 afdrtempby �3bzb{
�3 
frombz m   ? @�2
�2 fldmfldub{ �1b|�0
�1 
rtypb| m   A B�/
�/ 
ctxt�0  �7  �6  bv o   F K�.�. ,0 asteroiddebuglogfile AsteroidDebugLogFile�9  �8  br m   M N�-
�- 
alis�;  bo m   7 8b}b}�                                                                                  MACS  alis    x  Macintosh SSD              �xv(H+  �D
Finder.app                                                     	�C���l        ����  	                CoreServices    �xؘ      ��P�    �D�A�@  7Macintosh SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��  bm R      �,�+�*
�, .ascrerr ****      � ****�+  �*  �=  bk b~�)b~ Q   ^ �bb��(b O  a ~b�b�b� I  e }�'b��&
�' .aevtodocnull  �    alisb� c   e yb�b�b� 4   e w�%b�
�% 
fileb� l  g vb��$�#b� b   g vb�b�b� l  g pb��"�!b� I  g p� b�b�
�  .earsffdralis        afdrb� m   g h�
� afdrtempb� �b�b�
� 
fromb� m   i j�
� fldmfldub� �b��
� 
rtypb� m   k l�
� 
ctxt�  �"  �!  b� o   p u�� 0 minerlogfile minerLogFile�$  �#  b� m   w x�
� 
alis�&  b� m   a bb�b��                                                                                  MACS  alis    x  Macintosh SSD              �xv(H+  �D
Finder.app                                                     	�C���l        ����  	                CoreServices    �xؘ      ��P�    �D�A�@  7Macintosh SSD:System: Library: CoreServices: Finder.app    
 F i n d e r . a p p    M a c i n t o s h   S S D  &System/Library/CoreServices/Finder.app  / ��  b� R      ���
� .ascrerr ****      � ****�  �  �(  �)  bD b�b�b� l     ����  �  �  b� b�b�b� i  <?b�b�b� I      �b���  0 cleandebugfile cleanDebugFileb� b��b� o      �� 0 thisfile thisFile�  �  b� L     b�b� c     b�b�b� n    
b�b�b� I    
�b��� "0 cleandebugfile_ cleanDebugFile_b� b��b� o    �
�
 0 thisfile thisFile�  �  b� o     �	�	 0 	apphelper 	AppHelperb� m   
 �
� 
ctxtb� b�b�b� l     ����  �  �  b� b�b�b� i  @Cb�b�b� I      �b��� 0 htmlify  b� b�b�b� o      �� 0 	this_text  b� b�b�b� o      �� 0 encode_url_a encode_URL_Ab� b�� b� o      ���� 0 encode_url_b encode_URL_B�   �  b� L     b�b� c     b�b�b� n    b�b�b� I    ��b����� 0 
htmlify___  b� b�b�b� o    ���� 0 	this_text  b� b�b�b� o    ���� 0 encode_url_a encode_URL_Ab� b���b� o    ���� 0 encode_url_b encode_URL_B��  ��  b� o     ���� 0 	apphelper 	AppHelperb� m    ��
�� 
ctxtb� b�b�b� l     ��������  ��  ��  b� b�b�b� i  DGb�b�b� I      ��b����� 0 writetofile writeToFileb� b�b�b� o      ���� 0 	this_data  b� b�b�b� o      ���� 0 target_file  b� b���b� o      ���� 0 append_data  ��  ��  b� l    b�b�b�b� L     b�b� c     b�b�b� n    b�b�b� I    ��b�����  0 writetofile___ writeToFile___b� b�b�b� o    ���� 0 	this_data  b� b�b�b� o    ���� 0 target_file  b� b���b� o    ���� 0 append_data  ��  ��  b� o     ���� 0 	apphelper 	AppHelperb� m    ��
�� 
boolb� - ' (string, file path as string, boolean)   b� �b�b� N   ( s t r i n g ,   f i l e   p a t h   a s   s t r i n g ,   b o o l e a n )b� b�b�b� l     ��������  ��  ��  b� b�b�b� i  HKb�b�b� I      ��b����� &0 openminerconsole_ openMinerConsole_b� b���b� o      ���� 
0 sender  ��  ��  b� k     �b�b� b�b�b� r     b�b�b� b     b�b�b� o     ����  0 tempfolderpath tempFolderPathb� o    
���� 0 minerlogfile minerLogFileb� o      ���� 0 thefile theFileb� b�b�b� r    +b�b�b� I   )��b���
�� .sysoexecTEXT���     TEXTb� b    %b�b�b� b    #b�b�b� b    b�b�b� b    b�b�b� b    b�b�b� m    b�b� �b�b�  t a i l   - n  b� o    ���� 20 minerconsolelinestoshow minerConsoleLinesToShowb� m    b�b� �b�b�    "b� o    ����  0 tempfolderpath tempFolderPathb� o    "���� 0 minerlogfile minerLogFileb� m   # $b�b� �b�b�  "��  b� o      ���� 0 minerlog minerLogb� b�b�b� n  , 6b�b�b� I   1 6��b����� 0 
setstring_ 
setString_b� b���b� o   1 2���� 0 minerlog minerLog��  ��  b� o   , 1���� $0 minerconsoletext minerConsoleTextb� b�b�b� n  7 Fb�b�b� I   < F��c ���� .0 scrollrangetovisible_ scrollRangeToVisible_c  c��c J   < Bcc ccc n   < ?ccc 1   = ?��
�� 
lengc o   < =���� 0 minerlog minerLogc c��c m   ? @����  ��  ��  ��  b� o   7 <���� $0 minerconsoletext minerConsoleTextb� cc	c n  G Qc
cc
 I   L Q��c���� .0 makekeyandorderfront_ makeKeyAndOrderFront_c c��c  f   L M��  ��  c o   G L���� (0 minerconsolewindow minerConsoleWindowc	 ccc I  R W������
�� .miscactvnull��� ��� null��  ��  c c��c Z   X �cc��cc =  X _ccc o   X ]ÿÿ 0 minerrunning minerRunningc m   ] ^þ
þ boovtruec k   b tcc ccc l  b býccý  c } w update only every 5s, since that is the interval used by the miner after it's up and running (though it is adjustable)   c �cc �   u p d a t e   o n l y   e v e r y   5 s ,   s i n c e   t h a t   i s   t h e   i n t e r v a l   u s e d   b y   t h e   m i n e r   a f t e r   i t ' s   u p   a n d   r u n n i n g   ( t h o u g h   i t   i s   a d j u s t a b l e )c cüc r   b tccc n  b ncc c I   e nûc!úû �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_c! c"c#c" m   e fùù c# c$c%c$  f   f gc% c&c'c& m   g hc(c( �c)c) $ u p d a t e M i n e r C o n s o l ec' c*c+c* m   h ic,c, �c-c-  c+ c.øc. m   i j÷
÷ boovfalsø  ú  c  n  b ec/c0c/ o   c eöö 0 nstimer NSTimerc0 m   b cõ
õ misccurac o      ôô 0 minerlogtimer minerLogTimerü  ��  c k   w �c1c1 c2c3c2 l  w wóc4c5ó  c4 8 2 update more frequently until the miner is running   c5 �c6c6 d   u p d a t e   m o r e   f r e q u e n t l y   u n t i l   t h e   m i n e r   i s   r u n n i n gc3 c7òc7 r   w �c8c9c8 n  w �c:c;c: I   z �ñc<ðñ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_c< c=c>c= m   z {c?c? ?�      c> c@cAc@  f   { |cA cBcCcB m   | cDcD �cEcE $ u p d a t e M i n e r C o n s o l ecC cFcGcF m    �cHcH �cIcI  cG cJïcJ m   � �î
î boovfalsï  ð  c; n  w zcKcLcK o   x zíí 0 nstimer NSTimercL m   w xì
ì misccurac9 o      ëë 0 minerlogtimer minerLogTimerò  ��  b� cMcNcM l     êéèê  é  è  cN cOcPcO i  LOcQcRcQ I      çæåç (0 updateminerconsole updateMinerConsoleæ  å  cR k    cScS cTcUcT Z     cVcWäãcV =    cXcYcX n    	cZc[cZ I    	âáàâ 0 	isvisible 	isVisibleá  à  c[ o     ßß (0 minerconsolewindow minerConsoleWindowcY m   	 
Þ
Þ boovfalscW k    c\c\ c]c^c] l   Ýc_c`Ý  c_   stop updating it   c` �caca "   s t o p   u p d a t i n g   i tc^ cbÜcb L    ÛÛ  Ü  ä  ã  cU cccdcc l   ÚÙØÚ  Ù  Ø  cd cecfce r    "cgchcg b     cicjci o    ××  0 tempfolderpath tempFolderPathcj o    ÖÖ 0 minerlogfile minerLogFilech o      ÕÕ 0 thefile theFilecf ckclck r   # @cmcncm I  # >ÔcoÓ
Ô .sysoexecTEXT���     TEXTco b   # :cpcqcp b   # 8crcscr b   # 2ctcuct b   # ,cvcwcv b   # *cxcycx m   # $czcz �c{c{  t a i l   - n  cy o   $ )ÒÒ 20 minerconsolelinestoshow minerConsoleLinesToShowcw m   * +c|c| �c}c}    "cu o   , 1ÑÑ  0 tempfolderpath tempFolderPathcs o   2 7ÐÐ 0 minerlogfile minerLogFilecq m   8 9c~c~ �cc  "Ó  cn o      ÏÏ 0 minerlog minerLogcl c�c�c� l  A AÎÍÌÎ  Í  Ì  c� c�c�c� r   A Jc�c�c� n  A Hc�c�c� o   F HËË 0 visiblerect visibleRectc� o   A FÊÊ $0 minerconsoletext minerConsoleTextc� o      ÉÉ  0 thevisiblerect theVisibleRectc� c�c�c� r   K Tc�c�c� n  K Rc�c�c� o   P RÈÈ 
0 bounds  c� o   K PÇÇ $0 minerconsoletext minerConsoleTextc� o      ÆÆ 0 	thebounds 	theBoundsc� c�c�c� r   U ]c�c�c� n  U [c�c�c� I   V [Åc�ÄÅ 0 nsmaxy NSMaxYc� c�Ãc� o   V WÂÂ  0 thevisiblerect theVisibleRectÃ  Ä  c� m   U VÁ
Á misccurac� o      ÀÀ "0 thevisiblerecty theVisibleRectYc� c�c�c� r   ^ fc�c�c� n  ^ dc�c�c� I   _ d�c��~� 0 nsmaxy NSMaxYc� c��}c� o   _ `�|�| 0 	thebounds 	theBounds�}  �~  c� m   ^ _�{
�{ misccurac� o      �z�z 0 
theboundsy 
theBoundsYc� c�c�c� l  g g�y�x�w�y  �x  �w  c� c�c�c� n  g qc�c�c� I   l q�vc��u�v 0 
setstring_ 
setString_c� c��tc� o   l m�s�s 0 minerlog minerLog�t  �u  c� o   g l�r�r $0 minerconsoletext minerConsoleTextc� c�c�c� l  r r�q�p�o�q  �p  �o  c� c�c�c� Z   r �c�c��n�mc� l  r uc��l�kc� =  r uc�c�c� o   r s�j�j "0 thevisiblerecty theVisibleRectYc� o   s t�i�i 0 
theboundsy 
theBoundsY�l  �k  c� n  x �c�c�c� I   } ��hc��g�h .0 scrollrangetovisible_ scrollRangeToVisible_c� c��fc� J   } �c�c� c�c�c� n   } �c�c�c� 1   ~ ��e
�e 
lengc� o   } ~�d�d 0 minerlog minerLogc� c��cc� m   � ��b�b  �c  �f  �g  c� o   x }�a�a $0 minerconsoletext minerConsoleText�n  �m  c� c�c�c� l  � ��`�_�^�`  �_  �^  c� c�c�c� Z   �c�c�c�c�c� =  � �c�c�c� o   � ��]�] .0 includedebuginconsole includeDebugInConsolec� m   � ��\
�\ boovtruec� k   � �c�c� c�c�c� l  � ��[c�c��[  c�   update quicker   c� �c�c�    u p d a t e   q u i c k e rc� c��Zc� r   � �c�c�c� n  � �c�c�c� I   � ��Yc��X�Y �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_c� c�c�c� m   � ��W�W c� c�c�c�  f   � �c� c�c�c� m   � �c�c� �c�c� $ u p d a t e M i n e r C o n s o l ec� c�c�c� m   � �c�c� �c�c�  c� c��Vc� m   � ��U
�U boovfals�V  �X  c� n  � �c�c�c� o   � ��T�T 0 nstimer NSTimerc� m   � ��S
�S misccurac� o      �R�R 0 minerlogtimer minerLogTimer�Z  c� c�c�c� =  � �c�c�c� o   � ��Q�Q 0 currentcoin currentCoinc� m   � �c�c� �c�c�  L i t e c o i nc� c�c�c� k   � �c�c� c�c�c� l  � ��Pc�c��P  c� ^ X update quicker since the API doesn't allow monitoring of hashrates, just the output log   c� �c�c� �   u p d a t e   q u i c k e r   s i n c e   t h e   A P I   d o e s n ' t   a l l o w   m o n i t o r i n g   o f   h a s h r a t e s ,   j u s t   t h e   o u t p u t   l o gc� c��Oc� r   � �c�c�c� n  � �c�c�c� I   � ��Nc��M�N �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_c� c�c�c� m   � ��L�L c� c�c�c�  f   � �c� c�c�c� m   � �c�c� �c�c� $ u p d a t e M i n e r C o n s o l ec� c�c�c� m   � �c�c� �c�c�  c� c��Kc� m   � ��J
�J boovfals�K  �M  c� n  � �c�d c� o   � ��I�I 0 nstimer NSTimerd  m   � ��H
�H misccurac� o      �G�G 0 minerlogtimer minerLogTimer�O  c� ddd =  � �ddd o   � ��F�F 0 minerrunning minerRunningd m   � ��E
�E boovtrued d�Dd k   � �dd ddd l  � ��Cd	d
�C  d	 } w update only every 5s, since that is the interval used by the miner after it's up and running (though it is adjustable)   d
 �dd �   u p d a t e   o n l y   e v e r y   5 s ,   s i n c e   t h a t   i s   t h e   i n t e r v a l   u s e d   b y   t h e   m i n e r   a f t e r   i t ' s   u p   a n d   r u n n i n g   ( t h o u g h   i t   i s   a d j u s t a b l e )d d�Bd r   � �ddd n  � �ddd I   � ��Ad�@�A �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_d ddd m   � ��?�? d ddd  f   � �d ddd m   � �dd �dd $ u p d a t e M i n e r C o n s o l ed ddd m   � �dd �dd  d d�>d m   � ��=
�= boovfals�>  �@  d n  � �dd d o   � ��<�< 0 nstimer NSTimerd  m   � ��;
�; misccurad o      �:�: 0 minerlogtimer minerLogTimer�B  �D  c� k   �d!d! d"d#d" l  � ��9d$d%�9  d$ 8 2 update more frequently until the miner is running   d% �d&d& d   u p d a t e   m o r e   f r e q u e n t l y   u n t i l   t h e   m i n e r   i s   r u n n i n gd# d'�8d' r   �d(d)d( n  �d*d+d* I   ��7d,�6�7 �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_d, d-d.d- m   � �d/d/ ?�      d. d0d1d0  f   � �d1 d2d3d2 m   � �d4d4 �d5d5 $ u p d a t e M i n e r C o n s o l ed3 d6d7d6 m   � d8d8 �d9d9  d7 d:�5d: m   �4
�4 boovfals�5  �6  d+ n  � �d;d<d; o   � ��3�3 0 nstimer NSTimerd< m   � ��2
�2 misccurad) o      �1�1 0 minerlogtimer minerLogTimer�8  c� d=�0d= l �/�.�-�/  �.  �-  �0  cP d>d?d> l     �,�+�*�,  �+  �*  d? d@dAd@ i  PSdBdCdB I      �)dD�(�) 40 minerconsoledebugtoggle_ minerConsoleDebugToggle_dD dE�'dE o      �&�& 
0 sender  �'  �(  dC Z     dFdG�%dHdF =    dIdJdI n    dKdLdK I    �$�#�"�$ 	0 state  �#  �"  dL o     �!�! 
0 sender  dJ m    � �  dG I   
 �dM�� 0 sendcommand sendCommanddM dNdOdN m    dPdP �dQdQ 
 d e b u gdO dRdSdR m    dTdT �dUdU 
 d e b u gdS dV�dV m    �
� boovtrue�  �  �%  dH I    �dW�� 0 sendcommand sendCommanddW dXdYdX m    dZdZ �d[d[ 
 d e b u gdY d\d]d\ m    d^d^ �d_d_  n o r m a ld] d`�d` m    �
� boovtrue�  �  dA dadbda l     ����  �  �  db dcdddc i  TWdedfde I      �dg�� (0 closeminerconsole_ closeMinerConsole_dg dh�dh o      �� 
0 sender  �  �  df k     didi djdkdj l     �dldm�  dl   not yet implemented   dm �dndn (   n o t   y e t   i m p l e m e n t e ddk dodpdo I     
�dq�� 0 	killtimer 	killTimerdq dr�dr o    �� 0 minerlogtimer minerLogTimer�  �  dp ds�ds r    dtdudt n   dvdwdv 4    �
dx
�
 
pclsdx m    dydy �dzdz  N S T i m e rdw m    �	
�	 misccuradu o      �� 0 minerlogtimer minerLogTimer�  dd d{d|d{ l     ����  �  �  d| d}d~d} i  X[dd�d I      ���� *0 flushsettingstodisk flushSettingsToDisk�  �  d� k     �d�d� d�d�d� l     �� ���  �   ��  d� d�d�d� I     ��d����� 
0 msglog  d� d�d�d� m    d�d� �d�d� 8 F l u s h i n g   s e t t i n g s   t o   d i s k . . .d� d���d� m    d�d� �d�d�  n o t i c e��  ��  d� d�d�d� l   ��������  ��  ��  d� d�d�d� l   ��d�d���  d� 5 / clear out any stuff we can't save in the plist   d� �d�d� ^   c l e a r   o u t   a n y   s t u f f   w e   c a n ' t   s a v e   i n   t h e   p l i s td� d�d�d� r    d�d�d� J    
����  d� o      ���� 0 tempdeviceuis tempDeviceUIsd� d�d�d� Y    Bd���d�d���d� k     =d�d� d�d�d� r     .d�d�d� n     +d�d�d� 4   ( +��d�
�� 
cobjd� m   ) *���� &d� n     (d�d�d� 4   % (��d�
�� 
cobjd� o   & '���� 0 x  d� o     %����  0 myprefsdevices myPrefsDevicesd� n      d�d�d�  ;   , -d� o   + ,���� 0 tempdeviceuis tempDeviceUIsd� d���d� r   / =d�d�d� J   / 1����  d� n      d�d�d� 4   9 <��d�
�� 
cobjd� m   : ;���� &d� n   1 9d�d�d� 4   6 9��d�
�� 
cobjd� o   7 8���� 0 x  d� o   1 6����  0 myprefsdevices myPrefsDevices��  �� 0 x  d� m    ���� d� n    d�d�d� m    ��
�� 
nmbrd� n   d�d�d� 2   ��
�� 
cobjd� o    ����  0 myprefsdevices myPrefsDevices��  d� d�d�d� l  C C��������  ��  ��  d� d�d�d� O   C �d�d�d� k   M �d�d� d�d�d� l  M Xd�d�d�d� I   M X��d����� &0 setobject_forkey_ setObject_forKey_d� d�d�d� o   N S����  0 myprefsgeneral myPrefsGenerald� d���d� m   S Td�d� �d�d�  m y P r e f s G e n e r a l��  ��  d�   update the default items   d� �d�d� 2   u p d a t e   t h e   d e f a u l t   i t e m sd� d�d�d� l  Y dd�d�d�d� I   Y d��d����� &0 setobject_forkey_ setObject_forKey_d� d�d�d� o   Z _���� 0 myprefspools myPrefsPoolsd� d���d� m   _ `d�d� �d�d�  m y P r e f s P o o l s��  ��  d�   update the default items   d� �d�d� 2   u p d a t e   t h e   d e f a u l t   i t e m sd� d�d�d� l  e pd�d�d�d� I   e p��d����� &0 setobject_forkey_ setObject_forKey_d� d�d�d� o   f k���� 0 myprefsgpus myPrefsGPUsd� d���d� m   k ld�d� �d�d�  m y P r e f s G P U s��  ��  d�   update the default items   d� �d�d� 2   u p d a t e   t h e   d e f a u l t   i t e m sd� d�d�d� l  q |d�d�d�d� I   q |��d����� &0 setobject_forkey_ setObject_forKey_d� d�d�d� o   r w���� 0 myprefsfpgas myPrefsFPGAsd� d���d� m   w xd�d� �d�d�  m y P r e f s F P G A s��  ��  d�   update the default items   d� �d�d� 2   u p d a t e   t h e   d e f a u l t   i t e m sd� d�d�d� l  } �d�d�d�d� I   } ���d����� &0 setobject_forkey_ setObject_forKey_d� d�d�d� o   ~ ����� 0 myprefsasics myPrefsASICsd� d���d� m   � �d�d� �d�d�  m y P r e f s A S I C s��  ��  d�   update the default items   d� �d�d� 2   u p d a t e   t h e   d e f a u l t   i t e m sd� d�d�d� l  � �d�d�d�d� I   � ���e ���� &0 setobject_forkey_ setObject_forKey_e  eee o   � �����  0 myprefsdevices myPrefsDevicese e��e m   � �ee �ee  m y P r e f s D e v i c e s��  ��  d�   update the default items   d� �ee 2   u p d a t e   t h e   d e f a u l t   i t e m sd� e��e l  � �ee	e
e I   � ���e���� &0 setobject_forkey_ setObject_forKey_e eee o   � ����� ,0 myprefslifetimestats myPrefsLifetimeStatse e��e m   � �ee �ee ( m y P r e f s L i f e t i m e S t a t s��  ��  e	   update the default items   e
 �ee 2   u p d a t e   t h e   d e f a u l t   i t e m s��  d� n   C Jeee I   F J�������� ,0 standarduserdefaults standardUserDefaults��  ��  e n  C Feee o   D F¿¿  0 nsuserdefaults NSUserDefaultse m   C D¾
¾ misccurad� eee l  � �½¼»½  ¼  »  e eee l  � �ºeeº  e   reassemble the prefs   e �ee *   r e a s s e m b l e   t h e   p r e f se e¹e Y   � �e¸ee ·e r   � �e!e"e! n   � �e#e$e# 4   � �¶e%
¶ 
cobje% o   � �µµ 0 x  e$ o   � �´´ 0 tempdeviceuis tempDeviceUIse" n      e&e'e& 4   � �³e(
³ 
cobje( m   � �²² &e' l  � �e)±°e) n   � �e*e+e* 4   � �¯e,
¯ 
cobje, o   � �®® 0 x  e+ o   � �­­  0 myprefsdevices myPrefsDevices±  °  ¸ 0 x  e m   � �¬¬ e  n   � �e-e.e- m   � �«
« 
nmbre. n  � �e/e0e/ 2  � �ª
ª 
cobje0 o   � �©©  0 myprefsdevices myPrefsDevices·  ¹  d~ e1e2e1 l     ¨§¦¨  §  ¦  e2 e3e4e3 i  \_e5e6e5 I      ¥¤£¥ 0 
killminers 
killMiners¤  £  e6 n    	e7e8e7 I    	¢¡ ¢ 0 
killminers 
killMiners¡     e8 o      0 	apphelper 	AppHelpere4 e9e:e9 l           e: e;e<e; l     e=e>  e= Z T activates the main window clicking when on dock icon (if it is not already visible)   e> �e?e? �   a c t i v a t e s   t h e   m a i n   w i n d o w   c l i c k i n g   w h e n   o n   d o c k   i c o n   ( i f   i t   i s   n o t   a l r e a d y   v i s i b l e )e< e@eAe@ i  `ceBeCeB I      eD d0 0applicationshouldhandlereopen_hasvisiblewindows_ 0applicationShouldHandleReopen_hasVisibleWindows_eD eEeFeE o       0 self  eF eGeG 1      
 
pvis    eC Z     eHeIeJeH 1     
 
pviseI L    eKeK m    
 boovtrue  eJ k   
 eLeL eMeNeM n  
 eOePeO I    eQ .0 makekeyandorderfront_ makeKeyAndOrderFront_eQ eReR o     0 self      eP o   
  0 
mainwindow 
mainWindoweN eSeS L    eTeT m    
 boovfals  eA eUeVeU l           eV eWeXeW i  dgeYeZeY I      e[ :0 applicationshouldterminate_ applicationShouldTerminate_e[ e\e\ o       
0 sender      eZ k    �e]e] e^e_e^ l           e_ e`eae` I     � &0 stopruntimetimers stopRuntimeTimers  �  ea ebeceb l   edeeefed I    �~eg�}�~ 0 	killtimer 	killTimereg eh�|eh o    �{�{ &0 savesettingstimer saveSettingsTimer�|  �}  ee N H stop save settings looper (we're going to save the settings now anyway)   ef �eiei �   s t o p   s a v e   s e t t i n g s   l o o p e r   ( w e ' r e   g o i n g   t o   s a v e   t h e   s e t t i n g s   n o w   a n y w a y )ec ejekej l   �z�y�x�z  �y  �x  ek elemel l   �weneo�w  en 5 / get any final information before shutting down   eo �epep ^   g e t   a n y   f i n a l   i n f o r m a t i o n   b e f o r e   s h u t t i n g   d o w nem eqereq Q    geset�ves Z    ^euev�u�teu =   ewexew o    �s�s 0 minerrunning minerRunningex m    �r
�r boovtrueev k    Zeyey eze{ez r    (e|e}e| I    &�qe~�p�q 0 sendcommand sendCommande~ ee�e m     e�e� �e�e�  d e v se� e�e�e� m     !e�e� �e�e�  e� e��oe� m   ! "�n
�n boovfals�o  �p  e} o      �m�m 0 sessionhashes sessionHashese{ e�e�e� r   ) 5e�e�e� n   ) 3e�e�e� 4   0 3�le�
�l 
cobje� m   1 2�k�k e� I   ) 0�je��i�j 0 splitstring splitStringe� e�e�e� o   * +�h�h 0 sessionhashes sessionHashese� e��ge� m   + ,e�e� �e�e�  ,�g  �i  e� o      �f�f 0 sessionhashes sessionHashese� e�e�e� r   6 Be�e�e� n   6 @e�e�e� 4   = @�ee�
�e 
cobje� m   > ?�d�d e� I   6 =�ce��b�c 0 splitstring splitStringe� e�e�e� o   7 8�a�a 0 sessionhashes sessionHashese� e��`e� m   8 9e�e� �e�e�  =�`  �b  e� o      �_�_ 0 sessionhashes sessionHashese� e��^e� r   C Ze�e�e� c   C Qe�e�e� l  C Oe��]�\e� [   C Oe�e�e� l  C Me��[�Ze� c   C Me�e�e� n   C Ke�e�e� 4   H K�Ye�
�Y 
cobje� m   I J�X�X e� o   C H�W�W ,0 myprefslifetimestats myPrefsLifetimeStatse� m   K L�V
�V 
nmbr�[  �Z  e� o   M N�U�U 0 sessionhashes sessionHashes�]  �\  e� m   O P�T
�T 
nmbre� n      e�e�e� 4   V Y�Se�
�S 
cobje� m   W X�R�R e� o   Q V�Q�Q ,0 myprefslifetimestats myPrefsLifetimeStats�^  �u  �t  et R      �P�O�N
�P .ascrerr ****      � ****�O  �N  �v  er e�e�e� l  h h�M�L�K�M  �L  �K  e� e�e�e� Y   he��Je�e��Ie� k   { �e�e� e�e�e� l  { �e�e�e�e� r   { �e�e�e� [   { �e�e�e� l  { �e��H�Ge� c   { �e�e�e� l  { �e��F�Ee� n   { �e�e�e� 4   � ��De�
�D 
cobje� m   � ��C�C e� n   { �e�e�e� 4   � ��Be�
�B 
cobje� o   � ��A�A 0 x  e� o   { ��@�@  0 myprefsdevices myPrefsDevices�F  �E  e� m   � ��?
�? 
long�H  �G  e� l  � �e��>�=e� c   � �e�e�e� l  � �e��<�;e� n   � �e�e�e� 4   � ��:e�
�: 
cobje� m   � ��9�9 e� n   � �e�e�e� 4   � ��8e�
�8 
cobje� o   � ��7�7 0 x  e� o   � ��6�6  0 myprefsdevices myPrefsDevices�<  �;  e� m   � ��5
�5 
long�>  �=  e� n      e�e�e� 4   � ��4e�
�4 
cobje� m   � ��3�3 e� n   � �e�e�e� 4   � ��2e�
�2 
cobje� o   � ��1�1 0 x  e� o   � ��0�0  0 myprefsdevices myPrefsDevicese�   lifetime accepted shares   e� �e�e� 2   l i f e t i m e   a c c e p t e d   s h a r e se� e�e�e� l  � �e�e�e�e� r   � �e�e�e� [   � �e�e�e� l  � �e��/�.e� c   � �e�e�e� l  � �e��-�,e� n   � �e�e�e� 4   � ��+e�
�+ 
cobje� m   � ��*�* e� n   � �e�e�e� 4   � ��)e�
�) 
cobje� o   � ��(�( 0 x  e� o   � ��'�'  0 myprefsdevices myPrefsDevices�-  �,  e� m   � ��&
�& 
long�/  �.  e� l  � �e��%�$e� c   � �e�e�e� l  � �e��#�"e� n   � �e�e�e� 4   � ��!e�
�! 
cobje� m   � �� �  e� n   � �e�e�e� 4   � ��e�
� 
cobje� o   � ��� 0 x  e� o   � ���  0 myprefsdevices myPrefsDevices�#  �"  e� m   � ��
� 
long�%  �$  e� n      e�e�e� 4   � ��e�
� 
cobje� m   � ��� e� n   � �e�f e� 4   � ��f
� 
cobjf o   � ��� 0 x  f  o   � ���  0 myprefsdevices myPrefsDevicese�   lifetime rejected shares   e� �ff 2   l i f e t i m e   r e j e c t e d   s h a r e se� f�f l  � �ffff r   � �fff [   � �f	f
f	 l  � �f��f c   � �fff l  � �f��f n   � �fff 4   � ��f
� 
cobjf m   � ��� f n   � �fff 4   � ��f
� 
cobjf o   � ��� 0 x  f o   � ���  0 myprefsdevices myPrefsDevices�  �  f m   � ��
� 
long�  �  f
 l  � �f��
f c   � �fff l  � �f�	�f n   � �fff 4   � ��f
� 
cobjf m   � ��� f n   � �fff 4   � ��f
� 
cobjf o   � ��� 0 x  f o   � ���  0 myprefsdevices myPrefsDevices�	  �  f m   � ��
� 
long�  �
  f n      ff f 4   � ��f!
� 
cobjf! m   � �� �  f  n   � �f"f#f" 4   � ���f$
�� 
cobjf$ o   � ����� 0 x  f# o   � �����  0 myprefsdevices myPrefsDevicesf   lifetime hardware errors   f �f%f% 2   l i f e t i m e   h a r d w a r e   e r r o r s�  �J 0 x  e� m   k l���� e� n   l vf&f'f& m   s u��
�� 
nmbrf' n  l sf(f)f( 2  q s��
�� 
cobjf) o   l q����  0 myprefsdevices myPrefsDevices�I  e� f*f+f* l ��������  ��  ��  f+ f,f-f, Z  _f.f/����f. > f0f1f0 o  	���� 0 
pidcgminer 
pidCGminerf1 m  	f2f2 �f3f3  f/ k  [f4f4 f5f6f5 r  #f7f8f7 I !��f9��
�� .sysoexecTEXT���     TEXTf9 l f:����f: b  f;f<f; b  f=f>f= m  f?f? �f@f@ 2 t o p   - F   - R   - s   0   - l   1   - p i d  f> o  ���� 0 
pidcgminer 
pidCGminerf< m  fAfA �fBfB    - s t a t s   p i d��  ��  ��  f8 o      ���� 0 
pidrunning 
pidRunningf6 fC��fC Z  $[fDfE����fD E  $+fFfGfF o  $%���� 0 
pidrunning 
pidRunningfG o  %*���� 0 
pidcgminer 
pidCGminerfE l .WfHfIfJfH k  .WfKfK fLfMfL r  .5fNfOfN m  ./��
�� boovtruefO o      ���� 0 minerrunning minerRunningfM fPfQfP I  6;�������� 0 	stopminer 	stopMiner��  ��  fQ fRfSfR Q  <QfTfU��fT n ?HfVfWfV I  DH�������� 0 	terminate  ��  ��  fW o  ?D���� 0 	minertask 	minerTaskfU R      ������
�� .ascrerr ****      � ****��  ��  ��  fS fX��fX l RWfYfZf[fY I  RW�������� 0 
killminers 
killMiners��  ��  fZ   todo: delete this (?)   f[ �f\f\ ,   t o d o :   d e l e t e   t h i s   ( ? )��  fI   miner is running   fJ �f]f] "   m i n e r   i s   r u n n i n g��  ��  ��  ��  ��  f- f^f_f^ l ``��������  ��  ��  f_ f`faf` I  `e�������� *0 flushsettingstodisk flushSettingsToDisk��  ��  fa fbfcfb l ff��������  ��  ��  fc fdfefd Z  f�fffg����ff = fmfhfifh o  fk���� 80 reenableconflictingdrivers reenableConflictingDriversfi m  kl��
�� boovtruefg k  p�fjfj fkflfk l pp��fmfn��  fm 2 , attempt to reenable conflicting USB drivers   fn �fofo X   a t t e m p t   t o   r e e n a b l e   c o n f l i c t i n g   U S B   d r i v e r sfl fpfqfp r  psfrfsfr m  pq����  fs o      ���� 0 numerrs numErrsfq ftfuft Q  t�fvfwfxfv I w���fyfz
�� .sysoexecTEXT���     TEXTfy m  wzf{f{ �f|f| ^ k e x t l o a d   - b   c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e r 6 4fz ��f}��
�� 
badmf} m  }~��
�� boovtrue��  fw R      ��f~��
�� .ascrerr ****      � ****f~ o      ���� 0 err  ��  fx r  ��ff�f [  ��f�f�f� o  ������ 0 numerrs numErrsf� m  ������ f� o      ���� 0 numerrs numErrsfu f�f�f� Q  ��f�f�f�f� I ����f�f�
�� .sysoexecTEXT���     TEXTf� m  ��f�f� �f�f� Z k e x t l o a d   - b   c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e rf� ��f���
�� 
badmf� m  ����
�� boovtrue��  f� R      ��f���
�� .ascrerr ****      � ****f� o      ���� 0 err  ��  f� r  ��f�f�f� [  ��f�f�f� o  ������ 0 numerrs numErrsf� m  ������ f� o      ���� 0 numerrs numErrsf� f�f�f� l ����������  ��  ��  f� f���f� Z  ��f�f���f�f� @ ��f�f�f� o  ������ 0 numerrs numErrsf� m  ������ f� k  ��f�f� f�f�f� I  ����f����� 
0 msglog  f� f�f�f� o  ������ 0 err  f� f���f� m  ��f�f� �f�f�  w a r n i n g��  ��  f� f���f� I  ����f����� 
0 msglog  f� f�f�f� m  ��f�f� �f�f� A s t e r o i d   w a s   u n a b l e   t o   r e e n a b l e   y o u r   U S B   t o   U A R T   C P 2 1 0 x V C P   d r i v e r .     S i m p l y   l o g o u t   a n d   l o g   b a c k   i n   t o   r e e n a b l e   i t .     P l e a s e   r e p o r t   t h i s   b u g .f� f���f� m  ��f�f� �f�f� 
 a l e r t��  ��  ��  ��  f� I  ����f����� 
0 msglog  f� f�f�f� m  ��f�f� �f�f� x R e - e n a b l i n g   c o m . s i l a b s . d r i v e r . C P 2 1 0 x V C P D r i v e r   w a s   s u c c e s s f u lf� f���f� m  ��f�f� �f�f�  n o t i c e��  ��  ��  ��  ��  fe f�f�f� l ����������  ��  ��  f� f�f�f� l ����f�f���  f� T N attempt to delete our log files on quit so that we keep things clean and tidy   f� �f�f� �   a t t e m p t   t o   d e l e t e   o u r   l o g   f i l e s   o n   q u i t   s o   t h a t   w e   k e e p   t h i n g s   c l e a n   a n d   t i d yf� f�f�f� Q  ��f�f���f� I ����f���
�� .sysoexecTEXT���     TEXTf� b  ��f�f�f� b  ��f�f�f� b  ��f�f�f� m  ��f�f� �f�f�  r m  f� o  ������  0 tempfolderpath tempFolderPathf� o  ������ ,0 asteroiddebuglogfile AsteroidDebugLogFilef� o  ������ 0 quietstring quietString��  f� R      ������
�� .ascrerr ****      � ****��  ��  ��  f� f�f�f� Q   %f�f���f� I ��f���
�� .sysoexecTEXT���     TEXTf� b  f�f�f� b  f�f�f� b  f�f�f� m  f�f� �f�f�  r m  f� o  ����  0 tempfolderpath tempFolderPathf� o  ���� 0 minerlogfile minerLogFilef� o  ���� 0 quietstring quietString��  f� R      ������
�� .ascrerr ****      � ****��  ��  ��  f� f�f�f� Q  &If�f���f� I )@��f���
�� .sysoexecTEXT���     TEXTf� b  )<f�f�f� b  )6f�f�f� b  )2f�f�f� m  ),f�f� �f�f�  r m  f� o  ,1����  0 tempfolderpath tempFolderPathf� m  25f�f� �f�f� 6 A s t e r o i d _ M M _ s t a t u s r e p l y . t x tf� o  6;���� 0 quietstring quietString��  f� R      ������
�� .ascrerr ****      � ****��  ��  ��  f� f�f�f� Q  Jmf�f���f� I Md��f���
�� .sysoexecTEXT���     TEXTf� b  M`f�f�f� b  MZf�f�f� b  MVf�f�f� m  MPf�f� �f�f�  r m  f� o  PU��  0 tempfolderpath tempFolderPathf� m  VYf�f� �f�f� D A s t e r o i d _ M M _ r e m o t e c o m m a n d r e p l y . t x tf� o  Z_�~�~ 0 quietstring quietString��  f� R      �}�|�{
�} .ascrerr ****      � ****�|  �{  ��  f� f�f�f� l nn�z�y�x�z  �y  �x  f� f�f�f� I  ny�wf��v�w 
0 msglog  f� f�f�f� m  orf�f� �f�f� ( Q u i t t i n g . . .   b y e   b y e !f� f��uf� m  ruf�f� �f�f�  n o t i c e�u  �v  f� f��tf� L  z�g g  n z�ggg o  }��s�s  0 nsterminatenow NSTerminateNowg m  z}�r
�r misccura�t  eX ggg l     �q�p�o�q  �p  �o  g ggg i  hkggg I      �ng	�m�n d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_g	 g
�lg
 o      �k�k 
0 sender  �l  �m  g L     gg m     �j
�j boovfalsg ggg l     �i�h�g�i  �h  �g  g ggg i  loggg I      �f�e�d�f (0 isoptionkeypressed isOptionKeyPressed�e  �d  g k     gg ggg l     �cgg�c  g I C these could be rewritten a bit better, but they work as is for now   g �gg �   t h e s e   c o u l d   b e   r e w r i t t e n   a   b i t   b e t t e r ,   b u t   t h e y   w o r k   a s   i s   f o r   n o wg g�bg L     gg =    ggg l    g�a�`g I    �_g�^
�_ .sysoexecTEXT���     TEXTg m     gg �gg � / u s r / b i n / p y t h o n   - c   ' i m p o r t   C o c o a ;   p r i n t   C o c o a . N S E v e n t . m o d i f i e r F l a g s ( )   &   C o c o a . N S A l t e r n a t e K e y M a s k   >   1 '�^  �a  �`  g m    g g  �g!g!  T r u e�b  g g"g#g" l     �]�\�[�]  �\  �[  g# g$g%g$ i  psg&g'g& I      �Z�Y�X�Z &0 isshiftkeypressed isShiftKeyPressed�Y  �X  g' k     g(g( g)g*g) l     �Wg+g,�W  g+ I C these could be rewritten a bit better, but they work as is for now   g, �g-g- �   t h e s e   c o u l d   b e   r e w r i t t e n   a   b i t   b e t t e r ,   b u t   t h e y   w o r k   a s   i s   f o r   n o wg* g.�Vg. L     g/g/ =    g0g1g0 l    g2�U�Tg2 I    �Sg3�R
�S .sysoexecTEXT���     TEXTg3 m     g4g4 �g5g5 � / u s r / b i n / p y t h o n   - c   ' i m p o r t   C o c o a ;   p r i n t   C o c o a . N S E v e n t . m o d i f i e r F l a g s ( )   &   C o c o a . N S S h i f t K e y M a s k   >   1 '�R  �U  �T  g1 m    g6g6 �g7g7  T r u e�V  g% g8g9g8 l     �Q�P�O�Q  �P  �O  g9 g:g;g: i  twg<g=g< I      �Ng>�M�N 0 ddi  g> g?�Lg? o      �K�K 0 dothis doThis�L  �M  g= Z     g@gA�JgBg@ o     �I�I 0 dothis doThisgA r    gCgDgC m    �H
�H boovfalsgD o      �G�G $0 debugdialogsshow debugDialogsShow�J  gB r    gEgFgE m    �F
�F boovtruegF o      �E�E $0 debugdialogsshow debugDialogsShowg; gGgHgG l     �D�C�B�D  �C  �B  gH gIgJgI i  x{gKgLgK I      �AgM�@�A 0 dd  gM gN�?gN o      �>�> 0 msg  �?  �@  gL Z     %gOgP�=�<gO o     �;�; 0 	debugmode 	debugModegP Z    !gQgR�:gSgQ o    �9�9 $0 debugdialogsshow debugDialogsShowgR I   �8gT�7
�8 .sysodlogaskr        TEXTgT o    �6�6 0 msg  �7  �:  gS I    !�5gU�4�5 
0 msglog  gU gVgWgV b    gXgYgX m    gZgZ �g[g[  D E B U G :  gY o    �3�3 0 msg  gW g\�2g\ m    g]g] �g^g^  n o t i c e�2  �4  �=  �<  gJ g_g`g_ l     �1�0�/�1  �0  �/  g` gagbga i  |gcgdgc I      �.ge�-�. 0 dda  ge gf�,gf o      �+�+ 0 msg  �,  �-  gd Z     'gggh�*�)gg o     �(�( 0 	debugmode 	debugModegh Z    #gigj�'gkgi o    �&�& $0 debugdialogsshow debugDialogsShowgj I   �%glgm
�% .sysodlogaskr        TEXTgl m    gngn �gogo . Y o u r   m e s s a g e ,   g o o d   s i r :gm �$gp�#
�$ 
dtxtgp o    �"�" 0 msg  �#  �'  gk I    #�!gq� �! 
0 msglog  gq grgsgr b    gtgugt m    gvgv �gwgw  D e b u g :  gu o    �� 0 msg  gs gx�gx m    gygy �gzgz  n o t i c e�  �   �*  �)  gb g{�g{ l     ����  �  �  �  ��       �g|g}�  g| �� 0 appdelegate AppDelegateg} � ,g~g� 0 appdelegate AppDelegateg~ g�g� ��g�
� misccura
� 
pclsg� �g�g�  N S O b j e c tg>�g��� C H P V [ j������� ��
�	� � � � � ������
��� ��g�g�g�g�g�g�g�����������Pg�X����g���g���������g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g������������������������������������������������������������������������������������������������������������������������������������������������������������������g�g�������g�g�g�g�g�g�g���g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�g�h hhhhhhhhh	h
hhhhhhhhhhhhhhhhhhhhhh h!h"h#h$h%h&h'h(h)h*h+h,h-h.h/h0h1h2h3h4h5�  g�<������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� ����������������������
�	��������� ����������������������������������������������߿޿ݿܿۿڿٿؿ׿ֿտԿӿҿѿпϿοͿ̿˿ʿɿȿǿƿſĿÿ¿�������������������������������������������������������������������������������������������������������������������������������������~�}�|�{�z�y�x�w�v�u�t�s�r�q�p�o�n�m�l�k�j�i�h�g�f�e�d
�� 
pare�� 0 	apphelper 	AppHelper��  0 minercgcommloc minerCGcommLoc�� "0 minercgcommport minerCGcommPort�� 0 quietstring quietString�� 0 minerlogfile minerLogFile�� ,0 asteroiddebuglogfile AsteroidDebugLogFile�� 0 waitapistart waitAPIstart�� 0 waitgpustable waitGPUstable�� ,0 savesettingsinterval saveSettingsInterval�� ,0 balancecheckinterval balanceCheckInterval��  0 waitlogincheck waitLoginCheck�� 80 allowedmissedminercommands allowedMissedMinerCommands�� ,0 allowedminerrestarts allowedMinerRestarts�� 20 minerconsolelinestoshow minerConsoleLinesToShow�� .0 betterscryptthreshold betterScryptThreshold�� ,0 averagescryptgetwait averageScryptGetWait�� *0 scryptsettingscheck scryptSettingsCheck�� .0 hashratedecimalplaces hashRateDecimalPlaces�� (0 asteroidwebsiteurl asteroidWebsiteURL�� *0 asteroiddonationurl asteroidDonationURL�� 60 mobileminersubmitstatsurl mobileMinerSubmitStatsURL�� <0 mobileminerremotecommandsurl mobileMinerRemoteCommandsURL�� ,0 mobileminerurlapikey mobileMinerURLAPIkey�� >0 mobileminersendstatusinterval mobileMinerSendStatusInterval�� F0 !mobileminerremotecommandsinterval !mobileMinerRemoteCommandsInterval�� (0 mobileminertimeout mobileMinerTimeout�� 0 	debugmode 	debugMode�� $0 debugdialogsshow debugDialogsShow�� 0 
pidcgminer 
pidCGminer�� 0 resourcepath resourcePath�� 0 
bundlepath 
bundlePath�  0 tempfolderpath tempFolderPath�~ 0 minerapiready minerAPIready�} 0 getgpustats getGPUstats�| 0 updatedgpus updatedGPUs�{  0 savingsettings savingSettings�z 0 editingpool editingPool�y 0 revertstatus revertStatus�x "0 badpoolindicies badPoolIndicies�w 0 msglogalerts msgLogAlerts�v "0 msglogcriticals msgLogCriticals�u  0 msglogwarnings msgLogWarnings�t 0 msglognotices msgLogNotices�s 0 	msglognum 	msgLogNum�r 0 poolids poolIDs�q 0 minerrestarts minerRestarts�p *0 minermissedcommands minerMissedCommands�o .0 includedebuginconsole includeDebugInConsole�n 0 currentcoin currentCoin�m 0 currentpool currentPool�l 0 	minertask 	minerTask�k *0 checkedfirstdevices checkedFirstDevices�j 0 priormaxhash priorMaxHash�i 0 priordevices priorDevices�h $0 priordevicecount priorDeviceCount�g &0 currentdevicelist currentDeviceList�f 0 	firstboot 	firstBoot�e 0 numgpus numGPUs�d 0 numpgas numPGAs�c 0 numasics numASICs�b $0 minerstatustimer minerStatusTimer�a &0 savesettingstimer saveSettingsTimer�` 0 donationtimer donationTimer�_ *0 donationactivetimer donationActiveTimer�^ &0 balancechecktimer balanceCheckTimer�] $0 setpoolkilltimer setPoolKillTimer�\ 0 minerlogtimer minerLogTimer�[ 0 checkapitimer checkAPItimer�Z 80 averagescrypthashratetimer averageScryptHashrateTimer�Y 40 scrypthashratechecktimer scryptHashrateCheckTimer�X (0 setstatusbacktimer setStatusBackTimer�W 0 cooldowntimer cooldownTimer�V 20 temperaturewarningtimer temperatureWarningTimer�U 80 mobileminersendstatustimer mobileMinerSendStatusTimer�T @0 mobileminerremotecommandstimer mobileMinerRemoteCommandsTimer�S 0 bugchecktimer bugCheckTimer�R &0 curlmmstatustimer curlMMstatusTimer�Q 40 curlmmremotecommandtimer curlMMremotecommandTimer�P 0 nscolor NSColor�O 0 
mainwindow 
mainWindow�N  0 mainwindowview mainWindowView�M 0 	poolsheet 	poolSheet�L 0 prefswindow prefsWindow�K  0 feedbackwindow feedbackWindow�J 0 hashratebar hashRateBar�I 0 hashratelabel hashRateLabel�H 0 
statustag1 
statusTag1�G  0 statusspinner1 statusSpinner1�F 0 
statustag2 
statusTag2�E  0 statusspinner2 statusSpinner2�D 0 statusview1 statusView1�C 0 statusview2 statusView2�B 0 pausenub pauseNub�A 0 infonub infoNub�@ 0 detailtwistie detailTwistie�? 0 poollist poolList�>  0 pooleditbutton poolEditButton�= &0 hashratelayoutbar hashRateLayoutBar�< ,0 hashratelayoutbarber hashrateLayoutBarber�; (0 hashratelayouttext hashrateLayoutText�: 0 prefstoolbar prefsToolbar�9 00 prefsdonateminsoptions prefsDonateMinsOptions�8 (0 prefsdonateperhour prefsDonatePerHour�7 60 prefsdonateperhourreadout prefsDonatePerHourReadout�6 <0 prefsdonateperhourreadoutpct prefsDonatePerHourReadoutPct�5 D0  prefsdonateminstext_minutesevery  prefsDonateMinsText_minutesevery�4 $0 prefscoinmonitor prefsCoinMonitor�3 $0 prefsbadgetoggle prefsBadgeToggle�2 .0 prefsdisablegputoggle prefsDisableGPUToggle�1 $0 prefsviewgeneral prefsViewGeneral�0 &0 prefsviewlitecoin prefsViewLitecoin�/ ,0 prefsviewmobileminer prefsViewMobileMiner�. ,0 prefslitecointhreads prefsLitecoinThreads�- .0 prefslitecoinworksize prefsLitecoinWorksize�, B0 prefslitecoincheckboxsendvalues prefsLitecoinCheckboxSendValues�+ @0 prefslitecoincheckboxgetvalues prefsLitecoinCheckboxGetValues�* :0 prefslitecoinbuttonchecknow prefsLitecoinButtonCheckNow�) F0 !prefslitecointextrecommendthreads !prefsLitecoinTextRecommendThreads�( H0 "prefslitecointextrecommendworksize "prefsLitecoinTextRecommendWorksize�' 80 prefsmobileminersendstatus prefsMobileMinerSendStatus�& J0 #prefsmobileminerallowremotecommands #prefsMobileMinerAllowRemoteCommands�% .0 prefsmobilemineremail prefsMobileMinerEmail�$ 00 prefsmobileminerappkey prefsMobileMinerAppKey�# .0 intensityflexiblemenu intensityFlexibleMenu�" 00 intensitymenustartstop intensityMenuStartStop�! >0 intensitymenustartcommandline intensityMenuStartCommandLine�  .0 poolsheetbuttonaccept poolSheetButtonAccept� .0 poolsheetbuttoncancel poolSheetButtonCancel� 0 poolsheetname poolSheetName� (0 poolsheetnamefixed poolSheetNameFixed� 0 poolsheeturl poolSheetURL� 20 poolsheetworkerusername poolSheetWorkerUsername� 20 poolsheetworkerpassword poolSheetWorkerPassword� "0 poolsheetstatus poolSheetStatus� (0 poolsheetcoinfixed poolSheetCoinFixed� 0 poolsheetcoin poolSheetCoin� 0 feedbacktext feedBackText� 0 feedbackemail feedBackEmail� ,0 feedbackincludeextra feedBackIncludeExtra� &0 feedbacktableview feedBackTableView� (0 feedbackbuttonsend feedBackButtonSend� ,0 feedbackbuttoncancel feedBackButtonCancel� 20 feedbackbuttonviewdebug feedBackButtonViewDebug� 20 addresstomonitorreadout addressToMonitorReadout� (0 sharestatusreadout shareStatusReadout� 0 	adockmenu 	aDockMenu� &0 dockmenustartstop dockMenuStartStop� (0 minerconsolewindow minerConsoleWindow�
 $0 minerconsoletext minerConsoleText�	 60 minerconsolecheckboxdebug minerConsoleCheckboxDebug� $0 subviewintensity subviewIntensity� "0 subviewlitecoin subviewLitecoin� 0 minerlistview minerListView� $0 minerlistviewbox minerListViewBox� 0 devicesmenu devicesMenu� 20 mobileminerinfolinktext mobileMinerInfoLinkText� 0 
timertimer 
timerTimer� 0 minerrunning minerRunning�  $0 currentstatustag currentStatusTag�� $0 currentprefpanel currentPrefPanel�� 0 prefsviewlist prefsViewList��  0 prefsviewsizes prefsViewSizes�� &0 avgscrypthashrate avgScryptHashrate�� 0 
currentsub 
currentSub�� 80 defaultmainwindowframesize defaultMainWindowFrameSize�� 80 reenableconflictingdrivers reenableConflictingDrivers��  0 myprefsgeneral myPrefsGeneral�� 0 myprefspools myPrefsPools�� 0 myprefsgpus myPrefsGPUs�� 0 myprefsfpgas myPrefsFPGAs�� 0 myprefsasics myPrefsASICs��  0 myprefsdevices myPrefsDevices�� ,0 myprefslifetimestats myPrefsLifetimeStats�� "0 defaultpoolsbtc defaultPoolsBTC�� "0 defaultpoolsltc defaultPoolsLTC�� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_�� @0 applicationdidfinishlaunching_ applicationDidFinishLaunching_�� 40 readresponsedevicecheck_ readResponseDeviceCheck_�� (0 disableallcontrols disableAllControls�� *0 reenableallcontrols reenableAllControls�� 0 
populateui 
populateUI�� 0 mouseentered_ mouseEntered_�� 0 mouseexited_ mouseExited_�� $0 populatepoollist populatePoolList�� 0 setbitcoinui setBitcoinUI�� 0 setlitecoinui setLitecoinUI�� &0 updatecoinbalance updateCoinBalance�� 0 setpools setPools�� 0 setpoolkill setPoolKill�� 0 isdefaultpool isDefaultPool��  0 lookuppassword lookupPassword�� $0 checkifbadlogin_ checkIfBadLogin_�� (0 incorrectpoollogin incorrectPoolLogin�� 0 choosepool_ choosePool_�� 0 savesettings saveSettings�� *0 requestsavesettings requestSaveSettings�� 0 
startminer 
startMiner�� 00 startcommandlineminer_ startCommandLineMiner_�� &0 stopruntimetimers stopRuntimeTimers�� 40 minerunexpectedlystopped minerUnexpectedlyStopped�� 0 restartminer restartMiner�� 0 startminerapi startMinerAPI�� 0 checkapiready checkAPIready�� 0 setstatusback setStatusBack�� 0 setstatusline setStatusLine�� $0 requesteditpool_ requestEditPool_�� *0 startgetminerstatus startGetMinerStatus�� *0 updatesharesreadout updateSharesReadout��  0 sortdevicelist sortDeviceList�� &0 togglesubreadout_ toggleSubReadout_�� D0  toggledevicelisttwistiereceiver_  toggleDeviceListTwistieReceiver_�� 20 toggledevicelisttwistie toggleDeviceListTwistie�� 0 toggledevice toggleDevice�� 0 setavar____ setaVar____�� 0 checkforbug checkForBug�� 0 checkdevices checkDevices�� &0 updateminerstatus updateMinerStatus�� (0 updatedevicelistui updateDeviceListUI�� 0 setcoin_ setCoin_�� "0 offtempwarning_ offTempWarning_�� 0 offcooldown_ offCooldown_�� &0 updatehashratebar updateHashRateBar�� *0 updatehashratelabel updateHashRateLabel�� 0 sendcommand sendCommand�� 0 
dotrigger_ 
doTrigger_�� @0 checkmobileminerremotecommands checkMobileMinerRemoteCommands�� J0 #checkmobileminerremotecommandsreply #checkMobileMinerRemoteCommandsReply�� 20 sendstatustomobileminer sendStatusToMobileMiner�� <0 sendstatustomobileminerreply sendStatusToMobileMinerReply��  0 drawdevicelist drawDeviceList�� (0 drawdockdevicelist drawDockDeviceList�� (0 drawmenudevicelist drawMenuDeviceList�� "0 settempwarning_ setTempWarning_�� 0 dominermenu_ doMinerMenu_�� 0 getdevicename getDeviceName�� (0 getdeviceintensity getDeviceIntensity�� 0 setintensity_ setIntensity_�� $0 changeintensity_ changeIntensity_�� 20 updatedockintensitymenu updateDockIntensityMenu�� 20 changeintensityinternal changeIntensityInternal�� 40 changeintensityinternal_ changeIntensityInternal_�� .0 togglestartstopminer_ toggleStartStopMiner_��  0 closepoolsheet closePoolSheet�� $0 poolsheetaccept_ poolSheetAccept_�� $0 poolsheetcancel_ poolSheetCancel_�� "0 feedbackcancel_ feedBackCancel_�� "0 feedbackaccept_ feedbackAccept_�� "0 showprefsubview showPrefSubview�� &0 prefsshowgeneral_ prefsShowGeneral_�� (0 prefsshowlitecoin_ prefsShowLitecoin_�� .0 prefsshowmobileminer_ prefsShowMobileMiner_�� &0 prefswindowclose_ prefsWindowClose_��  0 getcoinbalance getCoinBalance�� 0 	stopminer 	stopMiner�� (0 startdonationtimer startDonationTimer��  0 dodonationpool doDonationPool�� (0 finishdonationpool finishDonationPool�� $0 setintensityto1_ setIntensityTo1_�� $0 setintensityto4_ setIntensityTo4_�� $0 setintensityto7_ setIntensityTo7_�� $0 gethashratelabel getHashRateLabel�� 80 checkfirstintensitywarning checkFirstIntensityWarning�� $0 minpowermaxhash_ minPowerMaxHash_�� &0 setdonateminutes_ setDonateMinutes_�� (0 setdonateperhours_ setDonatePerHours_�� ,0 updatedonateperhours updateDonatePerHours�� ,0 gotoasteroidwebsite_ gotoAsteroidWebsite_�� .0 gotoasteroiddonation_ gotoAsteroidDonation_�� 20 gotomobileminerwebsite_ gotoMobileMinerWebsite_�� (0 gotopoolstatspage_ gotoPoolStatsPage_�� &0 entercoinaddress_ enterCoinAddress_�� (0 setdockbadgestring setDockBadgeString�� 0 togglebadge_ toggleBadge_�� 20 toggledisablegpumining_ toggleDisableGPUMining_�� :0 togglesendlitecoinsettings_ toggleSendLitecoinSettings_�� 80 togglegetlitecoinsettings_ toggleGetLitecoinSettings_�� 0 	killtimer 	killTimer�� <0 togglemobileminersendstatus_ toggleMobileMinerSendStatus_�� >0 togglemobileminerallowremote_ toggleMobileMinerAllowRemote_�� >0 entermobilemineremailaddress_ enterMobileMinerEmailAddress_�� 20 entermobileminerappkey_ enterMobileMinerAppKey_�� 00 setprefsscryptthreads_ setPrefsScryptThreads_�� 20 setprefsscryptworksize_ setPrefsScryptWorksize_�� 40 startgetlitecoinhashrate startGetLitecoinHashrate�� ,0 dockchangeintensity_ dockChangeIntensity_�� "0 getsystemconfig getSystemConfig�� H0 "checkbetterscryptsettingsonserver_ "checkBetterScryptSettingsOnServer_� 60 sendaveragescrypthashrate sendAverageScryptHashrate�~ 40 getaveragescrypthashrate getAverageScryptHashrate�} 0 splitstring splitString�| 0 replacetext replaceText�{ 
0 msglog  �z 0 msglog__  �y 0 roundnumber roundNumber�x $0 openprefswindow_ openPrefsWindow_�w "0 createdebugfile createDebugFile�v *0 openfeedbackwindow_ openFeedbackWindow_�u  0 viewdebugfile_ viewDebugFile_�t  0 cleandebugfile cleanDebugFile�s 0 htmlify  �r 0 writetofile writeToFile�q &0 openminerconsole_ openMinerConsole_�p (0 updateminerconsole updateMinerConsole�o 40 minerconsoledebugtoggle_ minerConsoleDebugToggle_�n (0 closeminerconsole_ closeMinerConsole_�m *0 flushsettingstodisk flushSettingsToDisk�l 0 
killminers 
killMiners�k d0 0applicationshouldhandlereopen_hasvisiblewindows_ 0applicationShouldHandleReopen_hasVisibleWindows_�j :0 applicationshouldterminate_ applicationShouldTerminate_�i d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�h (0 isoptionkeypressed isOptionKeyPressed�g &0 isshiftkeypressed isShiftKeyPressed�f 0 ddi  �e 0 dd  �d 0 dda  �  
� 
msng� 
� x�� � � ���
 <�	h� � <� <� 
� boovtrue
� boovfals
� boovfals
� boovfals
�  boovfals
�� boovfalsg� �c�b�c  �b  g� �a�`�a  �`  g� �_�^�_  �^  g� �]�\�]  �\  g� �[�Z�[  �Z  g� �Y�X�Y  �X  g� �W�V�W  �V  ��  ��  ��  ��  
�� boovfalsg� �U�T�U  �T  
�� boovfals��  g� �S�R�S  �R  ��  g� �Q�P�Q  �P  
�� boovfals��  ��  ��  g� h6h6 �O�Nh7
�O misccura
�N 
pclsh7 �h8h8  N S T i m e rg� h9h9 �M�Lh:
�M misccura
�L 
pclsh: �h;h;  N S T i m e rg� h<h< �K�Jh=
�K misccura
�J 
pclsh= �h>h>  N S T i m e rg� h?h? �I�Hh@
�I misccura
�H 
pclsh@ �hAhA  N S T i m e rg� hBhB �G�FhC
�G misccura
�F 
pclshC �hDhD  N S T i m e rg� hEhE �E�DhF
�E misccura
�D 
pclshF �hGhG  N S T i m e rg� hHhH �C�BhI
�C misccura
�B 
pclshI �hJhJ  N S T i m e rg� hKhK �A�@hL
�A misccura
�@ 
pclshL �hMhM  N S T i m e rg� hNhN �?�>hO
�? misccura
�> 
pclshO �hPhP  N S T i m e rg� hQhQ �=�<hR
�= misccura
�< 
pclshR �hShS  N S T i m e rg� hThT �;�:hU
�; misccura
�: 
pclshU �hVhV  N S T i m e rg� hWhW �9�8hX
�9 misccura
�8 
pclshX �hYhY  N S T i m e rg� hZhZ �7�6h[
�7 misccura
�6 
pclsh[ �h\h\  N S T i m e rg� h]h] �5�4h^
�5 misccura
�4 
pclsh^ �h_h_  N S T i m e rg� h`h` �3�2ha
�3 misccura
�2 
pclsha �hbhb  N S T i m e rg� hchc �1�0hd
�1 misccura
�0 
pclshd �hehe  N S T i m e rg� hfhf �/�.hg
�/ misccura
�. 
pclshg �hhhh  N S T i m e rg� hihi �-�,hj
�- misccura
�, 
pclshj �hkhk  N S T i m e rg� hlhl �+�*hm
�+ misccura
�* 
pclshm �hnhn  N S C o l o r
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� 
msng
�� boovfals�� �� g� �)�(�)  �(  g� �'�&�'  �&  ��  
�� 
msng
�� boovfalsg� �%ho�% ho  #�$�#�"-�!� 5���?CG��OS����_��gko��$  �#  �" �! �  �  � �  � 
�  
� boovfals
� boovfals
� boovfals
� boovfals
� boovfals
� boovfals�  g� ���  �  g� ���  �  g� ���  �  g� ���  �  g� ��
�  �
  g� �	hp�	 hp  ���  �  g� ����hqhr�� B0 applicationwillfinishlaunching_ applicationWillFinishLaunching_� �hs� hs  �� 0 anotification aNotification�  hq � �  0 anotification aNotificationhr "�����������������ؾ��������������������&���������
�� misccura
�� 
pcls�� 0 
mainbundle 
mainBundle�� :0 objectforinfodictionarykey_ objectForInfoDictionaryKey_
�� 
ctxt�� 
0 msglog  �� 0 nsbundle NSBundle�� 0 resourcepath resourcePath�� 0 
bundlepath 
bundlePath
�� afdrtemp
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
psxp
�� .sysoexecTEXT���     TEXT��  ��  �� (0 isoptionkeypressed isOptionKeyPressed�� 0 
loadprefs_ 
loadPrefs_
�� 
list�� 0 
killminers 
killMiners�� 0 
populateui 
populateUI�� 0 contentview contentView�� 0 addsubview_ addSubview_��*����/�,�k+ �&%�%���/�,�k+ �&%�%�l+ O��,�,j+ �&Ec  O��,�,j+ �&Ec  Oa a a l a ,�&Ec   O a b   %b  %b  %j W X  hO a b   %b  %b  %j W X  hO*j+ e  b  ek+ Y b  fk+ Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �Ob  �a &Ec  �O*j+ O*j+ Ob  Sj+  b  nk+ !OPg� ������hthu���� @0 applicationdidfinishlaunching_ applicationDidFinishLaunching_�� ��hv�� hv  ���� 0 anotification aNotification��  ht ���߾޾ݾܾ۾ھپؾ׾־��� 0 anotification aNotification�� 0 hardwareinfo hardwareInfo�� 0 	minimodel 	miniModel�� 0 y  �� 0 	modelname 	modelName�� 0 	userreply 	userReply�� 0 
baddriver1 
badDriver1�� 0 
baddriver2 
badDriver2�� 0 msg  �� 0 numerrs numErrs�� 0 err  �� 0 	foundpool 	foundPool�� 0 x  hu _�ԾӾҾ�ѾоϾ��;̾�8��:<��CF�ȾǾƾžľþ¾���W_��������{�����������¾����⾸�������#,BILZ]��������������Ѿ�ؾ��𾯾��������)-
�� .miscactvnull��� ��� null
�� 
cobj�� 
�� 
bool
�� .sysoexecTEXT���     TEXT
�� 
cpar
�� 
nmbr
�� 
citm�� 
�� 
ctxt
�� 
ret 
�� 
btns
�� 
dflt
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT��  ��  
�� .aevtquitnull��� ��� null
�� 
bhit
�� afdrmacs
�� 
rtyp
�� .earsffdralis        afdr
�� 
psxp
�� 
psxf
�� .coredoexbool        obj �� 
0 msglog  
�� stic   
�� 
badm�� 0 err  �� 0 setstatusline setStatusLine�� 0 
startminer 
startMiner�� *0 reenableallcontrols reenableAllControls�� �� �� 
�� misccura�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� ���*j  Ob  ���/�&f  ��j E�OfE�O Yk��-�,Ekh ��/� >��/[�\[Z�\Z��/�-�,2�&E�O��
 ���&
 ���& eE�Y hOY h[OY��O�e  } ;�_ %_ %a %_ %_ %a %a a a lva la a a  E�W X  *j OhO�a ,a   
*j Y �a ,a    eb  ���/FY hY eb  ���/FOPY hOa !a "�l #a $,a %%E�Oa !a "�l #a $,a &%E�Oa 'E�Oa ( �a )&j * 
a +E�Y hUOa ( �a )&j * 
a ,E�Y hUO�a -  �*j  O*a .a /l+ 0Oa 1_ %_ %a 2%_ %_ %a 3%_ %_ %a 4%a a 5a a 6a 7lva la  E�O�a ,a 8  �jE�O a 9a :el W X ; �a < 
�kE�Y hO a =a :el W X ; �a > 
�kE�Y hO�l "*�a ?l+ 0O*a @a Al+ 0OeEc  �Y eEc  �O*a Ba Cl+ 0OPY hY hOfE�O Ikb  ��-�,Ekh b  ��/��/�&a D  *a Eeja F�+ GO*a Hk+ IOeE�Y h[OY��O�f  *a Jfja K�+ GO*j+ LY hOb  ��a M/a N	 b  ��a O/a P�& �b  ��a Q/�&e  1*a Ra Sl+ 0Oa Ta U,b  )a Va Wfa X+ YEc  JY hOb  ��a Z/�&e  1*a [a \l+ 0Oa Ta U,b  )a ]a ^fa X+ YEc  KY hY hOPg� ��8����hwhx���� 40 readresponsedevicecheck_ readResponseDeviceCheck_�� ��hy�� hy  ���� 0 anotification aNotification��  hw ���������� 0 anotification aNotification�� 0 
datastring 
dataString�� 0 	newstring  �� 0 	parstring 	parStringhx ��I������a��X�������� 0 userinfo userInfo�� 0 objectforkey_ objectForKey_
�� misccura
�� 
pcls�� 	0 alloc  �� 00 initwithdata_encoding_ initWithData_encoding_
�� 
TEXT
�� .sysodlogaskr        TEXT�� 0��,�k+ E�O���/�,��l+ E�O��&E�O�j 
OeEc  4OPg� ��}����hzh{���� (0 disableallcontrols disableAllControls��  ��  hz  h{ ���� 0 setenabled_ setEnabled_�� 7b  �fk+  Ob  }fk+  Ob  }fk+  Ob  `fk+  Ob  afk+  g� �������h|h}���� *0 reenableallcontrols reenableAllControls��  ��  h|  h} ������ 0 setenabled_ setEnabled_�� *0 indexofselecteditem indexOfSelectedItem�� Vb  `ek+  Ob  �ek+  Ob  }ek+  Ob  'b  `j+  b  afk+  Y b  aek+  Ob  `ek+  g� ��ᾌ��h~h���� 0 
populateui 
populateUI��  ��  h~ ������������ 0 mwf  �� 0 aframe aFrame�� 0 	totalhash 	totalHash�� 0 x  �� (0 minerlistviewframe minerListViewFrameh &������������~�}�|�{�z�y�x�wm�vu�u�t�s�r�q��p�o���n�m��l�k�j�i�h�g�f�� 60 setusesthreadedanimation_ setUsesThreadedAnimation_�� 	0 frame  �� 0 size  �� 	0 width  
�� 
doub� 
0 height  �~ �}  �| 0 	setframe_ 	setFrame_�{ $0 populatepoollist populatePoolList�z (0 disableallcontrols disableAllControls
�y 
cobj
�x 
nmbr�w 0 setmaxvalue_ setMaxValue_�v $0 setwarningvalue_ setWarningValue_�u &0 setcriticalvalue_ setCriticalValue_�t 0 
sethidden_ 
setHidden_
�s 
bool�r &0 updatecoinbalance updateCoinBalance�q 
�p misccura�o 0 nstimer NSTimer�n �m �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�l  0 drawdevicelist drawDeviceList�k �j Q�i|�h 
�g 0 addsubview_ addSubview_�f :0 setexcludedfromwindowsmenu_ setExcludedFromWindowsMenu_��2b  Xek+  Ob  Zek+  Ob  Pj+ E�O���,�,�&��,�,�&�lEc  �Ob  Uj+ E�O��,�,FOb  U�k+ O*j+ 	O*j+ 
Ob  ��-�,j YjE�O (kb  ��-�,Ekh �b  ��/�m/�&E�[OY��Ob  U�k+ Ob  U�� k+ Ob  U�a  k+ Y hOb  :j b  _fk+ Y (b  ;j
 b  <ja & b  _fk+ Y hO*j+ Ob  ��a /a  %a a ,b  
)a a ea + Ec  AY hOb  �a   b  �ek+ Ob  �fk+ Y 'b  �a   b  �fk+ Ob  �ek+ Y hOb  nb  ob  pmvEc  �OjvEc  �O 0kb  ��-�,Ekh b  ��/j+ �,�,�&b  �6F[OY��O*j+ Oa  a !lva "a #lvlvE�Ob  �ek+ Ob  Qb  �k+ $Ob  Pek+ %Ob  �ek+ %g� �e	`�d�ch�h��b�e 0 mouseentered_ mouseEntered_�d �ah��a h�  �`�` 0 theevent theEvent�c  h� �_�_ 0 theevent theEventh� �^�^ 0 
sethidden_ 
setHidden_�b Db  :b  ;b  <j b  _fk+  Y b  _ek+  Ob  ]fk+  Ob  ^fk+  g� �]	��\�[h�h��Z�] 0 mouseexited_ mouseExited_�\ �Yh��Y h�  �X�X 0 theevent theEvent�[  h� �W�W 0 theevent theEventh� �V�U�V 0 
sethidden_ 
setHidden_
�U 
bool�Z 7b  _ek+  Ob  �	 	b  !�& b  ]ek+  Ob  ^ek+  Y hg� �T	��S�Rh�h��Q�T $0 populatepoollist populatePoolList�S  �R  h� �P�O�N�M�L�K�J�P 0 nummenuitems numMenuItems�O 0 thisitem thisItem�N 0 x  �M .0 showncustompoolheader shownCustomPoolHeader�L 0 foundit  �K 0 y  �J 0 newitem newItemh� �I�H�G�F�E�D�C	�B	�A�@�?�>�=�<
A�;�:
��9�8�7�6`�I  0 removeallitems removeAllItems�H ,0 setautoenablesitems_ setAutoenablesItems_
�G misccura�F 0 nsfont NSFont�E �D &0 systemfontofsize_ systemFontOfSize_�C 0 setfont_ setFont_�B &0 additemwithtitle_ addItemWithTitle_�A 0 lastitem lastItem�@ 0 setenabled_ setEnabled_�? .0 boldsystemfontofsize_ boldSystemFontOfSize_�> ,0 setindentationlevel_ setIndentationLevel_
�= 
cobj
�< 
nmbr�; 
�: 
ctxt�9 ,0 selectitemwithtitle_ selectItemWithTitle_�8 �7 �6 0 isdefaultpool isDefaultPool�QjklvEc  'Ob  `j+  Ob  `fk+ Ob  `��,�k+ k+ Ob  `�k+ Ob  `�k+ Ob  `�,fk+ Ob  `�,��,�k+ k+ Ob  `�,jk+ OkE�Ob  `�,E�O >kb  ��-�,Ekh b  `b  ��/�k/k+ Ob  `�,kk+ O�kE�[OY��Ob  `a k+ Ob  `�,fk+ Ob  `�,��,�k+ k+ O�kb  '6FO�kE�O >kb  ��-�,Ekh b  `b  ��/�k/k+ Ob  `�,kk+ O�kE�[OY��OfE�O�kb  ��-�,Ekh b  ��/�a /a &a   b  `b  ��/�k/a &k+ Y hOb  ��/�-�,a  �fE�O akb  ��-�,Ekh b  ��/�k/b  ��/�k/  1b  ��/E�Ob  ��/�a /�6FO�b  ��/FOeE�OY h[OY��O�f  c ]kb  ��-�,Ekh b  ��/�k/b  ��/�k/  -b  ��/E�Ob  ��/�a /�6FO�b  ��/FOY h[OY��Y hY hO*b  ��/�a /k+ f  r�f  <eE�Ob  `a k+ Ob  `�,fk+ Ob  `�,��,�k+ k+ O�kE�Y hOb  `b  ��/�k/a &k+ Ob  `�,kk+ O�kE�Y h[OY�VOPg� �5��4�3h�h��2�5 0 setbitcoinui setBitcoinUI�4  �3  h�  h� ���1�1 
0 msglog  �2 *��l+ g� �0��/�.h�h��-�0 0 setlitecoinui setLitecoinUI�/  �.  h�  h� ���,�, 
0 msglog  �- *��l+ g� �+��*�)h�h��(�+ &0 updatecoinbalance updateCoinBalance�*  �)  h� �'�' 0 thisbal thisBalh� �&�%Ⱦ$��#�"�!� 
�& 
cobj�% �$  0 getcoinbalance getCoinBalance�# 0 	settitle_ 	setTitle_�"'
�! .sysorondlong        doub
�  
ctxt�( eb  ���/� O*b  ���/k+ E�O��  b  ��k+ OhY hO�� E�O�j E�O��!E�Ob  ���%�&k+ Y b  ��k+ g� ���h�h��� 0 setpools setPools�  �  h� ������ 0 thispool thisPool� 0 x  � 0 thisresponse thisResponse� 0 thispass thisPass� 0 	thisreply 	thisReplyh� <����.OR��rx���������˾�
������	!(��14>A\fs���ɾ������',/47
� 
cobj
� 
nmbr� 
� 
ctxt� 
0 msglog  � � 0 	stopminer 	stopMiner� 0 
startminer 
startMiner� 0 	killtimer 	killTimer
� misccura
� 
pcls� 0 sendcommand sendCommand�
 d�	 0 splitstring splitString�  �  �  0 lookuppassword lookupPassword� � 0 nstimer NSTimer� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� (0 startdonationtimer startDonationTimer��jvE�O 9kb  ��-�,Ekh b  ��/��/�&�  b  ��/E�OY h[OY��O�jv  *��l+ OhY hO�Ec  2Ob  1���/�& .*���/%�l+ O���/�&Ec  1O*j+ O*�k+ OhY (*b  Gk+ O�a a /Ec  GOb  &6Ec  &O*b  ?k+ O�a a /Ec  @O*a a em+ O �ka kh *a a fm+ E�O�a   *a a l+ OjY hO 0*�a l+ �k/E�O*�a l+ �l/E�O�a   Y hW X   !*a "a #l+ O�a   *a $a %l+ Y h[OY�wO �kb  ��-�,Ekh b  ��/��/�&a & �*a 'b  ��/�k/�&%a (l+ O*b  ��/�k/�&b  ��/�m/�&l+ )�&E�O*a *b  ��/�l/�&a +%b  ��/�m/�&%a ,%�%em+ Ob  ��/�a -/E�OPY h[OY�dO*a .a /fm+ O*a 0a 1fm+ O�a 2,�)a 3a 4f�+ 5Ec  BOb  ���/j %*j+ 6O*a 7b  ��a -/%a 8%a 9l+ Y *a :a ;l+ g� �>� ��h�h���� 0 setpoolkill setPoolKill�   ��  h�  h� 	HL��X\������j�� 0 sendcommand sendCommand�� 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� (*��fm+ O*��fm+ O*b  Bk+ O���/Ec  Bg� ��q����h�h����� 0 isdefaultpool isDefaultPool�� ��h��� h�  ���� 0 
thispoolid 
thisPoolID��  h� ����� 0 
thispoolid 
thisPoolID�� 0 x  h� �����
�� 
ctxt
�� 
cobj
�� 
nmbr�� �� k��&E�O /kb  ��-�,Ekh b  ��/��/�&�  eY h[OY��O /kb  ��-�,Ekh b  ��/��/�&�  eY h[OY��Ofg� ������h�h�����  0 lookuppassword lookupPassword�� ��h��� h�  ����� 0 thispool thisPool�� 0 thisuser thisUser��  h� ����� 0 thispool thisPool�� 0 thisuser thisUserh� ����� $0 lookuppassword__ lookupPassword__
�� 
ctxt�� b  ��l+  �&g� ��ɽ��h�h����� $0 checkifbadlogin_ checkIfBadLogin_�� ��h��� h�  ���� 0 
thispoolid 
thisPoolID��  h� �ܽ۽ڽٽؽ׽ֽ��� 0 
thispoolid 
thisPoolID�� 0 thispool thisPool��  0 poolindefaults poolInDefaults�� 0 x  �� 0 
poolstatus 
poolStatus��  0 thispoolstatus thisPoolStatus�� 0 temppool tempPool�� "0 loginsuccessful loginSuccessfulh� �Խӽҽѽ���04��?��Em}�����Ľ̽�ҽʽ����
�� 
cobj�� �� 0 isdefaultpool isDefaultPool
�� 
nmbr
�� 
ctxt�� 
0 msglog  �� 0 sendcommand sendCommand�� 0 splitstring splitString�� �� 0 setstatusline setStatusLine�� "0 setstringvalue_ setStringValue_�� (0 incorrectpoollogin incorrectPoolLogin��Nb  2��/E�OjvE�O*�k+ E�O 7kb  ��-�,Ekh b  ��/��/�&�  b  ��/E�Y h[OY��O�jv  *��l+ OhY hO*��fm+ 
E�O*��l+ E�O�E�O -k��-�,Ekh ��/��l/�& ��/E�OY h[OY��O��  fE�Y /*��l+ �m/E�O*�a l+ �l/E�O�a   fE�Y eE�O�f  E*a ��k/%a l+ O*a ��k/%fla a + O�Ec  %Ob  �a k+ O*j+ Y *a ��k/%a %fla a + OPg� ����ǽ�h�h����� (0 incorrectpoollogin incorrectPoolLogin��  ��  h� �Ľ��� 0 thispool thisPool��  0 poolindefaults poolInDefaultsh� �½��������������������������������� &0 stopruntimetimers stopRuntimeTimers
�� .miscactvnull��� ��� null�� 0 redcolor redColor�� 0 settextcolor_ setTextColor_
�� 
cobj�� "0 setstringvalue_ setStringValue_�� �� ,0 selectitemwithtitle_ selectItemWithTitle_�� �� 0 isdefaultpool isDefaultPool�� 0 
sethidden_ 
setHidden_��  0 lookuppassword lookupPassword
�� 
ctxt
�� misccura�� 0 nsapp NSApp
�� 
msng�� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_��*j+  O*j Ob  2E�Ob  2Ec  %Ob  �b  O�,k+ Ob  ���k/k+ Ob  ���k/k+ Ob  ����/k+ Ob  ����/k+ O*���/k+ 	E�O�e  0b  �fk+ 
Ob  �ek+ 
Ob  �fk+ 
Ob  �ek+ 
Y -b  �ek+ 
Ob  �fk+ 
Ob  �ek+ 
Ob  �fk+ 
Ob  ���l/k+ Ob  ���m/k+ Ob  �*��k/��m/l+ �&k+ O��,b  Rb  P)���+ g� �������h�h����� 0 choosepool_ choosePool_�� ��h��� h�  ���� 0 thispool thisPool��  h� �������������� 0 thispool thisPool�� 0 apool aPool�� 0 	foundpool 	foundPool�� 0 x  �� 0 
chosenpool 
chosenPool�� 0 y  h� 1�������ʽ���㽠
��"*2��������������k�����ν� O������� ������������ 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� *0 titleofselecteditem titleOfSelectedItem
�� 
ctxt�� 0 
sethidden_ 
setHidden_�� "0 setstringvalue_ setStringValue_�� 0 nsapp NSApp
�� 
msng�� �� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_
�� 
cobj
�� 
nmbr
�� 
list�� �� �� 0 isdefaultpool isDefaultPool�� ,0 selectitemwithtitle_ selectItemWithTitle_��  0 lookuppassword lookupPassword�� 0 setstatusline setStatusLine�� 0 
startminer 
startMiner�� 0 setpools setPools�� *0 indexofselecteditem indexOfSelectedItem�� 0 setenabled_ setEnabled_��*b  ?k+  O���/Ec  ?O*b  @k+  O���/Ec  @O�j+ �&E�O��  �b  �ek+ Ob  �fk+ Ob  �ek+ Ob  �fk+ O�Ec  %Ob  ��k+ Ob  ��k+ Ob  ��k+ Ob  ��k+ Ob  ��k+ Ob  �a k+ O�a ,b  Rb  P)a a a + OhY hOfE�O wkb  �a -a ,Ekh b  �a �/a &a k/�&�  /a b  �a �/a a /FOeE�Ob  �a �/a &E�Y a b  �a �/a a /F[OY��O�f ' �kb  �a -a ,Ekh b  �a �/a &a k/�&�  P�b  �a �/a &a l/�&a a a b  �a �/a &a a /�&a va &b  �6FOeE�OY h[OY��O�f  � �kb  �a -a ,Ekh b  �a �/a &a k/�&�  P�b  �a �/a &a l/�&a a  a !b  �a �/a &a a /�&a va &b  �6FOeE�OY h[OY��Y hOb  �a i/E�Y hO�Ec  2O�a m/a " !*�a a /k+ # 0b  �fk+ Ob  �ek+ Ob  �fk+ Ob  �ek+ Y -b  �ek+ Ob  �fk+ Ob  �ek+ Ob  �fk+ O�Ec  %Ob  ��a k/k+ Ob  ��a k/k+ Ob  ��a a /k+ $Ob  ��a a /k+ Ob  �a %k+ Ob  ��a l/k+ Ob  ��a m/k+ Ob  �*�a k/�a m/l+ &�&k+ O�a ,b  Rb  P)a a a + Y <b  �f  *a 'eja (a + )O*a *k+ +Y *j+ ,O*a -fja .a + )Ob  'b  `j+ / b  afk+ 0Y b  aek+ 0g� ��3����h�h����� 0 savesettings saveSettings��  ��  h�  h� ������@���� 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� *0 flushsettingstodisk flushSettingsToDisk�� '*b  >k+  O���/Ec  >O*j+ OfEc  $Oeg� ��T����h�h����� *0 requestsavesettings requestSaveSettings��  ��  h�  h� 	�����j�~}��}�|�� 0 	killtimer 	killTimer
�� misccura
� 
pcls�~ 0 nstimer NSTimer�} �| �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� Cb  $e  *b  >k+  O���/Ec  >Y hOeEc  $O��,b  	)��f�+ Ec  >g� �{��z�yh�h��x�{ 0 
startminer 
startMiner�z �wh��w h�  �v�v 0 	thisminer 	thisMiner�y  h� �u�t�s�r�q�p�u 0 	thisminer 	thisMiner�t 0 thispool thisPool�s 0 x  �r 0 thispass thisPass�q 0 thiscmd thisCmd�p 0 thisintensity thisIntensityh� O����o��ným�l�k�j��i�h�g�f;>IL]_adn�ey�������d�c��b�������a�`�_%)�^KMOW_a�]p}�\�������ҽ[������Z�Y�o 0 	settitle_ 	setTitle_�n (0 disableallcontrols disableAllControls
�m 
cobj
�l 
nmbr�k 
�j 
ctxt�i 
0 msglog  �h 0 	stopminer 	stopMiner�g  0 lookuppassword lookupPassword�f �e 0 setbitcoinui setBitcoinUI�d 
�c 
bool�b 
�a .sysoexecTEXT���     TEXT�` 0 setlitecoinui setLitecoinUI�_ �^ �] �\ �[ 40 startgetlitecoinhashrate startGetLitecoinHashrate
�Z 
cwor�Y 0 startminerapi startMinerAPI�xW��  �E�Y hOb  ��k+ Ob  }�k+ O*j+ Ob  ]�k+ OjvE�O 9kb  ��-�,Ekh b  ��/��/�&�  b  ��/E�OY h[OY��O�Ec  2O�jv  *��l+ O*j+ OhY hO*��k/��m/l+ �&E�O��a /Ec  1O*a b   %b  %a l+ O*a b   %b  %a l+ O*a �%a %b  1%a %a l+ Ob  1a   �*j+ O�a   �a b  %a %b  %a %��l/�&%a  %��m/�&%a !%�%a "%E�Ob  ��a #/a $&e  �a %%E�Y hOb  ��a &/�&a ' �a (%b  ��a &/�&%E�Y hO�a )%b   %b  %a *%E�O*a +�%a ,l+ O�j -OPY hY^b  1a . =*j+ /O�a 0 %b  ��a 1/�&a 2  
a 3E�Y b  ��a 4/�&E�Oa 5b  %a 6%b  %a 7%��l/�&%a 8%��m/�&%a 9%�%a :%E�Ob  ��a ;/a <	 b  ��a ;/ja $& �a =%b  ��a ;/�&%E�Y hOb  ��a >/a ?	 b  ��a >/ja $&	 b  ��a >/a @a $& �a A%b  ��a >/�&%E�Y hO�a B%�%a C%b   %b  %a D%E�O*a E�%a Fl+ O�j -Y hO*j+ GY *a Hb  1%a I%a Jl+ Oa K�%a L%j -a Mk/Ec  OeEc  �O*j+ Ng� �X�W�Vh�h��U�X 00 startcommandlineminer_ startCommandLineMiner_�W �Th��T h�  �S�S 	0 miner  �V  h� �R�Q�P�R 	0 miner  �Q 0 defaultanswer defaultAnswer�P 0 	thisreply 	thisReplyh� '�O�N�M#�L�K;�JHPf�Ih�H�Gqux�F�E�D�C�B�A��@�?�>��=��<���;�:�Ͻ9
�O 
cobj�N 
�M 
ctxt�L 
�K 
bool�J 
�I 
ret 
�H 
dtxt
�G 
btns
�F 
dflt
�E 
disp
�D stic   �C 
�B .sysodlogaskr        TEXT
�A 
bhit
�@ 
ttxt�? *0 requestsavesettings requestSaveSettings�> 0 	stopminer 	stopMiner�= 
0 msglog  
�< .miscactvnull��� ��� null
�; .sysoexecTEXT���     TEXT�: 0 startminerapi startMinerAPI
�9 .GURLGURLnull��� ��� TEXT�Ub  ���/�&E�O��  Ab  ���/�&e  
��%E�Y hOb  ���/�&� ��%b  ���/�&%E�Y hY hO��%�%�%����a a mva ma a a  E�O�a ,a   l�a ,b  ���/FO*j+ O*j+ O*a b  ���/�&%k+ Oa  %*j Ob  a  %b  %a !%�a ,%j "UOeEc  �O*j+ #Y �a ,a $  a %j &Y hg� �8ֽ7�6h�h��5�8 &0 stopruntimetimers stopRuntimeTimers�7  �6  h�  h� �4�3�2!*3<ENV�4 0 	killtimer 	killTimer
�3 misccura
�2 
pcls�5 �*b  Dk+  O*b  =k+  O*b  ?k+  O*b  @k+  O*b  Bk+  O*b  Ek+  O*b  Fk+  O*b  Hk+  O*b  Ik+  O���/Ec  DO���/Ec  =O���/Ec  ?O���/Ec  @O���/Ec  BO���/Ec  EO���/Ec  FO���/Ec  HO���/Ec  Ig� �1]�0�/h�h��.�1 40 minerunexpectedlystopped minerUnexpectedlyStopped�0  �/  h� �-�,�+�*�)�- &0 disablealldevices disableAllDevices�, 0 thefile theFile�+ 0 minerreadout minerReadout�* 0 minerproceed minerProceed�) 0 x  h� G�({���'�&���%�$�#�"���!Ž ̽�������!,/6@GRU[��k�u���������������� ���4;�D��N�( &0 stopruntimetimers stopRuntimeTimers�' 
0 msglog  �& "0 setdoublevalue_ setDoubleValue_�% "0 setstringvalue_ setStringValue_
�$ 
cobj�# 	
�" 
ctxt�! (0 setdockbadgestring setDockBadgeString�  � � 0 setstatusline setStatusLine� (0 disableallcontrols disableAllControls
� .rdwropenshor       file
� .rdwrread****        ****
� .rdwrclosnull���     ****� � � � (0 incorrectpoollogin incorrectPoolLogin
� 
bool
� 
nmbr� 
� 
long� 0 restartminer restartMiner� 0 	settitle_ 	setTitle_� *0 reenableallcontrols reenableAllControls�.�*j+  OfEc  !OfEc  �O�Ec  OjEc  �OjEc  /OfE�O*��l+ Ob  Ujk+ Ob  V��%k+ Ob  ���/�&�  *�k+ Y hO*�fa a a + O*j+ Ob   b  %E�O�j O�j E�O�j OeE�O�a  *a fja a + OfE�OPY@�a  &*a fja a + OfE�O*a a l+ OPY�a   Q*a !fja "a + OeE�O*a #a $l+ Oa %b  ��a &/FOkb  ��a '/FOa (b  ��a )/FOPY ��a * 9*a +fja ,a + O*a -a .l+ OfE�Ob  �a /k+ O*j+ 0OPY ~�a 1
 �a 2a 3& 9*a 4fja 5a + O*a 6a 7l+ OfE�Ob  �a 8k+ O*j+ 0OPY 3b  .b   $*a 9fja :a + OfE�O*a ;a <l+ Y hO�e  F @kb  ��-a =,Ekh b  ��/�a >/e  ja ?&b  ��/�m/FY h[OY��Y hO�e  '*a @eja Aa + O*j+ BOb  ]a Ck+ DY *j+ EOb  ]a Fk+ Dg� �U��h�h��� 0 restartminer restartMiner�  �  h� �
�
 0 errmsg errMsgh� �	g����s��	 0 
killminers 
killMiners� 0 
startminer 
startMiner� 0 errmsg errMsg�  
� 
ctxt� 
0 msglog  � 2b  .kEc  .O *j+  O*�k+ W X  *��&�l+ Ohg� �{��h�h�� � 0 startminerapi startMinerAPI�  �  h�  h� �����������
�� misccura�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�  ��,�)��f�+ Ec  Dg� �������h�h����� 0 checkapiready checkAPIready��  ��  h� �������������� 0 testme testMe�� 0 ananswer anAnswer�� 0 thefile theFile�� 0 minerreadout minerReadout�� 0 foundusb foundUsb�� 0 foundgpu foundGpu�� 0 x  h� Y�������ü��ܼ�������!���*/��AS����tx������޼ݼ�����������������"&�ټ�ADkos�׼ּ�vy�����������ϼӼ��Ѽ�
�� .sysoexecTEXT���     TEXT��  ��  �� 40 minerunexpectedlystopped minerUnexpectedlyStopped�� 0 sendcommand sendCommand
�� 
ctxt
�� .sysorondlong        doub
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****�� �� 0 setstatusline setStatusLine
�� 
bool�� 0 didminerdie didMinerDie
�� misccura�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� 
0 msglog  �� 0 	killtimer 	killTimer
�� 
pcls�� *0 reenableallcontrols reenableAllControls�� 0 	settitle_ 	setTitle_�� 0 checkdevices checkDevices��  0 drawdevicelist drawDeviceList�� 0 splitstring splitString
�� 
cobj�� 
�� 
long
�� 
nmbr�� �� 0 toggledevice toggleDevice�� *0 startgetminerstatus startGetMinerStatus����E�O �b  %�%j E�W X  hO��  *j+ OhY hO*��fm+ 
�&E�O 
��&E�W 
X  �E�Ob  �b  �j   cb   b  %E�O�j O�j E�O�j O�a  *a fja a + Y "�a 
 �a a & *j+ OhY hOPY hO�a   lfEc  !Ob  �a Ec  �Ob  �b   #b  j+ a &e  *j+ OhY hY hOa a ,a )a a fa  + !Ec  DY�*a "a #l+ $O*b  =k+ %Oa a &a '/Ec  =O*j+ (OeEc  !OeEc  �Ob  �a )k+ *Ob  }a +k+ *Ob  ]a ,k+ *O*a -*a .a /fm+ 
%a 0l+ $O*a 1*a 2a 3fm+ 
%a 4l+ $O*a 5*a 6a 7fm+ 
%a 8l+ $O*a 9*a :a ;fm+ 
%a <l+ $O*j+ =O*j+ >Ob  9e �*a ?a @l+ $OfE�OfE�O****a Aa Bfm+ 
a Cl+ Da Ea F/a Gl+ Da El/a Hl+ Da Ek/a I&Ec  :O****a Ja Kfm+ 
a Ll+ Da Ea F/a Ml+ Da El/a Nl+ Da Ek/a I&Ec  ;O****a Oa Pfm+ 
a Ql+ Da Ea F/a Rl+ Da El/a Sl+ Da Ek/a I&Ec  <Ob  :j eE�Y hOb  ;j
 b  <ja & eE�Y hO�e 	 	�e a & n hkb  �a E-a T,Ekh b  �a E�/a Ea U/e  8b  �a E�/a Ea  /�&a V  ja I&b  �a E�/a Em/FY hY h[OY��Y hY hO Okb  �a E-a T,Ekh b  �a E�/a Ea U/a &e  *b  �a E�/a Ek/�&k+ WY h[OY��O*j+ XOPg� ��W�μ�h�h����� 0 setstatusback setStatusBack��  ��  h� �˼��� 0 newlist newList�� 0 x  h� �ɼȼǼƼż�
�� 
cobj
�� 
nmbr�� �� 0 setstatusline setStatusLine��  ��  �� �b  &�-�,j  jvEc  &Y �b  &�-�,k  7 "*b  &�i/�k/fjb  &�i/�l/�+ W X  hOjvEc  &Y ]jvE�O #kb  &�-�,kkh b  &�/�6F[OY��O�Ec  &O "*b  &�i/�k/fjb  &�i/�l/�+ W X  hg� ��ͼ¼�h�h����� 0 setstatusline setStatusLine�� ��h��� h�  ���������� 0 thistext thisText�� 0 	spinneron 	spinnerOn�� "0 showforxseconds showForXSeconds�� 0 classofstatus classOfStatus��  h� 	�������������������� 0 thistext thisText�� 0 	spinneron 	spinnerOn�� "0 showforxseconds showForXSeconds�� 0 classofstatus classOfStatus�� 0 newlist newList�� 0 x  �� 20 leadingspacesforspinner leadingSpacesForSpinner�� 0 
statusline 
statusLine�� 0 newframe newFrameh� ����������]cy�������������������������������gk��
�� 
leng
�� 
cobj
�� 
nmbr
�� 
ctxt�� "0 startanimation_ startAnimation_��  0 stopanimation_ stopAnimation_�� "0 setstringvalue_ setStringValue_�� 0 
sethidden_ 
setHidden_�� 0 contentview contentView�� ,0 replacesubview_with_ replaceSubview_with_�� 	0 frame  �� 
0 origin  �� 0 x  �� �� 0 y  �� 0 	setframe_ 	setFrame_
�� misccura�� 0 nstimer NSTimer�� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_����,k hY hO��  �E�Y hOb  �k  lEc  �Y 	kEc  �OjvE�O :kb  &�-�,Ekh b  &�/�l/�&��& b  &�/�6FY h[OY��O�Ec  &O��lvb  &6FO�E�O�E�O�e  .b  �k  b  X�k+ 	Y b  Z�k+ 	O��%�%E�Y 'b  �k  b  X�k+ Y b  Z�k+ O�E�Ob  �k  ~b  W�k+ Ob  [fk+ Ob  \ek+ Ob  Pj+ b  \b  [l+ Ob  \j+ E�Ob  \j+ a ,a ,�a ,a ,FOa �a ,a ,FOb  [�k+ Y {b  Y�k+ Ob  \fk+ Ob  [ek+ Ob  Pj+ b  [b  \l+ Ob  [j+ E�Ob  [j+ a ,a ,�a ,a ,FOa �a ,a ,FOb  \�k+ O�j !a a ,�)a a fa + Ec  GY hg� ��u����h�h����� $0 requesteditpool_ requestEditPool_�� ��h��� h�  ���� 
0 sender  ��  h� ���������� 
0 sender  �� 0 apool aPool�� 0 thispool thisPool�� 0 x  h� ���������������ȼ����������������������� "0 setstringvalue_ setStringValue_�� 0 
blackcolor 
blackColor�� 0 settextcolor_ setTextColor_�� *0 titleofselecteditem titleOfSelectedItem
�� 
ctxt
�� 
cobj
�� 
nmbr�� 
0 msglog  �� �� ,0 selectitemwithtitle_ selectItemWithTitle_�� �� 0 isdefaultpool isDefaultPool�� 0 
sethidden_ 
setHidden_��  0 lookuppassword lookupPassword
�� misccura�� 0 nsapp NSApp
�� 
msng�� �0 Cbeginsheet_modalforwindow_modaldelegate_didendselector_contextinfo_ CbeginSheet_modalForWindow_modalDelegate_didEndSelector_contextInfo_��zb  ��k+ Ob  �b  O�,k+ Ob  `j+ �&E�OjvE�O 9kb  ��-�,Ekh b  ��/�k/�&�  b  ��/E�OY h[OY��O�jv  *��l+ 
OhY hO�Ec  %Ob  ���k/k+ Ob  ���k/k+ Ob  ����/k+ Ob  ����/k+ O*���/k+ e  0b  �fk+ Ob  �ek+ Ob  �fk+ Ob  �ek+ Y -b  �ek+ Ob  �fk+ Ob  �ek+ Ob  �fk+ Ob  ���l/k+ Ob  ���m/k+ Ob  �*��k/��m/l+ �&k+ Oa a ,b  Rb  P)a a �+ g� ��g����h�h���� *0 startgetminerstatus startGetMinerStatus��  ��  h�  h� nu�~�}�|�{�z���y�x���w�~ �} 0 setstatusline setStatusLine�| 0 setpools setPools
�{ misccura�z 0 nstimer NSTimer�y �x �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�w &0 updateminerstatus updateMinerStatus� 3*�ej��+ O*j+ O��,k)��e�+ 
Ec  =O*�ej��+ O*j+ g� �v��u�th�h��s�v *0 updatesharesreadout updateSharesReadout�u  �t  h� �r�q�p�o�n�r 0 thisresponse thisResponse�q  0 acceptedshares acceptedShares�p  0 rejectedshares rejectedShares�o  0 hardwareerrors hardwareErrors�n 0 thisreadout thisReadouth� ���m˼l�k�j��i���h   �g & .�f�m 0 sendcommand sendCommand�l 0 splitstring splitString
�k 
cobj�j 
�i �h 
�g 
ctxt�f 0 	settitle_ 	setTitle_�s �*��fm+ E�O*��l+ ��/E�O*��l+ �l/E�O*��l+ ��/E�O*��l+ �l/E�O*��l+ ��/E�O*��l+ �l/E�O�%�%�%E�O�a &a  �a %�%E�Y hOb  ��k+ OPg� �e >�d�ch�h��b�e  0 sortdevicelist sortDeviceList�d �ah��a h�  �`�` 0 sortby sortBy�c  h� �_�_ 0 sortby sortByh�  K Q Y�b "��  hY �� hY ��  hY hOPg� �^ b�]�\h�hļ[�^ &0 togglesubreadout_ toggleSubReadout_�] �Zh��Z h�  �Y�Y 
0 sender  �\  h� �X�X 
0 sender  h�  p�W�V � ��U�T�S � ��R�Q
�W 
bool�V 0 
sethidden_ 
setHidden_
�U 
cobj�T 
�S 
ctxt�R �Q *0 requestsavesettings requestSaveSettings�[ �b  �� 	 b  !e �& "b  �ek+ Ob  �fk+ O�Ec  �Y >b  �� 	 b  ���/�&��& "b  �fk+ Ob  �ek+ O�Ec  �Y hOb  �b  ���/FO*j+ g� �P ��O�Nh�hǼM�P D0  toggledevicelisttwistiereceiver_  toggleDeviceListTwistieReceiver_�O �Lh��L h�  �K�K 
0 sender  �N  h� �J�J 
0 sender  h� �I�H�G�F�E�D�I 	0 state  
�H 
bool
�G 
cobj�F �E 20 toggledevicelisttwistie toggleDeviceListTwistie�D *0 requestsavesettings requestSaveSettings�M ��,�&b  ���/FO*j+ O*j+ OPg� �C ܼB�Ah�hʼ@�C 20 toggledevicelisttwistie toggleDeviceListTwistie�B  �A  h� �?�>�=�<�;�? 0 iscollapsed isCollapsed�> $0 animationcontext animationContext�= 0 currentorigin currentOrigin�< 0 	thisframe 	thisFrame�; (0 minerlistviewframe minerListViewFrameh� �:�9�8�7�6�5�4!�3�2�1�0�/�.�-�,�+�*�)�(�'�&
�: 
cobj�9 
�8 
bool
�7 misccura�6 (0 nsanimationcontext NSAnimationContext�5 0 begingrouping beginGrouping�4  0 currentcontext currentContext�3 0 setduration_ setDuration_�2 	0 frame  �1 
0 origin  �0 0 x  �/ 0 y  �. 0 size  �- 
0 height  �, 0 animator  �+  0 setalphavalue_ setAlphaValue_�* 0 
sethidden_ 
setHidden_�) 	0 width  �( �' &0 setframe_display_ setFrame_display_�& 0 endgrouping endGrouping�@Ob  ���/�&E�O��,E�O�j+ O��,�k+ Ob  Pj+ 	�,�,b  Pj+ 	�,�,lvE�O� ^b  Pj+ 	E�Ob  ��,�,��,�,FO��k/��,�,FO��l/b  �j+ 	�,�,��,�,FOb  �j+ jk+ Ob  �ek+ Y �b  Pj+ 	E�Ob  ���,FOb  ��,a ,b  ��,�,b  �j+ 	�,�,lv��,FO��k/��,�,FO��l/b  �j+ 	�,�,��,�,FOb  �j+ 	E�Oa ��,�,FOb  �fk+ Ob  �j+ kk+ OPOb  Pj+ �el+ O�j+ OPg� �%""�$�#h�h̼"�% 0 toggledevice toggleDevice�$ �!h��! h�  � �  0 
thisdevice 
thisDevice�#  h� �� 0 
thisdevice 
thisDeviceh� ��
� 
TEXT� 0 toggledevice_ toggleDevice_�" ��&E�Ob  �k+ g� �"6��h�hϼ� 0 setavar____ setaVar____� �h�� h�  ����� 0 atype aType� 0 itemnum itemNum� 0 avalue aValue� 0 
avaluetype 
aValueType�  h� ����� 0 atype aType� 0 itemnum itemNum� 0 avalue aValue� 0 
avaluetype 
aValueTypeh� �"U�"a"e"q�"}�"��"��
"�"��	"�"�
� 
ctxt
� 
bool
� 
long
� 
nmbr
� 
doub
�
 
list
�	 
cobj� ���&E�O��&E�O��  
��&E�Y Q�� 
 �� �& 
��&E�Y ;��  
��&E�Y -��  
��&E�Y ��  
��&E�Y ��  
��&E�Y hO�� 
 �� �& ��&E�O�b  ��/FY 3�a  
 	�a  �&  ��&E�O�b  ���k/E/��l/E/FY hOPg� �"��h�hҼ� 0 checkforbug checkForBug�  �  h�  h� �� 0 checkforbug checkForBug� 
b  j+  g� �"��h�hԼ � 0 checkdevices checkDevices�  �  h� 	�������������������� 0 devicesdirty devicesDirty�� 0 
numdevices 
numDevices�� 0 x  �� 0 
devicelist 
deviceList�� 0 devicedetails deviceDetails�� 0 deviceid deviceID�� 0 deviceidshort deviceIDshort�� 0 foundit  �� 0 y  h� ##��# ������###&��#C#G#K#N#Q#n#r#v#y#|#�#�#�������#�#���$	$$$2$D��$R$g��$|��$�$�$�$�$�$���%1%4%?%E%I%O%U%Y%]%g%y%}%�%�%�%�%�%�%�%��&&&&2&9�����&U&Y��&c&n&�&�&�&�&�&�&�&�&�&�'''#'.'G'I'_'s'w'�'�'�'�'�'�'�'�'�((	((3(7(I(O(a(g(y(~(�(������ 0 sendcommand sendCommand�� 0 splitstring splitString
�� 
cobj�� 
�� 
long
�� 
nmbr�� 
�� 
bool�� &
�� .corecnte****       ****�� 
0 msglog  
�� 
ctxt�� �� �� �� �� 
�� misccura�� 0 nstimer NSTimer���� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� 0 savesettings saveSettings��  0 drawdevicelist drawDeviceList� wfE�O****��fm+ �l+ ��/�l+ �l/�l+ �k/�&Ec  :O****��fm+ �l+ ��/�l+ �l/�l+ �k/�&Ec  ;O****�a fm+ a l+ ��/a l+ �l/a l+ �k/�&Ec  <O**a a fm+ a l+ �-a ,�&lE�O�b  7 (eE�Ob  :b  ;b  <mvEc  6O�Ec  7Y hO Pkb  ��-a ,Ekh b  ��/�a /a &e 	 b  ��/�a /j j a & eE�Y h[OY��O�e '*a a l+ O*a a  fm+ E�O*�a !l+ E�O�l��-a ,kkh *��/a "l+ E�O*��l/a #l+ �l/a $&E�O�a %   �*��m/a &l+ �l/a $&%a $&E�Y �*��a '/a (l+ �l/a $&%a $&E�O�*��a )/a *l+ �l/a $&%a $&E�O�*���/a +l+ �l/a $&%a $&E�O*a ,�%a -l+ O*��m/a .l+ �l/a $&E�OfE�O pkb  ��-a ,Ekh b  ��/�k/a $&�a $&  @*��m/a /l+ �l/a &b  ��/�a 0/FOea &b  ��/�a /FOeE�OY h[OY��O�f �*a 1�%a 2l+ O�a 3ea 4a 5ja 6ja 7a 8a 9e�ja :jjjjjjja ;a <fa =jjjja >jja >a >a ?fjva vb  �6FO*��a )/a @l+ �l/a $&a A  H*���/a Bl+ �l/a $&b  ��i/�l/FOa Cb  ��i/�a )/FOa Db  ��i/�a E/FY�*��a )/a Fl+ �l/a $&a G  �*��l/a Hl+ �l/a $&b  ��i/�l/FOb  ��i/�l/a I  7a Jb  ��i/�a K/FOa La M,a N)a Oa Pfa E+ QEc  LOPY hOa Rb  ��i/�a )/FOa Sb  ��i/�a E/FY'*��a )/a Tl+ �l/a $&a U  p*��l/a Vl+ �l/a $&b  ��i/�l/FOb  ��i/�l/a W  a Xb  ��i/�a K/FY hOa Yb  ��i/�a )/FOa Zb  ��i/�a E/FY�*��a )/a [l+ �l/a $&a \  p*��l/a ]l+ �l/a $&b  ��i/�l/FOb  ��i/�l/a ^  a _b  ��i/�a K/FY hOa `b  ��i/�a )/FOa ab  ��i/�a E/FY*��a )/a bl+ �l/a $&a c  p*��l/a dl+ �l/a $&b  ��i/�l/FOb  ��i/�l/a e  a fb  ��i/�a K/FY hOa gb  ��i/�a )/FOa hb  ��i/�a E/FY�*��a )/a il+ �l/a $&a j  p*��l/a kl+ �l/a $&b  ��i/�l/FOb  ��i/�l/a l  a mb  ��i/�a K/FY hOa nb  ��i/�a )/FOa ob  ��i/�a E/FY �*��a )/a pl+ �l/a $&a q  �*��l/a rl+ �l/a $&b  ��i/�l/FOb  ��i/�l/a s  a tb  ��i/�a K/FY ub  ��i/�l/a u  a vb  ��i/�a K/FY Ob  ��i/�l/a w  a xb  ��i/�a K/FY )b  ��i/�l/a y  a zb  ��i/�a K/FY hOa {b  ��i/�a )/FOa |b  ��i/�a E/FY hY h[OY�"O*j+ }O*j+ ~Y hOb  :b  ;b  <mvOPg� ��(��޻�h�hֻ��� &0 updateminerstatus updateMinerStatus��  ��  h� �ۻڻٻػ׻ֻջԻӻһ��� *0 summaryresponsedevs summaryResponseDevs�� 0 
numdevices 
numDevices�� 0 x  �� 0 	gpurecord 	gpuRecord�� 0 y  �� 0 thishashrate thisHashrate�� 0 logtailscript logTailScript�� 0 logtail logTail�� 0 devicerecord deviceRecord�� 0 	totalhash 	totalHash�� 0 enabledcount enabledCounth� �(�(ɻ�(ٻϻλͻ̻˻ʻ�)=)C�Ȼǻ�)`�Ż�)���)��»�)�)�)߻���**������������*s����*���*�*λ�*컴��+
����+(����+F��+d��+�����+���+»�����+Ủ��+���,,,I,K,�,�,�,�,�-
-2-�-�-�-�.z.�.���.�.�///L��/{/�/�/�/�/�00Y0v0�0�1K1i1�1�1�1�1�2������2�2���2�2�2ʻ�2�2�2�2���3��3������3@��3�3�3�����3ǻ���3ػ�3���3�444��4 4'46��4\4`��4b4m4o4z4}4�4�4��� 0 sendcommand sendCommand�� 0 didminerdie didMinerDie
�� 
bool�� 40 minerunexpectedlystopped minerUnexpectedlyStopped�� 0 checkdevices checkDevices
�� 
cobj
�� 
nmbr�� %�� 0 splitstring splitString�� 
�� 
ctxt�� 
�� 
long�� 
�� 
doub�� 
�� .sysoexecTEXT���     TEXT
�� 
cpar�����  ��  �� �� �� �� �� �� �� 	�� �� 
�� �� �� �� �� �� ��  �� �� !�� 0 roundnumber roundNumber�� "�� �� #�� �� $�� �� �� &0 updatehashratebar updateHashRateBar�� *0 updatehashratelabel updateHashRateLabel�� *0 updatesharesreadout updateSharesReadout�� 0 setstatusline setStatusLine�� �� 0 setmaxvalue_ setMaxValue_�� $0 setwarningvalue_ setWarningValue_�� &0 setcriticalvalue_ setCriticalValue_�� (0 updatedevicelistui updateDeviceListUI�� �� 
�� misccura
�� 
pcls�� 0 nstimer NSTimer�� <�� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� 0 getdevicename getDeviceName�� 
0 msglog  
�� .miscactvnull��� ��� null
�� 
ret ��*��fm+ E�O��  !b  j+ �&e  *j+ OhY hY hO*j+ E�O��k/Ec  :O��l/Ec  ;O��m/Ec  <O &kb  ��-�,Ekh e�&b  ��/��/F[OY��Ob  :j
jb  :kkh **�fm+ �l+ E�O�kb  ��-�,Ekh b  ��/��/�&a  	 b  ��/�a /a &�a & �&�b  1a   N*��a /a l+ �l/a &E�Ob  ��/�a /a &�a & �a &b  ��/�a /FY hY �b  1a   �a b   %b  %a %E�O�j E�O 7*�a i/a l+ �l/E�O*�a l+ �k/E�O�a &E�O�a !E�W 
X   !jE�Ob  ��/�a "/a &� �b  ��/�a "/FY hY hO�a &b  ��/�a #/FO*��a $/a %l+ �l/a &b  ��/�a &/FO*��a '/a (l+ �l/a &b  ��/�a /FO*��a )/a *l+ �l/a &b  ��/�a $/FO*��a "/a +l+ �l/a &b  ��/�a '/FO*��a ,/a -l+ �l/a &b  ��/�a ./FO*��a //a 0l+ �l/a &b  ��/�a 1/FO*��a 2/a 3l+ �l/a &b  ��/�a 4/FO*��a 5/a 6l+ �l/a &b  ��/�a 7/FO*��a /a 8l+ �l/a &b  ��/�a 9/FO*��a #/a :l+ �l/a &b  ��/�a ;/FO*��a </a =l+ �l/a &b  ��/�a >/FO**��a &/a ?l+ �l/a &ll+ @a &b  ��/�a A/FO*��a B/a Cl+ �l/a &b  ��/�a D/FO*��a E/a Fl+ �l/�&b  ��/�a G/FOfb  ��/��/FOb  ��/�a G/�&a H  eb  ��/�a 5/FY hO*��a /a Il+ �l/a J  eb  ��/�m/FY fb  ��/�m/FOb  ��a B/�&f  eb  ��/�a 5/FY hOY h[OY�-[OY�Y hOb  ;j`Zjb  ;kkh **a K�fm+ a Ll+ E�O0kb  ��-�,Ekh b  ��/��/�&a M 	 !b  ��/�l/*��a /a Nl+ �l/ �&�*��a 5/a Ol+ �l/a &E�Ob  1a P  .b  ��/�a /a &� �b  ��/�a /FY hY ;b  1a Q  .b  ��/�a "/a &� �b  ��/�a "/FY hY hO�b  ��/�a #/FO*��a /a Rl+ �l/a &b  ��/�a &/FO*��a #/a Sl+ �l/a &b  ��/�a /FO*��a </a Tl+ �l/a &b  ��/�a $/FO*��a //a Ul+ �l/a &b  ��/�a '/FOja &b  ��/�a ./FOja &b  ��/�a 1/FOja &b  ��/�a 4/FOja &b  ��/�a 7/FOja &b  ��/�a 9/FOja &b  ��/�a ;/FOja &b  ��/�a >/FO**��a 2/a Vl+ �l/a &ll+ @a &b  ��/�a A/FO*��a &/a Wl+ �l/a &b  ��/�a D/FO*��a ,/a Xl+ �l/�&b  ��/�a G/FO*��a Y/a Zl+ �l/�&b  ��/��/FOb  ��/�a G/a [  eb  ��/�a 5/FY hO*��a "/a \l+ �l/a ]  eb  ��/�m/FY fb  ��/�m/FOb  ��/��/�&f  eb  ��/�a 5/FY a ^b  ��/�a _/FOY h[OY��[OY��Y hOb  <jVPjb  <kkh **a `�fm+ a al+ E�O&kb  ��-�,Ekh b  ��/��/�&a b 	 !b  ��/�l/*��a /a cl+ �l/ �&�*��a 5/a dl+ �l/a &E�Ob  1a e  .b  ��/�a /a &� �b  ��/�a /FY hY ;b  1a f  .b  ��/�a "/a &� �b  ��/�a "/FY hY hO�b  ��/�a #/FO*��a /a gl+ �l/a &b  ��/�a &/FO*��a #/a hl+ �l/a &b  ��/�a /FO*��a </a il+ �l/a &b  ��/�a $/FO*��a //a jl+ �l/a &b  ��/�a '/FOja &b  ��/�a ./FOja &b  ��/�a 1/FOja &b  ��/�a 4/FOja &b  ��/�a 7/FOja &b  ��/�a 9/FOja &b  ��/�a ;/FOja &b  ��/�a >/FO*��a 2/a kl+ �l/a &b  ��/�a A/FO*��a &/a ll+ �l/a &b  ��/�a D/FO*��a ,/a ml+ �l/�&b  ��/�a G/FO*��a Y/a nl+ �l/�&b  ��/��/FOb  ��/�a G/a o  eb  ��/�a 5/FY hO*��a "/a pl+ �l/a q  eb  ��/�m/FY fb  ��/�m/FOb  ��/��/�&f  eb  ��/�a 5/FY a rb  ��/�a _/FOY h[OY��[OY��Y hOjE�OjE�O lkb  ��-�,Ekh b  ��/�a 5/e  D�b  ��/�a #/a &E�Ob  ��/��/�&e �b  ��/�m/a &E�Y hY h[OY��O�b  ��a 9/FO*�k+ sO*�k+ tO*j+ uO�j  *a vfka w�+ xY hO�b  5 ,*a yfja z�+ xO*a {�%fa |a }�+ xO�Ec  5Y Ib  &�-�,k  (b  &�i/�k/a ~ *a fja ��+ xY hY b  &�-�,j  hY hOb  Ub  5k+ �Ob  Ub  5a � k+ �Ob  Ub  5a � k+ �O*j+ O*j+ �O:kb  ��-�,Ekh b  ��/�a �/�&a �	 b  ��/�a �/a &j�&�b  ��/�a '/a &b  ��/�a �/a &	 b  ��/�a Y/�&f �&�b  ��/�a �/�&a �  �*b  ��/�a |/a �%b  ��/�a /em+ Oeb  ��/�a Y/FOa �b  ��/�a _/FOa �a �a �/Ec  HOa �a �,a |a � )a �b  ��/�k/�&fa |+ �Ec  HO*a �*�k+ �%a �%b  ��/�a '/�&%a �%b  ��/�a �/�&%a �%a �l+ �O**�k+ �a �%fa 7a ��+ xY �b  ��/�a �/�&a �  �*j �O*a �*�k+ �%a �%_ �%_ �%a �%b  ��/�a '/�&%a �%_ �%a �%b  ��/�a �/�&%a �%a �l+ �Oa �a �a �/Ec  IOa �a �,a |)a �b  ��/�k/�&fa |+ �Ec  IOa �b  ��/�a �/FY hY hY h[OY��OPg� ��4�����h�hػ��� (0 updatedevicelistui updateDeviceListUI��  ��  h� ���� 0 x  h� 1��������������������~�}�|�{�z�y�x�w�v�u�t6�s6X�r6v�q6��p7�o�n�m7/�l7M�k7r�j�i7�7��h�g7ۻf�e8
�d
�� 
cobj
�� 
nmbr�� &
�� .corecnte****       ****�� "0 createdeviceui_ createDeviceUI_�� 
�� 
bool�� 
�� 
doub� "0 setdoublevalue_ setDoubleValue_�~ 0 	setstate_ 	setState_�} �| 
�{ 
ctxt�z "0 setstringvalue_ setStringValue_�y 0 	graycolor 	grayColor�x 0 settextcolor_ setTextColor_�w $0 gethashratelabel getHashRateLabel�v 0 
blackcolor 
blackColor�u �t �s 0 setmaxvalue_ setMaxValue_�r $0 setwarningvalue_ setWarningValue_�q &0 setcriticalvalue_ setCriticalValue_�p 
�o �n 0 	settitle_ 	setTitle_�m �l �k �j #�i �h �g 0 roundnumber roundNumber�f �e �d ��*&kb  ��-�,Ekh  b  ��/��/j j  b  �k+ Y hOb  ��/��/�&e �b  ��/��/�l/b  ��/��/�&k+ 	Ob  ��/��/�m/b  ��/�m/�&k+ 
Ob  ��/��/�&j  >b  ��/��/��/b  ��/��/�&k+ Ob  ��/��/��/b  O�,k+ Y Db  ��/��/��/*b  ��/��/efm+ �&k+ Ob  ��/��/��/b  Oa ,k+ Ob  ��/��/�&b  ��/��/FOb  ��/�a /�&b  ��/�a /FOb  ��/�a /�&b  ��/�a /FOb  1a  	 b  ��/��/b  ��/�a / �& rb  ��/��/�l/b  ��/�a /�&k+ Ob  ��/��/�l/b  ��/�a /�&a  k+ Ob  ��/��/�l/b  ��/�a /�&a  k+ Y �b  1a  	  b  ��/��/b  ��/��/�a / �& rb  ��/��/�l/b  ��/�a /�&k+ Ob  ��/��/�l/b  ��/�a /�&a  k+ Ob  ��/��/�l/b  ��/�a /�&a  k+ Y hOb  ��/��/�a /a b  ��/�a /%�&k+ Ob  ��/��/�a  /a !b  ��/�a "/%�&k+ Ob  ��/��/��/a #b  ��/�a $/%�&k+ Ob  ��/��/�a /a %b  ��/�a &/%�&k+ Ob  ��/��/�a '/a ( �b  ��/��/�a '/a )*b  ��/�a */�&b  ��/�a /�&jl+ +%�&k+ Ob  ��/��/��/a ,*b  ��/�a -/�&b  ��/�a "/�&jl+ +%�&k+ Ob  ��/��/�a ./a /*b  ��/�a 0/�&b  ��/�a $/�&jl+ +%�&k+ Y hY h[OY��OPg� �c8:�b�ah�hڻ`�c 0 setcoin_ setCoin_�b �_h��_ h�  �^�^ 0 thiscoin thisCoin�a  h� �]�] 0 thiscoin thisCoinh� �\
�\ 
ctxt�` ��&E�O�Ec  1g� �[8L�Z�Yh�hݻX�[ "0 offtempwarning_ offTempWarning_�Z �Wh��W h�  �V�V 
0 sender  �Y  h� �U�T�U 
0 sender  �T 0 thisdata thisDatah� �S�R�Q8[8`�P�O�S 0 	killtimer 	killTimer
�R misccura
�Q 
pcls
�P 
cobj�O �X $*b  Ik+  O���/Ec  IO�b  ��/��/Fg� �N8m�M�Lh�h�K�N 0 offcooldown_ offCooldown_�M �Jh��J h�  �I�I 
0 sender  �L  h� �H�G�F�H 
0 sender  �G 0 x  �F 0 thisdata thisDatah� �E�D�C�B�A�@8�8��?8�8��>�=8��<�;�:8л9
�E 
cobj
�D 
nmbr
�C 
ctxt�B 0 	killtimer 	killTimer
�A misccura
�@ 
pcls�? 0 getdevicename getDeviceName�> 
0 msglog  �= �< �; 0 sendcommand sendCommand�: �9 �K � �kb  ��-�,Ekh b  ��/�k/�&��&  r*b  Hk+ O���/Ec  HO*�*�k+ %�%�l+ O*b  ��/��/�&�%b  ��/��/�&em+ Ofb  ��/�a /FOa b  ��/�a /FOY h[OY�uOPg� �88�7�6h�h�5�8 &0 updatehashratebar updateHashRateBar�7 �4h��4 h�  �3�3 0 hashrate hashRate�6  h� �2�2 0 hashrate hashRateh� �1�1 "0 setdoublevalue_ setDoubleValue_�5 b  U�k+  g� �08�/�.h�h�-�0 *0 updatehashratelabel updateHashRateLabel�/ �,h��, h�  �+�+ 0 therate theRate�.  h� �*�)�* 0 therate theRate�) 0 	badgetext 	badgeTexth� �(�'�&�%�$9�#�( $0 gethashratelabel getHashRateLabel
�' 
ctxt�& "0 setstringvalue_ setStringValue_
�% 
cobj�$ 	�# (0 setdockbadgestring setDockBadgeString�- ;b  V*�efm+  �&k+ Ob  ���/�&�  *�eem+  �&E�O*�k+ Y hg� �"9#�!� h�h��" 0 sendcommand sendCommand�! �h�� h�  ���� 0 thecmd theCmd� 0 theopt theOpt� 0 isquiet isQuiet�   h� ���� 0 thecmd theCmd� 0 theopt theOpt� 0 isquiet isQuieth� ���
� 
ctxt
� 
bool�  0 sendcommand___ sendCommand___� 7��&E�O��&E�O��&E�O�f  b  ���m+ �&Y b  ���m+ g� �9`��h�h�� 0 
dotrigger_ 
doTrigger_� �h�� h�  �� 
0 sender  �  h� �� 
0 sender  h� �� (0 drawmenudevicelist drawMenuDeviceList� *j+  OPg� �9���
h�h�	� @0 checkmobileminerremotecommands checkMobileMinerRemoteCommands�  �
  h� ��� 0 thisreq thisReq� 0 err  h� ���9�9ٻ�9�� 9��9�9�9�������::��������:3:7����
� 
cobj� 
� 
bool� 
� 
ctxt� �  0 htmlify  �� 
�� .sysoexecTEXT���     TEXT�� 0 err  ��  �� 
0 msglog  �� 0 	killtimer 	killTimer
�� misccura�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�	 �b  ���/�&e  ��b  %�%b  ���/�&%�%*b  ���/�&eem+ 	%�%*b  ���/�&eem+ 	%�%b  %�%b   %�%E�O �j OPW X  *a �%a l+ O*b  Nk+ Oa a ,b  )a a fa + Ec  NOPY hOPg� ��:C����h�h���� J0 #checkmobileminerremotecommandsreply #checkMobileMinerRemoteCommandsReply��  ��  h� 	������������� 0 aresult aResult�� 0 thefile theFile�� 0 acommandlist aCommandList�� 0 x  �� 0 acommand aCommand�� 0 	commandid 	commandID�� 0 gotanerr gotAnErr�� 0 err  �� 0 thisreq thisReqh� N:I:W������:|:���:�:�:�:�����:�:˺�:�:�޺�;
;;��;";%��;4��;;�ٺ�;D;V;Y��;a;h;m;p;y;�;���;�;�;�;�;�;�;�;�;��;�Ժ�;���<
<<��<$<'</<2�кϺ�<L<P�ͺ�
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****��  ��  
�� 
bool�� 0 splitstring splitString
�� 
cobj
�� 
nmbr�� 
�� 
cha 
�� 
ctxt�� 
0 msglog  �� 0 
startminer 
startMiner�� 
�� 0 setstatusline setStatusLine�� 0 err  �� 0 	stopminer 	stopMiner�� 0 restartminer restartMiner�� �� �� 0 htmlify  �� 
�� .sysoexecTEXT���     TEXT�� 0 	killtimer 	killTimer
�� misccura�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_����E�O "b   �%E�O�j O�j E�O�j W X  hO�� 
 �� �&
 �� �& hYR��	 ���&7*��l+ E�O tk��-a ,Ekh ��/a  *��/a l+ �a /E�Y hO��/a  2*��/a l+ �m/E�O�[a \[Zl\Z�a -a ,2a &E�Y h[OY��OfE�O�a   Z Lb  �e  *a a l+ Y 1*a a l+ O*b  ��k/a &k+ O*a fa  a !a + "W 
X # eE�Y ��a $  N @b  �e  (*a %a &l+ O*j+ 'O*a (fa  a )a + "Y *a *a +l+ W 
X # eE�Y ?�a ,  6 (*a -a .l+ O*j+ /O*a 0fa  a 1a + "W 
X # eE�Y hO�e  *a 2�%a 3l+ Y ��a 4 
 	�a 5 �&
 	�a 6 �& �a 7b  %a 8%b  ��a 9/a &%a :%*b  ��a ;/a &eem+ <%a =%*b  ��a >/a &eem+ <%a ?%�%a @%b  %a A%E�O 
�j BW X # *a C�%a Dl+ Y hOPY *a E�%a Fl+ O*b  Kk+ GOa Ha I,b  )a Ja Kfa L+ MEc  KOPg� ��<[�ʺ�h�h���� 20 sendstatustomobileminer sendStatusToMobileMiner��  ��  h� 	�Ǻƺźĺúº������� *0 mmexpectedperdevice mmExpectedPerDevice�� "0 numvaliddevices numValidDevices�� 0 qt  �� 0 sep  �� 
0 jts jTS�� 0 x  �� 0 shellscript shellScript�� 0 	thisstuff 	thisStuff�� 0 err  h� 򺾺�����<y��<}��<���<���<���<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�<�===	===== =$='=/=3=9=<=D=H=N=Q=Y=]=c=f=n=r=x={=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�=�>>>>>>> >#>+>/>5>8>@>D>J>M>U>Y>]>a>d��>u>{>�����>�>�>�>�>κ���>�>�>�>�>�???����?.?B?D?a?c��?r?�?�?�?�?�?���?�?�?�?�?�@@@.@0��@S@U��@�@�@�@�@�@�@�@���@�@ͺ���@�@꺧AA��A"A$��A?AA��A\A^��AyA{��A�A���A�A���������A�A�BB��BB!��B<B>��BYB[��BlBB�B�B�B�����B�B�B�B޺�B�B�������CC��������CC!��C-C4
�� 
cobj�� 
�� 
bool�� 0 varname varName�� 0 vartype varType�� 0 
vardefault 
varDefault�� 0 devsvar devsVar�� 0 varvalue varValue�� 
�� 
�� 
nmbr�� �� 
�� 
ctxt�� ��  0 makecaseupper_ makeCaseUpper_
�� 
long�� 	�� �� �� $�� 
�� 
doub�� �� �� �� �� ��  �� !�� �� �� 0 roundnumber roundNumber����� �� �� �� #�� �� 0 htmlify  
�� .sysoexecTEXT���     TEXT�� 0 setstatusline setStatusLine�� 0 err  ��  �� 
0 msglog  �� 0 	killtimer 	killTimer
�� misccura�� 0 nstimer NSTimer�� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_���b  ���/�&e �����������������a �a �a ��a �a �a �a �a ��a �a �a �a �a ��a �a �a �a  �a !��a "�a #�j�a $�a %��a &�a '�a (�a )�a *��a +�a ,�a -�a .�a /��a 0�a 1�j�a 2�a 3��a 4�a 5�j�a 6�a 7��a 8�a 9�j�a :�a ;��a <�a =�j�a >�a ?��a @�a A�j�a B�a C��a D�a E�j�a F�a G��a H�a I�j�a J�a K��a L�a M�j�a N�a O��a P�a Q�j�a R�a S��a T�a U�j�a V�a W��a X�a Y�j�a Z�a [��a \�a ]�j�a ^�a _��a `�a a�j�a b�a c��a d�a e�j�a f�a g��a h�a i�a j�a k�a l�a mvE�OjE�Oa nE�Oa oE�Oa pE�O�kb  ��-a q,Ekh b  ��/�a r/�&e ʡj �a s%E�Y hO�a t%E�O��%a u%�%a v%�%a w%b  ��a x/a y&%a z%�%E�Ob  1a {  ���%�%a |%�%a }%�%a ~%�%E�O��%�%a %�%a �%�%a �%�%E�Ob  b  ��/�a �/a y&k+ �a y&a �  5��%�%a �%�%a �%�%b  b  ��/�a �/a y&k+ �%�%E�Y %��%�%a �%�%a �%b  ��/�a �/a �&%E�Y �b  1a �  ���%�%a �%�%a �%�%a �%�%E�O��%�%a �%�%a �%�%a �%�%E�Ob  b  ��/�a �/a y&k+ �a y&a �  5��%�%a �%�%a �%�%b  b  ��/�a �/a y&k+ �%�%E�Y %��%�%a �%�%a �%b  ��/�a �/a �&%E�Y hO��%�%a �%�%a �%�%b  1%�%E�O��%�%a �%�%a �%�%b  b  ��/�a �/a y&k+ �a y&%�%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�Ob  ��/�m/�&e  ��%�%a �%�%a �%a �%E�Y ��%�%a �%�%a �%a �%E�O��%�%a �%�%a �%�%b  ��/�a �/a y&%�%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%*b  ��/�a �/a �&a �l+ �a � a �&%E�O��%�%a �%�%a �%*b  ��/�a �/a �&a �l+ �a � a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O��%�%a �%�%a �%b  ��/�a �/a �&%E�O�a �%E�O�kE�Y h[OY�O�a �%E�Oa פ%a �%b  %a �%b  %a �%*b  ��a �/a y&eem+ �%a �%*b  ��a �/a y&eem+ �%a �%*b  ��a �/a y&eem+ �%a �%b   %a �%E�O �j �E�O*a �fka �a �+ �W X � �*a �%a �l+ �O*b  Mk+ �Oa �a �,b  )a �a �fa �+ �Ec  MO*a �fka �a �+ �OPY hOPg� ��C=����h�h����� <0 sendstatustomobileminerreply sendStatusToMobileMinerReply��  ��  h� ������ 0 thefile theFile�� 0 	curlreply 	curlReplyh� CK����������CgCj��������~�}C�C��|�{
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****
�� 
cpar
�� 
nmbr�� 
0 msglog  ��  ��  � 0 	killtimer 	killTimer
�~ misccura�} 0 nstimer NSTimer�| �{ �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� f :b   �%E�O�j O�j E�O�j O��-�,j *�%�l+ Y hW X 	 
hO*b  Jk+ O��,b  )��fa + Ec  Jg� �zC��y�xh�h��w�z  0 drawdevicelist drawDeviceList�y  �x  h� 	�v�u�t�s�r�q�p�o�n�v 0 
framewidth 
frameWidth�u 0 	rowheight 	rowHeight�t $0 rowpaddingbottom rowPaddingBottom�s 0 
rowpadding 
rowPadding�r 0 devicesshown devicesShown�q 0 x  �p 0 	thisframe 	thisFrame�o (0 minerlistviewframe minerListViewFrame�n 0 boxframe boxFrameh� �m�l�k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�m|�l �k 

�j 
cobj
�i 
nmbr�h 
�g 
bool�f &
�e .corecnte****       ****�d "0 createdeviceui_ createDeviceUI_�c 	0 frame  �b 
0 origin  �a 0 x  �` 0 y  �_ 0 size  �^ 
0 height  �] 	0 width  �\ 0 	setframe_ 	setFrame_�[ 0 addsubview_ addSubview_�Z �Y 	0 state  �X Q�W (0 drawdockdevicelist drawDockDeviceList�V (0 drawmenudevicelist drawMenuDeviceList�w��E�O�E�O�E�OkE�OjE�O �kb  ��-�,Ekh b  ��/��/�&e  �b  ��/��/j k b  �k+ 	OPY hOb  ��/��/�k/j+ 
E�Oj��,�,FO�� �� ���,�,FO���,�,FO���,a ,FOb  ��/��/�k/�k+ Ob  �b  ��/��/�k/k+ O�kE�Y h[OY�OOb  �j+ 
E�Oa ��,�,FO���,a ,FO�� �� ���,�,FOb  _j+ �&e  a ��,�,FY a �� �� ���,�,FOb  ��k+ Ob  �j+ 
E�Oj��,�,FOj��,�,FO���,a ,FOb  �j+ 
�,�,���,�,FOb  ��k+ O*j+ O*j+ OPg� �UE7�T�Sh�h��R�U (0 drawdockdevicelist drawDockDeviceList�T  �S  h� �Q�P�Q 0 x  �P 0 thismenuitem thisMenuItemh� �O�N�M�L�K�J�I�H�G�F�E�D�C�B�A�@�O 0 numberofitems numberOfItems�N �M (0 removeitematindex_ removeItemAtIndex_
�L 
cobj
�K 
nmbr�J 
�I 
bool
�H misccura�G 0 
nsmenuitem 
NSMenuItem�F 	0 alloc  �E 0 init  �D 0 getdevicename getDeviceName�C 0 	settitle_ 	setTitle_�B &�A 0 setsubmenu_ setSubmenu_�@ *0 insertitem_atindex_ insertItem_atIndex_�R � hb  �j+  �b  �mk+ [OY��O hkb  ��-�,Ekh  b  ��/��/�&e  @��,j+ 	j+ 
E�O�*�k+ k+ O�b  ��/��/��/k+ Ob  ��ml+ OPY h[OY��g� �?E��>�=h�h��<�? (0 drawmenudevicelist drawMenuDeviceList�>  �=  h� �;�:�9�; 0 x  �: 0 	amenucopy 	aMenuCopy�9 0 thismenuitem thisMenuItemh� �8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�8  0 removeallitems removeAllItems
�7 
cobj
�6 
nmbr�5 
�4 
bool�3 &�2 �1 0 copy  
�0 misccura�/ 0 
nsmenuitem 
NSMenuItem�. 	0 alloc  �- 0 init  �, 0 getdevicename getDeviceName�+ 0 	settitle_ 	setTitle_�* 0 setsubmenu_ setSubmenu_�) 0 additem_ addItem_�< {b  �j+  O okb  ��-�,Ekh  b  ��/��/�&e  Gb  ��/��/��/j+ E�O��,j+ 
j+ E�O�*�k+ k+ O��k+ Ob  ��k+ OPY h[OY��g� �(E��'�&h�h��%�( "0 settempwarning_ setTempWarning_�' �$h��$ h�  �#�# 
0 sender  �&  h� �"�!�" 
0 sender  �! 0 userresponse userResponseh� � ���F
�����FF#F&������F3F:���F\Fd�  0 tag  
� 
long� 0 getdevicename getDeviceName
� 
ret 
� 
dtxt
� 
cobj� 
� 
ctxt
� 
btns
� 
dflt
� 
disp
� stic   � 
� .sysodlogaskr        TEXT
� 
bhit� 
� 
ttxt
� 
doub�% �*��,�&k+ �%�%�%�b  ���,E/��/�&����mv�m��a  E�O�a ,a   2a b  ���,E/�a /FO�a ,a &b  ���,E/��/FY ?�a ,a   2a b  ���,E/�a /FO�a ,a &b  ���,E/��/FY hg� �F���h�i �� 0 dominermenu_ doMinerMenu_� �
i�
 i  �	�	 
0 sender  �  h� �� 
0 sender  i   � hg� �F���ii�� 0 getdevicename getDeviceName� �i� i  �� 0 
thisdevice 
thisDevice�  i �� 0 
thisdevice 
thisDevicei � ���   0 getdevicename_ getDeviceName_
�� 
ctxt� b  �k+  �&g� ��F�����ii���� (0 getdeviceintensity getDeviceIntensity�� ��i�� i  ���� 0 
thisdevice 
thisDevice��  i ���� 0 
thisdevice 
thisDevicei F�����F���
�� 
cobj�� �� 	�� 6b  1�  b  ��/��/EY b  1�  b  ��/��/EY hg� ��Fʹ��ii	���� 0 setintensity_ setIntensity_�� ��i
�� i
  ���� 0 
thisdevice 
thisDevice��  i ���� 0 
thisdevice 
thisDevicei	 ��F��F��F���F����G��
�� 
long�� 0 getdevicename getDeviceName�� (0 getdeviceintensity getDeviceIntensity�� 
0 msglog  
�� 
cobj�� 
�� 
ctxt�� 0 sendcommand sendCommand�� <��&E�O*�*�k+ %�%*�k+ %�l+ O*�b  ��/��/�&�%*�k+ %em+ g� ��G���ii���� $0 changeintensity_ changeIntensity_�� ��i�� i  ���� 
0 sender  ��  i ���� 
0 sender  i ���� $0 changeintensity_ changeIntensity_�� b  �k+  g� ��G�ܹ�ii���� 20 updatedockintensitymenu updateDockIntensityMenu��  ��  i  i  �� hg� ��G!�ع�ii���� 20 changeintensityinternal changeIntensityInternal�� ��i�� i  ���� 0 
thisdevice 
thisDevice��  i ���� 0 
thisdevice 
thisDevicei ���� 40 changeintensityinternal_ changeIntensityInternal_�� *�k+  g� ��G+�й�ii���� 40 changeintensityinternal_ changeIntensityInternal_�� ��i�� i  ���� 0 
thisdevice 
thisDevice��  i ���� 0 
thisdevice 
thisDevicei �ʹɹȹ�
�� 
long�� 20 updatedockintensitymenu updateDockIntensityMenu�� *0 requestsavesettings requestSaveSettings�� 0 setintensity_ setIntensity_�� ��&E�O*j+ O*j+ O*�k+ g� ��GP�Ź�ii���� .0 togglestartstopminer_ toggleStartStopMiner_�� ��i�� i  ���� 
0 sender  ��  i ���� 
0 sender  i ��Ge��GmGtG�G�����G���G�G�G��� 0 	stopminer 	stopMiner�� 0 	settitle_ 	setTitle_�� �� 0 setstatusline setStatusLine�� 0 
startminer 
startMiner�� sb  �e  +*j+  Ob  ��k+ Ob  }�k+ Ob  ]�k+ Y Ab  �f  6*�ej��+ O*�k+ 
Ob  ��k+ Ob  }�k+ Ob  ]�k+ Y hg� ��G�����ii����  0 closepoolsheet closePoolSheet��  ��  i  i ��������
�� misccura�� 0 nsapp NSApp�� 0 	endsheet_ 	endSheet_�� 0 	orderout_ 	orderOut_�� ��,b  Rk+ Ob  Rb  Rk+ g� ��G�����ii���� $0 poolsheetaccept_ poolSheetAccept_�� ��i�� i  ���� 
0 sender  ��  i ������������ 
0 sender  �� 0 oldcoin oldCoin�� 0 foundit  �� 0 x  �� 0 pwresult pwResulti "Gӹ���G߹���G򹣹�H1����HWH�����H鹝��H�II	����III#��I*��IH�������� 0 stringvalue stringValue
�� 
ctxt�� �� 0 setstatusline setStatusLine
�� 
cobj
�� 
nmbr�� *0 titleofselecteditem titleOfSelectedItem�� �� �� 0 setpassword__ setPassword__�� $0 populatepoollist populatePoolList�� *0 requestsavesettings requestSaveSettings�� 0 
startminer 
startMiner�� 0 setpools setPools�� 0 	stopminer 	stopMiner��  0 closepoolsheet closePoolSheet�� "0 setstringvalue_ setStringValue_�� 0 
blackcolor 
blackColor�� 0 settextcolor_ setTextColor_��Lb  1E�O*�b  �j+ �&%el��+ OfE�Ob  %� � �kb  ��-�,Ekh b  %�k/�&b  ��/�k/�&  pb  �j+ �&b  ��/�l/FOb  �j+ �&b  ��/�m/FO�b  ��/��/FOb  �j+ 
�&b  ��/��/FOb  �j+ 
�&Ec  1OeE�Y �b  ��/��/F[OY�dY hOb  ��-�,k hY hO�f  � $kb  ��-�,Ekh �b  ��/��/F[OY��Ob  �j+ �&b  �j+ �&b  �j+ �&kb  �j+ 
�&b  -�vb  �6FOb  �j+ �&Ec  1Ob  -kEc  -Y hOb  b  �j+ �&b  �j+ �&l+ �&E�Ob  %a   
*j+ Y hO*j+ Ob  �f  *a eja �+ O*a k+ Y :b  1�  
*j+ Y (*a b  1%a %eja �+ O*j+ O*a k+ OjvEc  %O*j+ Ob  �a k+ Ob  �b  Oa  ,k+ !OPg� ��IX����ii���� $0 poolsheetcancel_ poolSheetCancel_�� ��i �� i   ���� 
0 sender  ��  i �������������� 
0 sender  �� 0 	alivepool 	alivePool�� 0 	temppools 	tempPools�� 0 x  �� &0 lookupcurrentpool lookupCurrentPool�� 0 numpools numPoolsi  I`����It����I�I���Iǹ�Iٹ�I�I�JJJ(J;J@��JEJH��JN�JwJ��~J�J��}�� 0 stringvalue stringValue
�� 
ctxt
�� 
cobj
�� 
nmbr�� 0 sendcommand sendCommand�� 0 splitstring splitString�� 
�� 
bool�� 
0 msglog  � ,0 selectitemwithtitle_ selectItemWithTitle_�~ 0 setstatusline setStatusLine�}  0 closepoolsheet closePoolSheet����E�Ob  �j+ �&�  HjvE�O =kb  ��-�,Ekh b  ��/�k/b  %�k/ b  ��/�6FY h[OY��Y hOjvEc  %Ob  !e "*��fm+ E�O*��l+ 
E�O*��k/�l+ 
��/E�O*��l+ 
�l/E�O*��l+ 
�k/E�O�k L Fk��-�,Ekh b  2�/� '*��/a l+ 
�l/E�O*�a l+ 
�l/E�OY h[OY��Y hO�a  	 �a a & *a a l+ Y l�a  c ]kb  ��-�,Ekh b  ��/�l/�&�  5b  `b  ��/�k/k+ O*a b  ��/�k/%fma �+ OY h[OY��Y hY *a fja �+ O*j+ OPg� �|J��{�zi!i"�y�| "0 feedbackcancel_ feedBackCancel_�{ �xi#�x i#  �w�w 
0 sender  �z  i! �v�v 
0 sender  i" �uJ��t�u 	0 close  �t 0 
setstring_ 
setString_�y b  Tj+  Ob  ��k+ g� �sJ��r�qi$i%�p�s "0 feedbackaccept_ feedbackAccept_�r �oi&�o i&  �n�n 
0 sender  �q  i$ 
�m�l�k�j�i�h�g�f�e�d�m 
0 sender  �l 0 	senddebug 	sendDebug�k 0 thismsg thisMsg�j 0 	thisemail 	thisEmail�i 0 logfile1 logFile1�h 0 logfile2 logFile2�g 0 sendlog1 sendLog1�f 0 sendlog2 sendLog2�e 0 thiscmd thisCmd�d 0 	catchnull 	catchNulli% *�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�UK�T�S�RKb�Q�PKqK�K�K�K�K�K�K�K�K�K��O�N�M�LK׹KK�K�J�c 	0 state  �b "0 createdebugfile createDebugFile
�a afdrtemp
�` 
from
�_ fldmfldu
�^ 
rtyp
�] 
ctxt�\ 
�[ .earsffdralis        afdr
�Z 
psxp�Y  0 cleandebugfile cleanDebugFile�X 0 textstorage textStorage�W 0 mutablestring mutableString
�V 
strq�U 0 stringvalue stringValue
�T 
cobj�S 
�R *0 requestsavesettings requestSaveSettings
�Q 
psxf
�P .coredoexbool        obj 
�O .sysoexecTEXT���     TEXT�N  �M  �L 	0 close  �K 0 
setstring_ 
setString_�J 0 setstatusline setStatusLine�p�fE�Ob  �j+  k  <*j+ O*������ b  %�,k+ 
O*������ b  %�,k+ 
OeE�Y hOb  ��,j+ �&�,E�Ob  �j+ �&E�O�� ��&b  �a a /FO*j+ Y hO������ �,b  %E�O������ �,b  %E�Oa  -�a &j  eE�Y fE�O�a &j  eE�Y fE�UO�e  Ra E�O�e  �a %�%a %E�Y hO�e  �a %�%a %E�Y hO�a %��,%a %��,%a %E�Y a ��,%a %��,%a  %E�O �j !E�W X " #hOb  Tj+ $Ob  �a %k+ &O*a 'f�a (�+ )g� �IK�H�Gi'i(�F�I "0 showprefsubview showPrefSubview�H �Ei)�E i)  �D�D "0 newsubviewindex newSubviewIndex�G  i' �C�B�A�@�?�C "0 newsubviewindex newSubviewIndex�B $0 animationcontext animationContext�A 0 toolbarheight toolbarHeight�@ *0 newprefswindowframe newPrefsWindowFrame�? 0 newframe newFramei( �>�=�<�;�:L	�9�8�7�6�5�4�3�2�1�0�/�.�-�,
�> 
long
�= misccura�< (0 nsanimationcontext NSAnimationContext�; 0 begingrouping beginGrouping�:  0 currentcontext currentContext�9 0 setduration_ setDuration_�8 0 animator  �7 0 contentview contentView
�6 
cobj�5 ,0 replacesubview_with_ replaceSubview_with_�4 	0 frame  �3 0 size  �2 
0 height  
�1 
doub�0 
0 origin  �/ 0 y  �. &0 setframe_display_ setFrame_display_�- 0 	setframe_ 	setFrame_�, 0 endgrouping endGrouping�F ��&E�O��,E�O�j+ O��,�k+ Ob  Sj+ j+ b  ��b  �/b  ��/l+ 
Ob  Sj+ �,�,b  S�,j+ �,�,E�Ob  Sj+ E�Ob  ��/�&���,�,FO��,a ,b  ��/b  ��b  �/��,a ,FOb  Sj+ �el+ Ob  ��/j+ E�Oj��,a ,FOb  ��/j+ �k+ O�j+ O�Ec  �g� �+L��*�)i*i+�(�+ &0 prefsshowgeneral_ prefsShowGeneral_�* �'i,�' i,  �&�& 
0 sender  �)  i* �%�% 
0 sender  i+ �$�$ "0 showprefsubview showPrefSubview�( b  �k *kk+  Y hg� �#Lȹ"�!i-i.� �# (0 prefsshowlitecoin_ prefsShowLitecoin_�" �i/� i/  �� 
0 sender  �!  i- �� 
0 sender  i. ���L��L��MM����M2M8��
� 
cobj� 
� 
ctxt� 0 	setstate_ 	setState_� � � "0 setstringvalue_ setStringValue_
� 
long� 0 setintvalue_ setIntValue_� � 0 	settitle_ 	setTitle_� "0 showprefsubview showPrefSubview�  �b  �l �b  ���/�&�  b  tek+ Y b  tfk+ Ob  ���/�&�  b  sek+ Y b  sfk+ Ob  ���/�&�  b  q�k+ 
Y b  qb  ���/�&k+ Ob  ���/�&�  b  r�k+ Y b  rb  ���/�&k+ O*lk+ OPY hg� �MO��i0i1�� .0 prefsshowmobileminer_ prefsShowMobileMiner_� �i2� i2  �� 
0 sender  �  i0 �
�	����
 
0 sender  �	 0 
mminfotext 
mmInfoText� 0 
attribdict 
attribDict� 0 attribtitle attribTitle�  0 attribdictmore attribDictMorei1 $������ ��M�M�����M�M�M�M�����������������������N3���������
� 
cobj� 
� 
bool� 0 	setstate_ 	setState_� �  
�� 
ctxt�� "0 setstringvalue_ setStringValue_�� �� 0 setenabled_ setEnabled_�� 	0 title  
�� misccura�� 0 nsdictionary NSDictionary�� 0 nsfont NSFont�� �� "0 menufontofsize_ menuFontOfSize_�� *0 nsfontattributename NSFontAttributeName
�� 
msng�� >0 dictionarywithobjectsandkeys_ dictionaryWithObjectsAndKeys_�� 60 nsmutableattributedstring NSMutableAttributedString�� 	0 alloc  �� 80 initwithstring_attributes_ initWithString_attributes_�� �� T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_�� @0 nsforegroundcolorattributename NSForegroundColorAttributeName
�� 
leng�� ,0 addattributes_range_ addAttributes_range_�� *0 setattributedtitle_ setAttributedTitle_�� "0 showprefsubview showPrefSubview��b  �m�b  ���/�&e  b  xek+ Y b  xfk+ Ob  ���/�&e  b  yek+ Y b  yfk+ Ob  ���/�&�  b  z�k+ 	Y b  zb  ���/�&k+ 	Ob  ���/�&�  b  {�k+ 	Y b  {b  ���/�&k+ 	Ob  ���/�&� 
 b  ���/�&� �& b  xfk+ Ob  yfk+ Y hOb  �j+ �&E�Oa a ,a a ,a k+ a a ,a m+ E�Oa a ,j+ ��l+ E�Oa a ,b  Ojja ka + a a ,a m+ E�O��j�a  ,lvl+ !Ob  ��k+ "O*mk+ #OPY hg� ��N]���i3i4���� &0 prefswindowclose_ prefsWindowClose_�� ��i5�� i5  ���� 
0 sender  ��  i3 ���� 
0 sender  i4 	Nj��Np��Nv��N|�޸��� &0 entercoinaddress_ enterCoinAddress_�� 00 setprefsscryptthreads_ setPrefsScryptThreads_�� >0 entermobilemineremailaddress_ enterMobileMinerEmailAddress_�� 20 entermobileminerappkey_ enterMobileMinerAppKey_�� *0 requestsavesettings requestSaveSettings�� "*�k+ O*�k+ O*�k+ O*�k+ O*j+ g� ��N��۸�i6i7����  0 getcoinbalance getCoinBalance�� ��i8�� i8  ���� 0 thisaddy thisAddy��  i6 ���� 0 thisaddy thisAddyi7 �ո��� "0 getcoinbalance_ getCoinBalance_
�� 
ctxt�� b  �k+  �&g� ��N��Ҹ�i9i:���� 0 	stopminer 	stopMiner��  ��  i9 �ϸθ͸̸˸��� 0 
timetoquit 
timeToQuit�� *0 timetoquitincrement timeToQuitIncrement�� :0 timetoquitescalatethreshold timeToQuitEscalateThreshold�� 0 	delaytest 	delayTest�� 0 testme testMe�� 0 x  i: =N�N��ɸȸǸƸ�N�N�Nظĸø�O O����OO+O-������O5OG��OgOi��������OwO{��O�O�O�������O�Oɸ�������������������������P�������P��� 
0 msglog  �� &0 stopruntimetimers stopRuntimeTimers�� 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� �� 0 setstatusline setStatusLine�� �� 0 sendcommand sendCommand
�� .sysodelanull��� ��� nmbr
�� .sysoexecTEXT���     TEXT��  ��  �� "0 setdoublevalue_ setDoubleValue_�� "0 setstringvalue_ setStringValue_
�� 
cobj�� 	
�� 
ctxt�� (0 setdockbadgestring setDockBadgeString�� 0 	settitle_ 	setTitle_�� (0 disableallcontrols disableAllControls�� 0 setenabled_ setEnabled_
�� 
nmbr�� �� 
�� 
long�� �� 0 roundnumber roundNumber�� �� �� �� �� �� 
�� 
bool�� �� �� (0 updatedevicelistui updateDeviceListUI��A*��l+ O*j+ O*b  Gk+ O���/Ec  GOjvEc  &O*�ej��+ O�E�OkE�O�E�O*��em+ O�j O sj��h a E�O a b  %a %j E�W X  hO�a   Y hO�� & a b  %j W X  hO�l j Y hO�j [OY��Ob  Ujk+ Ob  Va a %k+ Ob  �a a /a &a    *a !k+ "Y hO*a #fja $�+ Ob  ]a %k+ &O*j+ 'Ob  `ek+ (Ob  aek+ (Ob  �ek+ (Ob  }ek+ (Ob  �a )k+ &Ob  }a *k+ &O�kb  �a -a +,Ekh jb  �a �/a a ,/FO*b  �a �/a a -/a .&b  �a �/a a //a .&jl+ 0a .&b  �a �/a a -/FO*b  �a �/a a 1/a .&b  �a �/a a 2/a .&jl+ 0a .&b  �a �/a a 1/FO*b  �a �/a a 3/a .&b  �a �/a a 4/a .&jl+ 0a .&b  �a �/a a 3/FOjb  �a �/a a //FOjb  �a �/a a 2/FOjb  �a �/a a 4/FOjb  �a �/a a 5/FOb  �a �/a a 6/a 7&e  a 8b  �a �/a a 9/FY hOfb  �a �/a a :/F[OY�wO*j+ ;OfEc  !OfEc  �Oa <Ec  OjEc  �OjEc  /Ohg� ��P�����i;i<���� (0 startdonationtimer startDonationTimer��  ��  i;  i< ������Q��������QQ������ 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� 0 nstimer NSTimer
�� 
cobj�� �� <�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� 4*b  ?k+  O���/Ec  ?O��,b  ���/� � )��e�+ Ec  ?g� ��Q'����i=i>����  0 dodonationpool doDonationPool��  ��  i= ���������� 0 	donorpool 	donorPool�� 0 addedit addedIt�� 0 
countpools 
countPools�� 0 x  i> 9Q.Q1��Q>������QD��QQ����QjQoQq������QyQ|Q�Q�Q�Q�����Q�Q�Q�Q�Q�Q�Q市Q�Q�RRR%R2R?RARDRWR[R^Rd����R{R�R�R�R�R�R��� 
0 msglog  
�� 
cobj�� 
�� 
ctxt�� <�� �� 0 setstatusline setStatusLine
�� .sysoexecTEXT���     TEXT��  ��  �� 0 splitstring splitString
�� 
nmbr�� 0 sendcommand sendCommand
�� misccura�� 0 nstimer NSTimer� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_���*��l+ O*�b  ���/%�&�%fb  ���/� ��+ O �b  ���/%�%b  1%�%j E�W X  *a a l+ OhO�a   *a a l+ OhY hO*�a l+ E�O��-a ,k *a a l+ Y *a a l+ OhO*a ��k/a %��l/%a  %��m/%fm+ !E�O*a "a #fm+ !E�O*�a $l+ �k/E�O*�a %l+ ��/E�O*�a &l+ �l/E�O*�a 'l+ �k/E�O*a (�%a )%a *l+ O 0k�kkh *a +�k%a ,%a -l+ O*a .�kem+ ![OY��Oa /a 0,�)a 1a 2f�+ 3Ec  BO*a 4b  ���/%a 5%a 6l+ Oa /a 0,b  ���/� )a 7a 8f�+ 3Ec  @g� �~R��}�|i?i@�{�~ (0 finishdonationpool finishDonationPool�}  �|  i?  i@ R�RøzRиy�x�wR�Rݸv�u�t�s�rR�q�z 
0 msglog  
�y 
cobj�x 
�w 
ctxt�v �u 0 setstatusline setStatusLine�t 0 	killtimer 	killTimer
�s misccura
�r 
pcls�q 0 setpools setPools�{ =*��l+ O*�b  ���/%�&�%f���+ 
O*b  ?k+ O���/Ec  ?O*j+ OPg� �pR��o�niAiB�m�p $0 setintensityto1_ setIntensityTo1_�o �liC�l iC  �k�k 
0 sender  �n  iA �j�i�j 
0 sender  �i 0 x  iB �h�g�f�eSS �dS.�c�b�a
�h 
cobj
�g 
nmbr�f 
�e 
ctxt�d �c �b 	�a 20 changeintensityinternal changeIntensityInternal�m k ikb  ��-�,Ekh b  ��/��/�&�  Ab  1�  kb  ��/��/FY b  1�  �b  ��/��/FY hO*�k+ 
Y h[OY��g� �`SE�_�^iDiE�]�` $0 setintensityto4_ setIntensityTo4_�_ �\iF�\ iF  �[�[ 
0 sender  �^  iD �Z�Y�Z 
0 sender  �Y 0 x  iE �X�W�V�US_Si�T�SSw�R�Q�P
�X 
cobj
�W 
nmbr�V 
�U 
ctxt�T �S �R 
�Q 	�P 20 changeintensityinternal changeIntensityInternal�] k ikb  ��-�,Ekh b  ��/��/�&�  Ab  1�  �b  ��/��/FY b  1�  �b  ��/��/FY hO*�k+ Y h[OY��g� �OS��N�MiGiH�L�O $0 setintensityto7_ setIntensityTo7_�N �KiI�K iI  �J�J 
0 sender  �M  iG �I�H�I 
0 sender  �H 0 x  iH �G�F�E�DS�S��C�B�A�@S˸?�>
�G 
cobj
�F 
nmbr�E 
�D 
ctxt�C �B 80 checkfirstintensitywarning checkFirstIntensityWarning
�A 
bool�@ 20 changeintensityinternal changeIntensityInternal�? �> 	�L � �kb  ��-�,Ekh b  ��/��/�&�  bb  1� 	 *�k+ e �& �b  ��/��/FO*�k+ 	Y 1b  1� 	 *�k+ e �& �b  ��/��/FO*�k+ 	Y hY h[OY��g� �=S�<�;iJiK�:�= $0 gethashratelabel getHashRateLabel�< �9iL�9 iL  �8�7�6�8 0 therate theRate�7 0 	withunits 	withUnits�6 0 	shortened  �;  iJ �5�4�3�5 0 therate theRate�4 0 	withunits 	withUnits�3 0 	shortened  iK �2�1�2 *0 gethashratelabel___ getHashRateLabel___
�1 
ctxt�: b  ���m+  �&h  �0T �/�.iMiN�-�0 80 checkfirstintensitywarning checkFirstIntensityWarning�/ �,iO�, iO  �+�+ 0 anint anInt�.  iM �*�* 0 anint anIntiN �)�(�) :0 checkfirstintensitywarning_ checkFirstIntensityWarning_
�( 
bool�- b  �k+  �&h �'T�&�%iPiQ�$�' $0 minpowermaxhash_ minPowerMaxHash_�& �#iR�# iR  �"�" 
0 sender  �%  iP �!� �! 
0 sender  �  0 userresponse userResponseiQ �T���T(T+����T8
� .miscactvnull��� ��� null
� 
disp
� stic   
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT
� 
bhit�$ (*j  O������lv�l� 	E�O��,�  hY hOPh �TG��iSiT�� &0 setdonateminutes_ setDonateMinutes_� �iU� iU  �� 
0 sender  �  iS �� 
0 sender  iT ������� *0 titleofselecteditem titleOfSelectedItem
� 
ctxt
� 
cobj� � ,0 updatedonateperhours updateDonatePerHours� *0 requestsavesettings requestSaveSettings� �j+  �&b  ���/FO*ek+ O*j+ h �
Ta�	�iViW��
 (0 setdonateperhours_ setDonatePerHours_�	 �iX� iX  �� 
0 sender  �  iV �� 
0 sender  iW ���� ����� 0 intvalue intValue
� 
long
� 
cobj�  �� ,0 updatedonateperhours updateDonatePerHours�� *0 requestsavesettings requestSaveSettings� �j+  �&b  ���/FO*ek+ O*j+ h ��T|����iYiZ���� ,0 updatedonateperhours updateDonatePerHours�� ��i[�� i[  ���� 0 resettimers resetTimers��  iY �������� 0 resettimers resetTimers�� 0 outputstring outputString�� 0 thepct thePctiZ ������T����T���T÷�������T�UUUU"U(��UEUJUM��URUU
�� 
bool�� 0 	killtimer 	killTimer
�� misccura
�� 
pcls
�� 
cobj�� 
�� 
ctxt�� "0 setstringvalue_ setStringValue_�� �� <�� d�� 

�� .sysorondlong        doub�� (0 startdonationtimer startDonationTimer�� 
0 msglog  ����&E�O�e  *b  ?k+ O���/Ec  ?Y hOb  ���/k  b  ���/�%�&E�Y b  ���/�%�&E�Ob  h�k+ 
Ob  ���/b  ���/b  ���/� !� E�O�� j E�O�a !E�Ob  ia �%a %�&k+ 
Ob  ���/a   b  ja k+ 
Y b  ja k+ 
O�e  >b  ���/j #*j+ O*a b  ���/%a %a l+ Y *a a l+ Y hOPh ��U]���i\i]���� ,0 gotoasteroidwebsite_ gotoAsteroidWebsite_�� ��i^�� i^  ���� 
0 sender  ��  i\ ���� 
0 sender  i] ��
�� .GURLGURLnull��� ��� TEXT�� 
b  j  h ��Uf�ܷ�i_i`���� .0 gotoasteroiddonation_ gotoAsteroidDonation_�� ��ia�� ia  ���� 
0 sender  ��  i_ ���� 
0 sender  i` ��
�� .GURLGURLnull��� ��� TEXT�� 
b  j  h ��Uo�Է�ibic���� 20 gotomobileminerwebsite_ gotoMobileMinerWebsite_�� ��id�� id  ���� 
0 sender  ��  ib ���� 
0 sender  ic Us��
�� .GURLGURLnull��� ��� TEXT�� �j h ��Uz�̷�ieif���� (0 gotopoolstatspage_ gotoPoolStatsPage_�� ��ig�� ig  ���� 
0 sender  ��  ie �ǷƷ��� 
0 sender  �� 0 x  �� 0 testurl testURLif �ķ÷·�����U�U���VVVV!V$��V-
�� 
cobj
�� 
nmbr�� 
�� 
ctxt�� 
�� .GURLGURLnull��� ��� TEXT�� 0 splitstring splitString�� 
0 msglog  �� � Jkb  ��-�,Ekh b  ��/��/�&b  2��/�&  b  ��/�m/�&j OhY h[OY��O Jkb  ��-�,Ekh b  ��/��/�&b  2��/�&  b  ��/�m/�&j OhY h[OY��Ob  2�l/�&E�O�� *��l+ �l/E�Y hO�� *��l+ �k/E�Y *�b  2�k/%�%�l+ OhO�%j OPh	 ��V5����ihii���� &0 entercoinaddress_ enterCoinAddress_�� ��ij�� ij  ���� 
0 sender  ��  ih ���� 
0 sender  ii ����������������VV��VeVi����Vt������ 0 stringvalue stringValue
�� 
ctxt
�� 
cobj�� �� &0 updatecoinbalance updateCoinBalance�� 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� 0 
sethidden_ 
setHidden_�� *0 requestsavesettings requestSaveSettings�� lb  kj+  �&b  ���/FO*j+ O*b  Ak+ O���/Ec  AO��,b  
)��e�+ Ec  AO�Ec  �Ob  �fk+ Ob  �ek+ O*j+ h
 ��V�����ikil���� (0 setdockbadgestring setDockBadgeString�� ��im�� im  ���� "0 dockbadgestring dockBadgeString��  ik ������ "0 dockbadgestring dockBadgeString�� 0 appdocktile appDockTileil ����������
�� misccura�� 0 nsapp NSApp�� 0 docktile dockTile
�� 
ctxt��  0 setbadgelabel_ setBadgeLabel_�� ��,j+ E�O���&k+ h ��V�����inio���� 0 togglebadge_ toggleBadge_�� ��ip�� ip  ���� 
0 sender  ��  in ������ 
0 sender  �� 0 toggleto toggleToio ����������V������� 	0 state  
�� 
long
�� 
ctxt
�� 
cobj�� 	�� (0 setdockbadgestring setDockBadgeString�� *0 requestsavesettings requestSaveSettings�� "��,�&E�O��&b  ���/FO*�k+ O*j+ h ��Vŷ���iqir���� 20 toggledisablegpumining_ toggleDisableGPUMining_�� ��is�� is  ���� 
0 sender  ��  iq ������ 
0 sender  �� 0 toggleto toggleToir ����������V��~�}V�|�{�z�y�� 	0 state  
�� 
long
�� 
bool
�� 
cobj�� 
� 
disp
�~ stic   
�} 
btns
�| 
dflt�{ 
�z .sysodlogaskr        TEXT�y *0 requestsavesettings requestSaveSettings�� 5��,�&E�O��&b  ���/FOb  � �����kv�k� Y hO*j+ h �xV��w�vitiu�u�x :0 togglesendlitecoinsettings_ toggleSendLitecoinSettings_�w �tiv�t iv  �s�s 
0 sender  �v  it �r�q�r 
0 sender  �q 0 toggleto toggleToiu �p�o�n�m�l�k�p 	0 state  
�o 
long
�n 
ctxt
�m 
cobj�l �k *0 requestsavesettings requestSaveSettings�u ��,�&E�O��&b  ���/FO*j+ h �jW�i�hiwix�g�j 80 togglegetlitecoinsettings_ toggleGetLitecoinSettings_�i �fiy�f iy  �e�e 
0 sender  �h  iw �d�c�d 
0 sender  �c 0 toggleto toggleToix �b�a�`�_�^�]�\�b 	0 state  
�a 
long
�` 
ctxt
�_ 
cobj�^ �] *0 requestsavesettings requestSaveSettings�\ 40 startgetlitecoinhashrate startGetLitecoinHashrate�g /��,�&E�O��&b  ���/FO*j+ Ob  �e  
*j+ Y hh �[W8�Z�Yizi{�X�[ 0 	killtimer 	killTimer�Z �Wi|�W i|  �V�V 0 	thistimer 	thisTimer�Y  iz �U�T�U 0 	thistimer 	thisTimer�T 0 err  i{ �S�R�Q�S 0 
invalidate  �R 0 err  �Q  �X  
�j+  W X  hh �PWI�O�Ni}i~�M�P <0 togglemobileminersendstatus_ toggleMobileMinerSendStatus_�O �Li�L i  �K�K 
0 sender  �N  i} �J�I�J 
0 sender  �I 0 toggleto toggleToi~ �H�G�F�EWmWp�D�C�B�AW��@W��?W�W�W��>W�W��=�<W�WϷ;�:�H 	0 state  
�G 
bool
�F 
cobj�E �D 
0 msglog  �C 0 	killtimer 	killTimer
�B misccura
�A 
pcls�@ �? �> 0 nstimer NSTimer�= �< �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�; 0 	setstate_ 	setState_�: *0 requestsavesettings requestSaveSettings�M ���,�&E�O��&b  ���/FO�f  "*��l+ O*b  Jk+ O���/Ec  JY hb  ���/�	 b  ���/��& :��&b  ���/FO*�a l+ O�a ,b  )a a fa + Ec  JY *a a l+ O�fk+ O*j+ h �9Wܷ8�7i�i��6�9 >0 togglemobileminerallowremote_ toggleMobileMinerAllowRemote_�8 �5i��5 i�  �4�4 
0 sender  �7  i� �3�2�3 
0 sender  �2 0 toggleto toggleToi� �1�0�/�.W�X�-�,�+�*X�)XX(X+�(X>XB�'�&XMXP�%�$�1 	0 state  
�0 
bool
�/ 
cobj�. �- 
0 msglog  �, 0 	killtimer 	killTimer
�+ misccura
�* 
pcls�) �( 0 nstimer NSTimer�' �& �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�% 0 	setstate_ 	setState_�$ *0 requestsavesettings requestSaveSettings�6 ���,�&E�O�b  ���/FO�f  "*��l+ O*b  Kk+ O���/Ec  KY Hb  ���/� )*��l+ O��,b  )a a fa + Ec  KY *a a l+ O�fk+ O*j+ h �#X]�"�!i�i�� �# >0 entermobilemineremailaddress_ enterMobileMinerEmailAddress_�" �i�� i�  �� 
0 sender  �!  i� �� 
0 sender  i� ��Xm��������X�X���X�X��YY��Y,Y0�� 0 stringvalue stringValue
� 
ctxt
� 
cobj� � � 0 setenabled_ setEnabled_� 0 	setstate_ 	setState_� 0 	killtimer 	killTimer
� misccura
� 
pcls� � 
� 
bool� 0 nstimer NSTimer� � �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_� *0 requestsavesettings requestSaveSettings� 9b  zj+  �&�  rfb  ���/FOfb  ���/FOb  xfk+ Ob  yfk+ Ob  xfk+ Ob  yfk+ O*b  Kk+ O���/Ec  KO*b  Kk+ O���/Ec  KY �b  zj+  �&b  ���/FOb  ���/�&�	 b  ���/�&a a & zb  xek+ Ob  yek+ Ob  ���/e  #�a ,b  )a a fa + Ec  KY hOb  ���/e  #�a ,b  )a a fa + Ec  JY hY hO*j+ h �Y;�
�	i�i��� 20 entermobileminerappkey_ enterMobileMinerAppKey_�
 �i�� i�  �� 
0 sender  �	  i� �� 
0 sender  i� ��YK��� ����������Y���Y���Y�����Y�Y����Y�Y���� 0 stringvalue stringValue
� 
ctxt
� 
cobj� �  �� 0 setenabled_ setEnabled_�� 0 	setstate_ 	setState_�� 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� �� 
�� 
bool�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� *0 requestsavesettings requestSaveSettings�!b  {j+  �&�  \fb  ���/FOfb  ���/FOb  xfk+ Ob  yfk+ Ob  xfk+ Ob  yfk+ O*b  Kk+ O���/Ec  KY �b  {j+  �&b  ���/FOb  ���/�&�	 b  ���/�&�a & zb  xek+ Ob  yek+ Ob  ���/e  #�a ,b  )a a fa + Ec  KY hOb  ���/e  #�a ,b  )a a fa + Ec  JY hY hO*j+ h ��Z
���i�i����� 00 setprefsscryptthreads_ setPrefsScryptThreads_�� ��i��� i�  ���� 
0 sender  ��  i� ���� 
0 sender  i� ��������� 0 stringvalue stringValue
�� 
ctxt
�� 
cobj�� �� 0 
sethidden_ 
setHidden_�� *0 requestsavesettings requestSaveSettings�� &b  qj+  �&b  ���/FOb  vek+ O*j+ h ��Z&���i�i����� 20 setprefsscryptworksize_ setPrefsScryptWorksize_�� ��i��� i�  ���� 
0 sender  ��  i� ���� 
0 sender  i� �߶޶ݶܶ۶��� *0 titleofselecteditem titleOfSelectedItem
�� 
ctxt
�� 
cobj�� �� 0 
sethidden_ 
setHidden_�� *0 requestsavesettings requestSaveSettings�� &b  rj+  �&b  ���/FOb  wek+ O*j+ h ��ZB�ض�i�i����� 40 startgetlitecoinhashrate startGetLitecoinHashrate��  ��  i�  i� 	�նԶ�ZO��Z]Za�Ѷ��� 0 	killtimer 	killTimer
�� misccura
�� 
pcls�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� -*b  Ek+  O���/Ec  EO��,b  )��f�+ Ec  Eh ��Zk�ζ�i�i����� ,0 dockchangeintensity_ dockChangeIntensity_�� ��i��� i�  ���� 
0 sender  ��  i� �ɶ��� 
0 sender  �� 0 thisval thisVali� �Ƕ�Z~Z��Ŷ�Z��ö�Z����� 	0 title  
�� 
ctxt
�� 
cobj�� �� �� �� 20 changeintensityinternal changeIntensityInternal�� k�j+  �&E�O��  hY Qb  1�  �b  ���/FY b  1�  �b  ���/FY hOb  ���/�&�  hY hOjb  ���/FO*�k+ 
h ��Z�����i�i����� "0 getsystemconfig getSystemConfig��  ��  i�  i� ������ "0 getsystemconfig getSystemConfig
�� 
list�� b  j+  �&h ��Zȶ���i�i����� H0 "checkbetterscryptsettingsonserver_ "checkBetterScryptSettingsOnServer_�� ��i��� i�  ���� 
0 sender  ��  i� �������������� 
0 sender  �� 0 
mycomputer 
myComputer�� 0 thiscmd thisCmd�� 0 replystring replyString�� 0 
thisconfig 
thisConfig�� 0 	theresult 	theResulti� B��Z�Z�Z�Z�����[��[[ [%['��[?��[C[P[S[[[^[j����[z[�[�[���[ʶ�����[ٶ���\����\�\�\�\�\�\ٶ�]����]��]������]]��������]*]8��]=���� 0 
sethidden_ 
setHidden_�� 
0 msglog  �� "0 getsystemconfig getSystemConfig
�� 
cobj
�� .sysoexecTEXT���     TEXT
�� 
bool�� 0 splitstring splitString
�� 
ctxt�� �� �� T0 (colorwithcalibratedred_green_blue_alpha_ (colorWithCalibratedRed_green_blue_alpha_�� 0 settextcolor_ setTextColor_�� "0 setstringvalue_ setStringValue_�� 
�� 
doub�� 0 redcolor redColor�� 0 	isvisible 	isVisible�� d�� 0 roundnumber roundNumber
�� 
ret 
�� 
disp
�� stic   
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� .0 makekeyandorderfront_ makeKeyAndOrderFront_�� (0 prefsshowlitecoin_ prefsShowLitecoin_��Sb  vek+  Ob  wek+  Ob  �j  !�� *�b  %�%�l+ Y hOhY hO*j+ E�O��k/%�%��l/%�%��m/%�%b  �%�%E�O�j E�O�j 
 �� �&
 	�a  �& *a a l+ OhY *a �%a l+ O*�a l+ E�O��l/a &a   a ��l/FY hO��m/a &a   a ��m/FY hO��l/a &b  ��a /a &  7b  vb  Oja jka + k+  Ob  vfk+  Ob  va !k+ "Y hO��m/a &b  ��a #/a &  7b  wb  Oja jka + k+  Ob  wfk+  Ob  wa $k+ "Y hO��l/a &b  ��a /a & 	 ��m/a &b  ��a #/a & �& hY hO��k/b  �a %&b  a %& j��l/a &b  ��a /a & Rb  vb  Oa &,k+  Ob  vfk+  O��l/a '  b  va (k+ "Y b  va )��l/a &%k+ "Y hO��m/a &b  ��a #/a & Rb  wb  Oa &,k+  Ob  wfk+  O��m/a *  b  wa +k+ "Y b  wa ,��m/a &%k+ "Y hOb  �l	 b  Sj+ -f �& ta .*��k/b  �!a / jl+ 0%a &a 1%_ 2%_ 2%a 3%a 4a 5a 6a 7a 8lva 9la : ;E�O�a <,a =  b  Sa >k+ ?O*a @k+ AY hY hY hOPh ��]H����i�i����� 60 sendaveragescrypthashrate sendAverageScryptHashrate��  ��  i� ������ 0 
mycomputer 
myComputer�� 0 thecmd theCmdi� ]Q]T����]���]�]�]�]�����]ö�]˶�����]�]��� 
0 msglog  �� "0 getsystemconfig getSystemConfig
�� 
cobj�� 
�� 
ctxt�� 
�� .sysoexecTEXT���     TEXT��  ��  �� i*��l+ O*j+ E�O E��k/%�%��l/%�%��m/%�%b  �%�%b  ���/�&%�%b  ���/�&%�%E�O�j W X  *a a l+ OPh ��]ݶ���i�i���� 40 getaveragescrypthashrate getAverageScryptHashrate��  ��  i� �~�}�~ 0 logtail logTail�} 0 	ahashrate 	aHashRatei� ]�]��|�{^�z�y^�x�w�v�u�t�s^M�r�q�p^a^e�o�n�m�l^t
�| .sysoexecTEXT���     TEXT
�{ 
cpar�z 0 splitstring splitString
�y 
cobj
�x 
doub�w��v  �u  �t �s 
�r 
bool�q 60 sendaveragescrypthashrate sendAverageScryptHashrate�p �o H0 "checkbetterscryptsettingsonserver_ "checkBetterScryptSettingsOnServer_�n 0 	killtimer 	killTimer
�m misccura
�l 
pcls� ��b   %b  %�%j E�O -*��i/�l+ �m/E�O*��l+ �k/E�O��&E�O��!E�W 
X 
 jE�O�Ec  �Ob  �b  ���/FOb  ���/k 
 b  ���/� �& 
*j+ Y hOb  ��a /k 
 b  ��a /a  �& *a k+ Y hO*b  Ek+ Oa a a /Ec  EOPh �k^|�j�ii�i��h�k 0 splitstring splitString�j �gi��g i�  �f�e�f 0 sometext someText�e 0 	delimiter  �i  i� �d�c�d 0 sometext someText�c 0 	delimiter  i� �b�a�`
�b 
ctxt�a 0 splitstring__ splitString__
�` 
list�h ��&E�O��&E�Ob  ��l+ �&h �_^��^�]i�i��\�_ 0 replacetext replaceText�^ �[i��[ i�  �Z�Y�X�Z 0 	thestring 	theString�Y 0 fstring fString�X 0 rstring rString�]  i� �W�V�U�W 0 	thestring 	theString�V 0 fstring fString�U 0 rstring rStringi� �T�S�T  0 replacetext___ replaceText___
�S 
ctxt�\ b  ���m+  �&h �R^��Q�Pi�i��O�R 
0 msglog  �Q �Ni��N i�  �M�L�M 0 msg  �L 	0 level  �P  i� �K�J�I�H�K 0 msg  �J 	0 level  �I 0 	timestamp  �H 0 	thebutton 	theButtoni� �G^�^�^�___!�F�E�D_*_-�C�B�A�@_;_?�?_N�>
�G .misccurdldt    ��� null
�F 
disp
�E stic   
�D 
btns
�C 
dflt�B 
�A .sysodlogaskr        TEXT
�@ 
bhit�? *0 openfeedbackwindow_ openFeedbackWindow_
�> .ascrcmnt****      � ****�O �b  ,kEc  ,O*j  E�O��  b  ,��mvb  )6FY N��  b  ,��mvb  *6FY 5��  b  ,��mvb  +6FY ��  b  ,��mvb  (6FY hO��  2��%�����lv�l� E�O��,E�O�a   *a k+ Y hY hO�a %�%j h �=_U�<�;i�i��:�= 0 msglog__  �< �9i��9 i�  �8�7�8 0 msg  �7 	0 level  �;  i� �6�5�6 0 msg  �5 	0 level  i� �4�3
�4 
ctxt�3 
0 msglog  �: ��&E�O��&E�O*��l+ OPh  �2_u�1�0i�i��/�2 0 roundnumber roundNumber�1 �.i��. i�  �-�,�- 0 thenum theNum�, 0 	decplaces 	decPlaces�0  i� �+�*�+ 0 thenum theNum�* 0 	decplaces 	decPlacesi� �)�(�) 0 roundnumber__ roundNumber__
�( 
doub�/ b  ��l+  �&h! �'_��&�%i�i��$�' $0 openprefswindow_ openPrefsWindow_�& �#i��# i�  �"�" 
0 sender  �%  i� �!�! 
0 sender  i� � _��_�_�_�_�_�_�_�_�_�_��������`������   0 removeallitems removeAllItems� &0 additemwithtitle_ addItemWithTitle_
� 
cobj� 
� 
ctxt� ,0 selectitemwithtitle_ selectItemWithTitle_� 
� 
long� 0 setintvalue_ setIntValue_� � "0 setstringvalue_ setStringValue_� ,0 updatedonateperhours updateDonatePerHours� 	� � .0 makekeyandorderfront_ makeKeyAndOrderFront_�$b  fj+  Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  f�k+ Ob  fb  ���/�&k+ Ob  gb  ��a /a &k+ Ob  ��a /a  b  kb  ��a /k+ Y hO*fk+ Ob  lb  ��a /a &k+ Ob  mb  ��a /a &k+ Ob  S)k+ h" �`T��i�i��� "0 createdebugfile createDebugFile�  �  i� 
����
�	������ 0 thisfile thisFile� 0 thismsg thisMsg� 0 	localerts 	locAlerts�
 0 loccriticals locCriticals�	 0 locwarnings locWarnings� 0 
locnotices 
locNotices� 0 x  � 0 y  � 0 thislog thisLog� 0 filereference fileReferencei� �`b��� `�`�`�aaRa^a�a���������������������������
� 
ctxt
� 
cobj
� 
nmbr
�  
tstr
�� afdrtemp
�� 
from
�� fldmfldu
�� 
rtyp�� 
�� .earsffdralis        afdr
�� misccura
�� 
file
�� 
perm
�� .rdwropenshor       file
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�:b   b  %�&E�O�E�OkE�OkE�OkE�OkE�O�kb  ,kh  p�b  (�-�,Ekh b  (�/�k/�  0�b  (�/�l/�,%�%b  (�/�m/�&%�%E�O�kE�OY �b  (�/�k/ �kE�OY h[OY��O p�b  )�-�,Ekh b  )�/�k/�  0�b  )�/�l/�,%�%b  )�/�m/�&%�%E�O�kE�OY �b  )�/�k/ �kE�OY h[OY��O p�b  *�-�,Ekh b  *�/�k/�  0�b  *�/�l/�,%�%b  *�/�m/�&%�%E�O�kE�OY �b  *�/�k/ �kE�OY h[OY��O p�b  +�-�,Ekh b  +�/�k/�  0�b  +�/�l/�,%�%b  +�/�m/�&%�%E�O�kE�OY �b  +�/�k/ �kE�OY h[OY��[OY�3O���a �a  b  %E�Oa a �/a el E�O�a �l O�j OPh# ��b���i�i����� *0 openfeedbackwindow_ openFeedbackWindow_�� ��i��� i�  ���� 
0 sender  ��  i� ���� 
0 sender  i� b%b)��b-���������� 0 sendcommand sendCommand�� 
0 msglog  
�� 
cobj�� 

�� 
ctxt�� "0 setstringvalue_ setStringValue_
�� .miscactvnull��� ��� null�� .0 makekeyandorderfront_ makeKeyAndOrderFront_�� 4**��fm+ �l+ Ob  �b  ���/�&k+ O*j 	Ob  T)k+ 
h$ ��bF���i�i�����  0 viewdebugfile_ viewDebugFile_�� ��i��� i�  ���� 
0 sender  ��  i� ���� 
0 sender  i� �ܵ۵ڵٵص׵ֵյԵ�b}�ҵѵеϵ��� "0 createdebugfile createDebugFile
�� afdrtemp
�� 
from
�� fldmfldu
�� 
rtyp
�� 
ctxt�� 
�� .earsffdralis        afdr
�� 
psxp��  0 cleandebugfile cleanDebugFile
�� 
file
�� 
alis
�� .aevtodocnull  �    alis��  ��  �� �*j+  O*������ b  %�,k+ 	O*������ b  %�,k+ 	O "� *������� b  %/�&j UW X  hO "� *������� b  %/�&j UW X  hh% ��b��̵�i�i�����  0 cleandebugfile cleanDebugFile�� ��i��� i�  ���� 0 thisfile thisFile��  i� ���� 0 thisfile thisFilei� �Ƶ��� "0 cleandebugfile_ cleanDebugFile_
�� 
ctxt�� b  �k+  �&h& ��b��õ�i�i����� 0 htmlify  �� ��i��� i�  �������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_B��  i� �������� 0 	this_text  �� 0 encode_url_a encode_URL_A�� 0 encode_url_b encode_URL_Bi� ������ 0 
htmlify___  
�� 
ctxt�� b  ���m+  �&h' ��b�����i�i����� 0 writetofile writeToFile�� ��i��� i�  �������� 0 	this_data  �� 0 target_file  �� 0 append_data  ��  i� �������� 0 	this_data  �� 0 target_file  �� 0 append_data  i� ������  0 writetofile___ writeToFile___
�� 
bool�� b  ���m+  �&h( ��b׵���i�i����� &0 openminerconsole_ openMinerConsole_�� ��i��� i�  ���� 
0 sender  ��  i� �������� 
0 sender  �� 0 thefile theFile�� 0 minerlog minerLogi� b�b�b�������������������c(c,��c?cDcH
�� .sysoexecTEXT���     TEXT�� 0 
setstring_ 
setString_
�� 
leng�� .0 scrollrangetovisible_ scrollRangeToVisible_�� .0 makekeyandorderfront_ makeKeyAndOrderFront_
�� .miscactvnull��� ��� null
�� misccura�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_�� �b   b  %E�O�b  %�%b   %b  %�%j E�Ob  ��k+ Ob  ���,jlvk+ Ob  �)k+ O*j Ob  �e  ��,�)��f�+ Ec  CY ��,�)a a f�+ Ec  Ch) ��cR����i�iĵ��� (0 updateminerconsole updateMinerConsole��  ��  i� �������������� 0 thefile theFile�� 0 minerlog minerLog��  0 thevisiblerect theVisibleRect�� 0 	thebounds 	theBounds�� "0 thevisiblerecty theVisibleRectY�� 0 
theboundsy 
theBoundsYi� ��czc|c~������������������c�cٵ���c�c�c�ddd/d4d8�� 0 	isvisible 	isVisible
�� .sysoexecTEXT���     TEXT�� 0 visiblerect visibleRect�� 
0 bounds  
�� misccura�� 0 nsmaxy NSMaxY�� 0 
setstring_ 
setString_
�� 
leng�� .0 scrollrangetovisible_ scrollRangeToVisible_�� 0 nstimer NSTimer�� �� �0 @scheduledtimerwithtimeinterval_target_selector_userinfo_repeats_ @scheduledTimerWithTimeInterval_target_selector_userInfo_repeats_��b  �j+  f  hY hOb   b  %E�O�b  %�%b   %b  %�%j E�Ob  ��,E�Ob  ��,E�O�k+ E�O�k+ E�Ob  ��k+ 	O��  b  ���,jlvk+ Y hOb  0e  ��,k)��f�+ Ec  CY bb  1a   ��,k)a a f�+ Ec  CY =b  �e  ��,�)a a f�+ Ec  CY ��,a )a a f�+ Ec  COPh* ��dC���i�iƵ~�� 40 minerconsoledebugtoggle_ minerConsoleDebugToggle_�� �}i��} i�  �|�| 
0 sender  �  i� �{�{ 
0 sender  i� �zdPdT�ydZd^�z 	0 state  �y 0 sendcommand sendCommand�~ �j+  k  *��em+ Y 
*��em+ h+ �xdf�w�vi�iɵu�x (0 closeminerconsole_ closeMinerConsole_�w �ti��t i�  �s�s 
0 sender  �v  i� �r�r 
0 sender  i� �q�p�ody�q 0 	killtimer 	killTimer
�p misccura
�o 
pcls�u *b  Ck+  O���/Ec  Ch, �nd��m�li�i̵k�n *0 flushsettingstodisk flushSettingsToDisk�m  �l  i� �j�i�j 0 tempdeviceuis tempDeviceUIs�i 0 x  i� d�d��h�g�f�e�d�c�bdȵad�d�d�d�ee�h 
0 msglog  
�g 
cobj
�f 
nmbr�e &
�d misccura�c  0 nsuserdefaults NSUserDefaults�b ,0 standarduserdefaults standardUserDefaults�a &0 setobject_forkey_ setObject_forKey_�k �*��l+ OjvE�O 4kb  ��-�,Ekh b  ��/��/�6FOjvb  ��/��/F[OY��O��,j+  W*b  ��l+ 
O*b  ��l+ 
O*b  ��l+ 
O*b  ��l+ 
O*b  ��l+ 
O*b  ��l+ 
O*b  �a l+ 
UO 'kb  ��-�,Ekh ��/b  ��/��/F[OY��h- �`e6�_�^i�iε]�` 0 
killminers 
killMiners�_  �^  i�  i� �\�\ 0 
killminers 
killMiners�] 
b  j+  h. �[eC�Z�Yi�iеX�[ d0 0applicationshouldhandlereopen_hasvisiblewindows_ 0applicationShouldHandleReopen_hasVisibleWindows_�Z �Wi��W i�  �V�U�V 0 self  
�U 
pvis�Y  i� �T�S�T 0 self  
�S 
pvisi� �R�R .0 makekeyandorderfront_ makeKeyAndOrderFront_�X �E eY b  P�k+  Ofh/ �QeZ�P�Oi�iӵN�Q :0 applicationshouldterminate_ applicationShouldTerminate_�P �Mi��M i�  �L�L 
0 sender  �O  i� �K�J�I�H�G�F�K 
0 sender  �J 0 sessionhashes sessionHashes�I 0 x  �H 0 
pidrunning 
pidRunning�G 0 numerrs numErrs�F 0 err  i� 0�E�De�e��Ce��B�A�@e��?�>�=�<�;�:�9�8�7�6f2f?fA�5�4�3�2�1f{�0�/f�f��.f�f�f�f�f�f�f�f�f�f�f�f��-�,�E &0 stopruntimetimers stopRuntimeTimers�D 0 	killtimer 	killTimer�C 0 sendcommand sendCommand�B 0 splitstring splitString
�A 
cobj�@ 
�? 
nmbr�>  �=  �< 
�; 
long�: �9 �8 �7 �6 
�5 .sysoexecTEXT���     TEXT�4 0 	stopminer 	stopMiner�3 0 	terminate  �2 0 
killminers 
killMiners�1 *0 flushsettingstodisk flushSettingsToDisk
�0 
badm�/ 0 err  �. 
0 msglog  
�- misccura�,  0 nsterminatenow NSTerminateNow�N�*j+  O*b  >k+ O Ob  �e  A*��fm+ E�O*��l+ ��/E�O*��l+ �l/E�Ob  ��k/�&��&b  ��k/FY hW X  hO �kb  ��-�,Ekh b  ��/��/�&b  ��/��/�&b  ��/��/FOb  ��/�a /�&b  ��/�a /�&b  ��/�a /FOb  ��/�a /�&b  ��/�a /�&b  ��/�a /F[OY�wOb  a  Pa b  %a %j E�O�b   .eEc  �O*j+ O b  3j+ W X  hO*j+ Y hY hO*j+ Ob  �e  jjE�O a a el W X  �kE�O a a el W X  �kE�O�l *�a  l+ !O*a "a #l+ !Y *a $a %l+ !Y hO a &b   %b  %b  %j W X  hO a 'b   %b  %b  %j W X  hO a (b   %a )%b  %j W X  hO a *b   %a +%b  %j W X  hO*a ,a -l+ !Oa .a /,Eh0 �+g�*�)i�iֵ(�+ d0 0applicationshouldterminateafterlastwindowclosed_ 0applicationShouldTerminateAfterLastWindowClosed_�* �'i��' i�  �&�& 
0 sender  �)  i� �%�% 
0 sender  i�  �( fh1 �$g�#�"i�iٵ!�$ (0 isoptionkeypressed isOptionKeyPressed�#  �"  i�  i� g� g 
�  .sysoexecTEXT���     TEXT�! 	�j � h2 �g'��i�i۵� &0 isshiftkeypressed isShiftKeyPressed�  �  i�  i� g4�g6
� .sysoexecTEXT���     TEXT� 	�j � h3 �g=��i�iݵ� 0 ddi  � �i�� i�  �� 0 dothis doThis�  i� �� 0 dothis doThisi�  � � fEc  Y 	eEc  h4 �gL��i�i�� 0 dd  � �i�� i�  �� 0 msg  �  i� �� 0 msg  i� �gZg]�
� .sysodlogaskr        TEXT� 
0 msglog  � &b   b   
�j  Y *�%�l+ Y hh5 �
gd�	�i�i��
 0 dda  �	 �i�� i�  �� 0 msg  �  i� �� 0 msg  i� gn��gvgy�
� 
dtxt
� .sysodlogaskr        TEXT� 
0 msglog  � (b    b   ��l Y *�%�l+ Y h ascr  ��ޭ