­
Бќ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

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
$
DisableCopyOnRead
resource
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
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
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeэout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*
2.12.0-rc12v2.12.0-rc0-46-g0d8efc960d28Сџ
r
dense_75/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:T*
shared_namedense_75/bias
k
!dense_75/bias/Read/ReadVariableOpReadVariableOpdense_75/bias*
_output_shapes
:T*
dtype0
z
dense_75/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: T* 
shared_namedense_75/kernel
s
#dense_75/kernel/Read/ReadVariableOpReadVariableOpdense_75/kernel*
_output_shapes

: T*
dtype0
r
dense_74/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_74/bias
k
!dense_74/bias/Read/ReadVariableOpReadVariableOpdense_74/bias*
_output_shapes
: *
dtype0
z
dense_74/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: * 
shared_namedense_74/kernel
s
#dense_74/kernel/Read/ReadVariableOpReadVariableOpdense_74/kernel*
_output_shapes

: *
dtype0
Є
&batch_normalization_35/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_35/moving_variance

:batch_normalization_35/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_35/moving_variance*
_output_shapes
:*
dtype0

"batch_normalization_35/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_35/moving_mean

6batch_normalization_35/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_35/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_35/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_35/beta

/batch_normalization_35/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_35/beta*
_output_shapes
:*
dtype0

batch_normalization_35/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_35/gamma

0batch_normalization_35/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_35/gamma*
_output_shapes
:*
dtype0
t
conv1d_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_35/bias
m
"conv1d_35/bias/Read/ReadVariableOpReadVariableOpconv1d_35/bias*
_output_shapes
:*
dtype0

conv1d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_35/kernel
y
$conv1d_35/kernel/Read/ReadVariableOpReadVariableOpconv1d_35/kernel*"
_output_shapes
:*
dtype0
Є
&batch_normalization_34/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_34/moving_variance

:batch_normalization_34/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_34/moving_variance*
_output_shapes
:*
dtype0

"batch_normalization_34/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_34/moving_mean

6batch_normalization_34/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_34/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_34/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_34/beta

/batch_normalization_34/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_34/beta*
_output_shapes
:*
dtype0

batch_normalization_34/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_34/gamma

0batch_normalization_34/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_34/gamma*
_output_shapes
:*
dtype0
t
conv1d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_34/bias
m
"conv1d_34/bias/Read/ReadVariableOpReadVariableOpconv1d_34/bias*
_output_shapes
:*
dtype0

conv1d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_34/kernel
y
$conv1d_34/kernel/Read/ReadVariableOpReadVariableOpconv1d_34/kernel*"
_output_shapes
:*
dtype0
Є
&batch_normalization_33/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_33/moving_variance

:batch_normalization_33/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_33/moving_variance*
_output_shapes
:*
dtype0

"batch_normalization_33/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_33/moving_mean

6batch_normalization_33/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_33/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_33/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_33/beta

/batch_normalization_33/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_33/beta*
_output_shapes
:*
dtype0

batch_normalization_33/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_33/gamma

0batch_normalization_33/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_33/gamma*
_output_shapes
:*
dtype0
t
conv1d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_33/bias
m
"conv1d_33/bias/Read/ReadVariableOpReadVariableOpconv1d_33/bias*
_output_shapes
:*
dtype0

conv1d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_33/kernel
y
$conv1d_33/kernel/Read/ReadVariableOpReadVariableOpconv1d_33/kernel*"
_output_shapes
:*
dtype0
Є
&batch_normalization_32/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_32/moving_variance

:batch_normalization_32/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_32/moving_variance*
_output_shapes
:*
dtype0

"batch_normalization_32/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_32/moving_mean

6batch_normalization_32/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_32/moving_mean*
_output_shapes
:*
dtype0

batch_normalization_32/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_32/beta

/batch_normalization_32/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_32/beta*
_output_shapes
:*
dtype0

batch_normalization_32/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_32/gamma

0batch_normalization_32/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_32/gamma*
_output_shapes
:*
dtype0
t
conv1d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv1d_32/bias
m
"conv1d_32/bias/Read/ReadVariableOpReadVariableOpconv1d_32/bias*
_output_shapes
:*
dtype0

conv1d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv1d_32/kernel
y
$conv1d_32/kernel/Read/ReadVariableOpReadVariableOpconv1d_32/kernel*"
_output_shapes
:*
dtype0

serving_default_InputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ
б
StatefulPartitionedCallStatefulPartitionedCallserving_default_Inputconv1d_32/kernelconv1d_32/bias&batch_normalization_32/moving_variancebatch_normalization_32/gamma"batch_normalization_32/moving_meanbatch_normalization_32/betaconv1d_33/kernelconv1d_33/bias&batch_normalization_33/moving_variancebatch_normalization_33/gamma"batch_normalization_33/moving_meanbatch_normalization_33/betaconv1d_34/kernelconv1d_34/bias&batch_normalization_34/moving_variancebatch_normalization_34/gamma"batch_normalization_34/moving_meanbatch_normalization_34/betaconv1d_35/kernelconv1d_35/bias&batch_normalization_35/moving_variancebatch_normalization_35/gamma"batch_normalization_35/moving_meanbatch_normalization_35/betadense_74/kerneldense_74/biasdense_75/kerneldense_75/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_7363227

NoOpNoOp
g
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Хf
valueЛfBИf BБf

layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
Ш
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op*
е
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance*
Ш
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op*
е
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance*
Ш
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op*
е
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance*
Ш
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op*
е
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance*

n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses* 
І
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias*
Ј
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
Ў
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
м
$0
%1
.2
/3
04
15
86
97
B8
C9
D10
E11
L12
M13
V14
W15
X16
Y17
`18
a19
j20
k21
l22
m23
z24
{25
26
27*

$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
`12
a13
j14
k15
z16
{17
18
19*
* 
Е
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 

serving_default* 
* 
* 
* 

non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Єtrace_0
Ѕtrace_1* 

Іtrace_0
Їtrace_1* 

$0
%1*

$0
%1*
* 

Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

­trace_0* 

Ўtrace_0* 
`Z
VARIABLE_VALUEconv1d_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
.0
/1
02
13*

.0
/1*
* 

Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

Дtrace_0
Еtrace_1* 

Жtrace_0
Зtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_32/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_32/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_32/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_32/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

80
91*

80
91*
* 

Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
`Z
VARIABLE_VALUEconv1d_33/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_33/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
B0
C1
D2
E3*

B0
C1*
* 

Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

Фtrace_0
Хtrace_1* 

Цtrace_0
Чtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_33/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_33/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_33/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_33/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

L0
M1*

L0
M1*
* 

Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
`Z
VARIABLE_VALUEconv1d_34/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_34/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
V0
W1
X2
Y3*

V0
W1*
* 

Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses*

дtrace_0
еtrace_1* 

жtrace_0
зtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_34/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_34/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_34/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_34/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

`0
a1*
* 

иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

нtrace_0* 

оtrace_0* 
`Z
VARIABLE_VALUEconv1d_35/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv1d_35/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
j0
k1
l2
m3*

j0
k1*
* 

пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

фtrace_0
хtrace_1* 

цtrace_0
чtrace_1* 
* 
ke
VARIABLE_VALUEbatch_normalization_35/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_35/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_35/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_35/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses* 

эtrace_0* 

юtrace_0* 

z0
{1*

z0
{1*
* 

яnon_trainable_variables
№layers
ёmetrics
 ђlayer_regularization_losses
ѓlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses*

єtrace_0* 

ѕtrace_0* 
_Y
VARIABLE_VALUEdense_74/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_74/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

ћtrace_0
ќtrace_1* 

§trace_0
ўtrace_1* 
* 

0
1*

0
1*
* 

џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
_Y
VARIABLE_VALUEdense_75/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_75/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0* 

trace_0* 
<
00
11
D2
E3
X4
Y5
l6
m7*
r
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14*
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
00
11*
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
D0
E1*
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
X0
Y1*
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
l0
m1*
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
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_32/kernelconv1d_32/biasbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv1d_33/kernelconv1d_33/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_varianceconv1d_34/kernelconv1d_34/biasbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_varianceconv1d_35/kernelconv1d_35/biasbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_variancedense_74/kerneldense_74/biasdense_75/kerneldense_75/biasConst*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_save_7364434

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_32/kernelconv1d_32/biasbatch_normalization_32/gammabatch_normalization_32/beta"batch_normalization_32/moving_mean&batch_normalization_32/moving_varianceconv1d_33/kernelconv1d_33/biasbatch_normalization_33/gammabatch_normalization_33/beta"batch_normalization_33/moving_mean&batch_normalization_33/moving_varianceconv1d_34/kernelconv1d_34/biasbatch_normalization_34/gammabatch_normalization_34/beta"batch_normalization_34/moving_mean&batch_normalization_34/moving_varianceconv1d_35/kernelconv1d_35/biasbatch_normalization_35/gammabatch_normalization_35/beta"batch_normalization_35/moving_mean&batch_normalization_35/moving_variancedense_74/kerneldense_74/biasdense_75/kerneldense_75/bias*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__traced_restore_7364528ЊС
џ%
ь
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362088

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

В
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362108

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к

+__inference_conv1d_34_layer_call_fn_7363947

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7362486s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ч

c
G__inference_reshape_25_layer_call_and_return_conditional_losses_7364243

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџT:O K
'
_output_shapes
:џџџџџџџџџT
 
_user_specified_nameinputs
к

+__inference_conv1d_33_layer_call_fn_7363842

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7362455s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ

F__inference_conv1d_35_layer_call_and_return_conditional_losses_7364068

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ

F__inference_conv1d_33_layer_call_and_return_conditional_losses_7362455

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
К
т
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363288

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: T

unknown_26:T
identityЂStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362760s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ѓ
H
,__inference_dropout_17_layer_call_fn_7364189

inputs
identityВ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362674`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
о
г
8__inference_batch_normalization_32_layer_call_fn_7363766

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362088|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
J

Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362683	
input'
conv1d_32_7362608:
conv1d_32_7362610:,
batch_normalization_32_7362613:,
batch_normalization_32_7362615:,
batch_normalization_32_7362617:,
batch_normalization_32_7362619:'
conv1d_33_7362622:
conv1d_33_7362624:,
batch_normalization_33_7362627:,
batch_normalization_33_7362629:,
batch_normalization_33_7362631:,
batch_normalization_33_7362633:'
conv1d_34_7362636:
conv1d_34_7362638:,
batch_normalization_34_7362641:,
batch_normalization_34_7362643:,
batch_normalization_34_7362645:,
batch_normalization_34_7362647:'
conv1d_35_7362650:
conv1d_35_7362652:,
batch_normalization_35_7362655:,
batch_normalization_35_7362657:,
batch_normalization_35_7362659:,
batch_normalization_35_7362661:"
dense_74_7362665: 
dense_74_7362667: "
dense_75_7362676: T
dense_75_7362678:T
identityЂ.batch_normalization_32/StatefulPartitionedCallЂ.batch_normalization_33/StatefulPartitionedCallЂ.batch_normalization_34/StatefulPartitionedCallЂ.batch_normalization_35/StatefulPartitionedCallЂ!conv1d_32/StatefulPartitionedCallЂ!conv1d_33/StatefulPartitionedCallЂ!conv1d_34/StatefulPartitionedCallЂ!conv1d_35/StatefulPartitionedCallЂ dense_74/StatefulPartitionedCallЂ dense_75/StatefulPartitionedCallМ
lambda_8/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362606
!conv1d_32/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0conv1d_32_7362608conv1d_32_7362610*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7362424
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv1d_32/StatefulPartitionedCall:output:0batch_normalization_32_7362613batch_normalization_32_7362615batch_normalization_32_7362617batch_normalization_32_7362619*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362108Ќ
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv1d_33_7362622conv1d_33_7362624*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7362455
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0batch_normalization_33_7362627batch_normalization_33_7362629batch_normalization_33_7362631batch_normalization_33_7362633*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362190Ќ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0conv1d_34_7362636conv1d_34_7362638*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7362486
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0batch_normalization_34_7362641batch_normalization_34_7362643batch_normalization_34_7362645batch_normalization_34_7362647*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362272Ќ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0conv1d_35_7362650conv1d_35_7362652*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7362517
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0batch_normalization_35_7362655batch_normalization_35_7362657batch_normalization_35_7362659batch_normalization_35_7362661*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362354
+global_average_pooling1d_16/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *a
f\RZ
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7362388Ё
 dense_74/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_16/PartitionedCall:output:0dense_74_7362665dense_74_7362667*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_7362544р
dropout_17/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362674
 dense_75/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_75_7362676dense_75_7362678*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_7362574ф
reshape_25/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_7362593v
IdentityIdentity#reshape_25/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџр
NoOpNoOp/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv1d_32/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv1d_32/StatefulPartitionedCall!conv1d_32/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput
о
г
8__inference_batch_normalization_34_layer_call_fn_7363976

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362252|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363918

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к

+__inference_conv1d_32_layer_call_fn_7363737

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7362424s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
БK
О
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362596	
input'
conv1d_32_7362425:
conv1d_32_7362427:,
batch_normalization_32_7362430:,
batch_normalization_32_7362432:,
batch_normalization_32_7362434:,
batch_normalization_32_7362436:'
conv1d_33_7362456:
conv1d_33_7362458:,
batch_normalization_33_7362461:,
batch_normalization_33_7362463:,
batch_normalization_33_7362465:,
batch_normalization_33_7362467:'
conv1d_34_7362487:
conv1d_34_7362489:,
batch_normalization_34_7362492:,
batch_normalization_34_7362494:,
batch_normalization_34_7362496:,
batch_normalization_34_7362498:'
conv1d_35_7362518:
conv1d_35_7362520:,
batch_normalization_35_7362523:,
batch_normalization_35_7362525:,
batch_normalization_35_7362527:,
batch_normalization_35_7362529:"
dense_74_7362545: 
dense_74_7362547: "
dense_75_7362575: T
dense_75_7362577:T
identityЂ.batch_normalization_32/StatefulPartitionedCallЂ.batch_normalization_33/StatefulPartitionedCallЂ.batch_normalization_34/StatefulPartitionedCallЂ.batch_normalization_35/StatefulPartitionedCallЂ!conv1d_32/StatefulPartitionedCallЂ!conv1d_33/StatefulPartitionedCallЂ!conv1d_34/StatefulPartitionedCallЂ!conv1d_35/StatefulPartitionedCallЂ dense_74/StatefulPartitionedCallЂ dense_75/StatefulPartitionedCallЂ"dropout_17/StatefulPartitionedCallМ
lambda_8/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362406
!conv1d_32/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0conv1d_32_7362425conv1d_32_7362427*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7362424
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv1d_32/StatefulPartitionedCall:output:0batch_normalization_32_7362430batch_normalization_32_7362432batch_normalization_32_7362434batch_normalization_32_7362436*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362088Ќ
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv1d_33_7362456conv1d_33_7362458*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7362455
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0batch_normalization_33_7362461batch_normalization_33_7362463batch_normalization_33_7362465batch_normalization_33_7362467*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362170Ќ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0conv1d_34_7362487conv1d_34_7362489*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7362486
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0batch_normalization_34_7362492batch_normalization_34_7362494batch_normalization_34_7362496batch_normalization_34_7362498*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362252Ќ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0conv1d_35_7362518conv1d_35_7362520*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7362517
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0batch_normalization_35_7362523batch_normalization_35_7362525batch_normalization_35_7362527batch_normalization_35_7362529*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362334
+global_average_pooling1d_16/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *a
f\RZ
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7362388Ё
 dense_74/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_16/PartitionedCall:output:0dense_74_7362545dense_74_7362547*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_7362544№
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362562
 dense_75/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_75_7362575dense_75_7362577*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_7362574ф
reshape_25/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_7362593v
IdentityIdentity#reshape_25/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv1d_32/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv1d_32/StatefulPartitionedCall!conv1d_32/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput
к
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362674

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Щ

F__inference_conv1d_34_layer_call_and_return_conditional_losses_7363963

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362170

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ
а
%__inference_signature_wrapper_7363227	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: T

unknown_26:T
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_7362053s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput
О
a
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363720

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
уг

 __inference__traced_save_7364434
file_prefix=
'read_disablecopyonread_conv1d_32_kernel:5
'read_1_disablecopyonread_conv1d_32_bias:C
5read_2_disablecopyonread_batch_normalization_32_gamma:B
4read_3_disablecopyonread_batch_normalization_32_beta:I
;read_4_disablecopyonread_batch_normalization_32_moving_mean:M
?read_5_disablecopyonread_batch_normalization_32_moving_variance:?
)read_6_disablecopyonread_conv1d_33_kernel:5
'read_7_disablecopyonread_conv1d_33_bias:C
5read_8_disablecopyonread_batch_normalization_33_gamma:B
4read_9_disablecopyonread_batch_normalization_33_beta:J
<read_10_disablecopyonread_batch_normalization_33_moving_mean:N
@read_11_disablecopyonread_batch_normalization_33_moving_variance:@
*read_12_disablecopyonread_conv1d_34_kernel:6
(read_13_disablecopyonread_conv1d_34_bias:D
6read_14_disablecopyonread_batch_normalization_34_gamma:C
5read_15_disablecopyonread_batch_normalization_34_beta:J
<read_16_disablecopyonread_batch_normalization_34_moving_mean:N
@read_17_disablecopyonread_batch_normalization_34_moving_variance:@
*read_18_disablecopyonread_conv1d_35_kernel:6
(read_19_disablecopyonread_conv1d_35_bias:D
6read_20_disablecopyonread_batch_normalization_35_gamma:C
5read_21_disablecopyonread_batch_normalization_35_beta:J
<read_22_disablecopyonread_batch_normalization_35_moving_mean:N
@read_23_disablecopyonread_batch_normalization_35_moving_variance:;
)read_24_disablecopyonread_dense_74_kernel: 5
'read_25_disablecopyonread_dense_74_bias: ;
)read_26_disablecopyonread_dense_75_kernel: T5
'read_27_disablecopyonread_dense_75_bias:T
savev2_const
identity_57ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: y
Read/DisableCopyOnReadDisableCopyOnRead'read_disablecopyonread_conv1d_32_kernel"/device:CPU:0*
_output_shapes
 Ї
Read/ReadVariableOpReadVariableOp'read_disablecopyonread_conv1d_32_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
:{
Read_1/DisableCopyOnReadDisableCopyOnRead'read_1_disablecopyonread_conv1d_32_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_1/ReadVariableOpReadVariableOp'read_1_disablecopyonread_conv1d_32_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_2/DisableCopyOnReadDisableCopyOnRead5read_2_disablecopyonread_batch_normalization_32_gamma"/device:CPU:0*
_output_shapes
 Б
Read_2/ReadVariableOpReadVariableOp5read_2_disablecopyonread_batch_normalization_32_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_3/DisableCopyOnReadDisableCopyOnRead4read_3_disablecopyonread_batch_normalization_32_beta"/device:CPU:0*
_output_shapes
 А
Read_3/ReadVariableOpReadVariableOp4read_3_disablecopyonread_batch_normalization_32_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_4/DisableCopyOnReadDisableCopyOnRead;read_4_disablecopyonread_batch_normalization_32_moving_mean"/device:CPU:0*
_output_shapes
 З
Read_4/ReadVariableOpReadVariableOp;read_4_disablecopyonread_batch_normalization_32_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_5/DisableCopyOnReadDisableCopyOnRead?read_5_disablecopyonread_batch_normalization_32_moving_variance"/device:CPU:0*
_output_shapes
 Л
Read_5/ReadVariableOpReadVariableOp?read_5_disablecopyonread_batch_normalization_32_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:}
Read_6/DisableCopyOnReadDisableCopyOnRead)read_6_disablecopyonread_conv1d_33_kernel"/device:CPU:0*
_output_shapes
 ­
Read_6/ReadVariableOpReadVariableOp)read_6_disablecopyonread_conv1d_33_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0r
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*"
_output_shapes
:{
Read_7/DisableCopyOnReadDisableCopyOnRead'read_7_disablecopyonread_conv1d_33_bias"/device:CPU:0*
_output_shapes
 Ѓ
Read_7/ReadVariableOpReadVariableOp'read_7_disablecopyonread_conv1d_33_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_8/DisableCopyOnReadDisableCopyOnRead5read_8_disablecopyonread_batch_normalization_33_gamma"/device:CPU:0*
_output_shapes
 Б
Read_8/ReadVariableOpReadVariableOp5read_8_disablecopyonread_batch_normalization_33_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_9/DisableCopyOnReadDisableCopyOnRead4read_9_disablecopyonread_batch_normalization_33_beta"/device:CPU:0*
_output_shapes
 А
Read_9/ReadVariableOpReadVariableOp4read_9_disablecopyonread_batch_normalization_33_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_10/DisableCopyOnReadDisableCopyOnRead<read_10_disablecopyonread_batch_normalization_33_moving_mean"/device:CPU:0*
_output_shapes
 К
Read_10/ReadVariableOpReadVariableOp<read_10_disablecopyonread_batch_normalization_33_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_11/DisableCopyOnReadDisableCopyOnRead@read_11_disablecopyonread_batch_normalization_33_moving_variance"/device:CPU:0*
_output_shapes
 О
Read_11/ReadVariableOpReadVariableOp@read_11_disablecopyonread_batch_normalization_33_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_12/DisableCopyOnReadDisableCopyOnRead*read_12_disablecopyonread_conv1d_34_kernel"/device:CPU:0*
_output_shapes
 А
Read_12/ReadVariableOpReadVariableOp*read_12_disablecopyonread_conv1d_34_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*"
_output_shapes
:}
Read_13/DisableCopyOnReadDisableCopyOnRead(read_13_disablecopyonread_conv1d_34_bias"/device:CPU:0*
_output_shapes
 І
Read_13/ReadVariableOpReadVariableOp(read_13_disablecopyonread_conv1d_34_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_batch_normalization_34_gamma"/device:CPU:0*
_output_shapes
 Д
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_batch_normalization_34_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_15/DisableCopyOnReadDisableCopyOnRead5read_15_disablecopyonread_batch_normalization_34_beta"/device:CPU:0*
_output_shapes
 Г
Read_15/ReadVariableOpReadVariableOp5read_15_disablecopyonread_batch_normalization_34_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_16/DisableCopyOnReadDisableCopyOnRead<read_16_disablecopyonread_batch_normalization_34_moving_mean"/device:CPU:0*
_output_shapes
 К
Read_16/ReadVariableOpReadVariableOp<read_16_disablecopyonread_batch_normalization_34_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_17/DisableCopyOnReadDisableCopyOnRead@read_17_disablecopyonread_batch_normalization_34_moving_variance"/device:CPU:0*
_output_shapes
 О
Read_17/ReadVariableOpReadVariableOp@read_17_disablecopyonread_batch_normalization_34_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_18/DisableCopyOnReadDisableCopyOnRead*read_18_disablecopyonread_conv1d_35_kernel"/device:CPU:0*
_output_shapes
 А
Read_18/ReadVariableOpReadVariableOp*read_18_disablecopyonread_conv1d_35_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:*
dtype0s
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:i
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*"
_output_shapes
:}
Read_19/DisableCopyOnReadDisableCopyOnRead(read_19_disablecopyonread_conv1d_35_bias"/device:CPU:0*
_output_shapes
 І
Read_19/ReadVariableOpReadVariableOp(read_19_disablecopyonread_conv1d_35_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_batch_normalization_35_gamma"/device:CPU:0*
_output_shapes
 Д
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_batch_normalization_35_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_21/DisableCopyOnReadDisableCopyOnRead5read_21_disablecopyonread_batch_normalization_35_beta"/device:CPU:0*
_output_shapes
 Г
Read_21/ReadVariableOpReadVariableOp5read_21_disablecopyonread_batch_normalization_35_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_22/DisableCopyOnReadDisableCopyOnRead<read_22_disablecopyonread_batch_normalization_35_moving_mean"/device:CPU:0*
_output_shapes
 К
Read_22/ReadVariableOpReadVariableOp<read_22_disablecopyonread_batch_normalization_35_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:
Read_23/DisableCopyOnReadDisableCopyOnRead@read_23_disablecopyonread_batch_normalization_35_moving_variance"/device:CPU:0*
_output_shapes
 О
Read_23/ReadVariableOpReadVariableOp@read_23_disablecopyonread_batch_normalization_35_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:~
Read_24/DisableCopyOnReadDisableCopyOnRead)read_24_disablecopyonread_dense_74_kernel"/device:CPU:0*
_output_shapes
 Ћ
Read_24/ReadVariableOpReadVariableOp)read_24_disablecopyonread_dense_74_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_25/DisableCopyOnReadDisableCopyOnRead'read_25_disablecopyonread_dense_74_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_25/ReadVariableOpReadVariableOp'read_25_disablecopyonread_dense_74_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_26/DisableCopyOnReadDisableCopyOnRead)read_26_disablecopyonread_dense_75_kernel"/device:CPU:0*
_output_shapes
 Ћ
Read_26/ReadVariableOpReadVariableOp)read_26_disablecopyonread_dense_75_kernel^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: T*
dtype0o
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: Te
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes

: T|
Read_27/DisableCopyOnReadDisableCopyOnRead'read_27_disablecopyonread_dense_75_bias"/device:CPU:0*
_output_shapes
 Ѕ
Read_27/ReadVariableOpReadVariableOp'read_27_disablecopyonread_dense_75_bias^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:T*
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:Ta
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
:TЪ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ѓ
valueщBцB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЇ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B з
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: 
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "#
identity_57Identity_57:output:0*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:

_output_shapes
: :C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Ф

*__inference_dense_74_layer_call_fn_7364168

inputs
unknown: 
	unknown_0: 
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_7362544o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О
a
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363728

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р
г
8__inference_batch_normalization_34_layer_call_fn_7363989

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362272|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362252

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
р
г
8__inference_batch_normalization_32_layer_call_fn_7363779

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362108|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

t
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7364159

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к

+__inference_conv1d_35_layer_call_fn_7364052

inputs
unknown:
	unknown_0:
identityЂStatefulPartitionedCallп
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7362517s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

В
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362354

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364128

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ћ
H
,__inference_reshape_25_layer_call_fn_7364230

inputs
identityЖ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_7362593d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџT:O K
'
_output_shapes
:џџџџџџџџџT
 
_user_specified_nameinputs
Ш	
і
E__inference_dense_75_layer_call_and_return_conditional_losses_7364225

inputs0
matmul_readvariableop_resource: T-
biasadd_readvariableop_resource:T
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: T*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџTr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџT_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџTw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
р
г
8__inference_batch_normalization_35_layer_call_fn_7364094

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362354|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
о
г
8__inference_batch_normalization_33_layer_call_fn_7363871

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362170|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Щ

F__inference_conv1d_35_layer_call_and_return_conditional_losses_7362517

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
О
a
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362606

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

В
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363938

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
J

Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362895

inputs'
conv1d_32_7362825:
conv1d_32_7362827:,
batch_normalization_32_7362830:,
batch_normalization_32_7362832:,
batch_normalization_32_7362834:,
batch_normalization_32_7362836:'
conv1d_33_7362839:
conv1d_33_7362841:,
batch_normalization_33_7362844:,
batch_normalization_33_7362846:,
batch_normalization_33_7362848:,
batch_normalization_33_7362850:'
conv1d_34_7362853:
conv1d_34_7362855:,
batch_normalization_34_7362858:,
batch_normalization_34_7362860:,
batch_normalization_34_7362862:,
batch_normalization_34_7362864:'
conv1d_35_7362867:
conv1d_35_7362869:,
batch_normalization_35_7362872:,
batch_normalization_35_7362874:,
batch_normalization_35_7362876:,
batch_normalization_35_7362878:"
dense_74_7362882: 
dense_74_7362884: "
dense_75_7362888: T
dense_75_7362890:T
identityЂ.batch_normalization_32/StatefulPartitionedCallЂ.batch_normalization_33/StatefulPartitionedCallЂ.batch_normalization_34/StatefulPartitionedCallЂ.batch_normalization_35/StatefulPartitionedCallЂ!conv1d_32/StatefulPartitionedCallЂ!conv1d_33/StatefulPartitionedCallЂ!conv1d_34/StatefulPartitionedCallЂ!conv1d_35/StatefulPartitionedCallЂ dense_74/StatefulPartitionedCallЂ dense_75/StatefulPartitionedCallН
lambda_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362606
!conv1d_32/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0conv1d_32_7362825conv1d_32_7362827*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7362424
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv1d_32/StatefulPartitionedCall:output:0batch_normalization_32_7362830batch_normalization_32_7362832batch_normalization_32_7362834batch_normalization_32_7362836*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362108Ќ
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv1d_33_7362839conv1d_33_7362841*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7362455
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0batch_normalization_33_7362844batch_normalization_33_7362846batch_normalization_33_7362848batch_normalization_33_7362850*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362190Ќ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0conv1d_34_7362853conv1d_34_7362855*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7362486
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0batch_normalization_34_7362858batch_normalization_34_7362860batch_normalization_34_7362862batch_normalization_34_7362864*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362272Ќ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0conv1d_35_7362867conv1d_35_7362869*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7362517
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0batch_normalization_35_7362872batch_normalization_35_7362874batch_normalization_35_7362876batch_normalization_35_7362878*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362354
+global_average_pooling1d_16/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *a
f\RZ
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7362388Ё
 dense_74/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_16/PartitionedCall:output:0dense_74_7362882dense_74_7362884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_7362544р
dropout_17/PartitionedCallPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362674
 dense_75/StatefulPartitionedCallStatefulPartitionedCall#dropout_17/PartitionedCall:output:0dense_75_7362888dense_75_7362890*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_7362574ф
reshape_25/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_7362593v
IdentityIdentity#reshape_25/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџр
NoOpNoOp/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv1d_32/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv1d_32/StatefulPartitionedCall!conv1d_32/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ЬЗ
М
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363557

inputsK
5conv1d_32_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_32_biasadd_readvariableop_resource:L
>batch_normalization_32_assignmovingavg_readvariableop_resource:N
@batch_normalization_32_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_32_batchnorm_mul_readvariableop_resource:F
8batch_normalization_32_batchnorm_readvariableop_resource:K
5conv1d_33_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_33_biasadd_readvariableop_resource:L
>batch_normalization_33_assignmovingavg_readvariableop_resource:N
@batch_normalization_33_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_33_batchnorm_mul_readvariableop_resource:F
8batch_normalization_33_batchnorm_readvariableop_resource:K
5conv1d_34_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_34_biasadd_readvariableop_resource:L
>batch_normalization_34_assignmovingavg_readvariableop_resource:N
@batch_normalization_34_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_34_batchnorm_mul_readvariableop_resource:F
8batch_normalization_34_batchnorm_readvariableop_resource:K
5conv1d_35_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_35_biasadd_readvariableop_resource:L
>batch_normalization_35_assignmovingavg_readvariableop_resource:N
@batch_normalization_35_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_35_batchnorm_mul_readvariableop_resource:F
8batch_normalization_35_batchnorm_readvariableop_resource:9
'dense_74_matmul_readvariableop_resource: 6
(dense_74_biasadd_readvariableop_resource: 9
'dense_75_matmul_readvariableop_resource: T6
(dense_75_biasadd_readvariableop_resource:T
identityЂ&batch_normalization_32/AssignMovingAvgЂ5batch_normalization_32/AssignMovingAvg/ReadVariableOpЂ(batch_normalization_32/AssignMovingAvg_1Ђ7batch_normalization_32/AssignMovingAvg_1/ReadVariableOpЂ/batch_normalization_32/batchnorm/ReadVariableOpЂ3batch_normalization_32/batchnorm/mul/ReadVariableOpЂ&batch_normalization_33/AssignMovingAvgЂ5batch_normalization_33/AssignMovingAvg/ReadVariableOpЂ(batch_normalization_33/AssignMovingAvg_1Ђ7batch_normalization_33/AssignMovingAvg_1/ReadVariableOpЂ/batch_normalization_33/batchnorm/ReadVariableOpЂ3batch_normalization_33/batchnorm/mul/ReadVariableOpЂ&batch_normalization_34/AssignMovingAvgЂ5batch_normalization_34/AssignMovingAvg/ReadVariableOpЂ(batch_normalization_34/AssignMovingAvg_1Ђ7batch_normalization_34/AssignMovingAvg_1/ReadVariableOpЂ/batch_normalization_34/batchnorm/ReadVariableOpЂ3batch_normalization_34/batchnorm/mul/ReadVariableOpЂ&batch_normalization_35/AssignMovingAvgЂ5batch_normalization_35/AssignMovingAvg/ReadVariableOpЂ(batch_normalization_35/AssignMovingAvg_1Ђ7batch_normalization_35/AssignMovingAvg_1/ReadVariableOpЂ/batch_normalization_35/batchnorm/ReadVariableOpЂ3batch_normalization_35/batchnorm/mul/ReadVariableOpЂ conv1d_32/BiasAdd/ReadVariableOpЂ,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpЂ conv1d_33/BiasAdd/ReadVariableOpЂ,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpЂ conv1d_34/BiasAdd/ReadVariableOpЂ,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpЂ conv1d_35/BiasAdd/ReadVariableOpЂ,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpЂdense_74/BiasAdd/ReadVariableOpЂdense_74/MatMul/ReadVariableOpЂdense_75/BiasAdd/ReadVariableOpЂdense_75/MatMul/ReadVariableOpq
lambda_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    s
lambda_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
lambda_8/strided_sliceStridedSliceinputs%lambda_8/strided_slice/stack:output:0'lambda_8/strided_slice/stack_1:output:0'lambda_8/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskj
conv1d_32/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЎ
conv1d_32/Conv1D/ExpandDims
ExpandDimslambda_8/strided_slice:output:0(conv1d_32/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_32_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_32/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_32/Conv1D/ExpandDims_1
ExpandDims4conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_32/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_32/Conv1DConv2D$conv1d_32/Conv1D/ExpandDims:output:0&conv1d_32/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_32/Conv1D/SqueezeSqueezeconv1d_32/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_32/BiasAdd/ReadVariableOpReadVariableOp)conv1d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_32/BiasAddBiasAdd!conv1d_32/Conv1D/Squeeze:output:0(conv1d_32/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_32/ReluReluconv1d_32/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
5batch_normalization_32/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ч
#batch_normalization_32/moments/meanMeanconv1d_32/Relu:activations:0>batch_normalization_32/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_32/moments/StopGradientStopGradient,batch_normalization_32/moments/mean:output:0*
T0*"
_output_shapes
:Я
0batch_normalization_32/moments/SquaredDifferenceSquaredDifferenceconv1d_32/Relu:activations:04batch_normalization_32/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
9batch_normalization_32/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ч
'batch_normalization_32/moments/varianceMean4batch_normalization_32/moments/SquaredDifference:z:0Bbatch_normalization_32/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_32/moments/SqueezeSqueeze,batch_normalization_32/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ђ
(batch_normalization_32/moments/Squeeze_1Squeeze0batch_normalization_32/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_32/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<А
5batch_normalization_32/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_32_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ц
*batch_normalization_32/AssignMovingAvg/subSub=batch_normalization_32/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_32/moments/Squeeze:output:0*
T0*
_output_shapes
:Н
*batch_normalization_32/AssignMovingAvg/mulMul.batch_normalization_32/AssignMovingAvg/sub:z:05batch_normalization_32/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_32/AssignMovingAvgAssignSubVariableOp>batch_normalization_32_assignmovingavg_readvariableop_resource.batch_normalization_32/AssignMovingAvg/mul:z:06^batch_normalization_32/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_32/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Д
7batch_normalization_32/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_32_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ь
,batch_normalization_32/AssignMovingAvg_1/subSub?batch_normalization_32/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_32/moments/Squeeze_1:output:0*
T0*
_output_shapes
:У
,batch_normalization_32/AssignMovingAvg_1/mulMul0batch_normalization_32/AssignMovingAvg_1/sub:z:07batch_normalization_32/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_32/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_32_assignmovingavg_1_readvariableop_resource0batch_normalization_32/AssignMovingAvg_1/mul:z:08^batch_normalization_32/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ж
$batch_normalization_32/batchnorm/addAddV21batch_normalization_32/moments/Squeeze_1:output:0/batch_normalization_32/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_32/batchnorm/RsqrtRsqrt(batch_normalization_32/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_32/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_32_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_32/batchnorm/mulMul*batch_normalization_32/batchnorm/Rsqrt:y:0;batch_normalization_32/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_32/batchnorm/mul_1Mulconv1d_32/Relu:activations:0(batch_normalization_32/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ­
&batch_normalization_32/batchnorm/mul_2Mul/batch_normalization_32/moments/Squeeze:output:0(batch_normalization_32/batchnorm/mul:z:0*
T0*
_output_shapes
:Є
/batch_normalization_32/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_32_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Е
$batch_normalization_32/batchnorm/subSub7batch_normalization_32/batchnorm/ReadVariableOp:value:0*batch_normalization_32/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_32/batchnorm/add_1AddV2*batch_normalization_32/batchnorm/mul_1:z:0(batch_normalization_32/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџj
conv1d_33/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЙ
conv1d_33/Conv1D/ExpandDims
ExpandDims*batch_normalization_32/batchnorm/add_1:z:0(conv1d_33/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_33_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_33/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_33/Conv1D/ExpandDims_1
ExpandDims4conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_33/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_33/Conv1DConv2D$conv1d_33/Conv1D/ExpandDims:output:0&conv1d_33/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_33/Conv1D/SqueezeSqueezeconv1d_33/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_33/BiasAdd/ReadVariableOpReadVariableOp)conv1d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_33/BiasAddBiasAdd!conv1d_33/Conv1D/Squeeze:output:0(conv1d_33/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_33/ReluReluconv1d_33/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
5batch_normalization_33/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ч
#batch_normalization_33/moments/meanMeanconv1d_33/Relu:activations:0>batch_normalization_33/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_33/moments/StopGradientStopGradient,batch_normalization_33/moments/mean:output:0*
T0*"
_output_shapes
:Я
0batch_normalization_33/moments/SquaredDifferenceSquaredDifferenceconv1d_33/Relu:activations:04batch_normalization_33/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
9batch_normalization_33/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ч
'batch_normalization_33/moments/varianceMean4batch_normalization_33/moments/SquaredDifference:z:0Bbatch_normalization_33/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_33/moments/SqueezeSqueeze,batch_normalization_33/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ђ
(batch_normalization_33/moments/Squeeze_1Squeeze0batch_normalization_33/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_33/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<А
5batch_normalization_33/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_33_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ц
*batch_normalization_33/AssignMovingAvg/subSub=batch_normalization_33/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_33/moments/Squeeze:output:0*
T0*
_output_shapes
:Н
*batch_normalization_33/AssignMovingAvg/mulMul.batch_normalization_33/AssignMovingAvg/sub:z:05batch_normalization_33/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_33/AssignMovingAvgAssignSubVariableOp>batch_normalization_33_assignmovingavg_readvariableop_resource.batch_normalization_33/AssignMovingAvg/mul:z:06^batch_normalization_33/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_33/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Д
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_33_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ь
,batch_normalization_33/AssignMovingAvg_1/subSub?batch_normalization_33/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_33/moments/Squeeze_1:output:0*
T0*
_output_shapes
:У
,batch_normalization_33/AssignMovingAvg_1/mulMul0batch_normalization_33/AssignMovingAvg_1/sub:z:07batch_normalization_33/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_33/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_33_assignmovingavg_1_readvariableop_resource0batch_normalization_33/AssignMovingAvg_1/mul:z:08^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ж
$batch_normalization_33/batchnorm/addAddV21batch_normalization_33/moments/Squeeze_1:output:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_33/batchnorm/mulMul*batch_normalization_33/batchnorm/Rsqrt:y:0;batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_33/batchnorm/mul_1Mulconv1d_33/Relu:activations:0(batch_normalization_33/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ­
&batch_normalization_33/batchnorm/mul_2Mul/batch_normalization_33/moments/Squeeze:output:0(batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes
:Є
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Е
$batch_normalization_33/batchnorm/subSub7batch_normalization_33/batchnorm/ReadVariableOp:value:0*batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_33/batchnorm/add_1AddV2*batch_normalization_33/batchnorm/mul_1:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџj
conv1d_34/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЙ
conv1d_34/Conv1D/ExpandDims
ExpandDims*batch_normalization_33/batchnorm/add_1:z:0(conv1d_34/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_34_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_34/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_34/Conv1D/ExpandDims_1
ExpandDims4conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_34/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_34/Conv1DConv2D$conv1d_34/Conv1D/ExpandDims:output:0&conv1d_34/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_34/Conv1D/SqueezeSqueezeconv1d_34/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_34/BiasAdd/ReadVariableOpReadVariableOp)conv1d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_34/BiasAddBiasAdd!conv1d_34/Conv1D/Squeeze:output:0(conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_34/ReluReluconv1d_34/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
5batch_normalization_34/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ч
#batch_normalization_34/moments/meanMeanconv1d_34/Relu:activations:0>batch_normalization_34/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_34/moments/StopGradientStopGradient,batch_normalization_34/moments/mean:output:0*
T0*"
_output_shapes
:Я
0batch_normalization_34/moments/SquaredDifferenceSquaredDifferenceconv1d_34/Relu:activations:04batch_normalization_34/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
9batch_normalization_34/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ч
'batch_normalization_34/moments/varianceMean4batch_normalization_34/moments/SquaredDifference:z:0Bbatch_normalization_34/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_34/moments/SqueezeSqueeze,batch_normalization_34/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ђ
(batch_normalization_34/moments/Squeeze_1Squeeze0batch_normalization_34/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_34/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<А
5batch_normalization_34/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ц
*batch_normalization_34/AssignMovingAvg/subSub=batch_normalization_34/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_34/moments/Squeeze:output:0*
T0*
_output_shapes
:Н
*batch_normalization_34/AssignMovingAvg/mulMul.batch_normalization_34/AssignMovingAvg/sub:z:05batch_normalization_34/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_34/AssignMovingAvgAssignSubVariableOp>batch_normalization_34_assignmovingavg_readvariableop_resource.batch_normalization_34/AssignMovingAvg/mul:z:06^batch_normalization_34/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_34/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Д
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ь
,batch_normalization_34/AssignMovingAvg_1/subSub?batch_normalization_34/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_34/moments/Squeeze_1:output:0*
T0*
_output_shapes
:У
,batch_normalization_34/AssignMovingAvg_1/mulMul0batch_normalization_34/AssignMovingAvg_1/sub:z:07batch_normalization_34/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_34/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_34_assignmovingavg_1_readvariableop_resource0batch_normalization_34/AssignMovingAvg_1/mul:z:08^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ж
$batch_normalization_34/batchnorm/addAddV21batch_normalization_34/moments/Squeeze_1:output:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_34/batchnorm/mul_1Mulconv1d_34/Relu:activations:0(batch_normalization_34/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ­
&batch_normalization_34/batchnorm/mul_2Mul/batch_normalization_34/moments/Squeeze:output:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes
:Є
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Е
$batch_normalization_34/batchnorm/subSub7batch_normalization_34/batchnorm/ReadVariableOp:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџj
conv1d_35/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЙ
conv1d_35/Conv1D/ExpandDims
ExpandDims*batch_normalization_34/batchnorm/add_1:z:0(conv1d_35/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_35_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_35/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_35/Conv1D/ExpandDims_1
ExpandDims4conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_35/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_35/Conv1DConv2D$conv1d_35/Conv1D/ExpandDims:output:0&conv1d_35/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_35/Conv1D/SqueezeSqueezeconv1d_35/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_35/BiasAdd/ReadVariableOpReadVariableOp)conv1d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_35/BiasAddBiasAdd!conv1d_35/Conv1D/Squeeze:output:0(conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_35/ReluReluconv1d_35/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
5batch_normalization_35/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ч
#batch_normalization_35/moments/meanMeanconv1d_35/Relu:activations:0>batch_normalization_35/moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
+batch_normalization_35/moments/StopGradientStopGradient,batch_normalization_35/moments/mean:output:0*
T0*"
_output_shapes
:Я
0batch_normalization_35/moments/SquaredDifferenceSquaredDifferenceconv1d_35/Relu:activations:04batch_normalization_35/moments/StopGradient:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
9batch_normalization_35/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       ч
'batch_normalization_35/moments/varianceMean4batch_normalization_35/moments/SquaredDifference:z:0Bbatch_normalization_35/moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(
&batch_normalization_35/moments/SqueezeSqueeze,batch_normalization_35/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Ђ
(batch_normalization_35/moments/Squeeze_1Squeeze0batch_normalization_35/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_35/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<А
5batch_normalization_35/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Ц
*batch_normalization_35/AssignMovingAvg/subSub=batch_normalization_35/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_35/moments/Squeeze:output:0*
T0*
_output_shapes
:Н
*batch_normalization_35/AssignMovingAvg/mulMul.batch_normalization_35/AssignMovingAvg/sub:z:05batch_normalization_35/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_35/AssignMovingAvgAssignSubVariableOp>batch_normalization_35_assignmovingavg_readvariableop_resource.batch_normalization_35/AssignMovingAvg/mul:z:06^batch_normalization_35/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_35/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<Д
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ь
,batch_normalization_35/AssignMovingAvg_1/subSub?batch_normalization_35/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_35/moments/Squeeze_1:output:0*
T0*
_output_shapes
:У
,batch_normalization_35/AssignMovingAvg_1/mulMul0batch_normalization_35/AssignMovingAvg_1/sub:z:07batch_normalization_35/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_35/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_35_assignmovingavg_1_readvariableop_resource0batch_normalization_35/AssignMovingAvg_1/mul:z:08^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:Ж
$batch_normalization_35/batchnorm/addAddV21batch_normalization_35/moments/Squeeze_1:output:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:0;batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_35/batchnorm/mul_1Mulconv1d_35/Relu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџ­
&batch_normalization_35/batchnorm/mul_2Mul/batch_normalization_35/moments/Squeeze:output:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes
:Є
/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0Е
$batch_normalization_35/batchnorm/subSub7batch_normalization_35/batchnorm/ReadVariableOp:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџt
2global_average_pooling1d_16/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :У
 global_average_pooling1d_16/MeanMean*batch_normalization_35/batchnorm/add_1:z:0;global_average_pooling1d_16/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_74/MatMulMatMul)global_average_pooling1d_16/Mean:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ b
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ ]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_17/dropout/MulMuldense_74/Relu:activations:0!dropout_17/dropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ q
dropout_17/dropout/ShapeShapedense_74/Relu:activations:0*
T0*
_output_shapes
::эЯЎ
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype0*

seed*f
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>Ч
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ _
dropout_17/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    П
dropout_17/dropout/SelectV2SelectV2#dropout_17/dropout/GreaterEqual:z:0dropout_17/dropout/Mul:z:0#dropout_17/dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

: T*
dtype0
dense_75/MatMulMatMul$dropout_17/dropout/SelectV2:output:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџT
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџTg
reshape_25/ShapeShapedense_75/BiasAdd:output:0*
T0*
_output_shapes
::эЯh
reshape_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_25/strided_sliceStridedSlicereshape_25/Shape:output:0'reshape_25/strided_slice/stack:output:0)reshape_25/strided_slice/stack_1:output:0)reshape_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_25/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_25/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Л
reshape_25/Reshape/shapePack!reshape_25/strided_slice:output:0#reshape_25/Reshape/shape/1:output:0#reshape_25/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_25/ReshapeReshapedense_75/BiasAdd:output:0!reshape_25/Reshape/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџn
IdentityIdentityreshape_25/Reshape:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџЬ
NoOpNoOp'^batch_normalization_32/AssignMovingAvg6^batch_normalization_32/AssignMovingAvg/ReadVariableOp)^batch_normalization_32/AssignMovingAvg_18^batch_normalization_32/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_32/batchnorm/ReadVariableOp4^batch_normalization_32/batchnorm/mul/ReadVariableOp'^batch_normalization_33/AssignMovingAvg6^batch_normalization_33/AssignMovingAvg/ReadVariableOp)^batch_normalization_33/AssignMovingAvg_18^batch_normalization_33/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_33/batchnorm/ReadVariableOp4^batch_normalization_33/batchnorm/mul/ReadVariableOp'^batch_normalization_34/AssignMovingAvg6^batch_normalization_34/AssignMovingAvg/ReadVariableOp)^batch_normalization_34/AssignMovingAvg_18^batch_normalization_34/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_34/batchnorm/ReadVariableOp4^batch_normalization_34/batchnorm/mul/ReadVariableOp'^batch_normalization_35/AssignMovingAvg6^batch_normalization_35/AssignMovingAvg/ReadVariableOp)^batch_normalization_35/AssignMovingAvg_18^batch_normalization_35/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_35/batchnorm/ReadVariableOp4^batch_normalization_35/batchnorm/mul/ReadVariableOp!^conv1d_32/BiasAdd/ReadVariableOp-^conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_33/BiasAdd/ReadVariableOp-^conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_34/BiasAdd/ReadVariableOp-^conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_35/BiasAdd/ReadVariableOp-^conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2n
5batch_normalization_32/AssignMovingAvg/ReadVariableOp5batch_normalization_32/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_32/AssignMovingAvg_1/ReadVariableOp7batch_normalization_32/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_32/AssignMovingAvg_1(batch_normalization_32/AssignMovingAvg_12P
&batch_normalization_32/AssignMovingAvg&batch_normalization_32/AssignMovingAvg2b
/batch_normalization_32/batchnorm/ReadVariableOp/batch_normalization_32/batchnorm/ReadVariableOp2j
3batch_normalization_32/batchnorm/mul/ReadVariableOp3batch_normalization_32/batchnorm/mul/ReadVariableOp2n
5batch_normalization_33/AssignMovingAvg/ReadVariableOp5batch_normalization_33/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp7batch_normalization_33/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_33/AssignMovingAvg_1(batch_normalization_33/AssignMovingAvg_12P
&batch_normalization_33/AssignMovingAvg&batch_normalization_33/AssignMovingAvg2b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2j
3batch_normalization_33/batchnorm/mul/ReadVariableOp3batch_normalization_33/batchnorm/mul/ReadVariableOp2n
5batch_normalization_34/AssignMovingAvg/ReadVariableOp5batch_normalization_34/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp7batch_normalization_34/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_34/AssignMovingAvg_1(batch_normalization_34/AssignMovingAvg_12P
&batch_normalization_34/AssignMovingAvg&batch_normalization_34/AssignMovingAvg2b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2n
5batch_normalization_35/AssignMovingAvg/ReadVariableOp5batch_normalization_35/AssignMovingAvg/ReadVariableOp2r
7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp7batch_normalization_35/AssignMovingAvg_1/ReadVariableOp2T
(batch_normalization_35/AssignMovingAvg_1(batch_normalization_35/AssignMovingAvg_12P
&batch_normalization_35/AssignMovingAvg&batch_normalization_35/AssignMovingAvg2b
/batch_normalization_35/batchnorm/ReadVariableOp/batch_normalization_35/batchnorm/ReadVariableOp2j
3batch_normalization_35/batchnorm/mul/ReadVariableOp3batch_normalization_35/batchnorm/mul/ReadVariableOp2D
 conv1d_32/BiasAdd/ReadVariableOp conv1d_32/BiasAdd/ReadVariableOp2\
,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_33/BiasAdd/ReadVariableOp conv1d_33/BiasAdd/ReadVariableOp2\
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_34/BiasAdd/ReadVariableOp conv1d_34/BiasAdd/ReadVariableOp2\
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_35/BiasAdd/ReadVariableOp conv1d_35/BiasAdd/ReadVariableOp2\
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ

F__inference_conv1d_32_layer_call_and_return_conditional_losses_7363753

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7363813

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ч

c
G__inference_reshape_25_layer_call_and_return_conditional_losses_7362593

inputs
identityI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:б
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџT:O K
'
_output_shapes
:џџџџџџџџџT
 
_user_specified_nameinputs

В
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362190

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362334

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ї

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364201

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

В
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362272

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Џ
F
*__inference_lambda_8_layer_call_fn_7363712

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362606d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Ш	
і
E__inference_dense_75_layer_call_and_return_conditional_losses_7362574

inputs0
matmul_readvariableop_resource: T-
biasadd_readvariableop_resource:T
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: T*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџTr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:T*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџT_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџTw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs

В
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364148

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
ЦЦ

Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363702

inputsK
5conv1d_32_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_32_biasadd_readvariableop_resource:F
8batch_normalization_32_batchnorm_readvariableop_resource:J
<batch_normalization_32_batchnorm_mul_readvariableop_resource:H
:batch_normalization_32_batchnorm_readvariableop_1_resource:H
:batch_normalization_32_batchnorm_readvariableop_2_resource:K
5conv1d_33_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_33_biasadd_readvariableop_resource:F
8batch_normalization_33_batchnorm_readvariableop_resource:J
<batch_normalization_33_batchnorm_mul_readvariableop_resource:H
:batch_normalization_33_batchnorm_readvariableop_1_resource:H
:batch_normalization_33_batchnorm_readvariableop_2_resource:K
5conv1d_34_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_34_biasadd_readvariableop_resource:F
8batch_normalization_34_batchnorm_readvariableop_resource:J
<batch_normalization_34_batchnorm_mul_readvariableop_resource:H
:batch_normalization_34_batchnorm_readvariableop_1_resource:H
:batch_normalization_34_batchnorm_readvariableop_2_resource:K
5conv1d_35_conv1d_expanddims_1_readvariableop_resource:7
)conv1d_35_biasadd_readvariableop_resource:F
8batch_normalization_35_batchnorm_readvariableop_resource:J
<batch_normalization_35_batchnorm_mul_readvariableop_resource:H
:batch_normalization_35_batchnorm_readvariableop_1_resource:H
:batch_normalization_35_batchnorm_readvariableop_2_resource:9
'dense_74_matmul_readvariableop_resource: 6
(dense_74_biasadd_readvariableop_resource: 9
'dense_75_matmul_readvariableop_resource: T6
(dense_75_biasadd_readvariableop_resource:T
identityЂ/batch_normalization_32/batchnorm/ReadVariableOpЂ1batch_normalization_32/batchnorm/ReadVariableOp_1Ђ1batch_normalization_32/batchnorm/ReadVariableOp_2Ђ3batch_normalization_32/batchnorm/mul/ReadVariableOpЂ/batch_normalization_33/batchnorm/ReadVariableOpЂ1batch_normalization_33/batchnorm/ReadVariableOp_1Ђ1batch_normalization_33/batchnorm/ReadVariableOp_2Ђ3batch_normalization_33/batchnorm/mul/ReadVariableOpЂ/batch_normalization_34/batchnorm/ReadVariableOpЂ1batch_normalization_34/batchnorm/ReadVariableOp_1Ђ1batch_normalization_34/batchnorm/ReadVariableOp_2Ђ3batch_normalization_34/batchnorm/mul/ReadVariableOpЂ/batch_normalization_35/batchnorm/ReadVariableOpЂ1batch_normalization_35/batchnorm/ReadVariableOp_1Ђ1batch_normalization_35/batchnorm/ReadVariableOp_2Ђ3batch_normalization_35/batchnorm/mul/ReadVariableOpЂ conv1d_32/BiasAdd/ReadVariableOpЂ,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpЂ conv1d_33/BiasAdd/ReadVariableOpЂ,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpЂ conv1d_34/BiasAdd/ReadVariableOpЂ,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpЂ conv1d_35/BiasAdd/ReadVariableOpЂ,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpЂdense_74/BiasAdd/ReadVariableOpЂdense_74/MatMul/ReadVariableOpЂdense_75/BiasAdd/ReadVariableOpЂdense_75/MatMul/ReadVariableOpq
lambda_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    s
lambda_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            s
lambda_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
lambda_8/strided_sliceStridedSliceinputs%lambda_8/strided_slice/stack:output:0'lambda_8/strided_slice/stack_1:output:0'lambda_8/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskj
conv1d_32/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЎ
conv1d_32/Conv1D/ExpandDims
ExpandDimslambda_8/strided_slice:output:0(conv1d_32/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_32_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_32/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_32/Conv1D/ExpandDims_1
ExpandDims4conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_32/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_32/Conv1DConv2D$conv1d_32/Conv1D/ExpandDims:output:0&conv1d_32/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_32/Conv1D/SqueezeSqueezeconv1d_32/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_32/BiasAdd/ReadVariableOpReadVariableOp)conv1d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_32/BiasAddBiasAdd!conv1d_32/Conv1D/Squeeze:output:0(conv1d_32/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_32/ReluReluconv1d_32/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЄ
/batch_normalization_32/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_32_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
$batch_normalization_32/batchnorm/addAddV27batch_normalization_32/batchnorm/ReadVariableOp:value:0/batch_normalization_32/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_32/batchnorm/RsqrtRsqrt(batch_normalization_32/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_32/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_32_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_32/batchnorm/mulMul*batch_normalization_32/batchnorm/Rsqrt:y:0;batch_normalization_32/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_32/batchnorm/mul_1Mulconv1d_32/Relu:activations:0(batch_normalization_32/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџЈ
1batch_normalization_32/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_32_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0З
&batch_normalization_32/batchnorm/mul_2Mul9batch_normalization_32/batchnorm/ReadVariableOp_1:value:0(batch_normalization_32/batchnorm/mul:z:0*
T0*
_output_shapes
:Ј
1batch_normalization_32/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_32_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0З
$batch_normalization_32/batchnorm/subSub9batch_normalization_32/batchnorm/ReadVariableOp_2:value:0*batch_normalization_32/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_32/batchnorm/add_1AddV2*batch_normalization_32/batchnorm/mul_1:z:0(batch_normalization_32/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџj
conv1d_33/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЙ
conv1d_33/Conv1D/ExpandDims
ExpandDims*batch_normalization_32/batchnorm/add_1:z:0(conv1d_33/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_33_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_33/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_33/Conv1D/ExpandDims_1
ExpandDims4conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_33/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_33/Conv1DConv2D$conv1d_33/Conv1D/ExpandDims:output:0&conv1d_33/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_33/Conv1D/SqueezeSqueezeconv1d_33/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_33/BiasAdd/ReadVariableOpReadVariableOp)conv1d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_33/BiasAddBiasAdd!conv1d_33/Conv1D/Squeeze:output:0(conv1d_33/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_33/ReluReluconv1d_33/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЄ
/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
$batch_normalization_33/batchnorm/addAddV27batch_normalization_33/batchnorm/ReadVariableOp:value:0/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_33/batchnorm/RsqrtRsqrt(batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_33/batchnorm/mulMul*batch_normalization_33/batchnorm/Rsqrt:y:0;batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_33/batchnorm/mul_1Mulconv1d_33/Relu:activations:0(batch_normalization_33/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџЈ
1batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0З
&batch_normalization_33/batchnorm/mul_2Mul9batch_normalization_33/batchnorm/ReadVariableOp_1:value:0(batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes
:Ј
1batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0З
$batch_normalization_33/batchnorm/subSub9batch_normalization_33/batchnorm/ReadVariableOp_2:value:0*batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_33/batchnorm/add_1AddV2*batch_normalization_33/batchnorm/mul_1:z:0(batch_normalization_33/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџj
conv1d_34/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЙ
conv1d_34/Conv1D/ExpandDims
ExpandDims*batch_normalization_33/batchnorm/add_1:z:0(conv1d_34/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_34_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_34/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_34/Conv1D/ExpandDims_1
ExpandDims4conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_34/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_34/Conv1DConv2D$conv1d_34/Conv1D/ExpandDims:output:0&conv1d_34/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_34/Conv1D/SqueezeSqueezeconv1d_34/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_34/BiasAdd/ReadVariableOpReadVariableOp)conv1d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_34/BiasAddBiasAdd!conv1d_34/Conv1D/Squeeze:output:0(conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_34/ReluReluconv1d_34/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЄ
/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
$batch_normalization_34/batchnorm/addAddV27batch_normalization_34/batchnorm/ReadVariableOp:value:0/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_34/batchnorm/RsqrtRsqrt(batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_34/batchnorm/mulMul*batch_normalization_34/batchnorm/Rsqrt:y:0;batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_34/batchnorm/mul_1Mulconv1d_34/Relu:activations:0(batch_normalization_34/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџЈ
1batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0З
&batch_normalization_34/batchnorm/mul_2Mul9batch_normalization_34/batchnorm/ReadVariableOp_1:value:0(batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes
:Ј
1batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0З
$batch_normalization_34/batchnorm/subSub9batch_normalization_34/batchnorm/ReadVariableOp_2:value:0*batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_34/batchnorm/add_1AddV2*batch_normalization_34/batchnorm/mul_1:z:0(batch_normalization_34/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџj
conv1d_35/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџЙ
conv1d_35/Conv1D/ExpandDims
ExpandDims*batch_normalization_34/batchnorm/add_1:z:0(conv1d_35/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџІ
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp5conv1d_35_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0c
!conv1d_35/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : О
conv1d_35/Conv1D/ExpandDims_1
ExpandDims4conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:value:0*conv1d_35/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ъ
conv1d_35/Conv1DConv2D$conv1d_35/Conv1D/ExpandDims:output:0&conv1d_35/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

conv1d_35/Conv1D/SqueezeSqueezeconv1d_35/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџ
 conv1d_35/BiasAdd/ReadVariableOpReadVariableOp)conv1d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv1d_35/BiasAddBiasAdd!conv1d_35/Conv1D/Squeeze:output:0(conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџh
conv1d_35/ReluReluconv1d_35/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЄ
/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:М
$batch_normalization_35/batchnorm/addAddV27batch_normalization_35/batchnorm/ReadVariableOp:value:0/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_35/batchnorm/RsqrtRsqrt(batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes
:Ќ
3batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0Й
$batch_normalization_35/batchnorm/mulMul*batch_normalization_35/batchnorm/Rsqrt:y:0;batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Ћ
&batch_normalization_35/batchnorm/mul_1Mulconv1d_35/Relu:activations:0(batch_normalization_35/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџЈ
1batch_normalization_35/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_35_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0З
&batch_normalization_35/batchnorm/mul_2Mul9batch_normalization_35/batchnorm/ReadVariableOp_1:value:0(batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes
:Ј
1batch_normalization_35/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_35_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0З
$batch_normalization_35/batchnorm/subSub9batch_normalization_35/batchnorm/ReadVariableOp_2:value:0*batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Л
&batch_normalization_35/batchnorm/add_1AddV2*batch_normalization_35/batchnorm/mul_1:z:0(batch_normalization_35/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџt
2global_average_pooling1d_16/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :У
 global_average_pooling1d_16/MeanMean*batch_normalization_35/batchnorm/add_1:z:0;global_average_pooling1d_16/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџ
dense_74/MatMul/ReadVariableOpReadVariableOp'dense_74_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_74/MatMulMatMul)global_average_pooling1d_16/Mean:output:0&dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_74/BiasAdd/ReadVariableOpReadVariableOp(dense_74_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_74/BiasAddBiasAdddense_74/MatMul:product:0'dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ b
dense_74/ReluReludense_74/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ n
dropout_17/IdentityIdentitydense_74/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ 
dense_75/MatMul/ReadVariableOpReadVariableOp'dense_75_matmul_readvariableop_resource*
_output_shapes

: T*
dtype0
dense_75/MatMulMatMuldropout_17/Identity:output:0&dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџT
dense_75/BiasAdd/ReadVariableOpReadVariableOp(dense_75_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0
dense_75/BiasAddBiasAdddense_75/MatMul:product:0'dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџTg
reshape_25/ShapeShapedense_75/BiasAdd:output:0*
T0*
_output_shapes
::эЯh
reshape_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
reshape_25/strided_sliceStridedSlicereshape_25/Shape:output:0'reshape_25/strided_slice/stack:output:0)reshape_25/strided_slice/stack_1:output:0)reshape_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_25/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_25/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Л
reshape_25/Reshape/shapePack!reshape_25/strided_slice:output:0#reshape_25/Reshape/shape/1:output:0#reshape_25/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
reshape_25/ReshapeReshapedense_75/BiasAdd:output:0!reshape_25/Reshape/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџn
IdentityIdentityreshape_25/Reshape:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџд

NoOpNoOp0^batch_normalization_32/batchnorm/ReadVariableOp2^batch_normalization_32/batchnorm/ReadVariableOp_12^batch_normalization_32/batchnorm/ReadVariableOp_24^batch_normalization_32/batchnorm/mul/ReadVariableOp0^batch_normalization_33/batchnorm/ReadVariableOp2^batch_normalization_33/batchnorm/ReadVariableOp_12^batch_normalization_33/batchnorm/ReadVariableOp_24^batch_normalization_33/batchnorm/mul/ReadVariableOp0^batch_normalization_34/batchnorm/ReadVariableOp2^batch_normalization_34/batchnorm/ReadVariableOp_12^batch_normalization_34/batchnorm/ReadVariableOp_24^batch_normalization_34/batchnorm/mul/ReadVariableOp0^batch_normalization_35/batchnorm/ReadVariableOp2^batch_normalization_35/batchnorm/ReadVariableOp_12^batch_normalization_35/batchnorm/ReadVariableOp_24^batch_normalization_35/batchnorm/mul/ReadVariableOp!^conv1d_32/BiasAdd/ReadVariableOp-^conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_33/BiasAdd/ReadVariableOp-^conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_34/BiasAdd/ReadVariableOp-^conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp!^conv1d_35/BiasAdd/ReadVariableOp-^conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp ^dense_74/BiasAdd/ReadVariableOp^dense_74/MatMul/ReadVariableOp ^dense_75/BiasAdd/ReadVariableOp^dense_75/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2f
1batch_normalization_32/batchnorm/ReadVariableOp_11batch_normalization_32/batchnorm/ReadVariableOp_12f
1batch_normalization_32/batchnorm/ReadVariableOp_21batch_normalization_32/batchnorm/ReadVariableOp_22b
/batch_normalization_32/batchnorm/ReadVariableOp/batch_normalization_32/batchnorm/ReadVariableOp2j
3batch_normalization_32/batchnorm/mul/ReadVariableOp3batch_normalization_32/batchnorm/mul/ReadVariableOp2f
1batch_normalization_33/batchnorm/ReadVariableOp_11batch_normalization_33/batchnorm/ReadVariableOp_12f
1batch_normalization_33/batchnorm/ReadVariableOp_21batch_normalization_33/batchnorm/ReadVariableOp_22b
/batch_normalization_33/batchnorm/ReadVariableOp/batch_normalization_33/batchnorm/ReadVariableOp2j
3batch_normalization_33/batchnorm/mul/ReadVariableOp3batch_normalization_33/batchnorm/mul/ReadVariableOp2f
1batch_normalization_34/batchnorm/ReadVariableOp_11batch_normalization_34/batchnorm/ReadVariableOp_12f
1batch_normalization_34/batchnorm/ReadVariableOp_21batch_normalization_34/batchnorm/ReadVariableOp_22b
/batch_normalization_34/batchnorm/ReadVariableOp/batch_normalization_34/batchnorm/ReadVariableOp2j
3batch_normalization_34/batchnorm/mul/ReadVariableOp3batch_normalization_34/batchnorm/mul/ReadVariableOp2f
1batch_normalization_35/batchnorm/ReadVariableOp_11batch_normalization_35/batchnorm/ReadVariableOp_12f
1batch_normalization_35/batchnorm/ReadVariableOp_21batch_normalization_35/batchnorm/ReadVariableOp_22b
/batch_normalization_35/batchnorm/ReadVariableOp/batch_normalization_35/batchnorm/ReadVariableOp2j
3batch_normalization_35/batchnorm/mul/ReadVariableOp3batch_normalization_35/batchnorm/mul/ReadVariableOp2D
 conv1d_32/BiasAdd/ReadVariableOp conv1d_32/BiasAdd/ReadVariableOp2\
,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_33/BiasAdd/ReadVariableOp conv1d_33/BiasAdd/ReadVariableOp2\
,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_34/BiasAdd/ReadVariableOp conv1d_34/BiasAdd/ReadVariableOp2\
,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp2D
 conv1d_35/BiasAdd/ReadVariableOp conv1d_35/BiasAdd/ReadVariableOp2\
,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp,conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp2B
dense_74/BiasAdd/ReadVariableOpdense_74/BiasAdd/ReadVariableOp2@
dense_74/MatMul/ReadVariableOpdense_74/MatMul/ReadVariableOp2B
dense_75/BiasAdd/ReadVariableOpdense_75/BiasAdd/ReadVariableOp2@
dense_75/MatMul/ReadVariableOpdense_75/MatMul/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ДK
П
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362760

inputs'
conv1d_32_7362690:
conv1d_32_7362692:,
batch_normalization_32_7362695:,
batch_normalization_32_7362697:,
batch_normalization_32_7362699:,
batch_normalization_32_7362701:'
conv1d_33_7362704:
conv1d_33_7362706:,
batch_normalization_33_7362709:,
batch_normalization_33_7362711:,
batch_normalization_33_7362713:,
batch_normalization_33_7362715:'
conv1d_34_7362718:
conv1d_34_7362720:,
batch_normalization_34_7362723:,
batch_normalization_34_7362725:,
batch_normalization_34_7362727:,
batch_normalization_34_7362729:'
conv1d_35_7362732:
conv1d_35_7362734:,
batch_normalization_35_7362737:,
batch_normalization_35_7362739:,
batch_normalization_35_7362741:,
batch_normalization_35_7362743:"
dense_74_7362747: 
dense_74_7362749: "
dense_75_7362753: T
dense_75_7362755:T
identityЂ.batch_normalization_32/StatefulPartitionedCallЂ.batch_normalization_33/StatefulPartitionedCallЂ.batch_normalization_34/StatefulPartitionedCallЂ.batch_normalization_35/StatefulPartitionedCallЂ!conv1d_32/StatefulPartitionedCallЂ!conv1d_33/StatefulPartitionedCallЂ!conv1d_34/StatefulPartitionedCallЂ!conv1d_35/StatefulPartitionedCallЂ dense_74/StatefulPartitionedCallЂ dense_75/StatefulPartitionedCallЂ"dropout_17/StatefulPartitionedCallН
lambda_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362406
!conv1d_32/StatefulPartitionedCallStatefulPartitionedCall!lambda_8/PartitionedCall:output:0conv1d_32_7362690conv1d_32_7362692*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7362424
.batch_normalization_32/StatefulPartitionedCallStatefulPartitionedCall*conv1d_32/StatefulPartitionedCall:output:0batch_normalization_32_7362695batch_normalization_32_7362697batch_normalization_32_7362699batch_normalization_32_7362701*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7362088Ќ
!conv1d_33/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_32/StatefulPartitionedCall:output:0conv1d_33_7362704conv1d_33_7362706*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7362455
.batch_normalization_33/StatefulPartitionedCallStatefulPartitionedCall*conv1d_33/StatefulPartitionedCall:output:0batch_normalization_33_7362709batch_normalization_33_7362711batch_normalization_33_7362713batch_normalization_33_7362715*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362170Ќ
!conv1d_34/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_33/StatefulPartitionedCall:output:0conv1d_34_7362718conv1d_34_7362720*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7362486
.batch_normalization_34/StatefulPartitionedCallStatefulPartitionedCall*conv1d_34/StatefulPartitionedCall:output:0batch_normalization_34_7362723batch_normalization_34_7362725batch_normalization_34_7362727batch_normalization_34_7362729*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7362252Ќ
!conv1d_35/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_34/StatefulPartitionedCall:output:0conv1d_35_7362732conv1d_35_7362734*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7362517
.batch_normalization_35/StatefulPartitionedCallStatefulPartitionedCall*conv1d_35/StatefulPartitionedCall:output:0batch_normalization_35_7362737batch_normalization_35_7362739batch_normalization_35_7362741batch_normalization_35_7362743*
Tin	
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362334
+global_average_pooling1d_16/PartitionedCallPartitionedCall7batch_normalization_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *a
f\RZ
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7362388Ё
 dense_74/StatefulPartitionedCallStatefulPartitionedCall4global_average_pooling1d_16/PartitionedCall:output:0dense_74_7362747dense_74_7362749*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_74_layer_call_and_return_conditional_losses_7362544№
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)dense_74/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362562
 dense_75/StatefulPartitionedCallStatefulPartitionedCall+dropout_17/StatefulPartitionedCall:output:0dense_75_7362753dense_75_7362755*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_7362574ф
reshape_25/PartitionedCallPartitionedCall)dense_75/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_reshape_25_layer_call_and_return_conditional_losses_7362593v
IdentityIdentity#reshape_25/PartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp/^batch_normalization_32/StatefulPartitionedCall/^batch_normalization_33/StatefulPartitionedCall/^batch_normalization_34/StatefulPartitionedCall/^batch_normalization_35/StatefulPartitionedCall"^conv1d_32/StatefulPartitionedCall"^conv1d_33/StatefulPartitionedCall"^conv1d_34/StatefulPartitionedCall"^conv1d_35/StatefulPartitionedCall!^dense_74/StatefulPartitionedCall!^dense_75/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_32/StatefulPartitionedCall.batch_normalization_32/StatefulPartitionedCall2`
.batch_normalization_33/StatefulPartitionedCall.batch_normalization_33/StatefulPartitionedCall2`
.batch_normalization_34/StatefulPartitionedCall.batch_normalization_34/StatefulPartitionedCall2`
.batch_normalization_35/StatefulPartitionedCall.batch_normalization_35/StatefulPartitionedCall2F
!conv1d_32/StatefulPartitionedCall!conv1d_32/StatefulPartitionedCall2F
!conv1d_33/StatefulPartitionedCall!conv1d_33/StatefulPartitionedCall2F
!conv1d_34/StatefulPartitionedCall!conv1d_34/StatefulPartitionedCall2F
!conv1d_35/StatefulPartitionedCall!conv1d_35/StatefulPartitionedCall2D
 dense_74/StatefulPartitionedCall dense_74/StatefulPartitionedCall2D
 dense_75/StatefulPartitionedCall dense_75/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

t
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7362388

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs

В
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364043

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
х{
о
#__inference__traced_restore_7364528
file_prefix7
!assignvariableop_conv1d_32_kernel:/
!assignvariableop_1_conv1d_32_bias:=
/assignvariableop_2_batch_normalization_32_gamma:<
.assignvariableop_3_batch_normalization_32_beta:C
5assignvariableop_4_batch_normalization_32_moving_mean:G
9assignvariableop_5_batch_normalization_32_moving_variance:9
#assignvariableop_6_conv1d_33_kernel:/
!assignvariableop_7_conv1d_33_bias:=
/assignvariableop_8_batch_normalization_33_gamma:<
.assignvariableop_9_batch_normalization_33_beta:D
6assignvariableop_10_batch_normalization_33_moving_mean:H
:assignvariableop_11_batch_normalization_33_moving_variance::
$assignvariableop_12_conv1d_34_kernel:0
"assignvariableop_13_conv1d_34_bias:>
0assignvariableop_14_batch_normalization_34_gamma:=
/assignvariableop_15_batch_normalization_34_beta:D
6assignvariableop_16_batch_normalization_34_moving_mean:H
:assignvariableop_17_batch_normalization_34_moving_variance::
$assignvariableop_18_conv1d_35_kernel:0
"assignvariableop_19_conv1d_35_bias:>
0assignvariableop_20_batch_normalization_35_gamma:=
/assignvariableop_21_batch_normalization_35_beta:D
6assignvariableop_22_batch_normalization_35_moving_mean:H
:assignvariableop_23_batch_normalization_35_moving_variance:5
#assignvariableop_24_dense_74_kernel: /
!assignvariableop_25_dense_74_bias: 5
#assignvariableop_26_dense_75_kernel: T/
!assignvariableop_27_dense_75_bias:T
identity_29ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9Э
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ѓ
valueщBцB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЊ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B А
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Д
AssignVariableOpAssignVariableOp!assignvariableop_conv1d_32_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv1d_32_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_32_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_32_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_32_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:а
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_32_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv1d_33_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:И
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv1d_33_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ц
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_33_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_33_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_33_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_33_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv1d_34_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv1d_34_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_34_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_34_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_34_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_34_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_18AssignVariableOp$assignvariableop_18_conv1d_35_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOp_19AssignVariableOp"assignvariableop_19_conv1d_35_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_35_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_35_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Я
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_35_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_35_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_74_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_74_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOp#assignvariableop_26_dense_75_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_27AssignVariableOp!assignvariableop_27_dense_75_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 З
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: Є
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Џ
F
*__inference_lambda_8_layer_call_fn_7363707

inputs
identityД
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362406d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
о
г
8__inference_batch_normalization_35_layer_call_fn_7364081

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7362334|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Ф

*__inference_dense_75_layer_call_fn_7364215

inputs
unknown: T
	unknown_0:T
identityЂStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџT*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_75_layer_call_and_return_conditional_losses_7362574o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџT`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
ї
#
"__inference__wrapped_model_7362053	
input`
Jfederated_cnn_f7_h12_conv1d_32_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f7_h12_conv1d_32_biasadd_readvariableop_resource:[
Mfederated_cnn_f7_h12_batch_normalization_32_batchnorm_readvariableop_resource:_
Qfederated_cnn_f7_h12_batch_normalization_32_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f7_h12_batch_normalization_32_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f7_h12_batch_normalization_32_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f7_h12_conv1d_33_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f7_h12_conv1d_33_biasadd_readvariableop_resource:[
Mfederated_cnn_f7_h12_batch_normalization_33_batchnorm_readvariableop_resource:_
Qfederated_cnn_f7_h12_batch_normalization_33_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f7_h12_batch_normalization_33_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f7_h12_batch_normalization_33_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f7_h12_conv1d_34_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f7_h12_conv1d_34_biasadd_readvariableop_resource:[
Mfederated_cnn_f7_h12_batch_normalization_34_batchnorm_readvariableop_resource:_
Qfederated_cnn_f7_h12_batch_normalization_34_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f7_h12_batch_normalization_34_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f7_h12_batch_normalization_34_batchnorm_readvariableop_2_resource:`
Jfederated_cnn_f7_h12_conv1d_35_conv1d_expanddims_1_readvariableop_resource:L
>federated_cnn_f7_h12_conv1d_35_biasadd_readvariableop_resource:[
Mfederated_cnn_f7_h12_batch_normalization_35_batchnorm_readvariableop_resource:_
Qfederated_cnn_f7_h12_batch_normalization_35_batchnorm_mul_readvariableop_resource:]
Ofederated_cnn_f7_h12_batch_normalization_35_batchnorm_readvariableop_1_resource:]
Ofederated_cnn_f7_h12_batch_normalization_35_batchnorm_readvariableop_2_resource:N
<federated_cnn_f7_h12_dense_74_matmul_readvariableop_resource: K
=federated_cnn_f7_h12_dense_74_biasadd_readvariableop_resource: N
<federated_cnn_f7_h12_dense_75_matmul_readvariableop_resource: TK
=federated_cnn_f7_h12_dense_75_biasadd_readvariableop_resource:T
identityЂDFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOpЂFFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_1ЂFFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_2ЂHFederated_CNN_F7_H12/batch_normalization_32/batchnorm/mul/ReadVariableOpЂDFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOpЂFFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_1ЂFFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_2ЂHFederated_CNN_F7_H12/batch_normalization_33/batchnorm/mul/ReadVariableOpЂDFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOpЂFFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_1ЂFFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_2ЂHFederated_CNN_F7_H12/batch_normalization_34/batchnorm/mul/ReadVariableOpЂDFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOpЂFFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_1ЂFFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_2ЂHFederated_CNN_F7_H12/batch_normalization_35/batchnorm/mul/ReadVariableOpЂ5Federated_CNN_F7_H12/conv1d_32/BiasAdd/ReadVariableOpЂAFederated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpЂ5Federated_CNN_F7_H12/conv1d_33/BiasAdd/ReadVariableOpЂAFederated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpЂ5Federated_CNN_F7_H12/conv1d_34/BiasAdd/ReadVariableOpЂAFederated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpЂ5Federated_CNN_F7_H12/conv1d_35/BiasAdd/ReadVariableOpЂAFederated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpЂ4Federated_CNN_F7_H12/dense_74/BiasAdd/ReadVariableOpЂ3Federated_CNN_F7_H12/dense_74/MatMul/ReadVariableOpЂ4Federated_CNN_F7_H12/dense_75/BiasAdd/ReadVariableOpЂ3Federated_CNN_F7_H12/dense_75/MatMul/ReadVariableOp
1Federated_CNN_F7_H12/lambda_8/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    
3Federated_CNN_F7_H12/lambda_8/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            
3Federated_CNN_F7_H12/lambda_8/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         п
+Federated_CNN_F7_H12/lambda_8/strided_sliceStridedSliceinput:Federated_CNN_F7_H12/lambda_8/strided_slice/stack:output:0<Federated_CNN_F7_H12/lambda_8/strided_slice/stack_1:output:0<Federated_CNN_F7_H12/lambda_8/strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_mask
4Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџэ
0Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims
ExpandDims4Federated_CNN_F7_H12/lambda_8/strided_slice:output:0=Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџа
AFederated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f7_h12_conv1d_32_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : §
2Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
%Federated_CNN_F7_H12/conv1d_32/Conv1DConv2D9Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims:output:0;Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
О
-Federated_CNN_F7_H12/conv1d_32/Conv1D/SqueezeSqueeze.Federated_CNN_F7_H12/conv1d_32/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџА
5Federated_CNN_F7_H12/conv1d_32/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f7_h12_conv1d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0о
&Federated_CNN_F7_H12/conv1d_32/BiasAddBiasAdd6Federated_CNN_F7_H12/conv1d_32/Conv1D/Squeeze:output:0=Federated_CNN_F7_H12/conv1d_32/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ
#Federated_CNN_F7_H12/conv1d_32/ReluRelu/Federated_CNN_F7_H12/conv1d_32/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЮ
DFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f7_h12_batch_normalization_32_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
;Federated_CNN_F7_H12/batch_normalization_32/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ћ
9Federated_CNN_F7_H12/batch_normalization_32/batchnorm/addAddV2LFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp:value:0DFederated_CNN_F7_H12/batch_normalization_32/batchnorm/add/y:output:0*
T0*
_output_shapes
:Ј
;Federated_CNN_F7_H12/batch_normalization_32/batchnorm/RsqrtRsqrt=Federated_CNN_F7_H12/batch_normalization_32/batchnorm/add:z:0*
T0*
_output_shapes
:ж
HFederated_CNN_F7_H12/batch_normalization_32/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f7_h12_batch_normalization_32_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ј
9Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mulMul?Federated_CNN_F7_H12/batch_normalization_32/batchnorm/Rsqrt:y:0PFederated_CNN_F7_H12/batch_normalization_32/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul_1Mul1Federated_CNN_F7_H12/conv1d_32/Relu:activations:0=Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџв
FFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_32_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
;Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul_2MulNFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul:z:0*
T0*
_output_shapes
:в
FFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_32_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
9Federated_CNN_F7_H12/batch_normalization_32/batchnorm/subSubNFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul_2:z:0*
T0*
_output_shapes
:њ
;Federated_CNN_F7_H12/batch_normalization_32/batchnorm/add_1AddV2?Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul_1:z:0=Federated_CNN_F7_H12/batch_normalization_32/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ
4Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџј
0Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F7_H12/batch_normalization_32/batchnorm/add_1:z:0=Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџа
AFederated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f7_h12_conv1d_33_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : §
2Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
%Federated_CNN_F7_H12/conv1d_33/Conv1DConv2D9Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims:output:0;Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
О
-Federated_CNN_F7_H12/conv1d_33/Conv1D/SqueezeSqueeze.Federated_CNN_F7_H12/conv1d_33/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџА
5Federated_CNN_F7_H12/conv1d_33/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f7_h12_conv1d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0о
&Federated_CNN_F7_H12/conv1d_33/BiasAddBiasAdd6Federated_CNN_F7_H12/conv1d_33/Conv1D/Squeeze:output:0=Federated_CNN_F7_H12/conv1d_33/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ
#Federated_CNN_F7_H12/conv1d_33/ReluRelu/Federated_CNN_F7_H12/conv1d_33/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЮ
DFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f7_h12_batch_normalization_33_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
;Federated_CNN_F7_H12/batch_normalization_33/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ћ
9Federated_CNN_F7_H12/batch_normalization_33/batchnorm/addAddV2LFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp:value:0DFederated_CNN_F7_H12/batch_normalization_33/batchnorm/add/y:output:0*
T0*
_output_shapes
:Ј
;Federated_CNN_F7_H12/batch_normalization_33/batchnorm/RsqrtRsqrt=Federated_CNN_F7_H12/batch_normalization_33/batchnorm/add:z:0*
T0*
_output_shapes
:ж
HFederated_CNN_F7_H12/batch_normalization_33/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f7_h12_batch_normalization_33_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ј
9Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mulMul?Federated_CNN_F7_H12/batch_normalization_33/batchnorm/Rsqrt:y:0PFederated_CNN_F7_H12/batch_normalization_33/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul_1Mul1Federated_CNN_F7_H12/conv1d_33/Relu:activations:0=Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџв
FFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_33_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
;Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul_2MulNFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul:z:0*
T0*
_output_shapes
:в
FFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_33_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
9Federated_CNN_F7_H12/batch_normalization_33/batchnorm/subSubNFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul_2:z:0*
T0*
_output_shapes
:њ
;Federated_CNN_F7_H12/batch_normalization_33/batchnorm/add_1AddV2?Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul_1:z:0=Federated_CNN_F7_H12/batch_normalization_33/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ
4Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџј
0Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F7_H12/batch_normalization_33/batchnorm/add_1:z:0=Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџа
AFederated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f7_h12_conv1d_34_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : §
2Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
%Federated_CNN_F7_H12/conv1d_34/Conv1DConv2D9Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims:output:0;Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
О
-Federated_CNN_F7_H12/conv1d_34/Conv1D/SqueezeSqueeze.Federated_CNN_F7_H12/conv1d_34/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџА
5Federated_CNN_F7_H12/conv1d_34/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f7_h12_conv1d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0о
&Federated_CNN_F7_H12/conv1d_34/BiasAddBiasAdd6Federated_CNN_F7_H12/conv1d_34/Conv1D/Squeeze:output:0=Federated_CNN_F7_H12/conv1d_34/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ
#Federated_CNN_F7_H12/conv1d_34/ReluRelu/Federated_CNN_F7_H12/conv1d_34/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЮ
DFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f7_h12_batch_normalization_34_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
;Federated_CNN_F7_H12/batch_normalization_34/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ћ
9Federated_CNN_F7_H12/batch_normalization_34/batchnorm/addAddV2LFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp:value:0DFederated_CNN_F7_H12/batch_normalization_34/batchnorm/add/y:output:0*
T0*
_output_shapes
:Ј
;Federated_CNN_F7_H12/batch_normalization_34/batchnorm/RsqrtRsqrt=Federated_CNN_F7_H12/batch_normalization_34/batchnorm/add:z:0*
T0*
_output_shapes
:ж
HFederated_CNN_F7_H12/batch_normalization_34/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f7_h12_batch_normalization_34_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ј
9Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mulMul?Federated_CNN_F7_H12/batch_normalization_34/batchnorm/Rsqrt:y:0PFederated_CNN_F7_H12/batch_normalization_34/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul_1Mul1Federated_CNN_F7_H12/conv1d_34/Relu:activations:0=Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџв
FFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_34_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
;Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul_2MulNFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul:z:0*
T0*
_output_shapes
:в
FFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_34_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
9Federated_CNN_F7_H12/batch_normalization_34/batchnorm/subSubNFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul_2:z:0*
T0*
_output_shapes
:њ
;Federated_CNN_F7_H12/batch_normalization_34/batchnorm/add_1AddV2?Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul_1:z:0=Federated_CNN_F7_H12/batch_normalization_34/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ
4Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџј
0Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims
ExpandDims?Federated_CNN_F7_H12/batch_normalization_34/batchnorm/add_1:z:0=Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџа
AFederated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpJfederated_cnn_f7_h12_conv1d_35_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0x
6Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : §
2Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1
ExpandDimsIFederated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp:value:0?Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:
%Federated_CNN_F7_H12/conv1d_35/Conv1DConv2D9Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims:output:0;Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides
О
-Federated_CNN_F7_H12/conv1d_35/Conv1D/SqueezeSqueeze.Federated_CNN_F7_H12/conv1d_35/Conv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџА
5Federated_CNN_F7_H12/conv1d_35/BiasAdd/ReadVariableOpReadVariableOp>federated_cnn_f7_h12_conv1d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0о
&Federated_CNN_F7_H12/conv1d_35/BiasAddBiasAdd6Federated_CNN_F7_H12/conv1d_35/Conv1D/Squeeze:output:0=Federated_CNN_F7_H12/conv1d_35/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџ
#Federated_CNN_F7_H12/conv1d_35/ReluRelu/Federated_CNN_F7_H12/conv1d_35/BiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџЮ
DFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOpReadVariableOpMfederated_cnn_f7_h12_batch_normalization_35_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0
;Federated_CNN_F7_H12/batch_normalization_35/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ћ
9Federated_CNN_F7_H12/batch_normalization_35/batchnorm/addAddV2LFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp:value:0DFederated_CNN_F7_H12/batch_normalization_35/batchnorm/add/y:output:0*
T0*
_output_shapes
:Ј
;Federated_CNN_F7_H12/batch_normalization_35/batchnorm/RsqrtRsqrt=Federated_CNN_F7_H12/batch_normalization_35/batchnorm/add:z:0*
T0*
_output_shapes
:ж
HFederated_CNN_F7_H12/batch_normalization_35/batchnorm/mul/ReadVariableOpReadVariableOpQfederated_cnn_f7_h12_batch_normalization_35_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0ј
9Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mulMul?Federated_CNN_F7_H12/batch_normalization_35/batchnorm/Rsqrt:y:0PFederated_CNN_F7_H12/batch_normalization_35/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:ъ
;Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul_1Mul1Federated_CNN_F7_H12/conv1d_35/Relu:activations:0=Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul:z:0*
T0*+
_output_shapes
:џџџџџџџџџв
FFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_1ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_35_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0і
;Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul_2MulNFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_1:value:0=Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul:z:0*
T0*
_output_shapes
:в
FFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_2ReadVariableOpOfederated_cnn_f7_h12_batch_normalization_35_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0і
9Federated_CNN_F7_H12/batch_normalization_35/batchnorm/subSubNFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_2:value:0?Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul_2:z:0*
T0*
_output_shapes
:њ
;Federated_CNN_F7_H12/batch_normalization_35/batchnorm/add_1AddV2?Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul_1:z:0=Federated_CNN_F7_H12/batch_normalization_35/batchnorm/sub:z:0*
T0*+
_output_shapes
:џџџџџџџџџ
GFederated_CNN_F7_H12/global_average_pooling1d_16/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :
5Federated_CNN_F7_H12/global_average_pooling1d_16/MeanMean?Federated_CNN_F7_H12/batch_normalization_35/batchnorm/add_1:z:0PFederated_CNN_F7_H12/global_average_pooling1d_16/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:џџџџџџџџџА
3Federated_CNN_F7_H12/dense_74/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f7_h12_dense_74_matmul_readvariableop_resource*
_output_shapes

: *
dtype0н
$Federated_CNN_F7_H12/dense_74/MatMulMatMul>Federated_CNN_F7_H12/global_average_pooling1d_16/Mean:output:0;Federated_CNN_F7_H12/dense_74/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ Ў
4Federated_CNN_F7_H12/dense_74/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_dense_74_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0а
%Federated_CNN_F7_H12/dense_74/BiasAddBiasAdd.Federated_CNN_F7_H12/dense_74/MatMul:product:0<Federated_CNN_F7_H12/dense_74/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ 
"Federated_CNN_F7_H12/dense_74/ReluRelu.Federated_CNN_F7_H12/dense_74/BiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ 
(Federated_CNN_F7_H12/dropout_17/IdentityIdentity0Federated_CNN_F7_H12/dense_74/Relu:activations:0*
T0*'
_output_shapes
:џџџџџџџџџ А
3Federated_CNN_F7_H12/dense_75/MatMul/ReadVariableOpReadVariableOp<federated_cnn_f7_h12_dense_75_matmul_readvariableop_resource*
_output_shapes

: T*
dtype0а
$Federated_CNN_F7_H12/dense_75/MatMulMatMul1Federated_CNN_F7_H12/dropout_17/Identity:output:0;Federated_CNN_F7_H12/dense_75/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџTЎ
4Federated_CNN_F7_H12/dense_75/BiasAdd/ReadVariableOpReadVariableOp=federated_cnn_f7_h12_dense_75_biasadd_readvariableop_resource*
_output_shapes
:T*
dtype0а
%Federated_CNN_F7_H12/dense_75/BiasAddBiasAdd.Federated_CNN_F7_H12/dense_75/MatMul:product:0<Federated_CNN_F7_H12/dense_75/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџT
%Federated_CNN_F7_H12/reshape_25/ShapeShape.Federated_CNN_F7_H12/dense_75/BiasAdd:output:0*
T0*
_output_shapes
::эЯ}
3Federated_CNN_F7_H12/reshape_25/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Federated_CNN_F7_H12/reshape_25/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Federated_CNN_F7_H12/reshape_25/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ё
-Federated_CNN_F7_H12/reshape_25/strided_sliceStridedSlice.Federated_CNN_F7_H12/reshape_25/Shape:output:0<Federated_CNN_F7_H12/reshape_25/strided_slice/stack:output:0>Federated_CNN_F7_H12/reshape_25/strided_slice/stack_1:output:0>Federated_CNN_F7_H12/reshape_25/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/Federated_CNN_F7_H12/reshape_25/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :q
/Federated_CNN_F7_H12/reshape_25/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
-Federated_CNN_F7_H12/reshape_25/Reshape/shapePack6Federated_CNN_F7_H12/reshape_25/strided_slice:output:08Federated_CNN_F7_H12/reshape_25/Reshape/shape/1:output:08Federated_CNN_F7_H12/reshape_25/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:а
'Federated_CNN_F7_H12/reshape_25/ReshapeReshape.Federated_CNN_F7_H12/dense_75/BiasAdd:output:06Federated_CNN_F7_H12/reshape_25/Reshape/shape:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
IdentityIdentity0Federated_CNN_F7_H12/reshape_25/Reshape:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ 
NoOpNoOpE^Federated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOpG^Federated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_1G^Federated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_2I^Federated_CNN_F7_H12/batch_normalization_32/batchnorm/mul/ReadVariableOpE^Federated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOpG^Federated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_1G^Federated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_2I^Federated_CNN_F7_H12/batch_normalization_33/batchnorm/mul/ReadVariableOpE^Federated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOpG^Federated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_1G^Federated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_2I^Federated_CNN_F7_H12/batch_normalization_34/batchnorm/mul/ReadVariableOpE^Federated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOpG^Federated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_1G^Federated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_2I^Federated_CNN_F7_H12/batch_normalization_35/batchnorm/mul/ReadVariableOp6^Federated_CNN_F7_H12/conv1d_32/BiasAdd/ReadVariableOpB^Federated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F7_H12/conv1d_33/BiasAdd/ReadVariableOpB^Federated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F7_H12/conv1d_34/BiasAdd/ReadVariableOpB^Federated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp6^Federated_CNN_F7_H12/conv1d_35/BiasAdd/ReadVariableOpB^Federated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp5^Federated_CNN_F7_H12/dense_74/BiasAdd/ReadVariableOp4^Federated_CNN_F7_H12/dense_74/MatMul/ReadVariableOp5^Federated_CNN_F7_H12/dense_75/BiasAdd/ReadVariableOp4^Federated_CNN_F7_H12/dense_75/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2
FFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_1FFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_12
FFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_2FFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp_22
DFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOpDFederated_CNN_F7_H12/batch_normalization_32/batchnorm/ReadVariableOp2
HFederated_CNN_F7_H12/batch_normalization_32/batchnorm/mul/ReadVariableOpHFederated_CNN_F7_H12/batch_normalization_32/batchnorm/mul/ReadVariableOp2
FFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_1FFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_12
FFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_2FFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp_22
DFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOpDFederated_CNN_F7_H12/batch_normalization_33/batchnorm/ReadVariableOp2
HFederated_CNN_F7_H12/batch_normalization_33/batchnorm/mul/ReadVariableOpHFederated_CNN_F7_H12/batch_normalization_33/batchnorm/mul/ReadVariableOp2
FFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_1FFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_12
FFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_2FFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp_22
DFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOpDFederated_CNN_F7_H12/batch_normalization_34/batchnorm/ReadVariableOp2
HFederated_CNN_F7_H12/batch_normalization_34/batchnorm/mul/ReadVariableOpHFederated_CNN_F7_H12/batch_normalization_34/batchnorm/mul/ReadVariableOp2
FFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_1FFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_12
FFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_2FFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp_22
DFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOpDFederated_CNN_F7_H12/batch_normalization_35/batchnorm/ReadVariableOp2
HFederated_CNN_F7_H12/batch_normalization_35/batchnorm/mul/ReadVariableOpHFederated_CNN_F7_H12/batch_normalization_35/batchnorm/mul/ReadVariableOp2n
5Federated_CNN_F7_H12/conv1d_32/BiasAdd/ReadVariableOp5Federated_CNN_F7_H12/conv1d_32/BiasAdd/ReadVariableOp2
AFederated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F7_H12/conv1d_32/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F7_H12/conv1d_33/BiasAdd/ReadVariableOp5Federated_CNN_F7_H12/conv1d_33/BiasAdd/ReadVariableOp2
AFederated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F7_H12/conv1d_33/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F7_H12/conv1d_34/BiasAdd/ReadVariableOp5Federated_CNN_F7_H12/conv1d_34/BiasAdd/ReadVariableOp2
AFederated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F7_H12/conv1d_34/Conv1D/ExpandDims_1/ReadVariableOp2n
5Federated_CNN_F7_H12/conv1d_35/BiasAdd/ReadVariableOp5Federated_CNN_F7_H12/conv1d_35/BiasAdd/ReadVariableOp2
AFederated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOpAFederated_CNN_F7_H12/conv1d_35/Conv1D/ExpandDims_1/ReadVariableOp2l
4Federated_CNN_F7_H12/dense_74/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/dense_74/BiasAdd/ReadVariableOp2j
3Federated_CNN_F7_H12/dense_74/MatMul/ReadVariableOp3Federated_CNN_F7_H12/dense_74/MatMul/ReadVariableOp2l
4Federated_CNN_F7_H12/dense_75/BiasAdd/ReadVariableOp4Federated_CNN_F7_H12/dense_75/BiasAdd/ReadVariableOp2j
3Federated_CNN_F7_H12/dense_75/MatMul/ReadVariableOp3Federated_CNN_F7_H12/dense_75/MatMul/ReadVariableOp:R N
+
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput

Y
=__inference_global_average_pooling1d_16_layer_call_fn_7364153

inputs
identityЬ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:џџџџџџџџџџџџџџџџџџ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *a
f\RZ
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7362388i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:џџџџџџџџџџџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ:e a
=
_output_shapes+
):'џџџџџџџџџџџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
П
с
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362954	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: T

unknown_26:T
identityЂStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362895s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput
Щ

F__inference_conv1d_32_layer_call_and_return_conditional_losses_7362424

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Щ

F__inference_conv1d_33_layer_call_and_return_conditional_losses_7363858

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs


і
E__inference_dense_74_layer_call_and_return_conditional_losses_7364179

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
ѕ
e
,__inference_dropout_17_layer_call_fn_7364184

inputs
identityЂStatefulPartitionedCallТ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362562o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
Ї

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_7362562

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:џџџџџџџџџ Q
dropout/ShapeShapeinputs*
T0*
_output_shapes
::эЯ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:џџџџџџџџџ *
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЭЬL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:џџџџџџџџџ T
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*'
_output_shapes
:џџџџџџџџџ a
IdentityIdentitydropout/SelectV2:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs


і
E__inference_dense_74_layer_call_and_return_conditional_losses_7362544

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:џџџџџџџџџ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
р
г
8__inference_batch_normalization_33_layer_call_fn_7363884

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *\
fWRU
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7362190|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
к
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364206

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:џџџџџџџџџ [

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:џџџџџџџџџ "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:џџџџџџџџџ :O K
'
_output_shapes
:џџџџџџџџџ 
 
_user_specified_nameinputs
џ%
ь
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364023

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identityЂAssignMovingAvgЂAssignMovingAvg/ReadVariableOpЂAssignMovingAvg_1Ђ AssignMovingAvg_1/ReadVariableOpЂbatchnorm/ReadVariableOpЂbatchnorm/mul/ReadVariableOpo
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(h
moments/StopGradientStopGradientmoments/mean:output:0*
T0*"
_output_shapes
:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџs
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"       Ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*"
_output_shapes
:*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Ќ
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
з#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Д
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџъ
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12"
AssignMovingAvgAssignMovingAvg24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
Щ

F__inference_conv1d_34_layer_call_and_return_conditional_losses_7362486

inputsA
+conv1d_expanddims_1_readvariableop_resource:-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂ"Conv1D/ExpandDims_1/ReadVariableOp`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
§џџџџџџџџ
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:џџџџџџџџџ
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:*
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :  
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:Ќ
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:џџџџџџџџџ*
paddingSAME*
strides

Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:џџџџџџџџџ*
squeeze_dims

§џџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:џџџџџџџџџT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:џџџџџџџџџe
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:џџџџџџџџџ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs

В
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7363833

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identityЂbatchnorm/ReadVariableOpЂbatchnorm/ReadVariableOp_1Ђbatchnorm/ReadVariableOp_2Ђbatchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:p
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџo
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџК
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*;
_input_shapes*
(:џџџџџџџџџџџџџџџџџџ: : : : 28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_224
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs
О
a
E__inference_lambda_8_layer_call_and_return_conditional_losses_7362406

inputs
identityh
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"    §џџџ    j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ш
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*+
_output_shapes
:џџџџџџџџџ*

begin_mask*
end_maskb
IdentityIdentitystrided_slice:output:0*
T0*+
_output_shapes
:џџџџџџџџџ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:џџџџџџџџџ:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
Т
т
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363349

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: T

unknown_26:T
identityЂStatefulPartitionedCallЭ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*>
_read_only_resource_inputs 
	
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362895s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs
З
с
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362819	
input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:
	unknown_9:

unknown_10: 

unknown_11:

unknown_12:

unknown_13:

unknown_14:

unknown_15:

unknown_16: 

unknown_17:

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:

unknown_23: 

unknown_24: 

unknown_25: T

unknown_26:T
identityЂStatefulPartitionedCallФ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:џџџџџџџџџ*6
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362760s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:џџџџџџџџџ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:џџџџџџџџџ: : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
+
_output_shapes
:џџџџџџџџџ

_user_specified_nameInput"ѓ
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Б
serving_default
;
Input2
serving_default_Input:0џџџџџџџџџB

reshape_254
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:Э№
 
layer-0
layer-1
layer_with_weights-0
layer-2
layer_with_weights-1
layer-3
layer_with_weights-2
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer_with_weights-7

layer-9
layer-10
layer_with_weights-8
layer-11
layer-12
layer_with_weights-9
layer-13
layer-14
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
н
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias
 &_jit_compiled_convolution_op"
_tf_keras_layer
ъ
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses
-axis
	.gamma
/beta
0moving_mean
1moving_variance"
_tf_keras_layer
н
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias
 :_jit_compiled_convolution_op"
_tf_keras_layer
ъ
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses
Aaxis
	Bgamma
Cbeta
Dmoving_mean
Emoving_variance"
_tf_keras_layer
н
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses

Lkernel
Mbias
 N_jit_compiled_convolution_op"
_tf_keras_layer
ъ
O	variables
Ptrainable_variables
Qregularization_losses
R	keras_api
S__call__
*T&call_and_return_all_conditional_losses
Uaxis
	Vgamma
Wbeta
Xmoving_mean
Ymoving_variance"
_tf_keras_layer
н
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias
 b_jit_compiled_convolution_op"
_tf_keras_layer
ъ
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses
iaxis
	jgamma
kbeta
lmoving_mean
mmoving_variance"
_tf_keras_layer
Ѕ
n	variables
otrainable_variables
pregularization_losses
q	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
Л
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x__call__
*y&call_and_return_all_conditional_losses

zkernel
{bias"
_tf_keras_layer
П
|	variables
}trainable_variables
~regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
У
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer
Ћ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
ј
$0
%1
.2
/3
04
15
86
97
B8
C9
D10
E11
L12
M13
V14
W15
X16
Y17
`18
a19
j20
k21
l22
m23
z24
{25
26
27"
trackable_list_wrapper
И
$0
%1
.2
/3
84
95
B6
C7
L8
M9
V10
W11
`12
a13
j14
k15
z16
{17
18
19"
trackable_list_wrapper
 "
trackable_list_wrapper
Я
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362819
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362954
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363288
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363349Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ї
trace_0
trace_1
trace_2
trace_32
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362596
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362683
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363557
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363702Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1ztrace_2ztrace_3
ЫBШ
"__inference__wrapped_model_7362053Input"
В
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
 layers
Ёmetrics
 Ђlayer_regularization_losses
Ѓlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ы
Єtrace_0
Ѕtrace_12
*__inference_lambda_8_layer_call_fn_7363707
*__inference_lambda_8_layer_call_fn_7363712Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЄtrace_0zЅtrace_1

Іtrace_0
Їtrace_12Ц
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363720
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363728Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zІtrace_0zЇtrace_1
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Јnon_trainable_variables
Љlayers
Њmetrics
 Ћlayer_regularization_losses
Ќlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
ч
­trace_02Ш
+__inference_conv1d_32_layer_call_fn_7363737
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z­trace_0

Ўtrace_02у
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7363753
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЎtrace_0
&:$2conv1d_32/kernel
:2conv1d_32/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Џnon_trainable_variables
Аlayers
Бmetrics
 Вlayer_regularization_losses
Гlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ч
Дtrace_0
Еtrace_12Ќ
8__inference_batch_normalization_32_layer_call_fn_7363766
8__inference_batch_normalization_32_layer_call_fn_7363779Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zДtrace_0zЕtrace_1

Жtrace_0
Зtrace_12т
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7363813
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7363833Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЖtrace_0zЗtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_32/gamma
):'2batch_normalization_32/beta
2:0 (2"batch_normalization_32/moving_mean
6:4 (2&batch_normalization_32/moving_variance
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
ч
Нtrace_02Ш
+__inference_conv1d_33_layer_call_fn_7363842
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zНtrace_0

Оtrace_02у
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7363858
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zОtrace_0
&:$2conv1d_33/kernel
:2conv1d_33/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
B0
C1
D2
E3"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
ч
Фtrace_0
Хtrace_12Ќ
8__inference_batch_normalization_33_layer_call_fn_7363871
8__inference_batch_normalization_33_layer_call_fn_7363884Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zФtrace_0zХtrace_1

Цtrace_0
Чtrace_12т
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363918
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363938Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЦtrace_0zЧtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_33/gamma
):'2batch_normalization_33/beta
2:0 (2"batch_normalization_33/moving_mean
6:4 (2&batch_normalization_33/moving_variance
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
ч
Эtrace_02Ш
+__inference_conv1d_34_layer_call_fn_7363947
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЭtrace_0

Юtrace_02у
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7363963
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zЮtrace_0
&:$2conv1d_34/kernel
:2conv1d_34/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
V0
W1
X2
Y3"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
Яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
O	variables
Ptrainable_variables
Qregularization_losses
S__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
ч
дtrace_0
еtrace_12Ќ
8__inference_batch_normalization_34_layer_call_fn_7363976
8__inference_batch_normalization_34_layer_call_fn_7363989Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zдtrace_0zеtrace_1

жtrace_0
зtrace_12т
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364023
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364043Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zжtrace_0zзtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_34/gamma
):'2batch_normalization_34/beta
2:0 (2"batch_normalization_34/moving_mean
6:4 (2&batch_normalization_34/moving_variance
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
ч
нtrace_02Ш
+__inference_conv1d_35_layer_call_fn_7364052
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zнtrace_0

оtrace_02у
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7364068
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zоtrace_0
&:$2conv1d_35/kernel
:2conv1d_35/bias
Њ2ЇЄ
В
FullArgSpec
args
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
<
j0
k1
l2
m3"
trackable_list_wrapper
.
j0
k1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
пnon_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ч
фtrace_0
хtrace_12Ќ
8__inference_batch_normalization_35_layer_call_fn_7364081
8__inference_batch_normalization_35_layer_call_fn_7364094Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zфtrace_0zхtrace_1

цtrace_0
чtrace_12т
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364128
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364148Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zцtrace_0zчtrace_1
 "
trackable_list_wrapper
*:(2batch_normalization_35/gamma
):'2batch_normalization_35/beta
2:0 (2"batch_normalization_35/moving_mean
6:4 (2&batch_normalization_35/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
В
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
n	variables
otrainable_variables
pregularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object

эtrace_02ч
=__inference_global_average_pooling1d_16_layer_call_fn_7364153Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zэtrace_0
Ё
юtrace_02
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7364159Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zюtrace_0
.
z0
{1"
trackable_list_wrapper
.
z0
{1"
trackable_list_wrapper
 "
trackable_list_wrapper
В
яnon_trainable_variables
№layers
ёmetrics
 ђlayer_regularization_losses
ѓlayer_metrics
t	variables
utrainable_variables
vregularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
ц
єtrace_02Ч
*__inference_dense_74_layer_call_fn_7364168
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zєtrace_0

ѕtrace_02т
E__inference_dense_74_layer_call_and_return_conditional_losses_7364179
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zѕtrace_0
!: 2dense_74/kernel
: 2dense_74/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Е
іnon_trainable_variables
їlayers
јmetrics
 љlayer_regularization_losses
њlayer_metrics
|	variables
}trainable_variables
~regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
У
ћtrace_0
ќtrace_12
,__inference_dropout_17_layer_call_fn_7364184
,__inference_dropout_17_layer_call_fn_7364189Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zћtrace_0zќtrace_1
љ
§trace_0
ўtrace_12О
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364201
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364206Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z§trace_0zўtrace_1
"
_generic_user_object
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
И
џnon_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ц
trace_02Ч
*__inference_dense_75_layer_call_fn_7364215
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02т
E__inference_dense_75_layer_call_and_return_conditional_losses_7364225
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
!: T2dense_75/kernel
:T2dense_75/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
И
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ш
trace_02Щ
,__inference_reshape_25_layer_call_fn_7364230
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0

trace_02ф
G__inference_reshape_25_layer_call_and_return_conditional_losses_7364243
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0
X
00
11
D2
E3
X4
Y5
l6
m7"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ќBљ
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362819Input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ќBљ
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362954Input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363288inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
§Bњ
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363349inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362596Input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362683Input"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363557inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363702inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ЪBЧ
%__inference_signature_wrapper_7363227Input"
В
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
ёBю
*__inference_lambda_8_layer_call_fn_7363707inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
*__inference_lambda_8_layer_call_fn_7363712inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363720inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363728inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs
jmask

jtraining
varargs
 
varkw
 
defaultsЂ

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
еBв
+__inference_conv1d_32_layer_call_fn_7363737inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7363753inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBќ
8__inference_batch_normalization_32_layer_call_fn_7363766inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
8__inference_batch_normalization_32_layer_call_fn_7363779inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7363813inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_7363833inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
еBв
+__inference_conv1d_33_layer_call_fn_7363842inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7363858inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBќ
8__inference_batch_normalization_33_layer_call_fn_7363871inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
8__inference_batch_normalization_33_layer_call_fn_7363884inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363918inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363938inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
еBв
+__inference_conv1d_34_layer_call_fn_7363947inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7363963inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBќ
8__inference_batch_normalization_34_layer_call_fn_7363976inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
8__inference_batch_normalization_34_layer_call_fn_7363989inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364023inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364043inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
еBв
+__inference_conv1d_35_layer_call_fn_7364052inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
№Bэ
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7364068inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
.
l0
m1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
џBќ
8__inference_batch_normalization_35_layer_call_fn_7364081inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
џBќ
8__inference_batch_normalization_35_layer_call_fn_7364094inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364128inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364148inputs"Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
єBё
=__inference_global_average_pooling1d_16_layer_call_fn_7364153inputs"Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7364159inputs"Ѕ
В
FullArgSpec
args
jinputs
jmask
varargs
 
varkw
 
defaultsЂ

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
дBб
*__inference_dense_74_layer_call_fn_7364168inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
E__inference_dense_74_layer_call_and_return_conditional_losses_7364179inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
чBф
,__inference_dropout_17_layer_call_fn_7364184inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
чBф
,__inference_dropout_17_layer_call_fn_7364189inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bџ
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364201inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
Bџ
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364206inputs"Љ
ЂВ
FullArgSpec!
args
jinputs

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
дBб
*__inference_dense_75_layer_call_fn_7364215inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
яBь
E__inference_dense_75_layer_call_and_return_conditional_losses_7364225inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
жBг
,__inference_reshape_25_layer_call_fn_7364230inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ёBю
G__inference_reshape_25_layer_call_and_return_conditional_losses_7364243inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ф
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362596$%01./89DEBCLMXYVW`almjkz{:Ђ7
0Ђ-
# 
Inputџџџџџџџџџ
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 ф
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7362683$%1.0/89EBDCLMYVXW`amjlkz{:Ђ7
0Ђ-
# 
Inputџџџџџџџџџ
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 х
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363557$%01./89DEBCLMXYVW`almjkz{;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 х
Q__inference_Federated_CNN_F7_H12_layer_call_and_return_conditional_losses_7363702$%1.0/89EBDCLMYVXW`amjlkz{;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 О
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362819$%01./89DEBCLMXYVW`almjkz{:Ђ7
0Ђ-
# 
Inputџџџџџџџџџ
p

 
Њ "%"
unknownџџџџџџџџџО
6__inference_Federated_CNN_F7_H12_layer_call_fn_7362954$%1.0/89EBDCLMYVXW`amjlkz{:Ђ7
0Ђ-
# 
Inputџџџџџџџџџ
p 

 
Њ "%"
unknownџџџџџџџџџП
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363288$%01./89DEBCLMXYVW`almjkz{;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p

 
Њ "%"
unknownџџџџџџџџџП
6__inference_Federated_CNN_F7_H12_layer_call_fn_7363349$%1.0/89EBDCLMYVXW`amjlkz{;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ
p 

 
Њ "%"
unknownџџџџџџџџџИ
"__inference__wrapped_model_7362053$%1.0/89EBDCLMYVXW`amjlkz{2Ђ/
(Ђ%
# 
Inputџџџџџџџџџ
Њ ";Њ8
6

reshape_25(%

reshape_25џџџџџџџџџп
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_736381301./DЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 п
S__inference_batch_normalization_32_layer_call_and_return_conditional_losses_73638331.0/DЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 И
8__inference_batch_normalization_32_layer_call_fn_7363766|01./DЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџИ
8__inference_batch_normalization_32_layer_call_fn_7363779|1.0/DЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџп
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363918DEBCDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 п
S__inference_batch_normalization_33_layer_call_and_return_conditional_losses_7363938EBDCDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 И
8__inference_batch_normalization_33_layer_call_fn_7363871|DEBCDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџИ
8__inference_batch_normalization_33_layer_call_fn_7363884|EBDCDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџп
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364023XYVWDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 п
S__inference_batch_normalization_34_layer_call_and_return_conditional_losses_7364043YVXWDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 И
8__inference_batch_normalization_34_layer_call_fn_7363976|XYVWDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџИ
8__inference_batch_normalization_34_layer_call_fn_7363989|YVXWDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџп
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364128lmjkDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 п
S__inference_batch_normalization_35_layer_call_and_return_conditional_losses_7364148mjlkDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ "9Ђ6
/,
tensor_0џџџџџџџџџџџџџџџџџџ
 И
8__inference_batch_normalization_35_layer_call_fn_7364081|lmjkDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџИ
8__inference_batch_normalization_35_layer_call_fn_7364094|mjlkDЂA
:Ђ7
-*
inputsџџџџџџџџџџџџџџџџџџ
p 

 
Њ ".+
unknownџџџџџџџџџџџџџџџџџџЕ
F__inference_conv1d_32_layer_call_and_return_conditional_losses_7363753k$%3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
+__inference_conv1d_32_layer_call_fn_7363737`$%3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџЕ
F__inference_conv1d_33_layer_call_and_return_conditional_losses_7363858k893Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
+__inference_conv1d_33_layer_call_fn_7363842`893Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџЕ
F__inference_conv1d_34_layer_call_and_return_conditional_losses_7363963kLM3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
+__inference_conv1d_34_layer_call_fn_7363947`LM3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџЕ
F__inference_conv1d_35_layer_call_and_return_conditional_losses_7364068k`a3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
+__inference_conv1d_35_layer_call_fn_7364052``a3Ђ0
)Ђ&
$!
inputsџџџџџџџџџ
Њ "%"
unknownџџџџџџџџџЌ
E__inference_dense_74_layer_call_and_return_conditional_losses_7364179cz{/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ ",Ђ)
"
tensor_0џџџџџџџџџ 
 
*__inference_dense_74_layer_call_fn_7364168Xz{/Ђ,
%Ђ"
 
inputsџџџџџџџџџ
Њ "!
unknownџџџџџџџџџ Ў
E__inference_dense_75_layer_call_and_return_conditional_losses_7364225e/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ ",Ђ)
"
tensor_0џџџџџџџџџT
 
*__inference_dense_75_layer_call_fn_7364215Z/Ђ,
%Ђ"
 
inputsџџџџџџџџџ 
Њ "!
unknownџџџџџџџџџTЎ
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364201c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p
Њ ",Ђ)
"
tensor_0џџџџџџџџџ 
 Ў
G__inference_dropout_17_layer_call_and_return_conditional_losses_7364206c3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ 
 
,__inference_dropout_17_layer_call_fn_7364184X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p
Њ "!
unknownџџџџџџџџџ 
,__inference_dropout_17_layer_call_fn_7364189X3Ђ0
)Ђ&
 
inputsџџџџџџџџџ 
p 
Њ "!
unknownџџџџџџџџџ п
X__inference_global_average_pooling1d_16_layer_call_and_return_conditional_losses_7364159IЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
Њ "5Ђ2
+(
tensor_0џџџџџџџџџџџџџџџџџџ
 И
=__inference_global_average_pooling1d_16_layer_call_fn_7364153wIЂF
?Ђ<
63
inputs'џџџџџџџџџџџџџџџџџџџџџџџџџџџ

 
Њ "*'
unknownџџџџџџџџџџџџџџџџџџИ
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363720o;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

 
p
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 И
E__inference_lambda_8_layer_call_and_return_conditional_losses_7363728o;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

 
p 
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
*__inference_lambda_8_layer_call_fn_7363707d;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

 
p
Њ "%"
unknownџџџџџџџџџ
*__inference_lambda_8_layer_call_fn_7363712d;Ђ8
1Ђ.
$!
inputsџџџџџџџџџ

 
p 
Њ "%"
unknownџџџџџџџџџЎ
G__inference_reshape_25_layer_call_and_return_conditional_losses_7364243c/Ђ,
%Ђ"
 
inputsџџџџџџџџџT
Њ "0Ђ-
&#
tensor_0џџџџџџџџџ
 
,__inference_reshape_25_layer_call_fn_7364230X/Ђ,
%Ђ"
 
inputsџџџџџџџџџT
Њ "%"
unknownџџџџџџџџџФ
%__inference_signature_wrapper_7363227$%1.0/89EBDCLMYVXW`amjlkz{;Ђ8
Ђ 
1Њ.
,
Input# 
inputџџџџџџџџџ";Њ8
6

reshape_25(%

reshape_25џџџџџџџџџ