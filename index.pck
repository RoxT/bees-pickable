GDPC                                                                                <   res://.import/bee.png-0e3c185b8b627c5e6ea9419ab05cbff9.stex �F      �      c	`�kޕS	�D9�w�<   res://.import/hive.png-ce509d8f72175f7b6448eb328523bd66.stexW      �	      �pm^�=��{{�x�"<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex0<      �      1�^�^;;�V��-�7�T   res://.import/vegetation_fern_01-export.png-def1c1617c823971343fcc0dae61c805.stex   `c      n      �^�F^$nR0�P�?1�X   res://.import/vegetation_strawberry_03-export.png-67ae16259cf90f9f27048e80535a3d62.stex ��      L      w�cm@&�F
����   res://Bee.gd.remap  �             rA�?lc;�@t!NF�   res://Bee.gdc   @      �      ��qB�qG�fdv,   res://Bee.tscn         �      �蜃꿈�ɹ��	�i   res://Dragable.tscn �      �       >���_����}�ɾ   res://Flower.gd.remap   0�      !       �v��[�?�������   res://Flower.gdc`      T      �����W�R�QAi   res://Flower.tscn   �      �      w�m�DC�����|Ԯ   res://GUI.gd.remap  `�             D�������E����   res://GUI.gdc   p"      n      �bVO[��"�_�U(�   res://Main.gd.remap ��             �(@Er�#��K�F�[   res://Main.gdc  �$      �      �{��o�p�<b�o   res://Main.tscn �-      C      qI�?�����i����   res://Pickable.gd.remap ��      #       vU��A�Tx&��O�'   res://Pickable.gdc  05      �      ,��ّ D�p7$^   res://Pickable.tscn  9      �       ^�s�����ݠA4E�i   res://default_env.tres  :      �       um�`�N��<*ỳ�8   res://dragable.gd.remap М      #       �BU�?��n:�E0{x�   res://dragable.gdc  �:      p      �:�L��r������   res://icon.png   �      �
      i`�n�0 �2ͫ.   res://icon.png.import    D      �      ��fe��6�B��^ U�   res://project.binary��      H      Έ&��{��]�t�UU    res://textures/bee.png.import   `T      �      ��I���*�7u�    res://textures/hive.png.import  �`      �      z�z+C �^3����04   res://textures/vegetation_fern_01-export.png.import Ђ      �      8>7a��J�fxВ���n<   res://textures/vegetation_strawberry_03-export.png.import   �      �      $���m���HD��R'v�    GDSC         +        ���ׄ�   �����Ӷ�   �����Ӷ�   ����¶��   ����¶��   �����¶�   ����򶶶   �   ﶶ�   ���Ӷ���   �����϶�   ������¶   �������Ŷ���   ����׶��   �������ض���   ����������ٶ   ζ��   ϶��   �������ׄ��������Ҷ�   ���׶���   ����Ӷ��   ����������ƶ   ��������϶��   ������������Ķ��   �������������ׄ��������Ҷ���   �������������������¶���   ���������Ӷ�   ,       �D     D                  area_entered      _on_Area2D_entered        _on_Scout_Area2D_entered               �C      flower                                                   "   	   (   
   )      4      5      6      >      G      R      S      ^      b      o      z      ~            �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (      )     *     +   3YY5;�  VW�  Y5;�  VW�  YY;�  Y:�  Y:�  V�  Y:�  V�  YY;�	  V�  P�  R�  QYYY0�
  PQX=V�  �  P�  RR�  Q�  �  T�  P�  RR�  QYY0�  P�  V�  QX=V�  &�  V�  �  �  T�#  P�  R�  �  Q�  &�  T�  P�  Q	�  V�  �  �	  �  �  (V�  �  �  P�  �5  P�  T�  �(  P�
  R�
  QR�  R�  QR�  �5  P�  T�  �(  P�
  R�
  QR�  R�  Q�  QYY0�  P�  VQV�  &�  T�  �  �  T�  P�  Q�  T�  PQV�  �  T�  �  �  �  T�  PQ�  �  �	  �  Y0�  P�  VQV�  &�  T�  �  �  T�  P�  QV�  �  �  T�  YYY0�  PQX=V�  �  PQY`    [gd_scene load_steps=5 format=2]

[ext_resource path="res://textures/bee.png" type="Texture" id=1]
[ext_resource path="res://Bee.gd" type="Script" id=2]

[sub_resource type="CapsuleShape2D" id=1]
radius = 5.0
height = 10.0

[sub_resource type="CircleShape2D" id=2]
radius = 91.0

[node name="Bee" type="Area2D" groups=["bee"]]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 2, -10 )
texture = ExtResource( 1 )
hframes = 2

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
visible = false
rotation = 1.5708
shape = SubResource( 1 )

[node name="Scout" type="Area2D" parent="."]

[node name="CollisionShape2D" type="CollisionShape2D" parent="Scout"]
visible = false
shape = SubResource( 2 )

[node name="Lifespan" type="Timer" parent="."]
wait_time = 20.0
autostart = true

[connection signal="timeout" from="Lifespan" to="." method="_on_Lifespan_timeout"]
          [gd_scene load_steps=2 format=2]

[ext_resource path="res://dragable.gd" type="Script" id=1]

[node name="Dragable" type="Sprite"]
script = ExtResource( 1 )
   GDSC            3      ���ׄ�   �����϶�   ������������Ķ��   ��������������Ķ   ���϶���   ��������϶��   ��������������������ض��      Recover                                                     	      
   &      1      3YYY0�  PQX=V�  -YY0�  PQV�  W�  T�  PQYY0�  PQX�  V�  .W�  T�  PQY`            [gd_scene load_steps=5 format=2]

[ext_resource path="res://Flower.gd" type="Script" id=1]

[sub_resource type="Animation" id=1]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:modulate")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 1, 1, 1, 1 ) ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("Label:margin_bottom")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 7.0 ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("Label:margin_top")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 0.0 ]
}
tracks/3/type = "value"
tracks/3/path = NodePath("Label:rect_position")
tracks/3/interp = 1
tracks/3/loop_wrap = true
tracks/3/imported = false
tracks/3/enabled = true
tracks/3/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Vector2( -21, 0 ) ]
}
tracks/4/type = "value"
tracks/4/path = NodePath("Label:modulate")
tracks/4/interp = 1
tracks/4/loop_wrap = true
tracks/4/imported = false
tracks/4/enabled = true
tracks/4/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ Color( 1, 1, 1, 1 ) ]
}

[sub_resource type="Animation" id=2]
resource_name = "Ready"
tracks/0/type = "value"
tracks/0/path = NodePath("Label:visible")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 1,
"values": [ true, false ]
}
tracks/1/type = "value"
tracks/1/path = NodePath("Label:rect_position")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 0, 1 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ Vector2( -21, 0 ), Vector2( -21, -45 ) ]
}

[sub_resource type="Animation" id=3]
resource_name = "Recover"
length = 10.0
tracks/0/type = "value"
tracks/0/path = NodePath("Sprite:modulate")
tracks/0/interp = 1
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 10 ),
"transitions": PoolRealArray( 2, 3.605 ),
"update": 0,
"values": [ Color( 0, 0, 0, 1 ), Color( 1, 1, 1, 1 ) ]
}
tracks/1/type = "method"
tracks/1/path = NodePath("AnimationPlayer")
tracks/1/interp = 1
tracks/1/loop_wrap = true
tracks/1/imported = false
tracks/1/enabled = true
tracks/1/keys = {
"times": PoolRealArray( 10 ),
"transitions": PoolRealArray( 1 ),
"values": [ {
"args": [ "Ready", -1, 1.0, false ],
"method": "play"
} ]
}
tracks/2/type = "value"
tracks/2/path = NodePath("Label:visible")
tracks/2/interp = 1
tracks/2/loop_wrap = true
tracks/2/imported = false
tracks/2/enabled = true
tracks/2/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 1,
"values": [ false ]
}

[node name="Flower" type="Area2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]

[node name="Label" type="Label" parent="."]
visible = false
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -21.0
margin_right = 21.0
margin_bottom = 14.0
text = "Ready!"

[node name="AnimationPlayer" type="AnimationPlayer" parent="."]
anims/RESET = SubResource( 1 )
anims/Ready = SubResource( 2 )
anims/Recover = SubResource( 3 )
   GDSC            N      ����������Ķ   ��������Ӷ��   �����Ӷ�   �����϶�   ƶ��   ����ڶ��   ��������������Ķ   �����������ض���   �������Ӷ���   ������¶   �������������������Ҷ���   ���Ӷ���   ���Ӷ���   ��������Ҷ��      please_add_child      _on_please_add_child                                                    	      
         #      )      4      5      6      7      8      9      :      C      G      L      3YYYYYY;�  V�  YYY0�  PQX=V�  )�  W�  �  T�  PQV�  &�  4�  V�  �  T�	  PRR�  QYYYYYYY0�
  P�  V�  QV�  �  �  �  �  P�  QY`  GDSC   ,      @   �     ���ӄ�   ��Ӷ   �����Ķ�   �����Ŷ�   ����������Ķ   ���Ӷ���   ���Ӷ���   ��������¶��   �����϶�   ������¶   ��Ӈ����   �������Ӷ���   �������ض���   ��������Ҷ��   �������Ӷ���   ���ƶ���   ������������ׄ��������Ҷ   ���׶���   ���ׄ�   ����������ƶ   �����Ӷ�   ����Ӷ��   ���������Ӷ�   �������Ӷ���   ������������Ҷ��   �����¶�   ����¶��   ��������������������ض��   ������¶   ��������������������ض��   ���������Ҷ�   ��������Ӷ��   ����Ӷ��   �������������ӄ򶶶�   ����   ���¶���   �������������ӄ򶶶�   ������Ӷ   ������Ŷ   �������Ӷ���   ��������������ض   ���������Ŷ�   �����������ƶ���   ���Ӷ���      res://Bee.tscn        res://Flower.tscn               area_entered      _on_Home_Area2d_entered       Lifespan      bee    	   add_child         Sprite                                                              !      )   	   *   
   0      1      2      :      E      O      W      \      d      o      p      y      z      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0     1   #  2   1  3   7  4   A  5   H  6   V  7   a  8   j  9   k  :   p  ;   x  <   ~  =     >   �  ?   �  @   3YYY5;�  V?PQY5;�  V?P�  QYY5;�  VW�  Y5;�  VW�  YY;�  V�  YYY0�  PQX=V�  �  T�	  P�  RR�  Q�  ;�
  V�  T�  PQ�  �
  T�  �  T�  �  �  P�
  Q�  �
  T�  �  T�  �  �
  T�  P�  QT�  PQYY0�  P�  V�  QV�  �  &�  T�  P�  Q�  T�  T�  �  V�  �  T�  PQ�  �  PQ�  �  PQYY0�  PQV�  ;�
  V�  T�  PQ�  �
  T�  �  T�  �  �  �  P�  R�
  Q�  �
  T�  �  T�  �  YYYYY0�  P�  QV�  &�  4�  V�  �?  P�  T�  PQQ�  �  �  &�  4�  �  T�  PQ�  T�  V�  ;�  V�  T�  PQ�  ;�   V�!  T�"  PQ�  ;�#  V�$  T�"  PQ�  ;�  �  T�  P�  Q�  �  T�%  �  T�  T�%  �  �#  T�&  �  T�%  T�'  PQ�	  �  �   T�   �#  �  �  T�(  �  T�  T�(  �  �  T�  P�   Q�  �?  P�  T�  T�)  PQL�
  MQ�  �  T�*  P�  T�  T�+  Q�  �?  P�  T�)  PQQ�  �  �  P�  Q�  �  T�  T�  PQ�  �  T�  �  �  �  �  Y`       [gd_scene load_steps=9 format=2]

[ext_resource path="res://Pickable.gd" type="Script" id=1]
[ext_resource path="res://textures/vegetation_fern_01-export.png" type="Texture" id=2]
[ext_resource path="res://textures/vegetation_strawberry_03-export.png" type="Texture" id=3]
[ext_resource path="res://GUI.gd" type="Script" id=4]
[ext_resource path="res://Main.gd" type="Script" id=5]
[ext_resource path="res://textures/hive.png" type="Texture" id=7]

[sub_resource type="StyleBoxFlat" id=2]
bg_color = Color( 0.294118, 0.34902, 0.270588, 1 )

[sub_resource type="RectangleShape2D" id=1]

[node name="Node2D" type="Node2D"]
script = ExtResource( 5 )

[node name="Panel" type="Panel" parent="."]
margin_right = 1023.0
margin_bottom = 601.0
custom_styles/panel = SubResource( 2 )

[node name="CanvasLayer" type="CanvasLayer" parent="."]
script = ExtResource( 4 )

[node name="Panel" type="Panel" parent="CanvasLayer"]
anchor_bottom = 1.0
margin_left = 19.0
margin_top = 34.0
margin_right = 83.0
margin_bottom = -39.0

[node name="VSplitContainer" type="VSplitContainer" parent="CanvasLayer/Panel"]
anchor_right = 1.0
anchor_bottom = 1.0
rect_clip_content = true

[node name="Pickable" type="TextureButton" parent="CanvasLayer/Panel/VSplitContainer"]
margin_right = 64.0
margin_bottom = 59.0
texture_normal = ExtResource( 3 )
script = ExtResource( 1 )
type = "flower"

[node name="Pickable2" type="TextureButton" parent="CanvasLayer/Panel/VSplitContainer"]
margin_top = 71.0
margin_right = 64.0
margin_bottom = 527.0
texture_normal = ExtResource( 2 )
script = ExtResource( 1 )
type = "leaf"

[node name="Home" type="Area2D" parent="."]
position = Vector2( 519, 0 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Home"]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="Home"]
position = Vector2( 0, 29 )
texture = ExtResource( 7 )
             GDSC            w      ������������ض��   �������Ӷ���   ���Ӷ���   ���������������Ҷ���   ���Ӷ���   �����϶�   ������¶   �������������������������Ѷ�   �������������ڶ�    ����������������������������ض��   �������Ӷ���   �������Ӷ���   ������Ӷ   ����������ڶ   2   res://textures/vegetation_strawberry_03-export.png        button_down       _on_TextureButton_button_down         Pickable requires a type      Normal texture must be added             res://Dragable.tscn       please_add_child                         
                           	      
   "      +      ,      -      .      /      0      1      9      @      G      J      K      S      `      f      l      m      t      u      6Y3YY2�  RYY8P�  Q;�  YB�  P�  QYYY0�  PQX=V�  �  P�  RR�  QYYYYYYY0�  PQX�  V�  &�  V.�  �  &�  V.�  �  .�  YY0�	  PQX=V�  ;�
  V?P�  QT�  PQ�  �
  T�  �  �  �
  T�  �  �  �  �  P�  R�
  Q�  Y`    [gd_scene load_steps=2 format=2]

[ext_resource path="res://Pickable.gd" type="Script" id=1]

[node name="TextureButton" type="TextureButton"]
margin_right = 64.0
margin_bottom = 64.0
action_mode = 0
script = ExtResource( 1 )
              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDSC   	          5      �����Ӷ�   �������¶���   �����������¶���   ���Ӷ���   �����϶�   �������Ŷ���   ����׶��   �������ض���   �����������������ض�                                                    	      
                +      3      3YY5;�  V�  PQY;�  V�  YYY0�  PQX=V�  -YYYY0�  P�  V�  QX=V�  �  �  T�  PQY`GDST6   >            �  WEBPRIFF�  WEBPVP8L�  /5@� ������I�$aԜ/���>�����]�F���I�S"r���54�H��l����!�B
pt� ��m[˓��[��d)S��2���	8�w:��ݝ��9�6R�.�'`ն�	�Q��� ������ӓ�d�#Ij��eD~�+ȼ�Ԍ"I��{sX���F�x��jۖ�m������ Ѡш�� D��=���m#E��1�'�hۣ��Y��1V��2�Tٕ+f+ff2�6]r�T�@Zf�h$ys(ֶ-S�w���FҜI>������dt:�괿����$��ض]'����ׂ�ZS(BE�CA!6b�<�j۞5��:��X�!�Y��K��ѽ���b�m#����~��%GJ�����Cd0��U�abi�= )NW���ƶ�*7����.^A8٫�S ������öm$�3�����z����ml۪��;�TA-��mP%{J���۶�ؽۻ_���9&�Y.��9u	L�}�D�F�wЧL�Uf�S�#X�����0�P�� �ͽ4��L� NI9�<b�8�@w��C1��C1�@;hL�P������A3衇,  �q kR	~�"�O� ���`�
�1�k?>��a�M��U�(��C�$ Khc���K`Ɋφ�8 ��Ѓ��� ���W�<��fx"�,����/}�F �xFE0XCc!� �:ؖ` ���8"E����c�0zt ���
քbAb�z �	�xP�"Us�f6Ѐ),�?�q!�w�.�P�o�P��%b��} ���Ň�N �M gX��M %h��0����<E�_-� ~c��c�c����� ��=�
B	0��P��~h�iޭ-Oly�8��y�Q�u���8F�Ќ��* [�ػ��߯u{�9�m��Cj�uD�"�Y��}Ϲ�m�~]�����a�(�>x�����Z�B�'ۢ�>"�Y�J�4���\�zGy�:*���� ��f�Wˋ���iy�򒖗l�d�&�:��nuI�]*٥�v�p9&x^5��������>��G$ke��S��i���Z���wd�^�����Iw�zR @DyLB�@�WvR^=߰������ګ$�࡜�%�D�@�����������ϸ��_�����+�)R�.�U�DJy<r��ɭ�Bj(l���=R�L& vt��������S���  �%o�I\��̌t��:�즟'�*)ۂ.��r>E>�@�>$�����!�)����)�@ 龗[O��o��R���*)�*�.��b�w^�p�o�
b��T�_6d��a8��B%x�P���S�{�V"��	��)	�NA$�GZB!����-�(�φ�"��㝄���iU9ټ�r��dA�J�Y�n��;���j���I��D�źD;9W)G�C� w�I1V�4�dj$Q �or^b�������N�%ŏ����Z�Tf(ސ�mSu^���$�36)2[Mag
;-M2R0C]�P�B��U8���m:����3��1��H(���d��,uՠ���&Hqwq��fq���X�p}��i&�hn���݃� �@��h�s	"@2�#	��+���V��^�ǁ���3�P��i���+n{t 	X!�s�%�H����0,*�k`�rRl �*�j"E���#�920�X���ǀx�.'%� SV*j����8��8<�K�B��?+�1R}�,��M���X�j�8,�!���xa�f��x�9���J��� �l�������	��	+�a�!��>��л'Q��W@�_s�.�/�)�E�H�� ��@癉Vl�E�� ��;��9��gP
3,��C̑={���?ĵF�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDSTk   @            �  WEBPRIFF|  WEBPVP8Lp  /j��	����[۶���K�O��q1l�\ � ��'
M03FVf��x�w��. rmۊ��Q��CPC�� �!}��{o��m�V�׃�������XrBw����"��[ێm9�9��Y�_�6��/۶m�z�m�����6��`�my�)�]�J�6)�������ff����-333�+��G#U��K��%3;#���@�mg�du���Lm��ζm�]ٶ��[۶�aۓ��_ې#۶j+s��{�K��5�N7��2~D74u�@#h�F�@׶�c۳���m#�m@ҹKi����:�m�z'�m$It�����G\$�<�$It�@��-4�����!�,m�(�&h��\����څ�ylQˋ,�/dϲV9�-ƭdQ�8]�]�}��d�z]u�t��BK��UQ��p�K�3آ?*�-�e-Z�W�G�(u1 ��l�����NPC�$��i�U�ٞ$�6(|��Eu�� � �ia&�.��� ���ηM�030�٢��"��0(��p.]�𰪋� �
Y�ʭ*�)U���M ��Tu�� 	|#&�Gf�7LY� �`xX
�M|���eYԂp�]XV���@��3�qa�Pe�� ��=c{�Kp \��2 �� 0l( LYX����l�����G� <|��2�3�G�����l'J�k<�0���We��� @1�ԁ��3�+�� |[��s0���S�� �U�ȏ&��G�Y��Y���<b8�����9�\�� a!N5pj-A |	@����CP�jm,�CZ��	�A�v!eQ��} �f�� \�`��G���a�r�܉u(V��h�cSP��`e�W	#��a�ro�V�-xDu�
l�A����ΰ-��x	�����Sn��}e0�!�ĳ;Q�&0��C&��a�P�(*J��q�� �_�.�O@�f�����A���8���S�f�c�t���]p6@n�3�΀PT�������.87���I����E6��	!�p6[̉�����m��Rf`2X<s� b0\�AZ���h:���#Y���lQ~��W�C[���@ ~ھ�{��x���o���j�=����S_�����]��j;���~� ��Q"*�C�[X�-���{	�������jݗ���?\�x���&����/�yL���C6�n5����(�׿�����AD��2�F�����o{�?y�����O�T�|x㼐����"j+WeO"�\�H���f�����O_��>x^��K�R��qv�?�O����m��)J�d�li)y�uAH4������>>(��� �\G<��gK�--����bKK[Z�*{�*{���QL+s�D[Z�$�c� �Ea�~?��6^5�y�"x]����<w�������}���2�iiO� ��u��/.�5�/^�I��o(�ŃI$�U.�I�)\��A�݃H����0��5��vK+��Rl��шìҋo۾;�����BO,���ɀ�e4��Daɹ �|���ڊ��n|�yeN12�T�C�\�������=��Wx��/���8�4�t���߿�o��R���/��̻bO.��W�O��d��@@7��\��~�������{i��;I����(($�"��~�Q��V':6���\ּ��c���nmq��H�DhķS�-U��V)��F�%3h�5�;��!����G��.%Y���"p`D��:�&����x��h,�c�+ ��9e߫;U�������}�����xj�e\K|��#�%z�̽�W�K�u���u~���zbq���v��l�)^�_����n %(�� ���'���ϩ�v攒I�-\�p��Ԩͻ�0���!<¡�C���e?����;��߷���;3�Sq��������c�u���O��m]�(�y�Κ@���D������Q�8N��|�>���J�U9�E�TK�	��(��8�#-l}ߵbT1���N.���;{�@7ܬl�I�Lfr�+�iٖ^b���I�6=�2i�dd��Yw'��[t�nꆛ�G�_��텺�a*��;"�3� ޯ��HD"f���f8�h���*ntu�n��꧸D�J<��N��n�/��n�I�c���pY����%_�pأcG"1+,��j�W�Uf�Ą��g);�4�O#�Vw^XWy��o���U#D$"�%"懖��x�����a{&�m���HDDD"f��D/�>:P8��K@@�@"�;f"�"bc�v��
'a%���]%�pU�N�!"1DLCɗi,��-;��/��̊J�a6n���,c�`����cI��m�D?�/qL>��ֿْ����9;#��Έ�B����z��s˜V:� �sn�ۻ�oo�`Ɇ���D�ȶt��b�Y�Õ��kKmI#"�x����X�wV��(��3�
 �ҦJD�H��x4v$�4�8�,���»����^?��Y(yrwuq���,��t!"mI#:�XK"�0Ϯ�E�5��h�S ��6�^�TG<:1q$b����-���Ē�zyO�m�����b������x�t�HD�8_��WC?U@��&5�#s*n�e���u%"�[�k��np5�ZҨA.97�n�8�u���NG��㑱و�-L�����ׅ�a��o�i��a��z���:y�D�DY,wf3��'��sB�X<��Y�pnݲ����yK����-��Z g�h�x4|N����M�Uoi��}�,W@��{t-�bΨ�����j,=��6���V7�Lm���T[R;u<rD���	p,=� �::X�k,����8�˨ �`�t�&��m��4]37y���Kd���;:���������W =�m�-Y�E4�Y�V>�����;:X;:Xs���2*IX�>�%�`�n�t���ʈe�(��P-��,��������#�*+��<,<�E4c��S������U�+F$���4p���iMή��YTBfӢٴh6-ШkjG%���4�g�i 3+�'2�7�����<�O��`�� �垞�w�?0`��,��\���ˌY�K�.�<��`}3�𚧂u�T��垌Q�|M���dXHF�z�R�_�eg�1�f@�N�~�m��ܧ��4�K�ԗOfn��P���6{Y�������G3[Υ+��x�C,)���,�Y23`�q��Ӯme�8��ԎK�����P�_֛l)[ʢ:f�:����ځ��Qb)��D��Eb����Jm�Je�2,��󗈖�*2`�&[*�J�󎼶C{�,�R���m��/���fH�
��vh��e=�Fg�qB���,������Y|��Q�R��B�#            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bee.png-0e3c185b8b627c5e6ea9419ab05cbff9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/bee.png"
dest_files=[ "res://.import/bee.png-0e3c185b8b627c5e6ea9419ab05cbff9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST@   @            v	  WEBPRIFFj	  WEBPVP8L]	  /?���m�E��
���`���۫�vww�5��9������?��	P�m۔$��O����^�l۶m�ڶm۶m�Q��x�۶$g��Ě�{:�m���q�l۶m�62����F�٩#۶m�����m#Ir�k7{tі ��ub ``�9�`+'�1'cDF�ȳ����￣�����u����b���_<���'զiK������a�Ә�qy�9*P��(�V���&���I�^Vq}}��X�
�I��V��[:�� i � t����][ӓ�y
X[�4I�����S��E�����M/�G{�h�"ڼ�������R�
+�~9Hd���b��J!iH�^ t�꽛���.���e��b�<"O�'f��6�m;�����ɛ��;�܌��I�iZ��l���i.޼.޼�x�&Vyb&t�g����=�0�K�^�"8f7�D� v��ў���	�s���� ��T 7-7#'�
��h��'�œ׏��u����ΐWҞ}�1�4���=��g��<�����W��?�R4΢ŋ#������-A2��R�<�"ϼ���	�vC]�/�v`E�j忝��4qn�[EL��k��V�Ll��ti�mV�����ں�K�����Ǳ��C���uG�&Zyb��Fͭ"#��,bG��ղ�:0����������D@9�@�������#h�G�JGTuD�V��l^��k#G"G5rl�o��Ē����[@������c���؎^֊QS�qrB;NN�@@@cWN������U��[EU�$1�ȼn �l�0B�.��^wՋ�W¯��F�˱��x�Ÿ��ubɚ�������߾�[�W���2��^=?ҫm�&�25������/�r#1$6��e�,XQ������̴�Ք�I�zjR���G%����3+J�ϱx���ۦRH�{��]�HJ"��y?9��+�t�NJ�;O��BǄ�QM�z����r�>�	��;�cG�&v�_!���a��o;��qmK[���Œ/�%� ���-teGk4�1klcl�bĒ����%��FG�Z^@:FyȂX]���lc��/���k��K�&�&����[�ǯK�������9�-#�唬�TAc����-��PqIDF�]�(^A@@~)+;TФ��l j�'Py�|ۓ�KL���"����Ȩ��zZ���������&�����c~�56rv��V�ݢzZ�@��ݻ��)�­������h��<_�[g�$*覴�r��ҫ��#�W+;X�'tv~å�mSt�X�k =y�<��b����X�X ��,VT��C��`s��Ԃ���ge_?Oɂ��N]qI��ܨ2!��O����3 ���Q6:��c�J�黌٨Rۨ����,�eU�cP��RoP�z��+��@@/?�B" ����-�x�j� ��s(�ǯ�ԕ׳w�H��r2���2+�2���/�
Ȑzxֶ �F;Te�Ӽ�@@7:����Ѓ�u  ��?F��?	� �'%�@���?�P3��q> # QY�����3�"������"���- Sy������G�O?����eKlm��ǫO����\o�.�|�|������'J�E� ]��kd�fV�66F����Z��oH׈�Q<#�s#+��B�����Ȩ ʪ�E�_�D�L�_	�'���=}b�>V��J����`��x�ٸ��19�;Ug�"��S������55i�N_c��p��j&7#���HY9�jyu����5;u={��{Y(+������TbO;����?�ґ^��T�\YW�5*��R/^���b����\ݴ����𚝾��&"QQT��Y4�cd�J��J���Q�^{���1X���c�c�����\���"X�a��r|�a\���Fz�`��^�����u������7��?���F�8���K�ïD!k�zq �y!k��o����+���y	d��ղj�+*r�{�y{���)����p����.��Ug��!��0���Ɗꘞ�%��y�e�*��;� n�E�r�U�#���N!�qR6���w\�3���_M��F���O���g��Ե�9J%R�������$ �q�Ґ�p=Ӷ���	��`�z����i��{cmm|�~<}����X[?�E�9�4Eʏ�?�WUh�l vF�A�I��t�<DJ����R@���:{���9����G�ܫ�;��侧o�����_���zz�_o��� �Crm�<��qn�_��:��dHx0� �HbO-��a��hksL�[�k���������w�*"Dd-�����f�ߴ�7�0�1{{:q=�#�?������j.�>m�7�v��._�H6               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/hive.png-ce509d8f72175f7b6448eb328523bd66.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/hive.png"
dest_files=[ "res://.import/hive.png-ce509d8f72175f7b6448eb328523bd66.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST@   `            R  WEBPRIFFF  WEBPVP8L9  /?��\`!��1oԴm�@���9�(mۀ�����B5m0���8G�C?�������������LԤ)���ݽ/��Ӷm���m۶m�~=m�y���I�d&�9:I��zڶ�mk۶�� EQ��<r�9��(�Q�����g�y��{˭ٖl�"	�����ն�����3��j�$=���a�>���m��a۶m�ul3ݍ�6ZV���Ёd� ����V�픶m۶m�vZ۶m[ρ۶�D���Ng�{}BB  ~��: T ��
���A��A�r�t4˲�K���(DV"f��x�,U�d<A���LdCԤҨ�*2G,�����8� �  T$�	��K&PbcbR��$k_2ih���Aъ��FӖ���$ьQ��	���-��."&CR�%&͚��UR�g�u�L�&ի2�(���c2���   ���$��V�032	����:	�3ZC�fBVt�"����`�Lj�I���	��A���fAJ
d�u�'�A(�2�X1pR�Oi%��75�5����t�a��4�ݘ�W!�z�Q ci��!�J|��j�Md��-�4��NƱ��
#kh��.���=i���C>�������0���}1ϚV�w��m�L�6O&���5
�Kɤ٤�z�ŏ��4���Џ�v����;ܮo��b��E���x��OP���k�T����a�Hd,$%`$�%R��2܀:A��h�V�0�W�׶|�}ć��c*�r�^a@���ќ���ݿ�43':���2)D�4�(��"hƗ�H��< �B���Hu �ѣ p)`[EκD3�e-��C>�̂,Cu�����Ҝ0-#Ap"��0�?�Q~]�f5���
�JD>�R4�2�&!*;���b�p	X�X�9O�=@6(��)]d�F����mGM(�:-$�[���!���`N
�hn�voK���l8�:Z��}�S75 ���h���[d�£�2lҥA2���XZ�z�%A��*.0�-M�:��#W�'  �O�z=s]C̲�,K �* @+�m�voB�I�I��.2
|��*!�>F,�hY�Ϛ��7?S��#����qr#�41��  ����F�<�	����H*ӈ%�����XΥ��G/f\;�t���]��Ӳ�xƲ	�� <s�I���SLo5��8��������o��d��TMvcc"¡)���^w�-'�S�<m44Q$)a���7��Q;�0wXP�Q |o@#�I�HSD�L|k�V�5�Y�Nf�ׇ��8���O���7���D���m���RӦ&���?��-˧4C&���"������$Ų����R���]��vQ�k���ܝ�&u���$�&5G����{�G�y�{[0��.O7{>j�
[��|[�mN9����h`��  X�&m�	�!#{!��u�a��n�	�۪0v��K4�5�tߦ�	��VK�����g�x���  z�_�Y��_�췝Њ��� ��0vcժ�n_��ݚ&O����3w�׸�#պ�@���k!J�pb牑 ��:^/�� !���v�}�_~�cZz a^�%��hS$���������{A�t����p�:�ɰ��>�ZJd��SZ�F�1(/KutHf�� g>��<��>vL�z�F�>6.   $-^�
�:}�d���l�;�r����x����t�7�_|]��j�'�0CE�l�i����<f��o8��  ��T��K���,�6f�����ɯ�}�/}���uQ3��Q�ȳ���%�� ]4'H� �pU @I�w;	��D� �Mqn�"��P�Kz���K?�͜�C���y�q6��#��q٬�s��xqD�tB���*����? ��ۯ��/���X ��G�[��U���n4�(6ɨv���G���3n���?W�ڣ����T�E�ܳj+%�ݔ �D ��ի S���چ+����M+l�g�BOz섄�Y���ݿ$}�xNJ�zX,Ռ<j�5�-����NL����8����{r��AP��薙3;�hǁ�e�;|?�)�c,lvKgU�e�J�]��ZX��%'��E��j5'1 ���XL  p�qS��祇����~��x�{ב�ݘ/k����:����a>�6>=�x��ǖ�%��Ý�ط�̐�HGw?b�/n�W�#�/��k���������P:  �? � �F4mw�7܏�S�5$zqB�o�ҵ?k=D�%��u�8-�(��lvz`k]R��1�b�B   �U@y�FO�AƇhR �(C#��օ>�:ǅ|�q�ց���pt�g��N_�{��l )�=蒙��m;�հؔ�ס�1�_Uxϫa�%)�t[2��kuSP�M2�2�1��`n�k��A��]���8��~�z y���y��k���NQ����/
�*�6@F��Aً;XZ 0Q�,������ ��"�v���>���u� BҎ.[�,a���G�iI�S�x��1����.@ZSF7.��aً+T!�0�o�����_J���<��" a��WJR�Yټ�2��H�4�����_� ���1e��"��a��� 2J@ZuN���u  � � �s]�M��0i�ҩGIݡZZ�u[���b�Pf�>V������,��,���6��%7� �Wω�ց����lK���ٴXǳ����U�H�n�-t`4I	m��zb`�utM���ѝ���ݕ}B&�V�5�;u͚yw�Z}@X��gq��� Q��ӄ  1�)(�YZ�u�T�%%��� ����[��ᱹ�g�d��_^U��l�Kz�a��ΗVt3 �Е������>Q
@d�j0�͉���URg�A��ca;��ڸ����o}f �2`�����0T�c�� x�k۞i�j��zWi�
�������(�:]y�M���aIjj��v��Ȓ�MX)�/�{�W}���R�o�O�BNJ�$q����x�+uu���(�U@U���^i���4Z&0�6á��[��[��I�$   �  ��@ �� @��Mkk st	��RE�Sz1 ������p�e�F���c��P�
!ې� ���|�����8�!9�)B�)���h��|�k��V?qO���+뫗�� ȝ���#��M7=�|���앙;k`���3�q4���*@�k3��- ��� �ՖHm�T2
����B54��Ǜ����}��2YR���U� �<n��ߠ�R�x�%�&mL���m;�i���E�`�=���V�_w��⺻ń�������	���\�_ܻ�it>RS��s�B�ك��M듺�ҝh����m/y� ���I{T��ە{~�Nw�ӄJʝ>&o��][��^=�Y�!z����B���$:��u���l>?G|����4��>� ҵ�z�Ti�4��_�����v  ��&���Y]���������o�Ϫo����%
wU�9��n�c20u}�}��Lm6�*�|���}*OW�ݾ$oK�g�%>컺C�p�]�m���8o��f�_,^�)�+�����x~���W�����Q��n�=d�L�ڸV�y[%��,O7�b� �B� ���<��q4 �7?���� ��$�2�zS#��]WA��u�'�z:����Rf�1\���N��&�m�<�;~ (��ְ�N�Տ^F	n�<��U��L-+�5 �Gk&+S��z��]�����S�z�o������͟�2���׶�[ϰ��˫suj4\��	dZ' �]<ټ�@�0��R��Dڸ�K�2�<�*�}V��&/�@,qd�Igc�&Y�Lj�����;׭����s�u�)�[��P"����Vh	 �$6  �j ��&" �󮙦��8cah��)�]��XR�l��� �8� H=j����A}��d���h�.<?�J�=��op? R7Ў��l�}���E`鬯;�K�93��=�;\QX����2G�3����"�  ܩ{R	�Y<�����I��/޾.��r��fV
hI g��G�j�)��~�[�S����u([��<H%�0�
è�H�U ���� [�'�ťDã���@(=�b�/�V������9.pt>�Uj,W���f?�ͭ�l pD9�X���� �2WR�&��J *f���| ������6pYM) ;q����~����X�T��X<v\�A�i���sO�ⰸH�|@�>7�dh	�k]�H�-	�t0  ��r+�չbrЬV��G�����YU�m19��I��;��~WLh���@�
H!�1  ���)׸4��18jrb֤�8eC3g��ʝ���:Ǵ�6�ێ̧��!~��A�N��O?�����̱M ��Xޗ�)��nX����X����|�����~�_���9M��1���,��&pxX�H�����f�3UFߞl��z��`��b��i1e��r�5ͦ�N�5{����t/�e��sU?]��|ZFKm4���ֳ��U�EsV�e�ʁ
��-�)��Ѡ������L��"=���( R�� |HI. �?�̸���ۈ�=��[��P��-�� Ʋ|��[�����%�����5�1������^�K�Ơ�m{����_��ÐH8x#�Slf,"v��Vef��5Rb�p��©q|D��i4�*v:���g����\<*��i넵j04'Oo��=�bO�H��z���Z�k����1��!,��x�j�߂:�_�9LJ$�e�<mQ�;�l��Q#H1+���P�߀Z���m����	�,���� �?�����f|@�&X� 
q5   P������r��zQ�yE]V�r,��U�r)�[��D�Ï��	c�]�yy�	�B���sha�����V����f����j2���UP����֋���|��&a�Q� �P'&�\��'_\c�s�^��.�2��	LA5g�e{�R������>��+��e���� E�:}ap/��//�t1���}�����ό���Q5=f���Oo��;!pͅ��IJ��� ��J��o��+�[N~�սTlP6�`��H']kO��j�4�����n��'�ؐ��B����_	v�藄�U�����𖗾��t|Qә����c*.��ݿ�ć�� d�� �`������WUk���~�tͲ��!�DH�[�&P ��G�-fE��C�-�_Q�T�-,c�U�ڗ̀YD�"�4������$@��bx�_B��C�'<�Q}6D�(ol�'+rJ�K�̱�ޫ�|r݃�m�K�C�F��j,?Ĳ:�P����0^������^%��k��7��l����A�;(��|����9��m]��^��v(LRLRiu�v{�^�U}�+<��O��:�+s�l�s9V����Yu5�����1@�'K�e��᪎�P)�[�)��;^��`��ؕ '7�L�,�(�꯷�~9�Wt?��q F��s���*�gԱA
�>k��~��}w�b��iYw1ͻ�=��C�J� bX�x���y%Q��{�z4�C��C�{��G�u����o������)�x.���39Qx��8����Dr��v,*R����~��}����(���E�۸U��i�ջ�ܝ������vfe���T�z��W#�����GȲ�a��a�	�-�x��5� ��32?i��Y��\(R��UOR �9m�zN�~�`�ySa��%���n���3���X�'.^���7�b{��9��Ebզ ��yR�od�D,�����RRh�qLadw�(e)J$  8�������6D7�IY�' �ߘ ����ŵfzS@��i��V� 2�`We���i�WW��@�m��y�R�kשcbRI�3u�;����r������  ����,���J͚#ɑ��gR�2��u�^�o�[2�v4���m�h��&�p���v�Y7���:�=QC�*a�	$ D�� 0N?��� ]�G�����424}�Ԥ���oq����xUf-��G�Ү|�h�Z�)s  ��5�F���ޮ�<6|��9�4�U"�/��rns���5�7x[�5�Uӓ�y� � 6�\vDV�j������͙t�/r/?;�2�#��%*  �D���`�>P�߽vem�Ym*V�'��]�+����9�R��!�,=�V�O������9>����>���g��>)4��f`��b�n�E�� sm1Jhv������K���4��D�kFce{�;��R�TW�����ջ0s�n��r�j�j� �r�9��u)�T��<�3N�t*�ZBae0Op���>H ���X+��t[ )�[@�9�b�VRs�Ǘ�uڼՊ����[�g���~^|Z3౧��JB}�������x�Q�jڮf�� J]?��:f�dE���ŕQ���
@?��[\����%��#�̖\���_����Hw�7�|���
�O���:\��ENe��)vai8@S�<B�]ômW.�4�5�=�|�gFx��>����6ƨ�lnr��z���6]Aa��_�\�1Rw����gu��;��� @Gd�ٛ���}u�1����ȝ����a^UwO�ʒ��l�:����)Vs�:u�'��9T2���%���{�F�^   �O[OMּ�^�s�l}o3Š̩~�̫' ����:O�hGq��ӄ��,L���q��%S� '���4#eSQ2�t�����*	�NqL���6��6Ϲ�  N���~U7�Ņ9o���������Q 2�")��jH��	@V����{3 �A�C��=gƏ�ӝ ��T��+��� &�:��M��R,�s�� �?o���|��r��	Oz��/��=|�9���u�'�x���>��2  0�8����f o�Z   �a�?���G���ݫh�"6������'��m $Ê����Y�@smԊ#�����@�s�J�,� Bf
���?���M  �9%�f�x\�P����e��q���L���ƶ�e( �q�x�m
������&5\�c4 �?IR(>nT�âT������O.��Z���a:�"��a	�`Y��W 0�gI`�`�	U�| ��LӪ�����*�;�c\^�{:��+��^�{*�HSU�]	�03���8�`��e6�^�v *�$�m1�ꢎ�[������'��㹷�������@Z��G�}�&@��_ S��7K�K�Eg�x]�LQ�
��X.������<���  �qQ��R3�R~�w&7J�J	'T�&��cF��5��Bm��q{�wt �BsV:&���|��%��47��n���-��W��RWg��f4N�/n?�3�'���M�[��ӗJV��<�k����V�_���;���o�P���A��2�AsS�"�d�`��k~k? "}����aE�� �P� �zփ?8p�������cz��>n��R,jmݽό6�!68�d;���?���6��_F�����<����f��F���)b�T��g#�ʲ2���#�r(ٟ   �������kj��
�^j�Ou�GW|�uV)�W:����Np�}�s������l�O�+�Wgׯ�8��	  �swW}v_$%cm��7�|��G�\h�v�3e>�w��t�~]Jr�
SS}c����.�|���Z�>  �T�v��nߡ�;�^�@�E�.M��$,vS�1�T�����]p���)Ox�CZj'9���
��{�D�	me�����ϖ |^�vU:   p`5�ss�l5%��U���PS�Ⱃ.������cl�+��y����_+7f�B��>�[Rީ�2����Ҿ�Z������� n l�<�Ylp���I�H��IB}k��>�e����� �����dA6����?尟���,��v�R�.nX�.R�/dZ����3lB�R��2o�mhrI    [remap]

importer="texture"
type="StreamTexture"
path="res://.import/vegetation_fern_01-export.png-def1c1617c823971343fcc0dae61c805.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/vegetation_fern_01-export.png"
dest_files=[ "res://.import/vegetation_fern_01-export.png-def1c1617c823971343fcc0dae61c805.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
      GDST@   ;            0  WEBPRIFF$  WEBPVP8L  /?���BD��6C��m& �i����a�ڶC��E=��!"2��ܶm۶m[?�g��}�Ϭ#[3��V)3#����ʈ���k{��7��m�vIN
���zz.fffƟ���|2COSUŖO�m��mm[���1�\��x�ضm�صcV����6c�m�}l�Kc��[�[۶�d��!#gPRt��X3�1�ܶq$����^���_ο��Φu` F1&G�@��4%mN���HV�  K�^�Jtn{�j���7  ���˺�w��WW��|�n��n?   �٭� ����nv����  @l��N/�J6*\����V9�.�L�|�ƻeOy���tz'��
��ϫ���=�H1�@OVEY����w�o���گ�'fp�#����LN�����u�!*��d�J@��,xs��z�h
�L����!G�I�ԝ�@�!lU(�`��{�߮W���_�F5]��O�kl`�[�z�^��FPрa��
a�&���#Q�	�zP	����pV�b�f�<#LH�2�F2M-q�y���3&Ýޯ��f�]N��҇��
Xk��� �Φ�%�Q!��M�M4B+�i!W'a�D�$l�4i�1���L=�������Sۤ�$&��f�'�����T�����/�������
� s�&�b.��&�L�h"@,;0$�s	��p�P�X�0){b3l`���C�Uh˘&Ҽ��A9��z+}��R��M�)3�MV�M���`A�J�`r���h�Ą ��l@�%��7e��f��(���*% �	 �%g����t�ԣq���>��'�}F�)�eǴ�-ϴ5�$�&�@J� "!\ّ�Y��Y�FJ�*Xb���$��QPa�<K�6��9Ά�R�r�ݢ>� �:�w#�y?�Ϛ���vtZ�[_w" ��(vD�$�&o��
 �p�DI	ָ�R�%�sNIÍK�0�$� �iFc&�jM��  گ�jd�ps!/i���?wY��򌛗q���ώ  0� ���W�- �*�&Yb���4Ғ�8�B$Kմ��j��4"� ��D$�`HAŦc�a   4�y�dp��s����ߟk�B˂�?<�f���xB�� !F �d��Xe�r�Ty���4�k�I�\bZ�i�(�s� "ii*� Wd��p<g޸���O��jUS��f����wU�TO�{��3�L�D�21K C\%;�[ǩ�VO} �f{5�Q�4�/��d2
d�4ǽ���*�A0�Ũ��&���f�}����������ji����0�>w '�a�'(Ƃx�@M��T�`���o��&���ĭ�fԒLk8�U�Q4s1��	�0QX��SG*��� &�-  ���f�O�� �9'��&hҙlfnzl ַ02h
 � %Q��)�L�f�M�b�̆MJs�����tR:2`Lif��)�nj�f�l:����[�r �<���ܣ�W��� h���:H�.Ec%��8�8�(�F�����������wܢ.ҶP�ˀl�C���5.��U 7�ƑJH
��Po�& �y�	z��h��`�������8�lp�F�$ ��.�M��|��Z3A'w|��!/����Y����� .�䃔�"�3JƑ$��DU�6��m�3�[Z���n�m��: �����%냲��\IU�� l�n`)�l�I�rC�~�Ͼ�Nw��+�x��l/��_��n��q͗Nw��K��ՙn&����:у���!�T�9��lʏ��p���[�[p�+��H ][�DLc�(���K�j��D�P��*� !m2��8����W�K��^r��wѫ3��=m�;�������cb�����Í��Y�f0�m�^�R�B���45�5P7��.�0[``�``I��t26�� $LHJ�&CG[�^��oU=w��ts�S_TmV�^�Y�<H81�}���~��?�l��{�q����Y�C�$�T!���es�ĦI!�L �ͥ�|�z;t��f�u�3�Y��� �1C��b#xs��U�>��l�/)�k�oZ���q��/�S6��s.l׭ֳ��Nw�5���7�n�y�&`U��>Wǉi�!3�t�����9�JGp$��K�'�a�;h�`��`.%6Tè��,�@&i@�V�
��L,�m�-������y[_�ٞ��[�OY�;D{z���{ll?cm����=�O�����l?����:�\=��l���9���%Q3�d@A�gGP�+�ͩ�I�F�	@02! ���` �@@"�uT��]�\�(Ǿu�տ�Xju����l���{���D�e݆��@N�?t���ig�]�f��ľ����;�&6��D�1��b��2��*�nB���#t�L��cRA8(�%�`,`*` ����FE>ڰ�4�}�|���_oa��a4�-]�r����!ئ�v����܋���꿤��ّ���f�aC.3I $��|%�.lJ*``���7����:w9V�͑*�X3�$�b��`�xHa�Z#6`V�x��ߐ/�ki<o|�<{�����p����F�z�o���ޭ��E�\��k���R�:ԅÌq���d��eIٍ�N��-�4@ s�>��D1�k�b��&��i,�Z�'��Q��6���n�lHg�3�أ�:[�״��r#V��Lj�_�^g}��Ϟ��?r��8��(�L)�bВQ�R��ter�L��$�J�!��z�y�9��@�� ��0��
�@RJx0�����p�p���u�Fq��oլ���q?��
����M���߮p���n�ߏ_�:����b�c��Р��3a�L`���J����G& �!�E
H� ()�sjT�or!Nkάf�O8���{u�����7;��?�9C��Z��q�m����������8X)�?.��v�LD�B<#ŹxH���J&GU
��&J ڻ�T�X	[ @% ��栐A�Q���_dZ3���������͑Ο�k�ݚ-[r���wK���Qߋ�&�Ɵw�V�"m�6#ô�����Oq�b�+�N�H ��[^ �1  ވ�}�� ��v(Ŵ\GB�D  D@P��E�qn�M�����>���|����2�C>kn�g������^�͉��	��K�󕪛#��N�Z�26�P!� �S��`4 �>��v�vd��0��� 6�����b��V�m]as��II͐�Jb�ȝf9�ڃ��&�c�s'�+|__���k�'�y�϶��������f WǸ��$�8�pn2�f@�4$�d�T D������(ۘ� �0ZO���@- ������[����W�&�n�`z��2��q�8��Zq��S\�x�C����o��x��e/��=�|�s~�\]+�,��99� C�� ��P�)Z � Tw ��y@��n  ��&l^u��� :�]�簲V3� �-Y�H
���b���A�9���V~��|�f�\q��Q�}C����o>ho���ML�W�*��$IQ��^I�
�Fn �� ���']��G� ����������9�d �+ݽ�Ҫ0�%=��-����%����F�9E�3Z7�4U���NͰ�6aQ�&A@�`5EQ�N� n�[�{�(³���g��� �� �gxgkNB�$$�!��zi��1���/w�	G�0�9�q�fԅHƍ�I���,M��L f�^� �1U�Z���|ju  ����Ś��Po��`���J@�L��Rs7xb�˪�Rj�Ԁ���j`�AOhNH �����S/��)�}2-�zU}��$sȍ�k&����m���{'��Z �|�
gKrU���9*9��Ne�d4�8:p�0FAR�@2@  �2��]�S)g�����]��{G��;ZOCd	�x��W����wS  ȔLs$ ��H&x�EK�sd�H�,(�-X����(  w� &0��g>�;�d+ӑ�{��V�|�M�l[�Zώ��Gl^�;TgE�*��j�˯;   <q��`2�@0QA%Tf��,Mh,�� �R/�D�D�A��. )�@��y���B�҅�׻�w�9�|�1 .�ͫ�Z �,�ˁ�=�3Pv� (0  i�A�NG`@@�i����̌V v@y��*�b��Z�Aa� !^`-(`� @��mEQJ`j�M<$@ �tf�����*��H�|3Qb�%�ng
  `�@�P(�&(H��.�� f��3�0� �t H�h��$�+�7P3!� ��   (  ��  (P ��!w+���ڴFc|B�N��ɕH@@�@�0�* 0�Lr'8�| �K�� pŖ�F'o
 �im��1Yx �f�W� �`�S[�p�A@ u���a�@.8B�L��� �u7  �5 6z 6zi�d`�����©Ќd܌� "iJ4IP �������7�����"YPL&1�S���I5��0��d�"Lg����ծ��� � 3N�;�5 d�
D"�%�fq�� P8�  /�]fpif��߬uH��Lra w
�A%��`��f ʆ ��YpU86�~y�؜�TGUyϘA��P�  �`���	��K��2#�u�ɄP!J	��& li�}Wq f@d���(�
 3� �+��^���d:���z��9 2 l��"��M�����+��!��I�|�]�J��%���� @)`��,F  ����z p5s�{�ӯv��� �'�U�����e1�e�w3�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/vegetation_strawberry_03-export.png-67ae16259cf90f9f27048e80535a3d62.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://textures/vegetation_strawberry_03-export.png"
dest_files=[ "res://.import/vegetation_strawberry_03-export.png-67ae16259cf90f9f27048e80535a3d62.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    [remap]

path="res://Bee.gdc"
  [remap]

path="res://Flower.gdc"
               [remap]

path="res://GUI.gdc"
  [remap]

path="res://Main.gdc"
 [remap]

path="res://Pickable.gdc"
             [remap]

path="res://dragable.gdc"
             �PNG

   IHDR   6   >   `�   sRGB ���  
EIDATh��m���=3�v��C�w��à��RR�)5V,_HR)?�`,MИ��E",41�h.Q+��QS��|E��w������3�3{;3;3;��R�_��=�Ow?���g�S|�ȐR:-���98��TJ9(�q��%'FIߊp(Z��B��TTjj��9�E(��~�.�Y����9�8�XA� \�<�*p��� �jfoT�9Ȭ~Tk7�U��	�-v�O19jgZ�JX���ެ �p8���LO� ���Q���O�Ru�j�1��`_�p5��$}d�%�6Ι��b�%f���(���B�k��w����u�O�K���-P�U�I&unR�x�/�M��f�2o�E��U�1��������u����"��������)X�3U��3f��p|����^�XGY:d�FJ�?�����#�f)��}u�O���b;��T��]�;������jZ���ʷ���,Ā=�g�ӑ"�h����	0������Ku�O�;�WH���'۩�E�Y�RQ������}��1O]3��7�N�nVU�J��
��Ov���q!��a�3p��/V9~dba��N`�����N%��4[���v���&щ�!uu�g'�w|�;�1����p��1Ėy�����m���S~�O?*0�Q~0D���9�g��Pѱuz�X��B�e�V����(F+����l`y�P~x/�ӽD�|No��(C$bv�p{�H���;MQ�����3�.�ƀz_T3c�"�E���pp��l��{�#_���(�F�6��v)^R��E|�N�g`�9ʼGƋX/'�)��DM�g�|鍈��~�±��{���~��OX���my|��O�HH�Q��"G�U͘�iK����T,݌4_+VIl|��c������K���ێ����WsKU�eNP����{�>����9���s�7����ԯ��=�8�{Lr��#凷̙<n�}ڸi�h`]:�b���A�jj�i���'I��f}�f���ڎ1�}R��ӾֻY\�jM�O�&�3.h'՚$Ք��edb�6��'���hz`ubi���*���򌯬PJW'���ʼ��r`=($,G(1	�7A�S,�K�8)v_y���`����7��l{}[Y����K�W�7G�$��4 b
������k�+�\!���{azh=��'�S5I~��]13u��Q�N�&��pn��]˼G	�\� `pG���5j�1Lzgi�~��Ʀ�m��P����:
Ba`���?8�{�Y՚�X�Q;Y⇲�L���>�5 m��i(�VR\�|�Sa�A�1�wy'|��}[�>��P���m���%Ɔ�D٧��������D1��p��q� b���i�t`�%� �
�"U�����h_|����G�@`����`3���;�( ?	jzK9i)aֵ099���|�{*��1�-	@q�����.�Nz���0{�A��9�J>��𳠾7\Q���\�q��lI� J���Ӟ��}���c��S&��M���޸�U��FY���{��[�\y7�(�<۰�3.,E�JD/��&*�x^����RC��j3ۥk �	�㮩Yz�y.�w�D����@���+�� '�̘��6Tl{����;�����GW��:Z߄|�'��u�)��6�rR�i\�w�N������$��GΌ(���~������Un|��tkV >�D\��P��k^IH��P�un91�Qr��r�!hF�]�+�H)]�y5�;�nXZى5L�>RzM7_Tj�xyb�j@�?Z���;
�Hc����̛�#�Tv�B��v��lY�G�Γ�d�9��Q����-�k��L���Ę�<��{���"�3e��-*B��;tΟor�U�2&��ۡ'��pݴVD���g?�!���n�e�Sf������ݽ�[&9�w^����5.���ٕ�xI�|�:pDp�����_�o��xu�B��n]��@h\R^���|h3�A`�S��Ϫ��T���о*����M'��oәw��0��"w��G�9m1����r��Z�ID"p�ƒ������b���[r���t�!|O��l�ӿ,x�@�*c��]ku:�(\xg�B{�鼵_�:U��؃/lW���e�zo3T�E��ŚT5V�Գ��E��]�֞;u�Y��"x_e��񣷑�[L�d]"p,Swն�s�Ϭtk�?ۥ+��-k��]j\�v��u�D�_a���)(�\�@~�㐲��<5���g����:ќ@�G� d�z����N�&�G�зM���NH����qJ\3�M����(��A=�@�p���Տ@�����-	##3c��+��t�ɖ�KK3+Ene95+�.�eoy.�fO��i#�Lv��������=e���$�2Ւ�Dn�3;3�R�b[D�!&돯�2�8�F��G���烡�2@�P�v�jM!�	p ǗDS�ss���\
@jV
i��g������m�&���.����+$
��=�Q¨6��eTD�+z �NPQ'��)v��v���A2�\����]�.�5����m�BR���醉y��+U|!��/l��z���^    IEND�B`�     ECFG      _global_script_classes�                     class         Pickable      language      GDScript      path      res://Pickable.gd         base      TextureButton      _global_script_class_iconsT               Pickable   2   res://textures/vegetation_strawberry_03-export.png     application/config/name         DragAndDrop    application/run/main_scene         res://Main.tscn    application/config/icon         res://icon.png  +   gui/common/drop_mouse_on_gui_input_disabled         )   physics/common/enable_pause_aware_picking         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres          