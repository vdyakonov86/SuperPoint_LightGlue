Ям
ы,└,
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
Ъ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Е
DepthToSpace

input"T
output"T"	
Ttype"

block_sizeint(0":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
Ш
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%╖╤8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
н
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z
Р
!
LoopCond	
input


output

╘
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
2
NextIteration	
data"T
output"T"	
Ttype

NoOp
Ш
NonMaxSuppressionV3

boxes"T
scores"T
max_output_size
iou_threshold
score_threshold
selected_indices"
Ttype0:
2
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
E
Relu
features"T
activations"T"
Ttype:
2	
С
ResizeBilinear
images"T
size
resized_images"
Ttype:
2
	"
align_cornersbool( "
half_pixel_centersbool( 
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
s
	ScatterNd
indices"Tindices
updates"T
shape"Tindices
output"T"	
Ttype"
Tindicestype:
2	
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
1
Square
x"T
y"T"
Ttype:

2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:И
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetypeИ
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
TtypeИ
9
TensorArraySizeV3

handle
flow_in
sizeИ
▐
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring И
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
TtypeИ
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*1.14.02v1.14.0-rc1-22-gaf24dc9Ўд
з
superpoint/imagePlaceholder*
dtype0*A
_output_shapes/
-:+                           *6
shape-:+                           
Ч
%superpoint/pred_data_sharding/unstackUnpacksuperpoint/image*	
num*
T0*

axis *4
_output_shapes"
 :                  
к
#superpoint/pred_data_sharding/stackPack%superpoint/pred_data_sharding/unstack*
T0*

axis *
N*8
_output_shapes&
$:"                  
╙
Csuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"         @   *5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *╢h╧╜*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
dtype0*
_output_shapes
: 
╜
Asuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *╢h╧=*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
dtype0*
_output_shapes
: 
п
Ksuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/shape*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
seed2 *
dtype0*&
_output_shapes
:@*

seed 
ж
Asuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
_output_shapes
: 
└
Asuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/sub*&
_output_shapes
:@*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel
▓
=superpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*&
_output_shapes
:@
▌
"superpoint/vgg/conv1_1/conv/kernel
VariableV2*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
	container *
shape:@*
dtype0*&
_output_shapes
:@
з
)superpoint/vgg/conv1_1/conv/kernel/AssignAssign"superpoint/vgg/conv1_1/conv/kernel=superpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(
┐
'superpoint/vgg/conv1_1/conv/kernel/readIdentity"superpoint/vgg/conv1_1/conv/kernel*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*&
_output_shapes
:@
┤
2superpoint/vgg/conv1_1/conv/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *3
_class)
'%loc:@superpoint/vgg/conv1_1/conv/bias
┴
 superpoint/vgg/conv1_1/conv/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv1_1/conv/bias*
	container *
shape:@
К
'superpoint/vgg/conv1_1/conv/bias/AssignAssign superpoint/vgg/conv1_1/conv/bias2superpoint/vgg/conv1_1/conv/bias/Initializer/zeros*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_1/conv/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
н
%superpoint/vgg/conv1_1/conv/bias/readIdentity superpoint/vgg/conv1_1/conv/bias*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_1/conv/bias*
_output_shapes
:@
Ж
5superpoint/pred_tower0/vgg/conv1_1/conv/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
╨
.superpoint/pred_tower0/vgg/conv1_1/conv/Conv2DConv2D#superpoint/pred_data_sharding/stack'superpoint/vgg/conv1_1/conv/kernel/read*
paddingSAME*8
_output_shapes&
$:"                  @*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
ы
/superpoint/pred_tower0/vgg/conv1_1/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv1_1/conv/Conv2D%superpoint/vgg/conv1_1/conv/bias/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  @
и
,superpoint/pred_tower0/vgg/conv1_1/conv/ReluRelu/superpoint/pred_tower0/vgg/conv1_1/conv/BiasAdd*
T0*8
_output_shapes&
$:"                  @
▒
0superpoint/vgg/conv1_1/bn/gamma/Initializer/onesConst*
valueB@*  А?*2
_class(
&$loc:@superpoint/vgg/conv1_1/bn/gamma*
dtype0*
_output_shapes
:@
┐
superpoint/vgg/conv1_1/bn/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv1_1/bn/gamma*
	container *
shape:@
Е
&superpoint/vgg/conv1_1/bn/gamma/AssignAssignsuperpoint/vgg/conv1_1/bn/gamma0superpoint/vgg/conv1_1/bn/gamma/Initializer/ones*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_1/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
к
$superpoint/vgg/conv1_1/bn/gamma/readIdentitysuperpoint/vgg/conv1_1/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_1/bn/gamma*
_output_shapes
:@
░
0superpoint/vgg/conv1_1/bn/beta/Initializer/zerosConst*
valueB@*    *1
_class'
%#loc:@superpoint/vgg/conv1_1/bn/beta*
dtype0*
_output_shapes
:@
╜
superpoint/vgg/conv1_1/bn/beta
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv1_1/bn/beta
В
%superpoint/vgg/conv1_1/bn/beta/AssignAssignsuperpoint/vgg/conv1_1/bn/beta0superpoint/vgg/conv1_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_1/bn/beta
з
#superpoint/vgg/conv1_1/bn/beta/readIdentitysuperpoint/vgg/conv1_1/bn/beta*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_1/bn/beta*
_output_shapes
:@
╛
7superpoint/vgg/conv1_1/bn/moving_mean/Initializer/zerosConst*
valueB@*    *8
_class.
,*loc:@superpoint/vgg/conv1_1/bn/moving_mean*
dtype0*
_output_shapes
:@
╦
%superpoint/vgg/conv1_1/bn/moving_mean
VariableV2*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv1_1/bn/moving_mean*
	container *
shape:@*
dtype0*
_output_shapes
:@
Ю
,superpoint/vgg/conv1_1/bn/moving_mean/AssignAssign%superpoint/vgg/conv1_1/bn/moving_mean7superpoint/vgg/conv1_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@
╝
*superpoint/vgg/conv1_1/bn/moving_mean/readIdentity%superpoint/vgg/conv1_1/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_1/bn/moving_mean*
_output_shapes
:@
┼
:superpoint/vgg/conv1_1/bn/moving_variance/Initializer/onesConst*
valueB@*  А?*<
_class2
0.loc:@superpoint/vgg/conv1_1/bn/moving_variance*
dtype0*
_output_shapes
:@
╙
)superpoint/vgg/conv1_1/bn/moving_variance
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@superpoint/vgg/conv1_1/bn/moving_variance*
	container 
н
0superpoint/vgg/conv1_1/bn/moving_variance/AssignAssign)superpoint/vgg/conv1_1/bn/moving_variance:superpoint/vgg/conv1_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@
╚
.superpoint/vgg/conv1_1/bn/moving_variance/readIdentity)superpoint/vgg/conv1_1/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_1/bn/moving_variance*
_output_shapes
:@
▓
4superpoint/pred_tower0/vgg/conv1_1/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv1_1/conv/Relu$superpoint/vgg/conv1_1/bn/gamma/read#superpoint/vgg/conv1_1/bn/beta/read*superpoint/vgg/conv1_1/bn/moving_mean/read.superpoint/vgg/conv1_1/bn/moving_variance/read*
T0*
data_formatNHWC*P
_output_shapes>
<:"                  @:@:@:@:@*
is_training( *
epsilon%oГ:
p
+superpoint/pred_tower0/vgg/conv1_1/bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *дp}?
╙
Csuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╜*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*
dtype0*
_output_shapes
: 
╜
Asuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *:═У=*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel
п
Ksuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*
seed2 
ж
Asuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel
└
Asuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*&
_output_shapes
:@@
▓
=superpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform/min*&
_output_shapes
:@@*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel
▌
"superpoint/vgg/conv1_2/conv/kernel
VariableV2*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@
з
)superpoint/vgg/conv1_2/conv/kernel/AssignAssign"superpoint/vgg/conv1_2/conv/kernel=superpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel
┐
'superpoint/vgg/conv1_2/conv/kernel/readIdentity"superpoint/vgg/conv1_2/conv/kernel*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*&
_output_shapes
:@@
┤
2superpoint/vgg/conv1_2/conv/bias/Initializer/zerosConst*
valueB@*    *3
_class)
'%loc:@superpoint/vgg/conv1_2/conv/bias*
dtype0*
_output_shapes
:@
┴
 superpoint/vgg/conv1_2/conv/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv1_2/conv/bias*
	container *
shape:@
К
'superpoint/vgg/conv1_2/conv/bias/AssignAssign superpoint/vgg/conv1_2/conv/bias2superpoint/vgg/conv1_2/conv/bias/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_2/conv/bias
н
%superpoint/vgg/conv1_2/conv/bias/readIdentity superpoint/vgg/conv1_2/conv/bias*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_2/conv/bias*
_output_shapes
:@
Ж
5superpoint/pred_tower0/vgg/conv1_2/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
с
.superpoint/pred_tower0/vgg/conv1_2/conv/Conv2DConv2D4superpoint/pred_tower0/vgg/conv1_1/bn/FusedBatchNorm'superpoint/vgg/conv1_2/conv/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*8
_output_shapes&
$:"                  @
ы
/superpoint/pred_tower0/vgg/conv1_2/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv1_2/conv/Conv2D%superpoint/vgg/conv1_2/conv/bias/read*
data_formatNHWC*8
_output_shapes&
$:"                  @*
T0
и
,superpoint/pred_tower0/vgg/conv1_2/conv/ReluRelu/superpoint/pred_tower0/vgg/conv1_2/conv/BiasAdd*
T0*8
_output_shapes&
$:"                  @
▒
0superpoint/vgg/conv1_2/bn/gamma/Initializer/onesConst*
valueB@*  А?*2
_class(
&$loc:@superpoint/vgg/conv1_2/bn/gamma*
dtype0*
_output_shapes
:@
┐
superpoint/vgg/conv1_2/bn/gamma
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv1_2/bn/gamma*
	container *
shape:@
Е
&superpoint/vgg/conv1_2/bn/gamma/AssignAssignsuperpoint/vgg/conv1_2/bn/gamma0superpoint/vgg/conv1_2/bn/gamma/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_2/bn/gamma*
validate_shape(*
_output_shapes
:@
к
$superpoint/vgg/conv1_2/bn/gamma/readIdentitysuperpoint/vgg/conv1_2/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_2/bn/gamma*
_output_shapes
:@
░
0superpoint/vgg/conv1_2/bn/beta/Initializer/zerosConst*
valueB@*    *1
_class'
%#loc:@superpoint/vgg/conv1_2/bn/beta*
dtype0*
_output_shapes
:@
╜
superpoint/vgg/conv1_2/bn/beta
VariableV2*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv1_2/bn/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
В
%superpoint/vgg/conv1_2/bn/beta/AssignAssignsuperpoint/vgg/conv1_2/bn/beta0superpoint/vgg/conv1_2/bn/beta/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_2/bn/beta*
validate_shape(*
_output_shapes
:@
з
#superpoint/vgg/conv1_2/bn/beta/readIdentitysuperpoint/vgg/conv1_2/bn/beta*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_2/bn/beta*
_output_shapes
:@
╛
7superpoint/vgg/conv1_2/bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *8
_class.
,*loc:@superpoint/vgg/conv1_2/bn/moving_mean
╦
%superpoint/vgg/conv1_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv1_2/bn/moving_mean*
	container *
shape:@
Ю
,superpoint/vgg/conv1_2/bn/moving_mean/AssignAssign%superpoint/vgg/conv1_2/bn/moving_mean7superpoint/vgg/conv1_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@
╝
*superpoint/vgg/conv1_2/bn/moving_mean/readIdentity%superpoint/vgg/conv1_2/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_2/bn/moving_mean*
_output_shapes
:@
┼
:superpoint/vgg/conv1_2/bn/moving_variance/Initializer/onesConst*
valueB@*  А?*<
_class2
0.loc:@superpoint/vgg/conv1_2/bn/moving_variance*
dtype0*
_output_shapes
:@
╙
)superpoint/vgg/conv1_2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *<
_class2
0.loc:@superpoint/vgg/conv1_2/bn/moving_variance*
	container *
shape:@
н
0superpoint/vgg/conv1_2/bn/moving_variance/AssignAssign)superpoint/vgg/conv1_2/bn/moving_variance:superpoint/vgg/conv1_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@
╚
.superpoint/vgg/conv1_2/bn/moving_variance/readIdentity)superpoint/vgg/conv1_2/bn/moving_variance*
_output_shapes
:@*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_2/bn/moving_variance
▓
4superpoint/pred_tower0/vgg/conv1_2/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv1_2/conv/Relu$superpoint/vgg/conv1_2/bn/gamma/read#superpoint/vgg/conv1_2/bn/beta/read*superpoint/vgg/conv1_2/bn/moving_mean/read.superpoint/vgg/conv1_2/bn/moving_variance/read*
T0*
data_formatNHWC*P
_output_shapes>
<:"                  @:@:@:@:@*
is_training( *
epsilon%oГ:
p
+superpoint/pred_tower0/vgg/conv1_2/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
■
(superpoint/pred_tower0/vgg/pool1/MaxPoolMaxPool4superpoint/pred_tower0/vgg/conv1_2/bn/FusedBatchNorm*
ksize
*
paddingSAME*8
_output_shapes&
$:"                  @*
T0*
data_formatNHWC*
strides

╙
Csuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╜*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
dtype0*
_output_shapes
: 
╜
Asuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У=*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
dtype0*
_output_shapes
: 
п
Ksuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:@@*

seed *
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
seed2 
ж
Asuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
_output_shapes
: 
└
Asuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*&
_output_shapes
:@@
▓
=superpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*&
_output_shapes
:@@
▌
"superpoint/vgg/conv2_1/conv/kernel
VariableV2*
	container *
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel
з
)superpoint/vgg/conv2_1/conv/kernel/AssignAssign"superpoint/vgg/conv2_1/conv/kernel=superpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
┐
'superpoint/vgg/conv2_1/conv/kernel/readIdentity"superpoint/vgg/conv2_1/conv/kernel*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*&
_output_shapes
:@@
┤
2superpoint/vgg/conv2_1/conv/bias/Initializer/zerosConst*
valueB@*    *3
_class)
'%loc:@superpoint/vgg/conv2_1/conv/bias*
dtype0*
_output_shapes
:@
┴
 superpoint/vgg/conv2_1/conv/bias
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv2_1/conv/bias*
	container *
shape:@
К
'superpoint/vgg/conv2_1/conv/bias/AssignAssign superpoint/vgg/conv2_1/conv/bias2superpoint/vgg/conv2_1/conv/bias/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_1/conv/bias*
validate_shape(*
_output_shapes
:@
н
%superpoint/vgg/conv2_1/conv/bias/readIdentity superpoint/vgg/conv2_1/conv/bias*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_1/conv/bias*
_output_shapes
:@
Ж
5superpoint/pred_tower0/vgg/conv2_1/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╒
.superpoint/pred_tower0/vgg/conv2_1/conv/Conv2DConv2D(superpoint/pred_tower0/vgg/pool1/MaxPool'superpoint/vgg/conv2_1/conv/kernel/read*
paddingSAME*8
_output_shapes&
$:"                  @*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(
ы
/superpoint/pred_tower0/vgg/conv2_1/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv2_1/conv/Conv2D%superpoint/vgg/conv2_1/conv/bias/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  @
и
,superpoint/pred_tower0/vgg/conv2_1/conv/ReluRelu/superpoint/pred_tower0/vgg/conv2_1/conv/BiasAdd*
T0*8
_output_shapes&
$:"                  @
▒
0superpoint/vgg/conv2_1/bn/gamma/Initializer/onesConst*
valueB@*  А?*2
_class(
&$loc:@superpoint/vgg/conv2_1/bn/gamma*
dtype0*
_output_shapes
:@
┐
superpoint/vgg/conv2_1/bn/gamma
VariableV2*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv2_1/bn/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@
Е
&superpoint/vgg/conv2_1/bn/gamma/AssignAssignsuperpoint/vgg/conv2_1/bn/gamma0superpoint/vgg/conv2_1/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_1/bn/gamma
к
$superpoint/vgg/conv2_1/bn/gamma/readIdentitysuperpoint/vgg/conv2_1/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_1/bn/gamma*
_output_shapes
:@
░
0superpoint/vgg/conv2_1/bn/beta/Initializer/zerosConst*
valueB@*    *1
_class'
%#loc:@superpoint/vgg/conv2_1/bn/beta*
dtype0*
_output_shapes
:@
╜
superpoint/vgg/conv2_1/bn/beta
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv2_1/bn/beta*
	container 
В
%superpoint/vgg/conv2_1/bn/beta/AssignAssignsuperpoint/vgg/conv2_1/bn/beta0superpoint/vgg/conv2_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_1/bn/beta
з
#superpoint/vgg/conv2_1/bn/beta/readIdentitysuperpoint/vgg/conv2_1/bn/beta*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_1/bn/beta*
_output_shapes
:@
╛
7superpoint/vgg/conv2_1/bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *8
_class.
,*loc:@superpoint/vgg/conv2_1/bn/moving_mean
╦
%superpoint/vgg/conv2_1/bn/moving_mean
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv2_1/bn/moving_mean
Ю
,superpoint/vgg/conv2_1/bn/moving_mean/AssignAssign%superpoint/vgg/conv2_1/bn/moving_mean7superpoint/vgg/conv2_1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@
╝
*superpoint/vgg/conv2_1/bn/moving_mean/readIdentity%superpoint/vgg/conv2_1/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_1/bn/moving_mean*
_output_shapes
:@
┼
:superpoint/vgg/conv2_1/bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  А?*<
_class2
0.loc:@superpoint/vgg/conv2_1/bn/moving_variance
╙
)superpoint/vgg/conv2_1/bn/moving_variance
VariableV2*
shared_name *<
_class2
0.loc:@superpoint/vgg/conv2_1/bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
н
0superpoint/vgg/conv2_1/bn/moving_variance/AssignAssign)superpoint/vgg/conv2_1/bn/moving_variance:superpoint/vgg/conv2_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@
╚
.superpoint/vgg/conv2_1/bn/moving_variance/readIdentity)superpoint/vgg/conv2_1/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_1/bn/moving_variance*
_output_shapes
:@
▓
4superpoint/pred_tower0/vgg/conv2_1/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv2_1/conv/Relu$superpoint/vgg/conv2_1/bn/gamma/read#superpoint/vgg/conv2_1/bn/beta/read*superpoint/vgg/conv2_1/bn/moving_mean/read.superpoint/vgg/conv2_1/bn/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*P
_output_shapes>
<:"                  @:@:@:@:@*
is_training( 
p
+superpoint/pred_tower0/vgg/conv2_1/bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *дp}?
╙
Csuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   @   *5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *:═У╜*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
dtype0*
_output_shapes
: 
╜
Asuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *:═У=*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
dtype0*
_output_shapes
: 
п
Ksuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*&
_output_shapes
:@@*

seed *
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel
ж
Asuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
_output_shapes
: 
└
Asuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*&
_output_shapes
:@@
▓
=superpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform/min*&
_output_shapes
:@@*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel
▌
"superpoint/vgg/conv2_2/conv/kernel
VariableV2*
shape:@@*
dtype0*&
_output_shapes
:@@*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
	container 
з
)superpoint/vgg/conv2_2/conv/kernel/AssignAssign"superpoint/vgg/conv2_2/conv/kernel=superpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
validate_shape(*&
_output_shapes
:@@
┐
'superpoint/vgg/conv2_2/conv/kernel/readIdentity"superpoint/vgg/conv2_2/conv/kernel*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*&
_output_shapes
:@@
┤
2superpoint/vgg/conv2_2/conv/bias/Initializer/zerosConst*
valueB@*    *3
_class)
'%loc:@superpoint/vgg/conv2_2/conv/bias*
dtype0*
_output_shapes
:@
┴
 superpoint/vgg/conv2_2/conv/bias
VariableV2*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv2_2/conv/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
К
'superpoint/vgg/conv2_2/conv/bias/AssignAssign superpoint/vgg/conv2_2/conv/bias2superpoint/vgg/conv2_2/conv/bias/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_2/conv/bias*
validate_shape(*
_output_shapes
:@
н
%superpoint/vgg/conv2_2/conv/bias/readIdentity superpoint/vgg/conv2_2/conv/bias*
_output_shapes
:@*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_2/conv/bias
Ж
5superpoint/pred_tower0/vgg/conv2_2/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
с
.superpoint/pred_tower0/vgg/conv2_2/conv/Conv2DConv2D4superpoint/pred_tower0/vgg/conv2_1/bn/FusedBatchNorm'superpoint/vgg/conv2_2/conv/kernel/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*8
_output_shapes&
$:"                  @*
	dilations
*
T0
ы
/superpoint/pred_tower0/vgg/conv2_2/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv2_2/conv/Conv2D%superpoint/vgg/conv2_2/conv/bias/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  @
и
,superpoint/pred_tower0/vgg/conv2_2/conv/ReluRelu/superpoint/pred_tower0/vgg/conv2_2/conv/BiasAdd*
T0*8
_output_shapes&
$:"                  @
▒
0superpoint/vgg/conv2_2/bn/gamma/Initializer/onesConst*
valueB@*  А?*2
_class(
&$loc:@superpoint/vgg/conv2_2/bn/gamma*
dtype0*
_output_shapes
:@
┐
superpoint/vgg/conv2_2/bn/gamma
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv2_2/bn/gamma
Е
&superpoint/vgg/conv2_2/bn/gamma/AssignAssignsuperpoint/vgg/conv2_2/bn/gamma0superpoint/vgg/conv2_2/bn/gamma/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_2/bn/gamma*
validate_shape(*
_output_shapes
:@
к
$superpoint/vgg/conv2_2/bn/gamma/readIdentitysuperpoint/vgg/conv2_2/bn/gamma*
_output_shapes
:@*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_2/bn/gamma
░
0superpoint/vgg/conv2_2/bn/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *1
_class'
%#loc:@superpoint/vgg/conv2_2/bn/beta
╜
superpoint/vgg/conv2_2/bn/beta
VariableV2*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv2_2/bn/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
В
%superpoint/vgg/conv2_2/bn/beta/AssignAssignsuperpoint/vgg/conv2_2/bn/beta0superpoint/vgg/conv2_2/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_2/bn/beta
з
#superpoint/vgg/conv2_2/bn/beta/readIdentitysuperpoint/vgg/conv2_2/bn/beta*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_2/bn/beta*
_output_shapes
:@
╛
7superpoint/vgg/conv2_2/bn/moving_mean/Initializer/zerosConst*
valueB@*    *8
_class.
,*loc:@superpoint/vgg/conv2_2/bn/moving_mean*
dtype0*
_output_shapes
:@
╦
%superpoint/vgg/conv2_2/bn/moving_mean
VariableV2*
shape:@*
dtype0*
_output_shapes
:@*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv2_2/bn/moving_mean*
	container 
Ю
,superpoint/vgg/conv2_2/bn/moving_mean/AssignAssign%superpoint/vgg/conv2_2/bn/moving_mean7superpoint/vgg/conv2_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@
╝
*superpoint/vgg/conv2_2/bn/moving_mean/readIdentity%superpoint/vgg/conv2_2/bn/moving_mean*
_output_shapes
:@*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_2/bn/moving_mean
┼
:superpoint/vgg/conv2_2/bn/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  А?*<
_class2
0.loc:@superpoint/vgg/conv2_2/bn/moving_variance
╙
)superpoint/vgg/conv2_2/bn/moving_variance
VariableV2*<
_class2
0.loc:@superpoint/vgg/conv2_2/bn/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
н
0superpoint/vgg/conv2_2/bn/moving_variance/AssignAssign)superpoint/vgg/conv2_2/bn/moving_variance:superpoint/vgg/conv2_2/bn/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@
╚
.superpoint/vgg/conv2_2/bn/moving_variance/readIdentity)superpoint/vgg/conv2_2/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_2/bn/moving_variance*
_output_shapes
:@
▓
4superpoint/pred_tower0/vgg/conv2_2/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv2_2/conv/Relu$superpoint/vgg/conv2_2/bn/gamma/read#superpoint/vgg/conv2_2/bn/beta/read*superpoint/vgg/conv2_2/bn/moving_mean/read.superpoint/vgg/conv2_2/bn/moving_variance/read*
data_formatNHWC*P
_output_shapes>
<:"                  @:@:@:@:@*
is_training( *
epsilon%oГ:*
T0
p
+superpoint/pred_tower0/vgg/conv2_2/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
■
(superpoint/pred_tower0/vgg/pool2/MaxPoolMaxPool4superpoint/pred_tower0/vgg/conv2_2/bn/FusedBatchNorm*
ksize
*
paddingSAME*8
_output_shapes&
$:"                  @*
T0*
strides
*
data_formatNHWC
╙
Csuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   А   *5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *я[q╜*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel
╜
Asuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *я[q=*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
dtype0*
_output_shapes
: 
░
Ksuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:@А*

seed *
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
seed2 
ж
Asuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
_output_shapes
: 
┴
Asuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*'
_output_shapes
:@А
│
=superpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*'
_output_shapes
:@А
▀
"superpoint/vgg/conv3_1/conv/kernel
VariableV2*
shape:@А*
dtype0*'
_output_shapes
:@А*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
	container 
и
)superpoint/vgg/conv3_1/conv/kernel/AssignAssign"superpoint/vgg/conv3_1/conv/kernel=superpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
validate_shape(*'
_output_shapes
:@А*
use_locking(
└
'superpoint/vgg/conv3_1/conv/kernel/readIdentity"superpoint/vgg/conv3_1/conv/kernel*'
_output_shapes
:@А*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel
╢
2superpoint/vgg/conv3_1/conv/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *3
_class)
'%loc:@superpoint/vgg/conv3_1/conv/bias
├
 superpoint/vgg/conv3_1/conv/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv3_1/conv/bias*
	container *
shape:А
Л
'superpoint/vgg/conv3_1/conv/bias/AssignAssign superpoint/vgg/conv3_1/conv/bias2superpoint/vgg/conv3_1/conv/bias/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_1/conv/bias*
validate_shape(*
_output_shapes	
:А
о
%superpoint/vgg/conv3_1/conv/bias/readIdentity superpoint/vgg/conv3_1/conv/bias*
_output_shapes	
:А*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_1/conv/bias
Ж
5superpoint/pred_tower0/vgg/conv3_1/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╓
.superpoint/pred_tower0/vgg/conv3_1/conv/Conv2DConv2D(superpoint/pred_tower0/vgg/pool2/MaxPool'superpoint/vgg/conv3_1/conv/kernel/read*
paddingSAME*9
_output_shapes'
%:#                  А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 
ь
/superpoint/pred_tower0/vgg/conv3_1/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv3_1/conv/Conv2D%superpoint/vgg/conv3_1/conv/bias/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
й
,superpoint/pred_tower0/vgg/conv3_1/conv/ReluRelu/superpoint/pred_tower0/vgg/conv3_1/conv/BiasAdd*
T0*9
_output_shapes'
%:#                  А
│
0superpoint/vgg/conv3_1/bn/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:А*
valueBА*  А?*2
_class(
&$loc:@superpoint/vgg/conv3_1/bn/gamma
┴
superpoint/vgg/conv3_1/bn/gamma
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv3_1/bn/gamma*
	container *
shape:А
Ж
&superpoint/vgg/conv3_1/bn/gamma/AssignAssignsuperpoint/vgg/conv3_1/bn/gamma0superpoint/vgg/conv3_1/bn/gamma/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_1/bn/gamma*
validate_shape(*
_output_shapes	
:А
л
$superpoint/vgg/conv3_1/bn/gamma/readIdentitysuperpoint/vgg/conv3_1/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_1/bn/gamma*
_output_shapes	
:А
▓
0superpoint/vgg/conv3_1/bn/beta/Initializer/zerosConst*
valueBА*    *1
_class'
%#loc:@superpoint/vgg/conv3_1/bn/beta*
dtype0*
_output_shapes	
:А
┐
superpoint/vgg/conv3_1/bn/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv3_1/bn/beta*
	container *
shape:А
Г
%superpoint/vgg/conv3_1/bn/beta/AssignAssignsuperpoint/vgg/conv3_1/bn/beta0superpoint/vgg/conv3_1/bn/beta/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_1/bn/beta*
validate_shape(*
_output_shapes	
:А
и
#superpoint/vgg/conv3_1/bn/beta/readIdentitysuperpoint/vgg/conv3_1/bn/beta*
_output_shapes	
:А*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_1/bn/beta
└
7superpoint/vgg/conv3_1/bn/moving_mean/Initializer/zerosConst*
valueBА*    *8
_class.
,*loc:@superpoint/vgg/conv3_1/bn/moving_mean*
dtype0*
_output_shapes	
:А
═
%superpoint/vgg/conv3_1/bn/moving_mean
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv3_1/bn/moving_mean
Я
,superpoint/vgg/conv3_1/bn/moving_mean/AssignAssign%superpoint/vgg/conv3_1/bn/moving_mean7superpoint/vgg/conv3_1/bn/moving_mean/Initializer/zeros*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
╜
*superpoint/vgg/conv3_1/bn/moving_mean/readIdentity%superpoint/vgg/conv3_1/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_1/bn/moving_mean*
_output_shapes	
:А
╟
:superpoint/vgg/conv3_1/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*<
_class2
0.loc:@superpoint/vgg/conv3_1/bn/moving_variance*
dtype0*
_output_shapes	
:А
╒
)superpoint/vgg/conv3_1/bn/moving_variance
VariableV2*
shared_name *<
_class2
0.loc:@superpoint/vgg/conv3_1/bn/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А
о
0superpoint/vgg/conv3_1/bn/moving_variance/AssignAssign)superpoint/vgg/conv3_1/bn/moving_variance:superpoint/vgg/conv3_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╔
.superpoint/vgg/conv3_1/bn/moving_variance/readIdentity)superpoint/vgg/conv3_1/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_1/bn/moving_variance*
_output_shapes	
:А
╖
4superpoint/pred_tower0/vgg/conv3_1/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv3_1/conv/Relu$superpoint/vgg/conv3_1/bn/gamma/read#superpoint/vgg/conv3_1/bn/beta/read*superpoint/vgg/conv3_1/bn/moving_mean/read.superpoint/vgg/conv3_1/bn/moving_variance/read*
T0*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( *
epsilon%oГ:
p
+superpoint/pred_tower0/vgg/conv3_1/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
╙
Csuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А   А   *5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *ьQ╜*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel
╜
Asuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *ьQ=*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel
▒
Ksuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/shape*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*
seed2 *
dtype0*(
_output_shapes
:АА*

seed 
ж
Asuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel
┬
Asuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*(
_output_shapes
:АА
┤
=superpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*(
_output_shapes
:АА
с
"superpoint/vgg/conv3_2/conv/kernel
VariableV2*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
й
)superpoint/vgg/conv3_2/conv/kernel/AssignAssign"superpoint/vgg/conv3_2/conv/kernel=superpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*
validate_shape(*(
_output_shapes
:АА
┴
'superpoint/vgg/conv3_2/conv/kernel/readIdentity"superpoint/vgg/conv3_2/conv/kernel*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*(
_output_shapes
:АА
╢
2superpoint/vgg/conv3_2/conv/bias/Initializer/zerosConst*
valueBА*    *3
_class)
'%loc:@superpoint/vgg/conv3_2/conv/bias*
dtype0*
_output_shapes	
:А
├
 superpoint/vgg/conv3_2/conv/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv3_2/conv/bias*
	container *
shape:А
Л
'superpoint/vgg/conv3_2/conv/bias/AssignAssign superpoint/vgg/conv3_2/conv/bias2superpoint/vgg/conv3_2/conv/bias/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_2/conv/bias*
validate_shape(*
_output_shapes	
:А
о
%superpoint/vgg/conv3_2/conv/bias/readIdentity superpoint/vgg/conv3_2/conv/bias*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_2/conv/bias*
_output_shapes	
:А
Ж
5superpoint/pred_tower0/vgg/conv3_2/conv/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
т
.superpoint/pred_tower0/vgg/conv3_2/conv/Conv2DConv2D4superpoint/pred_tower0/vgg/conv3_1/bn/FusedBatchNorm'superpoint/vgg/conv3_2/conv/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*9
_output_shapes'
%:#                  А
ь
/superpoint/pred_tower0/vgg/conv3_2/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv3_2/conv/Conv2D%superpoint/vgg/conv3_2/conv/bias/read*
data_formatNHWC*9
_output_shapes'
%:#                  А*
T0
й
,superpoint/pred_tower0/vgg/conv3_2/conv/ReluRelu/superpoint/pred_tower0/vgg/conv3_2/conv/BiasAdd*
T0*9
_output_shapes'
%:#                  А
│
0superpoint/vgg/conv3_2/bn/gamma/Initializer/onesConst*
valueBА*  А?*2
_class(
&$loc:@superpoint/vgg/conv3_2/bn/gamma*
dtype0*
_output_shapes	
:А
┴
superpoint/vgg/conv3_2/bn/gamma
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv3_2/bn/gamma*
	container 
Ж
&superpoint/vgg/conv3_2/bn/gamma/AssignAssignsuperpoint/vgg/conv3_2/bn/gamma0superpoint/vgg/conv3_2/bn/gamma/Initializer/ones*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_2/bn/gamma
л
$superpoint/vgg/conv3_2/bn/gamma/readIdentitysuperpoint/vgg/conv3_2/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_2/bn/gamma*
_output_shapes	
:А
▓
0superpoint/vgg/conv3_2/bn/beta/Initializer/zerosConst*
valueBА*    *1
_class'
%#loc:@superpoint/vgg/conv3_2/bn/beta*
dtype0*
_output_shapes	
:А
┐
superpoint/vgg/conv3_2/bn/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv3_2/bn/beta*
	container *
shape:А
Г
%superpoint/vgg/conv3_2/bn/beta/AssignAssignsuperpoint/vgg/conv3_2/bn/beta0superpoint/vgg/conv3_2/bn/beta/Initializer/zeros*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_2/bn/beta*
validate_shape(*
_output_shapes	
:А
и
#superpoint/vgg/conv3_2/bn/beta/readIdentitysuperpoint/vgg/conv3_2/bn/beta*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_2/bn/beta*
_output_shapes	
:А
└
7superpoint/vgg/conv3_2/bn/moving_mean/Initializer/zerosConst*
valueBА*    *8
_class.
,*loc:@superpoint/vgg/conv3_2/bn/moving_mean*
dtype0*
_output_shapes	
:А
═
%superpoint/vgg/conv3_2/bn/moving_mean
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv3_2/bn/moving_mean
Я
,superpoint/vgg/conv3_2/bn/moving_mean/AssignAssign%superpoint/vgg/conv3_2/bn/moving_mean7superpoint/vgg/conv3_2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
╜
*superpoint/vgg/conv3_2/bn/moving_mean/readIdentity%superpoint/vgg/conv3_2/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_2/bn/moving_mean*
_output_shapes	
:А
╟
:superpoint/vgg/conv3_2/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*<
_class2
0.loc:@superpoint/vgg/conv3_2/bn/moving_variance*
dtype0*
_output_shapes	
:А
╒
)superpoint/vgg/conv3_2/bn/moving_variance
VariableV2*
shared_name *<
_class2
0.loc:@superpoint/vgg/conv3_2/bn/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А
о
0superpoint/vgg/conv3_2/bn/moving_variance/AssignAssign)superpoint/vgg/conv3_2/bn/moving_variance:superpoint/vgg/conv3_2/bn/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_2/bn/moving_variance
╔
.superpoint/vgg/conv3_2/bn/moving_variance/readIdentity)superpoint/vgg/conv3_2/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_2/bn/moving_variance*
_output_shapes	
:А
╖
4superpoint/pred_tower0/vgg/conv3_2/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv3_2/conv/Relu$superpoint/vgg/conv3_2/bn/gamma/read#superpoint/vgg/conv3_2/bn/beta/read*superpoint/vgg/conv3_2/bn/moving_mean/read.superpoint/vgg/conv3_2/bn/moving_variance/read*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( *
epsilon%oГ:*
T0
p
+superpoint/pred_tower0/vgg/conv3_2/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
 
(superpoint/pred_tower0/vgg/pool3/MaxPoolMaxPool4superpoint/pred_tower0/vgg/conv3_2/bn/FusedBatchNorm*9
_output_shapes'
%:#                  А*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
╙
Csuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А   А   *5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *ьQ╜*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
dtype0*
_output_shapes
: 
╜
Asuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *ьQ=*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
dtype0*
_output_shapes
: 
▒
Ksuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*(
_output_shapes
:АА*

seed *
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel
ж
Asuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
_output_shapes
: 
┬
Asuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/sub*(
_output_shapes
:АА*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel
┤
=superpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform/min*(
_output_shapes
:АА*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel
с
"superpoint/vgg/conv4_1/conv/kernel
VariableV2*
dtype0*(
_output_shapes
:АА*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
	container *
shape:АА
й
)superpoint/vgg/conv4_1/conv/kernel/AssignAssign"superpoint/vgg/conv4_1/conv/kernel=superpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
validate_shape(*(
_output_shapes
:АА
┴
'superpoint/vgg/conv4_1/conv/kernel/readIdentity"superpoint/vgg/conv4_1/conv/kernel*(
_output_shapes
:АА*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel
╢
2superpoint/vgg/conv4_1/conv/bias/Initializer/zerosConst*
valueBА*    *3
_class)
'%loc:@superpoint/vgg/conv4_1/conv/bias*
dtype0*
_output_shapes	
:А
├
 superpoint/vgg/conv4_1/conv/bias
VariableV2*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv4_1/conv/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Л
'superpoint/vgg/conv4_1/conv/bias/AssignAssign superpoint/vgg/conv4_1/conv/bias2superpoint/vgg/conv4_1/conv/bias/Initializer/zeros*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_1/conv/bias*
validate_shape(*
_output_shapes	
:А
о
%superpoint/vgg/conv4_1/conv/bias/readIdentity superpoint/vgg/conv4_1/conv/bias*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_1/conv/bias*
_output_shapes	
:А
Ж
5superpoint/pred_tower0/vgg/conv4_1/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
╓
.superpoint/pred_tower0/vgg/conv4_1/conv/Conv2DConv2D(superpoint/pred_tower0/vgg/pool3/MaxPool'superpoint/vgg/conv4_1/conv/kernel/read*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А*
	dilations
*
T0
ь
/superpoint/pred_tower0/vgg/conv4_1/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv4_1/conv/Conv2D%superpoint/vgg/conv4_1/conv/bias/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
й
,superpoint/pred_tower0/vgg/conv4_1/conv/ReluRelu/superpoint/pred_tower0/vgg/conv4_1/conv/BiasAdd*
T0*9
_output_shapes'
%:#                  А
│
0superpoint/vgg/conv4_1/bn/gamma/Initializer/onesConst*
valueBА*  А?*2
_class(
&$loc:@superpoint/vgg/conv4_1/bn/gamma*
dtype0*
_output_shapes	
:А
┴
superpoint/vgg/conv4_1/bn/gamma
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv4_1/bn/gamma
Ж
&superpoint/vgg/conv4_1/bn/gamma/AssignAssignsuperpoint/vgg/conv4_1/bn/gamma0superpoint/vgg/conv4_1/bn/gamma/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_1/bn/gamma*
validate_shape(*
_output_shapes	
:А
л
$superpoint/vgg/conv4_1/bn/gamma/readIdentitysuperpoint/vgg/conv4_1/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_1/bn/gamma*
_output_shapes	
:А
▓
0superpoint/vgg/conv4_1/bn/beta/Initializer/zerosConst*
valueBА*    *1
_class'
%#loc:@superpoint/vgg/conv4_1/bn/beta*
dtype0*
_output_shapes	
:А
┐
superpoint/vgg/conv4_1/bn/beta
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv4_1/bn/beta
Г
%superpoint/vgg/conv4_1/bn/beta/AssignAssignsuperpoint/vgg/conv4_1/bn/beta0superpoint/vgg/conv4_1/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_1/bn/beta
и
#superpoint/vgg/conv4_1/bn/beta/readIdentitysuperpoint/vgg/conv4_1/bn/beta*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_1/bn/beta*
_output_shapes	
:А
└
7superpoint/vgg/conv4_1/bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *8
_class.
,*loc:@superpoint/vgg/conv4_1/bn/moving_mean
═
%superpoint/vgg/conv4_1/bn/moving_mean
VariableV2*8
_class.
,*loc:@superpoint/vgg/conv4_1/bn/moving_mean*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Я
,superpoint/vgg/conv4_1/bn/moving_mean/AssignAssign%superpoint/vgg/conv4_1/bn/moving_mean7superpoint/vgg/conv4_1/bn/moving_mean/Initializer/zeros*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
╜
*superpoint/vgg/conv4_1/bn/moving_mean/readIdentity%superpoint/vgg/conv4_1/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_1/bn/moving_mean*
_output_shapes	
:А
╟
:superpoint/vgg/conv4_1/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*<
_class2
0.loc:@superpoint/vgg/conv4_1/bn/moving_variance*
dtype0*
_output_shapes	
:А
╒
)superpoint/vgg/conv4_1/bn/moving_variance
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *<
_class2
0.loc:@superpoint/vgg/conv4_1/bn/moving_variance*
	container *
shape:А
о
0superpoint/vgg/conv4_1/bn/moving_variance/AssignAssign)superpoint/vgg/conv4_1/bn/moving_variance:superpoint/vgg/conv4_1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╔
.superpoint/vgg/conv4_1/bn/moving_variance/readIdentity)superpoint/vgg/conv4_1/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_1/bn/moving_variance*
_output_shapes	
:А
╖
4superpoint/pred_tower0/vgg/conv4_1/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv4_1/conv/Relu$superpoint/vgg/conv4_1/bn/gamma/read#superpoint/vgg/conv4_1/bn/beta/read*superpoint/vgg/conv4_1/bn/moving_mean/read.superpoint/vgg/conv4_1/bn/moving_variance/read*
T0*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( *
epsilon%oГ:
p
+superpoint/pred_tower0/vgg/conv4_1/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
╙
Csuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А   А   *5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
dtype0*
_output_shapes
:
╜
Asuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *ьQ╜*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
dtype0*
_output_shapes
: 
╜
Asuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *ьQ=*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
dtype0*
_output_shapes
: 
▒
Ksuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformCsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
seed2 
ж
Asuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/subSubAsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/maxAsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/min*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
_output_shapes
: 
┬
Asuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/mulMulKsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/RandomUniformAsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/sub*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*(
_output_shapes
:АА
┤
=superpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniformAddAsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/mulAsuperpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform/min*(
_output_shapes
:АА*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel
с
"superpoint/vgg/conv4_2/conv/kernel
VariableV2*
dtype0*(
_output_shapes
:АА*
shared_name *5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
	container *
shape:АА
й
)superpoint/vgg/conv4_2/conv/kernel/AssignAssign"superpoint/vgg/conv4_2/conv/kernel=superpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel
┴
'superpoint/vgg/conv4_2/conv/kernel/readIdentity"superpoint/vgg/conv4_2/conv/kernel*(
_output_shapes
:АА*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel
╢
2superpoint/vgg/conv4_2/conv/bias/Initializer/zerosConst*
valueBА*    *3
_class)
'%loc:@superpoint/vgg/conv4_2/conv/bias*
dtype0*
_output_shapes	
:А
├
 superpoint/vgg/conv4_2/conv/bias
VariableV2*
shared_name *3
_class)
'%loc:@superpoint/vgg/conv4_2/conv/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Л
'superpoint/vgg/conv4_2/conv/bias/AssignAssign superpoint/vgg/conv4_2/conv/bias2superpoint/vgg/conv4_2/conv/bias/Initializer/zeros*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_2/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
о
%superpoint/vgg/conv4_2/conv/bias/readIdentity superpoint/vgg/conv4_2/conv/bias*
_output_shapes	
:А*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_2/conv/bias
Ж
5superpoint/pred_tower0/vgg/conv4_2/conv/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
т
.superpoint/pred_tower0/vgg/conv4_2/conv/Conv2DConv2D4superpoint/pred_tower0/vgg/conv4_1/bn/FusedBatchNorm'superpoint/vgg/conv4_2/conv/kernel/read*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*9
_output_shapes'
%:#                  А*
	dilations

ь
/superpoint/pred_tower0/vgg/conv4_2/conv/BiasAddBiasAdd.superpoint/pred_tower0/vgg/conv4_2/conv/Conv2D%superpoint/vgg/conv4_2/conv/bias/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
й
,superpoint/pred_tower0/vgg/conv4_2/conv/ReluRelu/superpoint/pred_tower0/vgg/conv4_2/conv/BiasAdd*9
_output_shapes'
%:#                  А*
T0
│
0superpoint/vgg/conv4_2/bn/gamma/Initializer/onesConst*
valueBА*  А?*2
_class(
&$loc:@superpoint/vgg/conv4_2/bn/gamma*
dtype0*
_output_shapes	
:А
┴
superpoint/vgg/conv4_2/bn/gamma
VariableV2*
shared_name *2
_class(
&$loc:@superpoint/vgg/conv4_2/bn/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Ж
&superpoint/vgg/conv4_2/bn/gamma/AssignAssignsuperpoint/vgg/conv4_2/bn/gamma0superpoint/vgg/conv4_2/bn/gamma/Initializer/ones*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_2/bn/gamma*
validate_shape(*
_output_shapes	
:А
л
$superpoint/vgg/conv4_2/bn/gamma/readIdentitysuperpoint/vgg/conv4_2/bn/gamma*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_2/bn/gamma*
_output_shapes	
:А
▓
0superpoint/vgg/conv4_2/bn/beta/Initializer/zerosConst*
valueBА*    *1
_class'
%#loc:@superpoint/vgg/conv4_2/bn/beta*
dtype0*
_output_shapes	
:А
┐
superpoint/vgg/conv4_2/bn/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *1
_class'
%#loc:@superpoint/vgg/conv4_2/bn/beta*
	container 
Г
%superpoint/vgg/conv4_2/bn/beta/AssignAssignsuperpoint/vgg/conv4_2/bn/beta0superpoint/vgg/conv4_2/bn/beta/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_2/bn/beta
и
#superpoint/vgg/conv4_2/bn/beta/readIdentitysuperpoint/vgg/conv4_2/bn/beta*
_output_shapes	
:А*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_2/bn/beta
└
7superpoint/vgg/conv4_2/bn/moving_mean/Initializer/zerosConst*
valueBА*    *8
_class.
,*loc:@superpoint/vgg/conv4_2/bn/moving_mean*
dtype0*
_output_shapes	
:А
═
%superpoint/vgg/conv4_2/bn/moving_mean
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *8
_class.
,*loc:@superpoint/vgg/conv4_2/bn/moving_mean*
	container *
shape:А
Я
,superpoint/vgg/conv4_2/bn/moving_mean/AssignAssign%superpoint/vgg/conv4_2/bn/moving_mean7superpoint/vgg/conv4_2/bn/moving_mean/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_2/bn/moving_mean
╜
*superpoint/vgg/conv4_2/bn/moving_mean/readIdentity%superpoint/vgg/conv4_2/bn/moving_mean*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_2/bn/moving_mean*
_output_shapes	
:А
╟
:superpoint/vgg/conv4_2/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*<
_class2
0.loc:@superpoint/vgg/conv4_2/bn/moving_variance*
dtype0*
_output_shapes	
:А
╒
)superpoint/vgg/conv4_2/bn/moving_variance
VariableV2*<
_class2
0.loc:@superpoint/vgg/conv4_2/bn/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
о
0superpoint/vgg/conv4_2/bn/moving_variance/AssignAssign)superpoint/vgg/conv4_2/bn/moving_variance:superpoint/vgg/conv4_2/bn/moving_variance/Initializer/ones*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
╔
.superpoint/vgg/conv4_2/bn/moving_variance/readIdentity)superpoint/vgg/conv4_2/bn/moving_variance*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_2/bn/moving_variance*
_output_shapes	
:А
╖
4superpoint/pred_tower0/vgg/conv4_2/bn/FusedBatchNormFusedBatchNorm,superpoint/pred_tower0/vgg/conv4_2/conv/Relu$superpoint/vgg/conv4_2/bn/gamma/read#superpoint/vgg/conv4_2/bn/beta/read*superpoint/vgg/conv4_2/bn/moving_mean/read.superpoint/vgg/conv4_2/bn/moving_variance/read*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( *
epsilon%oГ:*
T0
p
+superpoint/pred_tower0/vgg/conv4_2/bn/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *дp}?
┘
Fsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      А      *8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel
├
Dsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *лк*╜*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*
dtype0*
_output_shapes
: 
├
Dsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *лк*=*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*
dtype0*
_output_shapes
: 
║
Nsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformFsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*(
_output_shapes
:АА*

seed *
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel
▓
Dsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/subSubDsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/maxDsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel
╬
Dsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/mulMulNsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/RandomUniformDsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*(
_output_shapes
:АА
└
@superpoint/detector/conv1/conv/kernel/Initializer/random_uniformAddDsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/mulDsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*(
_output_shapes
:АА
ч
%superpoint/detector/conv1/conv/kernel
VariableV2*
shared_name *8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
╡
,superpoint/detector/conv1/conv/kernel/AssignAssign%superpoint/detector/conv1/conv/kernel@superpoint/detector/conv1/conv/kernel/Initializer/random_uniform*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel
╩
*superpoint/detector/conv1/conv/kernel/readIdentity%superpoint/detector/conv1/conv/kernel*
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*(
_output_shapes
:АА
╝
5superpoint/detector/conv1/conv/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *6
_class,
*(loc:@superpoint/detector/conv1/conv/bias
╔
#superpoint/detector/conv1/conv/bias
VariableV2*
shared_name *6
_class,
*(loc:@superpoint/detector/conv1/conv/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
Ч
*superpoint/detector/conv1/conv/bias/AssignAssign#superpoint/detector/conv1/conv/bias5superpoint/detector/conv1/conv/bias/Initializer/zeros*
T0*6
_class,
*(loc:@superpoint/detector/conv1/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
╖
(superpoint/detector/conv1/conv/bias/readIdentity#superpoint/detector/conv1/conv/bias*
T0*6
_class,
*(loc:@superpoint/detector/conv1/conv/bias*
_output_shapes	
:А
Й
8superpoint/pred_tower0/detector/conv1/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ш
1superpoint/pred_tower0/detector/conv1/conv/Conv2DConv2D4superpoint/pred_tower0/vgg/conv4_2/bn/FusedBatchNorm*superpoint/detector/conv1/conv/kernel/read*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
explicit_paddings
 *
paddingSAME*9
_output_shapes'
%:#                  А*
	dilations

ї
2superpoint/pred_tower0/detector/conv1/conv/BiasAddBiasAdd1superpoint/pred_tower0/detector/conv1/conv/Conv2D(superpoint/detector/conv1/conv/bias/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
п
/superpoint/pred_tower0/detector/conv1/conv/ReluRelu2superpoint/pred_tower0/detector/conv1/conv/BiasAdd*
T0*9
_output_shapes'
%:#                  А
╣
3superpoint/detector/conv1/bn/gamma/Initializer/onesConst*
valueBА*  А?*5
_class+
)'loc:@superpoint/detector/conv1/bn/gamma*
dtype0*
_output_shapes	
:А
╟
"superpoint/detector/conv1/bn/gamma
VariableV2*5
_class+
)'loc:@superpoint/detector/conv1/bn/gamma*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
Т
)superpoint/detector/conv1/bn/gamma/AssignAssign"superpoint/detector/conv1/bn/gamma3superpoint/detector/conv1/bn/gamma/Initializer/ones*
T0*5
_class+
)'loc:@superpoint/detector/conv1/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
┤
'superpoint/detector/conv1/bn/gamma/readIdentity"superpoint/detector/conv1/bn/gamma*
T0*5
_class+
)'loc:@superpoint/detector/conv1/bn/gamma*
_output_shapes	
:А
╕
3superpoint/detector/conv1/bn/beta/Initializer/zerosConst*
valueBА*    *4
_class*
(&loc:@superpoint/detector/conv1/bn/beta*
dtype0*
_output_shapes	
:А
┼
!superpoint/detector/conv1/bn/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *4
_class*
(&loc:@superpoint/detector/conv1/bn/beta*
	container *
shape:А
П
(superpoint/detector/conv1/bn/beta/AssignAssign!superpoint/detector/conv1/bn/beta3superpoint/detector/conv1/bn/beta/Initializer/zeros*
T0*4
_class*
(&loc:@superpoint/detector/conv1/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
▒
&superpoint/detector/conv1/bn/beta/readIdentity!superpoint/detector/conv1/bn/beta*
T0*4
_class*
(&loc:@superpoint/detector/conv1/bn/beta*
_output_shapes	
:А
╞
:superpoint/detector/conv1/bn/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *;
_class1
/-loc:@superpoint/detector/conv1/bn/moving_mean
╙
(superpoint/detector/conv1/bn/moving_mean
VariableV2*
shared_name *;
_class1
/-loc:@superpoint/detector/conv1/bn/moving_mean*
	container *
shape:А*
dtype0*
_output_shapes	
:А
л
/superpoint/detector/conv1/bn/moving_mean/AssignAssign(superpoint/detector/conv1/bn/moving_mean:superpoint/detector/conv1/bn/moving_mean/Initializer/zeros*
T0*;
_class1
/-loc:@superpoint/detector/conv1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
╞
-superpoint/detector/conv1/bn/moving_mean/readIdentity(superpoint/detector/conv1/bn/moving_mean*
T0*;
_class1
/-loc:@superpoint/detector/conv1/bn/moving_mean*
_output_shapes	
:А
═
=superpoint/detector/conv1/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*?
_class5
31loc:@superpoint/detector/conv1/bn/moving_variance*
dtype0*
_output_shapes	
:А
█
,superpoint/detector/conv1/bn/moving_variance
VariableV2*?
_class5
31loc:@superpoint/detector/conv1/bn/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
║
3superpoint/detector/conv1/bn/moving_variance/AssignAssign,superpoint/detector/conv1/bn/moving_variance=superpoint/detector/conv1/bn/moving_variance/Initializer/ones*
use_locking(*
T0*?
_class5
31loc:@superpoint/detector/conv1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╥
1superpoint/detector/conv1/bn/moving_variance/readIdentity,superpoint/detector/conv1/bn/moving_variance*
_output_shapes	
:А*
T0*?
_class5
31loc:@superpoint/detector/conv1/bn/moving_variance
╔
7superpoint/pred_tower0/detector/conv1/bn/FusedBatchNormFusedBatchNorm/superpoint/pred_tower0/detector/conv1/conv/Relu'superpoint/detector/conv1/bn/gamma/read&superpoint/detector/conv1/bn/beta/read-superpoint/detector/conv1/bn/moving_mean/read1superpoint/detector/conv1/bn/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( 
s
.superpoint/pred_tower0/detector/conv1/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
┘
Fsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"         A   *8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
dtype0*
_output_shapes
:
├
Dsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *Ч ╛*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
dtype0*
_output_shapes
: 
├
Dsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ч >*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
dtype0*
_output_shapes
: 
╣
Nsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformFsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:АA*

seed *
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
seed2 
▓
Dsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/subSubDsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/maxDsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/min*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
_output_shapes
: 
═
Dsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/mulMulNsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/RandomUniformDsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/sub*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*'
_output_shapes
:АA
┐
@superpoint/detector/conv2/conv/kernel/Initializer/random_uniformAddDsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/mulDsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform/min*'
_output_shapes
:АA*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel
х
%superpoint/detector/conv2/conv/kernel
VariableV2*
dtype0*'
_output_shapes
:АA*
shared_name *8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
	container *
shape:АA
┤
,superpoint/detector/conv2/conv/kernel/AssignAssign%superpoint/detector/conv2/conv/kernel@superpoint/detector/conv2/conv/kernel/Initializer/random_uniform*
validate_shape(*'
_output_shapes
:АA*
use_locking(*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel
╔
*superpoint/detector/conv2/conv/kernel/readIdentity%superpoint/detector/conv2/conv/kernel*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*'
_output_shapes
:АA
║
5superpoint/detector/conv2/conv/bias/Initializer/zerosConst*
valueBA*    *6
_class,
*(loc:@superpoint/detector/conv2/conv/bias*
dtype0*
_output_shapes
:A
╟
#superpoint/detector/conv2/conv/bias
VariableV2*
shared_name *6
_class,
*(loc:@superpoint/detector/conv2/conv/bias*
	container *
shape:A*
dtype0*
_output_shapes
:A
Ц
*superpoint/detector/conv2/conv/bias/AssignAssign#superpoint/detector/conv2/conv/bias5superpoint/detector/conv2/conv/bias/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@superpoint/detector/conv2/conv/bias*
validate_shape(*
_output_shapes
:A
╢
(superpoint/detector/conv2/conv/bias/readIdentity#superpoint/detector/conv2/conv/bias*
_output_shapes
:A*
T0*6
_class,
*(loc:@superpoint/detector/conv2/conv/bias
Й
8superpoint/pred_tower0/detector/conv2/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ъ
1superpoint/pred_tower0/detector/conv2/conv/Conv2DConv2D7superpoint/pred_tower0/detector/conv1/bn/FusedBatchNorm*superpoint/detector/conv2/conv/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*8
_output_shapes&
$:"                  A
Ї
2superpoint/pred_tower0/detector/conv2/conv/BiasAddBiasAdd1superpoint/pred_tower0/detector/conv2/conv/Conv2D(superpoint/detector/conv2/conv/bias/read*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  A
╖
3superpoint/detector/conv2/bn/gamma/Initializer/onesConst*
valueBA*  А?*5
_class+
)'loc:@superpoint/detector/conv2/bn/gamma*
dtype0*
_output_shapes
:A
┼
"superpoint/detector/conv2/bn/gamma
VariableV2*5
_class+
)'loc:@superpoint/detector/conv2/bn/gamma*
	container *
shape:A*
dtype0*
_output_shapes
:A*
shared_name 
С
)superpoint/detector/conv2/bn/gamma/AssignAssign"superpoint/detector/conv2/bn/gamma3superpoint/detector/conv2/bn/gamma/Initializer/ones*
T0*5
_class+
)'loc:@superpoint/detector/conv2/bn/gamma*
validate_shape(*
_output_shapes
:A*
use_locking(
│
'superpoint/detector/conv2/bn/gamma/readIdentity"superpoint/detector/conv2/bn/gamma*
T0*5
_class+
)'loc:@superpoint/detector/conv2/bn/gamma*
_output_shapes
:A
╢
3superpoint/detector/conv2/bn/beta/Initializer/zerosConst*
valueBA*    *4
_class*
(&loc:@superpoint/detector/conv2/bn/beta*
dtype0*
_output_shapes
:A
├
!superpoint/detector/conv2/bn/beta
VariableV2*
dtype0*
_output_shapes
:A*
shared_name *4
_class*
(&loc:@superpoint/detector/conv2/bn/beta*
	container *
shape:A
О
(superpoint/detector/conv2/bn/beta/AssignAssign!superpoint/detector/conv2/bn/beta3superpoint/detector/conv2/bn/beta/Initializer/zeros*
T0*4
_class*
(&loc:@superpoint/detector/conv2/bn/beta*
validate_shape(*
_output_shapes
:A*
use_locking(
░
&superpoint/detector/conv2/bn/beta/readIdentity!superpoint/detector/conv2/bn/beta*
T0*4
_class*
(&loc:@superpoint/detector/conv2/bn/beta*
_output_shapes
:A
─
:superpoint/detector/conv2/bn/moving_mean/Initializer/zerosConst*
valueBA*    *;
_class1
/-loc:@superpoint/detector/conv2/bn/moving_mean*
dtype0*
_output_shapes
:A
╤
(superpoint/detector/conv2/bn/moving_mean
VariableV2*
shared_name *;
_class1
/-loc:@superpoint/detector/conv2/bn/moving_mean*
	container *
shape:A*
dtype0*
_output_shapes
:A
к
/superpoint/detector/conv2/bn/moving_mean/AssignAssign(superpoint/detector/conv2/bn/moving_mean:superpoint/detector/conv2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*;
_class1
/-loc:@superpoint/detector/conv2/bn/moving_mean*
validate_shape(*
_output_shapes
:A
┼
-superpoint/detector/conv2/bn/moving_mean/readIdentity(superpoint/detector/conv2/bn/moving_mean*
T0*;
_class1
/-loc:@superpoint/detector/conv2/bn/moving_mean*
_output_shapes
:A
╦
=superpoint/detector/conv2/bn/moving_variance/Initializer/onesConst*
valueBA*  А?*?
_class5
31loc:@superpoint/detector/conv2/bn/moving_variance*
dtype0*
_output_shapes
:A
┘
,superpoint/detector/conv2/bn/moving_variance
VariableV2*
dtype0*
_output_shapes
:A*
shared_name *?
_class5
31loc:@superpoint/detector/conv2/bn/moving_variance*
	container *
shape:A
╣
3superpoint/detector/conv2/bn/moving_variance/AssignAssign,superpoint/detector/conv2/bn/moving_variance=superpoint/detector/conv2/bn/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:A*
use_locking(*
T0*?
_class5
31loc:@superpoint/detector/conv2/bn/moving_variance
╤
1superpoint/detector/conv2/bn/moving_variance/readIdentity,superpoint/detector/conv2/bn/moving_variance*
T0*?
_class5
31loc:@superpoint/detector/conv2/bn/moving_variance*
_output_shapes
:A
╟
7superpoint/pred_tower0/detector/conv2/bn/FusedBatchNormFusedBatchNorm2superpoint/pred_tower0/detector/conv2/conv/BiasAdd'superpoint/detector/conv2/bn/gamma/read&superpoint/detector/conv2/bn/beta/read-superpoint/detector/conv2/bn/moving_mean/read1superpoint/detector/conv2/bn/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*P
_output_shapes>
<:"                  A:A:A:A:A*
is_training( 
s
.superpoint/pred_tower0/detector/conv2/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
о
'superpoint/pred_tower0/detector/SoftmaxSoftmax7superpoint/pred_tower0/detector/conv2/bn/FusedBatchNorm*8
_output_shapes&
$:"                  A*
T0
М
3superpoint/pred_tower0/detector/strided_slice/stackConst*%
valueB"                *
dtype0*
_output_shapes
:
О
5superpoint/pred_tower0/detector/strided_slice/stack_1Const*%
valueB"                *
dtype0*
_output_shapes
:
О
5superpoint/pred_tower0/detector/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*%
valueB"            
╜
-superpoint/pred_tower0/detector/strided_sliceStridedSlice'superpoint/pred_tower0/detector/Softmax3superpoint/pred_tower0/detector/strided_slice/stack5superpoint/pred_tower0/detector/strided_slice/stack_15superpoint/pred_tower0/detector/strided_slice/stack_2*
shrink_axis_mask *
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*8
_output_shapes&
$:"                  @*
Index0*
T0
╫
,superpoint/pred_tower0/detector/DepthToSpaceDepthToSpace-superpoint/pred_tower0/detector/strided_slice*
T0*
data_formatNHWC*8
_output_shapes&
$:"                  *

block_size
┐
'superpoint/pred_tower0/detector/SqueezeSqueeze,superpoint/pred_tower0/detector/DepthToSpace*
T0*4
_output_shapes"
 :                  *
squeeze_dims

         
▌
Hsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"      А      *:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel
╟
Fsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *лк*╜*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*
dtype0*
_output_shapes
: 
╟
Fsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *лк*=*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*
dtype0*
_output_shapes
: 
└
Psuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformHsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*
seed2 
║
Fsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/subSubFsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/maxFsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*
_output_shapes
: 
╓
Fsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/mulMulPsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/RandomUniformFsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/sub*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*(
_output_shapes
:АА
╚
Bsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniformAddFsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/mulFsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*(
_output_shapes
:АА
ы
'superpoint/descriptor/conv1/conv/kernel
VariableV2*
shape:АА*
dtype0*(
_output_shapes
:АА*
shared_name *:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*
	container 
╜
.superpoint/descriptor/conv1/conv/kernel/AssignAssign'superpoint/descriptor/conv1/conv/kernelBsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
╨
,superpoint/descriptor/conv1/conv/kernel/readIdentity'superpoint/descriptor/conv1/conv/kernel*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel*(
_output_shapes
:АА
└
7superpoint/descriptor/conv1/conv/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    *8
_class.
,*loc:@superpoint/descriptor/conv1/conv/bias
═
%superpoint/descriptor/conv1/conv/bias
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *8
_class.
,*loc:@superpoint/descriptor/conv1/conv/bias*
	container *
shape:А
Я
,superpoint/descriptor/conv1/conv/bias/AssignAssign%superpoint/descriptor/conv1/conv/bias7superpoint/descriptor/conv1/conv/bias/Initializer/zeros*
use_locking(*
T0*8
_class.
,*loc:@superpoint/descriptor/conv1/conv/bias*
validate_shape(*
_output_shapes	
:А
╜
*superpoint/descriptor/conv1/conv/bias/readIdentity%superpoint/descriptor/conv1/conv/bias*
T0*8
_class.
,*loc:@superpoint/descriptor/conv1/conv/bias*
_output_shapes	
:А
Л
:superpoint/pred_tower0/descriptor/conv1/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ь
3superpoint/pred_tower0/descriptor/conv1/conv/Conv2DConv2D4superpoint/pred_tower0/vgg/conv4_2/bn/FusedBatchNorm,superpoint/descriptor/conv1/conv/kernel/read*
paddingSAME*9
_output_shapes'
%:#                  А*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(
√
4superpoint/pred_tower0/descriptor/conv1/conv/BiasAddBiasAdd3superpoint/pred_tower0/descriptor/conv1/conv/Conv2D*superpoint/descriptor/conv1/conv/bias/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
│
1superpoint/pred_tower0/descriptor/conv1/conv/ReluRelu4superpoint/pred_tower0/descriptor/conv1/conv/BiasAdd*
T0*9
_output_shapes'
%:#                  А
╜
5superpoint/descriptor/conv1/bn/gamma/Initializer/onesConst*
valueBА*  А?*7
_class-
+)loc:@superpoint/descriptor/conv1/bn/gamma*
dtype0*
_output_shapes	
:А
╦
$superpoint/descriptor/conv1/bn/gamma
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *7
_class-
+)loc:@superpoint/descriptor/conv1/bn/gamma
Ъ
+superpoint/descriptor/conv1/bn/gamma/AssignAssign$superpoint/descriptor/conv1/bn/gamma5superpoint/descriptor/conv1/bn/gamma/Initializer/ones*
use_locking(*
T0*7
_class-
+)loc:@superpoint/descriptor/conv1/bn/gamma*
validate_shape(*
_output_shapes	
:А
║
)superpoint/descriptor/conv1/bn/gamma/readIdentity$superpoint/descriptor/conv1/bn/gamma*
T0*7
_class-
+)loc:@superpoint/descriptor/conv1/bn/gamma*
_output_shapes	
:А
╝
5superpoint/descriptor/conv1/bn/beta/Initializer/zerosConst*
valueBА*    *6
_class,
*(loc:@superpoint/descriptor/conv1/bn/beta*
dtype0*
_output_shapes	
:А
╔
#superpoint/descriptor/conv1/bn/beta
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@superpoint/descriptor/conv1/bn/beta*
	container 
Ч
*superpoint/descriptor/conv1/bn/beta/AssignAssign#superpoint/descriptor/conv1/bn/beta5superpoint/descriptor/conv1/bn/beta/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@superpoint/descriptor/conv1/bn/beta*
validate_shape(*
_output_shapes	
:А
╖
(superpoint/descriptor/conv1/bn/beta/readIdentity#superpoint/descriptor/conv1/bn/beta*
T0*6
_class,
*(loc:@superpoint/descriptor/conv1/bn/beta*
_output_shapes	
:А
╩
<superpoint/descriptor/conv1/bn/moving_mean/Initializer/zerosConst*
valueBА*    *=
_class3
1/loc:@superpoint/descriptor/conv1/bn/moving_mean*
dtype0*
_output_shapes	
:А
╫
*superpoint/descriptor/conv1/bn/moving_mean
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *=
_class3
1/loc:@superpoint/descriptor/conv1/bn/moving_mean*
	container *
shape:А
│
1superpoint/descriptor/conv1/bn/moving_mean/AssignAssign*superpoint/descriptor/conv1/bn/moving_mean<superpoint/descriptor/conv1/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@superpoint/descriptor/conv1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
╠
/superpoint/descriptor/conv1/bn/moving_mean/readIdentity*superpoint/descriptor/conv1/bn/moving_mean*
T0*=
_class3
1/loc:@superpoint/descriptor/conv1/bn/moving_mean*
_output_shapes	
:А
╤
?superpoint/descriptor/conv1/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*A
_class7
53loc:@superpoint/descriptor/conv1/bn/moving_variance*
dtype0*
_output_shapes	
:А
▀
.superpoint/descriptor/conv1/bn/moving_variance
VariableV2*A
_class7
53loc:@superpoint/descriptor/conv1/bn/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name 
┬
5superpoint/descriptor/conv1/bn/moving_variance/AssignAssign.superpoint/descriptor/conv1/bn/moving_variance?superpoint/descriptor/conv1/bn/moving_variance/Initializer/ones*
T0*A
_class7
53loc:@superpoint/descriptor/conv1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
╪
3superpoint/descriptor/conv1/bn/moving_variance/readIdentity.superpoint/descriptor/conv1/bn/moving_variance*
T0*A
_class7
53loc:@superpoint/descriptor/conv1/bn/moving_variance*
_output_shapes	
:А
╒
9superpoint/pred_tower0/descriptor/conv1/bn/FusedBatchNormFusedBatchNorm1superpoint/pred_tower0/descriptor/conv1/conv/Relu)superpoint/descriptor/conv1/bn/gamma/read(superpoint/descriptor/conv1/bn/beta/read/superpoint/descriptor/conv1/bn/moving_mean/read3superpoint/descriptor/conv1/bn/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( 
u
0superpoint/pred_tower0/descriptor/conv1/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
▌
Hsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
dtype0*
_output_shapes
:
╟
Fsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/minConst*
valueB
 *╫│▌╜*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
dtype0*
_output_shapes
: 
╟
Fsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/maxConst*
valueB
 *╫│▌=*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
dtype0*
_output_shapes
: 
└
Psuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/RandomUniformRandomUniformHsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:АА*

seed *
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
seed2 
║
Fsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/subSubFsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/maxFsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
_output_shapes
: 
╓
Fsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/mulMulPsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/RandomUniformFsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/sub*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*(
_output_shapes
:АА
╚
Bsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniformAddFsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/mulFsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform/min*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*(
_output_shapes
:АА
ы
'superpoint/descriptor/conv2/conv/kernel
VariableV2*
shared_name *:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
	container *
shape:АА*
dtype0*(
_output_shapes
:АА
╜
.superpoint/descriptor/conv2/conv/kernel/AssignAssign'superpoint/descriptor/conv2/conv/kernelBsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform*
use_locking(*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
validate_shape(*(
_output_shapes
:АА
╨
,superpoint/descriptor/conv2/conv/kernel/readIdentity'superpoint/descriptor/conv2/conv/kernel*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*(
_output_shapes
:АА
└
7superpoint/descriptor/conv2/conv/bias/Initializer/zerosConst*
valueBА*    *8
_class.
,*loc:@superpoint/descriptor/conv2/conv/bias*
dtype0*
_output_shapes	
:А
═
%superpoint/descriptor/conv2/conv/bias
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *8
_class.
,*loc:@superpoint/descriptor/conv2/conv/bias*
	container 
Я
,superpoint/descriptor/conv2/conv/bias/AssignAssign%superpoint/descriptor/conv2/conv/bias7superpoint/descriptor/conv2/conv/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*8
_class.
,*loc:@superpoint/descriptor/conv2/conv/bias
╜
*superpoint/descriptor/conv2/conv/bias/readIdentity%superpoint/descriptor/conv2/conv/bias*
T0*8
_class.
,*loc:@superpoint/descriptor/conv2/conv/bias*
_output_shapes	
:А
Л
:superpoint/pred_tower0/descriptor/conv2/conv/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
ё
3superpoint/pred_tower0/descriptor/conv2/conv/Conv2DConv2D9superpoint/pred_tower0/descriptor/conv1/bn/FusedBatchNorm,superpoint/descriptor/conv2/conv/kernel/read*
paddingSAME*9
_output_shapes'
%:#                  А*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 
√
4superpoint/pred_tower0/descriptor/conv2/conv/BiasAddBiasAdd3superpoint/pred_tower0/descriptor/conv2/conv/Conv2D*superpoint/descriptor/conv2/conv/bias/read*
T0*
data_formatNHWC*9
_output_shapes'
%:#                  А
╜
5superpoint/descriptor/conv2/bn/gamma/Initializer/onesConst*
valueBА*  А?*7
_class-
+)loc:@superpoint/descriptor/conv2/bn/gamma*
dtype0*
_output_shapes	
:А
╦
$superpoint/descriptor/conv2/bn/gamma
VariableV2*
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *7
_class-
+)loc:@superpoint/descriptor/conv2/bn/gamma*
	container 
Ъ
+superpoint/descriptor/conv2/bn/gamma/AssignAssign$superpoint/descriptor/conv2/bn/gamma5superpoint/descriptor/conv2/bn/gamma/Initializer/ones*
T0*7
_class-
+)loc:@superpoint/descriptor/conv2/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
║
)superpoint/descriptor/conv2/bn/gamma/readIdentity$superpoint/descriptor/conv2/bn/gamma*
_output_shapes	
:А*
T0*7
_class-
+)loc:@superpoint/descriptor/conv2/bn/gamma
╝
5superpoint/descriptor/conv2/bn/beta/Initializer/zerosConst*
valueBА*    *6
_class,
*(loc:@superpoint/descriptor/conv2/bn/beta*
dtype0*
_output_shapes	
:А
╔
#superpoint/descriptor/conv2/bn/beta
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name *6
_class,
*(loc:@superpoint/descriptor/conv2/bn/beta*
	container *
shape:А
Ч
*superpoint/descriptor/conv2/bn/beta/AssignAssign#superpoint/descriptor/conv2/bn/beta5superpoint/descriptor/conv2/bn/beta/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@superpoint/descriptor/conv2/bn/beta*
validate_shape(*
_output_shapes	
:А
╖
(superpoint/descriptor/conv2/bn/beta/readIdentity#superpoint/descriptor/conv2/bn/beta*
_output_shapes	
:А*
T0*6
_class,
*(loc:@superpoint/descriptor/conv2/bn/beta
╩
<superpoint/descriptor/conv2/bn/moving_mean/Initializer/zerosConst*
valueBА*    *=
_class3
1/loc:@superpoint/descriptor/conv2/bn/moving_mean*
dtype0*
_output_shapes	
:А
╫
*superpoint/descriptor/conv2/bn/moving_mean
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name *=
_class3
1/loc:@superpoint/descriptor/conv2/bn/moving_mean
│
1superpoint/descriptor/conv2/bn/moving_mean/AssignAssign*superpoint/descriptor/conv2/bn/moving_mean<superpoint/descriptor/conv2/bn/moving_mean/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@superpoint/descriptor/conv2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
╠
/superpoint/descriptor/conv2/bn/moving_mean/readIdentity*superpoint/descriptor/conv2/bn/moving_mean*
T0*=
_class3
1/loc:@superpoint/descriptor/conv2/bn/moving_mean*
_output_shapes	
:А
╤
?superpoint/descriptor/conv2/bn/moving_variance/Initializer/onesConst*
valueBА*  А?*A
_class7
53loc:@superpoint/descriptor/conv2/bn/moving_variance*
dtype0*
_output_shapes	
:А
▀
.superpoint/descriptor/conv2/bn/moving_variance
VariableV2*
shared_name *A
_class7
53loc:@superpoint/descriptor/conv2/bn/moving_variance*
	container *
shape:А*
dtype0*
_output_shapes	
:А
┬
5superpoint/descriptor/conv2/bn/moving_variance/AssignAssign.superpoint/descriptor/conv2/bn/moving_variance?superpoint/descriptor/conv2/bn/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*A
_class7
53loc:@superpoint/descriptor/conv2/bn/moving_variance
╪
3superpoint/descriptor/conv2/bn/moving_variance/readIdentity.superpoint/descriptor/conv2/bn/moving_variance*
T0*A
_class7
53loc:@superpoint/descriptor/conv2/bn/moving_variance*
_output_shapes	
:А
╪
9superpoint/pred_tower0/descriptor/conv2/bn/FusedBatchNormFusedBatchNorm4superpoint/pred_tower0/descriptor/conv2/conv/BiasAdd)superpoint/descriptor/conv2/bn/gamma/read(superpoint/descriptor/conv2/bn/beta/read/superpoint/descriptor/conv2/bn/moving_mean/read3superpoint/descriptor/conv2/bn/moving_variance/read*
epsilon%oГ:*
T0*
data_formatNHWC*U
_output_shapesC
A:#                  А:А:А:А:А*
is_training( 
u
0superpoint/pred_tower0/descriptor/conv2/bn/ConstConst*
valueB
 *дp}?*
dtype0*
_output_shapes
: 
а
'superpoint/pred_tower0/descriptor/ShapeShape9superpoint/pred_tower0/descriptor/conv2/bn/FusedBatchNorm*
T0*
out_type0*
_output_shapes
:

5superpoint/pred_tower0/descriptor/strided_slice/stackConst*
valueB:*
dtype0*
_output_shapes
:
Б
7superpoint/pred_tower0/descriptor/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Б
7superpoint/pred_tower0/descriptor/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
з
/superpoint/pred_tower0/descriptor/strided_sliceStridedSlice'superpoint/pred_tower0/descriptor/Shape5superpoint/pred_tower0/descriptor/strided_slice/stack7superpoint/pred_tower0/descriptor/strided_slice/stack_17superpoint/pred_tower0/descriptor/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
:
i
'superpoint/pred_tower0/descriptor/mul/xConst*
value	B :*
dtype0*
_output_shapes
: 
л
%superpoint/pred_tower0/descriptor/mulMul'superpoint/pred_tower0/descriptor/mul/x/superpoint/pred_tower0/descriptor/strided_slice*
T0*
_output_shapes
:
Ч
0superpoint/pred_tower0/descriptor/ResizeBilinearResizeBilinear9superpoint/pred_tower0/descriptor/conv2/bn/FusedBatchNorm%superpoint/pred_tower0/descriptor/mul*9
_output_shapes'
%:#                  А*
align_corners( *
half_pixel_centers( *
T0
╡
5superpoint/pred_tower0/descriptor/l2_normalize/SquareSquare0superpoint/pred_tower0/descriptor/ResizeBilinear*
T0*9
_output_shapes'
%:#                  А
П
Dsuperpoint/pred_tower0/descriptor/l2_normalize/Sum/reduction_indicesConst*
valueB :
         *
dtype0*
_output_shapes
: 
Ц
2superpoint/pred_tower0/descriptor/l2_normalize/SumSum5superpoint/pred_tower0/descriptor/l2_normalize/SquareDsuperpoint/pred_tower0/descriptor/l2_normalize/Sum/reduction_indices*
	keep_dims(*

Tidx0*
T0*8
_output_shapes&
$:"                  
}
8superpoint/pred_tower0/descriptor/l2_normalize/Maximum/yConst*
dtype0*
_output_shapes
: *
valueB
 *╠╝М+
Є
6superpoint/pred_tower0/descriptor/l2_normalize/MaximumMaximum2superpoint/pred_tower0/descriptor/l2_normalize/Sum8superpoint/pred_tower0/descriptor/l2_normalize/Maximum/y*8
_output_shapes&
$:"                  *
T0
╕
4superpoint/pred_tower0/descriptor/l2_normalize/RsqrtRsqrt6superpoint/pred_tower0/descriptor/l2_normalize/Maximum*
T0*8
_output_shapes&
$:"                  
с
.superpoint/pred_tower0/descriptor/l2_normalizeMul0superpoint/pred_tower0/descriptor/ResizeBilinear4superpoint/pred_tower0/descriptor/l2_normalize/Rsqrt*9
_output_shapes'
%:#                  А*
T0
m
+superpoint/pred_tower0/map/TensorArray/sizeConst*
value	B :*
dtype0*
_output_shapes
: 
Л
&superpoint/pred_tower0/map/TensorArrayTensorArrayV3+superpoint/pred_tower0/map/TensorArray/size*
tensor_array_name *
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
Ъ
3superpoint/pred_tower0/map/TensorArrayUnstack/ShapeShape'superpoint/pred_tower0/detector/Squeeze*
T0*
out_type0*
_output_shapes
:
Л
Asuperpoint/pred_tower0/map/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
Н
Csuperpoint/pred_tower0/map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
Н
Csuperpoint/pred_tower0/map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
▀
;superpoint/pred_tower0/map/TensorArrayUnstack/strided_sliceStridedSlice3superpoint/pred_tower0/map/TensorArrayUnstack/ShapeAsuperpoint/pred_tower0/map/TensorArrayUnstack/strided_slice/stackCsuperpoint/pred_tower0/map/TensorArrayUnstack/strided_slice/stack_1Csuperpoint/pred_tower0/map/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
{
9superpoint/pred_tower0/map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
{
9superpoint/pred_tower0/map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
а
3superpoint/pred_tower0/map/TensorArrayUnstack/rangeRange9superpoint/pred_tower0/map/TensorArrayUnstack/range/start;superpoint/pred_tower0/map/TensorArrayUnstack/strided_slice9superpoint/pred_tower0/map/TensorArrayUnstack/range/delta*#
_output_shapes
:         *

Tidx0
·
Usuperpoint/pred_tower0/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3&superpoint/pred_tower0/map/TensorArray3superpoint/pred_tower0/map/TensorArrayUnstack/range'superpoint/pred_tower0/detector/Squeeze(superpoint/pred_tower0/map/TensorArray:1*
T0*:
_class0
.,loc:@superpoint/pred_tower0/detector/Squeeze*
_output_shapes
: 
b
 superpoint/pred_tower0/map/ConstConst*
value	B : *
dtype0*
_output_shapes
: 
o
-superpoint/pred_tower0/map/TensorArray_1/sizeConst*
value	B :*
dtype0*
_output_shapes
: 
П
(superpoint/pred_tower0/map/TensorArray_1TensorArrayV3-superpoint/pred_tower0/map/TensorArray_1/size*
dtype0*
_output_shapes

:: *
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*
tensor_array_name 
u
3superpoint/pred_tower0/map/while/maximum_iterationsConst*
dtype0*
_output_shapes
: *
value	B :
t
2superpoint/pred_tower0/map/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
Є
&superpoint/pred_tower0/map/while/EnterEnter2superpoint/pred_tower0/map/while/iteration_counter*
parallel_iterations
*
_output_shapes
: *>

frame_name0.superpoint/pred_tower0/map/while/while_context*
T0*
is_constant( 
т
(superpoint/pred_tower0/map/while/Enter_1Enter superpoint/pred_tower0/map/Const*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *>

frame_name0.superpoint/pred_tower0/map/while/while_context
ь
(superpoint/pred_tower0/map/while/Enter_2Enter*superpoint/pred_tower0/map/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*
_output_shapes
: *>

frame_name0.superpoint/pred_tower0/map/while/while_context
│
&superpoint/pred_tower0/map/while/MergeMerge&superpoint/pred_tower0/map/while/Enter.superpoint/pred_tower0/map/while/NextIteration*
T0*
N*
_output_shapes
: : 
╣
(superpoint/pred_tower0/map/while/Merge_1Merge(superpoint/pred_tower0/map/while/Enter_10superpoint/pred_tower0/map/while/NextIteration_1*
N*
_output_shapes
: : *
T0
╣
(superpoint/pred_tower0/map/while/Merge_2Merge(superpoint/pred_tower0/map/while/Enter_20superpoint/pred_tower0/map/while/NextIteration_2*
N*
_output_shapes
: : *
T0
г
%superpoint/pred_tower0/map/while/LessLess&superpoint/pred_tower0/map/while/Merge+superpoint/pred_tower0/map/while/Less/Enter*
_output_shapes
: *
T0
°
+superpoint/pred_tower0/map/while/Less/EnterEnter3superpoint/pred_tower0/map/while/maximum_iterations*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *>

frame_name0.superpoint/pred_tower0/map/while/while_context
Ф
)superpoint/pred_tower0/map/while/Less_1/yConst'^superpoint/pred_tower0/map/while/Merge*
value	B :*
dtype0*
_output_shapes
: 
е
'superpoint/pred_tower0/map/while/Less_1Less(superpoint/pred_tower0/map/while/Merge_1)superpoint/pred_tower0/map/while/Less_1/y*
T0*
_output_shapes
: 
б
+superpoint/pred_tower0/map/while/LogicalAnd
LogicalAnd%superpoint/pred_tower0/map/while/Less'superpoint/pred_tower0/map/while/Less_1*
_output_shapes
: 
z
)superpoint/pred_tower0/map/while/LoopCondLoopCond+superpoint/pred_tower0/map/while/LogicalAnd*
_output_shapes
: 
т
'superpoint/pred_tower0/map/while/SwitchSwitch&superpoint/pred_tower0/map/while/Merge)superpoint/pred_tower0/map/while/LoopCond*
T0*9
_class/
-+loc:@superpoint/pred_tower0/map/while/Merge*
_output_shapes
: : 
ш
)superpoint/pred_tower0/map/while/Switch_1Switch(superpoint/pred_tower0/map/while/Merge_1)superpoint/pred_tower0/map/while/LoopCond*
T0*;
_class1
/-loc:@superpoint/pred_tower0/map/while/Merge_1*
_output_shapes
: : 
ш
)superpoint/pred_tower0/map/while/Switch_2Switch(superpoint/pred_tower0/map/while/Merge_2)superpoint/pred_tower0/map/while/LoopCond*
T0*;
_class1
/-loc:@superpoint/pred_tower0/map/while/Merge_2*
_output_shapes
: : 
Б
)superpoint/pred_tower0/map/while/IdentityIdentity)superpoint/pred_tower0/map/while/Switch:1*
T0*
_output_shapes
: 
Е
+superpoint/pred_tower0/map/while/Identity_1Identity+superpoint/pred_tower0/map/while/Switch_1:1*
T0*
_output_shapes
: 
Е
+superpoint/pred_tower0/map/while/Identity_2Identity+superpoint/pred_tower0/map/while/Switch_2:1*
T0*
_output_shapes
: 
Ф
&superpoint/pred_tower0/map/while/add/yConst*^superpoint/pred_tower0/map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Я
$superpoint/pred_tower0/map/while/addAdd)superpoint/pred_tower0/map/while/Identity&superpoint/pred_tower0/map/while/add/y*
_output_shapes
: *
T0
й
2superpoint/pred_tower0/map/while/TensorArrayReadV3TensorArrayReadV38superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter+superpoint/pred_tower0/map/while/Identity_1:superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter_1*
dtype0*0
_output_shapes
:                  
№
8superpoint/pred_tower0/map/while/TensorArrayReadV3/EnterEnter&superpoint/pred_tower0/map/TensorArray*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
:*>

frame_name0.superpoint/pred_tower0/map/while/while_context
й
:superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter_1EnterUsuperpoint/pred_tower0/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*
_output_shapes
: *>

frame_name0.superpoint/pred_tower0/map/while/while_context
и
7superpoint/pred_tower0/map/while/box_nms/GreaterEqual/yConst*^superpoint/pred_tower0/map/while/Identity*
valueB
 *
╫#<*
dtype0*
_output_shapes
: 
э
5superpoint/pred_tower0/map/while/box_nms/GreaterEqualGreaterEqual2superpoint/pred_tower0/map/while/TensorArrayReadV37superpoint/pred_tower0/map/while/box_nms/GreaterEqual/y*
T0*0
_output_shapes
:                  
а
.superpoint/pred_tower0/map/while/box_nms/WhereWhere5superpoint/pred_tower0/map/while/box_nms/GreaterEqual*
T0
*'
_output_shapes
:         
╣
0superpoint/pred_tower0/map/while/box_nms/ToFloatCast.superpoint/pred_tower0/map/while/box_nms/Where*

SrcT0	*
Truncate( *'
_output_shapes
:         *

DstT0
Я
.superpoint/pred_tower0/map/while/box_nms/ConstConst*^superpoint/pred_tower0/map/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *   @
╟
,superpoint/pred_tower0/map/while/box_nms/subSub0superpoint/pred_tower0/map/while/box_nms/ToFloat.superpoint/pred_tower0/map/while/box_nms/Const*'
_output_shapes
:         *
T0
╟
,superpoint/pred_tower0/map/while/box_nms/addAdd0superpoint/pred_tower0/map/while/box_nms/ToFloat.superpoint/pred_tower0/map/while/box_nms/Const*
T0*'
_output_shapes
:         
в
4superpoint/pred_tower0/map/while/box_nms/concat/axisConst*^superpoint/pred_tower0/map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ф
/superpoint/pred_tower0/map/while/box_nms/concatConcatV2,superpoint/pred_tower0/map/while/box_nms/sub,superpoint/pred_tower0/map/while/box_nms/add4superpoint/pred_tower0/map/while/box_nms/concat/axis*

Tidx0*
T0*
N*'
_output_shapes
:         
╗
0superpoint/pred_tower0/map/while/box_nms/ToInt32Cast0superpoint/pred_tower0/map/while/box_nms/ToFloat*
Truncate( *'
_output_shapes
:         *

DstT0*

SrcT0
ч
1superpoint/pred_tower0/map/while/box_nms/GatherNdGatherNd2superpoint/pred_tower0/map/while/TensorArrayReadV30superpoint/pred_tower0/map/while/box_nms/ToInt32*
Tindices0*
Tparams0*#
_output_shapes
:         
Э
.superpoint/pred_tower0/map/while/box_nms/ShapeShape/superpoint/pred_tower0/map/while/box_nms/concat*
T0*
out_type0*
_output_shapes
:
▓
<superpoint/pred_tower0/map/while/box_nms/strided_slice/stackConst*^superpoint/pred_tower0/map/while/Identity*
valueB: *
dtype0*
_output_shapes
:
┤
>superpoint/pred_tower0/map/while/box_nms/strided_slice/stack_1Const*^superpoint/pred_tower0/map/while/Identity*
dtype0*
_output_shapes
:*
valueB:
┤
>superpoint/pred_tower0/map/while/box_nms/strided_slice/stack_2Const*^superpoint/pred_tower0/map/while/Identity*
dtype0*
_output_shapes
:*
valueB:
╞
6superpoint/pred_tower0/map/while/box_nms/strided_sliceStridedSlice.superpoint/pred_tower0/map/while/box_nms/Shape<superpoint/pred_tower0/map/while/box_nms/strided_slice/stack>superpoint/pred_tower0/map/while/box_nms/strided_slice/stack_1>superpoint/pred_tower0/map/while/box_nms/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
╗
Jsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/iou_thresholdConst*^superpoint/pred_tower0/map/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *═╠╠=
╜
Lsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/score_thresholdConst*^superpoint/pred_tower0/map/while/Identity*
valueB
 *  А *
dtype0*
_output_shapes
: 
╦
Psuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/NonMaxSuppressionV3NonMaxSuppressionV3/superpoint/pred_tower0/map/while/box_nms/concat1superpoint/pred_tower0/map/while/box_nms/GatherNd6superpoint/pred_tower0/map/while/box_nms/strided_sliceJsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/iou_thresholdLsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/score_threshold*
T0*#
_output_shapes
:         
д
6superpoint/pred_tower0/map/while/box_nms/GatherV2/axisConst*^superpoint/pred_tower0/map/while/Identity*
dtype0*
_output_shapes
: *
value	B : 
р
1superpoint/pred_tower0/map/while/box_nms/GatherV2GatherV20superpoint/pred_tower0/map/while/box_nms/ToFloatPsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/NonMaxSuppressionV36superpoint/pred_tower0/map/while/box_nms/GatherV2/axis*

batch_dims *
Tindices0*
Tparams0*'
_output_shapes
:         *
Taxis0
ж
8superpoint/pred_tower0/map/while/box_nms/GatherV2_1/axisConst*^superpoint/pred_tower0/map/while/Identity*
value	B : *
dtype0*
_output_shapes
: 
с
3superpoint/pred_tower0/map/while/box_nms/GatherV2_1GatherV21superpoint/pred_tower0/map/while/box_nms/GatherNdPsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/NonMaxSuppressionV38superpoint/pred_tower0/map/while/box_nms/GatherV2_1/axis*

batch_dims *
Tindices0*
Tparams0*#
_output_shapes
:         *
Taxis0
╛
2superpoint/pred_tower0/map/while/box_nms/ToInt32_1Cast1superpoint/pred_tower0/map/while/box_nms/GatherV2*
Truncate( *'
_output_shapes
:         *

DstT0*

SrcT0
в
0superpoint/pred_tower0/map/while/box_nms/Shape_1Shape2superpoint/pred_tower0/map/while/TensorArrayReadV3*
T0*
out_type0*
_output_shapes
:
е
2superpoint/pred_tower0/map/while/box_nms/ScatterNd	ScatterNd2superpoint/pred_tower0/map/while/box_nms/ToInt32_13superpoint/pred_tower0/map/while/box_nms/GatherV2_10superpoint/pred_tower0/map/while/box_nms/Shape_1*
Tindices0*
T0*0
_output_shapes
:                  
Ь
Dsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Jsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3/Enter+superpoint/pred_tower0/map/while/Identity_12superpoint/pred_tower0/map/while/box_nms/ScatterNd+superpoint/pred_tower0/map/while/Identity_2*
T0*E
_class;
97loc:@superpoint/pred_tower0/map/while/box_nms/ScatterNd*
_output_shapes
: 
╫
Jsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter(superpoint/pred_tower0/map/TensorArray_1*
T0*E
_class;
97loc:@superpoint/pred_tower0/map/while/box_nms/ScatterNd*
parallel_iterations
*
is_constant(*
_output_shapes
:*>

frame_name0.superpoint/pred_tower0/map/while/while_context
Ц
(superpoint/pred_tower0/map/while/add_1/yConst*^superpoint/pred_tower0/map/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
е
&superpoint/pred_tower0/map/while/add_1Add+superpoint/pred_tower0/map/while/Identity_1(superpoint/pred_tower0/map/while/add_1/y*
_output_shapes
: *
T0
Ж
.superpoint/pred_tower0/map/while/NextIterationNextIteration$superpoint/pred_tower0/map/while/add*
T0*
_output_shapes
: 
К
0superpoint/pred_tower0/map/while/NextIteration_1NextIteration&superpoint/pred_tower0/map/while/add_1*
T0*
_output_shapes
: 
и
0superpoint/pred_tower0/map/while/NextIteration_2NextIterationDsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
w
%superpoint/pred_tower0/map/while/ExitExit'superpoint/pred_tower0/map/while/Switch*
T0*
_output_shapes
: 
{
'superpoint/pred_tower0/map/while/Exit_1Exit)superpoint/pred_tower0/map/while/Switch_1*
T0*
_output_shapes
: 
{
'superpoint/pred_tower0/map/while/Exit_2Exit)superpoint/pred_tower0/map/while/Switch_2*
_output_shapes
: *
T0
·
=superpoint/pred_tower0/map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3(superpoint/pred_tower0/map/TensorArray_1'superpoint/pred_tower0/map/while/Exit_2*;
_class1
/-loc:@superpoint/pred_tower0/map/TensorArray_1*
_output_shapes
: 
╢
7superpoint/pred_tower0/map/TensorArrayStack/range/startConst*
value	B : *;
_class1
/-loc:@superpoint/pred_tower0/map/TensorArray_1*
dtype0*
_output_shapes
: 
╢
7superpoint/pred_tower0/map/TensorArrayStack/range/deltaConst*
value	B :*;
_class1
/-loc:@superpoint/pred_tower0/map/TensorArray_1*
dtype0*
_output_shapes
: 
┘
1superpoint/pred_tower0/map/TensorArrayStack/rangeRange7superpoint/pred_tower0/map/TensorArrayStack/range/start=superpoint/pred_tower0/map/TensorArrayStack/TensorArraySizeV37superpoint/pred_tower0/map/TensorArrayStack/range/delta*#
_output_shapes
:         *

Tidx0*;
_class1
/-loc:@superpoint/pred_tower0/map/TensorArray_1
Л
?superpoint/pred_tower0/map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3(superpoint/pred_tower0/map/TensorArray_11superpoint/pred_tower0/map/TensorArrayStack/range'superpoint/pred_tower0/map/while/Exit_2*-
element_shape:                  *;
_class1
/-loc:@superpoint/pred_tower0/map/TensorArray_1*
dtype0*4
_output_shapes"
 :                  
j
%superpoint/pred_tower0/GreaterEqual/yConst*
dtype0*
_output_shapes
: *
valueB
 *oГ:
┌
#superpoint/pred_tower0/GreaterEqualGreaterEqual?superpoint/pred_tower0/map/TensorArrayStack/TensorArrayGatherV3%superpoint/pred_tower0/GreaterEqual/y*
T0*4
_output_shapes"
 :                  
й
superpoint/pred_tower0/ToInt32Cast#superpoint/pred_tower0/GreaterEqual*

SrcT0
*
Truncate( *4
_output_shapes"
 :                  *

DstT0
л
superpoint/unstackUnpack7superpoint/pred_tower0/detector/conv2/bn/FusedBatchNorm*	
num*
T0*

axis *4
_output_shapes"
 :                  A
Д
superpoint/stackPacksuperpoint/unstack*
T0*

axis *
N*8
_output_shapes&
$:"                  A
Щ
superpoint/unstack_1Unpack'superpoint/pred_tower0/detector/Squeeze*	
num*
T0*

axis *0
_output_shapes
:                  
Д
superpoint/stack_1Packsuperpoint/unstack_1*
T0*

axis *
N*4
_output_shapes"
 :                  
░
superpoint/unstack_2Unpack9superpoint/pred_tower0/descriptor/conv2/bn/FusedBatchNorm*	
num*
T0*

axis *5
_output_shapes#
!:                  А
Й
superpoint/stack_2Packsuperpoint/unstack_2*
T0*

axis *
N*9
_output_shapes'
%:#                  А
е
superpoint/unstack_3Unpack.superpoint/pred_tower0/descriptor/l2_normalize*5
_output_shapes#
!:                  А*	
num*
T0*

axis 
Й
superpoint/stack_3Packsuperpoint/unstack_3*
T0*

axis *
N*9
_output_shapes'
%:#                  А
▒
superpoint/unstack_4Unpack?superpoint/pred_tower0/map/TensorArrayStack/TensorArrayGatherV3*	
num*
T0*

axis *0
_output_shapes
:                  
Д
superpoint/stack_4Packsuperpoint/unstack_4*
T0*

axis *
N*4
_output_shapes"
 :                  
Р
superpoint/unstack_5Unpacksuperpoint/pred_tower0/ToInt32*	
num*
T0*

axis *0
_output_shapes
:                  
Д
superpoint/stack_5Packsuperpoint/unstack_5*
N*4
_output_shapes"
 :                  *
T0*

axis 
r
superpoint/logitsIdentitysuperpoint/stack*
T0*8
_output_shapes&
$:"                  A
n
superpoint/probIdentitysuperpoint/stack_1*
T0*4
_output_shapes"
 :                  
~
superpoint/descriptors_rawIdentitysuperpoint/stack_2*
T0*9
_output_shapes'
%:#                  А
z
superpoint/descriptorsIdentitysuperpoint/stack_3*9
_output_shapes'
%:#                  А*
T0
r
superpoint/prob_nmsIdentitysuperpoint/stack_4*4
_output_shapes"
 :                  *
T0
n
superpoint/predIdentitysuperpoint/stack_5*4
_output_shapes"
 :                  *
T0
у
superpoint/initNoOp+^superpoint/descriptor/conv1/bn/beta/Assign,^superpoint/descriptor/conv1/bn/gamma/Assign2^superpoint/descriptor/conv1/bn/moving_mean/Assign6^superpoint/descriptor/conv1/bn/moving_variance/Assign-^superpoint/descriptor/conv1/conv/bias/Assign/^superpoint/descriptor/conv1/conv/kernel/Assign+^superpoint/descriptor/conv2/bn/beta/Assign,^superpoint/descriptor/conv2/bn/gamma/Assign2^superpoint/descriptor/conv2/bn/moving_mean/Assign6^superpoint/descriptor/conv2/bn/moving_variance/Assign-^superpoint/descriptor/conv2/conv/bias/Assign/^superpoint/descriptor/conv2/conv/kernel/Assign)^superpoint/detector/conv1/bn/beta/Assign*^superpoint/detector/conv1/bn/gamma/Assign0^superpoint/detector/conv1/bn/moving_mean/Assign4^superpoint/detector/conv1/bn/moving_variance/Assign+^superpoint/detector/conv1/conv/bias/Assign-^superpoint/detector/conv1/conv/kernel/Assign)^superpoint/detector/conv2/bn/beta/Assign*^superpoint/detector/conv2/bn/gamma/Assign0^superpoint/detector/conv2/bn/moving_mean/Assign4^superpoint/detector/conv2/bn/moving_variance/Assign+^superpoint/detector/conv2/conv/bias/Assign-^superpoint/detector/conv2/conv/kernel/Assign&^superpoint/vgg/conv1_1/bn/beta/Assign'^superpoint/vgg/conv1_1/bn/gamma/Assign-^superpoint/vgg/conv1_1/bn/moving_mean/Assign1^superpoint/vgg/conv1_1/bn/moving_variance/Assign(^superpoint/vgg/conv1_1/conv/bias/Assign*^superpoint/vgg/conv1_1/conv/kernel/Assign&^superpoint/vgg/conv1_2/bn/beta/Assign'^superpoint/vgg/conv1_2/bn/gamma/Assign-^superpoint/vgg/conv1_2/bn/moving_mean/Assign1^superpoint/vgg/conv1_2/bn/moving_variance/Assign(^superpoint/vgg/conv1_2/conv/bias/Assign*^superpoint/vgg/conv1_2/conv/kernel/Assign&^superpoint/vgg/conv2_1/bn/beta/Assign'^superpoint/vgg/conv2_1/bn/gamma/Assign-^superpoint/vgg/conv2_1/bn/moving_mean/Assign1^superpoint/vgg/conv2_1/bn/moving_variance/Assign(^superpoint/vgg/conv2_1/conv/bias/Assign*^superpoint/vgg/conv2_1/conv/kernel/Assign&^superpoint/vgg/conv2_2/bn/beta/Assign'^superpoint/vgg/conv2_2/bn/gamma/Assign-^superpoint/vgg/conv2_2/bn/moving_mean/Assign1^superpoint/vgg/conv2_2/bn/moving_variance/Assign(^superpoint/vgg/conv2_2/conv/bias/Assign*^superpoint/vgg/conv2_2/conv/kernel/Assign&^superpoint/vgg/conv3_1/bn/beta/Assign'^superpoint/vgg/conv3_1/bn/gamma/Assign-^superpoint/vgg/conv3_1/bn/moving_mean/Assign1^superpoint/vgg/conv3_1/bn/moving_variance/Assign(^superpoint/vgg/conv3_1/conv/bias/Assign*^superpoint/vgg/conv3_1/conv/kernel/Assign&^superpoint/vgg/conv3_2/bn/beta/Assign'^superpoint/vgg/conv3_2/bn/gamma/Assign-^superpoint/vgg/conv3_2/bn/moving_mean/Assign1^superpoint/vgg/conv3_2/bn/moving_variance/Assign(^superpoint/vgg/conv3_2/conv/bias/Assign*^superpoint/vgg/conv3_2/conv/kernel/Assign&^superpoint/vgg/conv4_1/bn/beta/Assign'^superpoint/vgg/conv4_1/bn/gamma/Assign-^superpoint/vgg/conv4_1/bn/moving_mean/Assign1^superpoint/vgg/conv4_1/bn/moving_variance/Assign(^superpoint/vgg/conv4_1/conv/bias/Assign*^superpoint/vgg/conv4_1/conv/kernel/Assign&^superpoint/vgg/conv4_2/bn/beta/Assign'^superpoint/vgg/conv4_2/bn/gamma/Assign-^superpoint/vgg/conv4_2/bn/moving_mean/Assign1^superpoint/vgg/conv4_2/bn/moving_variance/Assign(^superpoint/vgg/conv4_2/conv/bias/Assign*^superpoint/vgg/conv4_2/conv/kernel/Assign

superpoint/init_1NoOp
Y
save/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
ю
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:H*б
valueЧBФHB#superpoint/descriptor/conv1/bn/betaB$superpoint/descriptor/conv1/bn/gammaB*superpoint/descriptor/conv1/bn/moving_meanB.superpoint/descriptor/conv1/bn/moving_varianceB%superpoint/descriptor/conv1/conv/biasB'superpoint/descriptor/conv1/conv/kernelB#superpoint/descriptor/conv2/bn/betaB$superpoint/descriptor/conv2/bn/gammaB*superpoint/descriptor/conv2/bn/moving_meanB.superpoint/descriptor/conv2/bn/moving_varianceB%superpoint/descriptor/conv2/conv/biasB'superpoint/descriptor/conv2/conv/kernelB!superpoint/detector/conv1/bn/betaB"superpoint/detector/conv1/bn/gammaB(superpoint/detector/conv1/bn/moving_meanB,superpoint/detector/conv1/bn/moving_varianceB#superpoint/detector/conv1/conv/biasB%superpoint/detector/conv1/conv/kernelB!superpoint/detector/conv2/bn/betaB"superpoint/detector/conv2/bn/gammaB(superpoint/detector/conv2/bn/moving_meanB,superpoint/detector/conv2/bn/moving_varianceB#superpoint/detector/conv2/conv/biasB%superpoint/detector/conv2/conv/kernelBsuperpoint/vgg/conv1_1/bn/betaBsuperpoint/vgg/conv1_1/bn/gammaB%superpoint/vgg/conv1_1/bn/moving_meanB)superpoint/vgg/conv1_1/bn/moving_varianceB superpoint/vgg/conv1_1/conv/biasB"superpoint/vgg/conv1_1/conv/kernelBsuperpoint/vgg/conv1_2/bn/betaBsuperpoint/vgg/conv1_2/bn/gammaB%superpoint/vgg/conv1_2/bn/moving_meanB)superpoint/vgg/conv1_2/bn/moving_varianceB superpoint/vgg/conv1_2/conv/biasB"superpoint/vgg/conv1_2/conv/kernelBsuperpoint/vgg/conv2_1/bn/betaBsuperpoint/vgg/conv2_1/bn/gammaB%superpoint/vgg/conv2_1/bn/moving_meanB)superpoint/vgg/conv2_1/bn/moving_varianceB superpoint/vgg/conv2_1/conv/biasB"superpoint/vgg/conv2_1/conv/kernelBsuperpoint/vgg/conv2_2/bn/betaBsuperpoint/vgg/conv2_2/bn/gammaB%superpoint/vgg/conv2_2/bn/moving_meanB)superpoint/vgg/conv2_2/bn/moving_varianceB superpoint/vgg/conv2_2/conv/biasB"superpoint/vgg/conv2_2/conv/kernelBsuperpoint/vgg/conv3_1/bn/betaBsuperpoint/vgg/conv3_1/bn/gammaB%superpoint/vgg/conv3_1/bn/moving_meanB)superpoint/vgg/conv3_1/bn/moving_varianceB superpoint/vgg/conv3_1/conv/biasB"superpoint/vgg/conv3_1/conv/kernelBsuperpoint/vgg/conv3_2/bn/betaBsuperpoint/vgg/conv3_2/bn/gammaB%superpoint/vgg/conv3_2/bn/moving_meanB)superpoint/vgg/conv3_2/bn/moving_varianceB superpoint/vgg/conv3_2/conv/biasB"superpoint/vgg/conv3_2/conv/kernelBsuperpoint/vgg/conv4_1/bn/betaBsuperpoint/vgg/conv4_1/bn/gammaB%superpoint/vgg/conv4_1/bn/moving_meanB)superpoint/vgg/conv4_1/bn/moving_varianceB superpoint/vgg/conv4_1/conv/biasB"superpoint/vgg/conv4_1/conv/kernelBsuperpoint/vgg/conv4_2/bn/betaBsuperpoint/vgg/conv4_2/bn/gammaB%superpoint/vgg/conv4_2/bn/moving_meanB)superpoint/vgg/conv4_2/bn/moving_varianceB superpoint/vgg/conv4_2/conv/biasB"superpoint/vgg/conv4_2/conv/kernel
Ў
save/SaveV2/shape_and_slicesConst*е
valueЫBШHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:H
╜
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices#superpoint/descriptor/conv1/bn/beta$superpoint/descriptor/conv1/bn/gamma*superpoint/descriptor/conv1/bn/moving_mean.superpoint/descriptor/conv1/bn/moving_variance%superpoint/descriptor/conv1/conv/bias'superpoint/descriptor/conv1/conv/kernel#superpoint/descriptor/conv2/bn/beta$superpoint/descriptor/conv2/bn/gamma*superpoint/descriptor/conv2/bn/moving_mean.superpoint/descriptor/conv2/bn/moving_variance%superpoint/descriptor/conv2/conv/bias'superpoint/descriptor/conv2/conv/kernel!superpoint/detector/conv1/bn/beta"superpoint/detector/conv1/bn/gamma(superpoint/detector/conv1/bn/moving_mean,superpoint/detector/conv1/bn/moving_variance#superpoint/detector/conv1/conv/bias%superpoint/detector/conv1/conv/kernel!superpoint/detector/conv2/bn/beta"superpoint/detector/conv2/bn/gamma(superpoint/detector/conv2/bn/moving_mean,superpoint/detector/conv2/bn/moving_variance#superpoint/detector/conv2/conv/bias%superpoint/detector/conv2/conv/kernelsuperpoint/vgg/conv1_1/bn/betasuperpoint/vgg/conv1_1/bn/gamma%superpoint/vgg/conv1_1/bn/moving_mean)superpoint/vgg/conv1_1/bn/moving_variance superpoint/vgg/conv1_1/conv/bias"superpoint/vgg/conv1_1/conv/kernelsuperpoint/vgg/conv1_2/bn/betasuperpoint/vgg/conv1_2/bn/gamma%superpoint/vgg/conv1_2/bn/moving_mean)superpoint/vgg/conv1_2/bn/moving_variance superpoint/vgg/conv1_2/conv/bias"superpoint/vgg/conv1_2/conv/kernelsuperpoint/vgg/conv2_1/bn/betasuperpoint/vgg/conv2_1/bn/gamma%superpoint/vgg/conv2_1/bn/moving_mean)superpoint/vgg/conv2_1/bn/moving_variance superpoint/vgg/conv2_1/conv/bias"superpoint/vgg/conv2_1/conv/kernelsuperpoint/vgg/conv2_2/bn/betasuperpoint/vgg/conv2_2/bn/gamma%superpoint/vgg/conv2_2/bn/moving_mean)superpoint/vgg/conv2_2/bn/moving_variance superpoint/vgg/conv2_2/conv/bias"superpoint/vgg/conv2_2/conv/kernelsuperpoint/vgg/conv3_1/bn/betasuperpoint/vgg/conv3_1/bn/gamma%superpoint/vgg/conv3_1/bn/moving_mean)superpoint/vgg/conv3_1/bn/moving_variance superpoint/vgg/conv3_1/conv/bias"superpoint/vgg/conv3_1/conv/kernelsuperpoint/vgg/conv3_2/bn/betasuperpoint/vgg/conv3_2/bn/gamma%superpoint/vgg/conv3_2/bn/moving_mean)superpoint/vgg/conv3_2/bn/moving_variance superpoint/vgg/conv3_2/conv/bias"superpoint/vgg/conv3_2/conv/kernelsuperpoint/vgg/conv4_1/bn/betasuperpoint/vgg/conv4_1/bn/gamma%superpoint/vgg/conv4_1/bn/moving_mean)superpoint/vgg/conv4_1/bn/moving_variance superpoint/vgg/conv4_1/conv/bias"superpoint/vgg/conv4_1/conv/kernelsuperpoint/vgg/conv4_2/bn/betasuperpoint/vgg/conv4_2/bn/gamma%superpoint/vgg/conv4_2/bn/moving_mean)superpoint/vgg/conv4_2/bn/moving_variance superpoint/vgg/conv4_2/conv/bias"superpoint/vgg/conv4_2/conv/kernel*V
dtypesL
J2H
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ё
save/RestoreV2/tensor_namesConst*б
valueЧBФHB#superpoint/descriptor/conv1/bn/betaB$superpoint/descriptor/conv1/bn/gammaB*superpoint/descriptor/conv1/bn/moving_meanB.superpoint/descriptor/conv1/bn/moving_varianceB%superpoint/descriptor/conv1/conv/biasB'superpoint/descriptor/conv1/conv/kernelB#superpoint/descriptor/conv2/bn/betaB$superpoint/descriptor/conv2/bn/gammaB*superpoint/descriptor/conv2/bn/moving_meanB.superpoint/descriptor/conv2/bn/moving_varianceB%superpoint/descriptor/conv2/conv/biasB'superpoint/descriptor/conv2/conv/kernelB!superpoint/detector/conv1/bn/betaB"superpoint/detector/conv1/bn/gammaB(superpoint/detector/conv1/bn/moving_meanB,superpoint/detector/conv1/bn/moving_varianceB#superpoint/detector/conv1/conv/biasB%superpoint/detector/conv1/conv/kernelB!superpoint/detector/conv2/bn/betaB"superpoint/detector/conv2/bn/gammaB(superpoint/detector/conv2/bn/moving_meanB,superpoint/detector/conv2/bn/moving_varianceB#superpoint/detector/conv2/conv/biasB%superpoint/detector/conv2/conv/kernelBsuperpoint/vgg/conv1_1/bn/betaBsuperpoint/vgg/conv1_1/bn/gammaB%superpoint/vgg/conv1_1/bn/moving_meanB)superpoint/vgg/conv1_1/bn/moving_varianceB superpoint/vgg/conv1_1/conv/biasB"superpoint/vgg/conv1_1/conv/kernelBsuperpoint/vgg/conv1_2/bn/betaBsuperpoint/vgg/conv1_2/bn/gammaB%superpoint/vgg/conv1_2/bn/moving_meanB)superpoint/vgg/conv1_2/bn/moving_varianceB superpoint/vgg/conv1_2/conv/biasB"superpoint/vgg/conv1_2/conv/kernelBsuperpoint/vgg/conv2_1/bn/betaBsuperpoint/vgg/conv2_1/bn/gammaB%superpoint/vgg/conv2_1/bn/moving_meanB)superpoint/vgg/conv2_1/bn/moving_varianceB superpoint/vgg/conv2_1/conv/biasB"superpoint/vgg/conv2_1/conv/kernelBsuperpoint/vgg/conv2_2/bn/betaBsuperpoint/vgg/conv2_2/bn/gammaB%superpoint/vgg/conv2_2/bn/moving_meanB)superpoint/vgg/conv2_2/bn/moving_varianceB superpoint/vgg/conv2_2/conv/biasB"superpoint/vgg/conv2_2/conv/kernelBsuperpoint/vgg/conv3_1/bn/betaBsuperpoint/vgg/conv3_1/bn/gammaB%superpoint/vgg/conv3_1/bn/moving_meanB)superpoint/vgg/conv3_1/bn/moving_varianceB superpoint/vgg/conv3_1/conv/biasB"superpoint/vgg/conv3_1/conv/kernelBsuperpoint/vgg/conv3_2/bn/betaBsuperpoint/vgg/conv3_2/bn/gammaB%superpoint/vgg/conv3_2/bn/moving_meanB)superpoint/vgg/conv3_2/bn/moving_varianceB superpoint/vgg/conv3_2/conv/biasB"superpoint/vgg/conv3_2/conv/kernelBsuperpoint/vgg/conv4_1/bn/betaBsuperpoint/vgg/conv4_1/bn/gammaB%superpoint/vgg/conv4_1/bn/moving_meanB)superpoint/vgg/conv4_1/bn/moving_varianceB superpoint/vgg/conv4_1/conv/biasB"superpoint/vgg/conv4_1/conv/kernelBsuperpoint/vgg/conv4_2/bn/betaBsuperpoint/vgg/conv4_2/bn/gammaB%superpoint/vgg/conv4_2/bn/moving_meanB)superpoint/vgg/conv4_2/bn/moving_varianceB superpoint/vgg/conv4_2/conv/biasB"superpoint/vgg/conv4_2/conv/kernel*
dtype0*
_output_shapes
:H
∙
save/RestoreV2/shape_and_slicesConst*е
valueЫBШHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:H
Ў
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*╢
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H
╤
save/AssignAssign#superpoint/descriptor/conv1/bn/betasave/RestoreV2*
T0*6
_class,
*(loc:@superpoint/descriptor/conv1/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╫
save/Assign_1Assign$superpoint/descriptor/conv1/bn/gammasave/RestoreV2:1*
T0*7
_class-
+)loc:@superpoint/descriptor/conv1/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
у
save/Assign_2Assign*superpoint/descriptor/conv1/bn/moving_meansave/RestoreV2:2*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*=
_class3
1/loc:@superpoint/descriptor/conv1/bn/moving_mean
ы
save/Assign_3Assign.superpoint/descriptor/conv1/bn/moving_variancesave/RestoreV2:3*
use_locking(*
T0*A
_class7
53loc:@superpoint/descriptor/conv1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
┘
save/Assign_4Assign%superpoint/descriptor/conv1/conv/biassave/RestoreV2:4*
T0*8
_class.
,*loc:@superpoint/descriptor/conv1/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
ъ
save/Assign_5Assign'superpoint/descriptor/conv1/conv/kernelsave/RestoreV2:5*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel
╒
save/Assign_6Assign#superpoint/descriptor/conv2/bn/betasave/RestoreV2:6*
T0*6
_class,
*(loc:@superpoint/descriptor/conv2/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╫
save/Assign_7Assign$superpoint/descriptor/conv2/bn/gammasave/RestoreV2:7*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*7
_class-
+)loc:@superpoint/descriptor/conv2/bn/gamma
у
save/Assign_8Assign*superpoint/descriptor/conv2/bn/moving_meansave/RestoreV2:8*
use_locking(*
T0*=
_class3
1/loc:@superpoint/descriptor/conv2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
ы
save/Assign_9Assign.superpoint/descriptor/conv2/bn/moving_variancesave/RestoreV2:9*
T0*A
_class7
53loc:@superpoint/descriptor/conv2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
█
save/Assign_10Assign%superpoint/descriptor/conv2/conv/biassave/RestoreV2:10*
use_locking(*
T0*8
_class.
,*loc:@superpoint/descriptor/conv2/conv/bias*
validate_shape(*
_output_shapes	
:А
ь
save/Assign_11Assign'superpoint/descriptor/conv2/conv/kernelsave/RestoreV2:11*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
╙
save/Assign_12Assign!superpoint/detector/conv1/bn/betasave/RestoreV2:12*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*4
_class*
(&loc:@superpoint/detector/conv1/bn/beta
╒
save/Assign_13Assign"superpoint/detector/conv1/bn/gammasave/RestoreV2:13*
use_locking(*
T0*5
_class+
)'loc:@superpoint/detector/conv1/bn/gamma*
validate_shape(*
_output_shapes	
:А
с
save/Assign_14Assign(superpoint/detector/conv1/bn/moving_meansave/RestoreV2:14*
use_locking(*
T0*;
_class1
/-loc:@superpoint/detector/conv1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
щ
save/Assign_15Assign,superpoint/detector/conv1/bn/moving_variancesave/RestoreV2:15*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*?
_class5
31loc:@superpoint/detector/conv1/bn/moving_variance
╫
save/Assign_16Assign#superpoint/detector/conv1/conv/biassave/RestoreV2:16*
T0*6
_class,
*(loc:@superpoint/detector/conv1/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
ш
save/Assign_17Assign%superpoint/detector/conv1/conv/kernelsave/RestoreV2:17*
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
╥
save/Assign_18Assign!superpoint/detector/conv2/bn/betasave/RestoreV2:18*
use_locking(*
T0*4
_class*
(&loc:@superpoint/detector/conv2/bn/beta*
validate_shape(*
_output_shapes
:A
╘
save/Assign_19Assign"superpoint/detector/conv2/bn/gammasave/RestoreV2:19*
use_locking(*
T0*5
_class+
)'loc:@superpoint/detector/conv2/bn/gamma*
validate_shape(*
_output_shapes
:A
р
save/Assign_20Assign(superpoint/detector/conv2/bn/moving_meansave/RestoreV2:20*
use_locking(*
T0*;
_class1
/-loc:@superpoint/detector/conv2/bn/moving_mean*
validate_shape(*
_output_shapes
:A
ш
save/Assign_21Assign,superpoint/detector/conv2/bn/moving_variancesave/RestoreV2:21*
use_locking(*
T0*?
_class5
31loc:@superpoint/detector/conv2/bn/moving_variance*
validate_shape(*
_output_shapes
:A
╓
save/Assign_22Assign#superpoint/detector/conv2/conv/biassave/RestoreV2:22*
T0*6
_class,
*(loc:@superpoint/detector/conv2/conv/bias*
validate_shape(*
_output_shapes
:A*
use_locking(
ч
save/Assign_23Assign%superpoint/detector/conv2/conv/kernelsave/RestoreV2:23*
validate_shape(*'
_output_shapes
:АA*
use_locking(*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel
╠
save/Assign_24Assignsuperpoint/vgg/conv1_1/bn/betasave/RestoreV2:24*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_1/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
╬
save/Assign_25Assignsuperpoint/vgg/conv1_1/bn/gammasave/RestoreV2:25*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_1/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
┌
save/Assign_26Assign%superpoint/vgg/conv1_1/bn/moving_meansave/RestoreV2:26*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@
т
save/Assign_27Assign)superpoint/vgg/conv1_1/bn/moving_variancesave/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_1/bn/moving_variance
╨
save/Assign_28Assign superpoint/vgg/conv1_1/conv/biassave/RestoreV2:28*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_1/conv/bias*
validate_shape(*
_output_shapes
:@
р
save/Assign_29Assign"superpoint/vgg/conv1_1/conv/kernelsave/RestoreV2:29*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
validate_shape(*&
_output_shapes
:@*
use_locking(
╠
save/Assign_30Assignsuperpoint/vgg/conv1_2/bn/betasave/RestoreV2:30*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
╬
save/Assign_31Assignsuperpoint/vgg/conv1_2/bn/gammasave/RestoreV2:31*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_2/bn/gamma*
validate_shape(*
_output_shapes
:@
┌
save/Assign_32Assign%superpoint/vgg/conv1_2/bn/moving_meansave/RestoreV2:32*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@
т
save/Assign_33Assign)superpoint/vgg/conv1_2/bn/moving_variancesave/RestoreV2:33*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@
╨
save/Assign_34Assign superpoint/vgg/conv1_2/conv/biassave/RestoreV2:34*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_2/conv/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
р
save/Assign_35Assign"superpoint/vgg/conv1_2/conv/kernelsave/RestoreV2:35*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel
╠
save/Assign_36Assignsuperpoint/vgg/conv2_1/bn/betasave/RestoreV2:36*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_1/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
╬
save/Assign_37Assignsuperpoint/vgg/conv2_1/bn/gammasave/RestoreV2:37*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_1/bn/gamma*
validate_shape(*
_output_shapes
:@
┌
save/Assign_38Assign%superpoint/vgg/conv2_1/bn/moving_meansave/RestoreV2:38*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
т
save/Assign_39Assign)superpoint/vgg/conv2_1/bn/moving_variancesave/RestoreV2:39*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_1/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
╨
save/Assign_40Assign superpoint/vgg/conv2_1/conv/biassave/RestoreV2:40*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_1/conv/bias
р
save/Assign_41Assign"superpoint/vgg/conv2_1/conv/kernelsave/RestoreV2:41*
validate_shape(*&
_output_shapes
:@@*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel
╠
save/Assign_42Assignsuperpoint/vgg/conv2_2/bn/betasave/RestoreV2:42*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_2/bn/beta*
validate_shape(*
_output_shapes
:@
╬
save/Assign_43Assignsuperpoint/vgg/conv2_2/bn/gammasave/RestoreV2:43*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_2/bn/gamma*
validate_shape(*
_output_shapes
:@
┌
save/Assign_44Assign%superpoint/vgg/conv2_2/bn/moving_meansave/RestoreV2:44*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@
т
save/Assign_45Assign)superpoint/vgg/conv2_2/bn/moving_variancesave/RestoreV2:45*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_2/bn/moving_variance
╨
save/Assign_46Assign superpoint/vgg/conv2_2/conv/biassave/RestoreV2:46*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_2/conv/bias*
validate_shape(*
_output_shapes
:@
р
save/Assign_47Assign"superpoint/vgg/conv2_2/conv/kernelsave/RestoreV2:47*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
validate_shape(*&
_output_shapes
:@@
═
save/Assign_48Assignsuperpoint/vgg/conv3_1/bn/betasave/RestoreV2:48*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_1/bn/beta*
validate_shape(*
_output_shapes	
:А
╧
save/Assign_49Assignsuperpoint/vgg/conv3_1/bn/gammasave/RestoreV2:49*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_1/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
█
save/Assign_50Assign%superpoint/vgg/conv3_1/bn/moving_meansave/RestoreV2:50*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
у
save/Assign_51Assign)superpoint/vgg/conv3_1/bn/moving_variancesave/RestoreV2:51*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_1/bn/moving_variance
╤
save/Assign_52Assign superpoint/vgg/conv3_1/conv/biassave/RestoreV2:52*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_1/conv/bias*
validate_shape(*
_output_shapes	
:А
с
save/Assign_53Assign"superpoint/vgg/conv3_1/conv/kernelsave/RestoreV2:53*
validate_shape(*'
_output_shapes
:@А*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel
═
save/Assign_54Assignsuperpoint/vgg/conv3_2/bn/betasave/RestoreV2:54*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_2/bn/beta*
validate_shape(*
_output_shapes	
:А
╧
save/Assign_55Assignsuperpoint/vgg/conv3_2/bn/gammasave/RestoreV2:55*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_2/bn/gamma
█
save/Assign_56Assign%superpoint/vgg/conv3_2/bn/moving_meansave/RestoreV2:56*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
у
save/Assign_57Assign)superpoint/vgg/conv3_2/bn/moving_variancesave/RestoreV2:57*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
╤
save/Assign_58Assign superpoint/vgg/conv3_2/conv/biassave/RestoreV2:58*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_2/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
т
save/Assign_59Assign"superpoint/vgg/conv3_2/conv/kernelsave/RestoreV2:59*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel
═
save/Assign_60Assignsuperpoint/vgg/conv4_1/bn/betasave/RestoreV2:60*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_1/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╧
save/Assign_61Assignsuperpoint/vgg/conv4_1/bn/gammasave/RestoreV2:61*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_1/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
█
save/Assign_62Assign%superpoint/vgg/conv4_1/bn/moving_meansave/RestoreV2:62*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
у
save/Assign_63Assign)superpoint/vgg/conv4_1/bn/moving_variancesave/RestoreV2:63*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╤
save/Assign_64Assign superpoint/vgg/conv4_1/conv/biassave/RestoreV2:64*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_1/conv/bias*
validate_shape(*
_output_shapes	
:А
т
save/Assign_65Assign"superpoint/vgg/conv4_1/conv/kernelsave/RestoreV2:65*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
validate_shape(*(
_output_shapes
:АА
═
save/Assign_66Assignsuperpoint/vgg/conv4_2/bn/betasave/RestoreV2:66*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_2/bn/beta*
validate_shape(*
_output_shapes	
:А
╧
save/Assign_67Assignsuperpoint/vgg/conv4_2/bn/gammasave/RestoreV2:67*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_2/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
█
save/Assign_68Assign%superpoint/vgg/conv4_2/bn/moving_meansave/RestoreV2:68*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
у
save/Assign_69Assign)superpoint/vgg/conv4_2/bn/moving_variancesave/RestoreV2:69*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
╤
save/Assign_70Assign superpoint/vgg/conv4_2/conv/biassave/RestoreV2:70*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_2/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
т
save/Assign_71Assign"superpoint/vgg/conv4_2/conv/kernelsave/RestoreV2:71*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel*
validate_shape(*(
_output_shapes
:АА
╘	
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_8^save/Assign_9
[
save_1/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
shape: *
dtype0*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_bf91d8a705e841198ad04a559e7c7399/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ё
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:H*б
valueЧBФHB#superpoint/descriptor/conv1/bn/betaB$superpoint/descriptor/conv1/bn/gammaB*superpoint/descriptor/conv1/bn/moving_meanB.superpoint/descriptor/conv1/bn/moving_varianceB%superpoint/descriptor/conv1/conv/biasB'superpoint/descriptor/conv1/conv/kernelB#superpoint/descriptor/conv2/bn/betaB$superpoint/descriptor/conv2/bn/gammaB*superpoint/descriptor/conv2/bn/moving_meanB.superpoint/descriptor/conv2/bn/moving_varianceB%superpoint/descriptor/conv2/conv/biasB'superpoint/descriptor/conv2/conv/kernelB!superpoint/detector/conv1/bn/betaB"superpoint/detector/conv1/bn/gammaB(superpoint/detector/conv1/bn/moving_meanB,superpoint/detector/conv1/bn/moving_varianceB#superpoint/detector/conv1/conv/biasB%superpoint/detector/conv1/conv/kernelB!superpoint/detector/conv2/bn/betaB"superpoint/detector/conv2/bn/gammaB(superpoint/detector/conv2/bn/moving_meanB,superpoint/detector/conv2/bn/moving_varianceB#superpoint/detector/conv2/conv/biasB%superpoint/detector/conv2/conv/kernelBsuperpoint/vgg/conv1_1/bn/betaBsuperpoint/vgg/conv1_1/bn/gammaB%superpoint/vgg/conv1_1/bn/moving_meanB)superpoint/vgg/conv1_1/bn/moving_varianceB superpoint/vgg/conv1_1/conv/biasB"superpoint/vgg/conv1_1/conv/kernelBsuperpoint/vgg/conv1_2/bn/betaBsuperpoint/vgg/conv1_2/bn/gammaB%superpoint/vgg/conv1_2/bn/moving_meanB)superpoint/vgg/conv1_2/bn/moving_varianceB superpoint/vgg/conv1_2/conv/biasB"superpoint/vgg/conv1_2/conv/kernelBsuperpoint/vgg/conv2_1/bn/betaBsuperpoint/vgg/conv2_1/bn/gammaB%superpoint/vgg/conv2_1/bn/moving_meanB)superpoint/vgg/conv2_1/bn/moving_varianceB superpoint/vgg/conv2_1/conv/biasB"superpoint/vgg/conv2_1/conv/kernelBsuperpoint/vgg/conv2_2/bn/betaBsuperpoint/vgg/conv2_2/bn/gammaB%superpoint/vgg/conv2_2/bn/moving_meanB)superpoint/vgg/conv2_2/bn/moving_varianceB superpoint/vgg/conv2_2/conv/biasB"superpoint/vgg/conv2_2/conv/kernelBsuperpoint/vgg/conv3_1/bn/betaBsuperpoint/vgg/conv3_1/bn/gammaB%superpoint/vgg/conv3_1/bn/moving_meanB)superpoint/vgg/conv3_1/bn/moving_varianceB superpoint/vgg/conv3_1/conv/biasB"superpoint/vgg/conv3_1/conv/kernelBsuperpoint/vgg/conv3_2/bn/betaBsuperpoint/vgg/conv3_2/bn/gammaB%superpoint/vgg/conv3_2/bn/moving_meanB)superpoint/vgg/conv3_2/bn/moving_varianceB superpoint/vgg/conv3_2/conv/biasB"superpoint/vgg/conv3_2/conv/kernelBsuperpoint/vgg/conv4_1/bn/betaBsuperpoint/vgg/conv4_1/bn/gammaB%superpoint/vgg/conv4_1/bn/moving_meanB)superpoint/vgg/conv4_1/bn/moving_varianceB superpoint/vgg/conv4_1/conv/biasB"superpoint/vgg/conv4_1/conv/kernelBsuperpoint/vgg/conv4_2/bn/betaBsuperpoint/vgg/conv4_2/bn/gammaB%superpoint/vgg/conv4_2/bn/moving_meanB)superpoint/vgg/conv4_2/bn/moving_varianceB superpoint/vgg/conv4_2/conv/biasB"superpoint/vgg/conv4_2/conv/kernel
°
save_1/SaveV2/shape_and_slicesConst*е
valueЫBШHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:H
╧
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices#superpoint/descriptor/conv1/bn/beta$superpoint/descriptor/conv1/bn/gamma*superpoint/descriptor/conv1/bn/moving_mean.superpoint/descriptor/conv1/bn/moving_variance%superpoint/descriptor/conv1/conv/bias'superpoint/descriptor/conv1/conv/kernel#superpoint/descriptor/conv2/bn/beta$superpoint/descriptor/conv2/bn/gamma*superpoint/descriptor/conv2/bn/moving_mean.superpoint/descriptor/conv2/bn/moving_variance%superpoint/descriptor/conv2/conv/bias'superpoint/descriptor/conv2/conv/kernel!superpoint/detector/conv1/bn/beta"superpoint/detector/conv1/bn/gamma(superpoint/detector/conv1/bn/moving_mean,superpoint/detector/conv1/bn/moving_variance#superpoint/detector/conv1/conv/bias%superpoint/detector/conv1/conv/kernel!superpoint/detector/conv2/bn/beta"superpoint/detector/conv2/bn/gamma(superpoint/detector/conv2/bn/moving_mean,superpoint/detector/conv2/bn/moving_variance#superpoint/detector/conv2/conv/bias%superpoint/detector/conv2/conv/kernelsuperpoint/vgg/conv1_1/bn/betasuperpoint/vgg/conv1_1/bn/gamma%superpoint/vgg/conv1_1/bn/moving_mean)superpoint/vgg/conv1_1/bn/moving_variance superpoint/vgg/conv1_1/conv/bias"superpoint/vgg/conv1_1/conv/kernelsuperpoint/vgg/conv1_2/bn/betasuperpoint/vgg/conv1_2/bn/gamma%superpoint/vgg/conv1_2/bn/moving_mean)superpoint/vgg/conv1_2/bn/moving_variance superpoint/vgg/conv1_2/conv/bias"superpoint/vgg/conv1_2/conv/kernelsuperpoint/vgg/conv2_1/bn/betasuperpoint/vgg/conv2_1/bn/gamma%superpoint/vgg/conv2_1/bn/moving_mean)superpoint/vgg/conv2_1/bn/moving_variance superpoint/vgg/conv2_1/conv/bias"superpoint/vgg/conv2_1/conv/kernelsuperpoint/vgg/conv2_2/bn/betasuperpoint/vgg/conv2_2/bn/gamma%superpoint/vgg/conv2_2/bn/moving_mean)superpoint/vgg/conv2_2/bn/moving_variance superpoint/vgg/conv2_2/conv/bias"superpoint/vgg/conv2_2/conv/kernelsuperpoint/vgg/conv3_1/bn/betasuperpoint/vgg/conv3_1/bn/gamma%superpoint/vgg/conv3_1/bn/moving_mean)superpoint/vgg/conv3_1/bn/moving_variance superpoint/vgg/conv3_1/conv/bias"superpoint/vgg/conv3_1/conv/kernelsuperpoint/vgg/conv3_2/bn/betasuperpoint/vgg/conv3_2/bn/gamma%superpoint/vgg/conv3_2/bn/moving_mean)superpoint/vgg/conv3_2/bn/moving_variance superpoint/vgg/conv3_2/conv/bias"superpoint/vgg/conv3_2/conv/kernelsuperpoint/vgg/conv4_1/bn/betasuperpoint/vgg/conv4_1/bn/gamma%superpoint/vgg/conv4_1/bn/moving_mean)superpoint/vgg/conv4_1/bn/moving_variance superpoint/vgg/conv4_1/conv/bias"superpoint/vgg/conv4_1/conv/kernelsuperpoint/vgg/conv4_2/bn/betasuperpoint/vgg/conv4_2/bn/gamma%superpoint/vgg/conv4_2/bn/moving_mean)superpoint/vgg/conv4_2/bn/moving_variance superpoint/vgg/conv4_2/conv/bias"superpoint/vgg/conv4_2/conv/kernel*V
dtypesL
J2H
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
г
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
_output_shapes
: *
T0
є
save_1/RestoreV2/tensor_namesConst*б
valueЧBФHB#superpoint/descriptor/conv1/bn/betaB$superpoint/descriptor/conv1/bn/gammaB*superpoint/descriptor/conv1/bn/moving_meanB.superpoint/descriptor/conv1/bn/moving_varianceB%superpoint/descriptor/conv1/conv/biasB'superpoint/descriptor/conv1/conv/kernelB#superpoint/descriptor/conv2/bn/betaB$superpoint/descriptor/conv2/bn/gammaB*superpoint/descriptor/conv2/bn/moving_meanB.superpoint/descriptor/conv2/bn/moving_varianceB%superpoint/descriptor/conv2/conv/biasB'superpoint/descriptor/conv2/conv/kernelB!superpoint/detector/conv1/bn/betaB"superpoint/detector/conv1/bn/gammaB(superpoint/detector/conv1/bn/moving_meanB,superpoint/detector/conv1/bn/moving_varianceB#superpoint/detector/conv1/conv/biasB%superpoint/detector/conv1/conv/kernelB!superpoint/detector/conv2/bn/betaB"superpoint/detector/conv2/bn/gammaB(superpoint/detector/conv2/bn/moving_meanB,superpoint/detector/conv2/bn/moving_varianceB#superpoint/detector/conv2/conv/biasB%superpoint/detector/conv2/conv/kernelBsuperpoint/vgg/conv1_1/bn/betaBsuperpoint/vgg/conv1_1/bn/gammaB%superpoint/vgg/conv1_1/bn/moving_meanB)superpoint/vgg/conv1_1/bn/moving_varianceB superpoint/vgg/conv1_1/conv/biasB"superpoint/vgg/conv1_1/conv/kernelBsuperpoint/vgg/conv1_2/bn/betaBsuperpoint/vgg/conv1_2/bn/gammaB%superpoint/vgg/conv1_2/bn/moving_meanB)superpoint/vgg/conv1_2/bn/moving_varianceB superpoint/vgg/conv1_2/conv/biasB"superpoint/vgg/conv1_2/conv/kernelBsuperpoint/vgg/conv2_1/bn/betaBsuperpoint/vgg/conv2_1/bn/gammaB%superpoint/vgg/conv2_1/bn/moving_meanB)superpoint/vgg/conv2_1/bn/moving_varianceB superpoint/vgg/conv2_1/conv/biasB"superpoint/vgg/conv2_1/conv/kernelBsuperpoint/vgg/conv2_2/bn/betaBsuperpoint/vgg/conv2_2/bn/gammaB%superpoint/vgg/conv2_2/bn/moving_meanB)superpoint/vgg/conv2_2/bn/moving_varianceB superpoint/vgg/conv2_2/conv/biasB"superpoint/vgg/conv2_2/conv/kernelBsuperpoint/vgg/conv3_1/bn/betaBsuperpoint/vgg/conv3_1/bn/gammaB%superpoint/vgg/conv3_1/bn/moving_meanB)superpoint/vgg/conv3_1/bn/moving_varianceB superpoint/vgg/conv3_1/conv/biasB"superpoint/vgg/conv3_1/conv/kernelBsuperpoint/vgg/conv3_2/bn/betaBsuperpoint/vgg/conv3_2/bn/gammaB%superpoint/vgg/conv3_2/bn/moving_meanB)superpoint/vgg/conv3_2/bn/moving_varianceB superpoint/vgg/conv3_2/conv/biasB"superpoint/vgg/conv3_2/conv/kernelBsuperpoint/vgg/conv4_1/bn/betaBsuperpoint/vgg/conv4_1/bn/gammaB%superpoint/vgg/conv4_1/bn/moving_meanB)superpoint/vgg/conv4_1/bn/moving_varianceB superpoint/vgg/conv4_1/conv/biasB"superpoint/vgg/conv4_1/conv/kernelBsuperpoint/vgg/conv4_2/bn/betaBsuperpoint/vgg/conv4_2/bn/gammaB%superpoint/vgg/conv4_2/bn/moving_meanB)superpoint/vgg/conv4_2/bn/moving_varianceB superpoint/vgg/conv4_2/conv/biasB"superpoint/vgg/conv4_2/conv/kernel*
dtype0*
_output_shapes
:H
√
!save_1/RestoreV2/shape_and_slicesConst*е
valueЫBШHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:H
■
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*╢
_output_shapesг
а::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H
╒
save_1/AssignAssign#superpoint/descriptor/conv1/bn/betasave_1/RestoreV2*
use_locking(*
T0*6
_class,
*(loc:@superpoint/descriptor/conv1/bn/beta*
validate_shape(*
_output_shapes	
:А
█
save_1/Assign_1Assign$superpoint/descriptor/conv1/bn/gammasave_1/RestoreV2:1*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*7
_class-
+)loc:@superpoint/descriptor/conv1/bn/gamma
ч
save_1/Assign_2Assign*superpoint/descriptor/conv1/bn/moving_meansave_1/RestoreV2:2*
T0*=
_class3
1/loc:@superpoint/descriptor/conv1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
я
save_1/Assign_3Assign.superpoint/descriptor/conv1/bn/moving_variancesave_1/RestoreV2:3*
use_locking(*
T0*A
_class7
53loc:@superpoint/descriptor/conv1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
▌
save_1/Assign_4Assign%superpoint/descriptor/conv1/conv/biassave_1/RestoreV2:4*
T0*8
_class.
,*loc:@superpoint/descriptor/conv1/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
ю
save_1/Assign_5Assign'superpoint/descriptor/conv1/conv/kernelsave_1/RestoreV2:5*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*:
_class0
.,loc:@superpoint/descriptor/conv1/conv/kernel
┘
save_1/Assign_6Assign#superpoint/descriptor/conv2/bn/betasave_1/RestoreV2:6*
T0*6
_class,
*(loc:@superpoint/descriptor/conv2/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
█
save_1/Assign_7Assign$superpoint/descriptor/conv2/bn/gammasave_1/RestoreV2:7*
use_locking(*
T0*7
_class-
+)loc:@superpoint/descriptor/conv2/bn/gamma*
validate_shape(*
_output_shapes	
:А
ч
save_1/Assign_8Assign*superpoint/descriptor/conv2/bn/moving_meansave_1/RestoreV2:8*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*=
_class3
1/loc:@superpoint/descriptor/conv2/bn/moving_mean
я
save_1/Assign_9Assign.superpoint/descriptor/conv2/bn/moving_variancesave_1/RestoreV2:9*
use_locking(*
T0*A
_class7
53loc:@superpoint/descriptor/conv2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
▀
save_1/Assign_10Assign%superpoint/descriptor/conv2/conv/biassave_1/RestoreV2:10*
T0*8
_class.
,*loc:@superpoint/descriptor/conv2/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Ё
save_1/Assign_11Assign'superpoint/descriptor/conv2/conv/kernelsave_1/RestoreV2:11*
use_locking(*
T0*:
_class0
.,loc:@superpoint/descriptor/conv2/conv/kernel*
validate_shape(*(
_output_shapes
:АА
╫
save_1/Assign_12Assign!superpoint/detector/conv1/bn/betasave_1/RestoreV2:12*
use_locking(*
T0*4
_class*
(&loc:@superpoint/detector/conv1/bn/beta*
validate_shape(*
_output_shapes	
:А
┘
save_1/Assign_13Assign"superpoint/detector/conv1/bn/gammasave_1/RestoreV2:13*
use_locking(*
T0*5
_class+
)'loc:@superpoint/detector/conv1/bn/gamma*
validate_shape(*
_output_shapes	
:А
х
save_1/Assign_14Assign(superpoint/detector/conv1/bn/moving_meansave_1/RestoreV2:14*
use_locking(*
T0*;
_class1
/-loc:@superpoint/detector/conv1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
э
save_1/Assign_15Assign,superpoint/detector/conv1/bn/moving_variancesave_1/RestoreV2:15*
T0*?
_class5
31loc:@superpoint/detector/conv1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
█
save_1/Assign_16Assign#superpoint/detector/conv1/conv/biassave_1/RestoreV2:16*
use_locking(*
T0*6
_class,
*(loc:@superpoint/detector/conv1/conv/bias*
validate_shape(*
_output_shapes	
:А
ь
save_1/Assign_17Assign%superpoint/detector/conv1/conv/kernelsave_1/RestoreV2:17*
T0*8
_class.
,*loc:@superpoint/detector/conv1/conv/kernel*
validate_shape(*(
_output_shapes
:АА*
use_locking(
╓
save_1/Assign_18Assign!superpoint/detector/conv2/bn/betasave_1/RestoreV2:18*
T0*4
_class*
(&loc:@superpoint/detector/conv2/bn/beta*
validate_shape(*
_output_shapes
:A*
use_locking(
╪
save_1/Assign_19Assign"superpoint/detector/conv2/bn/gammasave_1/RestoreV2:19*
use_locking(*
T0*5
_class+
)'loc:@superpoint/detector/conv2/bn/gamma*
validate_shape(*
_output_shapes
:A
ф
save_1/Assign_20Assign(superpoint/detector/conv2/bn/moving_meansave_1/RestoreV2:20*
use_locking(*
T0*;
_class1
/-loc:@superpoint/detector/conv2/bn/moving_mean*
validate_shape(*
_output_shapes
:A
ь
save_1/Assign_21Assign,superpoint/detector/conv2/bn/moving_variancesave_1/RestoreV2:21*
validate_shape(*
_output_shapes
:A*
use_locking(*
T0*?
_class5
31loc:@superpoint/detector/conv2/bn/moving_variance
┌
save_1/Assign_22Assign#superpoint/detector/conv2/conv/biassave_1/RestoreV2:22*
validate_shape(*
_output_shapes
:A*
use_locking(*
T0*6
_class,
*(loc:@superpoint/detector/conv2/conv/bias
ы
save_1/Assign_23Assign%superpoint/detector/conv2/conv/kernelsave_1/RestoreV2:23*
use_locking(*
T0*8
_class.
,*loc:@superpoint/detector/conv2/conv/kernel*
validate_shape(*'
_output_shapes
:АA
╨
save_1/Assign_24Assignsuperpoint/vgg/conv1_1/bn/betasave_1/RestoreV2:24*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_1/bn/beta*
validate_shape(*
_output_shapes
:@
╥
save_1/Assign_25Assignsuperpoint/vgg/conv1_1/bn/gammasave_1/RestoreV2:25*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_1/bn/gamma
▐
save_1/Assign_26Assign%superpoint/vgg/conv1_1/bn/moving_meansave_1/RestoreV2:26*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_1/bn/moving_mean*
validate_shape(*
_output_shapes
:@
ц
save_1/Assign_27Assign)superpoint/vgg/conv1_1/bn/moving_variancesave_1/RestoreV2:27*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_1/bn/moving_variance
╘
save_1/Assign_28Assign superpoint/vgg/conv1_1/conv/biassave_1/RestoreV2:28*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_1/conv/bias
ф
save_1/Assign_29Assign"superpoint/vgg/conv1_1/conv/kernelsave_1/RestoreV2:29*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_1/conv/kernel*
validate_shape(*&
_output_shapes
:@
╨
save_1/Assign_30Assignsuperpoint/vgg/conv1_2/bn/betasave_1/RestoreV2:30*
T0*1
_class'
%#loc:@superpoint/vgg/conv1_2/bn/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
╥
save_1/Assign_31Assignsuperpoint/vgg/conv1_2/bn/gammasave_1/RestoreV2:31*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv1_2/bn/gamma*
validate_shape(*
_output_shapes
:@
▐
save_1/Assign_32Assign%superpoint/vgg/conv1_2/bn/moving_meansave_1/RestoreV2:32*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv1_2/bn/moving_mean*
validate_shape(*
_output_shapes
:@
ц
save_1/Assign_33Assign)superpoint/vgg/conv1_2/bn/moving_variancesave_1/RestoreV2:33*
T0*<
_class2
0.loc:@superpoint/vgg/conv1_2/bn/moving_variance*
validate_shape(*
_output_shapes
:@*
use_locking(
╘
save_1/Assign_34Assign superpoint/vgg/conv1_2/conv/biassave_1/RestoreV2:34*
T0*3
_class)
'%loc:@superpoint/vgg/conv1_2/conv/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ф
save_1/Assign_35Assign"superpoint/vgg/conv1_2/conv/kernelsave_1/RestoreV2:35*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv1_2/conv/kernel*
validate_shape(*&
_output_shapes
:@@
╨
save_1/Assign_36Assignsuperpoint/vgg/conv2_1/bn/betasave_1/RestoreV2:36*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_1/bn/beta*
validate_shape(*
_output_shapes
:@
╥
save_1/Assign_37Assignsuperpoint/vgg/conv2_1/bn/gammasave_1/RestoreV2:37*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_1/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
▐
save_1/Assign_38Assign%superpoint/vgg/conv2_1/bn/moving_meansave_1/RestoreV2:38*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_1/bn/moving_mean
ц
save_1/Assign_39Assign)superpoint/vgg/conv2_1/bn/moving_variancesave_1/RestoreV2:39*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_1/bn/moving_variance
╘
save_1/Assign_40Assign superpoint/vgg/conv2_1/conv/biassave_1/RestoreV2:40*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_1/conv/bias
ф
save_1/Assign_41Assign"superpoint/vgg/conv2_1/conv/kernelsave_1/RestoreV2:41*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_1/conv/kernel*
validate_shape(*&
_output_shapes
:@@*
use_locking(
╨
save_1/Assign_42Assignsuperpoint/vgg/conv2_2/bn/betasave_1/RestoreV2:42*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv2_2/bn/beta*
validate_shape(*
_output_shapes
:@
╥
save_1/Assign_43Assignsuperpoint/vgg/conv2_2/bn/gammasave_1/RestoreV2:43*
T0*2
_class(
&$loc:@superpoint/vgg/conv2_2/bn/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
▐
save_1/Assign_44Assign%superpoint/vgg/conv2_2/bn/moving_meansave_1/RestoreV2:44*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv2_2/bn/moving_mean
ц
save_1/Assign_45Assign)superpoint/vgg/conv2_2/bn/moving_variancesave_1/RestoreV2:45*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv2_2/bn/moving_variance
╘
save_1/Assign_46Assign superpoint/vgg/conv2_2/conv/biassave_1/RestoreV2:46*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv2_2/conv/bias*
validate_shape(*
_output_shapes
:@
ф
save_1/Assign_47Assign"superpoint/vgg/conv2_2/conv/kernelsave_1/RestoreV2:47*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv2_2/conv/kernel*
validate_shape(*&
_output_shapes
:@@
╤
save_1/Assign_48Assignsuperpoint/vgg/conv3_1/bn/betasave_1/RestoreV2:48*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_1/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╙
save_1/Assign_49Assignsuperpoint/vgg/conv3_1/bn/gammasave_1/RestoreV2:49*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_1/bn/gamma*
validate_shape(*
_output_shapes	
:А
▀
save_1/Assign_50Assign%superpoint/vgg/conv3_1/bn/moving_meansave_1/RestoreV2:50*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А*
use_locking(
ч
save_1/Assign_51Assign)superpoint/vgg/conv3_1/bn/moving_variancesave_1/RestoreV2:51*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╒
save_1/Assign_52Assign superpoint/vgg/conv3_1/conv/biassave_1/RestoreV2:52*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_1/conv/bias
х
save_1/Assign_53Assign"superpoint/vgg/conv3_1/conv/kernelsave_1/RestoreV2:53*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_1/conv/kernel*
validate_shape(*'
_output_shapes
:@А
╤
save_1/Assign_54Assignsuperpoint/vgg/conv3_2/bn/betasave_1/RestoreV2:54*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv3_2/bn/beta
╙
save_1/Assign_55Assignsuperpoint/vgg/conv3_2/bn/gammasave_1/RestoreV2:55*
T0*2
_class(
&$loc:@superpoint/vgg/conv3_2/bn/gamma*
validate_shape(*
_output_shapes	
:А*
use_locking(
▀
save_1/Assign_56Assign%superpoint/vgg/conv3_2/bn/moving_meansave_1/RestoreV2:56*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv3_2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
ч
save_1/Assign_57Assign)superpoint/vgg/conv3_2/bn/moving_variancesave_1/RestoreV2:57*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv3_2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╒
save_1/Assign_58Assign superpoint/vgg/conv3_2/conv/biassave_1/RestoreV2:58*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv3_2/conv/bias
ц
save_1/Assign_59Assign"superpoint/vgg/conv3_2/conv/kernelsave_1/RestoreV2:59*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv3_2/conv/kernel*
validate_shape(*(
_output_shapes
:АА
╤
save_1/Assign_60Assignsuperpoint/vgg/conv4_1/bn/betasave_1/RestoreV2:60*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_1/bn/beta*
validate_shape(*
_output_shapes	
:А*
use_locking(
╙
save_1/Assign_61Assignsuperpoint/vgg/conv4_1/bn/gammasave_1/RestoreV2:61*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_1/bn/gamma
▀
save_1/Assign_62Assign%superpoint/vgg/conv4_1/bn/moving_meansave_1/RestoreV2:62*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_1/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
ч
save_1/Assign_63Assign)superpoint/vgg/conv4_1/bn/moving_variancesave_1/RestoreV2:63*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_1/bn/moving_variance*
validate_shape(*
_output_shapes	
:А*
use_locking(
╒
save_1/Assign_64Assign superpoint/vgg/conv4_1/conv/biassave_1/RestoreV2:64*
use_locking(*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_1/conv/bias*
validate_shape(*
_output_shapes	
:А
ц
save_1/Assign_65Assign"superpoint/vgg/conv4_1/conv/kernelsave_1/RestoreV2:65*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_1/conv/kernel*
validate_shape(*(
_output_shapes
:АА
╤
save_1/Assign_66Assignsuperpoint/vgg/conv4_2/bn/betasave_1/RestoreV2:66*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0*1
_class'
%#loc:@superpoint/vgg/conv4_2/bn/beta
╙
save_1/Assign_67Assignsuperpoint/vgg/conv4_2/bn/gammasave_1/RestoreV2:67*
use_locking(*
T0*2
_class(
&$loc:@superpoint/vgg/conv4_2/bn/gamma*
validate_shape(*
_output_shapes	
:А
▀
save_1/Assign_68Assign%superpoint/vgg/conv4_2/bn/moving_meansave_1/RestoreV2:68*
use_locking(*
T0*8
_class.
,*loc:@superpoint/vgg/conv4_2/bn/moving_mean*
validate_shape(*
_output_shapes	
:А
ч
save_1/Assign_69Assign)superpoint/vgg/conv4_2/bn/moving_variancesave_1/RestoreV2:69*
use_locking(*
T0*<
_class2
0.loc:@superpoint/vgg/conv4_2/bn/moving_variance*
validate_shape(*
_output_shapes	
:А
╒
save_1/Assign_70Assign superpoint/vgg/conv4_2/conv/biassave_1/RestoreV2:70*
T0*3
_class)
'%loc:@superpoint/vgg/conv4_2/conv/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
ц
save_1/Assign_71Assign"superpoint/vgg/conv4_2/conv/kernelsave_1/RestoreV2:71*
validate_shape(*(
_output_shapes
:АА*
use_locking(*
T0*5
_class+
)'loc:@superpoint/vgg/conv4_2/conv/kernel
ш

save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_62^save_1/Assign_63^save_1/Assign_64^save_1/Assign_65^save_1/Assign_66^save_1/Assign_67^save_1/Assign_68^save_1/Assign_69^save_1/Assign_7^save_1/Assign_70^save_1/Assign_71^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "&B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"√D
trainable_variablesуDрD
┐
$superpoint/vgg/conv1_1/conv/kernel:0)superpoint/vgg/conv1_1/conv/kernel/Assign)superpoint/vgg/conv1_1/conv/kernel/read:02?superpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv1_1/conv/bias:0'superpoint/vgg/conv1_1/conv/bias/Assign'superpoint/vgg/conv1_1/conv/bias/read:024superpoint/vgg/conv1_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv1_1/bn/gamma:0&superpoint/vgg/conv1_1/bn/gamma/Assign&superpoint/vgg/conv1_1/bn/gamma/read:022superpoint/vgg/conv1_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv1_1/bn/beta:0%superpoint/vgg/conv1_1/bn/beta/Assign%superpoint/vgg/conv1_1/bn/beta/read:022superpoint/vgg/conv1_1/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv1_2/conv/kernel:0)superpoint/vgg/conv1_2/conv/kernel/Assign)superpoint/vgg/conv1_2/conv/kernel/read:02?superpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv1_2/conv/bias:0'superpoint/vgg/conv1_2/conv/bias/Assign'superpoint/vgg/conv1_2/conv/bias/read:024superpoint/vgg/conv1_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv1_2/bn/gamma:0&superpoint/vgg/conv1_2/bn/gamma/Assign&superpoint/vgg/conv1_2/bn/gamma/read:022superpoint/vgg/conv1_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv1_2/bn/beta:0%superpoint/vgg/conv1_2/bn/beta/Assign%superpoint/vgg/conv1_2/bn/beta/read:022superpoint/vgg/conv1_2/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv2_1/conv/kernel:0)superpoint/vgg/conv2_1/conv/kernel/Assign)superpoint/vgg/conv2_1/conv/kernel/read:02?superpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv2_1/conv/bias:0'superpoint/vgg/conv2_1/conv/bias/Assign'superpoint/vgg/conv2_1/conv/bias/read:024superpoint/vgg/conv2_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv2_1/bn/gamma:0&superpoint/vgg/conv2_1/bn/gamma/Assign&superpoint/vgg/conv2_1/bn/gamma/read:022superpoint/vgg/conv2_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv2_1/bn/beta:0%superpoint/vgg/conv2_1/bn/beta/Assign%superpoint/vgg/conv2_1/bn/beta/read:022superpoint/vgg/conv2_1/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv2_2/conv/kernel:0)superpoint/vgg/conv2_2/conv/kernel/Assign)superpoint/vgg/conv2_2/conv/kernel/read:02?superpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv2_2/conv/bias:0'superpoint/vgg/conv2_2/conv/bias/Assign'superpoint/vgg/conv2_2/conv/bias/read:024superpoint/vgg/conv2_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv2_2/bn/gamma:0&superpoint/vgg/conv2_2/bn/gamma/Assign&superpoint/vgg/conv2_2/bn/gamma/read:022superpoint/vgg/conv2_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv2_2/bn/beta:0%superpoint/vgg/conv2_2/bn/beta/Assign%superpoint/vgg/conv2_2/bn/beta/read:022superpoint/vgg/conv2_2/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv3_1/conv/kernel:0)superpoint/vgg/conv3_1/conv/kernel/Assign)superpoint/vgg/conv3_1/conv/kernel/read:02?superpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv3_1/conv/bias:0'superpoint/vgg/conv3_1/conv/bias/Assign'superpoint/vgg/conv3_1/conv/bias/read:024superpoint/vgg/conv3_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv3_1/bn/gamma:0&superpoint/vgg/conv3_1/bn/gamma/Assign&superpoint/vgg/conv3_1/bn/gamma/read:022superpoint/vgg/conv3_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv3_1/bn/beta:0%superpoint/vgg/conv3_1/bn/beta/Assign%superpoint/vgg/conv3_1/bn/beta/read:022superpoint/vgg/conv3_1/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv3_2/conv/kernel:0)superpoint/vgg/conv3_2/conv/kernel/Assign)superpoint/vgg/conv3_2/conv/kernel/read:02?superpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv3_2/conv/bias:0'superpoint/vgg/conv3_2/conv/bias/Assign'superpoint/vgg/conv3_2/conv/bias/read:024superpoint/vgg/conv3_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv3_2/bn/gamma:0&superpoint/vgg/conv3_2/bn/gamma/Assign&superpoint/vgg/conv3_2/bn/gamma/read:022superpoint/vgg/conv3_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv3_2/bn/beta:0%superpoint/vgg/conv3_2/bn/beta/Assign%superpoint/vgg/conv3_2/bn/beta/read:022superpoint/vgg/conv3_2/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv4_1/conv/kernel:0)superpoint/vgg/conv4_1/conv/kernel/Assign)superpoint/vgg/conv4_1/conv/kernel/read:02?superpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv4_1/conv/bias:0'superpoint/vgg/conv4_1/conv/bias/Assign'superpoint/vgg/conv4_1/conv/bias/read:024superpoint/vgg/conv4_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv4_1/bn/gamma:0&superpoint/vgg/conv4_1/bn/gamma/Assign&superpoint/vgg/conv4_1/bn/gamma/read:022superpoint/vgg/conv4_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv4_1/bn/beta:0%superpoint/vgg/conv4_1/bn/beta/Assign%superpoint/vgg/conv4_1/bn/beta/read:022superpoint/vgg/conv4_1/bn/beta/Initializer/zeros:08
┐
$superpoint/vgg/conv4_2/conv/kernel:0)superpoint/vgg/conv4_2/conv/kernel/Assign)superpoint/vgg/conv4_2/conv/kernel/read:02?superpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv4_2/conv/bias:0'superpoint/vgg/conv4_2/conv/bias/Assign'superpoint/vgg/conv4_2/conv/bias/read:024superpoint/vgg/conv4_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv4_2/bn/gamma:0&superpoint/vgg/conv4_2/bn/gamma/Assign&superpoint/vgg/conv4_2/bn/gamma/read:022superpoint/vgg/conv4_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv4_2/bn/beta:0%superpoint/vgg/conv4_2/bn/beta/Assign%superpoint/vgg/conv4_2/bn/beta/read:022superpoint/vgg/conv4_2/bn/beta/Initializer/zeros:08
╦
'superpoint/detector/conv1/conv/kernel:0,superpoint/detector/conv1/conv/kernel/Assign,superpoint/detector/conv1/conv/kernel/read:02Bsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform:08
║
%superpoint/detector/conv1/conv/bias:0*superpoint/detector/conv1/conv/bias/Assign*superpoint/detector/conv1/conv/bias/read:027superpoint/detector/conv1/conv/bias/Initializer/zeros:08
╡
$superpoint/detector/conv1/bn/gamma:0)superpoint/detector/conv1/bn/gamma/Assign)superpoint/detector/conv1/bn/gamma/read:025superpoint/detector/conv1/bn/gamma/Initializer/ones:08
▓
#superpoint/detector/conv1/bn/beta:0(superpoint/detector/conv1/bn/beta/Assign(superpoint/detector/conv1/bn/beta/read:025superpoint/detector/conv1/bn/beta/Initializer/zeros:08
╦
'superpoint/detector/conv2/conv/kernel:0,superpoint/detector/conv2/conv/kernel/Assign,superpoint/detector/conv2/conv/kernel/read:02Bsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform:08
║
%superpoint/detector/conv2/conv/bias:0*superpoint/detector/conv2/conv/bias/Assign*superpoint/detector/conv2/conv/bias/read:027superpoint/detector/conv2/conv/bias/Initializer/zeros:08
╡
$superpoint/detector/conv2/bn/gamma:0)superpoint/detector/conv2/bn/gamma/Assign)superpoint/detector/conv2/bn/gamma/read:025superpoint/detector/conv2/bn/gamma/Initializer/ones:08
▓
#superpoint/detector/conv2/bn/beta:0(superpoint/detector/conv2/bn/beta/Assign(superpoint/detector/conv2/bn/beta/read:025superpoint/detector/conv2/bn/beta/Initializer/zeros:08
╙
)superpoint/descriptor/conv1/conv/kernel:0.superpoint/descriptor/conv1/conv/kernel/Assign.superpoint/descriptor/conv1/conv/kernel/read:02Dsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform:08
┬
'superpoint/descriptor/conv1/conv/bias:0,superpoint/descriptor/conv1/conv/bias/Assign,superpoint/descriptor/conv1/conv/bias/read:029superpoint/descriptor/conv1/conv/bias/Initializer/zeros:08
╜
&superpoint/descriptor/conv1/bn/gamma:0+superpoint/descriptor/conv1/bn/gamma/Assign+superpoint/descriptor/conv1/bn/gamma/read:027superpoint/descriptor/conv1/bn/gamma/Initializer/ones:08
║
%superpoint/descriptor/conv1/bn/beta:0*superpoint/descriptor/conv1/bn/beta/Assign*superpoint/descriptor/conv1/bn/beta/read:027superpoint/descriptor/conv1/bn/beta/Initializer/zeros:08
╙
)superpoint/descriptor/conv2/conv/kernel:0.superpoint/descriptor/conv2/conv/kernel/Assign.superpoint/descriptor/conv2/conv/kernel/read:02Dsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform:08
┬
'superpoint/descriptor/conv2/conv/bias:0,superpoint/descriptor/conv2/conv/bias/Assign,superpoint/descriptor/conv2/conv/bias/read:029superpoint/descriptor/conv2/conv/bias/Initializer/zeros:08
╜
&superpoint/descriptor/conv2/bn/gamma:0+superpoint/descriptor/conv2/bn/gamma/Assign+superpoint/descriptor/conv2/bn/gamma/read:027superpoint/descriptor/conv2/bn/gamma/Initializer/ones:08
║
%superpoint/descriptor/conv2/bn/beta:0*superpoint/descriptor/conv2/bn/beta/Assign*superpoint/descriptor/conv2/bn/beta/read:027superpoint/descriptor/conv2/bn/beta/Initializer/zeros:08"═l
	variables┐l╝l
┐
$superpoint/vgg/conv1_1/conv/kernel:0)superpoint/vgg/conv1_1/conv/kernel/Assign)superpoint/vgg/conv1_1/conv/kernel/read:02?superpoint/vgg/conv1_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv1_1/conv/bias:0'superpoint/vgg/conv1_1/conv/bias/Assign'superpoint/vgg/conv1_1/conv/bias/read:024superpoint/vgg/conv1_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv1_1/bn/gamma:0&superpoint/vgg/conv1_1/bn/gamma/Assign&superpoint/vgg/conv1_1/bn/gamma/read:022superpoint/vgg/conv1_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv1_1/bn/beta:0%superpoint/vgg/conv1_1/bn/beta/Assign%superpoint/vgg/conv1_1/bn/beta/read:022superpoint/vgg/conv1_1/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv1_1/bn/moving_mean:0,superpoint/vgg/conv1_1/bn/moving_mean/Assign,superpoint/vgg/conv1_1/bn/moving_mean/read:029superpoint/vgg/conv1_1/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv1_1/bn/moving_variance:00superpoint/vgg/conv1_1/bn/moving_variance/Assign0superpoint/vgg/conv1_1/bn/moving_variance/read:02<superpoint/vgg/conv1_1/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv1_2/conv/kernel:0)superpoint/vgg/conv1_2/conv/kernel/Assign)superpoint/vgg/conv1_2/conv/kernel/read:02?superpoint/vgg/conv1_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv1_2/conv/bias:0'superpoint/vgg/conv1_2/conv/bias/Assign'superpoint/vgg/conv1_2/conv/bias/read:024superpoint/vgg/conv1_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv1_2/bn/gamma:0&superpoint/vgg/conv1_2/bn/gamma/Assign&superpoint/vgg/conv1_2/bn/gamma/read:022superpoint/vgg/conv1_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv1_2/bn/beta:0%superpoint/vgg/conv1_2/bn/beta/Assign%superpoint/vgg/conv1_2/bn/beta/read:022superpoint/vgg/conv1_2/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv1_2/bn/moving_mean:0,superpoint/vgg/conv1_2/bn/moving_mean/Assign,superpoint/vgg/conv1_2/bn/moving_mean/read:029superpoint/vgg/conv1_2/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv1_2/bn/moving_variance:00superpoint/vgg/conv1_2/bn/moving_variance/Assign0superpoint/vgg/conv1_2/bn/moving_variance/read:02<superpoint/vgg/conv1_2/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv2_1/conv/kernel:0)superpoint/vgg/conv2_1/conv/kernel/Assign)superpoint/vgg/conv2_1/conv/kernel/read:02?superpoint/vgg/conv2_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv2_1/conv/bias:0'superpoint/vgg/conv2_1/conv/bias/Assign'superpoint/vgg/conv2_1/conv/bias/read:024superpoint/vgg/conv2_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv2_1/bn/gamma:0&superpoint/vgg/conv2_1/bn/gamma/Assign&superpoint/vgg/conv2_1/bn/gamma/read:022superpoint/vgg/conv2_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv2_1/bn/beta:0%superpoint/vgg/conv2_1/bn/beta/Assign%superpoint/vgg/conv2_1/bn/beta/read:022superpoint/vgg/conv2_1/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv2_1/bn/moving_mean:0,superpoint/vgg/conv2_1/bn/moving_mean/Assign,superpoint/vgg/conv2_1/bn/moving_mean/read:029superpoint/vgg/conv2_1/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv2_1/bn/moving_variance:00superpoint/vgg/conv2_1/bn/moving_variance/Assign0superpoint/vgg/conv2_1/bn/moving_variance/read:02<superpoint/vgg/conv2_1/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv2_2/conv/kernel:0)superpoint/vgg/conv2_2/conv/kernel/Assign)superpoint/vgg/conv2_2/conv/kernel/read:02?superpoint/vgg/conv2_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv2_2/conv/bias:0'superpoint/vgg/conv2_2/conv/bias/Assign'superpoint/vgg/conv2_2/conv/bias/read:024superpoint/vgg/conv2_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv2_2/bn/gamma:0&superpoint/vgg/conv2_2/bn/gamma/Assign&superpoint/vgg/conv2_2/bn/gamma/read:022superpoint/vgg/conv2_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv2_2/bn/beta:0%superpoint/vgg/conv2_2/bn/beta/Assign%superpoint/vgg/conv2_2/bn/beta/read:022superpoint/vgg/conv2_2/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv2_2/bn/moving_mean:0,superpoint/vgg/conv2_2/bn/moving_mean/Assign,superpoint/vgg/conv2_2/bn/moving_mean/read:029superpoint/vgg/conv2_2/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv2_2/bn/moving_variance:00superpoint/vgg/conv2_2/bn/moving_variance/Assign0superpoint/vgg/conv2_2/bn/moving_variance/read:02<superpoint/vgg/conv2_2/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv3_1/conv/kernel:0)superpoint/vgg/conv3_1/conv/kernel/Assign)superpoint/vgg/conv3_1/conv/kernel/read:02?superpoint/vgg/conv3_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv3_1/conv/bias:0'superpoint/vgg/conv3_1/conv/bias/Assign'superpoint/vgg/conv3_1/conv/bias/read:024superpoint/vgg/conv3_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv3_1/bn/gamma:0&superpoint/vgg/conv3_1/bn/gamma/Assign&superpoint/vgg/conv3_1/bn/gamma/read:022superpoint/vgg/conv3_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv3_1/bn/beta:0%superpoint/vgg/conv3_1/bn/beta/Assign%superpoint/vgg/conv3_1/bn/beta/read:022superpoint/vgg/conv3_1/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv3_1/bn/moving_mean:0,superpoint/vgg/conv3_1/bn/moving_mean/Assign,superpoint/vgg/conv3_1/bn/moving_mean/read:029superpoint/vgg/conv3_1/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv3_1/bn/moving_variance:00superpoint/vgg/conv3_1/bn/moving_variance/Assign0superpoint/vgg/conv3_1/bn/moving_variance/read:02<superpoint/vgg/conv3_1/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv3_2/conv/kernel:0)superpoint/vgg/conv3_2/conv/kernel/Assign)superpoint/vgg/conv3_2/conv/kernel/read:02?superpoint/vgg/conv3_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv3_2/conv/bias:0'superpoint/vgg/conv3_2/conv/bias/Assign'superpoint/vgg/conv3_2/conv/bias/read:024superpoint/vgg/conv3_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv3_2/bn/gamma:0&superpoint/vgg/conv3_2/bn/gamma/Assign&superpoint/vgg/conv3_2/bn/gamma/read:022superpoint/vgg/conv3_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv3_2/bn/beta:0%superpoint/vgg/conv3_2/bn/beta/Assign%superpoint/vgg/conv3_2/bn/beta/read:022superpoint/vgg/conv3_2/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv3_2/bn/moving_mean:0,superpoint/vgg/conv3_2/bn/moving_mean/Assign,superpoint/vgg/conv3_2/bn/moving_mean/read:029superpoint/vgg/conv3_2/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv3_2/bn/moving_variance:00superpoint/vgg/conv3_2/bn/moving_variance/Assign0superpoint/vgg/conv3_2/bn/moving_variance/read:02<superpoint/vgg/conv3_2/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv4_1/conv/kernel:0)superpoint/vgg/conv4_1/conv/kernel/Assign)superpoint/vgg/conv4_1/conv/kernel/read:02?superpoint/vgg/conv4_1/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv4_1/conv/bias:0'superpoint/vgg/conv4_1/conv/bias/Assign'superpoint/vgg/conv4_1/conv/bias/read:024superpoint/vgg/conv4_1/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv4_1/bn/gamma:0&superpoint/vgg/conv4_1/bn/gamma/Assign&superpoint/vgg/conv4_1/bn/gamma/read:022superpoint/vgg/conv4_1/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv4_1/bn/beta:0%superpoint/vgg/conv4_1/bn/beta/Assign%superpoint/vgg/conv4_1/bn/beta/read:022superpoint/vgg/conv4_1/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv4_1/bn/moving_mean:0,superpoint/vgg/conv4_1/bn/moving_mean/Assign,superpoint/vgg/conv4_1/bn/moving_mean/read:029superpoint/vgg/conv4_1/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv4_1/bn/moving_variance:00superpoint/vgg/conv4_1/bn/moving_variance/Assign0superpoint/vgg/conv4_1/bn/moving_variance/read:02<superpoint/vgg/conv4_1/bn/moving_variance/Initializer/ones:0@H
┐
$superpoint/vgg/conv4_2/conv/kernel:0)superpoint/vgg/conv4_2/conv/kernel/Assign)superpoint/vgg/conv4_2/conv/kernel/read:02?superpoint/vgg/conv4_2/conv/kernel/Initializer/random_uniform:08
о
"superpoint/vgg/conv4_2/conv/bias:0'superpoint/vgg/conv4_2/conv/bias/Assign'superpoint/vgg/conv4_2/conv/bias/read:024superpoint/vgg/conv4_2/conv/bias/Initializer/zeros:08
й
!superpoint/vgg/conv4_2/bn/gamma:0&superpoint/vgg/conv4_2/bn/gamma/Assign&superpoint/vgg/conv4_2/bn/gamma/read:022superpoint/vgg/conv4_2/bn/gamma/Initializer/ones:08
ж
 superpoint/vgg/conv4_2/bn/beta:0%superpoint/vgg/conv4_2/bn/beta/Assign%superpoint/vgg/conv4_2/bn/beta/read:022superpoint/vgg/conv4_2/bn/beta/Initializer/zeros:08
─
'superpoint/vgg/conv4_2/bn/moving_mean:0,superpoint/vgg/conv4_2/bn/moving_mean/Assign,superpoint/vgg/conv4_2/bn/moving_mean/read:029superpoint/vgg/conv4_2/bn/moving_mean/Initializer/zeros:0@H
╙
+superpoint/vgg/conv4_2/bn/moving_variance:00superpoint/vgg/conv4_2/bn/moving_variance/Assign0superpoint/vgg/conv4_2/bn/moving_variance/read:02<superpoint/vgg/conv4_2/bn/moving_variance/Initializer/ones:0@H
╦
'superpoint/detector/conv1/conv/kernel:0,superpoint/detector/conv1/conv/kernel/Assign,superpoint/detector/conv1/conv/kernel/read:02Bsuperpoint/detector/conv1/conv/kernel/Initializer/random_uniform:08
║
%superpoint/detector/conv1/conv/bias:0*superpoint/detector/conv1/conv/bias/Assign*superpoint/detector/conv1/conv/bias/read:027superpoint/detector/conv1/conv/bias/Initializer/zeros:08
╡
$superpoint/detector/conv1/bn/gamma:0)superpoint/detector/conv1/bn/gamma/Assign)superpoint/detector/conv1/bn/gamma/read:025superpoint/detector/conv1/bn/gamma/Initializer/ones:08
▓
#superpoint/detector/conv1/bn/beta:0(superpoint/detector/conv1/bn/beta/Assign(superpoint/detector/conv1/bn/beta/read:025superpoint/detector/conv1/bn/beta/Initializer/zeros:08
╨
*superpoint/detector/conv1/bn/moving_mean:0/superpoint/detector/conv1/bn/moving_mean/Assign/superpoint/detector/conv1/bn/moving_mean/read:02<superpoint/detector/conv1/bn/moving_mean/Initializer/zeros:0@H
▀
.superpoint/detector/conv1/bn/moving_variance:03superpoint/detector/conv1/bn/moving_variance/Assign3superpoint/detector/conv1/bn/moving_variance/read:02?superpoint/detector/conv1/bn/moving_variance/Initializer/ones:0@H
╦
'superpoint/detector/conv2/conv/kernel:0,superpoint/detector/conv2/conv/kernel/Assign,superpoint/detector/conv2/conv/kernel/read:02Bsuperpoint/detector/conv2/conv/kernel/Initializer/random_uniform:08
║
%superpoint/detector/conv2/conv/bias:0*superpoint/detector/conv2/conv/bias/Assign*superpoint/detector/conv2/conv/bias/read:027superpoint/detector/conv2/conv/bias/Initializer/zeros:08
╡
$superpoint/detector/conv2/bn/gamma:0)superpoint/detector/conv2/bn/gamma/Assign)superpoint/detector/conv2/bn/gamma/read:025superpoint/detector/conv2/bn/gamma/Initializer/ones:08
▓
#superpoint/detector/conv2/bn/beta:0(superpoint/detector/conv2/bn/beta/Assign(superpoint/detector/conv2/bn/beta/read:025superpoint/detector/conv2/bn/beta/Initializer/zeros:08
╨
*superpoint/detector/conv2/bn/moving_mean:0/superpoint/detector/conv2/bn/moving_mean/Assign/superpoint/detector/conv2/bn/moving_mean/read:02<superpoint/detector/conv2/bn/moving_mean/Initializer/zeros:0@H
▀
.superpoint/detector/conv2/bn/moving_variance:03superpoint/detector/conv2/bn/moving_variance/Assign3superpoint/detector/conv2/bn/moving_variance/read:02?superpoint/detector/conv2/bn/moving_variance/Initializer/ones:0@H
╙
)superpoint/descriptor/conv1/conv/kernel:0.superpoint/descriptor/conv1/conv/kernel/Assign.superpoint/descriptor/conv1/conv/kernel/read:02Dsuperpoint/descriptor/conv1/conv/kernel/Initializer/random_uniform:08
┬
'superpoint/descriptor/conv1/conv/bias:0,superpoint/descriptor/conv1/conv/bias/Assign,superpoint/descriptor/conv1/conv/bias/read:029superpoint/descriptor/conv1/conv/bias/Initializer/zeros:08
╜
&superpoint/descriptor/conv1/bn/gamma:0+superpoint/descriptor/conv1/bn/gamma/Assign+superpoint/descriptor/conv1/bn/gamma/read:027superpoint/descriptor/conv1/bn/gamma/Initializer/ones:08
║
%superpoint/descriptor/conv1/bn/beta:0*superpoint/descriptor/conv1/bn/beta/Assign*superpoint/descriptor/conv1/bn/beta/read:027superpoint/descriptor/conv1/bn/beta/Initializer/zeros:08
╪
,superpoint/descriptor/conv1/bn/moving_mean:01superpoint/descriptor/conv1/bn/moving_mean/Assign1superpoint/descriptor/conv1/bn/moving_mean/read:02>superpoint/descriptor/conv1/bn/moving_mean/Initializer/zeros:0@H
ч
0superpoint/descriptor/conv1/bn/moving_variance:05superpoint/descriptor/conv1/bn/moving_variance/Assign5superpoint/descriptor/conv1/bn/moving_variance/read:02Asuperpoint/descriptor/conv1/bn/moving_variance/Initializer/ones:0@H
╙
)superpoint/descriptor/conv2/conv/kernel:0.superpoint/descriptor/conv2/conv/kernel/Assign.superpoint/descriptor/conv2/conv/kernel/read:02Dsuperpoint/descriptor/conv2/conv/kernel/Initializer/random_uniform:08
┬
'superpoint/descriptor/conv2/conv/bias:0,superpoint/descriptor/conv2/conv/bias/Assign,superpoint/descriptor/conv2/conv/bias/read:029superpoint/descriptor/conv2/conv/bias/Initializer/zeros:08
╜
&superpoint/descriptor/conv2/bn/gamma:0+superpoint/descriptor/conv2/bn/gamma/Assign+superpoint/descriptor/conv2/bn/gamma/read:027superpoint/descriptor/conv2/bn/gamma/Initializer/ones:08
║
%superpoint/descriptor/conv2/bn/beta:0*superpoint/descriptor/conv2/bn/beta/Assign*superpoint/descriptor/conv2/bn/beta/read:027superpoint/descriptor/conv2/bn/beta/Initializer/zeros:08
╪
,superpoint/descriptor/conv2/bn/moving_mean:01superpoint/descriptor/conv2/bn/moving_mean/Assign1superpoint/descriptor/conv2/bn/moving_mean/read:02>superpoint/descriptor/conv2/bn/moving_mean/Initializer/zeros:0@H
ч
0superpoint/descriptor/conv2/bn/moving_variance:05superpoint/descriptor/conv2/bn/moving_variance/Assign5superpoint/descriptor/conv2/bn/moving_variance/read:02Asuperpoint/descriptor/conv2/bn/moving_variance/Initializer/ones:0@H"щ#
while_context╫#╘#
╤#
.superpoint/pred_tower0/map/while/while_context
*+superpoint/pred_tower0/map/while/LoopCond:02(superpoint/pred_tower0/map/while/Merge:0:+superpoint/pred_tower0/map/while/Identity:0B'superpoint/pred_tower0/map/while/Exit:0B)superpoint/pred_tower0/map/while/Exit_1:0B)superpoint/pred_tower0/map/while/Exit_2:0J▐
(superpoint/pred_tower0/map/TensorArray:0
Wsuperpoint/pred_tower0/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
*superpoint/pred_tower0/map/TensorArray_1:0
(superpoint/pred_tower0/map/while/Enter:0
*superpoint/pred_tower0/map/while/Enter_1:0
*superpoint/pred_tower0/map/while/Enter_2:0
'superpoint/pred_tower0/map/while/Exit:0
)superpoint/pred_tower0/map/while/Exit_1:0
)superpoint/pred_tower0/map/while/Exit_2:0
+superpoint/pred_tower0/map/while/Identity:0
-superpoint/pred_tower0/map/while/Identity_1:0
-superpoint/pred_tower0/map/while/Identity_2:0
-superpoint/pred_tower0/map/while/Less/Enter:0
'superpoint/pred_tower0/map/while/Less:0
+superpoint/pred_tower0/map/while/Less_1/y:0
)superpoint/pred_tower0/map/while/Less_1:0
-superpoint/pred_tower0/map/while/LogicalAnd:0
+superpoint/pred_tower0/map/while/LoopCond:0
(superpoint/pred_tower0/map/while/Merge:0
(superpoint/pred_tower0/map/while/Merge:1
*superpoint/pred_tower0/map/while/Merge_1:0
*superpoint/pred_tower0/map/while/Merge_1:1
*superpoint/pred_tower0/map/while/Merge_2:0
*superpoint/pred_tower0/map/while/Merge_2:1
0superpoint/pred_tower0/map/while/NextIteration:0
2superpoint/pred_tower0/map/while/NextIteration_1:0
2superpoint/pred_tower0/map/while/NextIteration_2:0
)superpoint/pred_tower0/map/while/Switch:0
)superpoint/pred_tower0/map/while/Switch:1
+superpoint/pred_tower0/map/while/Switch_1:0
+superpoint/pred_tower0/map/while/Switch_1:1
+superpoint/pred_tower0/map/while/Switch_2:0
+superpoint/pred_tower0/map/while/Switch_2:1
:superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter:0
<superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter_1:0
4superpoint/pred_tower0/map/while/TensorArrayReadV3:0
Lsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
Fsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3:0
(superpoint/pred_tower0/map/while/add/y:0
&superpoint/pred_tower0/map/while/add:0
*superpoint/pred_tower0/map/while/add_1/y:0
(superpoint/pred_tower0/map/while/add_1:0
0superpoint/pred_tower0/map/while/box_nms/Const:0
3superpoint/pred_tower0/map/while/box_nms/GatherNd:0
8superpoint/pred_tower0/map/while/box_nms/GatherV2/axis:0
3superpoint/pred_tower0/map/while/box_nms/GatherV2:0
:superpoint/pred_tower0/map/while/box_nms/GatherV2_1/axis:0
5superpoint/pred_tower0/map/while/box_nms/GatherV2_1:0
9superpoint/pred_tower0/map/while/box_nms/GreaterEqual/y:0
7superpoint/pred_tower0/map/while/box_nms/GreaterEqual:0
4superpoint/pred_tower0/map/while/box_nms/ScatterNd:0
0superpoint/pred_tower0/map/while/box_nms/Shape:0
2superpoint/pred_tower0/map/while/box_nms/Shape_1:0
2superpoint/pred_tower0/map/while/box_nms/ToFloat:0
2superpoint/pred_tower0/map/while/box_nms/ToInt32:0
4superpoint/pred_tower0/map/while/box_nms/ToInt32_1:0
0superpoint/pred_tower0/map/while/box_nms/Where:0
.superpoint/pred_tower0/map/while/box_nms/add:0
6superpoint/pred_tower0/map/while/box_nms/concat/axis:0
1superpoint/pred_tower0/map/while/box_nms/concat:0
Rsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/NonMaxSuppressionV3:0
Lsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/iou_threshold:0
Nsuperpoint/pred_tower0/map/while/box_nms/non_max_suppression/score_threshold:0
>superpoint/pred_tower0/map/while/box_nms/strided_slice/stack:0
@superpoint/pred_tower0/map/while/box_nms/strided_slice/stack_1:0
@superpoint/pred_tower0/map/while/box_nms/strided_slice/stack_2:0
8superpoint/pred_tower0/map/while/box_nms/strided_slice:0
.superpoint/pred_tower0/map/while/box_nms/sub:0
5superpoint/pred_tower0/map/while/maximum_iterations:0f
5superpoint/pred_tower0/map/while/maximum_iterations:0-superpoint/pred_tower0/map/while/Less/Enter:0f
(superpoint/pred_tower0/map/TensorArray:0:superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter:0Ч
Wsuperpoint/pred_tower0/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0<superpoint/pred_tower0/map/while/TensorArrayReadV3/Enter_1:0z
*superpoint/pred_tower0/map/TensorArray_1:0Lsuperpoint/pred_tower0/map/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0R(superpoint/pred_tower0/map/while/Enter:0R*superpoint/pred_tower0/map/while/Enter_1:0R*superpoint/pred_tower0/map/while/Enter_2:0Z5superpoint/pred_tower0/map/while/maximum_iterations:0*╢
serving_defaultв
L
imageC
superpoint/image:0+                           E
logits;
superpoint/logits:0"                  AP
descriptorsA
superpoint/descriptors:0#                  АX
descriptors_rawE
superpoint/descriptors_raw:0#                  А=
pred5
superpoint/pred:0                  =
prob5
superpoint/prob:0                  E
prob_nms9
superpoint/prob_nms:0                  tensorflow/serving/predict