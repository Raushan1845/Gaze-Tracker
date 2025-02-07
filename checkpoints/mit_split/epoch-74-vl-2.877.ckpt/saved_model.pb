��8
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
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
�
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%��8"&
exponential_avg_factorfloat%  �?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%��L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
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
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.02v2.9.0-rc2-42-g8a20d54a3c18ށ4
�
1Adam/gazetrack_model/batch_normalization_6/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/gazetrack_model/batch_normalization_6/beta/v
�
EAdam/gazetrack_model/batch_normalization_6/beta/v/Read/ReadVariableOpReadVariableOp1Adam/gazetrack_model/batch_normalization_6/beta/v*
_output_shapes
:*
dtype0
�
2Adam/gazetrack_model/batch_normalization_6/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/gazetrack_model/batch_normalization_6/gamma/v
�
FAdam/gazetrack_model/batch_normalization_6/gamma/v/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/batch_normalization_6/gamma/v*
_output_shapes
:*
dtype0
�
#Adam/gazetrack_model/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/gazetrack_model/dense_3/bias/v
�
7Adam/gazetrack_model/dense_3/bias/v/Read/ReadVariableOpReadVariableOp#Adam/gazetrack_model/dense_3/bias/v*
_output_shapes
:*
dtype0
�
%Adam/gazetrack_model/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*6
shared_name'%Adam/gazetrack_model/dense_3/kernel/v
�
9Adam/gazetrack_model/dense_3/kernel/v/Read/ReadVariableOpReadVariableOp%Adam/gazetrack_model/dense_3/kernel/v*
_output_shapes
:	�*
dtype0
�
@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/v
�
TAdam/gazetrack_model/landmark_model/batch_normalization_5/beta/v/Read/ReadVariableOpReadVariableOp@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/v*
_output_shapes
:*
dtype0
�
AAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*R
shared_nameCAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/v
�
UAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/v/Read/ReadVariableOpReadVariableOpAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/v*
_output_shapes
:*
dtype0
�
@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/v
�
TAdam/gazetrack_model/landmark_model/batch_normalization_4/beta/v/Read/ReadVariableOpReadVariableOp@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/v*
_output_shapes
:*
dtype0
�
AAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*R
shared_nameCAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/v
�
UAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/v/Read/ReadVariableOpReadVariableOpAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/v*
_output_shapes
:*
dtype0
�
@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Q
shared_nameB@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/v
�
TAdam/gazetrack_model/landmark_model/batch_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/v*
_output_shapes	
:�*
dtype0
�
AAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*R
shared_nameCAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/v
�
UAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOpAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/v*
_output_shapes	
:�*
dtype0
�
2Adam/gazetrack_model/landmark_model/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/gazetrack_model/landmark_model/dense_2/bias/v
�
FAdam/gazetrack_model/landmark_model/dense_2/bias/v/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/landmark_model/dense_2/bias/v*
_output_shapes
:*
dtype0
�
4Adam/gazetrack_model/landmark_model/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64Adam/gazetrack_model/landmark_model/dense_2/kernel/v
�
HAdam/gazetrack_model/landmark_model/dense_2/kernel/v/Read/ReadVariableOpReadVariableOp4Adam/gazetrack_model/landmark_model/dense_2/kernel/v*
_output_shapes

:*
dtype0
�
2Adam/gazetrack_model/landmark_model/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/gazetrack_model/landmark_model/dense_1/bias/v
�
FAdam/gazetrack_model/landmark_model/dense_1/bias/v/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/landmark_model/dense_1/bias/v*
_output_shapes
:*
dtype0
�
4Adam/gazetrack_model/landmark_model/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*E
shared_name64Adam/gazetrack_model/landmark_model/dense_1/kernel/v
�
HAdam/gazetrack_model/landmark_model/dense_1/kernel/v/Read/ReadVariableOpReadVariableOp4Adam/gazetrack_model/landmark_model/dense_1/kernel/v*
_output_shapes
:	�*
dtype0
�
0Adam/gazetrack_model/landmark_model/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*A
shared_name20Adam/gazetrack_model/landmark_model/dense/bias/v
�
DAdam/gazetrack_model/landmark_model/dense/bias/v/Read/ReadVariableOpReadVariableOp0Adam/gazetrack_model/landmark_model/dense/bias/v*
_output_shapes	
:�*
dtype0
�
2Adam/gazetrack_model/landmark_model/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*C
shared_name42Adam/gazetrack_model/landmark_model/dense/kernel/v
�
FAdam/gazetrack_model/landmark_model/dense/kernel/v/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/landmark_model/dense/kernel/v*
_output_shapes
:	�*
dtype0
�
;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/v
�
OAdam/gazetrack_model/eye_model/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/v*
_output_shapes	
:�*
dtype0
�
<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*M
shared_name><Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/v
�
PAdam/gazetrack_model/eye_model/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/v*
_output_shapes	
:�*
dtype0
�
;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/v
�
OAdam/gazetrack_model/eye_model/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/v*
_output_shapes
:@*
dtype0
�
<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*M
shared_name><Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/v
�
PAdam/gazetrack_model/eye_model/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/v*
_output_shapes
:@*
dtype0
�
9Adam/gazetrack_model/eye_model/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *J
shared_name;9Adam/gazetrack_model/eye_model/batch_normalization/beta/v
�
MAdam/gazetrack_model/eye_model/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOp9Adam/gazetrack_model/eye_model/batch_normalization/beta/v*
_output_shapes
: *
dtype0
�
:Adam/gazetrack_model/eye_model/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *K
shared_name<:Adam/gazetrack_model/eye_model/batch_normalization/gamma/v
�
NAdam/gazetrack_model/eye_model/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp:Adam/gazetrack_model/eye_model/batch_normalization/gamma/v*
_output_shapes
: *
dtype0
�
.Adam/gazetrack_model/eye_model/conv2d_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*?
shared_name0.Adam/gazetrack_model/eye_model/conv2d_2/bias/v
�
BAdam/gazetrack_model/eye_model/conv2d_2/bias/v/Read/ReadVariableOpReadVariableOp.Adam/gazetrack_model/eye_model/conv2d_2/bias/v*
_output_shapes	
:�*
dtype0
�
0Adam/gazetrack_model/eye_model/conv2d_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*A
shared_name20Adam/gazetrack_model/eye_model/conv2d_2/kernel/v
�
DAdam/gazetrack_model/eye_model/conv2d_2/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/gazetrack_model/eye_model/conv2d_2/kernel/v*'
_output_shapes
:@�*
dtype0
�
.Adam/gazetrack_model/eye_model/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/gazetrack_model/eye_model/conv2d_1/bias/v
�
BAdam/gazetrack_model/eye_model/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOp.Adam/gazetrack_model/eye_model/conv2d_1/bias/v*
_output_shapes
:@*
dtype0
�
0Adam/gazetrack_model/eye_model/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*A
shared_name20Adam/gazetrack_model/eye_model/conv2d_1/kernel/v
�
DAdam/gazetrack_model/eye_model/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOp0Adam/gazetrack_model/eye_model/conv2d_1/kernel/v*&
_output_shapes
: @*
dtype0
�
,Adam/gazetrack_model/eye_model/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/gazetrack_model/eye_model/conv2d/bias/v
�
@Adam/gazetrack_model/eye_model/conv2d/bias/v/Read/ReadVariableOpReadVariableOp,Adam/gazetrack_model/eye_model/conv2d/bias/v*
_output_shapes
: *
dtype0
�
.Adam/gazetrack_model/eye_model/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/gazetrack_model/eye_model/conv2d/kernel/v
�
BAdam/gazetrack_model/eye_model/conv2d/kernel/v/Read/ReadVariableOpReadVariableOp.Adam/gazetrack_model/eye_model/conv2d/kernel/v*&
_output_shapes
: *
dtype0
~
Adam/dense_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/v
w
'Adam/dense_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/v

)Adam/dense_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/v*
_output_shapes

:*
dtype0
�
!Adam/batch_normalization_8/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/v
�
5Adam/batch_normalization_8/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/v*
_output_shapes
:*
dtype0
�
"Adam/batch_normalization_8/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/v
�
6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/v*
_output_shapes
:*
dtype0
~
Adam/dense_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/v
w
'Adam/dense_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_6/kernel/v

)Adam/dense_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/v*
_output_shapes

:*
dtype0
�
1Adam/gazetrack_model/batch_normalization_6/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31Adam/gazetrack_model/batch_normalization_6/beta/m
�
EAdam/gazetrack_model/batch_normalization_6/beta/m/Read/ReadVariableOpReadVariableOp1Adam/gazetrack_model/batch_normalization_6/beta/m*
_output_shapes
:*
dtype0
�
2Adam/gazetrack_model/batch_normalization_6/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/gazetrack_model/batch_normalization_6/gamma/m
�
FAdam/gazetrack_model/batch_normalization_6/gamma/m/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/batch_normalization_6/gamma/m*
_output_shapes
:*
dtype0
�
#Adam/gazetrack_model/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/gazetrack_model/dense_3/bias/m
�
7Adam/gazetrack_model/dense_3/bias/m/Read/ReadVariableOpReadVariableOp#Adam/gazetrack_model/dense_3/bias/m*
_output_shapes
:*
dtype0
�
%Adam/gazetrack_model/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*6
shared_name'%Adam/gazetrack_model/dense_3/kernel/m
�
9Adam/gazetrack_model/dense_3/kernel/m/Read/ReadVariableOpReadVariableOp%Adam/gazetrack_model/dense_3/kernel/m*
_output_shapes
:	�*
dtype0
�
@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/m
�
TAdam/gazetrack_model/landmark_model/batch_normalization_5/beta/m/Read/ReadVariableOpReadVariableOp@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/m*
_output_shapes
:*
dtype0
�
AAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*R
shared_nameCAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/m
�
UAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/m/Read/ReadVariableOpReadVariableOpAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/m*
_output_shapes
:*
dtype0
�
@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/m
�
TAdam/gazetrack_model/landmark_model/batch_normalization_4/beta/m/Read/ReadVariableOpReadVariableOp@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/m*
_output_shapes
:*
dtype0
�
AAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*R
shared_nameCAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/m
�
UAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/m/Read/ReadVariableOpReadVariableOpAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/m*
_output_shapes
:*
dtype0
�
@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Q
shared_nameB@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/m
�
TAdam/gazetrack_model/landmark_model/batch_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/m*
_output_shapes	
:�*
dtype0
�
AAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*R
shared_nameCAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/m
�
UAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOpAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/m*
_output_shapes	
:�*
dtype0
�
2Adam/gazetrack_model/landmark_model/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/gazetrack_model/landmark_model/dense_2/bias/m
�
FAdam/gazetrack_model/landmark_model/dense_2/bias/m/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/landmark_model/dense_2/bias/m*
_output_shapes
:*
dtype0
�
4Adam/gazetrack_model/landmark_model/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*E
shared_name64Adam/gazetrack_model/landmark_model/dense_2/kernel/m
�
HAdam/gazetrack_model/landmark_model/dense_2/kernel/m/Read/ReadVariableOpReadVariableOp4Adam/gazetrack_model/landmark_model/dense_2/kernel/m*
_output_shapes

:*
dtype0
�
2Adam/gazetrack_model/landmark_model/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42Adam/gazetrack_model/landmark_model/dense_1/bias/m
�
FAdam/gazetrack_model/landmark_model/dense_1/bias/m/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/landmark_model/dense_1/bias/m*
_output_shapes
:*
dtype0
�
4Adam/gazetrack_model/landmark_model/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*E
shared_name64Adam/gazetrack_model/landmark_model/dense_1/kernel/m
�
HAdam/gazetrack_model/landmark_model/dense_1/kernel/m/Read/ReadVariableOpReadVariableOp4Adam/gazetrack_model/landmark_model/dense_1/kernel/m*
_output_shapes
:	�*
dtype0
�
0Adam/gazetrack_model/landmark_model/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*A
shared_name20Adam/gazetrack_model/landmark_model/dense/bias/m
�
DAdam/gazetrack_model/landmark_model/dense/bias/m/Read/ReadVariableOpReadVariableOp0Adam/gazetrack_model/landmark_model/dense/bias/m*
_output_shapes	
:�*
dtype0
�
2Adam/gazetrack_model/landmark_model/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*C
shared_name42Adam/gazetrack_model/landmark_model/dense/kernel/m
�
FAdam/gazetrack_model/landmark_model/dense/kernel/m/Read/ReadVariableOpReadVariableOp2Adam/gazetrack_model/landmark_model/dense/kernel/m*
_output_shapes
:	�*
dtype0
�
;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/m
�
OAdam/gazetrack_model/eye_model/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/m*
_output_shapes	
:�*
dtype0
�
<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*M
shared_name><Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/m
�
PAdam/gazetrack_model/eye_model/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/m*
_output_shapes	
:�*
dtype0
�
;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/m
�
OAdam/gazetrack_model/eye_model/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/m*
_output_shapes
:@*
dtype0
�
<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*M
shared_name><Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/m
�
PAdam/gazetrack_model/eye_model/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/m*
_output_shapes
:@*
dtype0
�
9Adam/gazetrack_model/eye_model/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *J
shared_name;9Adam/gazetrack_model/eye_model/batch_normalization/beta/m
�
MAdam/gazetrack_model/eye_model/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOp9Adam/gazetrack_model/eye_model/batch_normalization/beta/m*
_output_shapes
: *
dtype0
�
:Adam/gazetrack_model/eye_model/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *K
shared_name<:Adam/gazetrack_model/eye_model/batch_normalization/gamma/m
�
NAdam/gazetrack_model/eye_model/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp:Adam/gazetrack_model/eye_model/batch_normalization/gamma/m*
_output_shapes
: *
dtype0
�
.Adam/gazetrack_model/eye_model/conv2d_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*?
shared_name0.Adam/gazetrack_model/eye_model/conv2d_2/bias/m
�
BAdam/gazetrack_model/eye_model/conv2d_2/bias/m/Read/ReadVariableOpReadVariableOp.Adam/gazetrack_model/eye_model/conv2d_2/bias/m*
_output_shapes	
:�*
dtype0
�
0Adam/gazetrack_model/eye_model/conv2d_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*A
shared_name20Adam/gazetrack_model/eye_model/conv2d_2/kernel/m
�
DAdam/gazetrack_model/eye_model/conv2d_2/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/gazetrack_model/eye_model/conv2d_2/kernel/m*'
_output_shapes
:@�*
dtype0
�
.Adam/gazetrack_model/eye_model/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*?
shared_name0.Adam/gazetrack_model/eye_model/conv2d_1/bias/m
�
BAdam/gazetrack_model/eye_model/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOp.Adam/gazetrack_model/eye_model/conv2d_1/bias/m*
_output_shapes
:@*
dtype0
�
0Adam/gazetrack_model/eye_model/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*A
shared_name20Adam/gazetrack_model/eye_model/conv2d_1/kernel/m
�
DAdam/gazetrack_model/eye_model/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOp0Adam/gazetrack_model/eye_model/conv2d_1/kernel/m*&
_output_shapes
: @*
dtype0
�
,Adam/gazetrack_model/eye_model/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *=
shared_name.,Adam/gazetrack_model/eye_model/conv2d/bias/m
�
@Adam/gazetrack_model/eye_model/conv2d/bias/m/Read/ReadVariableOpReadVariableOp,Adam/gazetrack_model/eye_model/conv2d/bias/m*
_output_shapes
: *
dtype0
�
.Adam/gazetrack_model/eye_model/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *?
shared_name0.Adam/gazetrack_model/eye_model/conv2d/kernel/m
�
BAdam/gazetrack_model/eye_model/conv2d/kernel/m/Read/ReadVariableOpReadVariableOp.Adam/gazetrack_model/eye_model/conv2d/kernel/m*&
_output_shapes
: *
dtype0
~
Adam/dense_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_7/bias/m
w
'Adam/dense_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_7/kernel/m

)Adam/dense_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_7/kernel/m*
_output_shapes

:*
dtype0
�
!Adam/batch_normalization_8/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_8/beta/m
�
5Adam/batch_normalization_8/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_8/beta/m*
_output_shapes
:*
dtype0
�
"Adam/batch_normalization_8/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_8/gamma/m
�
6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_8/gamma/m*
_output_shapes
:*
dtype0
~
Adam/dense_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_6/bias/m
w
'Adam/dense_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_6/kernel/m

)Adam/dense_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_6/kernel/m*
_output_shapes

:*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
5gazetrack_model/batch_normalization_6/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*F
shared_name75gazetrack_model/batch_normalization_6/moving_variance
�
Igazetrack_model/batch_normalization_6/moving_variance/Read/ReadVariableOpReadVariableOp5gazetrack_model/batch_normalization_6/moving_variance*
_output_shapes
:*
dtype0
�
1gazetrack_model/batch_normalization_6/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31gazetrack_model/batch_normalization_6/moving_mean
�
Egazetrack_model/batch_normalization_6/moving_mean/Read/ReadVariableOpReadVariableOp1gazetrack_model/batch_normalization_6/moving_mean*
_output_shapes
:*
dtype0
�
Dgazetrack_model/landmark_model/batch_normalization_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDgazetrack_model/landmark_model/batch_normalization_5/moving_variance
�
Xgazetrack_model/landmark_model/batch_normalization_5/moving_variance/Read/ReadVariableOpReadVariableOpDgazetrack_model/landmark_model/batch_normalization_5/moving_variance*
_output_shapes
:*
dtype0
�
@gazetrack_model/landmark_model/batch_normalization_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@gazetrack_model/landmark_model/batch_normalization_5/moving_mean
�
Tgazetrack_model/landmark_model/batch_normalization_5/moving_mean/Read/ReadVariableOpReadVariableOp@gazetrack_model/landmark_model/batch_normalization_5/moving_mean*
_output_shapes
:*
dtype0
�
Dgazetrack_model/landmark_model/batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDgazetrack_model/landmark_model/batch_normalization_4/moving_variance
�
Xgazetrack_model/landmark_model/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOpDgazetrack_model/landmark_model/batch_normalization_4/moving_variance*
_output_shapes
:*
dtype0
�
@gazetrack_model/landmark_model/batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@gazetrack_model/landmark_model/batch_normalization_4/moving_mean
�
Tgazetrack_model/landmark_model/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp@gazetrack_model/landmark_model/batch_normalization_4/moving_mean*
_output_shapes
:*
dtype0
�
Dgazetrack_model/landmark_model/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*U
shared_nameFDgazetrack_model/landmark_model/batch_normalization_3/moving_variance
�
Xgazetrack_model/landmark_model/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOpDgazetrack_model/landmark_model/batch_normalization_3/moving_variance*
_output_shapes	
:�*
dtype0
�
@gazetrack_model/landmark_model/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*Q
shared_nameB@gazetrack_model/landmark_model/batch_normalization_3/moving_mean
�
Tgazetrack_model/landmark_model/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp@gazetrack_model/landmark_model/batch_normalization_3/moving_mean*
_output_shapes	
:�*
dtype0
�
?gazetrack_model/eye_model/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*P
shared_nameA?gazetrack_model/eye_model/batch_normalization_2/moving_variance
�
Sgazetrack_model/eye_model/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp?gazetrack_model/eye_model/batch_normalization_2/moving_variance*
_output_shapes	
:�*
dtype0
�
;gazetrack_model/eye_model/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;gazetrack_model/eye_model/batch_normalization_2/moving_mean
�
Ogazetrack_model/eye_model/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp;gazetrack_model/eye_model/batch_normalization_2/moving_mean*
_output_shapes	
:�*
dtype0
�
?gazetrack_model/eye_model/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*P
shared_nameA?gazetrack_model/eye_model/batch_normalization_1/moving_variance
�
Sgazetrack_model/eye_model/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp?gazetrack_model/eye_model/batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
�
;gazetrack_model/eye_model/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*L
shared_name=;gazetrack_model/eye_model/batch_normalization_1/moving_mean
�
Ogazetrack_model/eye_model/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp;gazetrack_model/eye_model/batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
�
=gazetrack_model/eye_model/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=gazetrack_model/eye_model/batch_normalization/moving_variance
�
Qgazetrack_model/eye_model/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp=gazetrack_model/eye_model/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
�
9gazetrack_model/eye_model/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *J
shared_name;9gazetrack_model/eye_model/batch_normalization/moving_mean
�
Mgazetrack_model/eye_model/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp9gazetrack_model/eye_model/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
�
*gazetrack_model/batch_normalization_6/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*gazetrack_model/batch_normalization_6/beta
�
>gazetrack_model/batch_normalization_6/beta/Read/ReadVariableOpReadVariableOp*gazetrack_model/batch_normalization_6/beta*
_output_shapes
:*
dtype0
�
+gazetrack_model/batch_normalization_6/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+gazetrack_model/batch_normalization_6/gamma
�
?gazetrack_model/batch_normalization_6/gamma/Read/ReadVariableOpReadVariableOp+gazetrack_model/batch_normalization_6/gamma*
_output_shapes
:*
dtype0
�
gazetrack_model/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namegazetrack_model/dense_3/bias
�
0gazetrack_model/dense_3/bias/Read/ReadVariableOpReadVariableOpgazetrack_model/dense_3/bias*
_output_shapes
:*
dtype0
�
gazetrack_model/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*/
shared_name gazetrack_model/dense_3/kernel
�
2gazetrack_model/dense_3/kernel/Read/ReadVariableOpReadVariableOpgazetrack_model/dense_3/kernel*
_output_shapes
:	�*
dtype0
�
9gazetrack_model/landmark_model/batch_normalization_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9gazetrack_model/landmark_model/batch_normalization_5/beta
�
Mgazetrack_model/landmark_model/batch_normalization_5/beta/Read/ReadVariableOpReadVariableOp9gazetrack_model/landmark_model/batch_normalization_5/beta*
_output_shapes
:*
dtype0
�
:gazetrack_model/landmark_model/batch_normalization_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:gazetrack_model/landmark_model/batch_normalization_5/gamma
�
Ngazetrack_model/landmark_model/batch_normalization_5/gamma/Read/ReadVariableOpReadVariableOp:gazetrack_model/landmark_model/batch_normalization_5/gamma*
_output_shapes
:*
dtype0
�
9gazetrack_model/landmark_model/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9gazetrack_model/landmark_model/batch_normalization_4/beta
�
Mgazetrack_model/landmark_model/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp9gazetrack_model/landmark_model/batch_normalization_4/beta*
_output_shapes
:*
dtype0
�
:gazetrack_model/landmark_model/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:gazetrack_model/landmark_model/batch_normalization_4/gamma
�
Ngazetrack_model/landmark_model/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp:gazetrack_model/landmark_model/batch_normalization_4/gamma*
_output_shapes
:*
dtype0
�
9gazetrack_model/landmark_model/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*J
shared_name;9gazetrack_model/landmark_model/batch_normalization_3/beta
�
Mgazetrack_model/landmark_model/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp9gazetrack_model/landmark_model/batch_normalization_3/beta*
_output_shapes	
:�*
dtype0
�
:gazetrack_model/landmark_model/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:gazetrack_model/landmark_model/batch_normalization_3/gamma
�
Ngazetrack_model/landmark_model/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp:gazetrack_model/landmark_model/batch_normalization_3/gamma*
_output_shapes	
:�*
dtype0
�
+gazetrack_model/landmark_model/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+gazetrack_model/landmark_model/dense_2/bias
�
?gazetrack_model/landmark_model/dense_2/bias/Read/ReadVariableOpReadVariableOp+gazetrack_model/landmark_model/dense_2/bias*
_output_shapes
:*
dtype0
�
-gazetrack_model/landmark_model/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*>
shared_name/-gazetrack_model/landmark_model/dense_2/kernel
�
Agazetrack_model/landmark_model/dense_2/kernel/Read/ReadVariableOpReadVariableOp-gazetrack_model/landmark_model/dense_2/kernel*
_output_shapes

:*
dtype0
�
+gazetrack_model/landmark_model/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+gazetrack_model/landmark_model/dense_1/bias
�
?gazetrack_model/landmark_model/dense_1/bias/Read/ReadVariableOpReadVariableOp+gazetrack_model/landmark_model/dense_1/bias*
_output_shapes
:*
dtype0
�
-gazetrack_model/landmark_model/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*>
shared_name/-gazetrack_model/landmark_model/dense_1/kernel
�
Agazetrack_model/landmark_model/dense_1/kernel/Read/ReadVariableOpReadVariableOp-gazetrack_model/landmark_model/dense_1/kernel*
_output_shapes
:	�*
dtype0
�
)gazetrack_model/landmark_model/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*:
shared_name+)gazetrack_model/landmark_model/dense/bias
�
=gazetrack_model/landmark_model/dense/bias/Read/ReadVariableOpReadVariableOp)gazetrack_model/landmark_model/dense/bias*
_output_shapes	
:�*
dtype0
�
+gazetrack_model/landmark_model/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*<
shared_name-+gazetrack_model/landmark_model/dense/kernel
�
?gazetrack_model/landmark_model/dense/kernel/Read/ReadVariableOpReadVariableOp+gazetrack_model/landmark_model/dense/kernel*
_output_shapes
:	�*
dtype0
�
4gazetrack_model/eye_model/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*E
shared_name64gazetrack_model/eye_model/batch_normalization_2/beta
�
Hgazetrack_model/eye_model/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp4gazetrack_model/eye_model/batch_normalization_2/beta*
_output_shapes	
:�*
dtype0
�
5gazetrack_model/eye_model/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75gazetrack_model/eye_model/batch_normalization_2/gamma
�
Igazetrack_model/eye_model/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp5gazetrack_model/eye_model/batch_normalization_2/gamma*
_output_shapes	
:�*
dtype0
�
4gazetrack_model/eye_model/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*E
shared_name64gazetrack_model/eye_model/batch_normalization_1/beta
�
Hgazetrack_model/eye_model/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp4gazetrack_model/eye_model/batch_normalization_1/beta*
_output_shapes
:@*
dtype0
�
5gazetrack_model/eye_model/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*F
shared_name75gazetrack_model/eye_model/batch_normalization_1/gamma
�
Igazetrack_model/eye_model/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp5gazetrack_model/eye_model/batch_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
2gazetrack_model/eye_model/batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *C
shared_name42gazetrack_model/eye_model/batch_normalization/beta
�
Fgazetrack_model/eye_model/batch_normalization/beta/Read/ReadVariableOpReadVariableOp2gazetrack_model/eye_model/batch_normalization/beta*
_output_shapes
: *
dtype0
�
3gazetrack_model/eye_model/batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *D
shared_name53gazetrack_model/eye_model/batch_normalization/gamma
�
Ggazetrack_model/eye_model/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp3gazetrack_model/eye_model/batch_normalization/gamma*
_output_shapes
: *
dtype0
�
'gazetrack_model/eye_model/conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*8
shared_name)'gazetrack_model/eye_model/conv2d_2/bias
�
;gazetrack_model/eye_model/conv2d_2/bias/Read/ReadVariableOpReadVariableOp'gazetrack_model/eye_model/conv2d_2/bias*
_output_shapes	
:�*
dtype0
�
)gazetrack_model/eye_model/conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@�*:
shared_name+)gazetrack_model/eye_model/conv2d_2/kernel
�
=gazetrack_model/eye_model/conv2d_2/kernel/Read/ReadVariableOpReadVariableOp)gazetrack_model/eye_model/conv2d_2/kernel*'
_output_shapes
:@�*
dtype0
�
'gazetrack_model/eye_model/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*8
shared_name)'gazetrack_model/eye_model/conv2d_1/bias
�
;gazetrack_model/eye_model/conv2d_1/bias/Read/ReadVariableOpReadVariableOp'gazetrack_model/eye_model/conv2d_1/bias*
_output_shapes
:@*
dtype0
�
)gazetrack_model/eye_model/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*:
shared_name+)gazetrack_model/eye_model/conv2d_1/kernel
�
=gazetrack_model/eye_model/conv2d_1/kernel/Read/ReadVariableOpReadVariableOp)gazetrack_model/eye_model/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
�
%gazetrack_model/eye_model/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *6
shared_name'%gazetrack_model/eye_model/conv2d/bias
�
9gazetrack_model/eye_model/conv2d/bias/Read/ReadVariableOpReadVariableOp%gazetrack_model/eye_model/conv2d/bias*
_output_shapes
: *
dtype0
�
'gazetrack_model/eye_model/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'gazetrack_model/eye_model/conv2d/kernel
�
;gazetrack_model/eye_model/conv2d/kernel/Read/ReadVariableOpReadVariableOp'gazetrack_model/eye_model/conv2d/kernel*&
_output_shapes
: *
dtype0
p
dense_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_7/bias
i
 dense_7/bias/Read/ReadVariableOpReadVariableOpdense_7/bias*
_output_shapes
:*
dtype0
x
dense_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_7/kernel
q
"dense_7/kernel/Read/ReadVariableOpReadVariableOpdense_7/kernel*
_output_shapes

:*
dtype0
�
%batch_normalization_8/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_8/moving_variance
�
9batch_normalization_8/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_8/moving_variance*
_output_shapes
:*
dtype0
�
!batch_normalization_8/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_8/moving_mean
�
5batch_normalization_8/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_8/moving_mean*
_output_shapes
:*
dtype0
�
batch_normalization_8/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_8/beta
�
.batch_normalization_8/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_8/beta*
_output_shapes
:*
dtype0
�
batch_normalization_8/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_8/gamma
�
/batch_normalization_8/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_8/gamma*
_output_shapes
:*
dtype0
p
dense_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_6/bias
i
 dense_6/bias/Read/ReadVariableOpReadVariableOpdense_6/bias*
_output_shapes
:*
dtype0
x
dense_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_6/kernel
q
"dense_6/kernel/Read/ReadVariableOpReadVariableOpdense_6/kernel*
_output_shapes

:*
dtype0

NoOpNoOp
��
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ޝ
valueӝBϝ Bǝ
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
* 
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	eye_model
landmark_model

dense1

dense2

dense3
bn1
bn2
dropout
 relu*
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias*
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/axis
	0gamma
1beta
2moving_mean
3moving_variance*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses* 
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias*
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27
^28
_29
`30
a31
b32
c33
d34
e35
f36
g37
h38
i39
j40
k41
'42
(43
044
145
246
347
@48
A49*
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27
'28
(29
030
131
@32
A33*
* 
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
qtrace_0
rtrace_1
strace_2
ttrace_3* 
6
utrace_0
vtrace_1
wtrace_2
xtrace_3* 
* 
�
yiter

zbeta_1

{beta_2
	|decay
}learning_rate'm�(m�0m�1m�@m�Am�Bm�Cm�Dm�Em�Fm�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�Qm�Rm�Sm�Tm�Um�Vm�Wm�Xm�Ym�Zm�[m�\m�]m�'v�(v�0v�1v�@v�Av�Bv�Cv�Dv�Ev�Fv�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�Qv�Rv�Sv�Tv�Uv�Vv�Wv�Xv�Yv�Zv�[v�\v�]v�*

~serving_default* 
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27
^28
_29
`30
a31
b32
c33
d34
e35
f36
g37
h38
i39
j40
k41*
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27*
* 
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�conv1

�conv2

�conv3
�bn1
�bn2
�bn3
�	leakyrelu
�avgpool
�dropout*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�dense1
�dense2
�dense3
�bn1
�bn2
�bn3
	�relu*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Zkernel
[bias*

�	keras_api* 

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	\gamma
]beta
jmoving_mean
kmoving_variance*

�	keras_api* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 

'0
(1*

'0
(1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_6/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_6/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
00
11
22
33*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
jd
VARIABLE_VALUEbatch_normalization_8/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEbatch_normalization_8/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE!batch_normalization_8/moving_mean;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE%batch_normalization_8/moving_variance?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

@0
A1*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
^X
VARIABLE_VALUEdense_7/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_7/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'gazetrack_model/eye_model/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%gazetrack_model/eye_model/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)gazetrack_model/eye_model/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'gazetrack_model/eye_model/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUE)gazetrack_model/eye_model/conv2d_2/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'gazetrack_model/eye_model/conv2d_2/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3gazetrack_model/eye_model/batch_normalization/gamma&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2gazetrack_model/eye_model/batch_normalization/beta&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5gazetrack_model/eye_model/batch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4gazetrack_model/eye_model/batch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5gazetrack_model/eye_model/batch_normalization_2/gamma'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE4gazetrack_model/eye_model/batch_normalization_2/beta'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+gazetrack_model/landmark_model/dense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)gazetrack_model/landmark_model/dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-gazetrack_model/landmark_model/dense_1/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+gazetrack_model/landmark_model/dense_1/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-gazetrack_model/landmark_model/dense_2/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+gazetrack_model/landmark_model/dense_2/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:gazetrack_model/landmark_model/batch_normalization_3/gamma'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9gazetrack_model/landmark_model/batch_normalization_3/beta'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:gazetrack_model/landmark_model/batch_normalization_4/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9gazetrack_model/landmark_model/batch_normalization_4/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:gazetrack_model/landmark_model/batch_normalization_5/gamma'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9gazetrack_model/landmark_model/batch_normalization_5/beta'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEgazetrack_model/dense_3/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEgazetrack_model/dense_3/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+gazetrack_model/batch_normalization_6/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*gazetrack_model/batch_normalization_6/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9gazetrack_model/eye_model/batch_normalization/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE=gazetrack_model/eye_model/batch_normalization/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;gazetrack_model/eye_model/batch_normalization_1/moving_mean'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE?gazetrack_model/eye_model/batch_normalization_1/moving_variance'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;gazetrack_model/eye_model/batch_normalization_2/moving_mean'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE?gazetrack_model/eye_model/batch_normalization_2/moving_variance'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE@gazetrack_model/landmark_model/batch_normalization_3/moving_mean'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEDgazetrack_model/landmark_model/batch_normalization_3/moving_variance'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE@gazetrack_model/landmark_model/batch_normalization_4/moving_mean'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEDgazetrack_model/landmark_model/batch_normalization_4/moving_variance'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE@gazetrack_model/landmark_model/batch_normalization_5/moving_mean'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
�
VARIABLE_VALUEDgazetrack_model/landmark_model/batch_normalization_5/moving_variance'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1gazetrack_model/batch_normalization_6/moving_mean'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5gazetrack_model/batch_normalization_6/moving_variance'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
z
^0
_1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11
j12
k13
214
315*
<
0
1
2
3
4
5
6
7*

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
j
^0
_1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11
j12
k13*
C
0
1
2
3
4
5
6
7
 8*
* 
* 
* 
* 
* 
* 
* 
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
^12
_13
`14
a15
b16
c17*
Z
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Bkernel
Cbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel
Ebias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Fkernel
Gbias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Hgamma
Ibeta
^moving_mean
_moving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Jgamma
Kbeta
`moving_mean
amoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Lgamma
Mbeta
bmoving_mean
cmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
d12
e13
f14
g15
h16
i17*
Z
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel
Obias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Rkernel
Sbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Tgamma
Ubeta
dmoving_mean
emoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Vgamma
Wbeta
fmoving_mean
gmoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Xgamma
Ybeta
hmoving_mean
imoving_variance*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 

Z0
[1*

Z0
[1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
 
\0
]1
j2
k3*

\0
]1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

20
31*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
.
^0
_1
`2
a3
b4
c5*
L
�0
�1
�2
�3
�4
�5
�6
�7
�8*
* 
* 
* 

B0
C1*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
 
H0
I1
^2
_3*

H0
I1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
 
J0
K1
`2
a3*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
 
L0
M1
b2
c3*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
.
d0
e1
f2
g3
h4
i5*
<
�0
�1
�2
�3
�4
�5
�6*
* 
* 
* 

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

P0
Q1*

P0
Q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

R0
S1*

R0
S1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
 
T0
U1
d2
e3*

T0
U1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
 
V0
W1
f2
g3*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
 
X0
Y1
h2
i3*

X0
Y1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
* 

j0
k1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

^0
_1*
* 
* 
* 
* 
* 
* 
* 
* 

`0
a1*
* 
* 
* 
* 
* 
* 
* 
* 

b0
c1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

d0
e1*
* 
* 
* 
* 
* 
* 
* 
* 

f0
g1*
* 
* 
* 
* 
* 
* 
* 
* 

h0
i1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
�{
VARIABLE_VALUEAdam/dense_6/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_8/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/gazetrack_model/eye_model/conv2d/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/gazetrack_model/eye_model/conv2d/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/gazetrack_model/eye_model/conv2d_1/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/gazetrack_model/eye_model/conv2d_1/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/gazetrack_model/eye_model/conv2d_2/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/gazetrack_model/eye_model/conv2d_2/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE:Adam/gazetrack_model/eye_model/batch_normalization/gamma/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE9Adam/gazetrack_model/eye_model/batch_normalization/beta/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/landmark_model/dense/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/gazetrack_model/landmark_model/dense/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/gazetrack_model/landmark_model/dense_1/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/landmark_model/dense_1/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/gazetrack_model/landmark_model/dense_2/kernel/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/landmark_model/dense_2/bias/mCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/mCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/mCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/mCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/mCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/mCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/mCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE%Adam/gazetrack_model/dense_3/kernel/mCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE#Adam/gazetrack_model/dense_3/bias/mCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/batch_normalization_6/gamma/mCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/gazetrack_model/batch_normalization_6/beta/mCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_6/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_6/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE"Adam/batch_normalization_8/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE!Adam/batch_normalization_8/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUEAdam/dense_7/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_7/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/gazetrack_model/eye_model/conv2d/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/gazetrack_model/eye_model/conv2d/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/gazetrack_model/eye_model/conv2d_1/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/gazetrack_model/eye_model/conv2d_1/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/gazetrack_model/eye_model/conv2d_2/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE.Adam/gazetrack_model/eye_model/conv2d_2/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE:Adam/gazetrack_model/eye_model/batch_normalization/gamma/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE9Adam/gazetrack_model/eye_model/batch_normalization/beta/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/landmark_model/dense/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE0Adam/gazetrack_model/landmark_model/dense/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/gazetrack_model/landmark_model/dense_1/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/landmark_model/dense_1/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE4Adam/gazetrack_model/landmark_model/dense_2/kernel/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/landmark_model/dense_2/bias/vCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/vCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/vCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/vCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/vCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/vCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/vCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE%Adam/gazetrack_model/dense_3/kernel/vCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUE#Adam/gazetrack_model/dense_3/bias/vCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE2Adam/gazetrack_model/batch_normalization_6/gamma/vCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE1Adam/gazetrack_model/batch_normalization_6/beta/vCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
serving_default_input_2Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
z
serving_default_input_3Placeholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1serving_default_input_2serving_default_input_3'gazetrack_model/eye_model/conv2d/kernel%gazetrack_model/eye_model/conv2d/bias3gazetrack_model/eye_model/batch_normalization/gamma2gazetrack_model/eye_model/batch_normalization/beta9gazetrack_model/eye_model/batch_normalization/moving_mean=gazetrack_model/eye_model/batch_normalization/moving_variance)gazetrack_model/eye_model/conv2d_1/kernel'gazetrack_model/eye_model/conv2d_1/bias5gazetrack_model/eye_model/batch_normalization_1/gamma4gazetrack_model/eye_model/batch_normalization_1/beta;gazetrack_model/eye_model/batch_normalization_1/moving_mean?gazetrack_model/eye_model/batch_normalization_1/moving_variance)gazetrack_model/eye_model/conv2d_2/kernel'gazetrack_model/eye_model/conv2d_2/bias5gazetrack_model/eye_model/batch_normalization_2/gamma4gazetrack_model/eye_model/batch_normalization_2/beta;gazetrack_model/eye_model/batch_normalization_2/moving_mean?gazetrack_model/eye_model/batch_normalization_2/moving_variance+gazetrack_model/landmark_model/dense/kernel)gazetrack_model/landmark_model/dense/biasDgazetrack_model/landmark_model/batch_normalization_3/moving_variance:gazetrack_model/landmark_model/batch_normalization_3/gamma@gazetrack_model/landmark_model/batch_normalization_3/moving_mean9gazetrack_model/landmark_model/batch_normalization_3/beta-gazetrack_model/landmark_model/dense_1/kernel+gazetrack_model/landmark_model/dense_1/biasDgazetrack_model/landmark_model/batch_normalization_4/moving_variance:gazetrack_model/landmark_model/batch_normalization_4/gamma@gazetrack_model/landmark_model/batch_normalization_4/moving_mean9gazetrack_model/landmark_model/batch_normalization_4/beta-gazetrack_model/landmark_model/dense_2/kernel+gazetrack_model/landmark_model/dense_2/biasDgazetrack_model/landmark_model/batch_normalization_5/moving_variance:gazetrack_model/landmark_model/batch_normalization_5/gamma@gazetrack_model/landmark_model/batch_normalization_5/moving_mean9gazetrack_model/landmark_model/batch_normalization_5/betagazetrack_model/dense_3/kernelgazetrack_model/dense_3/bias5gazetrack_model/batch_normalization_6/moving_variance+gazetrack_model/batch_normalization_6/gamma1gazetrack_model/batch_normalization_6/moving_mean*gazetrack_model/batch_normalization_6/betadense_6/kerneldense_6/bias%batch_normalization_8/moving_variancebatch_normalization_8/gamma!batch_normalization_8/moving_meanbatch_normalization_8/betadense_7/kerneldense_7/bias*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_986241
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�E
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_6/kernel/Read/ReadVariableOp dense_6/bias/Read/ReadVariableOp/batch_normalization_8/gamma/Read/ReadVariableOp.batch_normalization_8/beta/Read/ReadVariableOp5batch_normalization_8/moving_mean/Read/ReadVariableOp9batch_normalization_8/moving_variance/Read/ReadVariableOp"dense_7/kernel/Read/ReadVariableOp dense_7/bias/Read/ReadVariableOp;gazetrack_model/eye_model/conv2d/kernel/Read/ReadVariableOp9gazetrack_model/eye_model/conv2d/bias/Read/ReadVariableOp=gazetrack_model/eye_model/conv2d_1/kernel/Read/ReadVariableOp;gazetrack_model/eye_model/conv2d_1/bias/Read/ReadVariableOp=gazetrack_model/eye_model/conv2d_2/kernel/Read/ReadVariableOp;gazetrack_model/eye_model/conv2d_2/bias/Read/ReadVariableOpGgazetrack_model/eye_model/batch_normalization/gamma/Read/ReadVariableOpFgazetrack_model/eye_model/batch_normalization/beta/Read/ReadVariableOpIgazetrack_model/eye_model/batch_normalization_1/gamma/Read/ReadVariableOpHgazetrack_model/eye_model/batch_normalization_1/beta/Read/ReadVariableOpIgazetrack_model/eye_model/batch_normalization_2/gamma/Read/ReadVariableOpHgazetrack_model/eye_model/batch_normalization_2/beta/Read/ReadVariableOp?gazetrack_model/landmark_model/dense/kernel/Read/ReadVariableOp=gazetrack_model/landmark_model/dense/bias/Read/ReadVariableOpAgazetrack_model/landmark_model/dense_1/kernel/Read/ReadVariableOp?gazetrack_model/landmark_model/dense_1/bias/Read/ReadVariableOpAgazetrack_model/landmark_model/dense_2/kernel/Read/ReadVariableOp?gazetrack_model/landmark_model/dense_2/bias/Read/ReadVariableOpNgazetrack_model/landmark_model/batch_normalization_3/gamma/Read/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_3/beta/Read/ReadVariableOpNgazetrack_model/landmark_model/batch_normalization_4/gamma/Read/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_4/beta/Read/ReadVariableOpNgazetrack_model/landmark_model/batch_normalization_5/gamma/Read/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_5/beta/Read/ReadVariableOp2gazetrack_model/dense_3/kernel/Read/ReadVariableOp0gazetrack_model/dense_3/bias/Read/ReadVariableOp?gazetrack_model/batch_normalization_6/gamma/Read/ReadVariableOp>gazetrack_model/batch_normalization_6/beta/Read/ReadVariableOpMgazetrack_model/eye_model/batch_normalization/moving_mean/Read/ReadVariableOpQgazetrack_model/eye_model/batch_normalization/moving_variance/Read/ReadVariableOpOgazetrack_model/eye_model/batch_normalization_1/moving_mean/Read/ReadVariableOpSgazetrack_model/eye_model/batch_normalization_1/moving_variance/Read/ReadVariableOpOgazetrack_model/eye_model/batch_normalization_2/moving_mean/Read/ReadVariableOpSgazetrack_model/eye_model/batch_normalization_2/moving_variance/Read/ReadVariableOpTgazetrack_model/landmark_model/batch_normalization_3/moving_mean/Read/ReadVariableOpXgazetrack_model/landmark_model/batch_normalization_3/moving_variance/Read/ReadVariableOpTgazetrack_model/landmark_model/batch_normalization_4/moving_mean/Read/ReadVariableOpXgazetrack_model/landmark_model/batch_normalization_4/moving_variance/Read/ReadVariableOpTgazetrack_model/landmark_model/batch_normalization_5/moving_mean/Read/ReadVariableOpXgazetrack_model/landmark_model/batch_normalization_5/moving_variance/Read/ReadVariableOpEgazetrack_model/batch_normalization_6/moving_mean/Read/ReadVariableOpIgazetrack_model/batch_normalization_6/moving_variance/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_6/kernel/m/Read/ReadVariableOp'Adam/dense_6/bias/m/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_8/beta/m/Read/ReadVariableOp)Adam/dense_7/kernel/m/Read/ReadVariableOp'Adam/dense_7/bias/m/Read/ReadVariableOpBAdam/gazetrack_model/eye_model/conv2d/kernel/m/Read/ReadVariableOp@Adam/gazetrack_model/eye_model/conv2d/bias/m/Read/ReadVariableOpDAdam/gazetrack_model/eye_model/conv2d_1/kernel/m/Read/ReadVariableOpBAdam/gazetrack_model/eye_model/conv2d_1/bias/m/Read/ReadVariableOpDAdam/gazetrack_model/eye_model/conv2d_2/kernel/m/Read/ReadVariableOpBAdam/gazetrack_model/eye_model/conv2d_2/bias/m/Read/ReadVariableOpNAdam/gazetrack_model/eye_model/batch_normalization/gamma/m/Read/ReadVariableOpMAdam/gazetrack_model/eye_model/batch_normalization/beta/m/Read/ReadVariableOpPAdam/gazetrack_model/eye_model/batch_normalization_1/gamma/m/Read/ReadVariableOpOAdam/gazetrack_model/eye_model/batch_normalization_1/beta/m/Read/ReadVariableOpPAdam/gazetrack_model/eye_model/batch_normalization_2/gamma/m/Read/ReadVariableOpOAdam/gazetrack_model/eye_model/batch_normalization_2/beta/m/Read/ReadVariableOpFAdam/gazetrack_model/landmark_model/dense/kernel/m/Read/ReadVariableOpDAdam/gazetrack_model/landmark_model/dense/bias/m/Read/ReadVariableOpHAdam/gazetrack_model/landmark_model/dense_1/kernel/m/Read/ReadVariableOpFAdam/gazetrack_model/landmark_model/dense_1/bias/m/Read/ReadVariableOpHAdam/gazetrack_model/landmark_model/dense_2/kernel/m/Read/ReadVariableOpFAdam/gazetrack_model/landmark_model/dense_2/bias/m/Read/ReadVariableOpUAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/m/Read/ReadVariableOpTAdam/gazetrack_model/landmark_model/batch_normalization_3/beta/m/Read/ReadVariableOpUAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/m/Read/ReadVariableOpTAdam/gazetrack_model/landmark_model/batch_normalization_4/beta/m/Read/ReadVariableOpUAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/m/Read/ReadVariableOpTAdam/gazetrack_model/landmark_model/batch_normalization_5/beta/m/Read/ReadVariableOp9Adam/gazetrack_model/dense_3/kernel/m/Read/ReadVariableOp7Adam/gazetrack_model/dense_3/bias/m/Read/ReadVariableOpFAdam/gazetrack_model/batch_normalization_6/gamma/m/Read/ReadVariableOpEAdam/gazetrack_model/batch_normalization_6/beta/m/Read/ReadVariableOp)Adam/dense_6/kernel/v/Read/ReadVariableOp'Adam/dense_6/bias/v/Read/ReadVariableOp6Adam/batch_normalization_8/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_8/beta/v/Read/ReadVariableOp)Adam/dense_7/kernel/v/Read/ReadVariableOp'Adam/dense_7/bias/v/Read/ReadVariableOpBAdam/gazetrack_model/eye_model/conv2d/kernel/v/Read/ReadVariableOp@Adam/gazetrack_model/eye_model/conv2d/bias/v/Read/ReadVariableOpDAdam/gazetrack_model/eye_model/conv2d_1/kernel/v/Read/ReadVariableOpBAdam/gazetrack_model/eye_model/conv2d_1/bias/v/Read/ReadVariableOpDAdam/gazetrack_model/eye_model/conv2d_2/kernel/v/Read/ReadVariableOpBAdam/gazetrack_model/eye_model/conv2d_2/bias/v/Read/ReadVariableOpNAdam/gazetrack_model/eye_model/batch_normalization/gamma/v/Read/ReadVariableOpMAdam/gazetrack_model/eye_model/batch_normalization/beta/v/Read/ReadVariableOpPAdam/gazetrack_model/eye_model/batch_normalization_1/gamma/v/Read/ReadVariableOpOAdam/gazetrack_model/eye_model/batch_normalization_1/beta/v/Read/ReadVariableOpPAdam/gazetrack_model/eye_model/batch_normalization_2/gamma/v/Read/ReadVariableOpOAdam/gazetrack_model/eye_model/batch_normalization_2/beta/v/Read/ReadVariableOpFAdam/gazetrack_model/landmark_model/dense/kernel/v/Read/ReadVariableOpDAdam/gazetrack_model/landmark_model/dense/bias/v/Read/ReadVariableOpHAdam/gazetrack_model/landmark_model/dense_1/kernel/v/Read/ReadVariableOpFAdam/gazetrack_model/landmark_model/dense_1/bias/v/Read/ReadVariableOpHAdam/gazetrack_model/landmark_model/dense_2/kernel/v/Read/ReadVariableOpFAdam/gazetrack_model/landmark_model/dense_2/bias/v/Read/ReadVariableOpUAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/v/Read/ReadVariableOpTAdam/gazetrack_model/landmark_model/batch_normalization_3/beta/v/Read/ReadVariableOpUAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/v/Read/ReadVariableOpTAdam/gazetrack_model/landmark_model/batch_normalization_4/beta/v/Read/ReadVariableOpUAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/v/Read/ReadVariableOpTAdam/gazetrack_model/landmark_model/batch_normalization_5/beta/v/Read/ReadVariableOp9Adam/gazetrack_model/dense_3/kernel/v/Read/ReadVariableOp7Adam/gazetrack_model/dense_3/bias/v/Read/ReadVariableOpFAdam/gazetrack_model/batch_normalization_6/gamma/v/Read/ReadVariableOpEAdam/gazetrack_model/batch_normalization_6/beta/v/Read/ReadVariableOpConst*�
Tin�
�2�	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_988869
�1
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_6/kerneldense_6/biasbatch_normalization_8/gammabatch_normalization_8/beta!batch_normalization_8/moving_mean%batch_normalization_8/moving_variancedense_7/kerneldense_7/bias'gazetrack_model/eye_model/conv2d/kernel%gazetrack_model/eye_model/conv2d/bias)gazetrack_model/eye_model/conv2d_1/kernel'gazetrack_model/eye_model/conv2d_1/bias)gazetrack_model/eye_model/conv2d_2/kernel'gazetrack_model/eye_model/conv2d_2/bias3gazetrack_model/eye_model/batch_normalization/gamma2gazetrack_model/eye_model/batch_normalization/beta5gazetrack_model/eye_model/batch_normalization_1/gamma4gazetrack_model/eye_model/batch_normalization_1/beta5gazetrack_model/eye_model/batch_normalization_2/gamma4gazetrack_model/eye_model/batch_normalization_2/beta+gazetrack_model/landmark_model/dense/kernel)gazetrack_model/landmark_model/dense/bias-gazetrack_model/landmark_model/dense_1/kernel+gazetrack_model/landmark_model/dense_1/bias-gazetrack_model/landmark_model/dense_2/kernel+gazetrack_model/landmark_model/dense_2/bias:gazetrack_model/landmark_model/batch_normalization_3/gamma9gazetrack_model/landmark_model/batch_normalization_3/beta:gazetrack_model/landmark_model/batch_normalization_4/gamma9gazetrack_model/landmark_model/batch_normalization_4/beta:gazetrack_model/landmark_model/batch_normalization_5/gamma9gazetrack_model/landmark_model/batch_normalization_5/betagazetrack_model/dense_3/kernelgazetrack_model/dense_3/bias+gazetrack_model/batch_normalization_6/gamma*gazetrack_model/batch_normalization_6/beta9gazetrack_model/eye_model/batch_normalization/moving_mean=gazetrack_model/eye_model/batch_normalization/moving_variance;gazetrack_model/eye_model/batch_normalization_1/moving_mean?gazetrack_model/eye_model/batch_normalization_1/moving_variance;gazetrack_model/eye_model/batch_normalization_2/moving_mean?gazetrack_model/eye_model/batch_normalization_2/moving_variance@gazetrack_model/landmark_model/batch_normalization_3/moving_meanDgazetrack_model/landmark_model/batch_normalization_3/moving_variance@gazetrack_model/landmark_model/batch_normalization_4/moving_meanDgazetrack_model/landmark_model/batch_normalization_4/moving_variance@gazetrack_model/landmark_model/batch_normalization_5/moving_meanDgazetrack_model/landmark_model/batch_normalization_5/moving_variance1gazetrack_model/batch_normalization_6/moving_mean5gazetrack_model/batch_normalization_6/moving_variance	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcountAdam/dense_6/kernel/mAdam/dense_6/bias/m"Adam/batch_normalization_8/gamma/m!Adam/batch_normalization_8/beta/mAdam/dense_7/kernel/mAdam/dense_7/bias/m.Adam/gazetrack_model/eye_model/conv2d/kernel/m,Adam/gazetrack_model/eye_model/conv2d/bias/m0Adam/gazetrack_model/eye_model/conv2d_1/kernel/m.Adam/gazetrack_model/eye_model/conv2d_1/bias/m0Adam/gazetrack_model/eye_model/conv2d_2/kernel/m.Adam/gazetrack_model/eye_model/conv2d_2/bias/m:Adam/gazetrack_model/eye_model/batch_normalization/gamma/m9Adam/gazetrack_model/eye_model/batch_normalization/beta/m<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/m;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/m<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/m;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/m2Adam/gazetrack_model/landmark_model/dense/kernel/m0Adam/gazetrack_model/landmark_model/dense/bias/m4Adam/gazetrack_model/landmark_model/dense_1/kernel/m2Adam/gazetrack_model/landmark_model/dense_1/bias/m4Adam/gazetrack_model/landmark_model/dense_2/kernel/m2Adam/gazetrack_model/landmark_model/dense_2/bias/mAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/m@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/mAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/m@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/mAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/m@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/m%Adam/gazetrack_model/dense_3/kernel/m#Adam/gazetrack_model/dense_3/bias/m2Adam/gazetrack_model/batch_normalization_6/gamma/m1Adam/gazetrack_model/batch_normalization_6/beta/mAdam/dense_6/kernel/vAdam/dense_6/bias/v"Adam/batch_normalization_8/gamma/v!Adam/batch_normalization_8/beta/vAdam/dense_7/kernel/vAdam/dense_7/bias/v.Adam/gazetrack_model/eye_model/conv2d/kernel/v,Adam/gazetrack_model/eye_model/conv2d/bias/v0Adam/gazetrack_model/eye_model/conv2d_1/kernel/v.Adam/gazetrack_model/eye_model/conv2d_1/bias/v0Adam/gazetrack_model/eye_model/conv2d_2/kernel/v.Adam/gazetrack_model/eye_model/conv2d_2/bias/v:Adam/gazetrack_model/eye_model/batch_normalization/gamma/v9Adam/gazetrack_model/eye_model/batch_normalization/beta/v<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/v;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/v<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/v;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/v2Adam/gazetrack_model/landmark_model/dense/kernel/v0Adam/gazetrack_model/landmark_model/dense/bias/v4Adam/gazetrack_model/landmark_model/dense_1/kernel/v2Adam/gazetrack_model/landmark_model/dense_1/bias/v4Adam/gazetrack_model/landmark_model/dense_2/kernel/v2Adam/gazetrack_model/landmark_model/dense_2/bias/vAAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/v@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/vAAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/v@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/vAAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/v@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/v%Adam/gazetrack_model/dense_3/kernel/v#Adam/gazetrack_model/dense_3/bias/v2Adam/gazetrack_model/batch_normalization_6/gamma/v1Adam/gazetrack_model/batch_normalization_6/beta/v*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_989260��-
�
_
C__inference_re_lu_2_layer_call_and_return_conditional_losses_987928

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:���������Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_6_layer_call_and_return_conditional_losses_987838

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987884

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_6_layer_call_fn_987973

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_984366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_983867

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
C__inference_dense_6_layer_call_and_return_conditional_losses_984791

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_983962

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_984026

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988133

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
(__inference_dense_6_layer_call_fn_987828

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_984791o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_984202

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�<
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987819
	l_r_lms_0
	l_r_lms_1
	l_r_lms_2I
/eye_model_conv2d_conv2d_readvariableop_resource: >
0eye_model_conv2d_biasadd_readvariableop_resource: C
5eye_model_batch_normalization_readvariableop_resource: E
7eye_model_batch_normalization_readvariableop_1_resource: T
Feye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: V
Heye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: K
1eye_model_conv2d_1_conv2d_readvariableop_resource: @@
2eye_model_conv2d_1_biasadd_readvariableop_resource:@E
7eye_model_batch_normalization_1_readvariableop_resource:@G
9eye_model_batch_normalization_1_readvariableop_1_resource:@V
Heye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@X
Jeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@L
1eye_model_conv2d_2_conv2d_readvariableop_resource:@�A
2eye_model_conv2d_2_biasadd_readvariableop_resource:	�F
7eye_model_batch_normalization_2_readvariableop_resource:	�H
9eye_model_batch_normalization_2_readvariableop_1_resource:	�W
Heye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�Y
Jeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�F
3landmark_model_dense_matmul_readvariableop_resource:	�C
4landmark_model_dense_biasadd_readvariableop_resource:	�[
Llandmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource:	�]
Nlandmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource:	�Y
Jlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�U
Flandmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�H
5landmark_model_dense_1_matmul_readvariableop_resource:	�D
6landmark_model_dense_1_biasadd_readvariableop_resource:Z
Llandmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource:\
Nlandmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource:X
Jlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:T
Flandmark_model_batch_normalization_4_batchnorm_readvariableop_resource:G
5landmark_model_dense_2_matmul_readvariableop_resource:D
6landmark_model_dense_2_biasadd_readvariableop_resource:Z
Llandmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource:\
Nlandmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource:X
Jlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:T
Flandmark_model_batch_normalization_5_batchnorm_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	�5
'dense_3_biasadd_readvariableop_resource:K
=batch_normalization_6_assignmovingavg_readvariableop_resource:M
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:
identity��%batch_normalization_6/AssignMovingAvg�4batch_normalization_6/AssignMovingAvg/ReadVariableOp�'batch_normalization_6/AssignMovingAvg_1�6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_6/batchnorm/ReadVariableOp�2batch_normalization_6/batchnorm/mul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�,eye_model/batch_normalization/AssignNewValue�.eye_model/batch_normalization/AssignNewValue_1�.eye_model/batch_normalization/AssignNewValue_2�.eye_model/batch_normalization/AssignNewValue_3�=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�,eye_model/batch_normalization/ReadVariableOp�.eye_model/batch_normalization/ReadVariableOp_1�.eye_model/batch_normalization/ReadVariableOp_2�.eye_model/batch_normalization/ReadVariableOp_3�.eye_model/batch_normalization_1/AssignNewValue�0eye_model/batch_normalization_1/AssignNewValue_1�0eye_model/batch_normalization_1/AssignNewValue_2�0eye_model/batch_normalization_1/AssignNewValue_3�?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_1/ReadVariableOp�0eye_model/batch_normalization_1/ReadVariableOp_1�0eye_model/batch_normalization_1/ReadVariableOp_2�0eye_model/batch_normalization_1/ReadVariableOp_3�.eye_model/batch_normalization_2/AssignNewValue�0eye_model/batch_normalization_2/AssignNewValue_1�0eye_model/batch_normalization_2/AssignNewValue_2�0eye_model/batch_normalization_2/AssignNewValue_3�?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_2/ReadVariableOp�0eye_model/batch_normalization_2/ReadVariableOp_1�0eye_model/batch_normalization_2/ReadVariableOp_2�0eye_model/batch_normalization_2/ReadVariableOp_3�'eye_model/conv2d/BiasAdd/ReadVariableOp�)eye_model/conv2d/BiasAdd_1/ReadVariableOp�&eye_model/conv2d/Conv2D/ReadVariableOp�(eye_model/conv2d/Conv2D_1/ReadVariableOp�)eye_model/conv2d_1/BiasAdd/ReadVariableOp�+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_1/Conv2D/ReadVariableOp�*eye_model/conv2d_1/Conv2D_1/ReadVariableOp�)eye_model/conv2d_2/BiasAdd/ReadVariableOp�+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_2/Conv2D/ReadVariableOp�*eye_model/conv2d_2/Conv2D_1/ReadVariableOp�4landmark_model/batch_normalization_3/AssignMovingAvg�Clandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp�6landmark_model/batch_normalization_3/AssignMovingAvg_1�Elandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp�=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�4landmark_model/batch_normalization_4/AssignMovingAvg�Clandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp�6landmark_model/batch_normalization_4/AssignMovingAvg_1�Elandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp�=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�4landmark_model/batch_normalization_5/AssignMovingAvg�Clandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp�6landmark_model/batch_normalization_5/AssignMovingAvg_1�Elandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp�=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�+landmark_model/dense/BiasAdd/ReadVariableOp�*landmark_model/dense/MatMul/ReadVariableOp�-landmark_model/dense_1/BiasAdd/ReadVariableOp�,landmark_model/dense_1/MatMul/ReadVariableOp�-landmark_model/dense_2/BiasAdd/ReadVariableOp�,landmark_model/dense_2/MatMul/ReadVariableOp�
&eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2DConv2D	l_r_lms_0.eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
'eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAddBiasAdd eye_model/conv2d/Conv2D:output:0/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
,eye_model/batch_normalization/ReadVariableOpReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_1ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV3!eye_model/conv2d/BiasAdd:output:04eye_model/batch_normalization/ReadVariableOp:value:06eye_model/batch_normalization/ReadVariableOp_1:value:0Eeye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Geye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
,eye_model/batch_normalization/AssignNewValueAssignVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource;eye_model/batch_normalization/FusedBatchNormV3:batch_mean:0>^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
.eye_model/batch_normalization/AssignNewValue_1AssignVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource?eye_model/batch_normalization/FusedBatchNormV3:batch_variance:0@^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
eye_model/leaky_re_lu/LeakyRelu	LeakyRelu2eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
#eye_model/average_pooling2d/AvgPoolAvgPool-eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
d
eye_model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout/MulMul,eye_model/average_pooling2d/AvgPool:output:0(eye_model/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:��������� {
eye_model/dropout/dropout/ShapeShape,eye_model/average_pooling2d/AvgPool:output:0*
T0*
_output_shapes
:�
6eye_model/dropout/dropout/random_uniform/RandomUniformRandomUniform(eye_model/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0m
(eye_model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
&eye_model/dropout/dropout/GreaterEqualGreaterEqual?eye_model/dropout/dropout/random_uniform/RandomUniform:output:01eye_model/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� �
eye_model/dropout/dropout/CastCast*eye_model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:��������� �
eye_model/dropout/dropout/Mul_1Mul!eye_model/dropout/dropout/Mul:z:0"eye_model/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:��������� �
(eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2DConv2D#eye_model/dropout/dropout/Mul_1:z:00eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
)eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAddBiasAdd"eye_model/conv2d_1/Conv2D:output:01eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.eye_model/batch_normalization_1/ReadVariableOpReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_1/BiasAdd:output:06eye_model/batch_normalization_1/ReadVariableOp:value:08eye_model/batch_normalization_1/ReadVariableOp_1:value:0Geye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
.eye_model/batch_normalization_1/AssignNewValueAssignVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource=eye_model/batch_normalization_1/FusedBatchNormV3:batch_mean:0@^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_1/AssignNewValue_1AssignVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceAeye_model/batch_normalization_1/FusedBatchNormV3:batch_variance:0B^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_1	LeakyRelu4eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_1AvgPool/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_1/MulMul.eye_model/average_pooling2d/AvgPool_1:output:0*eye_model/dropout/dropout_1/Const:output:0*
T0*/
_output_shapes
:���������@
!eye_model/dropout/dropout_1/ShapeShape.eye_model/average_pooling2d/AvgPool_1:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_1/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_1/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0o
*eye_model/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_1/GreaterEqualGreaterEqualAeye_model/dropout/dropout_1/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
 eye_model/dropout/dropout_1/CastCast,eye_model/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
!eye_model/dropout/dropout_1/Mul_1Mul#eye_model/dropout/dropout_1/Mul:z:0$eye_model/dropout/dropout_1/Cast:y:0*
T0*/
_output_shapes
:���������@�
(eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2DConv2D%eye_model/dropout/dropout_1/Mul_1:z:00eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAddBiasAdd"eye_model/conv2d_2/Conv2D:output:01eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
.eye_model/batch_normalization_2/ReadVariableOpReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_2/BiasAdd:output:06eye_model/batch_normalization_2/ReadVariableOp:value:08eye_model/batch_normalization_2/ReadVariableOp_1:value:0Geye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
.eye_model/batch_normalization_2/AssignNewValueAssignVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource=eye_model/batch_normalization_2/FusedBatchNormV3:batch_mean:0@^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_2/AssignNewValue_1AssignVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceAeye_model/batch_normalization_2/FusedBatchNormV3:batch_variance:0B^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_2	LeakyRelu4eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_2AvgPool/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_2/MulMul.eye_model/average_pooling2d/AvgPool_2:output:0*eye_model/dropout/dropout_2/Const:output:0*
T0*0
_output_shapes
:����������
!eye_model/dropout/dropout_2/ShapeShape.eye_model/average_pooling2d/AvgPool_2:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_2/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_2/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0o
*eye_model/dropout/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_2/GreaterEqualGreaterEqualAeye_model/dropout/dropout_2/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_2/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
 eye_model/dropout/dropout_2/CastCast,eye_model/dropout/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
!eye_model/dropout/dropout_2/Mul_1Mul#eye_model/dropout/dropout_2/Mul:z:0$eye_model/dropout/dropout_2/Cast:y:0*
T0*0
_output_shapes
:�����������
(eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2D_1Conv2D	l_r_lms_10eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
)eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAdd_1BiasAdd"eye_model/conv2d/Conv2D_1:output:01eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
.eye_model/batch_normalization/ReadVariableOp_2ReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_3ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource-^eye_model/batch_normalization/AssignNewValue*
_output_shapes
: *
dtype0�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource/^eye_model/batch_normalization/AssignNewValue_1*
_output_shapes
: *
dtype0�
0eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3#eye_model/conv2d/BiasAdd_1:output:06eye_model/batch_normalization/ReadVariableOp_2:value:06eye_model/batch_normalization/ReadVariableOp_3:value:0Geye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Ieye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
.eye_model/batch_normalization/AssignNewValue_2AssignVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource=eye_model/batch_normalization/FusedBatchNormV3_1:batch_mean:0-^eye_model/batch_normalization/AssignNewValue@^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
.eye_model/batch_normalization/AssignNewValue_3AssignVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceAeye_model/batch_normalization/FusedBatchNormV3_1:batch_variance:0/^eye_model/batch_normalization/AssignNewValue_1B^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_3	LeakyRelu4eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_3AvgPool/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_3/MulMul.eye_model/average_pooling2d/AvgPool_3:output:0*eye_model/dropout/dropout_3/Const:output:0*
T0*/
_output_shapes
:��������� 
!eye_model/dropout/dropout_3/ShapeShape.eye_model/average_pooling2d/AvgPool_3:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_3/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_3/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0o
*eye_model/dropout/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_3/GreaterEqualGreaterEqualAeye_model/dropout/dropout_3/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� �
 eye_model/dropout/dropout_3/CastCast,eye_model/dropout/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:��������� �
!eye_model/dropout/dropout_3/Mul_1Mul#eye_model/dropout/dropout_3/Mul:z:0$eye_model/dropout/dropout_3/Cast:y:0*
T0*/
_output_shapes
:��������� �
*eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2D_1Conv2D%eye_model/dropout/dropout_3/Mul_1:z:02eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAdd_1BiasAdd$eye_model/conv2d_1/Conv2D_1:output:03eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource/^eye_model/batch_normalization_1/AssignNewValue*
_output_shapes
:@*
dtype0�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource1^eye_model/batch_normalization_1/AssignNewValue_1*
_output_shapes
:@*
dtype0�
2eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_1/BiasAdd_1:output:08eye_model/batch_normalization_1/ReadVariableOp_2:value:08eye_model/batch_normalization_1/ReadVariableOp_3:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
0eye_model/batch_normalization_1/AssignNewValue_2AssignVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource?eye_model/batch_normalization_1/FusedBatchNormV3_1:batch_mean:0/^eye_model/batch_normalization_1/AssignNewValueB^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_1/AssignNewValue_3AssignVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceCeye_model/batch_normalization_1/FusedBatchNormV3_1:batch_variance:01^eye_model/batch_normalization_1/AssignNewValue_1D^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_4	LeakyRelu6eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_4AvgPool/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_4/MulMul.eye_model/average_pooling2d/AvgPool_4:output:0*eye_model/dropout/dropout_4/Const:output:0*
T0*/
_output_shapes
:���������@
!eye_model/dropout/dropout_4/ShapeShape.eye_model/average_pooling2d/AvgPool_4:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_4/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_4/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0o
*eye_model/dropout/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_4/GreaterEqualGreaterEqualAeye_model/dropout/dropout_4/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
 eye_model/dropout/dropout_4/CastCast,eye_model/dropout/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
!eye_model/dropout/dropout_4/Mul_1Mul#eye_model/dropout/dropout_4/Mul:z:0$eye_model/dropout/dropout_4/Cast:y:0*
T0*/
_output_shapes
:���������@�
*eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2D_1Conv2D%eye_model/dropout/dropout_4/Mul_1:z:02eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAdd_1BiasAdd$eye_model/conv2d_2/Conv2D_1:output:03eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
0eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource/^eye_model/batch_normalization_2/AssignNewValue*
_output_shapes	
:�*
dtype0�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource1^eye_model/batch_normalization_2/AssignNewValue_1*
_output_shapes	
:�*
dtype0�
2eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_2/BiasAdd_1:output:08eye_model/batch_normalization_2/ReadVariableOp_2:value:08eye_model/batch_normalization_2/ReadVariableOp_3:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
0eye_model/batch_normalization_2/AssignNewValue_2AssignVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource?eye_model/batch_normalization_2/FusedBatchNormV3_1:batch_mean:0/^eye_model/batch_normalization_2/AssignNewValueB^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_2/AssignNewValue_3AssignVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceCeye_model/batch_normalization_2/FusedBatchNormV3_1:batch_variance:01^eye_model/batch_normalization_2/AssignNewValue_1D^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_5	LeakyRelu6eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_5AvgPool/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_5/MulMul.eye_model/average_pooling2d/AvgPool_5:output:0*eye_model/dropout/dropout_5/Const:output:0*
T0*0
_output_shapes
:����������
!eye_model/dropout/dropout_5/ShapeShape.eye_model/average_pooling2d/AvgPool_5:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_5/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_5/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0o
*eye_model/dropout/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_5/GreaterEqualGreaterEqualAeye_model/dropout/dropout_5/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_5/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
 eye_model/dropout/dropout_5/CastCast,eye_model/dropout/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
!eye_model/dropout/dropout_5/Mul_1Mul#eye_model/dropout/dropout_5/Mul:z:0$eye_model/dropout/dropout_5/Cast:y:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten/ReshapeReshape%eye_model/dropout/dropout_2/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:����������`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_1/ReshapeReshape%eye_model/dropout/dropout_5/Mul_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
*landmark_model/dense/MatMul/ReadVariableOpReadVariableOp3landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense/MatMulMatMul	l_r_lms_22landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOp4landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
landmark_model/dense/BiasAddBiasAdd%landmark_model/dense/MatMul:product:03landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Clandmark_model/batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
1landmark_model/batch_normalization_3/moments/meanMean%landmark_model/dense/BiasAdd:output:0Llandmark_model/batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
9landmark_model/batch_normalization_3/moments/StopGradientStopGradient:landmark_model/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:	��
>landmark_model/batch_normalization_3/moments/SquaredDifferenceSquaredDifference%landmark_model/dense/BiasAdd:output:0Blandmark_model/batch_normalization_3/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Glandmark_model/batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
5landmark_model/batch_normalization_3/moments/varianceMeanBlandmark_model/batch_normalization_3/moments/SquaredDifference:z:0Plandmark_model/batch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
4landmark_model/batch_normalization_3/moments/SqueezeSqueeze:landmark_model/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
6landmark_model/batch_normalization_3/moments/Squeeze_1Squeeze>landmark_model/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 
:landmark_model/batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Clandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOpLlandmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8landmark_model/batch_normalization_3/AssignMovingAvg/subSubKlandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0=landmark_model/batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
8landmark_model/batch_normalization_3/AssignMovingAvg/mulMul<landmark_model/batch_normalization_3/AssignMovingAvg/sub:z:0Clandmark_model/batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/AssignMovingAvgAssignSubVariableOpLlandmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource<landmark_model/batch_normalization_3/AssignMovingAvg/mul:z:0D^landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
<landmark_model/batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Elandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOpNlandmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:landmark_model/batch_normalization_3/AssignMovingAvg_1/subSubMlandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0?landmark_model/batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
:landmark_model/batch_normalization_3/AssignMovingAvg_1/mulMul>landmark_model/batch_normalization_3/AssignMovingAvg_1/sub:z:0Elandmark_model/batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
6landmark_model/batch_normalization_3/AssignMovingAvg_1AssignSubVariableOpNlandmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource>landmark_model/batch_normalization_3/AssignMovingAvg_1/mul:z:0F^landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0y
4landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_3/batchnorm/addAddV2?landmark_model/batch_normalization_3/moments/Squeeze_1:output:0=landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/mulMul8landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/mul_1Mul%landmark_model/dense/BiasAdd:output:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
4landmark_model/batch_normalization_3/batchnorm/mul_2Mul=landmark_model/batch_normalization_3/moments/Squeeze:output:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/subSubElandmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:08landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/add_1AddV28landmark_model/batch_normalization_3/batchnorm/mul_1:z:06landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
landmark_model/re_lu/ReluRelu8landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
,landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense_1/MatMulMatMul'landmark_model/re_lu/Relu:activations:04landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_1/BiasAddBiasAdd'landmark_model/dense_1/MatMul:product:05landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Clandmark_model/batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
1landmark_model/batch_normalization_4/moments/meanMean'landmark_model/dense_1/BiasAdd:output:0Llandmark_model/batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
9landmark_model/batch_normalization_4/moments/StopGradientStopGradient:landmark_model/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes

:�
>landmark_model/batch_normalization_4/moments/SquaredDifferenceSquaredDifference'landmark_model/dense_1/BiasAdd:output:0Blandmark_model/batch_normalization_4/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Glandmark_model/batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
5landmark_model/batch_normalization_4/moments/varianceMeanBlandmark_model/batch_normalization_4/moments/SquaredDifference:z:0Plandmark_model/batch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
4landmark_model/batch_normalization_4/moments/SqueezeSqueeze:landmark_model/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
6landmark_model/batch_normalization_4/moments/Squeeze_1Squeeze>landmark_model/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 
:landmark_model/batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Clandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOpLlandmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
8landmark_model/batch_normalization_4/AssignMovingAvg/subSubKlandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0=landmark_model/batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes
:�
8landmark_model/batch_normalization_4/AssignMovingAvg/mulMul<landmark_model/batch_normalization_4/AssignMovingAvg/sub:z:0Clandmark_model/batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/AssignMovingAvgAssignSubVariableOpLlandmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource<landmark_model/batch_normalization_4/AssignMovingAvg/mul:z:0D^landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
<landmark_model/batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Elandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOpNlandmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
:landmark_model/batch_normalization_4/AssignMovingAvg_1/subSubMlandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0?landmark_model/batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
:landmark_model/batch_normalization_4/AssignMovingAvg_1/mulMul>landmark_model/batch_normalization_4/AssignMovingAvg_1/sub:z:0Elandmark_model/batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
6landmark_model/batch_normalization_4/AssignMovingAvg_1AssignSubVariableOpNlandmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource>landmark_model/batch_normalization_4/AssignMovingAvg_1/mul:z:0F^landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0y
4landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_4/batchnorm/addAddV2?landmark_model/batch_normalization_4/moments/Squeeze_1:output:0=landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/mulMul8landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/mul_1Mul'landmark_model/dense_1/BiasAdd:output:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
4landmark_model/batch_normalization_4/batchnorm/mul_2Mul=landmark_model/batch_normalization_4/moments/Squeeze:output:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/subSubElandmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:08landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/add_1AddV28landmark_model/batch_normalization_4/batchnorm/mul_1:z:06landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_1Relu8landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
,landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
landmark_model/dense_2/MatMulMatMul)landmark_model/re_lu/Relu_1:activations:04landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_2/BiasAddBiasAdd'landmark_model/dense_2/MatMul:product:05landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Clandmark_model/batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
1landmark_model/batch_normalization_5/moments/meanMean'landmark_model/dense_2/BiasAdd:output:0Llandmark_model/batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
9landmark_model/batch_normalization_5/moments/StopGradientStopGradient:landmark_model/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes

:�
>landmark_model/batch_normalization_5/moments/SquaredDifferenceSquaredDifference'landmark_model/dense_2/BiasAdd:output:0Blandmark_model/batch_normalization_5/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Glandmark_model/batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
5landmark_model/batch_normalization_5/moments/varianceMeanBlandmark_model/batch_normalization_5/moments/SquaredDifference:z:0Plandmark_model/batch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
4landmark_model/batch_normalization_5/moments/SqueezeSqueeze:landmark_model/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
6landmark_model/batch_normalization_5/moments/Squeeze_1Squeeze>landmark_model/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 
:landmark_model/batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Clandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOpLlandmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
8landmark_model/batch_normalization_5/AssignMovingAvg/subSubKlandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0=landmark_model/batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes
:�
8landmark_model/batch_normalization_5/AssignMovingAvg/mulMul<landmark_model/batch_normalization_5/AssignMovingAvg/sub:z:0Clandmark_model/batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/AssignMovingAvgAssignSubVariableOpLlandmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource<landmark_model/batch_normalization_5/AssignMovingAvg/mul:z:0D^landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
<landmark_model/batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Elandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOpNlandmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
:landmark_model/batch_normalization_5/AssignMovingAvg_1/subSubMlandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0?landmark_model/batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
:landmark_model/batch_normalization_5/AssignMovingAvg_1/mulMul>landmark_model/batch_normalization_5/AssignMovingAvg_1/sub:z:0Elandmark_model/batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
6landmark_model/batch_normalization_5/AssignMovingAvg_1AssignSubVariableOpNlandmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource>landmark_model/batch_normalization_5/AssignMovingAvg_1/mul:z:0F^landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0y
4landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_5/batchnorm/addAddV2?landmark_model/batch_normalization_5/moments/Squeeze_1:output:0=landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/mulMul8landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/mul_1Mul'landmark_model/dense_2/BiasAdd:output:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
4landmark_model/batch_normalization_5/batchnorm/mul_2Mul=landmark_model/batch_normalization_5/moments/Squeeze:output:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/subSubElandmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:08landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/add_1AddV28landmark_model/batch_normalization_5/batchnorm/mul_1:z:06landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_2Relu8landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0)landmark_model/re_lu/Relu_2:activations:0concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_3/MatMulMatMulconcat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_6/moments/meanMeandense_3/BiasAdd:output:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes

:�
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedense_3/BiasAdd:output:03batch_normalization_6/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes
:�
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/mul_1Muldense_3/BiasAdd:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *]t�?�
dropout_1/dropout/MulMul)batch_normalization_6/batchnorm/add_1:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:���������p
dropout_1/dropout/ShapeShape)batch_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:����������
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:���������c
re_lu_1/ReluReludropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������i
IdentityIdentityre_lu_1/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������"
NoOpNoOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp-^eye_model/batch_normalization/AssignNewValue/^eye_model/batch_normalization/AssignNewValue_1/^eye_model/batch_normalization/AssignNewValue_2/^eye_model/batch_normalization/AssignNewValue_3>^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp@^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpB^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1-^eye_model/batch_normalization/ReadVariableOp/^eye_model/batch_normalization/ReadVariableOp_1/^eye_model/batch_normalization/ReadVariableOp_2/^eye_model/batch_normalization/ReadVariableOp_3/^eye_model/batch_normalization_1/AssignNewValue1^eye_model/batch_normalization_1/AssignNewValue_11^eye_model/batch_normalization_1/AssignNewValue_21^eye_model/batch_normalization_1/AssignNewValue_3@^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_1/ReadVariableOp1^eye_model/batch_normalization_1/ReadVariableOp_11^eye_model/batch_normalization_1/ReadVariableOp_21^eye_model/batch_normalization_1/ReadVariableOp_3/^eye_model/batch_normalization_2/AssignNewValue1^eye_model/batch_normalization_2/AssignNewValue_11^eye_model/batch_normalization_2/AssignNewValue_21^eye_model/batch_normalization_2/AssignNewValue_3@^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_2/ReadVariableOp1^eye_model/batch_normalization_2/ReadVariableOp_11^eye_model/batch_normalization_2/ReadVariableOp_21^eye_model/batch_normalization_2/ReadVariableOp_3(^eye_model/conv2d/BiasAdd/ReadVariableOp*^eye_model/conv2d/BiasAdd_1/ReadVariableOp'^eye_model/conv2d/Conv2D/ReadVariableOp)^eye_model/conv2d/Conv2D_1/ReadVariableOp*^eye_model/conv2d_1/BiasAdd/ReadVariableOp,^eye_model/conv2d_1/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_1/Conv2D/ReadVariableOp+^eye_model/conv2d_1/Conv2D_1/ReadVariableOp*^eye_model/conv2d_2/BiasAdd/ReadVariableOp,^eye_model/conv2d_2/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_2/Conv2D/ReadVariableOp+^eye_model/conv2d_2/Conv2D_1/ReadVariableOp5^landmark_model/batch_normalization_3/AssignMovingAvgD^landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp7^landmark_model/batch_normalization_3/AssignMovingAvg_1F^landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp>^landmark_model/batch_normalization_3/batchnorm/ReadVariableOpB^landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp5^landmark_model/batch_normalization_4/AssignMovingAvgD^landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp7^landmark_model/batch_normalization_4/AssignMovingAvg_1F^landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp>^landmark_model/batch_normalization_4/batchnorm/ReadVariableOpB^landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp5^landmark_model/batch_normalization_5/AssignMovingAvgD^landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp7^landmark_model/batch_normalization_5/AssignMovingAvg_1F^landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp>^landmark_model/batch_normalization_5/batchnorm/ReadVariableOpB^landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp,^landmark_model/dense/BiasAdd/ReadVariableOp+^landmark_model/dense/MatMul/ReadVariableOp.^landmark_model/dense_1/BiasAdd/ReadVariableOp-^landmark_model/dense_1/MatMul/ReadVariableOp.^landmark_model/dense_2/BiasAdd/ReadVariableOp-^landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2\
,eye_model/batch_normalization/AssignNewValue,eye_model/batch_normalization/AssignNewValue2`
.eye_model/batch_normalization/AssignNewValue_1.eye_model/batch_normalization/AssignNewValue_12`
.eye_model/batch_normalization/AssignNewValue_2.eye_model/batch_normalization/AssignNewValue_22`
.eye_model/batch_normalization/AssignNewValue_3.eye_model/batch_normalization/AssignNewValue_32~
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12\
,eye_model/batch_normalization/ReadVariableOp,eye_model/batch_normalization/ReadVariableOp2`
.eye_model/batch_normalization/ReadVariableOp_1.eye_model/batch_normalization/ReadVariableOp_12`
.eye_model/batch_normalization/ReadVariableOp_2.eye_model/batch_normalization/ReadVariableOp_22`
.eye_model/batch_normalization/ReadVariableOp_3.eye_model/batch_normalization/ReadVariableOp_32`
.eye_model/batch_normalization_1/AssignNewValue.eye_model/batch_normalization_1/AssignNewValue2d
0eye_model/batch_normalization_1/AssignNewValue_10eye_model/batch_normalization_1/AssignNewValue_12d
0eye_model/batch_normalization_1/AssignNewValue_20eye_model/batch_normalization_1/AssignNewValue_22d
0eye_model/batch_normalization_1/AssignNewValue_30eye_model/batch_normalization_1/AssignNewValue_32�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_1/ReadVariableOp.eye_model/batch_normalization_1/ReadVariableOp2d
0eye_model/batch_normalization_1/ReadVariableOp_10eye_model/batch_normalization_1/ReadVariableOp_12d
0eye_model/batch_normalization_1/ReadVariableOp_20eye_model/batch_normalization_1/ReadVariableOp_22d
0eye_model/batch_normalization_1/ReadVariableOp_30eye_model/batch_normalization_1/ReadVariableOp_32`
.eye_model/batch_normalization_2/AssignNewValue.eye_model/batch_normalization_2/AssignNewValue2d
0eye_model/batch_normalization_2/AssignNewValue_10eye_model/batch_normalization_2/AssignNewValue_12d
0eye_model/batch_normalization_2/AssignNewValue_20eye_model/batch_normalization_2/AssignNewValue_22d
0eye_model/batch_normalization_2/AssignNewValue_30eye_model/batch_normalization_2/AssignNewValue_32�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_2/ReadVariableOp.eye_model/batch_normalization_2/ReadVariableOp2d
0eye_model/batch_normalization_2/ReadVariableOp_10eye_model/batch_normalization_2/ReadVariableOp_12d
0eye_model/batch_normalization_2/ReadVariableOp_20eye_model/batch_normalization_2/ReadVariableOp_22d
0eye_model/batch_normalization_2/ReadVariableOp_30eye_model/batch_normalization_2/ReadVariableOp_32R
'eye_model/conv2d/BiasAdd/ReadVariableOp'eye_model/conv2d/BiasAdd/ReadVariableOp2V
)eye_model/conv2d/BiasAdd_1/ReadVariableOp)eye_model/conv2d/BiasAdd_1/ReadVariableOp2P
&eye_model/conv2d/Conv2D/ReadVariableOp&eye_model/conv2d/Conv2D/ReadVariableOp2T
(eye_model/conv2d/Conv2D_1/ReadVariableOp(eye_model/conv2d/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_1/BiasAdd/ReadVariableOp)eye_model/conv2d_1/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_1/Conv2D/ReadVariableOp(eye_model/conv2d_1/Conv2D/ReadVariableOp2X
*eye_model/conv2d_1/Conv2D_1/ReadVariableOp*eye_model/conv2d_1/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_2/BiasAdd/ReadVariableOp)eye_model/conv2d_2/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_2/Conv2D/ReadVariableOp(eye_model/conv2d_2/Conv2D/ReadVariableOp2X
*eye_model/conv2d_2/Conv2D_1/ReadVariableOp*eye_model/conv2d_2/Conv2D_1/ReadVariableOp2l
4landmark_model/batch_normalization_3/AssignMovingAvg4landmark_model/batch_normalization_3/AssignMovingAvg2�
Clandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpClandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp2p
6landmark_model/batch_normalization_3/AssignMovingAvg_16landmark_model/batch_normalization_3/AssignMovingAvg_12�
Elandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpElandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2~
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2l
4landmark_model/batch_normalization_4/AssignMovingAvg4landmark_model/batch_normalization_4/AssignMovingAvg2�
Clandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpClandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp2p
6landmark_model/batch_normalization_4/AssignMovingAvg_16landmark_model/batch_normalization_4/AssignMovingAvg_12�
Elandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpElandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2~
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2l
4landmark_model/batch_normalization_5/AssignMovingAvg4landmark_model/batch_normalization_5/AssignMovingAvg2�
Clandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpClandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp2p
6landmark_model/batch_normalization_5/AssignMovingAvg_16landmark_model/batch_normalization_5/AssignMovingAvg_12�
Elandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpElandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2~
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2Z
+landmark_model/dense/BiasAdd/ReadVariableOp+landmark_model/dense/BiasAdd/ReadVariableOp2X
*landmark_model/dense/MatMul/ReadVariableOp*landmark_model/dense/MatMul/ReadVariableOp2^
-landmark_model/dense_1/BiasAdd/ReadVariableOp-landmark_model/dense_1/BiasAdd/ReadVariableOp2\
,landmark_model/dense_1/MatMul/ReadVariableOp,landmark_model/dense_1/MatMul/ReadVariableOp2^
-landmark_model/dense_2/BiasAdd/ReadVariableOp-landmark_model/dense_2/BiasAdd/ReadVariableOp2\
,landmark_model/dense_2/MatMul/ReadVariableOp,landmark_model/dense_2/MatMul/ReadVariableOp:\ X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/0:\X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/1:RN
'
_output_shapes
:���������
#
_user_specified_name	l_r_lms/2
�
�
6__inference_batch_normalization_4_layer_call_fn_988329

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_984202o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_984284

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
ۓ
�S
A__inference_model_layer_call_and_return_conditional_losses_987082
inputs_0
inputs_1
inputs_2Y
?gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource: N
@gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource: S
Egazetrack_model_eye_model_batch_normalization_readvariableop_resource: U
Ggazetrack_model_eye_model_batch_normalization_readvariableop_1_resource: d
Vgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: f
Xgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: [
Agazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource: @P
Bgazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource:@U
Ggazetrack_model_eye_model_batch_normalization_1_readvariableop_resource:@W
Igazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource:@f
Xgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@h
Zgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@\
Agazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource:@�Q
Bgazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource:	�V
Ggazetrack_model_eye_model_batch_normalization_2_readvariableop_resource:	�X
Igazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource:	�g
Xgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�i
Zgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�V
Cgazetrack_model_landmark_model_dense_matmul_readvariableop_resource:	�S
Dgazetrack_model_landmark_model_dense_biasadd_readvariableop_resource:	�k
\gazetrack_model_landmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource:	�m
^gazetrack_model_landmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource:	�i
Zgazetrack_model_landmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�e
Vgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�X
Egazetrack_model_landmark_model_dense_1_matmul_readvariableop_resource:	�T
Fgazetrack_model_landmark_model_dense_1_biasadd_readvariableop_resource:j
\gazetrack_model_landmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource:l
^gazetrack_model_landmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource:h
Zgazetrack_model_landmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:d
Vgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_resource:W
Egazetrack_model_landmark_model_dense_2_matmul_readvariableop_resource:T
Fgazetrack_model_landmark_model_dense_2_biasadd_readvariableop_resource:j
\gazetrack_model_landmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource:l
^gazetrack_model_landmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource:h
Zgazetrack_model_landmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:d
Vgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_resource:I
6gazetrack_model_dense_3_matmul_readvariableop_resource:	�E
7gazetrack_model_dense_3_biasadd_readvariableop_resource:[
Mgazetrack_model_batch_normalization_6_assignmovingavg_readvariableop_resource:]
Ogazetrack_model_batch_normalization_6_assignmovingavg_1_readvariableop_resource:Y
Kgazetrack_model_batch_normalization_6_batchnorm_mul_readvariableop_resource:U
Ggazetrack_model_batch_normalization_6_batchnorm_readvariableop_resource:8
&dense_6_matmul_readvariableop_resource:5
'dense_6_biasadd_readvariableop_resource:K
=batch_normalization_8_assignmovingavg_readvariableop_resource:M
?batch_normalization_8_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_8_batchnorm_mul_readvariableop_resource:E
7batch_normalization_8_batchnorm_readvariableop_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity��%batch_normalization_8/AssignMovingAvg�4batch_normalization_8/AssignMovingAvg/ReadVariableOp�'batch_normalization_8/AssignMovingAvg_1�6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_8/batchnorm/ReadVariableOp�2batch_normalization_8/batchnorm/mul/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�5gazetrack_model/batch_normalization_6/AssignMovingAvg�Dgazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOp�7gazetrack_model/batch_normalization_6/AssignMovingAvg_1�Fgazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp�>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp�Bgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp�.gazetrack_model/dense_3/BiasAdd/ReadVariableOp�-gazetrack_model/dense_3/MatMul/ReadVariableOp�<gazetrack_model/eye_model/batch_normalization/AssignNewValue�>gazetrack_model/eye_model/batch_normalization/AssignNewValue_1�>gazetrack_model/eye_model/batch_normalization/AssignNewValue_2�>gazetrack_model/eye_model/batch_normalization/AssignNewValue_3�Mgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�<gazetrack_model/eye_model/batch_normalization/ReadVariableOp�>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1�>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2�>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3�>gazetrack_model/eye_model/batch_normalization_1/AssignNewValue�@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_1�@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_2�@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_3�Ogazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp�@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1�@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2�@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3�>gazetrack_model/eye_model/batch_normalization_2/AssignNewValue�@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_1�@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_2�@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_3�Ogazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp�@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1�@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2�@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3�7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp�9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp�6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp�8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp�9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp�;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp�:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp�9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp�;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp�:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp�Dgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg�Sgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp�Fgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1�Ugazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp�Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�Qgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�Dgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg�Sgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp�Fgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1�Ugazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp�Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�Qgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�Dgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg�Sgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp�Fgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1�Ugazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp�Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�Qgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp�:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp�=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp�<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp�=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp�<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp�
6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOp?gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
'gazetrack_model/eye_model/conv2d/Conv2DConv2Dinputs_0>gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp@gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
(gazetrack_model/eye_model/conv2d/BiasAddBiasAdd0gazetrack_model/eye_model/conv2d/Conv2D:output:0?gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
<gazetrack_model/eye_model/batch_normalization/ReadVariableOpReadVariableOpEgazetrack_model_eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1ReadVariableOpGgazetrack_model_eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Mgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpVgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
>gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV31gazetrack_model/eye_model/conv2d/BiasAdd:output:0Dgazetrack_model/eye_model/batch_normalization/ReadVariableOp:value:0Fgazetrack_model/eye_model/batch_normalization/ReadVariableOp_1:value:0Ugazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Wgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
<gazetrack_model/eye_model/batch_normalization/AssignNewValueAssignVariableOpVgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resourceKgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3:batch_mean:0N^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
>gazetrack_model/eye_model/batch_normalization/AssignNewValue_1AssignVariableOpXgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceOgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3:batch_variance:0P^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu	LeakyReluBgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
3gazetrack_model/eye_model/average_pooling2d/AvgPoolAvgPool=gazetrack_model/eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
t
/gazetrack_model/eye_model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
-gazetrack_model/eye_model/dropout/dropout/MulMul<gazetrack_model/eye_model/average_pooling2d/AvgPool:output:08gazetrack_model/eye_model/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:��������� �
/gazetrack_model/eye_model/dropout/dropout/ShapeShape<gazetrack_model/eye_model/average_pooling2d/AvgPool:output:0*
T0*
_output_shapes
:�
Fgazetrack_model/eye_model/dropout/dropout/random_uniform/RandomUniformRandomUniform8gazetrack_model/eye_model/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0}
8gazetrack_model/eye_model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
6gazetrack_model/eye_model/dropout/dropout/GreaterEqualGreaterEqualOgazetrack_model/eye_model/dropout/dropout/random_uniform/RandomUniform:output:0Agazetrack_model/eye_model/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� �
.gazetrack_model/eye_model/dropout/dropout/CastCast:gazetrack_model/eye_model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:��������� �
/gazetrack_model/eye_model/dropout/dropout/Mul_1Mul1gazetrack_model/eye_model/dropout/dropout/Mul:z:02gazetrack_model/eye_model/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:��������� �
8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
)gazetrack_model/eye_model/conv2d_1/Conv2DConv2D3gazetrack_model/eye_model/dropout/dropout/Mul_1:z:0@gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
*gazetrack_model/eye_model/conv2d_1/BiasAddBiasAdd2gazetrack_model/eye_model/conv2d_1/Conv2D:output:0Agazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpReadVariableOpGgazetrack_model_eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOpIgazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Ogazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
@gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV33gazetrack_model/eye_model/conv2d_1/BiasAdd:output:0Fgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp:value:0Hgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1:value:0Wgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Ygazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
>gazetrack_model/eye_model/batch_normalization_1/AssignNewValueAssignVariableOpXgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceMgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3:batch_mean:0P^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_1AssignVariableOpZgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceQgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3:batch_variance:0R^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_1	LeakyReluDgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_1AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
v
1gazetrack_model/eye_model/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
/gazetrack_model/eye_model/dropout/dropout_1/MulMul>gazetrack_model/eye_model/average_pooling2d/AvgPool_1:output:0:gazetrack_model/eye_model/dropout/dropout_1/Const:output:0*
T0*/
_output_shapes
:���������@�
1gazetrack_model/eye_model/dropout/dropout_1/ShapeShape>gazetrack_model/eye_model/average_pooling2d/AvgPool_1:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/eye_model/dropout/dropout_1/random_uniform/RandomUniformRandomUniform:gazetrack_model/eye_model/dropout/dropout_1/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0
:gazetrack_model/eye_model/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
8gazetrack_model/eye_model/dropout/dropout_1/GreaterEqualGreaterEqualQgazetrack_model/eye_model/dropout/dropout_1/random_uniform/RandomUniform:output:0Cgazetrack_model/eye_model/dropout/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
0gazetrack_model/eye_model/dropout/dropout_1/CastCast<gazetrack_model/eye_model/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
1gazetrack_model/eye_model/dropout/dropout_1/Mul_1Mul3gazetrack_model/eye_model/dropout/dropout_1/Mul:z:04gazetrack_model/eye_model/dropout/dropout_1/Cast:y:0*
T0*/
_output_shapes
:���������@�
8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
)gazetrack_model/eye_model/conv2d_2/Conv2DConv2D5gazetrack_model/eye_model/dropout/dropout_1/Mul_1:z:0@gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*gazetrack_model/eye_model/conv2d_2/BiasAddBiasAdd2gazetrack_model/eye_model/conv2d_2/Conv2D:output:0Agazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpReadVariableOpGgazetrack_model_eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOpIgazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Ogazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
@gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV33gazetrack_model/eye_model/conv2d_2/BiasAdd:output:0Fgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp:value:0Hgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1:value:0Wgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ygazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
>gazetrack_model/eye_model/batch_normalization_2/AssignNewValueAssignVariableOpXgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceMgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3:batch_mean:0P^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_1AssignVariableOpZgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceQgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3:batch_variance:0R^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_2	LeakyReluDgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_2AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
v
1gazetrack_model/eye_model/dropout/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
/gazetrack_model/eye_model/dropout/dropout_2/MulMul>gazetrack_model/eye_model/average_pooling2d/AvgPool_2:output:0:gazetrack_model/eye_model/dropout/dropout_2/Const:output:0*
T0*0
_output_shapes
:�����������
1gazetrack_model/eye_model/dropout/dropout_2/ShapeShape>gazetrack_model/eye_model/average_pooling2d/AvgPool_2:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/eye_model/dropout/dropout_2/random_uniform/RandomUniformRandomUniform:gazetrack_model/eye_model/dropout/dropout_2/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0
:gazetrack_model/eye_model/dropout/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
8gazetrack_model/eye_model/dropout/dropout_2/GreaterEqualGreaterEqualQgazetrack_model/eye_model/dropout/dropout_2/random_uniform/RandomUniform:output:0Cgazetrack_model/eye_model/dropout/dropout_2/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
0gazetrack_model/eye_model/dropout/dropout_2/CastCast<gazetrack_model/eye_model/dropout/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
1gazetrack_model/eye_model/dropout/dropout_2/Mul_1Mul3gazetrack_model/eye_model/dropout/dropout_2/Mul:z:04gazetrack_model/eye_model/dropout/dropout_2/Cast:y:0*
T0*0
_output_shapes
:�����������
8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp?gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
)gazetrack_model/eye_model/conv2d/Conv2D_1Conv2Dinputs_1@gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp@gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
*gazetrack_model/eye_model/conv2d/BiasAdd_1BiasAdd2gazetrack_model/eye_model/conv2d/Conv2D_1:output:0Agazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2ReadVariableOpEgazetrack_model_eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3ReadVariableOpGgazetrack_model_eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpVgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource=^gazetrack_model/eye_model/batch_normalization/AssignNewValue*
_output_shapes
: *
dtype0�
Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpXgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource?^gazetrack_model/eye_model/batch_normalization/AssignNewValue_1*
_output_shapes
: *
dtype0�
@gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV33gazetrack_model/eye_model/conv2d/BiasAdd_1:output:0Fgazetrack_model/eye_model/batch_normalization/ReadVariableOp_2:value:0Fgazetrack_model/eye_model/batch_normalization/ReadVariableOp_3:value:0Wgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Ygazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
>gazetrack_model/eye_model/batch_normalization/AssignNewValue_2AssignVariableOpVgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resourceMgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1:batch_mean:0=^gazetrack_model/eye_model/batch_normalization/AssignNewValueP^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
>gazetrack_model/eye_model/batch_normalization/AssignNewValue_3AssignVariableOpXgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceQgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1:batch_variance:0?^gazetrack_model/eye_model/batch_normalization/AssignNewValue_1R^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_3	LeakyReluDgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_3AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
v
1gazetrack_model/eye_model/dropout/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
/gazetrack_model/eye_model/dropout/dropout_3/MulMul>gazetrack_model/eye_model/average_pooling2d/AvgPool_3:output:0:gazetrack_model/eye_model/dropout/dropout_3/Const:output:0*
T0*/
_output_shapes
:��������� �
1gazetrack_model/eye_model/dropout/dropout_3/ShapeShape>gazetrack_model/eye_model/average_pooling2d/AvgPool_3:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/eye_model/dropout/dropout_3/random_uniform/RandomUniformRandomUniform:gazetrack_model/eye_model/dropout/dropout_3/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0
:gazetrack_model/eye_model/dropout/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
8gazetrack_model/eye_model/dropout/dropout_3/GreaterEqualGreaterEqualQgazetrack_model/eye_model/dropout/dropout_3/random_uniform/RandomUniform:output:0Cgazetrack_model/eye_model/dropout/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� �
0gazetrack_model/eye_model/dropout/dropout_3/CastCast<gazetrack_model/eye_model/dropout/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:��������� �
1gazetrack_model/eye_model/dropout/dropout_3/Mul_1Mul3gazetrack_model/eye_model/dropout/dropout_3/Mul:z:04gazetrack_model/eye_model/dropout/dropout_3/Cast:y:0*
T0*/
_output_shapes
:��������� �
:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
+gazetrack_model/eye_model/conv2d_1/Conv2D_1Conv2D5gazetrack_model/eye_model/dropout/dropout_3/Mul_1:z:0Bgazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
,gazetrack_model/eye_model/conv2d_1/BiasAdd_1BiasAdd4gazetrack_model/eye_model/conv2d_1/Conv2D_1:output:0Cgazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOpGgazetrack_model_eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOpIgazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource?^gazetrack_model/eye_model/batch_normalization_1/AssignNewValue*
_output_shapes
:@*
dtype0�
Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceA^gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_1*
_output_shapes
:@*
dtype0�
Bgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV35gazetrack_model/eye_model/conv2d_1/BiasAdd_1:output:0Hgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2:value:0Hgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3:value:0Ygazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0[gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_2AssignVariableOpXgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceOgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1:batch_mean:0?^gazetrack_model/eye_model/batch_normalization_1/AssignNewValueR^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_3AssignVariableOpZgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceSgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1:batch_variance:0A^gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_1T^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_4	LeakyReluFgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_4AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
v
1gazetrack_model/eye_model/dropout/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
/gazetrack_model/eye_model/dropout/dropout_4/MulMul>gazetrack_model/eye_model/average_pooling2d/AvgPool_4:output:0:gazetrack_model/eye_model/dropout/dropout_4/Const:output:0*
T0*/
_output_shapes
:���������@�
1gazetrack_model/eye_model/dropout/dropout_4/ShapeShape>gazetrack_model/eye_model/average_pooling2d/AvgPool_4:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/eye_model/dropout/dropout_4/random_uniform/RandomUniformRandomUniform:gazetrack_model/eye_model/dropout/dropout_4/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0
:gazetrack_model/eye_model/dropout/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
8gazetrack_model/eye_model/dropout/dropout_4/GreaterEqualGreaterEqualQgazetrack_model/eye_model/dropout/dropout_4/random_uniform/RandomUniform:output:0Cgazetrack_model/eye_model/dropout/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
0gazetrack_model/eye_model/dropout/dropout_4/CastCast<gazetrack_model/eye_model/dropout/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
1gazetrack_model/eye_model/dropout/dropout_4/Mul_1Mul3gazetrack_model/eye_model/dropout/dropout_4/Mul:z:04gazetrack_model/eye_model/dropout/dropout_4/Cast:y:0*
T0*/
_output_shapes
:���������@�
:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
+gazetrack_model/eye_model/conv2d_2/Conv2D_1Conv2D5gazetrack_model/eye_model/dropout/dropout_4/Mul_1:z:0Bgazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,gazetrack_model/eye_model/conv2d_2/BiasAdd_1BiasAdd4gazetrack_model/eye_model/conv2d_2/Conv2D_1:output:0Cgazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOpGgazetrack_model_eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOpIgazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource?^gazetrack_model/eye_model/batch_normalization_2/AssignNewValue*
_output_shapes	
:�*
dtype0�
Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceA^gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_1*
_output_shapes	
:�*
dtype0�
Bgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV35gazetrack_model/eye_model/conv2d_2/BiasAdd_1:output:0Hgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2:value:0Hgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3:value:0Ygazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0[gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_2AssignVariableOpXgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resourceOgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1:batch_mean:0?^gazetrack_model/eye_model/batch_normalization_2/AssignNewValueR^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_3AssignVariableOpZgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceSgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1:batch_variance:0A^gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_1T^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_5	LeakyReluFgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_5AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
v
1gazetrack_model/eye_model/dropout/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
/gazetrack_model/eye_model/dropout/dropout_5/MulMul>gazetrack_model/eye_model/average_pooling2d/AvgPool_5:output:0:gazetrack_model/eye_model/dropout/dropout_5/Const:output:0*
T0*0
_output_shapes
:�����������
1gazetrack_model/eye_model/dropout/dropout_5/ShapeShape>gazetrack_model/eye_model/average_pooling2d/AvgPool_5:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/eye_model/dropout/dropout_5/random_uniform/RandomUniformRandomUniform:gazetrack_model/eye_model/dropout/dropout_5/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0
:gazetrack_model/eye_model/dropout/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
8gazetrack_model/eye_model/dropout/dropout_5/GreaterEqualGreaterEqualQgazetrack_model/eye_model/dropout/dropout_5/random_uniform/RandomUniform:output:0Cgazetrack_model/eye_model/dropout/dropout_5/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
0gazetrack_model/eye_model/dropout/dropout_5/CastCast<gazetrack_model/eye_model/dropout/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
1gazetrack_model/eye_model/dropout/dropout_5/Mul_1Mul3gazetrack_model/eye_model/dropout/dropout_5/Mul:z:04gazetrack_model/eye_model/dropout/dropout_5/Cast:y:0*
T0*0
_output_shapes
:����������n
gazetrack_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
gazetrack_model/flatten/ReshapeReshape5gazetrack_model/eye_model/dropout/dropout_2/Mul_1:z:0&gazetrack_model/flatten/Const:output:0*
T0*(
_output_shapes
:����������p
gazetrack_model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
!gazetrack_model/flatten_1/ReshapeReshape5gazetrack_model/eye_model/dropout/dropout_5/Mul_1:z:0(gazetrack_model/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOpReadVariableOpCgazetrack_model_landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
+gazetrack_model/landmark_model/dense/MatMulMatMulinputs_2Bgazetrack_model/landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOpDgazetrack_model_landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,gazetrack_model/landmark_model/dense/BiasAddBiasAdd5gazetrack_model/landmark_model/dense/MatMul:product:0Cgazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Sgazetrack_model/landmark_model/batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
Agazetrack_model/landmark_model/batch_normalization_3/moments/meanMean5gazetrack_model/landmark_model/dense/BiasAdd:output:0\gazetrack_model/landmark_model/batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
Igazetrack_model/landmark_model/batch_normalization_3/moments/StopGradientStopGradientJgazetrack_model/landmark_model/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:	��
Ngazetrack_model/landmark_model/batch_normalization_3/moments/SquaredDifferenceSquaredDifference5gazetrack_model/landmark_model/dense/BiasAdd:output:0Rgazetrack_model/landmark_model/batch_normalization_3/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Wgazetrack_model/landmark_model/batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
Egazetrack_model/landmark_model/batch_normalization_3/moments/varianceMeanRgazetrack_model/landmark_model/batch_normalization_3/moments/SquaredDifference:z:0`gazetrack_model/landmark_model/batch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
Dgazetrack_model/landmark_model/batch_normalization_3/moments/SqueezeSqueezeJgazetrack_model/landmark_model/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
Fgazetrack_model/landmark_model/batch_normalization_3/moments/Squeeze_1SqueezeNgazetrack_model/landmark_model/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
Jgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Sgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOp\gazetrack_model_landmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Hgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/subSub[gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0Mgazetrack_model/landmark_model/batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
Hgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/mulMulLgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/sub:z:0Sgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvgAssignSubVariableOp\gazetrack_model_landmark_model_batch_normalization_3_assignmovingavg_readvariableop_resourceLgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/mul:z:0T^gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
Lgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Ugazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp^gazetrack_model_landmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Jgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/subSub]gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0Ogazetrack_model/landmark_model/batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
Jgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/mulMulNgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/sub:z:0Ugazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
Fgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1AssignSubVariableOp^gazetrack_model_landmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resourceNgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/mul:z:0V^gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Bgazetrack_model/landmark_model/batch_normalization_3/batchnorm/addAddV2Ogazetrack_model/landmark_model/batch_normalization_3/moments/Squeeze_1:output:0Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrtFgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Qgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpZgazetrack_model_landmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mulMulHgazetrack_model/landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0Ygazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_1Mul5gazetrack_model/landmark_model/dense/BiasAdd:output:0Fgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_2MulMgazetrack_model/landmark_model/batch_normalization_3/moments/Squeeze:output:0Fgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpVgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_3/batchnorm/subSubUgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:0Hgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add_1AddV2Hgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_1:z:0Fgazetrack_model/landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
)gazetrack_model/landmark_model/re_lu/ReluReluHgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOpEgazetrack_model_landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-gazetrack_model/landmark_model/dense_1/MatMulMatMul7gazetrack_model/landmark_model/re_lu/Relu:activations:0Dgazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOpFgazetrack_model_landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.gazetrack_model/landmark_model/dense_1/BiasAddBiasAdd7gazetrack_model/landmark_model/dense_1/MatMul:product:0Egazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Sgazetrack_model/landmark_model/batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
Agazetrack_model/landmark_model/batch_normalization_4/moments/meanMean7gazetrack_model/landmark_model/dense_1/BiasAdd:output:0\gazetrack_model/landmark_model/batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
Igazetrack_model/landmark_model/batch_normalization_4/moments/StopGradientStopGradientJgazetrack_model/landmark_model/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes

:�
Ngazetrack_model/landmark_model/batch_normalization_4/moments/SquaredDifferenceSquaredDifference7gazetrack_model/landmark_model/dense_1/BiasAdd:output:0Rgazetrack_model/landmark_model/batch_normalization_4/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Wgazetrack_model/landmark_model/batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
Egazetrack_model/landmark_model/batch_normalization_4/moments/varianceMeanRgazetrack_model/landmark_model/batch_normalization_4/moments/SquaredDifference:z:0`gazetrack_model/landmark_model/batch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
Dgazetrack_model/landmark_model/batch_normalization_4/moments/SqueezeSqueezeJgazetrack_model/landmark_model/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
Fgazetrack_model/landmark_model/batch_normalization_4/moments/Squeeze_1SqueezeNgazetrack_model/landmark_model/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
Jgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Sgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOp\gazetrack_model_landmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
Hgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/subSub[gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0Mgazetrack_model/landmark_model/batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/mulMulLgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/sub:z:0Sgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvgAssignSubVariableOp\gazetrack_model_landmark_model_batch_normalization_4_assignmovingavg_readvariableop_resourceLgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/mul:z:0T^gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
Lgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Ugazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp^gazetrack_model_landmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
Jgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/subSub]gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0Ogazetrack_model/landmark_model/batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
Jgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/mulMulNgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/sub:z:0Ugazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
Fgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1AssignSubVariableOp^gazetrack_model_landmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resourceNgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/mul:z:0V^gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Bgazetrack_model/landmark_model/batch_normalization_4/batchnorm/addAddV2Ogazetrack_model/landmark_model/batch_normalization_4/moments/Squeeze_1:output:0Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrtFgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Qgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpZgazetrack_model_landmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mulMulHgazetrack_model/landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0Ygazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_1Mul7gazetrack_model/landmark_model/dense_1/BiasAdd:output:0Fgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_2MulMgazetrack_model/landmark_model/batch_normalization_4/moments/Squeeze:output:0Fgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpVgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_4/batchnorm/subSubUgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:0Hgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add_1AddV2Hgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_1:z:0Fgazetrack_model/landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
+gazetrack_model/landmark_model/re_lu/Relu_1ReluHgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOpEgazetrack_model_landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
-gazetrack_model/landmark_model/dense_2/MatMulMatMul9gazetrack_model/landmark_model/re_lu/Relu_1:activations:0Dgazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOpFgazetrack_model_landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.gazetrack_model/landmark_model/dense_2/BiasAddBiasAdd7gazetrack_model/landmark_model/dense_2/MatMul:product:0Egazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Sgazetrack_model/landmark_model/batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
Agazetrack_model/landmark_model/batch_normalization_5/moments/meanMean7gazetrack_model/landmark_model/dense_2/BiasAdd:output:0\gazetrack_model/landmark_model/batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
Igazetrack_model/landmark_model/batch_normalization_5/moments/StopGradientStopGradientJgazetrack_model/landmark_model/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes

:�
Ngazetrack_model/landmark_model/batch_normalization_5/moments/SquaredDifferenceSquaredDifference7gazetrack_model/landmark_model/dense_2/BiasAdd:output:0Rgazetrack_model/landmark_model/batch_normalization_5/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Wgazetrack_model/landmark_model/batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
Egazetrack_model/landmark_model/batch_normalization_5/moments/varianceMeanRgazetrack_model/landmark_model/batch_normalization_5/moments/SquaredDifference:z:0`gazetrack_model/landmark_model/batch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
Dgazetrack_model/landmark_model/batch_normalization_5/moments/SqueezeSqueezeJgazetrack_model/landmark_model/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
Fgazetrack_model/landmark_model/batch_normalization_5/moments/Squeeze_1SqueezeNgazetrack_model/landmark_model/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
Jgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Sgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOp\gazetrack_model_landmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
Hgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/subSub[gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0Mgazetrack_model/landmark_model/batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes
:�
Hgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/mulMulLgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/sub:z:0Sgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvgAssignSubVariableOp\gazetrack_model_landmark_model_batch_normalization_5_assignmovingavg_readvariableop_resourceLgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/mul:z:0T^gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
Lgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Ugazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp^gazetrack_model_landmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
Jgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/subSub]gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0Ogazetrack_model/landmark_model/batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
Jgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/mulMulNgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/sub:z:0Ugazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
Fgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1AssignSubVariableOp^gazetrack_model_landmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resourceNgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/mul:z:0V^gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Bgazetrack_model/landmark_model/batch_normalization_5/batchnorm/addAddV2Ogazetrack_model/landmark_model/batch_normalization_5/moments/Squeeze_1:output:0Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrtFgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Qgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpZgazetrack_model_landmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mulMulHgazetrack_model/landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0Ygazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_1Mul7gazetrack_model/landmark_model/dense_2/BiasAdd:output:0Fgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_2MulMgazetrack_model/landmark_model/batch_normalization_5/moments/Squeeze:output:0Fgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpVgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_5/batchnorm/subSubUgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:0Hgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add_1AddV2Hgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_1:z:0Fgazetrack_model/landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
+gazetrack_model/landmark_model/re_lu/Relu_2ReluHgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������]
gazetrack_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
gazetrack_model/concatConcatV2(gazetrack_model/flatten/Reshape:output:0*gazetrack_model/flatten_1/Reshape:output:09gazetrack_model/landmark_model/re_lu/Relu_2:activations:0$gazetrack_model/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
-gazetrack_model/dense_3/MatMul/ReadVariableOpReadVariableOp6gazetrack_model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
gazetrack_model/dense_3/MatMulMatMulgazetrack_model/concat:output:05gazetrack_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.gazetrack_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp7gazetrack_model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
gazetrack_model/dense_3/BiasAddBiasAdd(gazetrack_model/dense_3/MatMul:product:06gazetrack_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Dgazetrack_model/batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
2gazetrack_model/batch_normalization_6/moments/meanMean(gazetrack_model/dense_3/BiasAdd:output:0Mgazetrack_model/batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
:gazetrack_model/batch_normalization_6/moments/StopGradientStopGradient;gazetrack_model/batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes

:�
?gazetrack_model/batch_normalization_6/moments/SquaredDifferenceSquaredDifference(gazetrack_model/dense_3/BiasAdd:output:0Cgazetrack_model/batch_normalization_6/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Hgazetrack_model/batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
6gazetrack_model/batch_normalization_6/moments/varianceMeanCgazetrack_model/batch_normalization_6/moments/SquaredDifference:z:0Qgazetrack_model/batch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
5gazetrack_model/batch_normalization_6/moments/SqueezeSqueeze;gazetrack_model/batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
7gazetrack_model/batch_normalization_6/moments/Squeeze_1Squeeze?gazetrack_model/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
;gazetrack_model/batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Dgazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOpMgazetrack_model_batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
9gazetrack_model/batch_normalization_6/AssignMovingAvg/subSubLgazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0>gazetrack_model/batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes
:�
9gazetrack_model/batch_normalization_6/AssignMovingAvg/mulMul=gazetrack_model/batch_normalization_6/AssignMovingAvg/sub:z:0Dgazetrack_model/batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/AssignMovingAvgAssignSubVariableOpMgazetrack_model_batch_normalization_6_assignmovingavg_readvariableop_resource=gazetrack_model/batch_normalization_6/AssignMovingAvg/mul:z:0E^gazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
=gazetrack_model/batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Fgazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOpOgazetrack_model_batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
;gazetrack_model/batch_normalization_6/AssignMovingAvg_1/subSubNgazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:0@gazetrack_model/batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
;gazetrack_model/batch_normalization_6/AssignMovingAvg_1/mulMul?gazetrack_model/batch_normalization_6/AssignMovingAvg_1/sub:z:0Fgazetrack_model/batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
7gazetrack_model/batch_normalization_6/AssignMovingAvg_1AssignSubVariableOpOgazetrack_model_batch_normalization_6_assignmovingavg_1_readvariableop_resource?gazetrack_model/batch_normalization_6/AssignMovingAvg_1/mul:z:0G^gazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0z
5gazetrack_model/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3gazetrack_model/batch_normalization_6/batchnorm/addAddV2@gazetrack_model/batch_normalization_6/moments/Squeeze_1:output:0>gazetrack_model/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/batchnorm/RsqrtRsqrt7gazetrack_model/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
Bgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpKgazetrack_model_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
3gazetrack_model/batch_normalization_6/batchnorm/mulMul9gazetrack_model/batch_normalization_6/batchnorm/Rsqrt:y:0Jgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/batchnorm/mul_1Mul(gazetrack_model/dense_3/BiasAdd:output:07gazetrack_model/batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
5gazetrack_model/batch_normalization_6/batchnorm/mul_2Mul>gazetrack_model/batch_normalization_6/moments/Squeeze:output:07gazetrack_model/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpGgazetrack_model_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
3gazetrack_model/batch_normalization_6/batchnorm/subSubFgazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp:value:09gazetrack_model/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/batchnorm/add_1AddV29gazetrack_model/batch_normalization_6/batchnorm/mul_1:z:07gazetrack_model/batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������l
'gazetrack_model/dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *]t�?�
%gazetrack_model/dropout_1/dropout/MulMul9gazetrack_model/batch_normalization_6/batchnorm/add_1:z:00gazetrack_model/dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:����������
'gazetrack_model/dropout_1/dropout/ShapeShape9gazetrack_model/batch_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
>gazetrack_model/dropout_1/dropout/random_uniform/RandomUniformRandomUniform0gazetrack_model/dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0u
0gazetrack_model/dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
.gazetrack_model/dropout_1/dropout/GreaterEqualGreaterEqualGgazetrack_model/dropout_1/dropout/random_uniform/RandomUniform:output:09gazetrack_model/dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
&gazetrack_model/dropout_1/dropout/CastCast2gazetrack_model/dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:����������
'gazetrack_model/dropout_1/dropout/Mul_1Mul)gazetrack_model/dropout_1/dropout/Mul:z:0*gazetrack_model/dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:����������
gazetrack_model/re_lu_1/ReluRelu+gazetrack_model/dropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_6/MatMulMatMul*gazetrack_model/re_lu_1/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
4batch_normalization_8/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_8/moments/meanMeandense_6/BiasAdd:output:0=batch_normalization_8/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
*batch_normalization_8/moments/StopGradientStopGradient+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes

:�
/batch_normalization_8/moments/SquaredDifferenceSquaredDifferencedense_6/BiasAdd:output:03batch_normalization_8/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
8batch_normalization_8/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_8/moments/varianceMean3batch_normalization_8/moments/SquaredDifference:z:0Abatch_normalization_8/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
%batch_normalization_8/moments/SqueezeSqueeze+batch_normalization_8/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
'batch_normalization_8/moments/Squeeze_1Squeeze/batch_normalization_8/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_8/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
4batch_normalization_8/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
)batch_normalization_8/AssignMovingAvg/subSub<batch_normalization_8/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_8/moments/Squeeze:output:0*
T0*
_output_shapes
:�
)batch_normalization_8/AssignMovingAvg/mulMul-batch_normalization_8/AssignMovingAvg/sub:z:04batch_normalization_8/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
%batch_normalization_8/AssignMovingAvgAssignSubVariableOp=batch_normalization_8_assignmovingavg_readvariableop_resource-batch_normalization_8/AssignMovingAvg/mul:z:05^batch_normalization_8/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_8/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_8/AssignMovingAvg_1/subSub>batch_normalization_8/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_8/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
+batch_normalization_8/AssignMovingAvg_1/mulMul/batch_normalization_8/AssignMovingAvg_1/sub:z:06batch_normalization_8/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_8/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_8_assignmovingavg_1_readvariableop_resource/batch_normalization_8/AssignMovingAvg_1/mul:z:07^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_8/batchnorm/addAddV20batch_normalization_8/moments/Squeeze_1:output:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_8/batchnorm/mul_1Muldense_6/BiasAdd:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
%batch_normalization_8/batchnorm/mul_2Mul.batch_normalization_8/moments/Squeeze:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes
:�
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_8/batchnorm/subSub6batch_normalization_8/batchnorm/ReadVariableOp:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������q
re_lu_2/ReluRelu)batch_normalization_8/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_7/MatMulMatMulre_lu_2/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������/
NoOpNoOp&^batch_normalization_8/AssignMovingAvg5^batch_normalization_8/AssignMovingAvg/ReadVariableOp(^batch_normalization_8/AssignMovingAvg_17^batch_normalization_8/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_8/batchnorm/ReadVariableOp3^batch_normalization_8/batchnorm/mul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp6^gazetrack_model/batch_normalization_6/AssignMovingAvgE^gazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOp8^gazetrack_model/batch_normalization_6/AssignMovingAvg_1G^gazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp?^gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpC^gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp/^gazetrack_model/dense_3/BiasAdd/ReadVariableOp.^gazetrack_model/dense_3/MatMul/ReadVariableOp=^gazetrack_model/eye_model/batch_normalization/AssignNewValue?^gazetrack_model/eye_model/batch_normalization/AssignNewValue_1?^gazetrack_model/eye_model/batch_normalization/AssignNewValue_2?^gazetrack_model/eye_model/batch_normalization/AssignNewValue_3N^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpP^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1P^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpR^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1=^gazetrack_model/eye_model/batch_normalization/ReadVariableOp?^gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1?^gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2?^gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3?^gazetrack_model/eye_model/batch_normalization_1/AssignNewValueA^gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_1A^gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_2A^gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_3P^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpR^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1R^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpT^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpA^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1A^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2A^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3?^gazetrack_model/eye_model/batch_normalization_2/AssignNewValueA^gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_1A^gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_2A^gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_3P^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpR^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1R^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpT^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpA^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1A^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2A^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_38^gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp:^gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp7^gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp9^gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp:^gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp<^gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp9^gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp;^gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:^gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp<^gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp9^gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp;^gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOpE^gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvgT^gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpG^gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1V^gazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpN^gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpR^gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpE^gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvgT^gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpG^gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1V^gazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpN^gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpR^gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpE^gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvgT^gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpG^gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1V^gazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpN^gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpR^gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp<^gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp;^gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp>^gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp=^gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp>^gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp=^gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_8/AssignMovingAvg%batch_normalization_8/AssignMovingAvg2l
4batch_normalization_8/AssignMovingAvg/ReadVariableOp4batch_normalization_8/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_8/AssignMovingAvg_1'batch_normalization_8/AssignMovingAvg_12p
6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp6batch_normalization_8/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2n
5gazetrack_model/batch_normalization_6/AssignMovingAvg5gazetrack_model/batch_normalization_6/AssignMovingAvg2�
Dgazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOpDgazetrack_model/batch_normalization_6/AssignMovingAvg/ReadVariableOp2r
7gazetrack_model/batch_normalization_6/AssignMovingAvg_17gazetrack_model/batch_normalization_6/AssignMovingAvg_12�
Fgazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOpFgazetrack_model/batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2�
>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp2�
Bgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOpBgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.gazetrack_model/dense_3/BiasAdd/ReadVariableOp.gazetrack_model/dense_3/BiasAdd/ReadVariableOp2^
-gazetrack_model/dense_3/MatMul/ReadVariableOp-gazetrack_model/dense_3/MatMul/ReadVariableOp2|
<gazetrack_model/eye_model/batch_normalization/AssignNewValue<gazetrack_model/eye_model/batch_normalization/AssignNewValue2�
>gazetrack_model/eye_model/batch_normalization/AssignNewValue_1>gazetrack_model/eye_model/batch_normalization/AssignNewValue_12�
>gazetrack_model/eye_model/batch_normalization/AssignNewValue_2>gazetrack_model/eye_model/batch_normalization/AssignNewValue_22�
>gazetrack_model/eye_model/batch_normalization/AssignNewValue_3>gazetrack_model/eye_model/batch_normalization/AssignNewValue_32�
Mgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpMgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpOgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12|
<gazetrack_model/eye_model/batch_normalization/ReadVariableOp<gazetrack_model/eye_model/batch_normalization/ReadVariableOp2�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_12�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_22�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_32�
>gazetrack_model/eye_model/batch_normalization_1/AssignNewValue>gazetrack_model/eye_model/batch_normalization_1/AssignNewValue2�
@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_1@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_12�
@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_2@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_22�
@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_3@gazetrack_model/eye_model/batch_normalization_1/AssignNewValue_32�
Ogazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpOgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpQgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12�
>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp2�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_12�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_22�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_32�
>gazetrack_model/eye_model/batch_normalization_2/AssignNewValue>gazetrack_model/eye_model/batch_normalization_2/AssignNewValue2�
@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_1@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_12�
@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_2@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_22�
@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_3@gazetrack_model/eye_model/batch_normalization_2/AssignNewValue_32�
Ogazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpOgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpQgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12�
>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp2�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_12�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_22�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_32r
7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp2v
9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp2p
6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp2t
8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp2v
9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp2z
;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2t
8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp2x
:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp2v
9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp2z
;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2t
8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp2x
:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp2�
Dgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvgDgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg2�
Sgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpSgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp2�
Fgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1Fgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_12�
Ugazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpUgazetrack_model/landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2�
Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
Qgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpQgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2�
Dgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvgDgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg2�
Sgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpSgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp2�
Fgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1Fgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_12�
Ugazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpUgazetrack_model/landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2�
Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
Qgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpQgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2�
Dgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvgDgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg2�
Sgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpSgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp2�
Fgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1Fgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_12�
Ugazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpUgazetrack_model/landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2�
Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
Qgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpQgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2z
;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp2x
:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp2~
=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp2|
<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp2~
=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp2|
<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�	
�
6__inference_batch_normalization_2_layer_call_fn_988164

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_983995�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
i
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_984046

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
��
�L
!__inference__wrapped_model_983845
input_1
input_2
input_3_
Emodel_gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource: T
Fmodel_gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource: Y
Kmodel_gazetrack_model_eye_model_batch_normalization_readvariableop_resource: [
Mmodel_gazetrack_model_eye_model_batch_normalization_readvariableop_1_resource: j
\model_gazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: l
^model_gazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: a
Gmodel_gazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource: @V
Hmodel_gazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource:@[
Mmodel_gazetrack_model_eye_model_batch_normalization_1_readvariableop_resource:@]
Omodel_gazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource:@l
^model_gazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@n
`model_gazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@b
Gmodel_gazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource:@�W
Hmodel_gazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource:	�\
Mmodel_gazetrack_model_eye_model_batch_normalization_2_readvariableop_resource:	�^
Omodel_gazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource:	�m
^model_gazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�o
`model_gazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�\
Imodel_gazetrack_model_landmark_model_dense_matmul_readvariableop_resource:	�Y
Jmodel_gazetrack_model_landmark_model_dense_biasadd_readvariableop_resource:	�k
\model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�o
`model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�m
^model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource:	�m
^model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource:	�^
Kmodel_gazetrack_model_landmark_model_dense_1_matmul_readvariableop_resource:	�Z
Lmodel_gazetrack_model_landmark_model_dense_1_biasadd_readvariableop_resource:j
\model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_resource:n
`model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:l
^model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource:l
^model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource:]
Kmodel_gazetrack_model_landmark_model_dense_2_matmul_readvariableop_resource:Z
Lmodel_gazetrack_model_landmark_model_dense_2_biasadd_readvariableop_resource:j
\model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_resource:n
`model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:l
^model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource:l
^model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource:O
<model_gazetrack_model_dense_3_matmul_readvariableop_resource:	�K
=model_gazetrack_model_dense_3_biasadd_readvariableop_resource:[
Mmodel_gazetrack_model_batch_normalization_6_batchnorm_readvariableop_resource:_
Qmodel_gazetrack_model_batch_normalization_6_batchnorm_mul_readvariableop_resource:]
Omodel_gazetrack_model_batch_normalization_6_batchnorm_readvariableop_1_resource:]
Omodel_gazetrack_model_batch_normalization_6_batchnorm_readvariableop_2_resource:>
,model_dense_6_matmul_readvariableop_resource:;
-model_dense_6_biasadd_readvariableop_resource:K
=model_batch_normalization_8_batchnorm_readvariableop_resource:O
Amodel_batch_normalization_8_batchnorm_mul_readvariableop_resource:M
?model_batch_normalization_8_batchnorm_readvariableop_1_resource:M
?model_batch_normalization_8_batchnorm_readvariableop_2_resource:>
,model_dense_7_matmul_readvariableop_resource:;
-model_dense_7_biasadd_readvariableop_resource:
identity��4model/batch_normalization_8/batchnorm/ReadVariableOp�6model/batch_normalization_8/batchnorm/ReadVariableOp_1�6model/batch_normalization_8/batchnorm/ReadVariableOp_2�8model/batch_normalization_8/batchnorm/mul/ReadVariableOp�$model/dense_6/BiasAdd/ReadVariableOp�#model/dense_6/MatMul/ReadVariableOp�$model/dense_7/BiasAdd/ReadVariableOp�#model/dense_7/MatMul/ReadVariableOp�Dmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp�Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1�Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2�Hmodel/gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp�4model/gazetrack_model/dense_3/BiasAdd/ReadVariableOp�3model/gazetrack_model/dense_3/MatMul/ReadVariableOp�Smodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Wmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�Bmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp�Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1�Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2�Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3�Umodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Ymodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�Dmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp�Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1�Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2�Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3�Umodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Ymodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�Dmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp�Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1�Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2�Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3�=model/gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp�?model/gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp�<model/gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp�>model/gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp�?model/gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp�Amodel/gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�>model/gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp�@model/gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp�?model/gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp�Amodel/gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�>model/gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp�@model/gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp�Smodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1�Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2�Wmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�Smodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1�Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2�Wmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�Smodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1�Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2�Wmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�Amodel/gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp�@model/gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp�Cmodel/gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp�Bmodel/gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp�Cmodel/gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp�Bmodel/gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp�
<model/gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOpEmodel_gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
-model/gazetrack_model/eye_model/conv2d/Conv2DConv2Dinput_1Dmodel/gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
=model/gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOpFmodel_gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
.model/gazetrack_model/eye_model/conv2d/BiasAddBiasAdd6model/gazetrack_model/eye_model/conv2d/Conv2D:output:0Emodel/gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
Bmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOpReadVariableOpKmodel_gazetrack_model_eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1ReadVariableOpMmodel_gazetrack_model_eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Smodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp\model_gazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp^model_gazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Dmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV37model/gazetrack_model/eye_model/conv2d/BiasAdd:output:0Jmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp:value:0Lmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1:value:0[model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0]model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
5model/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu	LeakyReluHmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
9model/gazetrack_model/eye_model/average_pooling2d/AvgPoolAvgPoolCmodel/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
0model/gazetrack_model/eye_model/dropout/IdentityIdentityBmodel/gazetrack_model/eye_model/average_pooling2d/AvgPool:output:0*
T0*/
_output_shapes
:��������� �
>model/gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOpGmodel_gazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
/model/gazetrack_model/eye_model/conv2d_1/Conv2DConv2D9model/gazetrack_model/eye_model/dropout/Identity:output:0Fmodel/gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
?model/gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpHmodel_gazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
0model/gazetrack_model/eye_model/conv2d_1/BiasAddBiasAdd8model/gazetrack_model/eye_model/conv2d_1/Conv2D:output:0Gmodel/gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
Dmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpReadVariableOpMmodel_gazetrack_model_eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOpOmodel_gazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Umodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp^model_gazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`model_gazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV39model/gazetrack_model/eye_model/conv2d_1/BiasAdd:output:0Lmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp:value:0Nmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1:value:0]model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0_model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
7model/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_1	LeakyReluJmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
;model/gazetrack_model/eye_model/average_pooling2d/AvgPool_1AvgPoolEmodel/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
2model/gazetrack_model/eye_model/dropout/Identity_1IdentityDmodel/gazetrack_model/eye_model/average_pooling2d/AvgPool_1:output:0*
T0*/
_output_shapes
:���������@�
>model/gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOpGmodel_gazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
/model/gazetrack_model/eye_model/conv2d_2/Conv2DConv2D;model/gazetrack_model/eye_model/dropout/Identity_1:output:0Fmodel/gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
?model/gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpHmodel_gazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/gazetrack_model/eye_model/conv2d_2/BiasAddBiasAdd8model/gazetrack_model/eye_model/conv2d_2/Conv2D:output:0Gmodel/gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
Dmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpReadVariableOpMmodel_gazetrack_model_eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOpOmodel_gazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Umodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOp^model_gazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp`model_gazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV39model/gazetrack_model/eye_model/conv2d_2/BiasAdd:output:0Lmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp:value:0Nmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1:value:0]model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0_model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
7model/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_2	LeakyReluJmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
;model/gazetrack_model/eye_model/average_pooling2d/AvgPool_2AvgPoolEmodel/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
2model/gazetrack_model/eye_model/dropout/Identity_2IdentityDmodel/gazetrack_model/eye_model/average_pooling2d/AvgPool_2:output:0*
T0*0
_output_shapes
:�����������
>model/gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOpEmodel_gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
/model/gazetrack_model/eye_model/conv2d/Conv2D_1Conv2Dinput_2Fmodel/gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
?model/gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOpFmodel_gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
0model/gazetrack_model/eye_model/conv2d/BiasAdd_1BiasAdd8model/gazetrack_model/eye_model/conv2d/Conv2D_1:output:0Gmodel/gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2ReadVariableOpKmodel_gazetrack_model_eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3ReadVariableOpMmodel_gazetrack_model_eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOp\model_gazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Wmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOp^model_gazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV39model/gazetrack_model/eye_model/conv2d/BiasAdd_1:output:0Lmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2:value:0Lmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3:value:0]model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0_model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
7model/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_3	LeakyReluJmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
;model/gazetrack_model/eye_model/average_pooling2d/AvgPool_3AvgPoolEmodel/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
2model/gazetrack_model/eye_model/dropout/Identity_3IdentityDmodel/gazetrack_model/eye_model/average_pooling2d/AvgPool_3:output:0*
T0*/
_output_shapes
:��������� �
@model/gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOpGmodel_gazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
1model/gazetrack_model/eye_model/conv2d_1/Conv2D_1Conv2D;model/gazetrack_model/eye_model/dropout/Identity_3:output:0Hmodel/gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
Amodel/gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOpHmodel_gazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
2model/gazetrack_model/eye_model/conv2d_1/BiasAdd_1BiasAdd:model/gazetrack_model/eye_model/conv2d_1/Conv2D_1:output:0Imodel/gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOpMmodel_gazetrack_model_eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOpOmodel_gazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOp^model_gazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ymodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOp`model_gazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Hmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3;model/gazetrack_model/eye_model/conv2d_1/BiasAdd_1:output:0Nmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2:value:0Nmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3:value:0_model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0amodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
7model/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_4	LeakyReluLmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
;model/gazetrack_model/eye_model/average_pooling2d/AvgPool_4AvgPoolEmodel/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
2model/gazetrack_model/eye_model/dropout/Identity_4IdentityDmodel/gazetrack_model/eye_model/average_pooling2d/AvgPool_4:output:0*
T0*/
_output_shapes
:���������@�
@model/gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOpGmodel_gazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
1model/gazetrack_model/eye_model/conv2d_2/Conv2D_1Conv2D;model/gazetrack_model/eye_model/dropout/Identity_4:output:0Hmodel/gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
Amodel/gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOpHmodel_gazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2model/gazetrack_model/eye_model/conv2d_2/BiasAdd_1BiasAdd:model/gazetrack_model/eye_model/conv2d_2/Conv2D_1:output:0Imodel/gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOpMmodel_gazetrack_model_eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOpOmodel_gazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOp^model_gazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ymodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOp`model_gazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Hmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3;model/gazetrack_model/eye_model/conv2d_2/BiasAdd_1:output:0Nmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2:value:0Nmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3:value:0_model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0amodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
7model/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_5	LeakyReluLmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
;model/gazetrack_model/eye_model/average_pooling2d/AvgPool_5AvgPoolEmodel/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
2model/gazetrack_model/eye_model/dropout/Identity_5IdentityDmodel/gazetrack_model/eye_model/average_pooling2d/AvgPool_5:output:0*
T0*0
_output_shapes
:����������t
#model/gazetrack_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
%model/gazetrack_model/flatten/ReshapeReshape;model/gazetrack_model/eye_model/dropout/Identity_2:output:0,model/gazetrack_model/flatten/Const:output:0*
T0*(
_output_shapes
:����������v
%model/gazetrack_model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
'model/gazetrack_model/flatten_1/ReshapeReshape;model/gazetrack_model/eye_model/dropout/Identity_5:output:0.model/gazetrack_model/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
@model/gazetrack_model/landmark_model/dense/MatMul/ReadVariableOpReadVariableOpImodel_gazetrack_model_landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
1model/gazetrack_model/landmark_model/dense/MatMulMatMulinput_3Hmodel/gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Amodel/gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOpJmodel_gazetrack_model_landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2model/gazetrack_model/landmark_model/dense/BiasAddBiasAdd;model/gazetrack_model/landmark_model/dense/MatMul:product:0Imodel/gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Smodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp\model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Jmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Hmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/addAddV2[model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:0Smodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
Jmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrtLmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Wmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp`model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Hmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mulMulNmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0_model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
Jmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_1Mul;model/gazetrack_model/landmark_model/dense/BiasAdd:output:0Lmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp^model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Jmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_2Mul]model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0Lmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp^model_gazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
Hmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/subSub]model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2:value:0Nmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
Jmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/add_1AddV2Nmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_1:z:0Lmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
/model/gazetrack_model/landmark_model/re_lu/ReluReluNmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
Bmodel/gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOpKmodel_gazetrack_model_landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
3model/gazetrack_model/landmark_model/dense_1/MatMulMatMul=model/gazetrack_model/landmark_model/re_lu/Relu:activations:0Jmodel/gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Cmodel/gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOpLmodel_gazetrack_model_landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
4model/gazetrack_model/landmark_model/dense_1/BiasAddBiasAdd=model/gazetrack_model/landmark_model/dense_1/MatMul:product:0Kmodel/gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Smodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOp\model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
Jmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Hmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/addAddV2[model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:0Smodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Jmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrtLmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Wmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOp`model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
Hmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mulMulNmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0_model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Jmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_1Mul=model/gazetrack_model/landmark_model/dense_1/BiasAdd:output:0Lmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOp^model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Jmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_2Mul]model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0Lmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOp^model_gazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
Hmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/subSub]model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0Nmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Jmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/add_1AddV2Nmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_1:z:0Lmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
1model/gazetrack_model/landmark_model/re_lu/Relu_1ReluNmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
Bmodel/gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOpKmodel_gazetrack_model_landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
3model/gazetrack_model/landmark_model/dense_2/MatMulMatMul?model/gazetrack_model/landmark_model/re_lu/Relu_1:activations:0Jmodel/gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Cmodel/gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOpLmodel_gazetrack_model_landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
4model/gazetrack_model/landmark_model/dense_2/BiasAddBiasAdd=model/gazetrack_model/landmark_model/dense_2/MatMul:product:0Kmodel/gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Smodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOp\model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
Jmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Hmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/addAddV2[model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:0Smodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Jmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrtLmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Wmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOp`model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
Hmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mulMulNmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0_model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Jmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_1Mul=model/gazetrack_model/landmark_model/dense_2/BiasAdd:output:0Lmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOp^model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Jmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_2Mul]model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0Lmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOp^model_gazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
Hmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/subSub]model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0Nmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Jmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/add_1AddV2Nmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_1:z:0Lmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
1model/gazetrack_model/landmark_model/re_lu/Relu_2ReluNmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������c
!model/gazetrack_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
model/gazetrack_model/concatConcatV2.model/gazetrack_model/flatten/Reshape:output:00model/gazetrack_model/flatten_1/Reshape:output:0?model/gazetrack_model/landmark_model/re_lu/Relu_2:activations:0*model/gazetrack_model/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
3model/gazetrack_model/dense_3/MatMul/ReadVariableOpReadVariableOp<model_gazetrack_model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
$model/gazetrack_model/dense_3/MatMulMatMul%model/gazetrack_model/concat:output:0;model/gazetrack_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4model/gazetrack_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp=model_gazetrack_model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
%model/gazetrack_model/dense_3/BiasAddBiasAdd.model/gazetrack_model/dense_3/MatMul:product:0<model/gazetrack_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Dmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpMmodel_gazetrack_model_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
;model/gazetrack_model/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
9model/gazetrack_model/batch_normalization_6/batchnorm/addAddV2Lmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp:value:0Dmodel/gazetrack_model/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
;model/gazetrack_model/batch_normalization_6/batchnorm/RsqrtRsqrt=model/gazetrack_model/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
Hmodel/gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpQmodel_gazetrack_model_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
9model/gazetrack_model/batch_normalization_6/batchnorm/mulMul?model/gazetrack_model/batch_normalization_6/batchnorm/Rsqrt:y:0Pmodel/gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
;model/gazetrack_model/batch_normalization_6/batchnorm/mul_1Mul.model/gazetrack_model/dense_3/BiasAdd:output:0=model/gazetrack_model/batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpOmodel_gazetrack_model_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
;model/gazetrack_model/batch_normalization_6/batchnorm/mul_2MulNmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1:value:0=model/gazetrack_model/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpOmodel_gazetrack_model_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
9model/gazetrack_model/batch_normalization_6/batchnorm/subSubNmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2:value:0?model/gazetrack_model/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
;model/gazetrack_model/batch_normalization_6/batchnorm/add_1AddV2?model/gazetrack_model/batch_normalization_6/batchnorm/mul_1:z:0=model/gazetrack_model/batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
(model/gazetrack_model/dropout_1/IdentityIdentity?model/gazetrack_model/batch_normalization_6/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
"model/gazetrack_model/re_lu_1/ReluRelu1model/gazetrack_model/dropout_1/Identity:output:0*
T0*'
_output_shapes
:����������
#model/dense_6/MatMul/ReadVariableOpReadVariableOp,model_dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/dense_6/MatMulMatMul0model/gazetrack_model/re_lu_1/Relu:activations:0+model/dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_6/BiasAdd/ReadVariableOpReadVariableOp-model_dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_6/BiasAddBiasAddmodel/dense_6/MatMul:product:0,model/dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
4model/batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp=model_batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
+model/batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
)model/batch_normalization_8/batchnorm/addAddV2<model/batch_normalization_8/batchnorm/ReadVariableOp:value:04model/batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
+model/batch_normalization_8/batchnorm/RsqrtRsqrt-model/batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes
:�
8model/batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
)model/batch_normalization_8/batchnorm/mulMul/model/batch_normalization_8/batchnorm/Rsqrt:y:0@model/batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
+model/batch_normalization_8/batchnorm/mul_1Mulmodel/dense_6/BiasAdd:output:0-model/batch_normalization_8/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
6model/batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp?model_batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
+model/batch_normalization_8/batchnorm/mul_2Mul>model/batch_normalization_8/batchnorm/ReadVariableOp_1:value:0-model/batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes
:�
6model/batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp?model_batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
)model/batch_normalization_8/batchnorm/subSub>model/batch_normalization_8/batchnorm/ReadVariableOp_2:value:0/model/batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
+model/batch_normalization_8/batchnorm/add_1AddV2/model/batch_normalization_8/batchnorm/mul_1:z:0-model/batch_normalization_8/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������}
model/re_lu_2/ReluRelu/model/batch_normalization_8/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
#model/dense_7/MatMul/ReadVariableOpReadVariableOp,model_dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
model/dense_7/MatMulMatMul model/re_lu_2/Relu:activations:0+model/dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_7/BiasAdd/ReadVariableOpReadVariableOp-model_dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_7/BiasAddBiasAddmodel/dense_7/MatMul:product:0,model/dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������m
IdentityIdentitymodel/dense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������'
NoOpNoOp5^model/batch_normalization_8/batchnorm/ReadVariableOp7^model/batch_normalization_8/batchnorm/ReadVariableOp_17^model/batch_normalization_8/batchnorm/ReadVariableOp_29^model/batch_normalization_8/batchnorm/mul/ReadVariableOp%^model/dense_6/BiasAdd/ReadVariableOp$^model/dense_6/MatMul/ReadVariableOp%^model/dense_7/BiasAdd/ReadVariableOp$^model/dense_7/MatMul/ReadVariableOpE^model/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpG^model/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1G^model/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2I^model/gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp5^model/gazetrack_model/dense_3/BiasAdd/ReadVariableOp4^model/gazetrack_model/dense_3/MatMul/ReadVariableOpT^model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpV^model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1V^model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpX^model/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1C^model/gazetrack_model/eye_model/batch_normalization/ReadVariableOpE^model/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1E^model/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2E^model/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3V^model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpX^model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1X^model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpZ^model/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1E^model/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpG^model/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1G^model/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2G^model/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3V^model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpX^model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1X^model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpZ^model/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1E^model/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpG^model/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1G^model/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2G^model/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3>^model/gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp@^model/gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp=^model/gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp?^model/gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp@^model/gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOpB^model/gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp?^model/gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOpA^model/gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp@^model/gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOpB^model/gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp?^model/gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOpA^model/gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOpT^model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpV^model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1V^model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2X^model/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpT^model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpV^model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1V^model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2X^model/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpT^model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpV^model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1V^model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2X^model/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpB^model/gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOpA^model/gazetrack_model/landmark_model/dense/MatMul/ReadVariableOpD^model/gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOpC^model/gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOpD^model/gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOpC^model/gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2l
4model/batch_normalization_8/batchnorm/ReadVariableOp4model/batch_normalization_8/batchnorm/ReadVariableOp2p
6model/batch_normalization_8/batchnorm/ReadVariableOp_16model/batch_normalization_8/batchnorm/ReadVariableOp_12p
6model/batch_normalization_8/batchnorm/ReadVariableOp_26model/batch_normalization_8/batchnorm/ReadVariableOp_22t
8model/batch_normalization_8/batchnorm/mul/ReadVariableOp8model/batch_normalization_8/batchnorm/mul/ReadVariableOp2L
$model/dense_6/BiasAdd/ReadVariableOp$model/dense_6/BiasAdd/ReadVariableOp2J
#model/dense_6/MatMul/ReadVariableOp#model/dense_6/MatMul/ReadVariableOp2L
$model/dense_7/BiasAdd/ReadVariableOp$model/dense_7/BiasAdd/ReadVariableOp2J
#model/dense_7/MatMul/ReadVariableOp#model/dense_7/MatMul/ReadVariableOp2�
Dmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpDmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp2�
Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_12�
Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2Fmodel/gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_22�
Hmodel/gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOpHmodel/gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp2l
4model/gazetrack_model/dense_3/BiasAdd/ReadVariableOp4model/gazetrack_model/dense_3/BiasAdd/ReadVariableOp2j
3model/gazetrack_model/dense_3/MatMul/ReadVariableOp3model/gazetrack_model/dense_3/MatMul/ReadVariableOp2�
Smodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpSmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
Umodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpUmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Wmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Wmodel/gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12�
Bmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOpBmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp2�
Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_12�
Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_22�
Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3Dmodel/gazetrack_model/eye_model/batch_normalization/ReadVariableOp_32�
Umodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpUmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Wmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpWmodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Ymodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Ymodel/gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12�
Dmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpDmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp2�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_12�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_22�
Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3Fmodel/gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_32�
Umodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpUmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Wmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpWmodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Ymodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Ymodel/gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12�
Dmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpDmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp2�
Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_12�
Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_22�
Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3Fmodel/gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_32~
=model/gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp=model/gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp2�
?model/gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp?model/gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp2|
<model/gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp<model/gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp2�
>model/gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp>model/gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp2�
?model/gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp?model/gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp2�
Amodel/gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOpAmodel/gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2�
>model/gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp>model/gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp2�
@model/gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp@model/gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp2�
?model/gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp?model/gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp2�
Amodel/gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOpAmodel/gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2�
>model/gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp>model/gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp2�
@model/gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp@model/gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp2�
Smodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpSmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_12�
Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2Umodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_22�
Wmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpWmodel/gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2�
Smodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpSmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_12�
Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2Umodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_22�
Wmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpWmodel/gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2�
Smodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpSmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_12�
Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2Umodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_22�
Wmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpWmodel/gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2�
Amodel/gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOpAmodel/gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp2�
@model/gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp@model/gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp2�
Cmodel/gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOpCmodel/gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp2�
Bmodel/gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOpBmodel/gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp2�
Cmodel/gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOpCmodel/gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp2�
Bmodel/gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOpBmodel/gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2:PL
'
_output_shapes
:���������
!
_user_specified_name	input_3
��
�<
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_985385
l_r_lms
	l_r_lms_1
	l_r_lms_2I
/eye_model_conv2d_conv2d_readvariableop_resource: >
0eye_model_conv2d_biasadd_readvariableop_resource: C
5eye_model_batch_normalization_readvariableop_resource: E
7eye_model_batch_normalization_readvariableop_1_resource: T
Feye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: V
Heye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: K
1eye_model_conv2d_1_conv2d_readvariableop_resource: @@
2eye_model_conv2d_1_biasadd_readvariableop_resource:@E
7eye_model_batch_normalization_1_readvariableop_resource:@G
9eye_model_batch_normalization_1_readvariableop_1_resource:@V
Heye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@X
Jeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@L
1eye_model_conv2d_2_conv2d_readvariableop_resource:@�A
2eye_model_conv2d_2_biasadd_readvariableop_resource:	�F
7eye_model_batch_normalization_2_readvariableop_resource:	�H
9eye_model_batch_normalization_2_readvariableop_1_resource:	�W
Heye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�Y
Jeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�F
3landmark_model_dense_matmul_readvariableop_resource:	�C
4landmark_model_dense_biasadd_readvariableop_resource:	�[
Llandmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource:	�]
Nlandmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource:	�Y
Jlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�U
Flandmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�H
5landmark_model_dense_1_matmul_readvariableop_resource:	�D
6landmark_model_dense_1_biasadd_readvariableop_resource:Z
Llandmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource:\
Nlandmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource:X
Jlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:T
Flandmark_model_batch_normalization_4_batchnorm_readvariableop_resource:G
5landmark_model_dense_2_matmul_readvariableop_resource:D
6landmark_model_dense_2_biasadd_readvariableop_resource:Z
Llandmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource:\
Nlandmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource:X
Jlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:T
Flandmark_model_batch_normalization_5_batchnorm_readvariableop_resource:9
&dense_3_matmul_readvariableop_resource:	�5
'dense_3_biasadd_readvariableop_resource:K
=batch_normalization_6_assignmovingavg_readvariableop_resource:M
?batch_normalization_6_assignmovingavg_1_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:
identity��%batch_normalization_6/AssignMovingAvg�4batch_normalization_6/AssignMovingAvg/ReadVariableOp�'batch_normalization_6/AssignMovingAvg_1�6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp�.batch_normalization_6/batchnorm/ReadVariableOp�2batch_normalization_6/batchnorm/mul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�,eye_model/batch_normalization/AssignNewValue�.eye_model/batch_normalization/AssignNewValue_1�.eye_model/batch_normalization/AssignNewValue_2�.eye_model/batch_normalization/AssignNewValue_3�=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�,eye_model/batch_normalization/ReadVariableOp�.eye_model/batch_normalization/ReadVariableOp_1�.eye_model/batch_normalization/ReadVariableOp_2�.eye_model/batch_normalization/ReadVariableOp_3�.eye_model/batch_normalization_1/AssignNewValue�0eye_model/batch_normalization_1/AssignNewValue_1�0eye_model/batch_normalization_1/AssignNewValue_2�0eye_model/batch_normalization_1/AssignNewValue_3�?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_1/ReadVariableOp�0eye_model/batch_normalization_1/ReadVariableOp_1�0eye_model/batch_normalization_1/ReadVariableOp_2�0eye_model/batch_normalization_1/ReadVariableOp_3�.eye_model/batch_normalization_2/AssignNewValue�0eye_model/batch_normalization_2/AssignNewValue_1�0eye_model/batch_normalization_2/AssignNewValue_2�0eye_model/batch_normalization_2/AssignNewValue_3�?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_2/ReadVariableOp�0eye_model/batch_normalization_2/ReadVariableOp_1�0eye_model/batch_normalization_2/ReadVariableOp_2�0eye_model/batch_normalization_2/ReadVariableOp_3�'eye_model/conv2d/BiasAdd/ReadVariableOp�)eye_model/conv2d/BiasAdd_1/ReadVariableOp�&eye_model/conv2d/Conv2D/ReadVariableOp�(eye_model/conv2d/Conv2D_1/ReadVariableOp�)eye_model/conv2d_1/BiasAdd/ReadVariableOp�+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_1/Conv2D/ReadVariableOp�*eye_model/conv2d_1/Conv2D_1/ReadVariableOp�)eye_model/conv2d_2/BiasAdd/ReadVariableOp�+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_2/Conv2D/ReadVariableOp�*eye_model/conv2d_2/Conv2D_1/ReadVariableOp�4landmark_model/batch_normalization_3/AssignMovingAvg�Clandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp�6landmark_model/batch_normalization_3/AssignMovingAvg_1�Elandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp�=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�4landmark_model/batch_normalization_4/AssignMovingAvg�Clandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp�6landmark_model/batch_normalization_4/AssignMovingAvg_1�Elandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp�=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�4landmark_model/batch_normalization_5/AssignMovingAvg�Clandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp�6landmark_model/batch_normalization_5/AssignMovingAvg_1�Elandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp�=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�+landmark_model/dense/BiasAdd/ReadVariableOp�*landmark_model/dense/MatMul/ReadVariableOp�-landmark_model/dense_1/BiasAdd/ReadVariableOp�,landmark_model/dense_1/MatMul/ReadVariableOp�-landmark_model/dense_2/BiasAdd/ReadVariableOp�,landmark_model/dense_2/MatMul/ReadVariableOp�
&eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2DConv2Dl_r_lms.eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
'eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAddBiasAdd eye_model/conv2d/Conv2D:output:0/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
,eye_model/batch_normalization/ReadVariableOpReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_1ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV3!eye_model/conv2d/BiasAdd:output:04eye_model/batch_normalization/ReadVariableOp:value:06eye_model/batch_normalization/ReadVariableOp_1:value:0Eeye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Geye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
,eye_model/batch_normalization/AssignNewValueAssignVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource;eye_model/batch_normalization/FusedBatchNormV3:batch_mean:0>^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
.eye_model/batch_normalization/AssignNewValue_1AssignVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource?eye_model/batch_normalization/FusedBatchNormV3:batch_variance:0@^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
eye_model/leaky_re_lu/LeakyRelu	LeakyRelu2eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
#eye_model/average_pooling2d/AvgPoolAvgPool-eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
d
eye_model/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout/MulMul,eye_model/average_pooling2d/AvgPool:output:0(eye_model/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:��������� {
eye_model/dropout/dropout/ShapeShape,eye_model/average_pooling2d/AvgPool:output:0*
T0*
_output_shapes
:�
6eye_model/dropout/dropout/random_uniform/RandomUniformRandomUniform(eye_model/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0m
(eye_model/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
&eye_model/dropout/dropout/GreaterEqualGreaterEqual?eye_model/dropout/dropout/random_uniform/RandomUniform:output:01eye_model/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� �
eye_model/dropout/dropout/CastCast*eye_model/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:��������� �
eye_model/dropout/dropout/Mul_1Mul!eye_model/dropout/dropout/Mul:z:0"eye_model/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:��������� �
(eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2DConv2D#eye_model/dropout/dropout/Mul_1:z:00eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
)eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAddBiasAdd"eye_model/conv2d_1/Conv2D:output:01eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.eye_model/batch_normalization_1/ReadVariableOpReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_1/BiasAdd:output:06eye_model/batch_normalization_1/ReadVariableOp:value:08eye_model/batch_normalization_1/ReadVariableOp_1:value:0Geye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
.eye_model/batch_normalization_1/AssignNewValueAssignVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource=eye_model/batch_normalization_1/FusedBatchNormV3:batch_mean:0@^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_1/AssignNewValue_1AssignVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceAeye_model/batch_normalization_1/FusedBatchNormV3:batch_variance:0B^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_1	LeakyRelu4eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_1AvgPool/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_1/MulMul.eye_model/average_pooling2d/AvgPool_1:output:0*eye_model/dropout/dropout_1/Const:output:0*
T0*/
_output_shapes
:���������@
!eye_model/dropout/dropout_1/ShapeShape.eye_model/average_pooling2d/AvgPool_1:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_1/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_1/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0o
*eye_model/dropout/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_1/GreaterEqualGreaterEqualAeye_model/dropout/dropout_1/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_1/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
 eye_model/dropout/dropout_1/CastCast,eye_model/dropout/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
!eye_model/dropout/dropout_1/Mul_1Mul#eye_model/dropout/dropout_1/Mul:z:0$eye_model/dropout/dropout_1/Cast:y:0*
T0*/
_output_shapes
:���������@�
(eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2DConv2D%eye_model/dropout/dropout_1/Mul_1:z:00eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAddBiasAdd"eye_model/conv2d_2/Conv2D:output:01eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
.eye_model/batch_normalization_2/ReadVariableOpReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_2/BiasAdd:output:06eye_model/batch_normalization_2/ReadVariableOp:value:08eye_model/batch_normalization_2/ReadVariableOp_1:value:0Geye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
.eye_model/batch_normalization_2/AssignNewValueAssignVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource=eye_model/batch_normalization_2/FusedBatchNormV3:batch_mean:0@^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_2/AssignNewValue_1AssignVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceAeye_model/batch_normalization_2/FusedBatchNormV3:batch_variance:0B^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_2	LeakyRelu4eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_2AvgPool/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_2/MulMul.eye_model/average_pooling2d/AvgPool_2:output:0*eye_model/dropout/dropout_2/Const:output:0*
T0*0
_output_shapes
:����������
!eye_model/dropout/dropout_2/ShapeShape.eye_model/average_pooling2d/AvgPool_2:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_2/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_2/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0o
*eye_model/dropout/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_2/GreaterEqualGreaterEqualAeye_model/dropout/dropout_2/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_2/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
 eye_model/dropout/dropout_2/CastCast,eye_model/dropout/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
!eye_model/dropout/dropout_2/Mul_1Mul#eye_model/dropout/dropout_2/Mul:z:0$eye_model/dropout/dropout_2/Cast:y:0*
T0*0
_output_shapes
:�����������
(eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2D_1Conv2D	l_r_lms_10eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
)eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAdd_1BiasAdd"eye_model/conv2d/Conv2D_1:output:01eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
.eye_model/batch_normalization/ReadVariableOp_2ReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_3ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource-^eye_model/batch_normalization/AssignNewValue*
_output_shapes
: *
dtype0�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource/^eye_model/batch_normalization/AssignNewValue_1*
_output_shapes
: *
dtype0�
0eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3#eye_model/conv2d/BiasAdd_1:output:06eye_model/batch_normalization/ReadVariableOp_2:value:06eye_model/batch_normalization/ReadVariableOp_3:value:0Geye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Ieye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
.eye_model/batch_normalization/AssignNewValue_2AssignVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource=eye_model/batch_normalization/FusedBatchNormV3_1:batch_mean:0-^eye_model/batch_normalization/AssignNewValue@^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
.eye_model/batch_normalization/AssignNewValue_3AssignVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resourceAeye_model/batch_normalization/FusedBatchNormV3_1:batch_variance:0/^eye_model/batch_normalization/AssignNewValue_1B^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_3	LeakyRelu4eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_3AvgPool/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_3/MulMul.eye_model/average_pooling2d/AvgPool_3:output:0*eye_model/dropout/dropout_3/Const:output:0*
T0*/
_output_shapes
:��������� 
!eye_model/dropout/dropout_3/ShapeShape.eye_model/average_pooling2d/AvgPool_3:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_3/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_3/Shape:output:0*
T0*/
_output_shapes
:��������� *
dtype0o
*eye_model/dropout/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_3/GreaterEqualGreaterEqualAeye_model/dropout/dropout_3/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_3/GreaterEqual/y:output:0*
T0*/
_output_shapes
:��������� �
 eye_model/dropout/dropout_3/CastCast,eye_model/dropout/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:��������� �
!eye_model/dropout/dropout_3/Mul_1Mul#eye_model/dropout/dropout_3/Mul:z:0$eye_model/dropout/dropout_3/Cast:y:0*
T0*/
_output_shapes
:��������� �
*eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2D_1Conv2D%eye_model/dropout/dropout_3/Mul_1:z:02eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAdd_1BiasAdd$eye_model/conv2d_1/Conv2D_1:output:03eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource/^eye_model/batch_normalization_1/AssignNewValue*
_output_shapes
:@*
dtype0�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource1^eye_model/batch_normalization_1/AssignNewValue_1*
_output_shapes
:@*
dtype0�
2eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_1/BiasAdd_1:output:08eye_model/batch_normalization_1/ReadVariableOp_2:value:08eye_model/batch_normalization_1/ReadVariableOp_3:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
0eye_model/batch_normalization_1/AssignNewValue_2AssignVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource?eye_model/batch_normalization_1/FusedBatchNormV3_1:batch_mean:0/^eye_model/batch_normalization_1/AssignNewValueB^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_1/AssignNewValue_3AssignVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resourceCeye_model/batch_normalization_1/FusedBatchNormV3_1:batch_variance:01^eye_model/batch_normalization_1/AssignNewValue_1D^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_4	LeakyRelu6eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_4AvgPool/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_4/MulMul.eye_model/average_pooling2d/AvgPool_4:output:0*eye_model/dropout/dropout_4/Const:output:0*
T0*/
_output_shapes
:���������@
!eye_model/dropout/dropout_4/ShapeShape.eye_model/average_pooling2d/AvgPool_4:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_4/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_4/Shape:output:0*
T0*/
_output_shapes
:���������@*
dtype0o
*eye_model/dropout/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_4/GreaterEqualGreaterEqualAeye_model/dropout/dropout_4/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_4/GreaterEqual/y:output:0*
T0*/
_output_shapes
:���������@�
 eye_model/dropout/dropout_4/CastCast,eye_model/dropout/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:���������@�
!eye_model/dropout/dropout_4/Mul_1Mul#eye_model/dropout/dropout_4/Mul:z:0$eye_model/dropout/dropout_4/Cast:y:0*
T0*/
_output_shapes
:���������@�
*eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2D_1Conv2D%eye_model/dropout/dropout_4/Mul_1:z:02eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAdd_1BiasAdd$eye_model/conv2d_2/Conv2D_1:output:03eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
0eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource/^eye_model/batch_normalization_2/AssignNewValue*
_output_shapes	
:�*
dtype0�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource1^eye_model/batch_normalization_2/AssignNewValue_1*
_output_shapes	
:�*
dtype0�
2eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_2/BiasAdd_1:output:08eye_model/batch_normalization_2/ReadVariableOp_2:value:08eye_model/batch_normalization_2/ReadVariableOp_3:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
0eye_model/batch_normalization_2/AssignNewValue_2AssignVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource?eye_model/batch_normalization_2/FusedBatchNormV3_1:batch_mean:0/^eye_model/batch_normalization_2/AssignNewValueB^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
0eye_model/batch_normalization_2/AssignNewValue_3AssignVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resourceCeye_model/batch_normalization_2/FusedBatchNormV3_1:batch_variance:01^eye_model/batch_normalization_2/AssignNewValue_1D^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(�
!eye_model/leaky_re_lu/LeakyRelu_5	LeakyRelu6eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_5AvgPool/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
f
!eye_model/dropout/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *���?�
eye_model/dropout/dropout_5/MulMul.eye_model/average_pooling2d/AvgPool_5:output:0*eye_model/dropout/dropout_5/Const:output:0*
T0*0
_output_shapes
:����������
!eye_model/dropout/dropout_5/ShapeShape.eye_model/average_pooling2d/AvgPool_5:output:0*
T0*
_output_shapes
:�
8eye_model/dropout/dropout_5/random_uniform/RandomUniformRandomUniform*eye_model/dropout/dropout_5/Shape:output:0*
T0*0
_output_shapes
:����������*
dtype0o
*eye_model/dropout/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *
ף<�
(eye_model/dropout/dropout_5/GreaterEqualGreaterEqualAeye_model/dropout/dropout_5/random_uniform/RandomUniform:output:03eye_model/dropout/dropout_5/GreaterEqual/y:output:0*
T0*0
_output_shapes
:�����������
 eye_model/dropout/dropout_5/CastCast,eye_model/dropout/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:�����������
!eye_model/dropout/dropout_5/Mul_1Mul#eye_model/dropout/dropout_5/Mul:z:0$eye_model/dropout/dropout_5/Cast:y:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten/ReshapeReshape%eye_model/dropout/dropout_2/Mul_1:z:0flatten/Const:output:0*
T0*(
_output_shapes
:����������`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_1/ReshapeReshape%eye_model/dropout/dropout_5/Mul_1:z:0flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
*landmark_model/dense/MatMul/ReadVariableOpReadVariableOp3landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense/MatMulMatMul	l_r_lms_22landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOp4landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
landmark_model/dense/BiasAddBiasAdd%landmark_model/dense/MatMul:product:03landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Clandmark_model/batch_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
1landmark_model/batch_normalization_3/moments/meanMean%landmark_model/dense/BiasAdd:output:0Llandmark_model/batch_normalization_3/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
9landmark_model/batch_normalization_3/moments/StopGradientStopGradient:landmark_model/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes
:	��
>landmark_model/batch_normalization_3/moments/SquaredDifferenceSquaredDifference%landmark_model/dense/BiasAdd:output:0Blandmark_model/batch_normalization_3/moments/StopGradient:output:0*
T0*(
_output_shapes
:�����������
Glandmark_model/batch_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
5landmark_model/batch_normalization_3/moments/varianceMeanBlandmark_model/batch_normalization_3/moments/SquaredDifference:z:0Plandmark_model/batch_normalization_3/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(�
4landmark_model/batch_normalization_3/moments/SqueezeSqueeze:landmark_model/batch_normalization_3/moments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 �
6landmark_model/batch_normalization_3/moments/Squeeze_1Squeeze>landmark_model/batch_normalization_3/moments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 
:landmark_model/batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Clandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOpLlandmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8landmark_model/batch_normalization_3/AssignMovingAvg/subSubKlandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:0=landmark_model/batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes	
:��
8landmark_model/batch_normalization_3/AssignMovingAvg/mulMul<landmark_model/batch_normalization_3/AssignMovingAvg/sub:z:0Clandmark_model/batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/AssignMovingAvgAssignSubVariableOpLlandmark_model_batch_normalization_3_assignmovingavg_readvariableop_resource<landmark_model/batch_normalization_3/AssignMovingAvg/mul:z:0D^landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
<landmark_model/batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Elandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOpNlandmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
:landmark_model/batch_normalization_3/AssignMovingAvg_1/subSubMlandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:0?landmark_model/batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:��
:landmark_model/batch_normalization_3/AssignMovingAvg_1/mulMul>landmark_model/batch_normalization_3/AssignMovingAvg_1/sub:z:0Elandmark_model/batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
6landmark_model/batch_normalization_3/AssignMovingAvg_1AssignSubVariableOpNlandmark_model_batch_normalization_3_assignmovingavg_1_readvariableop_resource>landmark_model/batch_normalization_3/AssignMovingAvg_1/mul:z:0F^landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0y
4landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_3/batchnorm/addAddV2?landmark_model/batch_normalization_3/moments/Squeeze_1:output:0=landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/mulMul8landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/mul_1Mul%landmark_model/dense/BiasAdd:output:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
4landmark_model/batch_normalization_3/batchnorm/mul_2Mul=landmark_model/batch_normalization_3/moments/Squeeze:output:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/subSubElandmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:08landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/add_1AddV28landmark_model/batch_normalization_3/batchnorm/mul_1:z:06landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
landmark_model/re_lu/ReluRelu8landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
,landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense_1/MatMulMatMul'landmark_model/re_lu/Relu:activations:04landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_1/BiasAddBiasAdd'landmark_model/dense_1/MatMul:product:05landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Clandmark_model/batch_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
1landmark_model/batch_normalization_4/moments/meanMean'landmark_model/dense_1/BiasAdd:output:0Llandmark_model/batch_normalization_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
9landmark_model/batch_normalization_4/moments/StopGradientStopGradient:landmark_model/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes

:�
>landmark_model/batch_normalization_4/moments/SquaredDifferenceSquaredDifference'landmark_model/dense_1/BiasAdd:output:0Blandmark_model/batch_normalization_4/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Glandmark_model/batch_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
5landmark_model/batch_normalization_4/moments/varianceMeanBlandmark_model/batch_normalization_4/moments/SquaredDifference:z:0Plandmark_model/batch_normalization_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
4landmark_model/batch_normalization_4/moments/SqueezeSqueeze:landmark_model/batch_normalization_4/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
6landmark_model/batch_normalization_4/moments/Squeeze_1Squeeze>landmark_model/batch_normalization_4/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 
:landmark_model/batch_normalization_4/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Clandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpReadVariableOpLlandmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
8landmark_model/batch_normalization_4/AssignMovingAvg/subSubKlandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp:value:0=landmark_model/batch_normalization_4/moments/Squeeze:output:0*
T0*
_output_shapes
:�
8landmark_model/batch_normalization_4/AssignMovingAvg/mulMul<landmark_model/batch_normalization_4/AssignMovingAvg/sub:z:0Clandmark_model/batch_normalization_4/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/AssignMovingAvgAssignSubVariableOpLlandmark_model_batch_normalization_4_assignmovingavg_readvariableop_resource<landmark_model/batch_normalization_4/AssignMovingAvg/mul:z:0D^landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
<landmark_model/batch_normalization_4/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Elandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpReadVariableOpNlandmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
:landmark_model/batch_normalization_4/AssignMovingAvg_1/subSubMlandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp:value:0?landmark_model/batch_normalization_4/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
:landmark_model/batch_normalization_4/AssignMovingAvg_1/mulMul>landmark_model/batch_normalization_4/AssignMovingAvg_1/sub:z:0Elandmark_model/batch_normalization_4/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
6landmark_model/batch_normalization_4/AssignMovingAvg_1AssignSubVariableOpNlandmark_model_batch_normalization_4_assignmovingavg_1_readvariableop_resource>landmark_model/batch_normalization_4/AssignMovingAvg_1/mul:z:0F^landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0y
4landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_4/batchnorm/addAddV2?landmark_model/batch_normalization_4/moments/Squeeze_1:output:0=landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/mulMul8landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/mul_1Mul'landmark_model/dense_1/BiasAdd:output:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
4landmark_model/batch_normalization_4/batchnorm/mul_2Mul=landmark_model/batch_normalization_4/moments/Squeeze:output:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/subSubElandmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:08landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/add_1AddV28landmark_model/batch_normalization_4/batchnorm/mul_1:z:06landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_1Relu8landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
,landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
landmark_model/dense_2/MatMulMatMul)landmark_model/re_lu/Relu_1:activations:04landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_2/BiasAddBiasAdd'landmark_model/dense_2/MatMul:product:05landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Clandmark_model/batch_normalization_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
1landmark_model/batch_normalization_5/moments/meanMean'landmark_model/dense_2/BiasAdd:output:0Llandmark_model/batch_normalization_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
9landmark_model/batch_normalization_5/moments/StopGradientStopGradient:landmark_model/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes

:�
>landmark_model/batch_normalization_5/moments/SquaredDifferenceSquaredDifference'landmark_model/dense_2/BiasAdd:output:0Blandmark_model/batch_normalization_5/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
Glandmark_model/batch_normalization_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
5landmark_model/batch_normalization_5/moments/varianceMeanBlandmark_model/batch_normalization_5/moments/SquaredDifference:z:0Plandmark_model/batch_normalization_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
4landmark_model/batch_normalization_5/moments/SqueezeSqueeze:landmark_model/batch_normalization_5/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
6landmark_model/batch_normalization_5/moments/Squeeze_1Squeeze>landmark_model/batch_normalization_5/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 
:landmark_model/batch_normalization_5/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Clandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpReadVariableOpLlandmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
8landmark_model/batch_normalization_5/AssignMovingAvg/subSubKlandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp:value:0=landmark_model/batch_normalization_5/moments/Squeeze:output:0*
T0*
_output_shapes
:�
8landmark_model/batch_normalization_5/AssignMovingAvg/mulMul<landmark_model/batch_normalization_5/AssignMovingAvg/sub:z:0Clandmark_model/batch_normalization_5/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/AssignMovingAvgAssignSubVariableOpLlandmark_model_batch_normalization_5_assignmovingavg_readvariableop_resource<landmark_model/batch_normalization_5/AssignMovingAvg/mul:z:0D^landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0�
<landmark_model/batch_normalization_5/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
Elandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpReadVariableOpNlandmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
:landmark_model/batch_normalization_5/AssignMovingAvg_1/subSubMlandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp:value:0?landmark_model/batch_normalization_5/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
:landmark_model/batch_normalization_5/AssignMovingAvg_1/mulMul>landmark_model/batch_normalization_5/AssignMovingAvg_1/sub:z:0Elandmark_model/batch_normalization_5/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
6landmark_model/batch_normalization_5/AssignMovingAvg_1AssignSubVariableOpNlandmark_model_batch_normalization_5_assignmovingavg_1_readvariableop_resource>landmark_model/batch_normalization_5/AssignMovingAvg_1/mul:z:0F^landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0y
4landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_5/batchnorm/addAddV2?landmark_model/batch_normalization_5/moments/Squeeze_1:output:0=landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/mulMul8landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/mul_1Mul'landmark_model/dense_2/BiasAdd:output:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
4landmark_model/batch_normalization_5/batchnorm/mul_2Mul=landmark_model/batch_normalization_5/moments/Squeeze:output:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/subSubElandmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:08landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/add_1AddV28landmark_model/batch_normalization_5/batchnorm/mul_1:z:06landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_2Relu8landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0)landmark_model/re_lu/Relu_2:activations:0concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_3/MatMulMatMulconcat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������~
4batch_normalization_6/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
"batch_normalization_6/moments/meanMeandense_3/BiasAdd:output:0=batch_normalization_6/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
*batch_normalization_6/moments/StopGradientStopGradient+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes

:�
/batch_normalization_6/moments/SquaredDifferenceSquaredDifferencedense_3/BiasAdd:output:03batch_normalization_6/moments/StopGradient:output:0*
T0*'
_output_shapes
:����������
8batch_normalization_6/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
&batch_normalization_6/moments/varianceMean3batch_normalization_6/moments/SquaredDifference:z:0Abatch_normalization_6/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(�
%batch_normalization_6/moments/SqueezeSqueeze+batch_normalization_6/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 �
'batch_normalization_6/moments/Squeeze_1Squeeze/batch_normalization_6/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 p
+batch_normalization_6/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
4batch_normalization_6/AssignMovingAvg/ReadVariableOpReadVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
)batch_normalization_6/AssignMovingAvg/subSub<batch_normalization_6/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_6/moments/Squeeze:output:0*
T0*
_output_shapes
:�
)batch_normalization_6/AssignMovingAvg/mulMul-batch_normalization_6/AssignMovingAvg/sub:z:04batch_normalization_6/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
%batch_normalization_6/AssignMovingAvgAssignSubVariableOp=batch_normalization_6_assignmovingavg_readvariableop_resource-batch_normalization_6/AssignMovingAvg/mul:z:05^batch_normalization_6/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0r
-batch_normalization_6/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOpReadVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
+batch_normalization_6/AssignMovingAvg_1/subSub>batch_normalization_6/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_6/moments/Squeeze_1:output:0*
T0*
_output_shapes
:�
+batch_normalization_6/AssignMovingAvg_1/mulMul/batch_normalization_6/AssignMovingAvg_1/sub:z:06batch_normalization_6/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
'batch_normalization_6/AssignMovingAvg_1AssignSubVariableOp?batch_normalization_6_assignmovingavg_1_readvariableop_resource/batch_normalization_6/AssignMovingAvg_1/mul:z:07^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_6/batchnorm/addAddV20batch_normalization_6/moments/Squeeze_1:output:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/mul_1Muldense_3/BiasAdd:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
%batch_normalization_6/batchnorm/mul_2Mul.batch_normalization_6/moments/Squeeze:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/subSub6batch_normalization_6/batchnorm/ReadVariableOp:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *]t�?�
dropout_1/dropout/MulMul)batch_normalization_6/batchnorm/add_1:z:0 dropout_1/dropout/Const:output:0*
T0*'
_output_shapes
:���������p
dropout_1/dropout/ShapeShape)batch_normalization_6/batchnorm/add_1:z:0*
T0*
_output_shapes
:�
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*'
_output_shapes
:���������*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:����������
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:����������
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*'
_output_shapes
:���������c
re_lu_1/ReluReludropout_1/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������i
IdentityIdentityre_lu_1/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������"
NoOpNoOp&^batch_normalization_6/AssignMovingAvg5^batch_normalization_6/AssignMovingAvg/ReadVariableOp(^batch_normalization_6/AssignMovingAvg_17^batch_normalization_6/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_6/batchnorm/ReadVariableOp3^batch_normalization_6/batchnorm/mul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp-^eye_model/batch_normalization/AssignNewValue/^eye_model/batch_normalization/AssignNewValue_1/^eye_model/batch_normalization/AssignNewValue_2/^eye_model/batch_normalization/AssignNewValue_3>^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp@^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpB^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1-^eye_model/batch_normalization/ReadVariableOp/^eye_model/batch_normalization/ReadVariableOp_1/^eye_model/batch_normalization/ReadVariableOp_2/^eye_model/batch_normalization/ReadVariableOp_3/^eye_model/batch_normalization_1/AssignNewValue1^eye_model/batch_normalization_1/AssignNewValue_11^eye_model/batch_normalization_1/AssignNewValue_21^eye_model/batch_normalization_1/AssignNewValue_3@^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_1/ReadVariableOp1^eye_model/batch_normalization_1/ReadVariableOp_11^eye_model/batch_normalization_1/ReadVariableOp_21^eye_model/batch_normalization_1/ReadVariableOp_3/^eye_model/batch_normalization_2/AssignNewValue1^eye_model/batch_normalization_2/AssignNewValue_11^eye_model/batch_normalization_2/AssignNewValue_21^eye_model/batch_normalization_2/AssignNewValue_3@^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_2/ReadVariableOp1^eye_model/batch_normalization_2/ReadVariableOp_11^eye_model/batch_normalization_2/ReadVariableOp_21^eye_model/batch_normalization_2/ReadVariableOp_3(^eye_model/conv2d/BiasAdd/ReadVariableOp*^eye_model/conv2d/BiasAdd_1/ReadVariableOp'^eye_model/conv2d/Conv2D/ReadVariableOp)^eye_model/conv2d/Conv2D_1/ReadVariableOp*^eye_model/conv2d_1/BiasAdd/ReadVariableOp,^eye_model/conv2d_1/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_1/Conv2D/ReadVariableOp+^eye_model/conv2d_1/Conv2D_1/ReadVariableOp*^eye_model/conv2d_2/BiasAdd/ReadVariableOp,^eye_model/conv2d_2/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_2/Conv2D/ReadVariableOp+^eye_model/conv2d_2/Conv2D_1/ReadVariableOp5^landmark_model/batch_normalization_3/AssignMovingAvgD^landmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp7^landmark_model/batch_normalization_3/AssignMovingAvg_1F^landmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp>^landmark_model/batch_normalization_3/batchnorm/ReadVariableOpB^landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp5^landmark_model/batch_normalization_4/AssignMovingAvgD^landmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp7^landmark_model/batch_normalization_4/AssignMovingAvg_1F^landmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp>^landmark_model/batch_normalization_4/batchnorm/ReadVariableOpB^landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp5^landmark_model/batch_normalization_5/AssignMovingAvgD^landmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp7^landmark_model/batch_normalization_5/AssignMovingAvg_1F^landmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp>^landmark_model/batch_normalization_5/batchnorm/ReadVariableOpB^landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp,^landmark_model/dense/BiasAdd/ReadVariableOp+^landmark_model/dense/MatMul/ReadVariableOp.^landmark_model/dense_1/BiasAdd/ReadVariableOp-^landmark_model/dense_1/MatMul/ReadVariableOp.^landmark_model/dense_2/BiasAdd/ReadVariableOp-^landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%batch_normalization_6/AssignMovingAvg%batch_normalization_6/AssignMovingAvg2l
4batch_normalization_6/AssignMovingAvg/ReadVariableOp4batch_normalization_6/AssignMovingAvg/ReadVariableOp2R
'batch_normalization_6/AssignMovingAvg_1'batch_normalization_6/AssignMovingAvg_12p
6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp6batch_normalization_6/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2\
,eye_model/batch_normalization/AssignNewValue,eye_model/batch_normalization/AssignNewValue2`
.eye_model/batch_normalization/AssignNewValue_1.eye_model/batch_normalization/AssignNewValue_12`
.eye_model/batch_normalization/AssignNewValue_2.eye_model/batch_normalization/AssignNewValue_22`
.eye_model/batch_normalization/AssignNewValue_3.eye_model/batch_normalization/AssignNewValue_32~
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12\
,eye_model/batch_normalization/ReadVariableOp,eye_model/batch_normalization/ReadVariableOp2`
.eye_model/batch_normalization/ReadVariableOp_1.eye_model/batch_normalization/ReadVariableOp_12`
.eye_model/batch_normalization/ReadVariableOp_2.eye_model/batch_normalization/ReadVariableOp_22`
.eye_model/batch_normalization/ReadVariableOp_3.eye_model/batch_normalization/ReadVariableOp_32`
.eye_model/batch_normalization_1/AssignNewValue.eye_model/batch_normalization_1/AssignNewValue2d
0eye_model/batch_normalization_1/AssignNewValue_10eye_model/batch_normalization_1/AssignNewValue_12d
0eye_model/batch_normalization_1/AssignNewValue_20eye_model/batch_normalization_1/AssignNewValue_22d
0eye_model/batch_normalization_1/AssignNewValue_30eye_model/batch_normalization_1/AssignNewValue_32�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_1/ReadVariableOp.eye_model/batch_normalization_1/ReadVariableOp2d
0eye_model/batch_normalization_1/ReadVariableOp_10eye_model/batch_normalization_1/ReadVariableOp_12d
0eye_model/batch_normalization_1/ReadVariableOp_20eye_model/batch_normalization_1/ReadVariableOp_22d
0eye_model/batch_normalization_1/ReadVariableOp_30eye_model/batch_normalization_1/ReadVariableOp_32`
.eye_model/batch_normalization_2/AssignNewValue.eye_model/batch_normalization_2/AssignNewValue2d
0eye_model/batch_normalization_2/AssignNewValue_10eye_model/batch_normalization_2/AssignNewValue_12d
0eye_model/batch_normalization_2/AssignNewValue_20eye_model/batch_normalization_2/AssignNewValue_22d
0eye_model/batch_normalization_2/AssignNewValue_30eye_model/batch_normalization_2/AssignNewValue_32�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_2/ReadVariableOp.eye_model/batch_normalization_2/ReadVariableOp2d
0eye_model/batch_normalization_2/ReadVariableOp_10eye_model/batch_normalization_2/ReadVariableOp_12d
0eye_model/batch_normalization_2/ReadVariableOp_20eye_model/batch_normalization_2/ReadVariableOp_22d
0eye_model/batch_normalization_2/ReadVariableOp_30eye_model/batch_normalization_2/ReadVariableOp_32R
'eye_model/conv2d/BiasAdd/ReadVariableOp'eye_model/conv2d/BiasAdd/ReadVariableOp2V
)eye_model/conv2d/BiasAdd_1/ReadVariableOp)eye_model/conv2d/BiasAdd_1/ReadVariableOp2P
&eye_model/conv2d/Conv2D/ReadVariableOp&eye_model/conv2d/Conv2D/ReadVariableOp2T
(eye_model/conv2d/Conv2D_1/ReadVariableOp(eye_model/conv2d/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_1/BiasAdd/ReadVariableOp)eye_model/conv2d_1/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_1/Conv2D/ReadVariableOp(eye_model/conv2d_1/Conv2D/ReadVariableOp2X
*eye_model/conv2d_1/Conv2D_1/ReadVariableOp*eye_model/conv2d_1/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_2/BiasAdd/ReadVariableOp)eye_model/conv2d_2/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_2/Conv2D/ReadVariableOp(eye_model/conv2d_2/Conv2D/ReadVariableOp2X
*eye_model/conv2d_2/Conv2D_1/ReadVariableOp*eye_model/conv2d_2/Conv2D_1/ReadVariableOp2l
4landmark_model/batch_normalization_3/AssignMovingAvg4landmark_model/batch_normalization_3/AssignMovingAvg2�
Clandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOpClandmark_model/batch_normalization_3/AssignMovingAvg/ReadVariableOp2p
6landmark_model/batch_normalization_3/AssignMovingAvg_16landmark_model/batch_normalization_3/AssignMovingAvg_12�
Elandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOpElandmark_model/batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2~
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2l
4landmark_model/batch_normalization_4/AssignMovingAvg4landmark_model/batch_normalization_4/AssignMovingAvg2�
Clandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOpClandmark_model/batch_normalization_4/AssignMovingAvg/ReadVariableOp2p
6landmark_model/batch_normalization_4/AssignMovingAvg_16landmark_model/batch_normalization_4/AssignMovingAvg_12�
Elandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOpElandmark_model/batch_normalization_4/AssignMovingAvg_1/ReadVariableOp2~
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2l
4landmark_model/batch_normalization_5/AssignMovingAvg4landmark_model/batch_normalization_5/AssignMovingAvg2�
Clandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOpClandmark_model/batch_normalization_5/AssignMovingAvg/ReadVariableOp2p
6landmark_model/batch_normalization_5/AssignMovingAvg_16landmark_model/batch_normalization_5/AssignMovingAvg_12�
Elandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOpElandmark_model/batch_normalization_5/AssignMovingAvg_1/ReadVariableOp2~
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2Z
+landmark_model/dense/BiasAdd/ReadVariableOp+landmark_model/dense/BiasAdd/ReadVariableOp2X
*landmark_model/dense/MatMul/ReadVariableOp*landmark_model/dense/MatMul/ReadVariableOp2^
-landmark_model/dense_1/BiasAdd/ReadVariableOp-landmark_model/dense_1/BiasAdd/ReadVariableOp2\
,landmark_model/dense_1/MatMul/ReadVariableOp,landmark_model/dense_1/MatMul/ReadVariableOp2^
-landmark_model/dense_2/BiasAdd/ReadVariableOp-landmark_model/dense_2/BiasAdd/ReadVariableOp2\
,landmark_model/dense_2/MatMul/ReadVariableOp,landmark_model/dense_2/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	l_r_lms:ZV
1
_output_shapes
:�����������
!
_user_specified_name	l_r_lms:PL
'
_output_shapes
:���������
!
_user_specified_name	l_r_lms
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988071

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_984237

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_5_layer_call_fn_988409

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_984284o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_985904
input_1
input_2
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"%&'(+,-.1234*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_985694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2:PL
'
_output_shapes
:���������
!
_user_specified_name	input_3
��
�N
__inference__traced_save_988869
file_prefix-
)savev2_dense_6_kernel_read_readvariableop+
'savev2_dense_6_bias_read_readvariableop:
6savev2_batch_normalization_8_gamma_read_readvariableop9
5savev2_batch_normalization_8_beta_read_readvariableop@
<savev2_batch_normalization_8_moving_mean_read_readvariableopD
@savev2_batch_normalization_8_moving_variance_read_readvariableop-
)savev2_dense_7_kernel_read_readvariableop+
'savev2_dense_7_bias_read_readvariableopF
Bsavev2_gazetrack_model_eye_model_conv2d_kernel_read_readvariableopD
@savev2_gazetrack_model_eye_model_conv2d_bias_read_readvariableopH
Dsavev2_gazetrack_model_eye_model_conv2d_1_kernel_read_readvariableopF
Bsavev2_gazetrack_model_eye_model_conv2d_1_bias_read_readvariableopH
Dsavev2_gazetrack_model_eye_model_conv2d_2_kernel_read_readvariableopF
Bsavev2_gazetrack_model_eye_model_conv2d_2_bias_read_readvariableopR
Nsavev2_gazetrack_model_eye_model_batch_normalization_gamma_read_readvariableopQ
Msavev2_gazetrack_model_eye_model_batch_normalization_beta_read_readvariableopT
Psavev2_gazetrack_model_eye_model_batch_normalization_1_gamma_read_readvariableopS
Osavev2_gazetrack_model_eye_model_batch_normalization_1_beta_read_readvariableopT
Psavev2_gazetrack_model_eye_model_batch_normalization_2_gamma_read_readvariableopS
Osavev2_gazetrack_model_eye_model_batch_normalization_2_beta_read_readvariableopJ
Fsavev2_gazetrack_model_landmark_model_dense_kernel_read_readvariableopH
Dsavev2_gazetrack_model_landmark_model_dense_bias_read_readvariableopL
Hsavev2_gazetrack_model_landmark_model_dense_1_kernel_read_readvariableopJ
Fsavev2_gazetrack_model_landmark_model_dense_1_bias_read_readvariableopL
Hsavev2_gazetrack_model_landmark_model_dense_2_kernel_read_readvariableopJ
Fsavev2_gazetrack_model_landmark_model_dense_2_bias_read_readvariableopY
Usavev2_gazetrack_model_landmark_model_batch_normalization_3_gamma_read_readvariableopX
Tsavev2_gazetrack_model_landmark_model_batch_normalization_3_beta_read_readvariableopY
Usavev2_gazetrack_model_landmark_model_batch_normalization_4_gamma_read_readvariableopX
Tsavev2_gazetrack_model_landmark_model_batch_normalization_4_beta_read_readvariableopY
Usavev2_gazetrack_model_landmark_model_batch_normalization_5_gamma_read_readvariableopX
Tsavev2_gazetrack_model_landmark_model_batch_normalization_5_beta_read_readvariableop=
9savev2_gazetrack_model_dense_3_kernel_read_readvariableop;
7savev2_gazetrack_model_dense_3_bias_read_readvariableopJ
Fsavev2_gazetrack_model_batch_normalization_6_gamma_read_readvariableopI
Esavev2_gazetrack_model_batch_normalization_6_beta_read_readvariableopX
Tsavev2_gazetrack_model_eye_model_batch_normalization_moving_mean_read_readvariableop\
Xsavev2_gazetrack_model_eye_model_batch_normalization_moving_variance_read_readvariableopZ
Vsavev2_gazetrack_model_eye_model_batch_normalization_1_moving_mean_read_readvariableop^
Zsavev2_gazetrack_model_eye_model_batch_normalization_1_moving_variance_read_readvariableopZ
Vsavev2_gazetrack_model_eye_model_batch_normalization_2_moving_mean_read_readvariableop^
Zsavev2_gazetrack_model_eye_model_batch_normalization_2_moving_variance_read_readvariableop_
[savev2_gazetrack_model_landmark_model_batch_normalization_3_moving_mean_read_readvariableopc
_savev2_gazetrack_model_landmark_model_batch_normalization_3_moving_variance_read_readvariableop_
[savev2_gazetrack_model_landmark_model_batch_normalization_4_moving_mean_read_readvariableopc
_savev2_gazetrack_model_landmark_model_batch_normalization_4_moving_variance_read_readvariableop_
[savev2_gazetrack_model_landmark_model_batch_normalization_5_moving_mean_read_readvariableopc
_savev2_gazetrack_model_landmark_model_batch_normalization_5_moving_variance_read_readvariableopP
Lsavev2_gazetrack_model_batch_normalization_6_moving_mean_read_readvariableopT
Psavev2_gazetrack_model_batch_normalization_6_moving_variance_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_6_kernel_m_read_readvariableop2
.savev2_adam_dense_6_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_m_read_readvariableop4
0savev2_adam_dense_7_kernel_m_read_readvariableop2
.savev2_adam_dense_7_bias_m_read_readvariableopM
Isavev2_adam_gazetrack_model_eye_model_conv2d_kernel_m_read_readvariableopK
Gsavev2_adam_gazetrack_model_eye_model_conv2d_bias_m_read_readvariableopO
Ksavev2_adam_gazetrack_model_eye_model_conv2d_1_kernel_m_read_readvariableopM
Isavev2_adam_gazetrack_model_eye_model_conv2d_1_bias_m_read_readvariableopO
Ksavev2_adam_gazetrack_model_eye_model_conv2d_2_kernel_m_read_readvariableopM
Isavev2_adam_gazetrack_model_eye_model_conv2d_2_bias_m_read_readvariableopY
Usavev2_adam_gazetrack_model_eye_model_batch_normalization_gamma_m_read_readvariableopX
Tsavev2_adam_gazetrack_model_eye_model_batch_normalization_beta_m_read_readvariableop[
Wsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_m_read_readvariableopZ
Vsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_beta_m_read_readvariableop[
Wsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_m_read_readvariableopZ
Vsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_beta_m_read_readvariableopQ
Msavev2_adam_gazetrack_model_landmark_model_dense_kernel_m_read_readvariableopO
Ksavev2_adam_gazetrack_model_landmark_model_dense_bias_m_read_readvariableopS
Osavev2_adam_gazetrack_model_landmark_model_dense_1_kernel_m_read_readvariableopQ
Msavev2_adam_gazetrack_model_landmark_model_dense_1_bias_m_read_readvariableopS
Osavev2_adam_gazetrack_model_landmark_model_dense_2_kernel_m_read_readvariableopQ
Msavev2_adam_gazetrack_model_landmark_model_dense_2_bias_m_read_readvariableop`
\savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_m_read_readvariableop_
[savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_m_read_readvariableop`
\savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_m_read_readvariableop_
[savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_m_read_readvariableop`
\savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_m_read_readvariableop_
[savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_m_read_readvariableopD
@savev2_adam_gazetrack_model_dense_3_kernel_m_read_readvariableopB
>savev2_adam_gazetrack_model_dense_3_bias_m_read_readvariableopQ
Msavev2_adam_gazetrack_model_batch_normalization_6_gamma_m_read_readvariableopP
Lsavev2_adam_gazetrack_model_batch_normalization_6_beta_m_read_readvariableop4
0savev2_adam_dense_6_kernel_v_read_readvariableop2
.savev2_adam_dense_6_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_8_beta_v_read_readvariableop4
0savev2_adam_dense_7_kernel_v_read_readvariableop2
.savev2_adam_dense_7_bias_v_read_readvariableopM
Isavev2_adam_gazetrack_model_eye_model_conv2d_kernel_v_read_readvariableopK
Gsavev2_adam_gazetrack_model_eye_model_conv2d_bias_v_read_readvariableopO
Ksavev2_adam_gazetrack_model_eye_model_conv2d_1_kernel_v_read_readvariableopM
Isavev2_adam_gazetrack_model_eye_model_conv2d_1_bias_v_read_readvariableopO
Ksavev2_adam_gazetrack_model_eye_model_conv2d_2_kernel_v_read_readvariableopM
Isavev2_adam_gazetrack_model_eye_model_conv2d_2_bias_v_read_readvariableopY
Usavev2_adam_gazetrack_model_eye_model_batch_normalization_gamma_v_read_readvariableopX
Tsavev2_adam_gazetrack_model_eye_model_batch_normalization_beta_v_read_readvariableop[
Wsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_v_read_readvariableopZ
Vsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_beta_v_read_readvariableop[
Wsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_v_read_readvariableopZ
Vsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_beta_v_read_readvariableopQ
Msavev2_adam_gazetrack_model_landmark_model_dense_kernel_v_read_readvariableopO
Ksavev2_adam_gazetrack_model_landmark_model_dense_bias_v_read_readvariableopS
Osavev2_adam_gazetrack_model_landmark_model_dense_1_kernel_v_read_readvariableopQ
Msavev2_adam_gazetrack_model_landmark_model_dense_1_bias_v_read_readvariableopS
Osavev2_adam_gazetrack_model_landmark_model_dense_2_kernel_v_read_readvariableopQ
Msavev2_adam_gazetrack_model_landmark_model_dense_2_bias_v_read_readvariableop`
\savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_v_read_readvariableop_
[savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_v_read_readvariableop`
\savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_v_read_readvariableop_
[savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_v_read_readvariableop`
\savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_v_read_readvariableop_
[savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_v_read_readvariableopD
@savev2_adam_gazetrack_model_dense_3_kernel_v_read_readvariableopB
>savev2_adam_gazetrack_model_dense_3_bias_v_read_readvariableopQ
Msavev2_adam_gazetrack_model_batch_normalization_6_gamma_v_read_readvariableopP
Lsavev2_adam_gazetrack_model_batch_normalization_6_beta_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �;
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�:
value�:B�:�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �K
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_6_kernel_read_readvariableop'savev2_dense_6_bias_read_readvariableop6savev2_batch_normalization_8_gamma_read_readvariableop5savev2_batch_normalization_8_beta_read_readvariableop<savev2_batch_normalization_8_moving_mean_read_readvariableop@savev2_batch_normalization_8_moving_variance_read_readvariableop)savev2_dense_7_kernel_read_readvariableop'savev2_dense_7_bias_read_readvariableopBsavev2_gazetrack_model_eye_model_conv2d_kernel_read_readvariableop@savev2_gazetrack_model_eye_model_conv2d_bias_read_readvariableopDsavev2_gazetrack_model_eye_model_conv2d_1_kernel_read_readvariableopBsavev2_gazetrack_model_eye_model_conv2d_1_bias_read_readvariableopDsavev2_gazetrack_model_eye_model_conv2d_2_kernel_read_readvariableopBsavev2_gazetrack_model_eye_model_conv2d_2_bias_read_readvariableopNsavev2_gazetrack_model_eye_model_batch_normalization_gamma_read_readvariableopMsavev2_gazetrack_model_eye_model_batch_normalization_beta_read_readvariableopPsavev2_gazetrack_model_eye_model_batch_normalization_1_gamma_read_readvariableopOsavev2_gazetrack_model_eye_model_batch_normalization_1_beta_read_readvariableopPsavev2_gazetrack_model_eye_model_batch_normalization_2_gamma_read_readvariableopOsavev2_gazetrack_model_eye_model_batch_normalization_2_beta_read_readvariableopFsavev2_gazetrack_model_landmark_model_dense_kernel_read_readvariableopDsavev2_gazetrack_model_landmark_model_dense_bias_read_readvariableopHsavev2_gazetrack_model_landmark_model_dense_1_kernel_read_readvariableopFsavev2_gazetrack_model_landmark_model_dense_1_bias_read_readvariableopHsavev2_gazetrack_model_landmark_model_dense_2_kernel_read_readvariableopFsavev2_gazetrack_model_landmark_model_dense_2_bias_read_readvariableopUsavev2_gazetrack_model_landmark_model_batch_normalization_3_gamma_read_readvariableopTsavev2_gazetrack_model_landmark_model_batch_normalization_3_beta_read_readvariableopUsavev2_gazetrack_model_landmark_model_batch_normalization_4_gamma_read_readvariableopTsavev2_gazetrack_model_landmark_model_batch_normalization_4_beta_read_readvariableopUsavev2_gazetrack_model_landmark_model_batch_normalization_5_gamma_read_readvariableopTsavev2_gazetrack_model_landmark_model_batch_normalization_5_beta_read_readvariableop9savev2_gazetrack_model_dense_3_kernel_read_readvariableop7savev2_gazetrack_model_dense_3_bias_read_readvariableopFsavev2_gazetrack_model_batch_normalization_6_gamma_read_readvariableopEsavev2_gazetrack_model_batch_normalization_6_beta_read_readvariableopTsavev2_gazetrack_model_eye_model_batch_normalization_moving_mean_read_readvariableopXsavev2_gazetrack_model_eye_model_batch_normalization_moving_variance_read_readvariableopVsavev2_gazetrack_model_eye_model_batch_normalization_1_moving_mean_read_readvariableopZsavev2_gazetrack_model_eye_model_batch_normalization_1_moving_variance_read_readvariableopVsavev2_gazetrack_model_eye_model_batch_normalization_2_moving_mean_read_readvariableopZsavev2_gazetrack_model_eye_model_batch_normalization_2_moving_variance_read_readvariableop[savev2_gazetrack_model_landmark_model_batch_normalization_3_moving_mean_read_readvariableop_savev2_gazetrack_model_landmark_model_batch_normalization_3_moving_variance_read_readvariableop[savev2_gazetrack_model_landmark_model_batch_normalization_4_moving_mean_read_readvariableop_savev2_gazetrack_model_landmark_model_batch_normalization_4_moving_variance_read_readvariableop[savev2_gazetrack_model_landmark_model_batch_normalization_5_moving_mean_read_readvariableop_savev2_gazetrack_model_landmark_model_batch_normalization_5_moving_variance_read_readvariableopLsavev2_gazetrack_model_batch_normalization_6_moving_mean_read_readvariableopPsavev2_gazetrack_model_batch_normalization_6_moving_variance_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_6_kernel_m_read_readvariableop.savev2_adam_dense_6_bias_m_read_readvariableop=savev2_adam_batch_normalization_8_gamma_m_read_readvariableop<savev2_adam_batch_normalization_8_beta_m_read_readvariableop0savev2_adam_dense_7_kernel_m_read_readvariableop.savev2_adam_dense_7_bias_m_read_readvariableopIsavev2_adam_gazetrack_model_eye_model_conv2d_kernel_m_read_readvariableopGsavev2_adam_gazetrack_model_eye_model_conv2d_bias_m_read_readvariableopKsavev2_adam_gazetrack_model_eye_model_conv2d_1_kernel_m_read_readvariableopIsavev2_adam_gazetrack_model_eye_model_conv2d_1_bias_m_read_readvariableopKsavev2_adam_gazetrack_model_eye_model_conv2d_2_kernel_m_read_readvariableopIsavev2_adam_gazetrack_model_eye_model_conv2d_2_bias_m_read_readvariableopUsavev2_adam_gazetrack_model_eye_model_batch_normalization_gamma_m_read_readvariableopTsavev2_adam_gazetrack_model_eye_model_batch_normalization_beta_m_read_readvariableopWsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_m_read_readvariableopVsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_beta_m_read_readvariableopWsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_m_read_readvariableopVsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_beta_m_read_readvariableopMsavev2_adam_gazetrack_model_landmark_model_dense_kernel_m_read_readvariableopKsavev2_adam_gazetrack_model_landmark_model_dense_bias_m_read_readvariableopOsavev2_adam_gazetrack_model_landmark_model_dense_1_kernel_m_read_readvariableopMsavev2_adam_gazetrack_model_landmark_model_dense_1_bias_m_read_readvariableopOsavev2_adam_gazetrack_model_landmark_model_dense_2_kernel_m_read_readvariableopMsavev2_adam_gazetrack_model_landmark_model_dense_2_bias_m_read_readvariableop\savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_m_read_readvariableop[savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_m_read_readvariableop\savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_m_read_readvariableop[savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_m_read_readvariableop\savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_m_read_readvariableop[savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_m_read_readvariableop@savev2_adam_gazetrack_model_dense_3_kernel_m_read_readvariableop>savev2_adam_gazetrack_model_dense_3_bias_m_read_readvariableopMsavev2_adam_gazetrack_model_batch_normalization_6_gamma_m_read_readvariableopLsavev2_adam_gazetrack_model_batch_normalization_6_beta_m_read_readvariableop0savev2_adam_dense_6_kernel_v_read_readvariableop.savev2_adam_dense_6_bias_v_read_readvariableop=savev2_adam_batch_normalization_8_gamma_v_read_readvariableop<savev2_adam_batch_normalization_8_beta_v_read_readvariableop0savev2_adam_dense_7_kernel_v_read_readvariableop.savev2_adam_dense_7_bias_v_read_readvariableopIsavev2_adam_gazetrack_model_eye_model_conv2d_kernel_v_read_readvariableopGsavev2_adam_gazetrack_model_eye_model_conv2d_bias_v_read_readvariableopKsavev2_adam_gazetrack_model_eye_model_conv2d_1_kernel_v_read_readvariableopIsavev2_adam_gazetrack_model_eye_model_conv2d_1_bias_v_read_readvariableopKsavev2_adam_gazetrack_model_eye_model_conv2d_2_kernel_v_read_readvariableopIsavev2_adam_gazetrack_model_eye_model_conv2d_2_bias_v_read_readvariableopUsavev2_adam_gazetrack_model_eye_model_batch_normalization_gamma_v_read_readvariableopTsavev2_adam_gazetrack_model_eye_model_batch_normalization_beta_v_read_readvariableopWsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_v_read_readvariableopVsavev2_adam_gazetrack_model_eye_model_batch_normalization_1_beta_v_read_readvariableopWsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_v_read_readvariableopVsavev2_adam_gazetrack_model_eye_model_batch_normalization_2_beta_v_read_readvariableopMsavev2_adam_gazetrack_model_landmark_model_dense_kernel_v_read_readvariableopKsavev2_adam_gazetrack_model_landmark_model_dense_bias_v_read_readvariableopOsavev2_adam_gazetrack_model_landmark_model_dense_1_kernel_v_read_readvariableopMsavev2_adam_gazetrack_model_landmark_model_dense_1_bias_v_read_readvariableopOsavev2_adam_gazetrack_model_landmark_model_dense_2_kernel_v_read_readvariableopMsavev2_adam_gazetrack_model_landmark_model_dense_2_bias_v_read_readvariableop\savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_v_read_readvariableop[savev2_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_v_read_readvariableop\savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_v_read_readvariableop[savev2_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_v_read_readvariableop\savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_v_read_readvariableop[savev2_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_v_read_readvariableop@savev2_adam_gazetrack_model_dense_3_kernel_v_read_readvariableop>savev2_adam_gazetrack_model_dense_3_bias_v_read_readvariableopMsavev2_adam_gazetrack_model_batch_normalization_6_gamma_v_read_readvariableopLsavev2_adam_gazetrack_model_batch_normalization_6_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *�
dtypes�
�2�	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: ::::::::: : : @:@:@�:�: : :@:@:�:�:	�:�:	�::::�:�:::::	�:::: : :@:@:�:�:�:�::::::: : : : : : : : : ::::::: : : @:@:@�:�: : :@:@:�:�:	�:�:	�::::�:�:::::	�:::::::::: : : @:@:@�:�: : :@:@:�:�:	�:�:	�::::�:�:::::	�:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::,	(
&
_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@�:!

_output_shapes	
:�: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
:@: 

_output_shapes
:@:!

_output_shapes	
:�:!

_output_shapes	
:�:%!

_output_shapes
:	�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::!

_output_shapes	
:�:!

_output_shapes	
:�: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::  

_output_shapes
::%!!

_output_shapes
:	�: "

_output_shapes
:: #

_output_shapes
:: $

_output_shapes
:: %

_output_shapes
: : &

_output_shapes
: : '

_output_shapes
:@: (

_output_shapes
:@:!)

_output_shapes	
:�:!*

_output_shapes	
:�:!+

_output_shapes	
:�:!,

_output_shapes	
:�: -

_output_shapes
:: .

_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
:: 2

_output_shapes
::3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :$< 

_output_shapes

:: =

_output_shapes
:: >

_output_shapes
:: ?

_output_shapes
::$@ 

_output_shapes

:: A

_output_shapes
::,B(
&
_output_shapes
: : C

_output_shapes
: :,D(
&
_output_shapes
: @: E

_output_shapes
:@:-F)
'
_output_shapes
:@�:!G

_output_shapes	
:�: H

_output_shapes
: : I

_output_shapes
: : J

_output_shapes
:@: K

_output_shapes
:@:!L

_output_shapes	
:�:!M

_output_shapes	
:�:%N!

_output_shapes
:	�:!O

_output_shapes	
:�:%P!

_output_shapes
:	�: Q

_output_shapes
::$R 

_output_shapes

:: S

_output_shapes
::!T

_output_shapes	
:�:!U

_output_shapes	
:�: V

_output_shapes
:: W

_output_shapes
:: X

_output_shapes
:: Y

_output_shapes
::%Z!

_output_shapes
:	�: [

_output_shapes
:: \

_output_shapes
:: ]

_output_shapes
::$^ 

_output_shapes

:: _

_output_shapes
:: `

_output_shapes
:: a

_output_shapes
::$b 

_output_shapes

:: c

_output_shapes
::,d(
&
_output_shapes
: : e

_output_shapes
: :,f(
&
_output_shapes
: @: g

_output_shapes
:@:-h)
'
_output_shapes
:@�:!i

_output_shapes	
:�: j

_output_shapes
: : k

_output_shapes
: : l

_output_shapes
:@: m

_output_shapes
:@:!n

_output_shapes	
:�:!o

_output_shapes	
:�:%p!

_output_shapes
:	�:!q

_output_shapes	
:�:%r!

_output_shapes
:	�: s

_output_shapes
::$t 

_output_shapes

:: u

_output_shapes
::!v

_output_shapes	
:�:!w

_output_shapes	
:�: x

_output_shapes
:: y

_output_shapes
:: z

_output_shapes
:: {

_output_shapes
::%|!

_output_shapes
:	�: }

_output_shapes
:: ~

_output_shapes
:: 

_output_shapes
::�

_output_shapes
: 
�
�
6__inference_batch_normalization_5_layer_call_fn_988396

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_984237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�G
A__inference_model_layer_call_and_return_conditional_losses_986709
inputs_0
inputs_1
inputs_2Y
?gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource: N
@gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource: S
Egazetrack_model_eye_model_batch_normalization_readvariableop_resource: U
Ggazetrack_model_eye_model_batch_normalization_readvariableop_1_resource: d
Vgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: f
Xgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: [
Agazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource: @P
Bgazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource:@U
Ggazetrack_model_eye_model_batch_normalization_1_readvariableop_resource:@W
Igazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource:@f
Xgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@h
Zgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@\
Agazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource:@�Q
Bgazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource:	�V
Ggazetrack_model_eye_model_batch_normalization_2_readvariableop_resource:	�X
Igazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource:	�g
Xgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�i
Zgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�V
Cgazetrack_model_landmark_model_dense_matmul_readvariableop_resource:	�S
Dgazetrack_model_landmark_model_dense_biasadd_readvariableop_resource:	�e
Vgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�i
Zgazetrack_model_landmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�g
Xgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource:	�g
Xgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource:	�X
Egazetrack_model_landmark_model_dense_1_matmul_readvariableop_resource:	�T
Fgazetrack_model_landmark_model_dense_1_biasadd_readvariableop_resource:d
Vgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_resource:h
Zgazetrack_model_landmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:f
Xgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource:f
Xgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource:W
Egazetrack_model_landmark_model_dense_2_matmul_readvariableop_resource:T
Fgazetrack_model_landmark_model_dense_2_biasadd_readvariableop_resource:d
Vgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_resource:h
Zgazetrack_model_landmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:f
Xgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource:f
Xgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource:I
6gazetrack_model_dense_3_matmul_readvariableop_resource:	�E
7gazetrack_model_dense_3_biasadd_readvariableop_resource:U
Ggazetrack_model_batch_normalization_6_batchnorm_readvariableop_resource:Y
Kgazetrack_model_batch_normalization_6_batchnorm_mul_readvariableop_resource:W
Igazetrack_model_batch_normalization_6_batchnorm_readvariableop_1_resource:W
Igazetrack_model_batch_normalization_6_batchnorm_readvariableop_2_resource:8
&dense_6_matmul_readvariableop_resource:5
'dense_6_biasadd_readvariableop_resource:E
7batch_normalization_8_batchnorm_readvariableop_resource:I
;batch_normalization_8_batchnorm_mul_readvariableop_resource:G
9batch_normalization_8_batchnorm_readvariableop_1_resource:G
9batch_normalization_8_batchnorm_readvariableop_2_resource:8
&dense_7_matmul_readvariableop_resource:5
'dense_7_biasadd_readvariableop_resource:
identity��.batch_normalization_8/batchnorm/ReadVariableOp�0batch_normalization_8/batchnorm/ReadVariableOp_1�0batch_normalization_8/batchnorm/ReadVariableOp_2�2batch_normalization_8/batchnorm/mul/ReadVariableOp�dense_6/BiasAdd/ReadVariableOp�dense_6/MatMul/ReadVariableOp�dense_7/BiasAdd/ReadVariableOp�dense_7/MatMul/ReadVariableOp�>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp�@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1�@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2�Bgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp�.gazetrack_model/dense_3/BiasAdd/ReadVariableOp�-gazetrack_model/dense_3/MatMul/ReadVariableOp�Mgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�<gazetrack_model/eye_model/batch_normalization/ReadVariableOp�>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1�>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2�>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3�Ogazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp�@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1�@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2�@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3�Ogazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp�@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1�@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2�@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3�7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp�9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp�6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp�8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp�9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp�;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp�:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp�9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp�;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp�:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp�Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1�Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2�Qgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1�Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2�Qgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1�Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2�Qgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp�:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp�=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp�<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp�=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp�<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp�
6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOp?gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
'gazetrack_model/eye_model/conv2d/Conv2DConv2Dinputs_0>gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp@gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
(gazetrack_model/eye_model/conv2d/BiasAddBiasAdd0gazetrack_model/eye_model/conv2d/Conv2D:output:0?gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
<gazetrack_model/eye_model/batch_normalization/ReadVariableOpReadVariableOpEgazetrack_model_eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1ReadVariableOpGgazetrack_model_eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Mgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpVgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpXgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
>gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV31gazetrack_model/eye_model/conv2d/BiasAdd:output:0Dgazetrack_model/eye_model/batch_normalization/ReadVariableOp:value:0Fgazetrack_model/eye_model/batch_normalization/ReadVariableOp_1:value:0Ugazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Wgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
/gazetrack_model/eye_model/leaky_re_lu/LeakyRelu	LeakyReluBgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
3gazetrack_model/eye_model/average_pooling2d/AvgPoolAvgPool=gazetrack_model/eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
*gazetrack_model/eye_model/dropout/IdentityIdentity<gazetrack_model/eye_model/average_pooling2d/AvgPool:output:0*
T0*/
_output_shapes
:��������� �
8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
)gazetrack_model/eye_model/conv2d_1/Conv2DConv2D3gazetrack_model/eye_model/dropout/Identity:output:0@gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
*gazetrack_model/eye_model/conv2d_1/BiasAddBiasAdd2gazetrack_model/eye_model/conv2d_1/Conv2D:output:0Agazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpReadVariableOpGgazetrack_model_eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOpIgazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Ogazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
@gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV33gazetrack_model/eye_model/conv2d_1/BiasAdd:output:0Fgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp:value:0Hgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1:value:0Wgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Ygazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_1	LeakyReluDgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_1AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
,gazetrack_model/eye_model/dropout/Identity_1Identity>gazetrack_model/eye_model/average_pooling2d/AvgPool_1:output:0*
T0*/
_output_shapes
:���������@�
8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
)gazetrack_model/eye_model/conv2d_2/Conv2DConv2D5gazetrack_model/eye_model/dropout/Identity_1:output:0@gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
*gazetrack_model/eye_model/conv2d_2/BiasAddBiasAdd2gazetrack_model/eye_model/conv2d_2/Conv2D:output:0Agazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpReadVariableOpGgazetrack_model_eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOpIgazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Ogazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
@gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV33gazetrack_model/eye_model/conv2d_2/BiasAdd:output:0Fgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp:value:0Hgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1:value:0Wgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ygazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_2	LeakyReluDgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_2AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
,gazetrack_model/eye_model/dropout/Identity_2Identity>gazetrack_model/eye_model/average_pooling2d/AvgPool_2:output:0*
T0*0
_output_shapes
:�����������
8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp?gazetrack_model_eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
)gazetrack_model/eye_model/conv2d/Conv2D_1Conv2Dinputs_1@gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp@gazetrack_model_eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
*gazetrack_model/eye_model/conv2d/BiasAdd_1BiasAdd2gazetrack_model/eye_model/conv2d/Conv2D_1:output:0Agazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2ReadVariableOpEgazetrack_model_eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3ReadVariableOpGgazetrack_model_eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpVgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpXgazetrack_model_eye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
@gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV33gazetrack_model/eye_model/conv2d/BiasAdd_1:output:0Fgazetrack_model/eye_model/batch_normalization/ReadVariableOp_2:value:0Fgazetrack_model/eye_model/batch_normalization/ReadVariableOp_3:value:0Wgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Ygazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_3	LeakyReluDgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_3AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
,gazetrack_model/eye_model/dropout/Identity_3Identity>gazetrack_model/eye_model/average_pooling2d/AvgPool_3:output:0*
T0*/
_output_shapes
:��������� �
:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
+gazetrack_model/eye_model/conv2d_1/Conv2D_1Conv2D5gazetrack_model/eye_model/dropout/Identity_3:output:0Bgazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
,gazetrack_model/eye_model/conv2d_1/BiasAdd_1BiasAdd4gazetrack_model/eye_model/conv2d_1/Conv2D_1:output:0Cgazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOpGgazetrack_model_eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOpIgazetrack_model_eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Bgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV35gazetrack_model/eye_model/conv2d_1/BiasAdd_1:output:0Hgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2:value:0Hgazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3:value:0Ygazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0[gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_4	LeakyReluFgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_4AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
,gazetrack_model/eye_model/dropout/Identity_4Identity>gazetrack_model/eye_model/average_pooling2d/AvgPool_4:output:0*
T0*/
_output_shapes
:���������@�
:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOpAgazetrack_model_eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
+gazetrack_model/eye_model/conv2d_2/Conv2D_1Conv2D5gazetrack_model/eye_model/dropout/Identity_4:output:0Bgazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOpBgazetrack_model_eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,gazetrack_model/eye_model/conv2d_2/BiasAdd_1BiasAdd4gazetrack_model/eye_model/conv2d_2/Conv2D_1:output:0Cgazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOpGgazetrack_model_eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOpIgazetrack_model_eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpXgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpZgazetrack_model_eye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Bgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV35gazetrack_model/eye_model/conv2d_2/BiasAdd_1:output:0Hgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2:value:0Hgazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3:value:0Ygazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0[gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
1gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_5	LeakyReluFgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
5gazetrack_model/eye_model/average_pooling2d/AvgPool_5AvgPool?gazetrack_model/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
,gazetrack_model/eye_model/dropout/Identity_5Identity>gazetrack_model/eye_model/average_pooling2d/AvgPool_5:output:0*
T0*0
_output_shapes
:����������n
gazetrack_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
gazetrack_model/flatten/ReshapeReshape5gazetrack_model/eye_model/dropout/Identity_2:output:0&gazetrack_model/flatten/Const:output:0*
T0*(
_output_shapes
:����������p
gazetrack_model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
!gazetrack_model/flatten_1/ReshapeReshape5gazetrack_model/eye_model/dropout/Identity_5:output:0(gazetrack_model/flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOpReadVariableOpCgazetrack_model_landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
+gazetrack_model/landmark_model/dense/MatMulMatMulinputs_2Bgazetrack_model/landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOpDgazetrack_model_landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,gazetrack_model/landmark_model/dense/BiasAddBiasAdd5gazetrack_model/landmark_model/dense/MatMul:product:0Cgazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpVgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Bgazetrack_model/landmark_model/batch_normalization_3/batchnorm/addAddV2Ugazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:0Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrtFgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Qgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpZgazetrack_model_landmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mulMulHgazetrack_model/landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0Ygazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_1Mul5gazetrack_model/landmark_model/dense/BiasAdd:output:0Fgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpXgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_2MulWgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1:value:0Fgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpXgazetrack_model_landmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_3/batchnorm/subSubWgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2:value:0Hgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
Dgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add_1AddV2Hgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul_1:z:0Fgazetrack_model/landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
)gazetrack_model/landmark_model/re_lu/ReluReluHgazetrack_model/landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOpEgazetrack_model_landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
-gazetrack_model/landmark_model/dense_1/MatMulMatMul7gazetrack_model/landmark_model/re_lu/Relu:activations:0Dgazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOpFgazetrack_model_landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.gazetrack_model/landmark_model/dense_1/BiasAddBiasAdd7gazetrack_model/landmark_model/dense_1/MatMul:product:0Egazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpVgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Bgazetrack_model/landmark_model/batch_normalization_4/batchnorm/addAddV2Ugazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:0Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrtFgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Qgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpZgazetrack_model_landmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mulMulHgazetrack_model/landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0Ygazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_1Mul7gazetrack_model/landmark_model/dense_1/BiasAdd:output:0Fgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpXgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_2MulWgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1:value:0Fgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpXgazetrack_model_landmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_4/batchnorm/subSubWgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2:value:0Hgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add_1AddV2Hgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul_1:z:0Fgazetrack_model/landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
+gazetrack_model/landmark_model/re_lu/Relu_1ReluHgazetrack_model/landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOpEgazetrack_model_landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
-gazetrack_model/landmark_model/dense_2/MatMulMatMul9gazetrack_model/landmark_model/re_lu/Relu_1:activations:0Dgazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOpFgazetrack_model_landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
.gazetrack_model/landmark_model/dense_2/BiasAddBiasAdd7gazetrack_model/landmark_model/dense_2/MatMul:product:0Egazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpVgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
Bgazetrack_model/landmark_model/batch_normalization_5/batchnorm/addAddV2Ugazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:0Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrtFgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Qgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpZgazetrack_model_landmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mulMulHgazetrack_model/landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0Ygazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_1Mul7gazetrack_model/landmark_model/dense_2/BiasAdd:output:0Fgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpXgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_2MulWgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1:value:0Fgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpXgazetrack_model_landmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
Bgazetrack_model/landmark_model/batch_normalization_5/batchnorm/subSubWgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2:value:0Hgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
Dgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add_1AddV2Hgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul_1:z:0Fgazetrack_model/landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
+gazetrack_model/landmark_model/re_lu/Relu_2ReluHgazetrack_model/landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������]
gazetrack_model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
gazetrack_model/concatConcatV2(gazetrack_model/flatten/Reshape:output:0*gazetrack_model/flatten_1/Reshape:output:09gazetrack_model/landmark_model/re_lu/Relu_2:activations:0$gazetrack_model/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
-gazetrack_model/dense_3/MatMul/ReadVariableOpReadVariableOp6gazetrack_model_dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
gazetrack_model/dense_3/MatMulMatMulgazetrack_model/concat:output:05gazetrack_model/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.gazetrack_model/dense_3/BiasAdd/ReadVariableOpReadVariableOp7gazetrack_model_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
gazetrack_model/dense_3/BiasAddBiasAdd(gazetrack_model/dense_3/MatMul:product:06gazetrack_model/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpReadVariableOpGgazetrack_model_batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0z
5gazetrack_model/batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
3gazetrack_model/batch_normalization_6/batchnorm/addAddV2Fgazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp:value:0>gazetrack_model/batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/batchnorm/RsqrtRsqrt7gazetrack_model/batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
Bgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOpKgazetrack_model_batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
3gazetrack_model/batch_normalization_6/batchnorm/mulMul9gazetrack_model/batch_normalization_6/batchnorm/Rsqrt:y:0Jgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/batchnorm/mul_1Mul(gazetrack_model/dense_3/BiasAdd:output:07gazetrack_model/batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOpIgazetrack_model_batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
5gazetrack_model/batch_normalization_6/batchnorm/mul_2MulHgazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1:value:07gazetrack_model/batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOpIgazetrack_model_batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
3gazetrack_model/batch_normalization_6/batchnorm/subSubHgazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2:value:09gazetrack_model/batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
5gazetrack_model/batch_normalization_6/batchnorm/add_1AddV29gazetrack_model/batch_normalization_6/batchnorm/mul_1:z:07gazetrack_model/batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
"gazetrack_model/dropout_1/IdentityIdentity9gazetrack_model/batch_normalization_6/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
gazetrack_model/re_lu_1/ReluRelu+gazetrack_model/dropout_1/Identity:output:0*
T0*'
_output_shapes
:����������
dense_6/MatMul/ReadVariableOpReadVariableOp&dense_6_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_6/MatMulMatMul*gazetrack_model/re_lu_1/Relu:activations:0%dense_6/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_6/BiasAdd/ReadVariableOpReadVariableOp'dense_6_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_6/BiasAddBiasAdddense_6/MatMul:product:0&dense_6/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.batch_normalization_8/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_8_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_8/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_8/batchnorm/addAddV26batch_normalization_8/batchnorm/ReadVariableOp:value:0.batch_normalization_8/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_8/batchnorm/RsqrtRsqrt'batch_normalization_8/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_8/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_8_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_8/batchnorm/mulMul)batch_normalization_8/batchnorm/Rsqrt:y:0:batch_normalization_8/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_8/batchnorm/mul_1Muldense_6/BiasAdd:output:0'batch_normalization_8/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
0batch_normalization_8/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
%batch_normalization_8/batchnorm/mul_2Mul8batch_normalization_8/batchnorm/ReadVariableOp_1:value:0'batch_normalization_8/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0batch_normalization_8/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_8_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
#batch_normalization_8/batchnorm/subSub8batch_normalization_8/batchnorm/ReadVariableOp_2:value:0)batch_normalization_8/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_8/batchnorm/add_1AddV2)batch_normalization_8/batchnorm/mul_1:z:0'batch_normalization_8/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������q
re_lu_2/ReluRelu)batch_normalization_8/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
dense_7/MatMul/ReadVariableOpReadVariableOp&dense_7_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
dense_7/MatMulMatMulre_lu_2/Relu:activations:0%dense_7/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_7/BiasAdd/ReadVariableOpReadVariableOp'dense_7_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_7/BiasAddBiasAdddense_7/MatMul:product:0&dense_7/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������g
IdentityIdentitydense_7/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������$
NoOpNoOp/^batch_normalization_8/batchnorm/ReadVariableOp1^batch_normalization_8/batchnorm/ReadVariableOp_11^batch_normalization_8/batchnorm/ReadVariableOp_23^batch_normalization_8/batchnorm/mul/ReadVariableOp^dense_6/BiasAdd/ReadVariableOp^dense_6/MatMul/ReadVariableOp^dense_7/BiasAdd/ReadVariableOp^dense_7/MatMul/ReadVariableOp?^gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOpA^gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1A^gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2C^gazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp/^gazetrack_model/dense_3/BiasAdd/ReadVariableOp.^gazetrack_model/dense_3/MatMul/ReadVariableOpN^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpP^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1P^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpR^gazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1=^gazetrack_model/eye_model/batch_normalization/ReadVariableOp?^gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1?^gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2?^gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3P^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpR^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1R^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpT^gazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1?^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOpA^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1A^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2A^gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3P^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpR^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1R^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpT^gazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1?^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOpA^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1A^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2A^gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_38^gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp:^gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp7^gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp9^gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp:^gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp<^gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp9^gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp;^gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:^gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp<^gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp9^gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp;^gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOpN^gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpP^gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1P^gazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2R^gazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpN^gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpP^gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1P^gazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2R^gazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpN^gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpP^gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1P^gazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2R^gazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp<^gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp;^gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp>^gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp=^gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp>^gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp=^gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_8/batchnorm/ReadVariableOp.batch_normalization_8/batchnorm/ReadVariableOp2d
0batch_normalization_8/batchnorm/ReadVariableOp_10batch_normalization_8/batchnorm/ReadVariableOp_12d
0batch_normalization_8/batchnorm/ReadVariableOp_20batch_normalization_8/batchnorm/ReadVariableOp_22h
2batch_normalization_8/batchnorm/mul/ReadVariableOp2batch_normalization_8/batchnorm/mul/ReadVariableOp2@
dense_6/BiasAdd/ReadVariableOpdense_6/BiasAdd/ReadVariableOp2>
dense_6/MatMul/ReadVariableOpdense_6/MatMul/ReadVariableOp2@
dense_7/BiasAdd/ReadVariableOpdense_7/BiasAdd/ReadVariableOp2>
dense_7/MatMul/ReadVariableOpdense_7/MatMul/ReadVariableOp2�
>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp>gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp2�
@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_1@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_12�
@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_2@gazetrack_model/batch_normalization_6/batchnorm/ReadVariableOp_22�
Bgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOpBgazetrack_model/batch_normalization_6/batchnorm/mul/ReadVariableOp2`
.gazetrack_model/dense_3/BiasAdd/ReadVariableOp.gazetrack_model/dense_3/BiasAdd/ReadVariableOp2^
-gazetrack_model/dense_3/MatMul/ReadVariableOp-gazetrack_model/dense_3/MatMul/ReadVariableOp2�
Mgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpMgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
Ogazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpOgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Qgazetrack_model/eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12|
<gazetrack_model/eye_model/batch_normalization/ReadVariableOp<gazetrack_model/eye_model/batch_normalization/ReadVariableOp2�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_1>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_12�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_2>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_22�
>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_3>gazetrack_model/eye_model/batch_normalization/ReadVariableOp_32�
Ogazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpOgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Qgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpQgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Sgazetrack_model/eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12�
>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp>gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp2�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_1@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_12�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_2@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_22�
@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_3@gazetrack_model/eye_model/batch_normalization_1/ReadVariableOp_32�
Ogazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpOgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Qgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpQgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Sgazetrack_model/eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12�
>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp>gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp2�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_1@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_12�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_2@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_22�
@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_3@gazetrack_model/eye_model/batch_normalization_2/ReadVariableOp_32r
7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp7gazetrack_model/eye_model/conv2d/BiasAdd/ReadVariableOp2v
9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp9gazetrack_model/eye_model/conv2d/BiasAdd_1/ReadVariableOp2p
6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp6gazetrack_model/eye_model/conv2d/Conv2D/ReadVariableOp2t
8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp8gazetrack_model/eye_model/conv2d/Conv2D_1/ReadVariableOp2v
9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp9gazetrack_model/eye_model/conv2d_1/BiasAdd/ReadVariableOp2z
;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp;gazetrack_model/eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2t
8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp8gazetrack_model/eye_model/conv2d_1/Conv2D/ReadVariableOp2x
:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp:gazetrack_model/eye_model/conv2d_1/Conv2D_1/ReadVariableOp2v
9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp9gazetrack_model/eye_model/conv2d_2/BiasAdd/ReadVariableOp2z
;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp;gazetrack_model/eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2t
8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp8gazetrack_model/eye_model/conv2d_2/Conv2D/ReadVariableOp2x
:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp:gazetrack_model/eye_model/conv2d_2/Conv2D_1/ReadVariableOp2�
Mgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_12�
Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2Ogazetrack_model/landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_22�
Qgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpQgazetrack_model/landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2�
Mgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_12�
Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2Ogazetrack_model/landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_22�
Qgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpQgazetrack_model/landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2�
Mgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOpMgazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_12�
Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2Ogazetrack_model/landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_22�
Qgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpQgazetrack_model/landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2z
;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp;gazetrack_model/landmark_model/dense/BiasAdd/ReadVariableOp2x
:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp:gazetrack_model/landmark_model/dense/MatMul/ReadVariableOp2~
=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp=gazetrack_model/landmark_model/dense_1/BiasAdd/ReadVariableOp2|
<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp<gazetrack_model/landmark_model/dense_1/MatMul/ReadVariableOp2~
=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp=gazetrack_model/landmark_model/dense_2/BiasAdd/ReadVariableOp2|
<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp<gazetrack_model/landmark_model/dense_2/MatMul/ReadVariableOp:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�
�
&__inference_model_layer_call_fn_986455
inputs_0
inputs_1
inputs_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*D
_read_only_resource_inputs&
$"	
 !"%&'(+,-.1234*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_985694o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�
�

0__inference_gazetrack_model_layer_call_fn_987264
	l_r_lms_0
	l_r_lms_1
	l_r_lms_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	l_r_lms_0	l_r_lms_1	l_r_lms_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
 !"%&'(+,*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_985385o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/0:\X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/1:RN
'
_output_shapes
:���������
#
_user_specified_name	l_r_lms/2
�
�
&__inference_model_layer_call_fn_984933
input_1
input_2
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_984830o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2:PL
'
_output_shapes
:���������
!
_user_specified_name	input_3
�
i
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_988223

inputs
identity�
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4������������������������������������*
ksize
*
paddingVALID*
strides
{
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_986241
input_1
input_2
input_3!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_983845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2:PL
'
_output_shapes
:���������
!
_user_specified_name	input_3
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_984155

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_984366

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_1_layer_call_fn_988102

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_983931�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_8_layer_call_fn_987851

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984401o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�3
�
A__inference_model_layer_call_and_return_conditional_losses_986015
input_1
input_2
input_30
gazetrack_model_985909: $
gazetrack_model_985911: $
gazetrack_model_985913: $
gazetrack_model_985915: $
gazetrack_model_985917: $
gazetrack_model_985919: 0
gazetrack_model_985921: @$
gazetrack_model_985923:@$
gazetrack_model_985925:@$
gazetrack_model_985927:@$
gazetrack_model_985929:@$
gazetrack_model_985931:@1
gazetrack_model_985933:@�%
gazetrack_model_985935:	�%
gazetrack_model_985937:	�%
gazetrack_model_985939:	�%
gazetrack_model_985941:	�%
gazetrack_model_985943:	�)
gazetrack_model_985945:	�%
gazetrack_model_985947:	�%
gazetrack_model_985949:	�%
gazetrack_model_985951:	�%
gazetrack_model_985953:	�%
gazetrack_model_985955:	�)
gazetrack_model_985957:	�$
gazetrack_model_985959:$
gazetrack_model_985961:$
gazetrack_model_985963:$
gazetrack_model_985965:$
gazetrack_model_985967:(
gazetrack_model_985969:$
gazetrack_model_985971:$
gazetrack_model_985973:$
gazetrack_model_985975:$
gazetrack_model_985977:$
gazetrack_model_985979:)
gazetrack_model_985981:	�$
gazetrack_model_985983:$
gazetrack_model_985985:$
gazetrack_model_985987:$
gazetrack_model_985989:$
gazetrack_model_985991: 
dense_6_985994:
dense_6_985996:*
batch_normalization_8_985999:*
batch_normalization_8_986001:*
batch_normalization_8_986003:*
batch_normalization_8_986005: 
dense_7_986009:
dense_7_986011:
identity��-batch_normalization_8/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�'gazetrack_model/StatefulPartitionedCall�
'gazetrack_model/StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3gazetrack_model_985909gazetrack_model_985911gazetrack_model_985913gazetrack_model_985915gazetrack_model_985917gazetrack_model_985919gazetrack_model_985921gazetrack_model_985923gazetrack_model_985925gazetrack_model_985927gazetrack_model_985929gazetrack_model_985931gazetrack_model_985933gazetrack_model_985935gazetrack_model_985937gazetrack_model_985939gazetrack_model_985941gazetrack_model_985943gazetrack_model_985945gazetrack_model_985947gazetrack_model_985949gazetrack_model_985951gazetrack_model_985953gazetrack_model_985955gazetrack_model_985957gazetrack_model_985959gazetrack_model_985961gazetrack_model_985963gazetrack_model_985965gazetrack_model_985967gazetrack_model_985969gazetrack_model_985971gazetrack_model_985973gazetrack_model_985975gazetrack_model_985977gazetrack_model_985979gazetrack_model_985981gazetrack_model_985983gazetrack_model_985985gazetrack_model_985987gazetrack_model_985989gazetrack_model_985991*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*L
_read_only_resource_inputs.
,*	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_984695�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0gazetrack_model/StatefulPartitionedCall:output:0dense_6_985994dense_6_985996*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_984791�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_8_985999batch_normalization_8_986001batch_normalization_8_986003batch_normalization_8_986005*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984401�
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_984811�
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0dense_7_986009dense_7_986011*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_984823w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall(^gazetrack_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2R
'gazetrack_model/StatefulPartitionedCall'gazetrack_model/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2:PL
'
_output_shapes
:���������
!
_user_specified_name	input_3
�
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988349

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984401

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�3
�
A__inference_model_layer_call_and_return_conditional_losses_984830

inputs
inputs_1
inputs_20
gazetrack_model_984696: $
gazetrack_model_984698: $
gazetrack_model_984700: $
gazetrack_model_984702: $
gazetrack_model_984704: $
gazetrack_model_984706: 0
gazetrack_model_984708: @$
gazetrack_model_984710:@$
gazetrack_model_984712:@$
gazetrack_model_984714:@$
gazetrack_model_984716:@$
gazetrack_model_984718:@1
gazetrack_model_984720:@�%
gazetrack_model_984722:	�%
gazetrack_model_984724:	�%
gazetrack_model_984726:	�%
gazetrack_model_984728:	�%
gazetrack_model_984730:	�)
gazetrack_model_984732:	�%
gazetrack_model_984734:	�%
gazetrack_model_984736:	�%
gazetrack_model_984738:	�%
gazetrack_model_984740:	�%
gazetrack_model_984742:	�)
gazetrack_model_984744:	�$
gazetrack_model_984746:$
gazetrack_model_984748:$
gazetrack_model_984750:$
gazetrack_model_984752:$
gazetrack_model_984754:(
gazetrack_model_984756:$
gazetrack_model_984758:$
gazetrack_model_984760:$
gazetrack_model_984762:$
gazetrack_model_984764:$
gazetrack_model_984766:)
gazetrack_model_984768:	�$
gazetrack_model_984770:$
gazetrack_model_984772:$
gazetrack_model_984774:$
gazetrack_model_984776:$
gazetrack_model_984778: 
dense_6_984792:
dense_6_984794:*
batch_normalization_8_984797:*
batch_normalization_8_984799:*
batch_normalization_8_984801:*
batch_normalization_8_984803: 
dense_7_984824:
dense_7_984826:
identity��-batch_normalization_8/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�'gazetrack_model/StatefulPartitionedCall�
'gazetrack_model/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2gazetrack_model_984696gazetrack_model_984698gazetrack_model_984700gazetrack_model_984702gazetrack_model_984704gazetrack_model_984706gazetrack_model_984708gazetrack_model_984710gazetrack_model_984712gazetrack_model_984714gazetrack_model_984716gazetrack_model_984718gazetrack_model_984720gazetrack_model_984722gazetrack_model_984724gazetrack_model_984726gazetrack_model_984728gazetrack_model_984730gazetrack_model_984732gazetrack_model_984734gazetrack_model_984736gazetrack_model_984738gazetrack_model_984740gazetrack_model_984742gazetrack_model_984744gazetrack_model_984746gazetrack_model_984748gazetrack_model_984750gazetrack_model_984752gazetrack_model_984754gazetrack_model_984756gazetrack_model_984758gazetrack_model_984760gazetrack_model_984762gazetrack_model_984764gazetrack_model_984766gazetrack_model_984768gazetrack_model_984770gazetrack_model_984772gazetrack_model_984774gazetrack_model_984776gazetrack_model_984778*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*L
_read_only_resource_inputs.
,*	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_984695�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0gazetrack_model/StatefulPartitionedCall:output:0dense_6_984792dense_6_984794*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_984791�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_8_984797batch_normalization_8_984799batch_normalization_8_984801batch_normalization_8_984803*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984401�
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_984811�
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0dense_7_984824dense_7_984826*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_984823w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall(^gazetrack_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2R
'gazetrack_model/StatefulPartitionedCall'gazetrack_model/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_983995

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_984319

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_2_layer_call_fn_988177

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,����������������������������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_984026�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,����������������������������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�3
�
A__inference_model_layer_call_and_return_conditional_losses_985694

inputs
inputs_1
inputs_20
gazetrack_model_985588: $
gazetrack_model_985590: $
gazetrack_model_985592: $
gazetrack_model_985594: $
gazetrack_model_985596: $
gazetrack_model_985598: 0
gazetrack_model_985600: @$
gazetrack_model_985602:@$
gazetrack_model_985604:@$
gazetrack_model_985606:@$
gazetrack_model_985608:@$
gazetrack_model_985610:@1
gazetrack_model_985612:@�%
gazetrack_model_985614:	�%
gazetrack_model_985616:	�%
gazetrack_model_985618:	�%
gazetrack_model_985620:	�%
gazetrack_model_985622:	�)
gazetrack_model_985624:	�%
gazetrack_model_985626:	�%
gazetrack_model_985628:	�%
gazetrack_model_985630:	�%
gazetrack_model_985632:	�%
gazetrack_model_985634:	�)
gazetrack_model_985636:	�$
gazetrack_model_985638:$
gazetrack_model_985640:$
gazetrack_model_985642:$
gazetrack_model_985644:$
gazetrack_model_985646:(
gazetrack_model_985648:$
gazetrack_model_985650:$
gazetrack_model_985652:$
gazetrack_model_985654:$
gazetrack_model_985656:$
gazetrack_model_985658:)
gazetrack_model_985660:	�$
gazetrack_model_985662:$
gazetrack_model_985664:$
gazetrack_model_985666:$
gazetrack_model_985668:$
gazetrack_model_985670: 
dense_6_985673:
dense_6_985675:*
batch_normalization_8_985678:*
batch_normalization_8_985680:*
batch_normalization_8_985682:*
batch_normalization_8_985684: 
dense_7_985688:
dense_7_985690:
identity��-batch_normalization_8/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�'gazetrack_model/StatefulPartitionedCall�
'gazetrack_model/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2gazetrack_model_985588gazetrack_model_985590gazetrack_model_985592gazetrack_model_985594gazetrack_model_985596gazetrack_model_985598gazetrack_model_985600gazetrack_model_985602gazetrack_model_985604gazetrack_model_985606gazetrack_model_985608gazetrack_model_985610gazetrack_model_985612gazetrack_model_985614gazetrack_model_985616gazetrack_model_985618gazetrack_model_985620gazetrack_model_985622gazetrack_model_985624gazetrack_model_985626gazetrack_model_985628gazetrack_model_985630gazetrack_model_985632gazetrack_model_985634gazetrack_model_985636gazetrack_model_985638gazetrack_model_985640gazetrack_model_985642gazetrack_model_985644gazetrack_model_985646gazetrack_model_985648gazetrack_model_985650gazetrack_model_985652gazetrack_model_985654gazetrack_model_985656gazetrack_model_985658gazetrack_model_985660gazetrack_model_985662gazetrack_model_985664gazetrack_model_985666gazetrack_model_985668gazetrack_model_985670*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
 !"%&'(+,*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_985385�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0gazetrack_model/StatefulPartitionedCall:output:0dense_6_985673dense_6_985675*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_984791�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_8_985678batch_normalization_8_985680batch_normalization_8_985682batch_normalization_8_985684*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984448�
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_984811�
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0dense_7_985688dense_7_985690*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_984823w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall(^gazetrack_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2R
'gazetrack_model/StatefulPartitionedCall'gazetrack_model/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs:YU
1
_output_shapes
:�����������
 
_user_specified_nameinputs:OK
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
4__inference_batch_normalization_layer_call_fn_988053

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_983898�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_987993

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�3
�
A__inference_model_layer_call_and_return_conditional_losses_986126
input_1
input_2
input_30
gazetrack_model_986020: $
gazetrack_model_986022: $
gazetrack_model_986024: $
gazetrack_model_986026: $
gazetrack_model_986028: $
gazetrack_model_986030: 0
gazetrack_model_986032: @$
gazetrack_model_986034:@$
gazetrack_model_986036:@$
gazetrack_model_986038:@$
gazetrack_model_986040:@$
gazetrack_model_986042:@1
gazetrack_model_986044:@�%
gazetrack_model_986046:	�%
gazetrack_model_986048:	�%
gazetrack_model_986050:	�%
gazetrack_model_986052:	�%
gazetrack_model_986054:	�)
gazetrack_model_986056:	�%
gazetrack_model_986058:	�%
gazetrack_model_986060:	�%
gazetrack_model_986062:	�%
gazetrack_model_986064:	�%
gazetrack_model_986066:	�)
gazetrack_model_986068:	�$
gazetrack_model_986070:$
gazetrack_model_986072:$
gazetrack_model_986074:$
gazetrack_model_986076:$
gazetrack_model_986078:(
gazetrack_model_986080:$
gazetrack_model_986082:$
gazetrack_model_986084:$
gazetrack_model_986086:$
gazetrack_model_986088:$
gazetrack_model_986090:)
gazetrack_model_986092:	�$
gazetrack_model_986094:$
gazetrack_model_986096:$
gazetrack_model_986098:$
gazetrack_model_986100:$
gazetrack_model_986102: 
dense_6_986105:
dense_6_986107:*
batch_normalization_8_986110:*
batch_normalization_8_986112:*
batch_normalization_8_986114:*
batch_normalization_8_986116: 
dense_7_986120:
dense_7_986122:
identity��-batch_normalization_8/StatefulPartitionedCall�dense_6/StatefulPartitionedCall�dense_7/StatefulPartitionedCall�'gazetrack_model/StatefulPartitionedCall�
'gazetrack_model/StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3gazetrack_model_986020gazetrack_model_986022gazetrack_model_986024gazetrack_model_986026gazetrack_model_986028gazetrack_model_986030gazetrack_model_986032gazetrack_model_986034gazetrack_model_986036gazetrack_model_986038gazetrack_model_986040gazetrack_model_986042gazetrack_model_986044gazetrack_model_986046gazetrack_model_986048gazetrack_model_986050gazetrack_model_986052gazetrack_model_986054gazetrack_model_986056gazetrack_model_986058gazetrack_model_986060gazetrack_model_986062gazetrack_model_986064gazetrack_model_986066gazetrack_model_986068gazetrack_model_986070gazetrack_model_986072gazetrack_model_986074gazetrack_model_986076gazetrack_model_986078gazetrack_model_986080gazetrack_model_986082gazetrack_model_986084gazetrack_model_986086gazetrack_model_986088gazetrack_model_986090gazetrack_model_986092gazetrack_model_986094gazetrack_model_986096gazetrack_model_986098gazetrack_model_986100gazetrack_model_986102*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*>
_read_only_resource_inputs 
	
 !"%&'(+,*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_985385�
dense_6/StatefulPartitionedCallStatefulPartitionedCall0gazetrack_model/StatefulPartitionedCall:output:0dense_6_986105dense_6_986107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_6_layer_call_and_return_conditional_losses_984791�
-batch_normalization_8/StatefulPartitionedCallStatefulPartitionedCall(dense_6/StatefulPartitionedCall:output:0batch_normalization_8_986110batch_normalization_8_986112batch_normalization_8_986114batch_normalization_8_986116*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984448�
re_lu_2/PartitionedCallPartitionedCall6batch_normalization_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_984811�
dense_7/StatefulPartitionedCallStatefulPartitionedCall re_lu_2/PartitionedCall:output:0dense_7_986120dense_7_986122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_984823w
IdentityIdentity(dense_7/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp.^batch_normalization_8/StatefulPartitionedCall ^dense_6/StatefulPartitionedCall ^dense_7/StatefulPartitionedCall(^gazetrack_model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2^
-batch_normalization_8/StatefulPartitionedCall-batch_normalization_8/StatefulPartitionedCall2B
dense_6/StatefulPartitionedCalldense_6/StatefulPartitionedCall2B
dense_7/StatefulPartitionedCalldense_7/StatefulPartitionedCall2R
'gazetrack_model/StatefulPartitionedCall'gazetrack_model/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1:ZV
1
_output_shapes
:�����������
!
_user_specified_name	input_2:PL
'
_output_shapes
:���������
!
_user_specified_name	input_3
�
�
6__inference_batch_normalization_8_layer_call_fn_987864

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984448o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988213

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_983898

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988429

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_984120

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_4_layer_call_fn_988316

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_984155o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988151

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_3_layer_call_fn_988236

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_984073p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
D
(__inference_re_lu_2_layer_call_fn_987923

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_re_lu_2_layer_call_and_return_conditional_losses_984811`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988463

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987918

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
N
2__inference_average_pooling2d_layer_call_fn_988218

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4������������������������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_984046�
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4������������������������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�

0__inference_gazetrack_model_layer_call_fn_987173
	l_r_lms_0
	l_r_lms_1
	l_r_lms_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCall	l_r_lms_0	l_r_lms_1	l_r_lms_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*8
Tin1
/2-*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*L
_read_only_resource_inputs.
,*	
 !"#$%&'()*+,*0
config_proto 

CPU

GPU2*0J 8� *T
fORM
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_984695o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/0:\X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/1:RN
'
_output_shapes
:���������
#
_user_specified_name	l_r_lms/2
�
�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988089

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identity��AssignNewValue�AssignNewValue_1�FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+��������������������������� : : : : :*
epsilon%o�:*
exponential_avg_factor%���=�
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(�
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� �
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
��
�4
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_984695
l_r_lms
	l_r_lms_1
	l_r_lms_2I
/eye_model_conv2d_conv2d_readvariableop_resource: >
0eye_model_conv2d_biasadd_readvariableop_resource: C
5eye_model_batch_normalization_readvariableop_resource: E
7eye_model_batch_normalization_readvariableop_1_resource: T
Feye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: V
Heye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: K
1eye_model_conv2d_1_conv2d_readvariableop_resource: @@
2eye_model_conv2d_1_biasadd_readvariableop_resource:@E
7eye_model_batch_normalization_1_readvariableop_resource:@G
9eye_model_batch_normalization_1_readvariableop_1_resource:@V
Heye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@X
Jeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@L
1eye_model_conv2d_2_conv2d_readvariableop_resource:@�A
2eye_model_conv2d_2_biasadd_readvariableop_resource:	�F
7eye_model_batch_normalization_2_readvariableop_resource:	�H
9eye_model_batch_normalization_2_readvariableop_1_resource:	�W
Heye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�Y
Jeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�F
3landmark_model_dense_matmul_readvariableop_resource:	�C
4landmark_model_dense_biasadd_readvariableop_resource:	�U
Flandmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�Y
Jlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�W
Hlandmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource:	�W
Hlandmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource:	�H
5landmark_model_dense_1_matmul_readvariableop_resource:	�D
6landmark_model_dense_1_biasadd_readvariableop_resource:T
Flandmark_model_batch_normalization_4_batchnorm_readvariableop_resource:X
Jlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:V
Hlandmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource:V
Hlandmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource:G
5landmark_model_dense_2_matmul_readvariableop_resource:D
6landmark_model_dense_2_biasadd_readvariableop_resource:T
Flandmark_model_batch_normalization_5_batchnorm_readvariableop_resource:X
Jlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:V
Hlandmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource:V
Hlandmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource:9
&dense_3_matmul_readvariableop_resource:	�5
'dense_3_biasadd_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:G
9batch_normalization_6_batchnorm_readvariableop_1_resource:G
9batch_normalization_6_batchnorm_readvariableop_2_resource:
identity��.batch_normalization_6/batchnorm/ReadVariableOp�0batch_normalization_6/batchnorm/ReadVariableOp_1�0batch_normalization_6/batchnorm/ReadVariableOp_2�2batch_normalization_6/batchnorm/mul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�,eye_model/batch_normalization/ReadVariableOp�.eye_model/batch_normalization/ReadVariableOp_1�.eye_model/batch_normalization/ReadVariableOp_2�.eye_model/batch_normalization/ReadVariableOp_3�?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_1/ReadVariableOp�0eye_model/batch_normalization_1/ReadVariableOp_1�0eye_model/batch_normalization_1/ReadVariableOp_2�0eye_model/batch_normalization_1/ReadVariableOp_3�?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_2/ReadVariableOp�0eye_model/batch_normalization_2/ReadVariableOp_1�0eye_model/batch_normalization_2/ReadVariableOp_2�0eye_model/batch_normalization_2/ReadVariableOp_3�'eye_model/conv2d/BiasAdd/ReadVariableOp�)eye_model/conv2d/BiasAdd_1/ReadVariableOp�&eye_model/conv2d/Conv2D/ReadVariableOp�(eye_model/conv2d/Conv2D_1/ReadVariableOp�)eye_model/conv2d_1/BiasAdd/ReadVariableOp�+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_1/Conv2D/ReadVariableOp�*eye_model/conv2d_1/Conv2D_1/ReadVariableOp�)eye_model/conv2d_2/BiasAdd/ReadVariableOp�+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_2/Conv2D/ReadVariableOp�*eye_model/conv2d_2/Conv2D_1/ReadVariableOp�=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1�?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2�Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1�?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2�Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1�?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2�Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�+landmark_model/dense/BiasAdd/ReadVariableOp�*landmark_model/dense/MatMul/ReadVariableOp�-landmark_model/dense_1/BiasAdd/ReadVariableOp�,landmark_model/dense_1/MatMul/ReadVariableOp�-landmark_model/dense_2/BiasAdd/ReadVariableOp�,landmark_model/dense_2/MatMul/ReadVariableOp�
&eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2DConv2Dl_r_lms.eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
'eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAddBiasAdd eye_model/conv2d/Conv2D:output:0/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
,eye_model/batch_normalization/ReadVariableOpReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_1ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV3!eye_model/conv2d/BiasAdd:output:04eye_model/batch_normalization/ReadVariableOp:value:06eye_model/batch_normalization/ReadVariableOp_1:value:0Eeye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Geye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
eye_model/leaky_re_lu/LeakyRelu	LeakyRelu2eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
#eye_model/average_pooling2d/AvgPoolAvgPool-eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
eye_model/dropout/IdentityIdentity,eye_model/average_pooling2d/AvgPool:output:0*
T0*/
_output_shapes
:��������� �
(eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2DConv2D#eye_model/dropout/Identity:output:00eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
)eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAddBiasAdd"eye_model/conv2d_1/Conv2D:output:01eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.eye_model/batch_normalization_1/ReadVariableOpReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_1/BiasAdd:output:06eye_model/batch_normalization_1/ReadVariableOp:value:08eye_model/batch_normalization_1/ReadVariableOp_1:value:0Geye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_1	LeakyRelu4eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_1AvgPool/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_1Identity.eye_model/average_pooling2d/AvgPool_1:output:0*
T0*/
_output_shapes
:���������@�
(eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2DConv2D%eye_model/dropout/Identity_1:output:00eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAddBiasAdd"eye_model/conv2d_2/Conv2D:output:01eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
.eye_model/batch_normalization_2/ReadVariableOpReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_2/BiasAdd:output:06eye_model/batch_normalization_2/ReadVariableOp:value:08eye_model/batch_normalization_2/ReadVariableOp_1:value:0Geye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_2	LeakyRelu4eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_2AvgPool/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_2Identity.eye_model/average_pooling2d/AvgPool_2:output:0*
T0*0
_output_shapes
:�����������
(eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2D_1Conv2D	l_r_lms_10eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
)eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAdd_1BiasAdd"eye_model/conv2d/Conv2D_1:output:01eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
.eye_model/batch_normalization/ReadVariableOp_2ReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_3ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
0eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3#eye_model/conv2d/BiasAdd_1:output:06eye_model/batch_normalization/ReadVariableOp_2:value:06eye_model/batch_normalization/ReadVariableOp_3:value:0Geye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Ieye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_3	LeakyRelu4eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_3AvgPool/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_3Identity.eye_model/average_pooling2d/AvgPool_3:output:0*
T0*/
_output_shapes
:��������� �
*eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2D_1Conv2D%eye_model/dropout/Identity_3:output:02eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAdd_1BiasAdd$eye_model/conv2d_1/Conv2D_1:output:03eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
2eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_1/BiasAdd_1:output:08eye_model/batch_normalization_1/ReadVariableOp_2:value:08eye_model/batch_normalization_1/ReadVariableOp_3:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_4	LeakyRelu6eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_4AvgPool/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_4Identity.eye_model/average_pooling2d/AvgPool_4:output:0*
T0*/
_output_shapes
:���������@�
*eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2D_1Conv2D%eye_model/dropout/Identity_4:output:02eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAdd_1BiasAdd$eye_model/conv2d_2/Conv2D_1:output:03eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
0eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
2eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_2/BiasAdd_1:output:08eye_model/batch_normalization_2/ReadVariableOp_2:value:08eye_model/batch_normalization_2/ReadVariableOp_3:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_5	LeakyRelu6eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_5AvgPool/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_5Identity.eye_model/average_pooling2d/AvgPool_5:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten/ReshapeReshape%eye_model/dropout/Identity_2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_1/ReshapeReshape%eye_model/dropout/Identity_5:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
*landmark_model/dense/MatMul/ReadVariableOpReadVariableOp3landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense/MatMulMatMul	l_r_lms_22landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOp4landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
landmark_model/dense/BiasAddBiasAdd%landmark_model/dense/MatMul:product:03landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_3/batchnorm/addAddV2Elandmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:0=landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/mulMul8landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/mul_1Mul%landmark_model/dense/BiasAdd:output:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpHlandmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4landmark_model/batch_normalization_3/batchnorm/mul_2MulGlandmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1:value:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpHlandmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/subSubGlandmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2:value:08landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/add_1AddV28landmark_model/batch_normalization_3/batchnorm/mul_1:z:06landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
landmark_model/re_lu/ReluRelu8landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
,landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense_1/MatMulMatMul'landmark_model/re_lu/Relu:activations:04landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_1/BiasAddBiasAdd'landmark_model/dense_1/MatMul:product:05landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_4/batchnorm/addAddV2Elandmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:0=landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/mulMul8landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/mul_1Mul'landmark_model/dense_1/BiasAdd:output:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpHlandmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4landmark_model/batch_normalization_4/batchnorm/mul_2MulGlandmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1:value:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpHlandmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/subSubGlandmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2:value:08landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/add_1AddV28landmark_model/batch_normalization_4/batchnorm/mul_1:z:06landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_1Relu8landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
,landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
landmark_model/dense_2/MatMulMatMul)landmark_model/re_lu/Relu_1:activations:04landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_2/BiasAddBiasAdd'landmark_model/dense_2/MatMul:product:05landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_5/batchnorm/addAddV2Elandmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:0=landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/mulMul8landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/mul_1Mul'landmark_model/dense_2/BiasAdd:output:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpHlandmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4landmark_model/batch_normalization_5/batchnorm/mul_2MulGlandmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1:value:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpHlandmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/subSubGlandmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2:value:08landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/add_1AddV28landmark_model/batch_normalization_5/batchnorm/mul_1:z:06landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_2Relu8landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0)landmark_model/re_lu/Relu_2:activations:0concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_3/MatMulMatMulconcat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/mul_1Muldense_3/BiasAdd:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������{
dropout_1/IdentityIdentity)batch_normalization_6/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������c
re_lu_1/ReluReludropout_1/Identity:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentityre_lu_1/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp>^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp@^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpB^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1-^eye_model/batch_normalization/ReadVariableOp/^eye_model/batch_normalization/ReadVariableOp_1/^eye_model/batch_normalization/ReadVariableOp_2/^eye_model/batch_normalization/ReadVariableOp_3@^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_1/ReadVariableOp1^eye_model/batch_normalization_1/ReadVariableOp_11^eye_model/batch_normalization_1/ReadVariableOp_21^eye_model/batch_normalization_1/ReadVariableOp_3@^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_2/ReadVariableOp1^eye_model/batch_normalization_2/ReadVariableOp_11^eye_model/batch_normalization_2/ReadVariableOp_21^eye_model/batch_normalization_2/ReadVariableOp_3(^eye_model/conv2d/BiasAdd/ReadVariableOp*^eye_model/conv2d/BiasAdd_1/ReadVariableOp'^eye_model/conv2d/Conv2D/ReadVariableOp)^eye_model/conv2d/Conv2D_1/ReadVariableOp*^eye_model/conv2d_1/BiasAdd/ReadVariableOp,^eye_model/conv2d_1/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_1/Conv2D/ReadVariableOp+^eye_model/conv2d_1/Conv2D_1/ReadVariableOp*^eye_model/conv2d_2/BiasAdd/ReadVariableOp,^eye_model/conv2d_2/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_2/Conv2D/ReadVariableOp+^eye_model/conv2d_2/Conv2D_1/ReadVariableOp>^landmark_model/batch_normalization_3/batchnorm/ReadVariableOp@^landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1@^landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2B^landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp>^landmark_model/batch_normalization_4/batchnorm/ReadVariableOp@^landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1@^landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2B^landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp>^landmark_model/batch_normalization_5/batchnorm/ReadVariableOp@^landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1@^landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2B^landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp,^landmark_model/dense/BiasAdd/ReadVariableOp+^landmark_model/dense/MatMul/ReadVariableOp.^landmark_model/dense_1/BiasAdd/ReadVariableOp-^landmark_model/dense_1/MatMul/ReadVariableOp.^landmark_model/dense_2/BiasAdd/ReadVariableOp-^landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2~
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12\
,eye_model/batch_normalization/ReadVariableOp,eye_model/batch_normalization/ReadVariableOp2`
.eye_model/batch_normalization/ReadVariableOp_1.eye_model/batch_normalization/ReadVariableOp_12`
.eye_model/batch_normalization/ReadVariableOp_2.eye_model/batch_normalization/ReadVariableOp_22`
.eye_model/batch_normalization/ReadVariableOp_3.eye_model/batch_normalization/ReadVariableOp_32�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_1/ReadVariableOp.eye_model/batch_normalization_1/ReadVariableOp2d
0eye_model/batch_normalization_1/ReadVariableOp_10eye_model/batch_normalization_1/ReadVariableOp_12d
0eye_model/batch_normalization_1/ReadVariableOp_20eye_model/batch_normalization_1/ReadVariableOp_22d
0eye_model/batch_normalization_1/ReadVariableOp_30eye_model/batch_normalization_1/ReadVariableOp_32�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_2/ReadVariableOp.eye_model/batch_normalization_2/ReadVariableOp2d
0eye_model/batch_normalization_2/ReadVariableOp_10eye_model/batch_normalization_2/ReadVariableOp_12d
0eye_model/batch_normalization_2/ReadVariableOp_20eye_model/batch_normalization_2/ReadVariableOp_22d
0eye_model/batch_normalization_2/ReadVariableOp_30eye_model/batch_normalization_2/ReadVariableOp_32R
'eye_model/conv2d/BiasAdd/ReadVariableOp'eye_model/conv2d/BiasAdd/ReadVariableOp2V
)eye_model/conv2d/BiasAdd_1/ReadVariableOp)eye_model/conv2d/BiasAdd_1/ReadVariableOp2P
&eye_model/conv2d/Conv2D/ReadVariableOp&eye_model/conv2d/Conv2D/ReadVariableOp2T
(eye_model/conv2d/Conv2D_1/ReadVariableOp(eye_model/conv2d/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_1/BiasAdd/ReadVariableOp)eye_model/conv2d_1/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_1/Conv2D/ReadVariableOp(eye_model/conv2d_1/Conv2D/ReadVariableOp2X
*eye_model/conv2d_1/Conv2D_1/ReadVariableOp*eye_model/conv2d_1/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_2/BiasAdd/ReadVariableOp)eye_model/conv2d_2/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_2/Conv2D/ReadVariableOp(eye_model/conv2d_2/Conv2D/ReadVariableOp2X
*eye_model/conv2d_2/Conv2D_1/ReadVariableOp*eye_model/conv2d_2/Conv2D_1/ReadVariableOp2~
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_12�
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_22�
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2~
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_12�
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_22�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2~
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_12�
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_22�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2Z
+landmark_model/dense/BiasAdd/ReadVariableOp+landmark_model/dense/BiasAdd/ReadVariableOp2X
*landmark_model/dense/MatMul/ReadVariableOp*landmark_model/dense/MatMul/ReadVariableOp2^
-landmark_model/dense_1/BiasAdd/ReadVariableOp-landmark_model/dense_1/BiasAdd/ReadVariableOp2\
,landmark_model/dense_1/MatMul/ReadVariableOp,landmark_model/dense_1/MatMul/ReadVariableOp2^
-landmark_model/dense_2/BiasAdd/ReadVariableOp-landmark_model/dense_2/BiasAdd/ReadVariableOp2\
,landmark_model/dense_2/MatMul/ReadVariableOp,landmark_model/dense_2/MatMul/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	l_r_lms:ZV
1
_output_shapes
:�����������
!
_user_specified_name	l_r_lms:PL
'
_output_shapes
:���������
!
_user_specified_name	l_r_lms
�
�
(__inference_dense_7_layer_call_fn_987937

inputs
unknown:
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_dense_7_layer_call_and_return_conditional_losses_984823o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�h
"__inference__traced_restore_989260
file_prefix1
assignvariableop_dense_6_kernel:-
assignvariableop_1_dense_6_bias:<
.assignvariableop_2_batch_normalization_8_gamma:;
-assignvariableop_3_batch_normalization_8_beta:B
4assignvariableop_4_batch_normalization_8_moving_mean:F
8assignvariableop_5_batch_normalization_8_moving_variance:3
!assignvariableop_6_dense_7_kernel:-
assignvariableop_7_dense_7_bias:T
:assignvariableop_8_gazetrack_model_eye_model_conv2d_kernel: F
8assignvariableop_9_gazetrack_model_eye_model_conv2d_bias: W
=assignvariableop_10_gazetrack_model_eye_model_conv2d_1_kernel: @I
;assignvariableop_11_gazetrack_model_eye_model_conv2d_1_bias:@X
=assignvariableop_12_gazetrack_model_eye_model_conv2d_2_kernel:@�J
;assignvariableop_13_gazetrack_model_eye_model_conv2d_2_bias:	�U
Gassignvariableop_14_gazetrack_model_eye_model_batch_normalization_gamma: T
Fassignvariableop_15_gazetrack_model_eye_model_batch_normalization_beta: W
Iassignvariableop_16_gazetrack_model_eye_model_batch_normalization_1_gamma:@V
Hassignvariableop_17_gazetrack_model_eye_model_batch_normalization_1_beta:@X
Iassignvariableop_18_gazetrack_model_eye_model_batch_normalization_2_gamma:	�W
Hassignvariableop_19_gazetrack_model_eye_model_batch_normalization_2_beta:	�R
?assignvariableop_20_gazetrack_model_landmark_model_dense_kernel:	�L
=assignvariableop_21_gazetrack_model_landmark_model_dense_bias:	�T
Aassignvariableop_22_gazetrack_model_landmark_model_dense_1_kernel:	�M
?assignvariableop_23_gazetrack_model_landmark_model_dense_1_bias:S
Aassignvariableop_24_gazetrack_model_landmark_model_dense_2_kernel:M
?assignvariableop_25_gazetrack_model_landmark_model_dense_2_bias:]
Nassignvariableop_26_gazetrack_model_landmark_model_batch_normalization_3_gamma:	�\
Massignvariableop_27_gazetrack_model_landmark_model_batch_normalization_3_beta:	�\
Nassignvariableop_28_gazetrack_model_landmark_model_batch_normalization_4_gamma:[
Massignvariableop_29_gazetrack_model_landmark_model_batch_normalization_4_beta:\
Nassignvariableop_30_gazetrack_model_landmark_model_batch_normalization_5_gamma:[
Massignvariableop_31_gazetrack_model_landmark_model_batch_normalization_5_beta:E
2assignvariableop_32_gazetrack_model_dense_3_kernel:	�>
0assignvariableop_33_gazetrack_model_dense_3_bias:M
?assignvariableop_34_gazetrack_model_batch_normalization_6_gamma:L
>assignvariableop_35_gazetrack_model_batch_normalization_6_beta:[
Massignvariableop_36_gazetrack_model_eye_model_batch_normalization_moving_mean: _
Qassignvariableop_37_gazetrack_model_eye_model_batch_normalization_moving_variance: ]
Oassignvariableop_38_gazetrack_model_eye_model_batch_normalization_1_moving_mean:@a
Sassignvariableop_39_gazetrack_model_eye_model_batch_normalization_1_moving_variance:@^
Oassignvariableop_40_gazetrack_model_eye_model_batch_normalization_2_moving_mean:	�b
Sassignvariableop_41_gazetrack_model_eye_model_batch_normalization_2_moving_variance:	�c
Tassignvariableop_42_gazetrack_model_landmark_model_batch_normalization_3_moving_mean:	�g
Xassignvariableop_43_gazetrack_model_landmark_model_batch_normalization_3_moving_variance:	�b
Tassignvariableop_44_gazetrack_model_landmark_model_batch_normalization_4_moving_mean:f
Xassignvariableop_45_gazetrack_model_landmark_model_batch_normalization_4_moving_variance:b
Tassignvariableop_46_gazetrack_model_landmark_model_batch_normalization_5_moving_mean:f
Xassignvariableop_47_gazetrack_model_landmark_model_batch_normalization_5_moving_variance:S
Eassignvariableop_48_gazetrack_model_batch_normalization_6_moving_mean:W
Iassignvariableop_49_gazetrack_model_batch_normalization_6_moving_variance:'
assignvariableop_50_adam_iter:	 )
assignvariableop_51_adam_beta_1: )
assignvariableop_52_adam_beta_2: (
assignvariableop_53_adam_decay: 0
&assignvariableop_54_adam_learning_rate: %
assignvariableop_55_total_1: %
assignvariableop_56_count_1: #
assignvariableop_57_total: #
assignvariableop_58_count: ;
)assignvariableop_59_adam_dense_6_kernel_m:5
'assignvariableop_60_adam_dense_6_bias_m:D
6assignvariableop_61_adam_batch_normalization_8_gamma_m:C
5assignvariableop_62_adam_batch_normalization_8_beta_m:;
)assignvariableop_63_adam_dense_7_kernel_m:5
'assignvariableop_64_adam_dense_7_bias_m:\
Bassignvariableop_65_adam_gazetrack_model_eye_model_conv2d_kernel_m: N
@assignvariableop_66_adam_gazetrack_model_eye_model_conv2d_bias_m: ^
Dassignvariableop_67_adam_gazetrack_model_eye_model_conv2d_1_kernel_m: @P
Bassignvariableop_68_adam_gazetrack_model_eye_model_conv2d_1_bias_m:@_
Dassignvariableop_69_adam_gazetrack_model_eye_model_conv2d_2_kernel_m:@�Q
Bassignvariableop_70_adam_gazetrack_model_eye_model_conv2d_2_bias_m:	�\
Nassignvariableop_71_adam_gazetrack_model_eye_model_batch_normalization_gamma_m: [
Massignvariableop_72_adam_gazetrack_model_eye_model_batch_normalization_beta_m: ^
Passignvariableop_73_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_m:@]
Oassignvariableop_74_adam_gazetrack_model_eye_model_batch_normalization_1_beta_m:@_
Passignvariableop_75_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_m:	�^
Oassignvariableop_76_adam_gazetrack_model_eye_model_batch_normalization_2_beta_m:	�Y
Fassignvariableop_77_adam_gazetrack_model_landmark_model_dense_kernel_m:	�S
Dassignvariableop_78_adam_gazetrack_model_landmark_model_dense_bias_m:	�[
Hassignvariableop_79_adam_gazetrack_model_landmark_model_dense_1_kernel_m:	�T
Fassignvariableop_80_adam_gazetrack_model_landmark_model_dense_1_bias_m:Z
Hassignvariableop_81_adam_gazetrack_model_landmark_model_dense_2_kernel_m:T
Fassignvariableop_82_adam_gazetrack_model_landmark_model_dense_2_bias_m:d
Uassignvariableop_83_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_m:	�c
Tassignvariableop_84_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_m:	�c
Uassignvariableop_85_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_m:b
Tassignvariableop_86_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_m:c
Uassignvariableop_87_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_m:b
Tassignvariableop_88_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_m:L
9assignvariableop_89_adam_gazetrack_model_dense_3_kernel_m:	�E
7assignvariableop_90_adam_gazetrack_model_dense_3_bias_m:T
Fassignvariableop_91_adam_gazetrack_model_batch_normalization_6_gamma_m:S
Eassignvariableop_92_adam_gazetrack_model_batch_normalization_6_beta_m:;
)assignvariableop_93_adam_dense_6_kernel_v:5
'assignvariableop_94_adam_dense_6_bias_v:D
6assignvariableop_95_adam_batch_normalization_8_gamma_v:C
5assignvariableop_96_adam_batch_normalization_8_beta_v:;
)assignvariableop_97_adam_dense_7_kernel_v:5
'assignvariableop_98_adam_dense_7_bias_v:\
Bassignvariableop_99_adam_gazetrack_model_eye_model_conv2d_kernel_v: O
Aassignvariableop_100_adam_gazetrack_model_eye_model_conv2d_bias_v: _
Eassignvariableop_101_adam_gazetrack_model_eye_model_conv2d_1_kernel_v: @Q
Cassignvariableop_102_adam_gazetrack_model_eye_model_conv2d_1_bias_v:@`
Eassignvariableop_103_adam_gazetrack_model_eye_model_conv2d_2_kernel_v:@�R
Cassignvariableop_104_adam_gazetrack_model_eye_model_conv2d_2_bias_v:	�]
Oassignvariableop_105_adam_gazetrack_model_eye_model_batch_normalization_gamma_v: \
Nassignvariableop_106_adam_gazetrack_model_eye_model_batch_normalization_beta_v: _
Qassignvariableop_107_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_v:@^
Passignvariableop_108_adam_gazetrack_model_eye_model_batch_normalization_1_beta_v:@`
Qassignvariableop_109_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_v:	�_
Passignvariableop_110_adam_gazetrack_model_eye_model_batch_normalization_2_beta_v:	�Z
Gassignvariableop_111_adam_gazetrack_model_landmark_model_dense_kernel_v:	�T
Eassignvariableop_112_adam_gazetrack_model_landmark_model_dense_bias_v:	�\
Iassignvariableop_113_adam_gazetrack_model_landmark_model_dense_1_kernel_v:	�U
Gassignvariableop_114_adam_gazetrack_model_landmark_model_dense_1_bias_v:[
Iassignvariableop_115_adam_gazetrack_model_landmark_model_dense_2_kernel_v:U
Gassignvariableop_116_adam_gazetrack_model_landmark_model_dense_2_bias_v:e
Vassignvariableop_117_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_v:	�d
Uassignvariableop_118_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_v:	�d
Vassignvariableop_119_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_v:c
Uassignvariableop_120_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_v:d
Vassignvariableop_121_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_v:c
Uassignvariableop_122_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_v:M
:assignvariableop_123_adam_gazetrack_model_dense_3_kernel_v:	�F
8assignvariableop_124_adam_gazetrack_model_dense_3_bias_v:U
Gassignvariableop_125_adam_gazetrack_model_batch_normalization_6_gamma_v:T
Fassignvariableop_126_adam_gazetrack_model_batch_normalization_6_beta_v:
identity_128��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�;
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�:
value�:B�:�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-2/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-2/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/17/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/18/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/19/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/20/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/21/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/22/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/23/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/24/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/25/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/26/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/27/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_dense_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_batch_normalization_8_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_batch_normalization_8_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp4assignvariableop_4_batch_normalization_8_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp8assignvariableop_5_batch_normalization_8_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_dense_7_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_7_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp:assignvariableop_8_gazetrack_model_eye_model_conv2d_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp8assignvariableop_9_gazetrack_model_eye_model_conv2d_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp=assignvariableop_10_gazetrack_model_eye_model_conv2d_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp;assignvariableop_11_gazetrack_model_eye_model_conv2d_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp=assignvariableop_12_gazetrack_model_eye_model_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp;assignvariableop_13_gazetrack_model_eye_model_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpGassignvariableop_14_gazetrack_model_eye_model_batch_normalization_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpFassignvariableop_15_gazetrack_model_eye_model_batch_normalization_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpIassignvariableop_16_gazetrack_model_eye_model_batch_normalization_1_gammaIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpHassignvariableop_17_gazetrack_model_eye_model_batch_normalization_1_betaIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpIassignvariableop_18_gazetrack_model_eye_model_batch_normalization_2_gammaIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpHassignvariableop_19_gazetrack_model_eye_model_batch_normalization_2_betaIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp?assignvariableop_20_gazetrack_model_landmark_model_dense_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp=assignvariableop_21_gazetrack_model_landmark_model_dense_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpAassignvariableop_22_gazetrack_model_landmark_model_dense_1_kernelIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp?assignvariableop_23_gazetrack_model_landmark_model_dense_1_biasIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpAassignvariableop_24_gazetrack_model_landmark_model_dense_2_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp?assignvariableop_25_gazetrack_model_landmark_model_dense_2_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpNassignvariableop_26_gazetrack_model_landmark_model_batch_normalization_3_gammaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpMassignvariableop_27_gazetrack_model_landmark_model_batch_normalization_3_betaIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpNassignvariableop_28_gazetrack_model_landmark_model_batch_normalization_4_gammaIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpMassignvariableop_29_gazetrack_model_landmark_model_batch_normalization_4_betaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpNassignvariableop_30_gazetrack_model_landmark_model_batch_normalization_5_gammaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpMassignvariableop_31_gazetrack_model_landmark_model_batch_normalization_5_betaIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp2assignvariableop_32_gazetrack_model_dense_3_kernelIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp0assignvariableop_33_gazetrack_model_dense_3_biasIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp?assignvariableop_34_gazetrack_model_batch_normalization_6_gammaIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp>assignvariableop_35_gazetrack_model_batch_normalization_6_betaIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpMassignvariableop_36_gazetrack_model_eye_model_batch_normalization_moving_meanIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpQassignvariableop_37_gazetrack_model_eye_model_batch_normalization_moving_varianceIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOpOassignvariableop_38_gazetrack_model_eye_model_batch_normalization_1_moving_meanIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpSassignvariableop_39_gazetrack_model_eye_model_batch_normalization_1_moving_varianceIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpOassignvariableop_40_gazetrack_model_eye_model_batch_normalization_2_moving_meanIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpSassignvariableop_41_gazetrack_model_eye_model_batch_normalization_2_moving_varianceIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpTassignvariableop_42_gazetrack_model_landmark_model_batch_normalization_3_moving_meanIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpXassignvariableop_43_gazetrack_model_landmark_model_batch_normalization_3_moving_varianceIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpTassignvariableop_44_gazetrack_model_landmark_model_batch_normalization_4_moving_meanIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpXassignvariableop_45_gazetrack_model_landmark_model_batch_normalization_4_moving_varianceIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpTassignvariableop_46_gazetrack_model_landmark_model_batch_normalization_5_moving_meanIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpXassignvariableop_47_gazetrack_model_landmark_model_batch_normalization_5_moving_varianceIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpEassignvariableop_48_gazetrack_model_batch_normalization_6_moving_meanIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpIassignvariableop_49_gazetrack_model_batch_normalization_6_moving_varianceIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpassignvariableop_50_adam_iterIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpassignvariableop_51_adam_beta_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpassignvariableop_52_adam_beta_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpassignvariableop_53_adam_decayIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_learning_rateIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpassignvariableop_55_total_1Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOpassignvariableop_56_count_1Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpassignvariableop_57_totalIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOpassignvariableop_58_countIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_dense_6_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp'assignvariableop_60_adam_dense_6_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp6assignvariableop_61_adam_batch_normalization_8_gamma_mIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp5assignvariableop_62_adam_batch_normalization_8_beta_mIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_dense_7_kernel_mIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOp'assignvariableop_64_adam_dense_7_bias_mIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpBassignvariableop_65_adam_gazetrack_model_eye_model_conv2d_kernel_mIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOp@assignvariableop_66_adam_gazetrack_model_eye_model_conv2d_bias_mIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOpDassignvariableop_67_adam_gazetrack_model_eye_model_conv2d_1_kernel_mIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOpBassignvariableop_68_adam_gazetrack_model_eye_model_conv2d_1_bias_mIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOpDassignvariableop_69_adam_gazetrack_model_eye_model_conv2d_2_kernel_mIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOpBassignvariableop_70_adam_gazetrack_model_eye_model_conv2d_2_bias_mIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOpNassignvariableop_71_adam_gazetrack_model_eye_model_batch_normalization_gamma_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOpMassignvariableop_72_adam_gazetrack_model_eye_model_batch_normalization_beta_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOpPassignvariableop_73_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOpOassignvariableop_74_adam_gazetrack_model_eye_model_batch_normalization_1_beta_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOpPassignvariableop_75_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOpOassignvariableop_76_adam_gazetrack_model_eye_model_batch_normalization_2_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOpFassignvariableop_77_adam_gazetrack_model_landmark_model_dense_kernel_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOpDassignvariableop_78_adam_gazetrack_model_landmark_model_dense_bias_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOpHassignvariableop_79_adam_gazetrack_model_landmark_model_dense_1_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOpFassignvariableop_80_adam_gazetrack_model_landmark_model_dense_1_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOpHassignvariableop_81_adam_gazetrack_model_landmark_model_dense_2_kernel_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOpFassignvariableop_82_adam_gazetrack_model_landmark_model_dense_2_bias_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOpUassignvariableop_83_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOpTassignvariableop_84_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOpUassignvariableop_85_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOpTassignvariableop_86_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_mIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOpUassignvariableop_87_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_mIdentity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOpTassignvariableop_88_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_mIdentity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp9assignvariableop_89_adam_gazetrack_model_dense_3_kernel_mIdentity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp7assignvariableop_90_adam_gazetrack_model_dense_3_bias_mIdentity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOpFassignvariableop_91_adam_gazetrack_model_batch_normalization_6_gamma_mIdentity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOpEassignvariableop_92_adam_gazetrack_model_batch_normalization_6_beta_mIdentity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp)assignvariableop_93_adam_dense_6_kernel_vIdentity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp'assignvariableop_94_adam_dense_6_bias_vIdentity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOp6assignvariableop_95_adam_batch_normalization_8_gamma_vIdentity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOp5assignvariableop_96_adam_batch_normalization_8_beta_vIdentity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOp)assignvariableop_97_adam_dense_7_kernel_vIdentity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOp'assignvariableop_98_adam_dense_7_bias_vIdentity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOpBassignvariableop_99_adam_gazetrack_model_eye_model_conv2d_kernel_vIdentity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOpAassignvariableop_100_adam_gazetrack_model_eye_model_conv2d_bias_vIdentity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOpEassignvariableop_101_adam_gazetrack_model_eye_model_conv2d_1_kernel_vIdentity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOpCassignvariableop_102_adam_gazetrack_model_eye_model_conv2d_1_bias_vIdentity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOpEassignvariableop_103_adam_gazetrack_model_eye_model_conv2d_2_kernel_vIdentity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOpCassignvariableop_104_adam_gazetrack_model_eye_model_conv2d_2_bias_vIdentity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOpOassignvariableop_105_adam_gazetrack_model_eye_model_batch_normalization_gamma_vIdentity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOpNassignvariableop_106_adam_gazetrack_model_eye_model_batch_normalization_beta_vIdentity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOpQassignvariableop_107_adam_gazetrack_model_eye_model_batch_normalization_1_gamma_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOpPassignvariableop_108_adam_gazetrack_model_eye_model_batch_normalization_1_beta_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOpQassignvariableop_109_adam_gazetrack_model_eye_model_batch_normalization_2_gamma_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOpPassignvariableop_110_adam_gazetrack_model_eye_model_batch_normalization_2_beta_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOpGassignvariableop_111_adam_gazetrack_model_landmark_model_dense_kernel_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOpEassignvariableop_112_adam_gazetrack_model_landmark_model_dense_bias_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOpIassignvariableop_113_adam_gazetrack_model_landmark_model_dense_1_kernel_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOpGassignvariableop_114_adam_gazetrack_model_landmark_model_dense_1_bias_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOpIassignvariableop_115_adam_gazetrack_model_landmark_model_dense_2_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOpGassignvariableop_116_adam_gazetrack_model_landmark_model_dense_2_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOpVassignvariableop_117_adam_gazetrack_model_landmark_model_batch_normalization_3_gamma_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOpUassignvariableop_118_adam_gazetrack_model_landmark_model_batch_normalization_3_beta_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOpVassignvariableop_119_adam_gazetrack_model_landmark_model_batch_normalization_4_gamma_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOpUassignvariableop_120_adam_gazetrack_model_landmark_model_batch_normalization_4_beta_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOpVassignvariableop_121_adam_gazetrack_model_landmark_model_batch_normalization_5_gamma_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOpUassignvariableop_122_adam_gazetrack_model_landmark_model_batch_normalization_5_beta_vIdentity_122:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOp:assignvariableop_123_adam_gazetrack_model_dense_3_kernel_vIdentity_123:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOp8assignvariableop_124_adam_gazetrack_model_dense_3_bias_vIdentity_124:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOpGassignvariableop_125_adam_gazetrack_model_batch_normalization_6_gamma_vIdentity_125:output:0"/device:CPU:0*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOpFassignvariableop_126_adam_gazetrack_model_batch_normalization_6_beta_vIdentity_126:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_127Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_128IdentityIdentity_127:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*"
_acd_function_control_output(*
_output_shapes
 "%
identity_128Identity_128:output:0*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�%
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988303

inputs6
'assignmovingavg_readvariableop_resource:	�8
)assignmovingavg_1_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�0
!batchnorm_readvariableop_resource:	�
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	��
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:����������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	�*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:�*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:�y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:�*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:�
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:��
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
&__inference_model_layer_call_fn_986348
inputs_0
inputs_1
inputs_2!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@�

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:	�

unknown_18:	�

unknown_19:	�

unknown_20:	�

unknown_21:	�

unknown_22:	�

unknown_23:	�

unknown_24:

unknown_25:

unknown_26:

unknown_27:

unknown_28:

unknown_29:

unknown_30:

unknown_31:

unknown_32:

unknown_33:

unknown_34:

unknown_35:	�

unknown_36:

unknown_37:

unknown_38:

unknown_39:

unknown_40:

unknown_41:

unknown_42:

unknown_43:

unknown_44:

unknown_45:

unknown_46:

unknown_47:

unknown_48:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48*@
Tin9
725*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*T
_read_only_resource_inputs6
42	
 !"#$%&'()*+,-./01234*0
config_proto 

CPU

GPU2*0J 8� *J
fERC
A__inference_model_layer_call_and_return_conditional_losses_984830o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/0:[W
1
_output_shapes
:�����������
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:���������
"
_user_specified_name
inputs/2
�
�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_983931

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+���������������������������@:@:@:@:@:*
epsilon%o�:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@�
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988269

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988195

inputs&
readvariableop_resource:	�(
readvariableop_1_resource:	�7
(fusedbatchnormv3_readvariableop_resource:	�9
*fusedbatchnormv3_readvariableop_1_resource:	�
identity��FusedBatchNormV3/ReadVariableOp�!FusedBatchNormV3/ReadVariableOp_1�ReadVariableOp�ReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:�*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,����������������������������:�:�:�:�:*
epsilon%o�:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,�����������������������������
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,����������������������������: : : : 2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:j f
B
_output_shapes0
.:,����������������������������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_984448

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_984073

inputs0
!batchnorm_readvariableop_resource:	�4
%batchnorm_mul_readvariableop_resource:	�2
#batchnorm_readvariableop_1_resource:	�2
#batchnorm_readvariableop_2_resource:	�
identity��batchnorm/ReadVariableOp�batchnorm/ReadVariableOp_1�batchnorm/ReadVariableOp_2�batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:�Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:�
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:�d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:����������{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:�{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:�s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:����������c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_6_layer_call_fn_987960

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_984319o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
4__inference_batch_normalization_layer_call_fn_988040

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+��������������������������� *&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *X
fSRQ
O__inference_batch_normalization_layer_call_and_return_conditional_losses_983867�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+��������������������������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+��������������������������� : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+��������������������������� 
 
_user_specified_nameinputs
�	
�
C__inference_dense_7_layer_call_and_return_conditional_losses_987947

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
_
C__inference_re_lu_2_layer_call_and_return_conditional_losses_984811

inputs
identityF
ReluReluinputs*
T0*'
_output_shapes
:���������Z
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�	
�
C__inference_dense_7_layer_call_and_return_conditional_losses_984823

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
6__inference_batch_normalization_3_layer_call_fn_988249

inputs
unknown:	�
	unknown_0:	�
	unknown_1:	�
	unknown_2:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_984120p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�	
�
6__inference_batch_normalization_1_layer_call_fn_988115

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+���������������������������@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_983962�
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+���������������������������@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+���������������������������@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+���������������������������@
 
_user_specified_nameinputs
��
�4
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987489
	l_r_lms_0
	l_r_lms_1
	l_r_lms_2I
/eye_model_conv2d_conv2d_readvariableop_resource: >
0eye_model_conv2d_biasadd_readvariableop_resource: C
5eye_model_batch_normalization_readvariableop_resource: E
7eye_model_batch_normalization_readvariableop_1_resource: T
Feye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource: V
Heye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: K
1eye_model_conv2d_1_conv2d_readvariableop_resource: @@
2eye_model_conv2d_1_biasadd_readvariableop_resource:@E
7eye_model_batch_normalization_1_readvariableop_resource:@G
9eye_model_batch_normalization_1_readvariableop_1_resource:@V
Heye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@X
Jeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@L
1eye_model_conv2d_2_conv2d_readvariableop_resource:@�A
2eye_model_conv2d_2_biasadd_readvariableop_resource:	�F
7eye_model_batch_normalization_2_readvariableop_resource:	�H
9eye_model_batch_normalization_2_readvariableop_1_resource:	�W
Heye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	�Y
Jeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	�F
3landmark_model_dense_matmul_readvariableop_resource:	�C
4landmark_model_dense_biasadd_readvariableop_resource:	�U
Flandmark_model_batch_normalization_3_batchnorm_readvariableop_resource:	�Y
Jlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource:	�W
Hlandmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource:	�W
Hlandmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource:	�H
5landmark_model_dense_1_matmul_readvariableop_resource:	�D
6landmark_model_dense_1_biasadd_readvariableop_resource:T
Flandmark_model_batch_normalization_4_batchnorm_readvariableop_resource:X
Jlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource:V
Hlandmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource:V
Hlandmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource:G
5landmark_model_dense_2_matmul_readvariableop_resource:D
6landmark_model_dense_2_biasadd_readvariableop_resource:T
Flandmark_model_batch_normalization_5_batchnorm_readvariableop_resource:X
Jlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource:V
Hlandmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource:V
Hlandmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource:9
&dense_3_matmul_readvariableop_resource:	�5
'dense_3_biasadd_readvariableop_resource:E
7batch_normalization_6_batchnorm_readvariableop_resource:I
;batch_normalization_6_batchnorm_mul_readvariableop_resource:G
9batch_normalization_6_batchnorm_readvariableop_1_resource:G
9batch_normalization_6_batchnorm_readvariableop_2_resource:
identity��.batch_normalization_6/batchnorm/ReadVariableOp�0batch_normalization_6/batchnorm/ReadVariableOp_1�0batch_normalization_6/batchnorm/ReadVariableOp_2�2batch_normalization_6/batchnorm/mul/ReadVariableOp�dense_3/BiasAdd/ReadVariableOp�dense_3/MatMul/ReadVariableOp�=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp�?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1�?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp�Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1�,eye_model/batch_normalization/ReadVariableOp�.eye_model/batch_normalization/ReadVariableOp_1�.eye_model/batch_normalization/ReadVariableOp_2�.eye_model/batch_normalization/ReadVariableOp_3�?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_1/ReadVariableOp�0eye_model/batch_normalization_1/ReadVariableOp_1�0eye_model/batch_normalization_1/ReadVariableOp_2�0eye_model/batch_normalization_1/ReadVariableOp_3�?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp�Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1�Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp�Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1�.eye_model/batch_normalization_2/ReadVariableOp�0eye_model/batch_normalization_2/ReadVariableOp_1�0eye_model/batch_normalization_2/ReadVariableOp_2�0eye_model/batch_normalization_2/ReadVariableOp_3�'eye_model/conv2d/BiasAdd/ReadVariableOp�)eye_model/conv2d/BiasAdd_1/ReadVariableOp�&eye_model/conv2d/Conv2D/ReadVariableOp�(eye_model/conv2d/Conv2D_1/ReadVariableOp�)eye_model/conv2d_1/BiasAdd/ReadVariableOp�+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_1/Conv2D/ReadVariableOp�*eye_model/conv2d_1/Conv2D_1/ReadVariableOp�)eye_model/conv2d_2/BiasAdd/ReadVariableOp�+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp�(eye_model/conv2d_2/Conv2D/ReadVariableOp�*eye_model/conv2d_2/Conv2D_1/ReadVariableOp�=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp�?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1�?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2�Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp�=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp�?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1�?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2�Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp�=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp�?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1�?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2�Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp�+landmark_model/dense/BiasAdd/ReadVariableOp�*landmark_model/dense/MatMul/ReadVariableOp�-landmark_model/dense_1/BiasAdd/ReadVariableOp�,landmark_model/dense_1/MatMul/ReadVariableOp�-landmark_model/dense_2/BiasAdd/ReadVariableOp�,landmark_model/dense_2/MatMul/ReadVariableOp�
&eye_model/conv2d/Conv2D/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2DConv2D	l_r_lms_0.eye_model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
'eye_model/conv2d/BiasAdd/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAddBiasAdd eye_model/conv2d/Conv2D:output:0/eye_model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
,eye_model/batch_normalization/ReadVariableOpReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_1ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/FusedBatchNormV3FusedBatchNormV3!eye_model/conv2d/BiasAdd:output:04eye_model/batch_normalization/ReadVariableOp:value:06eye_model/batch_normalization/ReadVariableOp_1:value:0Eeye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Geye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
eye_model/leaky_re_lu/LeakyRelu	LeakyRelu2eye_model/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
#eye_model/average_pooling2d/AvgPoolAvgPool-eye_model/leaky_re_lu/LeakyRelu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
eye_model/dropout/IdentityIdentity,eye_model/average_pooling2d/AvgPool:output:0*
T0*/
_output_shapes
:��������� �
(eye_model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2DConv2D#eye_model/dropout/Identity:output:00eye_model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
)eye_model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAddBiasAdd"eye_model/conv2d_1/Conv2D:output:01eye_model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
.eye_model/batch_normalization_1/ReadVariableOpReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_1/BiasAdd:output:06eye_model/batch_normalization_1/ReadVariableOp:value:08eye_model/batch_normalization_1/ReadVariableOp_1:value:0Geye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_1	LeakyRelu4eye_model/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_1AvgPool/eye_model/leaky_re_lu/LeakyRelu_1:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_1Identity.eye_model/average_pooling2d/AvgPool_1:output:0*
T0*/
_output_shapes
:���������@�
(eye_model/conv2d_2/Conv2D/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2DConv2D%eye_model/dropout/Identity_1:output:00eye_model/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
)eye_model/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAddBiasAdd"eye_model/conv2d_2/Conv2D:output:01eye_model/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
.eye_model/batch_normalization_2/ReadVariableOpReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_1ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3#eye_model/conv2d_2/BiasAdd:output:06eye_model/batch_normalization_2/ReadVariableOp:value:08eye_model/batch_normalization_2/ReadVariableOp_1:value:0Geye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_2	LeakyRelu4eye_model/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_2AvgPool/eye_model/leaky_re_lu/LeakyRelu_2:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_2Identity.eye_model/average_pooling2d/AvgPool_2:output:0*
T0*0
_output_shapes
:�����������
(eye_model/conv2d/Conv2D_1/ReadVariableOpReadVariableOp/eye_model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
eye_model/conv2d/Conv2D_1Conv2D	l_r_lms_10eye_model/conv2d/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== *
paddingVALID*
strides
�
)eye_model/conv2d/BiasAdd_1/ReadVariableOpReadVariableOp0eye_model_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
eye_model/conv2d/BiasAdd_1BiasAdd"eye_model/conv2d/Conv2D_1:output:01eye_model/conv2d/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������== �
.eye_model/batch_normalization/ReadVariableOp_2ReadVariableOp5eye_model_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0�
.eye_model/batch_normalization/ReadVariableOp_3ReadVariableOp7eye_model_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpReadVariableOpFeye_model_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpHeye_model_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0�
0eye_model/batch_normalization/FusedBatchNormV3_1FusedBatchNormV3#eye_model/conv2d/BiasAdd_1:output:06eye_model/batch_normalization/ReadVariableOp_2:value:06eye_model/batch_normalization/ReadVariableOp_3:value:0Geye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp:value:0Ieye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������== : : : : :*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_3	LeakyRelu4eye_model/batch_normalization/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������== *
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_3AvgPool/eye_model/leaky_re_lu/LeakyRelu_3:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_3Identity.eye_model/average_pooling2d/AvgPool_3:output:0*
T0*/
_output_shapes
:��������� �
*eye_model/conv2d_1/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0�
eye_model/conv2d_1/Conv2D_1Conv2D%eye_model/dropout/Identity_3:output:02eye_model/conv2d_1/Conv2D_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
eye_model/conv2d_1/BiasAdd_1BiasAdd$eye_model/conv2d_1/Conv2D_1:output:03eye_model/conv2d_1/BiasAdd_1/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@�
0eye_model/batch_normalization_1/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
0eye_model/batch_normalization_1/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0�
2eye_model/batch_normalization_1/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_1/BiasAdd_1:output:08eye_model/batch_normalization_1/ReadVariableOp_2:value:08eye_model/batch_normalization_1/ReadVariableOp_3:value:0Ieye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:���������@:@:@:@:@:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_4	LeakyRelu6eye_model/batch_normalization_1/FusedBatchNormV3_1:y:0*/
_output_shapes
:���������@*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_4AvgPool/eye_model/leaky_re_lu/LeakyRelu_4:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_4Identity.eye_model/average_pooling2d/AvgPool_4:output:0*
T0*/
_output_shapes
:���������@�
*eye_model/conv2d_2/Conv2D_1/ReadVariableOpReadVariableOp1eye_model_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@�*
dtype0�
eye_model/conv2d_2/Conv2D_1Conv2D%eye_model/dropout/Identity_4:output:02eye_model/conv2d_2/Conv2D_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������*
paddingVALID*
strides
�
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOpReadVariableOp2eye_model_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
eye_model/conv2d_2/BiasAdd_1BiasAdd$eye_model/conv2d_2/Conv2D_1:output:03eye_model/conv2d_2/BiasAdd_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:�����������
0eye_model/batch_normalization_2/ReadVariableOp_2ReadVariableOp7eye_model_batch_normalization_2_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0eye_model/batch_normalization_2/ReadVariableOp_3ReadVariableOp9eye_model_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpReadVariableOpHeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1ReadVariableOpJeye_model_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
2eye_model/batch_normalization_2/FusedBatchNormV3_1FusedBatchNormV3%eye_model/conv2d_2/BiasAdd_1:output:08eye_model/batch_normalization_2/ReadVariableOp_2:value:08eye_model/batch_normalization_2/ReadVariableOp_3:value:0Ieye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp:value:0Keye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:����������:�:�:�:�:*
epsilon%o�:*
is_training( �
!eye_model/leaky_re_lu/LeakyRelu_5	LeakyRelu6eye_model/batch_normalization_2/FusedBatchNormV3_1:y:0*0
_output_shapes
:����������*
alpha%
�#<�
%eye_model/average_pooling2d/AvgPool_5AvgPool/eye_model/leaky_re_lu/LeakyRelu_5:activations:0*
T0*0
_output_shapes
:����������*
ksize
*
paddingVALID*
strides
�
eye_model/dropout/Identity_5Identity.eye_model/average_pooling2d/AvgPool_5:output:0*
T0*0
_output_shapes
:����������^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten/ReshapeReshape%eye_model/dropout/Identity_2:output:0flatten/Const:output:0*
T0*(
_output_shapes
:����������`
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_1/ReshapeReshape%eye_model/dropout/Identity_5:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:�����������
*landmark_model/dense/MatMul/ReadVariableOpReadVariableOp3landmark_model_dense_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense/MatMulMatMul	l_r_lms_22landmark_model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+landmark_model/dense/BiasAdd/ReadVariableOpReadVariableOp4landmark_model_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
landmark_model/dense/BiasAddBiasAdd%landmark_model/dense/MatMul:product:03landmark_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0y
4landmark_model/batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_3/batchnorm/addAddV2Elandmark_model/batch_normalization_3/batchnorm/ReadVariableOp:value:0=landmark_model/batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes	
:��
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/mulMul8landmark_model/batch_normalization_3/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/mul_1Mul%landmark_model/dense/BiasAdd:output:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*(
_output_shapes
:�����������
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpHlandmark_model_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes	
:�*
dtype0�
4landmark_model/batch_normalization_3/batchnorm/mul_2MulGlandmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1:value:06landmark_model/batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes	
:��
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpHlandmark_model_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes	
:�*
dtype0�
2landmark_model/batch_normalization_3/batchnorm/subSubGlandmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2:value:08landmark_model/batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:��
4landmark_model/batch_normalization_3/batchnorm/add_1AddV28landmark_model/batch_normalization_3/batchnorm/mul_1:z:06landmark_model/batch_normalization_3/batchnorm/sub:z:0*
T0*(
_output_shapes
:�����������
landmark_model/re_lu/ReluRelu8landmark_model/batch_normalization_3/batchnorm/add_1:z:0*
T0*(
_output_shapes
:�����������
,landmark_model/dense_1/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
landmark_model/dense_1/MatMulMatMul'landmark_model/re_lu/Relu:activations:04landmark_model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_1/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_1/BiasAddBiasAdd'landmark_model/dense_1/MatMul:product:05landmark_model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4landmark_model/batch_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_4/batchnorm/addAddV2Elandmark_model/batch_normalization_4/batchnorm/ReadVariableOp:value:0=landmark_model/batch_normalization_4/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_4/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/mulMul8landmark_model/batch_normalization_4/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/mul_1Mul'landmark_model/dense_1/BiasAdd:output:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1ReadVariableOpHlandmark_model_batch_normalization_4_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4landmark_model/batch_normalization_4/batchnorm/mul_2MulGlandmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1:value:06landmark_model/batch_normalization_4/batchnorm/mul:z:0*
T0*
_output_shapes
:�
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2ReadVariableOpHlandmark_model_batch_normalization_4_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_4/batchnorm/subSubGlandmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2:value:08landmark_model/batch_normalization_4/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_4/batchnorm/add_1AddV28landmark_model/batch_normalization_4/batchnorm/mul_1:z:06landmark_model/batch_normalization_4/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_1Relu8landmark_model/batch_normalization_4/batchnorm/add_1:z:0*
T0*'
_output_shapes
:����������
,landmark_model/dense_2/MatMul/ReadVariableOpReadVariableOp5landmark_model_dense_2_matmul_readvariableop_resource*
_output_shapes

:*
dtype0�
landmark_model/dense_2/MatMulMatMul)landmark_model/re_lu/Relu_1:activations:04landmark_model/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
-landmark_model/dense_2/BiasAdd/ReadVariableOpReadVariableOp6landmark_model_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
landmark_model/dense_2/BiasAddBiasAdd'landmark_model/dense_2/MatMul:product:05landmark_model/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOpReadVariableOpFlandmark_model_batch_normalization_5_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0y
4landmark_model/batch_normalization_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
2landmark_model/batch_normalization_5/batchnorm/addAddV2Elandmark_model/batch_normalization_5/batchnorm/ReadVariableOp:value:0=landmark_model/batch_normalization_5/batchnorm/add/y:output:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/RsqrtRsqrt6landmark_model/batch_normalization_5/batchnorm/add:z:0*
T0*
_output_shapes
:�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpReadVariableOpJlandmark_model_batch_normalization_5_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/mulMul8landmark_model/batch_normalization_5/batchnorm/Rsqrt:y:0Ilandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/mul_1Mul'landmark_model/dense_2/BiasAdd:output:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1ReadVariableOpHlandmark_model_batch_normalization_5_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
4landmark_model/batch_normalization_5/batchnorm/mul_2MulGlandmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1:value:06landmark_model/batch_normalization_5/batchnorm/mul:z:0*
T0*
_output_shapes
:�
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2ReadVariableOpHlandmark_model_batch_normalization_5_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
2landmark_model/batch_normalization_5/batchnorm/subSubGlandmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2:value:08landmark_model/batch_normalization_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
4landmark_model/batch_normalization_5/batchnorm/add_1AddV28landmark_model/batch_normalization_5/batchnorm/mul_1:z:06landmark_model/batch_normalization_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:����������
landmark_model/re_lu/Relu_2Relu8landmark_model/batch_normalization_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0)landmark_model/re_lu/Relu_2:activations:0concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_3/MatMulMatMulconcat:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
.batch_normalization_6/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_6_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0j
%batch_normalization_6/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
#batch_normalization_6/batchnorm/addAddV26batch_normalization_6/batchnorm/ReadVariableOp:value:0.batch_normalization_6/batchnorm/add/y:output:0*
T0*
_output_shapes
:|
%batch_normalization_6/batchnorm/RsqrtRsqrt'batch_normalization_6/batchnorm/add:z:0*
T0*
_output_shapes
:�
2batch_normalization_6/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_6_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/mulMul)batch_normalization_6/batchnorm/Rsqrt:y:0:batch_normalization_6/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/mul_1Muldense_3/BiasAdd:output:0'batch_normalization_6/batchnorm/mul:z:0*
T0*'
_output_shapes
:����������
0batch_normalization_6/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0�
%batch_normalization_6/batchnorm/mul_2Mul8batch_normalization_6/batchnorm/ReadVariableOp_1:value:0'batch_normalization_6/batchnorm/mul:z:0*
T0*
_output_shapes
:�
0batch_normalization_6/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_6_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0�
#batch_normalization_6/batchnorm/subSub8batch_normalization_6/batchnorm/ReadVariableOp_2:value:0)batch_normalization_6/batchnorm/mul_2:z:0*
T0*
_output_shapes
:�
%batch_normalization_6/batchnorm/add_1AddV2)batch_normalization_6/batchnorm/mul_1:z:0'batch_normalization_6/batchnorm/sub:z:0*
T0*'
_output_shapes
:���������{
dropout_1/IdentityIdentity)batch_normalization_6/batchnorm/add_1:z:0*
T0*'
_output_shapes
:���������c
re_lu_1/ReluReludropout_1/Identity:output:0*
T0*'
_output_shapes
:���������i
IdentityIdentityre_lu_1/Relu:activations:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp/^batch_normalization_6/batchnorm/ReadVariableOp1^batch_normalization_6/batchnorm/ReadVariableOp_11^batch_normalization_6/batchnorm/ReadVariableOp_23^batch_normalization_6/batchnorm/mul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp>^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp@^eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOpB^eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1-^eye_model/batch_normalization/ReadVariableOp/^eye_model/batch_normalization/ReadVariableOp_1/^eye_model/batch_normalization/ReadVariableOp_2/^eye_model/batch_normalization/ReadVariableOp_3@^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_1/ReadVariableOp1^eye_model/batch_normalization_1/ReadVariableOp_11^eye_model/batch_normalization_1/ReadVariableOp_21^eye_model/batch_normalization_1/ReadVariableOp_3@^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOpB^eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1B^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpD^eye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1/^eye_model/batch_normalization_2/ReadVariableOp1^eye_model/batch_normalization_2/ReadVariableOp_11^eye_model/batch_normalization_2/ReadVariableOp_21^eye_model/batch_normalization_2/ReadVariableOp_3(^eye_model/conv2d/BiasAdd/ReadVariableOp*^eye_model/conv2d/BiasAdd_1/ReadVariableOp'^eye_model/conv2d/Conv2D/ReadVariableOp)^eye_model/conv2d/Conv2D_1/ReadVariableOp*^eye_model/conv2d_1/BiasAdd/ReadVariableOp,^eye_model/conv2d_1/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_1/Conv2D/ReadVariableOp+^eye_model/conv2d_1/Conv2D_1/ReadVariableOp*^eye_model/conv2d_2/BiasAdd/ReadVariableOp,^eye_model/conv2d_2/BiasAdd_1/ReadVariableOp)^eye_model/conv2d_2/Conv2D/ReadVariableOp+^eye_model/conv2d_2/Conv2D_1/ReadVariableOp>^landmark_model/batch_normalization_3/batchnorm/ReadVariableOp@^landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1@^landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2B^landmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp>^landmark_model/batch_normalization_4/batchnorm/ReadVariableOp@^landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1@^landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2B^landmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp>^landmark_model/batch_normalization_5/batchnorm/ReadVariableOp@^landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1@^landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2B^landmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp,^landmark_model/dense/BiasAdd/ReadVariableOp+^landmark_model/dense/MatMul/ReadVariableOp.^landmark_model/dense_1/BiasAdd/ReadVariableOp-^landmark_model/dense_1/MatMul/ReadVariableOp.^landmark_model/dense_2/BiasAdd/ReadVariableOp-^landmark_model/dense_2/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:�����������:�����������:���������: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_6/batchnorm/ReadVariableOp.batch_normalization_6/batchnorm/ReadVariableOp2d
0batch_normalization_6/batchnorm/ReadVariableOp_10batch_normalization_6/batchnorm/ReadVariableOp_12d
0batch_normalization_6/batchnorm/ReadVariableOp_20batch_normalization_6/batchnorm/ReadVariableOp_22h
2batch_normalization_6/batchnorm/mul/ReadVariableOp2batch_normalization_6/batchnorm/mul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2~
=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp=eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp2�
?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1?eye_model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12�
?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp?eye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp2�
Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_1Aeye_model/batch_normalization/FusedBatchNormV3_1/ReadVariableOp_12\
,eye_model/batch_normalization/ReadVariableOp,eye_model/batch_normalization/ReadVariableOp2`
.eye_model/batch_normalization/ReadVariableOp_1.eye_model/batch_normalization/ReadVariableOp_12`
.eye_model/batch_normalization/ReadVariableOp_2.eye_model/batch_normalization/ReadVariableOp_22`
.eye_model/batch_normalization/ReadVariableOp_3.eye_model/batch_normalization/ReadVariableOp_32�
?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_1/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_1/ReadVariableOp.eye_model/batch_normalization_1/ReadVariableOp2d
0eye_model/batch_normalization_1/ReadVariableOp_10eye_model/batch_normalization_1/ReadVariableOp_12d
0eye_model/batch_normalization_1/ReadVariableOp_20eye_model/batch_normalization_1/ReadVariableOp_22d
0eye_model/batch_normalization_1/ReadVariableOp_30eye_model/batch_normalization_1/ReadVariableOp_32�
?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp?eye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2�
Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Aeye_model/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12�
Aeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOpAeye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp2�
Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_1Ceye_model/batch_normalization_2/FusedBatchNormV3_1/ReadVariableOp_12`
.eye_model/batch_normalization_2/ReadVariableOp.eye_model/batch_normalization_2/ReadVariableOp2d
0eye_model/batch_normalization_2/ReadVariableOp_10eye_model/batch_normalization_2/ReadVariableOp_12d
0eye_model/batch_normalization_2/ReadVariableOp_20eye_model/batch_normalization_2/ReadVariableOp_22d
0eye_model/batch_normalization_2/ReadVariableOp_30eye_model/batch_normalization_2/ReadVariableOp_32R
'eye_model/conv2d/BiasAdd/ReadVariableOp'eye_model/conv2d/BiasAdd/ReadVariableOp2V
)eye_model/conv2d/BiasAdd_1/ReadVariableOp)eye_model/conv2d/BiasAdd_1/ReadVariableOp2P
&eye_model/conv2d/Conv2D/ReadVariableOp&eye_model/conv2d/Conv2D/ReadVariableOp2T
(eye_model/conv2d/Conv2D_1/ReadVariableOp(eye_model/conv2d/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_1/BiasAdd/ReadVariableOp)eye_model/conv2d_1/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp+eye_model/conv2d_1/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_1/Conv2D/ReadVariableOp(eye_model/conv2d_1/Conv2D/ReadVariableOp2X
*eye_model/conv2d_1/Conv2D_1/ReadVariableOp*eye_model/conv2d_1/Conv2D_1/ReadVariableOp2V
)eye_model/conv2d_2/BiasAdd/ReadVariableOp)eye_model/conv2d_2/BiasAdd/ReadVariableOp2Z
+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp+eye_model/conv2d_2/BiasAdd_1/ReadVariableOp2T
(eye_model/conv2d_2/Conv2D/ReadVariableOp(eye_model/conv2d_2/Conv2D/ReadVariableOp2X
*eye_model/conv2d_2/Conv2D_1/ReadVariableOp*eye_model/conv2d_2/Conv2D_1/ReadVariableOp2~
=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp=landmark_model/batch_normalization_3/batchnorm/ReadVariableOp2�
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_1?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_12�
?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_2?landmark_model/batch_normalization_3/batchnorm/ReadVariableOp_22�
Alandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_3/batchnorm/mul/ReadVariableOp2~
=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp=landmark_model/batch_normalization_4/batchnorm/ReadVariableOp2�
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_1?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_12�
?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_2?landmark_model/batch_normalization_4/batchnorm/ReadVariableOp_22�
Alandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_4/batchnorm/mul/ReadVariableOp2~
=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp=landmark_model/batch_normalization_5/batchnorm/ReadVariableOp2�
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_1?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_12�
?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_2?landmark_model/batch_normalization_5/batchnorm/ReadVariableOp_22�
Alandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOpAlandmark_model/batch_normalization_5/batchnorm/mul/ReadVariableOp2Z
+landmark_model/dense/BiasAdd/ReadVariableOp+landmark_model/dense/BiasAdd/ReadVariableOp2X
*landmark_model/dense/MatMul/ReadVariableOp*landmark_model/dense/MatMul/ReadVariableOp2^
-landmark_model/dense_1/BiasAdd/ReadVariableOp-landmark_model/dense_1/BiasAdd/ReadVariableOp2\
,landmark_model/dense_1/MatMul/ReadVariableOp,landmark_model/dense_1/MatMul/ReadVariableOp2^
-landmark_model/dense_2/BiasAdd/ReadVariableOp-landmark_model/dense_2/BiasAdd/ReadVariableOp2\
,landmark_model/dense_2/MatMul/ReadVariableOp,landmark_model/dense_2/MatMul/ReadVariableOp:\ X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/0:\X
1
_output_shapes
:�����������
#
_user_specified_name	l_r_lms/1:RN
'
_output_shapes
:���������
#
_user_specified_name	l_r_lms/2
�%
�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988383

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�%
�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_988027

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity��AssignMovingAvg�AssignMovingAvg/ReadVariableOp�AssignMovingAvg_1� AssignMovingAvg_1/ReadVariableOp�batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:���������l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: �
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0�
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:�
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:���������h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:���������b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������
E
input_2:
serving_default_input_2:0�����������
;
input_30
serving_default_input_3:0���������;
dense_70
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	eye_model
landmark_model

dense1

dense2

dense3
bn1
bn2
dropout
 relu"
_tf_keras_layer
�
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses

'kernel
(bias"
_tf_keras_layer
�
)	variables
*trainable_variables
+regularization_losses
,	keras_api
-__call__
*.&call_and_return_all_conditional_losses
/axis
	0gamma
1beta
2moving_mean
3moving_variance"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias"
_tf_keras_layer
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27
^28
_29
`30
a31
b32
c33
d34
e35
f36
g37
h38
i39
j40
k41
'42
(43
044
145
246
347
@48
A49"
trackable_list_wrapper
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27
'28
(29
030
131
@32
A33"
trackable_list_wrapper
 "
trackable_list_wrapper
�
lnon_trainable_variables

mlayers
nmetrics
olayer_regularization_losses
player_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
qtrace_0
rtrace_1
strace_2
ttrace_32�
&__inference_model_layer_call_fn_984933
&__inference_model_layer_call_fn_986348
&__inference_model_layer_call_fn_986455
&__inference_model_layer_call_fn_985904�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zqtrace_0zrtrace_1zstrace_2zttrace_3
�
utrace_0
vtrace_1
wtrace_2
xtrace_32�
A__inference_model_layer_call_and_return_conditional_losses_986709
A__inference_model_layer_call_and_return_conditional_losses_987082
A__inference_model_layer_call_and_return_conditional_losses_986015
A__inference_model_layer_call_and_return_conditional_losses_986126�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zutrace_0zvtrace_1zwtrace_2zxtrace_3
�B�
!__inference__wrapped_model_983845input_1input_2input_3"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
yiter

zbeta_1

{beta_2
	|decay
}learning_rate'm�(m�0m�1m�@m�Am�Bm�Cm�Dm�Em�Fm�Gm�Hm�Im�Jm�Km�Lm�Mm�Nm�Om�Pm�Qm�Rm�Sm�Tm�Um�Vm�Wm�Xm�Ym�Zm�[m�\m�]m�'v�(v�0v�1v�@v�Av�Bv�Cv�Dv�Ev�Fv�Gv�Hv�Iv�Jv�Kv�Lv�Mv�Nv�Ov�Pv�Qv�Rv�Sv�Tv�Uv�Vv�Wv�Xv�Yv�Zv�[v�\v�]v�"
	optimizer
,
~serving_default"
signature_map
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27
^28
_29
`30
a31
b32
c33
d34
e35
f36
g37
h38
i39
j40
k41"
trackable_list_wrapper
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
N12
O13
P14
Q15
R16
S17
T18
U19
V20
W21
X22
Y23
Z24
[25
\26
]27"
trackable_list_wrapper
 "
trackable_list_wrapper
�
non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
0__inference_gazetrack_model_layer_call_fn_987173
0__inference_gazetrack_model_layer_call_fn_987264�
���
FullArgSpec*
args"�
jself
	jl_r_lms

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987489
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987819�
���
FullArgSpec*
args"�
jself
	jl_r_lms

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�conv1

�conv2

�conv3
�bn1
�bn2
�bn3
�	leakyrelu
�avgpool
�dropout"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�dense1
�dense2
�dense3
�bn1
�bn2
�bn3
	�relu"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Zkernel
[bias"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	\gamma
]beta
jmoving_mean
kmoving_variance"
_tf_keras_layer
)
�	keras_api"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
'0
(1"
trackable_list_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_6_layer_call_fn_987828�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_6_layer_call_and_return_conditional_losses_987838�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :2dense_6/kernel
:2dense_6/bias
<
00
11
22
33"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
)	variables
*trainable_variables
+regularization_losses
-__call__
*.&call_and_return_all_conditional_losses
&."call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_8_layer_call_fn_987851
6__inference_batch_normalization_8_layer_call_fn_987864�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987884
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987918�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
):'2batch_normalization_8/gamma
(:&2batch_normalization_8/beta
1:/ (2!batch_normalization_8/moving_mean
5:3 (2%batch_normalization_8/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_re_lu_2_layer_call_fn_987923�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_re_lu_2_layer_call_and_return_conditional_losses_987928�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_dense_7_layer_call_fn_987937�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
C__inference_dense_7_layer_call_and_return_conditional_losses_987947�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :2dense_7/kernel
:2dense_7/bias
A:? 2'gazetrack_model/eye_model/conv2d/kernel
3:1 2%gazetrack_model/eye_model/conv2d/bias
C:A @2)gazetrack_model/eye_model/conv2d_1/kernel
5:3@2'gazetrack_model/eye_model/conv2d_1/bias
D:B@�2)gazetrack_model/eye_model/conv2d_2/kernel
6:4�2'gazetrack_model/eye_model/conv2d_2/bias
A:? 23gazetrack_model/eye_model/batch_normalization/gamma
@:> 22gazetrack_model/eye_model/batch_normalization/beta
C:A@25gazetrack_model/eye_model/batch_normalization_1/gamma
B:@@24gazetrack_model/eye_model/batch_normalization_1/beta
D:B�25gazetrack_model/eye_model/batch_normalization_2/gamma
C:A�24gazetrack_model/eye_model/batch_normalization_2/beta
>:<	�2+gazetrack_model/landmark_model/dense/kernel
8:6�2)gazetrack_model/landmark_model/dense/bias
@:>	�2-gazetrack_model/landmark_model/dense_1/kernel
9:72+gazetrack_model/landmark_model/dense_1/bias
?:=2-gazetrack_model/landmark_model/dense_2/kernel
9:72+gazetrack_model/landmark_model/dense_2/bias
I:G�2:gazetrack_model/landmark_model/batch_normalization_3/gamma
H:F�29gazetrack_model/landmark_model/batch_normalization_3/beta
H:F2:gazetrack_model/landmark_model/batch_normalization_4/gamma
G:E29gazetrack_model/landmark_model/batch_normalization_4/beta
H:F2:gazetrack_model/landmark_model/batch_normalization_5/gamma
G:E29gazetrack_model/landmark_model/batch_normalization_5/beta
1:/	�2gazetrack_model/dense_3/kernel
*:(2gazetrack_model/dense_3/bias
9:72+gazetrack_model/batch_normalization_6/gamma
8:62*gazetrack_model/batch_normalization_6/beta
I:G  (29gazetrack_model/eye_model/batch_normalization/moving_mean
M:K  (2=gazetrack_model/eye_model/batch_normalization/moving_variance
K:I@ (2;gazetrack_model/eye_model/batch_normalization_1/moving_mean
O:M@ (2?gazetrack_model/eye_model/batch_normalization_1/moving_variance
L:J� (2;gazetrack_model/eye_model/batch_normalization_2/moving_mean
P:N� (2?gazetrack_model/eye_model/batch_normalization_2/moving_variance
Q:O� (2@gazetrack_model/landmark_model/batch_normalization_3/moving_mean
U:S� (2Dgazetrack_model/landmark_model/batch_normalization_3/moving_variance
P:N (2@gazetrack_model/landmark_model/batch_normalization_4/moving_mean
T:R (2Dgazetrack_model/landmark_model/batch_normalization_4/moving_variance
P:N (2@gazetrack_model/landmark_model/batch_normalization_5/moving_mean
T:R (2Dgazetrack_model/landmark_model/batch_normalization_5/moving_variance
A:? (21gazetrack_model/batch_normalization_6/moving_mean
E:C (25gazetrack_model/batch_normalization_6/moving_variance
�
^0
_1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11
j12
k13
214
315"
trackable_list_wrapper
X
0
1
2
3
4
5
6
7"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
&__inference_model_layer_call_fn_984933input_1input_2input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
&__inference_model_layer_call_fn_986348inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
&__inference_model_layer_call_fn_986455inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
&__inference_model_layer_call_fn_985904input_1input_2input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_986709inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_987082inputs/0inputs/1inputs/2"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_986015input_1input_2input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
A__inference_model_layer_call_and_return_conditional_losses_986126input_1input_2input_3"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�B�
$__inference_signature_wrapper_986241input_1input_2input_3"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
^0
_1
`2
a3
b4
c5
d6
e7
f8
g9
h10
i11
j12
k13"
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
 8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_gazetrack_model_layer_call_fn_987173	l_r_lms/0	l_r_lms/1	l_r_lms/2"�
���
FullArgSpec*
args"�
jself
	jl_r_lms

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_gazetrack_model_layer_call_fn_987264	l_r_lms/0	l_r_lms/1	l_r_lms/2"�
���
FullArgSpec*
args"�
jself
	jl_r_lms

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987489	l_r_lms/0	l_r_lms/1	l_r_lms/2"�
���
FullArgSpec*
args"�
jself
	jl_r_lms

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987819	l_r_lms/0	l_r_lms/1	l_r_lms/2"�
���
FullArgSpec*
args"�
jself
	jl_r_lms

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11
^12
_13
`14
a15
b16
c17"
trackable_list_wrapper
v
B0
C1
D2
E3
F4
G5
H6
I7
J8
K9
L10
M11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec.
args&�#
jself
jinput_image

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec.
args&�#
jself
jinput_image

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Bkernel
Cbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel
Ebias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Fkernel
Gbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Hgamma
Ibeta
^moving_mean
_moving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Jgamma
Kbeta
`moving_mean
amoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Lgamma
Mbeta
bmoving_mean
cmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11
d12
e13
f14
g15
h16
i17"
trackable_list_wrapper
v
N0
O1
P2
Q3
R4
S5
T6
U7
V8
W9
X10
Y11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec,
args$�!
jself
j	input_kps

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec,
args$�!
jself
j	input_kps

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel
Obias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel
Qbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Rkernel
Sbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Tgamma
Ubeta
dmoving_mean
emoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Vgamma
Wbeta
fmoving_mean
gmoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Xgamma
Ybeta
hmoving_mean
imoving_variance"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
.
Z0
[1"
trackable_list_wrapper
.
Z0
[1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
"
_generic_user_object
<
\0
]1
j2
k3"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_6_layer_call_fn_987960
6__inference_batch_normalization_6_layer_call_fn_987973�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_987993
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_988027�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_6_layer_call_fn_987828inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_6_layer_call_and_return_conditional_losses_987838inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_8_layer_call_fn_987851inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_8_layer_call_fn_987864inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987884inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987918inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_re_lu_2_layer_call_fn_987923inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_re_lu_2_layer_call_and_return_conditional_losses_987928inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_dense_7_layer_call_fn_987937inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_dense_7_layer_call_and_return_conditional_losses_987947inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
J
^0
_1
`2
a3
b4
c5"
trackable_list_wrapper
h
�0
�1
�2
�3
�4
�5
�6
�7
�8"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
<
H0
I1
^2
_3"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_batch_normalization_layer_call_fn_988040
4__inference_batch_normalization_layer_call_fn_988053�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988071
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988089�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
<
J0
K1
`2
a3"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_1_layer_call_fn_988102
6__inference_batch_normalization_1_layer_call_fn_988115�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988133
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988151�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
<
L0
M1
b2
c3"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_2_layer_call_fn_988164
6__inference_batch_normalization_2_layer_call_fn_988177�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988195
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988213�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_average_pooling2d_layer_call_fn_988218�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_988223�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2��
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
"
_generic_user_object
J
d0
e1
f2
g3
h4
i5"
trackable_list_wrapper
X
�0
�1
�2
�3
�4
�5
�6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
<
T0
U1
d2
e3"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_3_layer_call_fn_988236
6__inference_batch_normalization_3_layer_call_fn_988249�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988269
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988303�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
<
V0
W1
f2
g3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_4_layer_call_fn_988316
6__inference_batch_normalization_4_layer_call_fn_988329�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988349
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988383�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
<
X0
Y1
h2
i3"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_batch_normalization_5_layer_call_fn_988396
6__inference_batch_normalization_5_layer_call_fn_988409�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988429
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988463�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_6_layer_call_fn_987960inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_6_layer_call_fn_987973inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_987993inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_988027inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_batch_normalization_layer_call_fn_988040inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
4__inference_batch_normalization_layer_call_fn_988053inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988071inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988089inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_1_layer_call_fn_988102inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_1_layer_call_fn_988115inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988133inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988151inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
b0
c1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_2_layer_call_fn_988164inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_2_layer_call_fn_988177inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988195inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988213inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_average_pooling2d_layer_call_fn_988218inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_988223inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_3_layer_call_fn_988236inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_3_layer_call_fn_988249inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988269inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988303inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_4_layer_call_fn_988316inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_4_layer_call_fn_988329inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988349inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988383inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_batch_normalization_5_layer_call_fn_988396inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
6__inference_batch_normalization_5_layer_call_fn_988409inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988429inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988463inputs"�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
%:#2Adam/dense_6/kernel/m
:2Adam/dense_6/bias/m
.:,2"Adam/batch_normalization_8/gamma/m
-:+2!Adam/batch_normalization_8/beta/m
%:#2Adam/dense_7/kernel/m
:2Adam/dense_7/bias/m
F:D 2.Adam/gazetrack_model/eye_model/conv2d/kernel/m
8:6 2,Adam/gazetrack_model/eye_model/conv2d/bias/m
H:F @20Adam/gazetrack_model/eye_model/conv2d_1/kernel/m
::8@2.Adam/gazetrack_model/eye_model/conv2d_1/bias/m
I:G@�20Adam/gazetrack_model/eye_model/conv2d_2/kernel/m
;:9�2.Adam/gazetrack_model/eye_model/conv2d_2/bias/m
F:D 2:Adam/gazetrack_model/eye_model/batch_normalization/gamma/m
E:C 29Adam/gazetrack_model/eye_model/batch_normalization/beta/m
H:F@2<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/m
G:E@2;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/m
I:G�2<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/m
H:F�2;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/m
C:A	�22Adam/gazetrack_model/landmark_model/dense/kernel/m
=:;�20Adam/gazetrack_model/landmark_model/dense/bias/m
E:C	�24Adam/gazetrack_model/landmark_model/dense_1/kernel/m
>:<22Adam/gazetrack_model/landmark_model/dense_1/bias/m
D:B24Adam/gazetrack_model/landmark_model/dense_2/kernel/m
>:<22Adam/gazetrack_model/landmark_model/dense_2/bias/m
N:L�2AAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/m
M:K�2@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/m
M:K2AAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/m
L:J2@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/m
M:K2AAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/m
L:J2@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/m
6:4	�2%Adam/gazetrack_model/dense_3/kernel/m
/:-2#Adam/gazetrack_model/dense_3/bias/m
>:<22Adam/gazetrack_model/batch_normalization_6/gamma/m
=:;21Adam/gazetrack_model/batch_normalization_6/beta/m
%:#2Adam/dense_6/kernel/v
:2Adam/dense_6/bias/v
.:,2"Adam/batch_normalization_8/gamma/v
-:+2!Adam/batch_normalization_8/beta/v
%:#2Adam/dense_7/kernel/v
:2Adam/dense_7/bias/v
F:D 2.Adam/gazetrack_model/eye_model/conv2d/kernel/v
8:6 2,Adam/gazetrack_model/eye_model/conv2d/bias/v
H:F @20Adam/gazetrack_model/eye_model/conv2d_1/kernel/v
::8@2.Adam/gazetrack_model/eye_model/conv2d_1/bias/v
I:G@�20Adam/gazetrack_model/eye_model/conv2d_2/kernel/v
;:9�2.Adam/gazetrack_model/eye_model/conv2d_2/bias/v
F:D 2:Adam/gazetrack_model/eye_model/batch_normalization/gamma/v
E:C 29Adam/gazetrack_model/eye_model/batch_normalization/beta/v
H:F@2<Adam/gazetrack_model/eye_model/batch_normalization_1/gamma/v
G:E@2;Adam/gazetrack_model/eye_model/batch_normalization_1/beta/v
I:G�2<Adam/gazetrack_model/eye_model/batch_normalization_2/gamma/v
H:F�2;Adam/gazetrack_model/eye_model/batch_normalization_2/beta/v
C:A	�22Adam/gazetrack_model/landmark_model/dense/kernel/v
=:;�20Adam/gazetrack_model/landmark_model/dense/bias/v
E:C	�24Adam/gazetrack_model/landmark_model/dense_1/kernel/v
>:<22Adam/gazetrack_model/landmark_model/dense_1/bias/v
D:B24Adam/gazetrack_model/landmark_model/dense_2/kernel/v
>:<22Adam/gazetrack_model/landmark_model/dense_2/bias/v
N:L�2AAdam/gazetrack_model/landmark_model/batch_normalization_3/gamma/v
M:K�2@Adam/gazetrack_model/landmark_model/batch_normalization_3/beta/v
M:K2AAdam/gazetrack_model/landmark_model/batch_normalization_4/gamma/v
L:J2@Adam/gazetrack_model/landmark_model/batch_normalization_4/beta/v
M:K2AAdam/gazetrack_model/landmark_model/batch_normalization_5/gamma/v
L:J2@Adam/gazetrack_model/landmark_model/batch_normalization_5/beta/v
6:4	�2%Adam/gazetrack_model/dense_3/kernel/v
/:-2#Adam/gazetrack_model/dense_3/bias/v
>:<22Adam/gazetrack_model/batch_normalization_6/gamma/v
=:;21Adam/gazetrack_model/batch_normalization_6/beta/v�
!__inference__wrapped_model_983845�2BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]'(3021@A���
���
��}
+�(
input_1�����������
+�(
input_2�����������
!�
input_3���������
� "1�.
,
dense_7!�
dense_7����������
M__inference_average_pooling2d_layer_call_and_return_conditional_losses_988223�R�O
H�E
C�@
inputs4������������������������������������
� "H�E
>�;
04������������������������������������
� �
2__inference_average_pooling2d_layer_call_fn_988218�R�O
H�E
C�@
inputs4������������������������������������
� ";�84�������������������������������������
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988133�JK`aM�J
C�@
:�7
inputs+���������������������������@
p 
� "?�<
5�2
0+���������������������������@
� �
Q__inference_batch_normalization_1_layer_call_and_return_conditional_losses_988151�JK`aM�J
C�@
:�7
inputs+���������������������������@
p
� "?�<
5�2
0+���������������������������@
� �
6__inference_batch_normalization_1_layer_call_fn_988102�JK`aM�J
C�@
:�7
inputs+���������������������������@
p 
� "2�/+���������������������������@�
6__inference_batch_normalization_1_layer_call_fn_988115�JK`aM�J
C�@
:�7
inputs+���������������������������@
p
� "2�/+���������������������������@�
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988195�LMbcN�K
D�A
;�8
inputs,����������������������������
p 
� "@�=
6�3
0,����������������������������
� �
Q__inference_batch_normalization_2_layer_call_and_return_conditional_losses_988213�LMbcN�K
D�A
;�8
inputs,����������������������������
p
� "@�=
6�3
0,����������������������������
� �
6__inference_batch_normalization_2_layer_call_fn_988164�LMbcN�K
D�A
;�8
inputs,����������������������������
p 
� "3�0,�����������������������������
6__inference_batch_normalization_2_layer_call_fn_988177�LMbcN�K
D�A
;�8
inputs,����������������������������
p
� "3�0,�����������������������������
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988269deTdU4�1
*�'
!�
inputs����������
p 
� "&�#
�
0����������
� �
Q__inference_batch_normalization_3_layer_call_and_return_conditional_losses_988303ddeTU4�1
*�'
!�
inputs����������
p
� "&�#
�
0����������
� �
6__inference_batch_normalization_3_layer_call_fn_988236WeTdU4�1
*�'
!�
inputs����������
p 
� "������������
6__inference_batch_normalization_3_layer_call_fn_988249WdeTU4�1
*�'
!�
inputs����������
p
� "������������
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988349bgVfW3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
Q__inference_batch_normalization_4_layer_call_and_return_conditional_losses_988383bfgVW3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
6__inference_batch_normalization_4_layer_call_fn_988316UgVfW3�0
)�&
 �
inputs���������
p 
� "�����������
6__inference_batch_normalization_4_layer_call_fn_988329UfgVW3�0
)�&
 �
inputs���������
p
� "�����������
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988429biXhY3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
Q__inference_batch_normalization_5_layer_call_and_return_conditional_losses_988463bhiXY3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
6__inference_batch_normalization_5_layer_call_fn_988396UiXhY3�0
)�&
 �
inputs���������
p 
� "�����������
6__inference_batch_normalization_5_layer_call_fn_988409UhiXY3�0
)�&
 �
inputs���������
p
� "�����������
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_987993bk\j]3�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
Q__inference_batch_normalization_6_layer_call_and_return_conditional_losses_988027bjk\]3�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
6__inference_batch_normalization_6_layer_call_fn_987960Uk\j]3�0
)�&
 �
inputs���������
p 
� "�����������
6__inference_batch_normalization_6_layer_call_fn_987973Ujk\]3�0
)�&
 �
inputs���������
p
� "�����������
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987884b30213�0
)�&
 �
inputs���������
p 
� "%�"
�
0���������
� �
Q__inference_batch_normalization_8_layer_call_and_return_conditional_losses_987918b23013�0
)�&
 �
inputs���������
p
� "%�"
�
0���������
� �
6__inference_batch_normalization_8_layer_call_fn_987851U30213�0
)�&
 �
inputs���������
p 
� "�����������
6__inference_batch_normalization_8_layer_call_fn_987864U23013�0
)�&
 �
inputs���������
p
� "�����������
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988071�HI^_M�J
C�@
:�7
inputs+��������������������������� 
p 
� "?�<
5�2
0+��������������������������� 
� �
O__inference_batch_normalization_layer_call_and_return_conditional_losses_988089�HI^_M�J
C�@
:�7
inputs+��������������������������� 
p
� "?�<
5�2
0+��������������������������� 
� �
4__inference_batch_normalization_layer_call_fn_988040�HI^_M�J
C�@
:�7
inputs+��������������������������� 
p 
� "2�/+��������������������������� �
4__inference_batch_normalization_layer_call_fn_988053�HI^_M�J
C�@
:�7
inputs+��������������������������� 
p
� "2�/+��������������������������� �
C__inference_dense_6_layer_call_and_return_conditional_losses_987838\'(/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� {
(__inference_dense_6_layer_call_fn_987828O'(/�,
%�"
 �
inputs���������
� "�����������
C__inference_dense_7_layer_call_and_return_conditional_losses_987947\@A/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� {
(__inference_dense_7_layer_call_fn_987937O@A/�,
%�"
 �
inputs���������
� "�����������
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987489�*BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]���
���
���
-�*
	l_r_lms/0�����������
-�*
	l_r_lms/1�����������
#� 
	l_r_lms/2���������
p 
� "%�"
�
0���������
� �
K__inference_gazetrack_model_layer_call_and_return_conditional_losses_987819�*BCHI^_DEJK`aFGLMbcNOdeTUPQfgVWRShiXYZ[jk\]���
���
���
-�*
	l_r_lms/0�����������
-�*
	l_r_lms/1�����������
#� 
	l_r_lms/2���������
p
� "%�"
�
0���������
� �
0__inference_gazetrack_model_layer_call_fn_987173�*BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]���
���
���
-�*
	l_r_lms/0�����������
-�*
	l_r_lms/1�����������
#� 
	l_r_lms/2���������
p 
� "�����������
0__inference_gazetrack_model_layer_call_fn_987264�*BCHI^_DEJK`aFGLMbcNOdeTUPQfgVWRShiXYZ[jk\]���
���
���
-�*
	l_r_lms/0�����������
-�*
	l_r_lms/1�����������
#� 
	l_r_lms/2���������
p
� "�����������
A__inference_model_layer_call_and_return_conditional_losses_986015�2BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]'(3021@A���
���
��}
+�(
input_1�����������
+�(
input_2�����������
!�
input_3���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_986126�2BCHI^_DEJK`aFGLMbcNOdeTUPQfgVWRShiXYZ[jk\]'(2301@A���
���
��}
+�(
input_1�����������
+�(
input_2�����������
!�
input_3���������
p

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_986709�2BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]'(3021@A���
���
���
,�)
inputs/0�����������
,�)
inputs/1�����������
"�
inputs/2���������
p 

 
� "%�"
�
0���������
� �
A__inference_model_layer_call_and_return_conditional_losses_987082�2BCHI^_DEJK`aFGLMbcNOdeTUPQfgVWRShiXYZ[jk\]'(2301@A���
���
���
,�)
inputs/0�����������
,�)
inputs/1�����������
"�
inputs/2���������
p

 
� "%�"
�
0���������
� �
&__inference_model_layer_call_fn_984933�2BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]'(3021@A���
���
��}
+�(
input_1�����������
+�(
input_2�����������
!�
input_3���������
p 

 
� "�����������
&__inference_model_layer_call_fn_985904�2BCHI^_DEJK`aFGLMbcNOdeTUPQfgVWRShiXYZ[jk\]'(2301@A���
���
��}
+�(
input_1�����������
+�(
input_2�����������
!�
input_3���������
p

 
� "�����������
&__inference_model_layer_call_fn_986348�2BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]'(3021@A���
���
���
,�)
inputs/0�����������
,�)
inputs/1�����������
"�
inputs/2���������
p 

 
� "�����������
&__inference_model_layer_call_fn_986455�2BCHI^_DEJK`aFGLMbcNOdeTUPQfgVWRShiXYZ[jk\]'(2301@A���
���
���
,�)
inputs/0�����������
,�)
inputs/1�����������
"�
inputs/2���������
p

 
� "�����������
C__inference_re_lu_2_layer_call_and_return_conditional_losses_987928X/�,
%�"
 �
inputs���������
� "%�"
�
0���������
� w
(__inference_re_lu_2_layer_call_fn_987923K/�,
%�"
 �
inputs���������
� "�����������
$__inference_signature_wrapper_986241�2BCHI^_DEJK`aFGLMbcNOeTdUPQgVfWRSiXhYZ[k\j]'(3021@A���
� 
���
6
input_1+�(
input_1�����������
6
input_2+�(
input_2�����������
,
input_3!�
input_3���������"1�.
,
dense_7!�
dense_7���������