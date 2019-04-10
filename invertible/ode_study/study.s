��
l��F� j�P.�M�.�}q (X   protocol_versionqM�X   little_endianq�X
   type_sizesq}q(X   shortqKX   intqKX   longqKuu.�coil.tuning.study
Study
q )�q}q(X   perform_trialqcdill._dill
_create_function
q(cdill._dill
_load_type
qX   CodeTypeq�qRq(KK KKKcdill._dill
_get_attr
q	cdill._dill
_import_module
q
X   _codecsq�qRqX   encodeq�qRqX  yÊ|d k	rdj || d d<  | }y$tdd |jj D d | d< W n tk
r\   Y nX |jjd	t|  t| d
 t	r| d
 n| d
 g}x2|D ]*}|j
|}|jj|dj |jd| d< qW | |fS  tk
 rþ } zræ n| |fS W Y d d }~X nX d S qX   latin1q�qRq(NX   trial{}/qX   trainer_configqX
   log_suffixqh(KK KKKshX   | ]}|j r|j V  qd S qh�qRqN�qX   requires_gradqX   numelq�qX   .0qX   pq �q!X*   /home/marc/pristine-ml/oil/tuning/study.pyq"X	   <genexpr>q#KqhX    q$h�q%Rq&))tq'Rq(X6   train_trial.<locals>._perform_trial.<locals>.<genexpr>q)K
KX	   params(M)q*X   configq+X
   num_epochsq,X   checkpoints/c{}.trainerq-X   suffixq.�q/X   saved_atq0J@B tq1(X   formatq2X   sumq3X   modelq4X
   parametersq5X   AttributeErrorq6X   loggerq7X   add_scalarsq8X   flatten_dictq9X
   isinstanceq:X   Iterableq;X   trainq<X   save_objectq=X   epochq>X	   Exceptionq?tq@(X   cfgqAX   iqBX   trainerqCX   epochsqDX   portionqEX   outcomeqFX   eqGtqHh"X   _perform_trialqIKlhX&     $  

 qJh�qKRqLX   make_trainerqMX   strictqN�qO)tqPRqQcoil.tuning.study
__dict__
hIN�qRcdill._dill
_create_cell
qSh(h(KK KK	KhXt  t ti dddddddddd	d
i d t |   d dj d }tjdtjj|j  d f d|j	i d j
}i }t|f d \|d< |d< t|d d d d  |d< t|d dkr d dj d dd}t| d d dd|d< fdd|j D } fdd }t d! }t||||f d" S qTh�qURqV(NM�K2�K(X   amnt_devqWX   lab_BSqXX
   pin_memoryqYX   num_workersqZtq[G?�������G?�������G?6��C-(X   lrq\X   momentumq]X   weight_decayq^X   nesterovq_tq`Kd(X   datasetqaX   networkqbX
   net_configqcX   loader_configqdX
   opt_configqeh,htqfhaX   ~/datasets/{}/qgX   cudaqhhbX   num_classesqihchdh<X   devqjM'hXX   TrainqkK �h<�qlX
   batch_sizeqmX   shuffleqn�qoX   testqph(KK KKKhX   i | ]\}}t | |qS qqh�qrRqs)X   LoaderToqt�quhX   kqvX   vqw�qxX7   /home/marc/pristine-ml/oil/model_trainers/classifier.pyqyX
   <dictcomp>qzKMhX    q{h�q|Rq}X   deviceq~�q)tq�Rq�X>   simpleClassifierTrial.<locals>.makeTrainer.<locals>.<dictcomp>q�h(KK KKKhX   t jj| f d S q�h�q�Rq�Nhe�q�X   torchq�X   optimq�X   SGDq��q�X   paramsq��q�hyX   <lambda>q�KNhX   bytesq��q�Rq�)Rq�hA�q�)tq�Rq�X<   simpleClassifierTrial.<locals>.makeTrainer.<locals>.<lambda>q�h,htq�(X   CIFAR10q�X   layer13sq�X   recursively_updateq�h2h�h~X   nnq�X
   Sequentialq�X   default_aug_layersq�hiX   toq�X   getLabLoaderq�X   isliceq�X   lenq�X
   DataLoaderq�X   itemsq�X   cosLrq�X
   Classifierq�tq�(h+X   trainsetq�X   fullCNNq�X   dataloadersq�X   testsetq�X
   opt_constrq�X   lr_schedq�tq�hyX   makeTrainerq�K9hX(    


$q�h�q�Rq�)hAh~�q�tq�Rq�coil.model_trainers.classifier
__dict__
h�NN}q�tq�Rq��q�Rq�hS��q�Rq��q�}q�tq�Rq�X   config_specq�}q�(ha]q�coil.datasetup.datasets
CIFAR10
q�ahb(X   moduleq�ciresnet
iResnet
q�X)   /home/marc/flow_ssl/invertible/iresnet.pyq�X�  class iResnet(nn.Module,metaclass=Named):
    def __init__(self,num_classes=10,k=64,sigma=1.):
        super().__init__()
        self.num_classes = num_classes
        self.body = iSequential(
            padChannels(k-3),
            addZslot(),
            both(iBN(k),I),
            iResBlock(k,k,sigma=sigma),
            both(SqueezeLayer(2),I),
            both(iBN(4*k),I),
            iResBlock(4*k,4*k,sigma=sigma),
            keepChannels(2*k),
            both(iBN(2*k),I),
            iResBlock(2*k,2*k,sigma=sigma),
            both(SqueezeLayer(2),I),
            both(iBN(8*k),I),
            iResBlock(8*k,8*k,sigma=sigma),
            keepChannels(4*k),
            both(iBN(4*k),I),
            iResBlock(4*k,4*k,sigma=sigma),
            both(SqueezeLayer(2),I),
            both(iBN(16*k),I),
            iResBlock(16*k,16*k,sigma=sigma),
            keepChannels(8*k),
            both(iBN(8*k),I),
            iResBlock(8*k,8*k,sigma=sigma),
            Join(),
        )
        self.head = nn.Sequential(
            BNrelu(8*k),
            Expression(lambda u:u.mean(-1).mean(-1)),
            nn.Linear(8*k,num_classes)
        )
        self.k = k
    @property
    def z_shapes(self):
        # For CIFAR10: starting size = 32x32
        h = w = 32
        channels = self.k
        shapes = []
        for module in self.body:
            if isinstance(module,keepChannels):
                channels *=2
                h /=2
                w /=2
            shapes.append((channels,h,w))
        shapes.append((channels,h,w))
        return shapes

    @property
    def device(self):
        try: return self._device
        except AttributeError:
            self._device = next(self.parameters()).device
            return self._device

    def forward(self,x):
        return self.head(self.body(x)[-1])
    
    def get_all_z_squashed(self,x):
        return flatten(self.body(x))

    def logdet(self):
        return self.body.logdet()
    
    def inverse(self,z):
        return self.body.inverse(z)

    def sample(self,bs=1):
        z_all = [torch.randn(bs,*shape).to(self.device) for shape in self.z_shapes]
        return self.inverse(z_all)
q�tq�Qhc}q�(X   sigmaq�]q�G?�      ahvK uhd}q�(hWM�hXK@uhe}q�h\G?�������sh,K
h}q�X   log_dirq�h(h(KK KKKChX#   t dj| d | d | d d  S q�h�q�Rq�(NX
   /{}/{}/s{}q�hahbhch�tq�X   log_dir_baseq�h2�q�hA�q�X   ode_study.pyq�h�KhX   q�h�q�Rq�))tq�Rq�c__builtin__
__main__
h�NN}q�tq�Rq�suX   Executorq�coil.tuning.slurmExecutor
LocalExecutor
q�X   nameq�X	   ode_studyq�h7coil.logging.lazyLogger
LazyLogger
q�)�q�}q�(X   textq�}q�X	   constantsq�}q�X   scalar_frameq�cpandas.core.frame
DataFrame
q�)�q�}q�(X   _dataq�cpandas.core.internals
BlockManager
q�)�q�(]q�(cpandas.core.indexes.base
_new_Index
q�cpandas.core.indexes.base
Index
q�}q�(X   dataq�h	h
X   numpy.core.multiarrayq��q�Rq�X   _reconstructq��q�Rq�cnumpy
ndarray
q�K �q�hX   bq�h�r   Rr  �r  Rr  (KK �r  cnumpy
dtype
r  X   O8r  K K�r  Rr  (KX   |r	  NNNJ����J����K?tr
  b�]r  tr  bh�Nu�r  Rr  h�h�}r  (h�h�h�K �r  j  �r  Rr  (KK �r  j  �]r  tr  bh�Nu�r  Rr  e]r  ]r  }r  X   0.14.1r  }r  (X   axesr  h�X   blocksr  ]r  ustr   bX   _typr!  X	   dataframer"  X	   _metadatar#  ]r$  ubX   no_printr%  �X   _comr&  K X   _unreportedr'  }r(  X   _log_dirr)  X)   /home/marc/flow_ssl/invertible/ode_study/r*  X
   avgLogTimer+  K X   numLogsr,  K X   lastLogTimer-  K X	   minPeriodr.  KX   timeFracr/  G?�������X   performedLogr0  �X   default_binsr1  ]r2  (G��#�TLG��|�{-G��ZJ�WG�)��FfG�b墭�[G�
��N��G�IE/��pG�Y�8�G�=i��G�? �T�G� �z��qG��(���AG��j�U<�G����t�G����R6�G���u�J�GG���C��G��;=ğG���=��
G��#���XG���i���G��Auԙh|G��$<���G��870DG��x�>�=G��ĖB8�?G���B�օ�G��A%o�J�G���"��G�ղ��r�G�ӹ�W��G��� ���G��MM�\�IG�ͣ�ۑwG�����%G��~����~G��D�=,G��>���څG��gq��3G��� ��$�Gþk��&:Gû��-��Gù#���HGö��v�Gô���n[VGò�m�{��Gñ+�/*��Gï8q��Gìa���YGé�SvadGçtׂ�,�GåR�v��1Gãb����,Gá��� -�GàcE4��GÝ!��kGÚ{'A�BaGØ�ީS�GÕ�'��GÓ�G;0��GÒ@�rT�GÐqR$9dOGÍ�O��*�GË-�A> GÈ�կ��GÆv��ˬGÄkPl��mGÂ����GÀ�'8��G�~���!)�G�{��c�qG�y[�l,UOG�w]y���G�t���}G�s)I k+G�qQ�p��G�o}lp3xG�l�� .�0G�jUcCqG�g���(��G�e��<Y�G�c���6�G�a�v���G�`(��$�G�]am\È�G�Z��=�AG�XH7���G�V���%�G�T<iG�R>6�1��G�P��J-(�G�N'\���G�Ki�C���G�H룃E4eG�F���F�G�D�m� �G�B��tm_G�Aa�4�G�>��`&G�<"G�6(�G�9��܎S�G�7@LR׷G�5#-�y�`G�37@��޴G�1x�m]G�/��}�#�G�,���ԬLG�*?�C؜�G�'��l9H�G�%���y��G�#���W�AG�!����7�G� L|�ޏ�G��WVN�G��}��G�}��R�G�C��i3�G�=��� G�f�_�9�G��J�
�lG�i�06�G��+n�
G�	"����NG�ٹ�j.FG���`�(G��{��c�G�*�Q+��G��6��tG��`pdP߀G���	`�.G��s�*��G��Q�l��sG��a����:G��$�$�G���!�~UG����=G��y�.�eG�����-G�����*�G���Hz��FG��Y)���G��p����G���л��G��,2.�PG�س�ypEG��t�N�^G��jJ�v,UG�ҏ,���6G���@(�1G�έ.�xAG���A�ᯅG��Z;����G��6Na�TG����GA��G��5X�G��P�#�G¿{�:�r�G¼�"��hRGº( ��G·�{�c��Gµ��)�W�G³��%וuG±œ!�G°'�
�G­_�)��Gª�S='lG¨F�NݿyG¦��ܜG¤;v<�G¢=MT�wG ���T�G%��k�1Gh;C���G�dl�GG��֗cWG�f�fG�.6�2\G�eаG���\G �O�z�G�?_�̶G?"V�1G"7��G6J��Gw,�W�G��h�Y�G�|�_FQ� G�z>�(�e�G�w۾�#�G�u�~�f`�G�s��?�opG�q���2�eG�pK�#��G�m����G�j�S�{eG�h|z|��GG�fB���1�G�d<��B[�G�be��j�G�`�t��G�^hv�{�G�[���#�G�Y!p� �G�Vؕ;dz�G�T����)�G�R�$c�dG�Q* ~,UCG�O5RY��G�L_�U�G�Iʾ��|�G�Gr~ዷ"G�EP�o�`�G�C`�}�=G�A�È�s�G�@�##�G�='��@�G�:x�-/�~G�8un�]�G�5�j���eG�3�Iǌ�G�2q�"�LG�0o�e�EG�-�RDl�G�+*�1��G�(��-�<G�&s̆SG�$iE�K�G�"�?>�G� �h	�/�G����u��G��ܠ<��G�X�NN�G�1�*G������G�AsM$G�P�t�OG�zF�BG���;��G�
����G��L��GSG���ʝ�G������G�į|�`�G� '++�W�G��^}	c��G����NZ|G��E�uƟZG���k�#G��:�ၔG��<cȞu�G������G��$X�2X�G��f�UEG���%d�gG��g���G��^_��G��>�ϧGG���3�oG���iu���G��w%gG�ِ���;G��=��sh5G��!��vG��5T�CߣG��vM4�V�G�Ͽ�1noG�����L��G��=5E��G��ڍaV��G�ůiA7�lG�ö���yG����o�?G��J�|3�gG���`��2�G�����5�0G��{@���G��A��рsG��;�mx�QG��d�4�N�G����^��G��f�f^� G���g>ֺG�� /,g��G���p�'�G�����/��G����a��TG��)D�+�5G��3¿�G��]��p5�G���t��KG��qR�gPrG��O����G��_�]�:G�����J�LG�������G�����ErG��w.<Y�~G��AN# CG���R�ѱG���K ��G�����aG��nڦ��G�}��]��IG�{)zU@Y�G�x�W�i�G�vr�	��G�th@6ц�G�r�Q�2ׂG�pݐt	�G�n�,��G�k�w�s�G�iW��:�VG�g	�$5@G�d���Q�G�c
M���G�aO/F�0]G�_x�z�G�\�E�A+�G�Zm�;?>G�W�M"8G�U~Շ�|2G�S�����-G�Q����d�G�P&\W[r�G�M]��HG�J��p�AG�HDi�;�RG�F��d�aG�D9��4�G�B;zHڻbG�@�)Y�pG�>"��G�nG�;e}xo��G�8��m|ՂG�6�E���^G�4�V�EQ>G�2�N��2�G�1�X(\�G�.��Zw�G�,m�G�)�����G�'<��G�% ��qG�#4^����G�!um�jT�G��;�ؚIG��|��YG�;�$��G��[��H@G��S���QG���Z���G���S�hG�J
�(G���8hH�G�
��0BG�z|��G�@c��ikG�:�\���G�c±O�G� ��D!kG��el�%|G���35��G���t_mBG���L;?z�G�����)�G��ߦ���G��(h�(��G��239a�;G��\.�A��G���*U�q�G��p&|G!uG��N���{�G��^�K4pFG�� r��nG��.�i{G��>�4%G��u�\w�PG��<�G���:�Z�0G���L���qG����&��G��n<��
G���T�l�)G��(�bϙG�Ȱß�sG��q���"G��g:�68G�d0�G��ܸΎ!G�����`H;G�����G��Vnb�G���%B`1G���<WrG��	Y�ef�G��NQ�\.�G��w �U9G����W�|G�� �F�JG����R�bCG��}�KoBG����[ف�G�����UG��%��~ݓG��[�C�gG���Q��G��C2�<:HG���g٩XG��8��8G��:���ϧG���U�_�G��!T�܃G��d�&�G��槆#l0G���#�N�qG���O5���G���_H:�G����b5oG�~�QS>2�G�|��s�G�y�iK$��G�w;��!D6G�u��l�G�s3i�KiG�qt�:D�G�o��6�|�G�l�
��+}G�j:�;�'�G�g�*����G�e�=��Y�G�c����CG�a�&���G�`I:LG��G�]�i�
~G�Z�Ii��G�Xx�`;rG�V?F�@6
G�T9�X��G�Rb�9n0�G�P��45��G�Nc��G�K��`��G�I��n�tG�F�'��RG�D��32JG�B޵t\CG�A'�G#��G�?0��*�G�<Z�o=�oG�9��6�G�7n�`*i�G�5M���w}G�3]�D�qG�1�����G�0a�x�G�-�h}�G�*t����G�(�:٦eG�%�"��QsG�#�M��ծG�"�@��G� m5�@vG���L5/aG�&���)G��ߦ��SG�pn:h��G�f5�v��G��v��!G���.�2{G���KD�G�ݭ�r�uG�	U)�ŜG��5�hG��v6�G�f<`wG�Mt��G��u�.͔�G���iF�SG������LyG������E�G��|��?3G��1�P�G����IcG��$���+G��Zi�G���莋G��A�G�g2G��p�ouG��8*eS+G��9�l\G�����%1�G���%Z��G��b��i�WG���h��^�G�֢7ʗG�ԓG�aC�G�Ҵo�A&_G�����G����_�Z�G��?K�G�ɍ"�@�G��:|KQ�G���$DyG��2s8>?�G��s��8��G���׬�!G��ؙ!(��G��9Ec�g%G����C�/8G���(l �G���Ǩ {�G���A$]��G��Hi���G����ث�IG����g��G��w���g�G��>*�/�G��8�a��`G��a��Su�G���/�G��ba��v�G���A�<��G��j4�Y}G���u�"�G����S�^G����cR�G��&���G��/h�#�G��YX_c7�G��Ŗ(+�#G��m�SieG��L���-G��\�J���G���=����G�� �	>G�}Tʴ�G�zs5όoG�x�HQ*G�u�
��b&G�s�OyhG�r��yWuG�plc�8;G�m�W�N�G�k%g(֤�G�h���}PG�foN�wTG�de0vcU5G�b��%Ϊ�G�`�P�l�G�^��{��EG�[�H�9m�G�YS�Bb��G�WsS���G�T�cKD<G�SrZDl�G�QL���KnG�Os�^1�kG�L���DcIG�I���Uq�G�G����
G�E{��$�aG�C���T�G�A�!��G�@#�̒G�=X�D\�dG�:��>%��G�8@Ŭ�uG�6V�%��G�47w�u�G�28��G�0���b��G�.QlVոG�+aaK7�G�(�)�I�IG�&��F�A+G�$�@@4�UG�"��:^[�G�! F�S�G��9�6ijG��.�G�����G�9R�Vv�G���7T�G�1}i�5�G�r�d��G��x�?xG��'�h>G�
7����fG�����G���]�6G���a��1G��[���G� G�FF�G���s�?�>G���ʗOG��v[rZ��G��=P��IG��7�w�zpG��a l�)}G��F4���G��`ܼ�h�G����K8G��(���aG����(��G�俳�f�G�����Eu�G��%���G��-��љG��W�a��EG���L*Di�G��l�T�_�G��K|M>��G��[�]~��G�љ\&sqjG����E�+KG���?�'[G��q�"�;G��
qe/�
G�����G���QX�G���~��G��k�=�[�G���ه*�G��$�&GG���g�"�5G��n/�6�0G��d+P`u�G�����n��G���0}���G�����G����?؍�G��R��9;G��L��5�G���]�ӯG��~�|��G��K��ZM�G��rg��u�G������%RG���:$W93G���cf��.G��z��$XG����}�
G���>_[4�G��#!m�ҵG��W%�
�G���P�Ӭ�G��?�!z��G��<L�TG��
6ўuG��7Ծ�KG���ح=#[G�~�Ɲ��G�{`��^fG�x��/�'EG�v����i�G�t�8�5H�G�r���vBG�p�lVk��G�n筴f`wG�lo^.�=G�i������G�g8)CA�:G�e�k�RcG�c0�����G�aqﯾ&wG�_��V�dG�\ն}u��G�Z6��j�4G�WԖ�xiFG�U��x��G�S��'ӥHG�Q�v�L
�G�PF�Ң82G�M����ډG�J�?>��6G�Hu"8ٙG�F;����G�D6}��`�G�B`p�/G�@�pDÍpG�>_W����G�;�~T
pG�9�5 uG�6Ѻ�z�G�4���os�G�2��KN6G�1$�s"_G�/+��_'7G�,V�v'�G�)�<ށ�G�'kve�4G�%Jk�o��G�#Z�|e�4G�!�z�-��G����%G�k�
i�G�p��f��G�	=�t��G����R��G��R�K!2G�J�G�j���#�G��[AT�ZG�"�؏�G��+��TRG�mp+�yG�c&7mm�G���`�G� �X�6xnG���r��f�G����Ot�G��Q\�H;fG��%����G���e�9�G����K�G��Jۉ-��G��p��j'G���1��G����]��=G��4�/�G��yu���G�ㅰ��zG��[4@iG��"R�uQ�G��U�Ҧ�PG�ڪ���HG��>X���G��
"
�G��	68|�G��6�y+�(G�Џ��3;G��N4.��G��^�/p!�G��ᬈ7d�G�ƞ���G�Đ1b�G�±�\�?KG�����6
�G���!�bB�G����%5G���L���GG��6���G���#���G��/����G��qPDE�G���L4�8�G���EGQ<G��5V@�_|G���e�M��G������yG�������VG���@���G��E�i�>�G���}�H�_G����ö��G��s��G��:���G��5z����G��_)ϧ�!G����_���G��]�܅eG����x��G���ͅ1�G��Ж��-GG����L´�G�����k/�G��$��\G�*f�%G�|U��8�G�y��_�xG�wjJ��1'G�uI[D[:G�sY����zG�q���-�K G=q���-�G=sY����zG=uI[D[:G=wjJ��1'G=y��_�xG=|U��8�G=*f�%G=�$��\G=����k/�G=���L´�G=�Ж��-GG=��ͅ1�G=���x��G=�]�܅eG=���_���G=�_)ϧ�!G=�5z����G=�:���G=�s��G=���ö��G=��}�H�_G=�E�i�>�G=��@���G=������VG=�����yG=��e�M��G=�5V@�_|G=��EGQ<G=��L4�8�G=�qPDE�G=�/����G=��#���G=�6���G=��L���GG=���%5G=��!�bB�G=����6
�G=±�\�?KG=Đ1b�G=ƞ���G=�ᬈ7d�G=�^�/p!�G=�N4.��G=Џ��3;G=�6�y+�(G=�	68|�G=�
"
�G=�>X���G=ڪ���HG=�U�Ҧ�PG=�"R�uQ�G=�[4@iG=ㅰ��zG=�yu���G=�4�/�G=���]��=G=��1��G=�p��j'G=�Jۉ-��G=���K�G=��e�9�G=�%����G=�Q\�H;fG=���Ot�G=��r��f�G> �X�6xnG>��`�G>c&7mm�G>mp+�yG>�+��TRG>"�؏�G>�[AT�ZG>j���#�G>J�G>�R�K!2G>���R��G>	=�t��G>p��f��G>k�
i�G>���%G>!�z�-��G>#Z�|e�4G>%Jk�o��G>'kve�4G>)�<ށ�G>,V�v'�G>/+��_'7G>1$�s"_G>2��KN6G>4���os�G>6Ѻ�z�G>9�5 uG>;�~T
pG>>_W����G>@�pDÍpG>B`p�/G>D6}��`�G>F;����G>Hu"8ٙG>J�?>��6G>M����ډG>PF�Ң82G>Q�v�L
�G>S��'ӥHG>U��x��G>WԖ�xiFG>Z6��j�4G>\ն}u��G>_��V�dG>aqﯾ&wG>c0�����G>e�k�RcG>g8)CA�:G>i������G>lo^.�=G>n筴f`wG>p�lVk��G>r���vBG>t�8�5H�G>v����i�G>x��/�'EG>{`��^fG>~�Ɲ��G>��ح=#[G>�7Ծ�KG>�
6ўuG>�<L�TG>�?�!z��G>��P�Ӭ�G>�W%�
�G>�#!m�ҵG>��>_[4�G>���}�
G>�z��$XG>��cf��.G>��:$W93G>�����%RG>�rg��u�G>�K��ZM�G>�~�|��G>��]�ӯG>�L��5�G>�R��9;G>���?؍�G>����G>��0}���G>����n��G>�d+P`u�G>�n/�6�0G>��g�"�5G>�$�&GG>��ه*�G>�k�=�[�G>��~��G>��QX�G>����G>�
qe/�
G>�q�"�;G>��?�'[G>���E�+KG>љ\&sqjG>�[�]~��G>�K|M>��G>�l�T�_�G>��L*Di�G>�W�a��EG>�-��љG>�%���G>����Eu�G>俳�f�G>���(��G>�(���aG>���K8G>�`ܼ�h�G>�F4���G>�a l�)}G>�7�w�zpG>�=P��IG>�v[rZ��G>��ʗOG>��s�?�>G? G�FF�G?�[���G?��a��1G?��]�6G?����G?
7����fG?�'�h>G?�x�?xG?r�d��G?1}i�5�G?��7T�G?9R�Vv�G?����G?�.�G?�9�6ijG?! F�S�G?"��:^[�G?$�@@4�UG?&��F�A+G?(�)�I�IG?+aaK7�G?.QlVոG?0���b��G?28��G?47w�u�G?6V�%��G?8@Ŭ�uG?:��>%��G?=X�D\�dG?@#�̒G?A�!��G?C���T�G?E{��$�aG?G����
G?I���Uq�G?L���DcIG?Os�^1�kG?QL���KnG?SrZDl�G?T�cKD<G?WsS���G?YS�Bb��G?[�H�9m�G?^��{��Ee(G?`�P�l�G?b��%Ϊ�G?de0vcU5G?foN�wTG?h���}PG?k%g(֤�G?m�W�N�G?plc�8;G?r��yWuG?s�OyhG?u�
��b&G?x�HQ*G?zs5όoG?}Tʴ�G?� �	>G?��=����G?�\�J���G?�L���-G?�m�SieG?�Ŗ(+�#G?�YX_c7�G?�/h�#�G?�&���G?���cR�G?���S�^G?��u�"�G?�j4�Y}G?��A�<��G?�ba��v�G?��/�G?�a��Su�G?�8�a��`G?�>*�/�G?�w���g�G?���g��G?���ث�IG?�Hi���G?��A$]��G?��Ǩ {�G?��(l �G?���C�/8G?�9Ec�g%G?�ؙ!(��G?��׬�!G?�s��8��G?�2s8>?�G?��$DyG?�:|KQ�G?ɍ"�@�G?�?K�G?���_�Z�G?����G?Ҵo�A&_G?ԓG�aC�G?֢7ʗG?��h��^�G?�b��i�WG?��%Z��G?����%1�G?�9�l\G?�8*eS+G?�p�ouG?�A�G�g2G?��莋G?�Zi�G?�$���+G?���IcG?�1�P�G?�|��?3G?�����E�G?�����LyG?��iF�SG?�u�.͔�G@Mt��G@f<`wG@�v6�G@�5�hG@	U)�ŜG@ݭ�r�uG@��KD�G@��.�2{G@�v��!G@f5�v��G@pn:h��G@�ߦ��SG@&���)G@��L5/aG@ m5�@vG@"�@��G@#�M��ծG@%�"��QsG@(�:٦eG@*t����G@-�h}�G@0a�x�G@1�����G@3]�D�qG@5M���w}G@7n�`*i�G@9��6�G@<Z�o=�oG@?0��*�G@A'�G#��G@B޵t\CG@D��32JG@F�'��RG@I��n�tG@K��`��G@Nc��G@P��45��G@Rb�9n0�G@T9�X��G@V?F�@6
G@Xx�`;rG@Z�Ii��G@]�i�
~G@`I:LG��G@a�&���G@c����CG@e�=��Y�G@g�*����G@j:�;�'�G@l�
��+}G@o��6�|�G@qt�:D�G@s3i�KiG@u��l�G@w;��!D6G@y�iK$��G@|��s�G@~�QS>2�G@���b5oG@��_H:�G@��O5���G@��#�N�qG@�槆#l0G@�d�&�G@�!T�܃G@��U�_�G@�:���ϧG@�8��8G@��g٩XG@�C2�<:HG@��Q��G@�[�C�gG@�%��~ݓG@����UG@���[ف�G@�}�KoBG@���R�bCG@� �F�JG@���W�|G@�w �U9G@�NQ�\.�G@�	Y�ef�G@��<WrG@��%B`1G@�Vnb�G@����G@����`H;G@�ܸΎ!G@d0�G@�g:�68G@�q���"G@Ȱß�sG@�(�bϙG@��T�l�)G@�n<��
G@���&��G@��L���qG@��:�Z�0G@�<�G@�u�\w�PG@�>�4%G@�.�i{G@� r��nG@�^�K4pFG@�N���{�G@�p&|G!uG@��*U�q�G@�\.�A��G@�239a�;G@�(h�(��G@�ߦ���G@����)�G@��L;?z�G@��t_mBG@��35��G@�el�%|GA ��D!kGAc±O�GA:�\���GA@c��ikGAz|��GA
��0BGA��8hH�GAJ
�(GA��S�hGA��Z���GA�S���QGA�[��H@GA;�$��GA�|��YGA�;�ؚIGA!um�jT�GA#4^����GA% ��qGA'<��GA)�����GA,m�GA.��Zw�GA1�X(\�GA2�N��2�GA4�V�EQ>GA6�E���^GA8��m|ՂGA;e}xo��GA>"��G�nGA@�)Y�pGAB;zHڻbGAD9��4�GAF��d�aGAHDi�;�RGAJ��p�AGAM]��HGAP&\W[r�GAQ����d�GAS�����-GAU~Շ�|2GAW�M"8GAZm�;?>GA\�E�A+�GA_x�z�GAaO/F�0]GAc
M���GAd���Q�GAg	�$5@GAiW��:�VGAk�w�s�GAn�,��GApݐt	�GAr�Q�2ׂGAth@6ц�GAvr�	��GAx�W�i�GA{)zU@Y�GA}��]��IGA�nڦ��GA����aGA��K ��GA��R�ѱGA�AN# CGA�w.<Y�~GA����ErGA������GA����J�LGA�_�]�:GA�O����GA�qR�gPrGA��t��KGA�]��p5�GA�3¿�GA�)D�+�5GA���a��TGA����/��GA��p�'�GA� /,g��GA��g>ֺGA�f�f^� GA���^��GA�d�4�N�GA�;�mx�QGA�A��рsGA�{@���GA����5�0GA��`��2�GA�J�|3�gGA���o�?GAö���yGAůiA7�lGA�ڍaV��GA�=5E��GA����L��GAϿ�1noGA�vM4�V�GA�5T�CߣGA�!��vGA�=��sh5GAِ���;GA�w%gGA��iu���GA��3�oGA�>�ϧGGA�^_��GA�g���GA��%d�gGA�f�UEGA�$X�2X�GA�����GA�<cȞu�GA�:�ၔGA��k�#GA�E�uƟZGA���NZ|GA�^}	c��GB '++�W�GBį|�`�GB�����GB��ʝ�GB�L��GSGB
����GB��;��GBzF�BGBP�t�OGBAsM$GB�����GB1�*GBX�NN�GB�ܠ<��GB���u��GB �h	�/�GB"�?>�GB$iE�K�GB&s̆SGB(��-�<GB+*�1��GB-�RDl�GB0o�e�EGB2q�"�LGB3�Iǌ�GB5�j���eGB8un�]�GB:x�-/�~GB='��@�GB@�##�GBA�È�s�GBC`�}�=GBEP�o�`�GBGr~ዷ"GBIʾ��|�GBL_�U�GBO5RY��GBQ* ~,UCGBR�$c�dGBT����)�GBVؕ;dz�GBY!p� �GB[���#�GB^hv�{�GB`�t��GBbe��j�GBd<��B[�GBfB���1�GBh|z|��GGBj�S�{eGBm����GBpK�#��GBq���2�eGBs��?�opGBu�~�f`�GBw۾�#�GBz>�(�e�GB|�_FQ� GB�h�Y�GB�w,�W�GB�6J��GB�"7��GB�?"V�1GB��?_�̶GB� �O�z�GB����\GB��eаGB��.6�2\GB��f�fGB���֗cWGB��dl�GGB�h;C���GB�%��k�1GB����T�GB�=MT�wGB�;v<�GB���ܜGB�F�NݿyGB��S='lGB�_�)��GB�'�
�GB�œ!�GB���%וuGB���)�W�GB��{�c��GB�( ��GB��"��hRGB�{�:�r�GB�P�#�GB�5X�GB���GA��GB�6Na�TGB�Z;����GB��A�ᯅGBέ.�xAGB��@(�1GBҏ,���6GB�jJ�v,UGB�t�N�^GBس�ypEGB�,2.�PGB��л��GB�p����GB�Y)���GB��Hz��FGB����*�GB����-GB�y�.�eGB���=GB��!�~UGB�$�$�GB�a����:GB�Q�l��sGB�s�*��GB��	`�.GB�`pdP߀GB�6��tGC*�Q+��GC�{��c�GC��`�(GCٹ�j.FGC	"����NGC�+n�
GCi�06�GC�J�
�lGCf�_�9�GC=��� GCC��i3�GC}��R�GC�}��GC�WVN�GC L|�ޏ�GC!����7�GC#���W�AGC%���y��GC'��l9H�GC*?�C؜�GC,���ԬLGC/��}�#�GC1x�m]GC37@��޴GC5#-�y�`GC7@LR׷GC9��܎S�GC<"G�6(�GC>��`&GCAa�4�GCB��tm_GCD�m� �GCF���F�GCH룃E4eGCKi�C���GCN'\���GCP��J-(�GCR>6�1��GCT<iGCV���%�GCXH7���GCZ��=�AGC]am\È�GC`(��$�GCa�v���GCc���6�GCe��<Y�GCg���(��GCjUcCqGCl�� .�0GCo}lp3xGCqQ�p��GCs)I k+GCt���}GCw]y���GCy[�l,UOGC{��c�qGC~���!)�GC��'8��GC�����GC�kPl��mGC�v��ˬGC��կ��GC�-�A> GC��O��*�GC�qR$9dOGC�@�rT�GC��G;0��GC��'��GC��ީS�GC�{'A�BaGC�!��kGC�cE4��GC���� -�GC�b����,GC�R�v��1GC�tׂ�,�GC��SvadGC�a���YGC�8q��GC�+�/*��GC��m�{��GC����n[VGC���v�GC�#���HGC���-��GC�k��&:GC�� ��$�GC�gq��3GC�>���څGC�D�=,GC�~����~GC����%GCͣ�ۑwGC�MM�\�IGC�� ���GCӹ�W��GCղ��r�GC��"��GC�A%o�J�GC��B�օ�GC�ĖB8�?GC�x�>�=GC�870DGC�$<���GC�Auԙh|GC��i���GC�#���XGC��=��
GC�;=ğGC��C��GC��u�J�GGC���R6�GC���t�GC�j�U<�GC�(���AGD �z��qGD? �T�GD=i��GDY�8�GDIE/��pGD
��N��GDb墭�[GD)��FfGD�ZJ�WGD�|�{-GD�#�TLeX   scalar_dictr3  }r4  X   caffe2_enabledr5  �ubX   configsr6  h�)�r7  }r8  (h�h�)�r9  (]r:  (h�h�}r;  (h�h�h�K �r<  j  �r=  Rr>  (KK�r?  j  �]r@  (hahbX   sigmarA  hvX   amnt_devrB  X   lab_BSrC  X   lrrD  h,X   log_dirrE  hh*h0etrF  bh�Nu�rG  RrH  h�h�}rI  (h�h�h�K �rJ  j  �rK  RrL  (KK�rM  j  �]rN  X   config 0rO  atrP  bh�Nu�rQ  RrR  e]rS  (h�h�K �rT  j  �rU  RrV  (KKK�rW  j  �]rX  (h�X   iResnetrY  etrZ  bh�h�K �r[  j  �r\  Rr]  (KKK�r^  j  X   f8r_  K K�r`  Rra  (KX   <rb  NNNJ����J����K trc  b�hX	         à?rd  h�re  Rrf  trg  bh�h�K �rh  j  �ri  Rrj  (KKK�rk  j  X   i8rl  K K�rm  Rrn  (Kjb  NNNJ����J����K tro  b�hX                 @       rp  h�rq  Rrr  trs  bh�h�K �rt  j  �ru  Rrv  (KKK�rw  ja  �hX   ¹?rx  h�ry  Rrz  tr{  bh�h�K �r|  j  �r}  Rr~  (KKK�r  jn  �hX   
       r�  h�r�  Rr�  tr�  bh�h�K �r�  j  �r�  Rr�  (KKK�r�  j  �]r�  (X?   /home/marc/tb-experiments/iresnet_inv_test/CIFAR10/iResnet/s0.5r�  X   trial0/r�  etr�  bh�h�K �r�  j  �r�  Rr�  (KKK�r�  ja  �hX
   c~@r�  h�r�  Rr�  tr�  bh�h�K �r�  j  �r�  Rr�  (KKK�r�  j  �]r�  X^   /home/marc/tb-experiments/iresnet_inv_test/CIFAR10/iResnet/s0.5/trial0/checkpoints/c10.trainerr�  atr�  be]r�  (h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  (hahbetr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  jA  atr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  (hvjB  jC  etr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  jD  atr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  h,atr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  (jE  hetr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  h*atr�  bh�Nu�r�  Rr�  h�h�}r�  (h�h�h�K �r�  j  �r�  Rr�  (KK�r�  j  �]r�  h0atr�  bh�Nu�r�  Rr�  e}r�  j  }r�  (j  j:  j  ]r�  (}r�  (X   valuesr�  jV  X   mgr_locsr�  hX   slicer�  �r�  Rr�  K KK�r�  Rr�  u}r�  (j�  j]  j�  j�  KKK�r�  Rr�  u}r�  (j�  jj  j�  j�  KKK�r�  Rr�  u}r�  (j�  jv  j�  j�  KKK�r�  Rr�  u}r�  (j�  j~  j�  j�  KKK�r�  Rr�  u}r�  (j�  j�  j�  j�  KK
K�r�  Rr�  u}r�  (j�  j�  j�  j�  K
KK�r�  Rr   u}r  (j�  j�  j�  j�  KKK�r  Rr  ueustr  bj!  j"  j#  j$  ubX   outcomesr  h�)�r  }r  (h�h�)�r  (]r	  (h�h�}r
  (h�h�h�K �r  j  �r  Rr  (KK�r  j  �]r  (X   Minibatch_Lossr  X	   Train_Accr  X   dev_Accr  X   lr0r  etr  bh�Nu�r  Rr  h�h�}r  (h�h�h�K �r  j  �r  Rr  (KK�r  j  �]r  X	   outcome 0r  atr  bh�Nu�r  Rr   e]r!  h�h�K �r"  j  �r#  Rr$  (KKK�r%  ja  �hX-      @;ÐÙ?ÙØ=ì?:Më?ú?r87?r&  h�r'  Rr(  tr)  ba]r*  h�h�}r+  (h�h�h�K �r,  j  �r-  Rr.  (KK�r/  j  �]r0  (j  j  j  j  etr1  bh�Nu�r2  Rr3  a}r4  j  }r5  (j  j	  j  ]r6  }r7  (j�  j$  j�  j�  K KK�r8  Rr9  uaustr:  bj!  j"  j#  j$  ubub.�]q .