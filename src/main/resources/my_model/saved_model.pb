”ѕ$
’©
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
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
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
Ѕ
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
executor_typestring И®
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
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.22v2.9.1-132-g18960c44ad38д÷
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0
З
Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_9/kernel/v
А
)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes
:	А*
dtype0

Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_8/bias/v
x
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes	
:А*
dtype0
И
Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_8/kernel/v
Б
)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v* 
_output_shapes
:
АА*
dtype0
Г
Adam/conv2d_39/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_39/bias/v
|
)Adam/conv2d_39/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/bias/v*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_39/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_39/kernel/v
Н
+Adam/conv2d_39/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/kernel/v*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_38/bias/v
|
)Adam/conv2d_38/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/v*
_output_shapes	
:А*
dtype0
У
Adam/conv2d_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_38/kernel/v
М
+Adam/conv2d_38/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/v*'
_output_shapes
:@А*
dtype0
В
Adam/conv2d_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_37/bias/v
{
)Adam/conv2d_37/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/v*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_37/kernel/v
Л
+Adam/conv2d_37/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/v*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_36/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_36/bias/v
{
)Adam/conv2d_36/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/v*
_output_shapes
: *
dtype0
Т
Adam/conv2d_36/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_36/kernel/v
Л
+Adam/conv2d_36/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/v*&
_output_shapes
: *
dtype0
В
Adam/conv2d_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_35/bias/v
{
)Adam/conv2d_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_35/kernel/v
Л
+Adam/conv2d_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/kernel/v*&
_output_shapes
:*
dtype0
В
Adam/conv2d_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_34/bias/v
{
)Adam/conv2d_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_34/kernel/v
Л
+Adam/conv2d_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/kernel/v*&
_output_shapes
:*
dtype0
В
Adam/conv2d_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_33/bias/v
{
)Adam/conv2d_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_33/kernel/v
Л
+Adam/conv2d_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/v*&
_output_shapes
:*
dtype0
В
Adam/conv2d_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_32/bias/v
{
)Adam/conv2d_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/v*
_output_shapes
:*
dtype0
Т
Adam/conv2d_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_32/kernel/v
Л
+Adam/conv2d_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/v*&
_output_shapes
:*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0
З
Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*&
shared_nameAdam/dense_9/kernel/m
А
)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes
:	А*
dtype0

Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*$
shared_nameAdam/dense_8/bias/m
x
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes	
:А*
dtype0
И
Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*&
shared_nameAdam/dense_8/kernel/m
Б
)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m* 
_output_shapes
:
АА*
dtype0
Г
Adam/conv2d_39/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_39/bias/m
|
)Adam/conv2d_39/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/bias/m*
_output_shapes	
:А*
dtype0
Ф
Adam/conv2d_39/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*(
shared_nameAdam/conv2d_39/kernel/m
Н
+Adam/conv2d_39/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_39/kernel/m*(
_output_shapes
:АА*
dtype0
Г
Adam/conv2d_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*&
shared_nameAdam/conv2d_38/bias/m
|
)Adam/conv2d_38/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/bias/m*
_output_shapes	
:А*
dtype0
У
Adam/conv2d_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*(
shared_nameAdam/conv2d_38/kernel/m
М
+Adam/conv2d_38/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_38/kernel/m*'
_output_shapes
:@А*
dtype0
В
Adam/conv2d_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/conv2d_37/bias/m
{
)Adam/conv2d_37/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/bias/m*
_output_shapes
:@*
dtype0
Т
Adam/conv2d_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*(
shared_nameAdam/conv2d_37/kernel/m
Л
+Adam/conv2d_37/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_37/kernel/m*&
_output_shapes
: @*
dtype0
В
Adam/conv2d_36/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *&
shared_nameAdam/conv2d_36/bias/m
{
)Adam/conv2d_36/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/bias/m*
_output_shapes
: *
dtype0
Т
Adam/conv2d_36/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/conv2d_36/kernel/m
Л
+Adam/conv2d_36/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_36/kernel/m*&
_output_shapes
: *
dtype0
В
Adam/conv2d_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_35/bias/m
{
)Adam/conv2d_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_35/kernel/m
Л
+Adam/conv2d_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_35/kernel/m*&
_output_shapes
:*
dtype0
В
Adam/conv2d_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_34/bias/m
{
)Adam/conv2d_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_34/kernel/m
Л
+Adam/conv2d_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_34/kernel/m*&
_output_shapes
:*
dtype0
В
Adam/conv2d_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_33/bias/m
{
)Adam/conv2d_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_33/kernel/m
Л
+Adam/conv2d_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_33/kernel/m*&
_output_shapes
:*
dtype0
В
Adam/conv2d_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/conv2d_32/bias/m
{
)Adam/conv2d_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/bias/m*
_output_shapes
:*
dtype0
Т
Adam/conv2d_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/conv2d_32/kernel/m
Л
+Adam/conv2d_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_32/kernel/m*&
_output_shapes
:*
dtype0
h
StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar
a
StateVar/Read/ReadVariableOpReadVariableOpStateVar*
_output_shapes
:*
dtype0	
l

StateVar_1VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_1
e
StateVar_1/Read/ReadVariableOpReadVariableOp
StateVar_1*
_output_shapes
:*
dtype0	
l

StateVar_2VarHandleOp*
_output_shapes
: *
dtype0	*
shape:*
shared_name
StateVar_2
e
StateVar_2/Read/ReadVariableOpReadVariableOp
StateVar_2*
_output_shapes
:*
dtype0	
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
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
_output_shapes
:*
dtype0
y
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*
shared_namedense_9/kernel
r
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes
:	А*
dtype0
q
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_8/bias
j
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes	
:А*
dtype0
z
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*
shared_namedense_8/kernel
s
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel* 
_output_shapes
:
АА*
dtype0
u
conv2d_39/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_39/bias
n
"conv2d_39/bias/Read/ReadVariableOpReadVariableOpconv2d_39/bias*
_output_shapes	
:А*
dtype0
Ж
conv2d_39/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*!
shared_nameconv2d_39/kernel

$conv2d_39/kernel/Read/ReadVariableOpReadVariableOpconv2d_39/kernel*(
_output_shapes
:АА*
dtype0
u
conv2d_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_nameconv2d_38/bias
n
"conv2d_38/bias/Read/ReadVariableOpReadVariableOpconv2d_38/bias*
_output_shapes	
:А*
dtype0
Е
conv2d_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@А*!
shared_nameconv2d_38/kernel
~
$conv2d_38/kernel/Read/ReadVariableOpReadVariableOpconv2d_38/kernel*'
_output_shapes
:@А*
dtype0
t
conv2d_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv2d_37/bias
m
"conv2d_37/bias/Read/ReadVariableOpReadVariableOpconv2d_37/bias*
_output_shapes
:@*
dtype0
Д
conv2d_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*!
shared_nameconv2d_37/kernel
}
$conv2d_37/kernel/Read/ReadVariableOpReadVariableOpconv2d_37/kernel*&
_output_shapes
: @*
dtype0
t
conv2d_36/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_36/bias
m
"conv2d_36/bias/Read/ReadVariableOpReadVariableOpconv2d_36/bias*
_output_shapes
: *
dtype0
Д
conv2d_36/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameconv2d_36/kernel
}
$conv2d_36/kernel/Read/ReadVariableOpReadVariableOpconv2d_36/kernel*&
_output_shapes
: *
dtype0
t
conv2d_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_35/bias
m
"conv2d_35/bias/Read/ReadVariableOpReadVariableOpconv2d_35/bias*
_output_shapes
:*
dtype0
Д
conv2d_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_35/kernel
}
$conv2d_35/kernel/Read/ReadVariableOpReadVariableOpconv2d_35/kernel*&
_output_shapes
:*
dtype0
t
conv2d_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_34/bias
m
"conv2d_34/bias/Read/ReadVariableOpReadVariableOpconv2d_34/bias*
_output_shapes
:*
dtype0
Д
conv2d_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_34/kernel
}
$conv2d_34/kernel/Read/ReadVariableOpReadVariableOpconv2d_34/kernel*&
_output_shapes
:*
dtype0
t
conv2d_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_33/bias
m
"conv2d_33/bias/Read/ReadVariableOpReadVariableOpconv2d_33/bias*
_output_shapes
:*
dtype0
Д
conv2d_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_33/kernel
}
$conv2d_33/kernel/Read/ReadVariableOpReadVariableOpconv2d_33/kernel*&
_output_shapes
:*
dtype0
t
conv2d_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_32/bias
m
"conv2d_32/bias/Read/ReadVariableOpReadVariableOpconv2d_32/bias*
_output_shapes
:*
dtype0
Д
conv2d_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameconv2d_32/kernel
}
$conv2d_32/kernel/Read/ReadVariableOpReadVariableOpconv2d_32/kernel*&
_output_shapes
:*
dtype0

NoOpNoOp
“»
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*М»
valueБ»Bэ« Bх«
И
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer-21
layer_with_weights-9
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures*
Ј
!layer-0
"layer-1
#layer-2
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*
О
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
»
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op*
О
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses* 
»
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op*
О
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses* 
»
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
 V_jit_compiled_convolution_op*
О
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
»
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias
 e_jit_compiled_convolution_op*
О
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses* 
»
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op*
О
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses* 
ћ
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses
Бkernel
	Вbias
!Г_jit_compiled_convolution_op*
Ф
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses* 
—
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias
!Т_jit_compiled_convolution_op*
Ф
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses* 
—
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses
Яkernel
	†bias
!°_jit_compiled_convolution_op*
Ф
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses* 
ђ
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses
Ѓ_random_generator* 
Ф
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses* 
Ѓ
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses
їkernel
	Љbias*
ђ
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√_random_generator* 
Ѓ
ƒ	variables
≈trainable_variables
∆regularization_losses
«	keras_api
»__call__
+…&call_and_return_all_conditional_losses
 kernel
	Ћbias*
§
60
71
E2
F3
T4
U5
c6
d7
r8
s9
Б10
В11
Р12
С13
Я14
†15
ї16
Љ17
 18
Ћ19*
§
60
71
E2
F3
T4
U5
c6
d7
r8
s9
Б10
В11
Р12
С13
Я14
†15
ї16
Љ17
 18
Ћ19*
* 
µ
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
—trace_0
“trace_1
”trace_2
‘trace_3* 
:
’trace_0
÷trace_1
„trace_2
Ўtrace_3* 
* 
н
	ўiter
Џbeta_1
џbeta_2

№decay
Ёlearning_rate6mЋ7mћEmЌFmќTmѕUm–cm—dm“rm”sm‘	Бm’	Вm÷	Рm„	СmЎ	Яmў	†mЏ	їmџ	Љm№	 mЁ	Ћmё6vя7vаEvбFvвTvгUvдcvеdvжrvзsvи	Бvй	Вvк	Рvл	Сvм	Яvн	†vо	їvп	Љvр	 vс	Ћvт*

ёserving_default* 
Ѓ
я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses
е_random_generator*
Ѓ
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator*
Ѓ
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
у_random_generator*
* 
* 
* 
Ш
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
:
щtrace_0
ъtrace_1
ыtrace_2
ьtrace_3* 
:
эtrace_0
юtrace_1
€trace_2
Аtrace_3* 
* 
* 
* 
Ц
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 

60
71*

60
71*
* 
Ш
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
`Z
VARIABLE_VALUEconv2d_32/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_32/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses* 

Фtrace_0* 

Хtrace_0* 

E0
F1*

E0
F1*
* 
Ш
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*

Ыtrace_0* 

Ьtrace_0* 
`Z
VARIABLE_VALUEconv2d_33/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_33/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses* 

Ґtrace_0* 

£trace_0* 

T0
U1*

T0
U1*
* 
Ш
§non_trainable_variables
•layers
¶metrics
 Іlayer_regularization_losses
®layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

©trace_0* 

™trace_0* 
`Z
VARIABLE_VALUEconv2d_34/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_34/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 

∞trace_0* 

±trace_0* 

c0
d1*

c0
d1*
* 
Ш
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

Јtrace_0* 

Єtrace_0* 
`Z
VARIABLE_VALUEconv2d_35/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_35/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
єnon_trainable_variables
Їlayers
їmetrics
 Љlayer_regularization_losses
љlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 

Њtrace_0* 

њtrace_0* 

r0
s1*

r0
s1*
* 
Ш
јnon_trainable_variables
Ѕlayers
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses*

≈trace_0* 

∆trace_0* 
`Z
VARIABLE_VALUEconv2d_36/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_36/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
«non_trainable_variables
»layers
…metrics
  layer_regularization_losses
Ћlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses* 

ћtrace_0* 

Ќtrace_0* 

Б0
В1*

Б0
В1*
* 
Ъ
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses*

”trace_0* 

‘trace_0* 
`Z
VARIABLE_VALUEconv2d_37/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_37/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 

Џtrace_0* 

џtrace_0* 

Р0
С1*

Р0
С1*
* 
Ю
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses*

бtrace_0* 

вtrace_0* 
`Z
VARIABLE_VALUEconv2d_38/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_38/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 

иtrace_0* 

йtrace_0* 

Я0
†1*

Я0
†1*
* 
Ю
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses*

пtrace_0* 

рtrace_0* 
`Z
VARIABLE_VALUEconv2d_39/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_39/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ь
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses* 

цtrace_0* 

чtrace_0* 
* 
* 
* 
Ь
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses* 

эtrace_0
юtrace_1* 

€trace_0
Аtrace_1* 
* 
* 
* 
* 
Ь
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses* 

Жtrace_0* 

Зtrace_0* 

ї0
Љ1*

ї0
Љ1*
* 
Ю
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses*

Нtrace_0* 

Оtrace_0* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
Ь
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses* 

Фtrace_0
Хtrace_1* 

Цtrace_0
Чtrace_1* 
* 

 0
Ћ1*

 0
Ћ1*
* 
Ю
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
ƒ	variables
≈trainable_variables
∆regularization_losses
»__call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses*

Эtrace_0* 

Юtrace_0* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
≤
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
14
15
16
17
18
19
20
21
22*

Я0
†1*
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
* 
* 
* 
Ь
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses* 

¶trace_0
Іtrace_1* 

®trace_0
©trace_1* 

™
_generator*
* 
* 
* 
Ь
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses* 

∞trace_0
±trace_1* 

≤trace_0
≥trace_1* 

і
_generator*
* 
* 
* 
Ь
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses* 

Їtrace_0
їtrace_1* 

Љtrace_0
љtrace_1* 

Њ
_generator*
* 

!0
"1
#2*
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
<
њ	variables
ј	keras_api

Ѕtotal

¬count*
M
√	variables
ƒ	keras_api

≈total

∆count
«
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 

»
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

…
_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 

 
_state_var*

Ѕ0
¬1*

њ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

≈0
∆1*

√	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
vp
VARIABLE_VALUE
StateVar_2Rlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE
StateVar_1Rlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUEStateVarRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_32/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_32/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_33/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_33/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_34/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_34/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_35/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_35/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_36/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_37/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_38/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_39/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_39/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_32/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_32/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_33/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_33/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_34/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_34/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_35/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_35/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_36/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_36/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_37/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_37/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_38/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_38/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_39/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_39/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Б{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Щ
"serving_default_sequential_8_inputPlaceholder*1
_output_shapes
:€€€€€€€€€АА*
dtype0*&
shape:€€€€€€€€€АА
≥
StatefulPartitionedCallStatefulPartitionedCall"serving_default_sequential_8_inputconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasconv2d_34/kernelconv2d_34/biasconv2d_35/kernelconv2d_35/biasconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *,
f'R%
#__inference_signature_wrapper_48901
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
И
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_32/kernel/Read/ReadVariableOp"conv2d_32/bias/Read/ReadVariableOp$conv2d_33/kernel/Read/ReadVariableOp"conv2d_33/bias/Read/ReadVariableOp$conv2d_34/kernel/Read/ReadVariableOp"conv2d_34/bias/Read/ReadVariableOp$conv2d_35/kernel/Read/ReadVariableOp"conv2d_35/bias/Read/ReadVariableOp$conv2d_36/kernel/Read/ReadVariableOp"conv2d_36/bias/Read/ReadVariableOp$conv2d_37/kernel/Read/ReadVariableOp"conv2d_37/bias/Read/ReadVariableOp$conv2d_38/kernel/Read/ReadVariableOp"conv2d_38/bias/Read/ReadVariableOp$conv2d_39/kernel/Read/ReadVariableOp"conv2d_39/bias/Read/ReadVariableOp"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpStateVar_2/Read/ReadVariableOpStateVar_1/Read/ReadVariableOpStateVar/Read/ReadVariableOp+Adam/conv2d_32/kernel/m/Read/ReadVariableOp)Adam/conv2d_32/bias/m/Read/ReadVariableOp+Adam/conv2d_33/kernel/m/Read/ReadVariableOp)Adam/conv2d_33/bias/m/Read/ReadVariableOp+Adam/conv2d_34/kernel/m/Read/ReadVariableOp)Adam/conv2d_34/bias/m/Read/ReadVariableOp+Adam/conv2d_35/kernel/m/Read/ReadVariableOp)Adam/conv2d_35/bias/m/Read/ReadVariableOp+Adam/conv2d_36/kernel/m/Read/ReadVariableOp)Adam/conv2d_36/bias/m/Read/ReadVariableOp+Adam/conv2d_37/kernel/m/Read/ReadVariableOp)Adam/conv2d_37/bias/m/Read/ReadVariableOp+Adam/conv2d_38/kernel/m/Read/ReadVariableOp)Adam/conv2d_38/bias/m/Read/ReadVariableOp+Adam/conv2d_39/kernel/m/Read/ReadVariableOp)Adam/conv2d_39/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp+Adam/conv2d_32/kernel/v/Read/ReadVariableOp)Adam/conv2d_32/bias/v/Read/ReadVariableOp+Adam/conv2d_33/kernel/v/Read/ReadVariableOp)Adam/conv2d_33/bias/v/Read/ReadVariableOp+Adam/conv2d_34/kernel/v/Read/ReadVariableOp)Adam/conv2d_34/bias/v/Read/ReadVariableOp+Adam/conv2d_35/kernel/v/Read/ReadVariableOp)Adam/conv2d_35/bias/v/Read/ReadVariableOp+Adam/conv2d_36/kernel/v/Read/ReadVariableOp)Adam/conv2d_36/bias/v/Read/ReadVariableOp+Adam/conv2d_37/kernel/v/Read/ReadVariableOp)Adam/conv2d_37/bias/v/Read/ReadVariableOp+Adam/conv2d_38/kernel/v/Read/ReadVariableOp)Adam/conv2d_38/bias/v/Read/ReadVariableOp+Adam/conv2d_39/kernel/v/Read/ReadVariableOp)Adam/conv2d_39/bias/v/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOpConst*U
TinN
L2J				*
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
GPU2*0J 8В *'
f"R 
__inference__traced_save_50835
г
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_32/kernelconv2d_32/biasconv2d_33/kernelconv2d_33/biasconv2d_34/kernelconv2d_34/biasconv2d_35/kernelconv2d_35/biasconv2d_36/kernelconv2d_36/biasconv2d_37/kernelconv2d_37/biasconv2d_38/kernelconv2d_38/biasconv2d_39/kernelconv2d_39/biasdense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotal_1count_1totalcount
StateVar_2
StateVar_1StateVarAdam/conv2d_32/kernel/mAdam/conv2d_32/bias/mAdam/conv2d_33/kernel/mAdam/conv2d_33/bias/mAdam/conv2d_34/kernel/mAdam/conv2d_34/bias/mAdam/conv2d_35/kernel/mAdam/conv2d_35/bias/mAdam/conv2d_36/kernel/mAdam/conv2d_36/bias/mAdam/conv2d_37/kernel/mAdam/conv2d_37/bias/mAdam/conv2d_38/kernel/mAdam/conv2d_38/bias/mAdam/conv2d_39/kernel/mAdam/conv2d_39/bias/mAdam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/mAdam/conv2d_32/kernel/vAdam/conv2d_32/bias/vAdam/conv2d_33/kernel/vAdam/conv2d_33/bias/vAdam/conv2d_34/kernel/vAdam/conv2d_34/bias/vAdam/conv2d_35/kernel/vAdam/conv2d_35/bias/vAdam/conv2d_36/kernel/vAdam/conv2d_36/bias/vAdam/conv2d_37/kernel/vAdam/conv2d_37/bias/vAdam/conv2d_38/kernel/vAdam/conv2d_38/bias/vAdam/conv2d_39/kernel/vAdam/conv2d_39/bias/vAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v*T
TinM
K2I*
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
GPU2*0J 8В **
f%R#
!__inference__traced_restore_51061ѕ—
У
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_49920

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ф
°
)__inference_conv2d_39_layer_call_fn_50079

inputs#
unknown:АА
	unknown_0:	А
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_48224x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ґ
÷
Qsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_false_49162ђ
Іsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_identity_sequential_8_random_flip_4_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_identity≥
Nsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/IdentityIdentityІsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_identity_sequential_8_random_flip_4_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"©
Nsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_identityWsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
Ї

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_50127

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
»
`
D__inference_flatten_4_layer_call_and_return_conditional_losses_50138

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Л
€
D__inference_conv2d_38_layer_call_and_return_conditional_losses_48206

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Г
э
D__inference_conv2d_35_layer_call_and_return_conditional_losses_49970

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47539

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ƒ
E
)__inference_dropout_8_layer_call_fn_50105

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_48236i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ҐV
”
map_while_body_50236$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐ2map/while/stateful_uniform_full_int/RngReadAndSkipР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ј
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Х
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Б
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Г
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Б
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:І
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :√
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ц
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskр
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААМ
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ƒ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::Ґ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: У
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: М
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Г
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_50296*#
output_shapes
:АА*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_50295£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААс
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder<map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: Т
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Е
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Є
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Лn
Ѕ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50581

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ґ
‘
#__inference_signature_wrapper_48901
sequential_8_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@%

unknown_11:@А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:	А

unknown_18:
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *)
f$R"
 __inference__wrapped_model_47516o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€АА
,
_user_specified_namesequential_8_input
с
†
)__inference_conv2d_38_layer_call_fn_50049

inputs"
unknown:@А
	unknown_0:	А
identityИҐStatefulPartitionedCallе
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_48206x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
≈
}
-__inference_random_flip_4_layer_call_fn_50216

inputs
unknown:	
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47908y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
њ
и
6map_while_stateless_random_flip_left_right_false_50296u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityб
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
“
Ё
,__inference_sequential_9_layer_call_fn_48330
sequential_8_input!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@%

unknown_11:@А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:	А

unknown_18:
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_48287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€АА
,
_user_specified_namesequential_8_input
Ј
Ќ
map_while_cond_47814$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_47814___redundant_placeholder0;
7map_while_map_while_cond_47814___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
бМ
¶
__inference__traced_save_50835
file_prefix/
+savev2_conv2d_32_kernel_read_readvariableop-
)savev2_conv2d_32_bias_read_readvariableop/
+savev2_conv2d_33_kernel_read_readvariableop-
)savev2_conv2d_33_bias_read_readvariableop/
+savev2_conv2d_34_kernel_read_readvariableop-
)savev2_conv2d_34_bias_read_readvariableop/
+savev2_conv2d_35_kernel_read_readvariableop-
)savev2_conv2d_35_bias_read_readvariableop/
+savev2_conv2d_36_kernel_read_readvariableop-
)savev2_conv2d_36_bias_read_readvariableop/
+savev2_conv2d_37_kernel_read_readvariableop-
)savev2_conv2d_37_bias_read_readvariableop/
+savev2_conv2d_38_kernel_read_readvariableop-
)savev2_conv2d_38_bias_read_readvariableop/
+savev2_conv2d_39_kernel_read_readvariableop-
)savev2_conv2d_39_bias_read_readvariableop-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop)
%savev2_statevar_2_read_readvariableop	)
%savev2_statevar_1_read_readvariableop	'
#savev2_statevar_read_readvariableop	6
2savev2_adam_conv2d_32_kernel_m_read_readvariableop4
0savev2_adam_conv2d_32_bias_m_read_readvariableop6
2savev2_adam_conv2d_33_kernel_m_read_readvariableop4
0savev2_adam_conv2d_33_bias_m_read_readvariableop6
2savev2_adam_conv2d_34_kernel_m_read_readvariableop4
0savev2_adam_conv2d_34_bias_m_read_readvariableop6
2savev2_adam_conv2d_35_kernel_m_read_readvariableop4
0savev2_adam_conv2d_35_bias_m_read_readvariableop6
2savev2_adam_conv2d_36_kernel_m_read_readvariableop4
0savev2_adam_conv2d_36_bias_m_read_readvariableop6
2savev2_adam_conv2d_37_kernel_m_read_readvariableop4
0savev2_adam_conv2d_37_bias_m_read_readvariableop6
2savev2_adam_conv2d_38_kernel_m_read_readvariableop4
0savev2_adam_conv2d_38_bias_m_read_readvariableop6
2savev2_adam_conv2d_39_kernel_m_read_readvariableop4
0savev2_adam_conv2d_39_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop6
2savev2_adam_conv2d_32_kernel_v_read_readvariableop4
0savev2_adam_conv2d_32_bias_v_read_readvariableop6
2savev2_adam_conv2d_33_kernel_v_read_readvariableop4
0savev2_adam_conv2d_33_bias_v_read_readvariableop6
2savev2_adam_conv2d_34_kernel_v_read_readvariableop4
0savev2_adam_conv2d_34_bias_v_read_readvariableop6
2savev2_adam_conv2d_35_kernel_v_read_readvariableop4
0savev2_adam_conv2d_35_bias_v_read_readvariableop6
2savev2_adam_conv2d_36_kernel_v_read_readvariableop4
0savev2_adam_conv2d_36_bias_v_read_readvariableop6
2savev2_adam_conv2d_37_kernel_v_read_readvariableop4
0savev2_adam_conv2d_37_bias_v_read_readvariableop6
2savev2_adam_conv2d_38_kernel_v_read_readvariableop4
0savev2_adam_conv2d_38_bias_v_read_readvariableop6
2savev2_adam_conv2d_39_kernel_v_read_readvariableop4
0savev2_adam_conv2d_39_bias_v_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop
savev2_const

identity_1ИҐMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: З)
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*∞(
value¶(B£(IB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHВ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*І
valueЭBЪIB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B У
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_32_kernel_read_readvariableop)savev2_conv2d_32_bias_read_readvariableop+savev2_conv2d_33_kernel_read_readvariableop)savev2_conv2d_33_bias_read_readvariableop+savev2_conv2d_34_kernel_read_readvariableop)savev2_conv2d_34_bias_read_readvariableop+savev2_conv2d_35_kernel_read_readvariableop)savev2_conv2d_35_bias_read_readvariableop+savev2_conv2d_36_kernel_read_readvariableop)savev2_conv2d_36_bias_read_readvariableop+savev2_conv2d_37_kernel_read_readvariableop)savev2_conv2d_37_bias_read_readvariableop+savev2_conv2d_38_kernel_read_readvariableop)savev2_conv2d_38_bias_read_readvariableop+savev2_conv2d_39_kernel_read_readvariableop)savev2_conv2d_39_bias_read_readvariableop)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop%savev2_statevar_2_read_readvariableop%savev2_statevar_1_read_readvariableop#savev2_statevar_read_readvariableop2savev2_adam_conv2d_32_kernel_m_read_readvariableop0savev2_adam_conv2d_32_bias_m_read_readvariableop2savev2_adam_conv2d_33_kernel_m_read_readvariableop0savev2_adam_conv2d_33_bias_m_read_readvariableop2savev2_adam_conv2d_34_kernel_m_read_readvariableop0savev2_adam_conv2d_34_bias_m_read_readvariableop2savev2_adam_conv2d_35_kernel_m_read_readvariableop0savev2_adam_conv2d_35_bias_m_read_readvariableop2savev2_adam_conv2d_36_kernel_m_read_readvariableop0savev2_adam_conv2d_36_bias_m_read_readvariableop2savev2_adam_conv2d_37_kernel_m_read_readvariableop0savev2_adam_conv2d_37_bias_m_read_readvariableop2savev2_adam_conv2d_38_kernel_m_read_readvariableop0savev2_adam_conv2d_38_bias_m_read_readvariableop2savev2_adam_conv2d_39_kernel_m_read_readvariableop0savev2_adam_conv2d_39_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop2savev2_adam_conv2d_32_kernel_v_read_readvariableop0savev2_adam_conv2d_32_bias_v_read_readvariableop2savev2_adam_conv2d_33_kernel_v_read_readvariableop0savev2_adam_conv2d_33_bias_v_read_readvariableop2savev2_adam_conv2d_34_kernel_v_read_readvariableop0savev2_adam_conv2d_34_bias_v_read_readvariableop2savev2_adam_conv2d_35_kernel_v_read_readvariableop0savev2_adam_conv2d_35_bias_v_read_readvariableop2savev2_adam_conv2d_36_kernel_v_read_readvariableop0savev2_adam_conv2d_36_bias_v_read_readvariableop2savev2_adam_conv2d_37_kernel_v_read_readvariableop0savev2_adam_conv2d_37_bias_v_read_readvariableop2savev2_adam_conv2d_38_kernel_v_read_readvariableop0savev2_adam_conv2d_38_bias_v_read_readvariableop2savev2_adam_conv2d_39_kernel_v_read_readvariableop0savev2_adam_conv2d_39_bias_v_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *W
dtypesM
K2I				Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*ш
_input_shapesж
г: ::::::::: : : @:@:@А:А:АА:А:
АА:А:	А:: : : : : : : : : :::::::::::: : : @:@:@А:А:АА:А:
АА:А:	А:::::::::: : : @:@:@А:А:АА:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::,	(
&
_output_shapes
: : 


_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:-)
'
_output_shapes
:@А:!

_output_shapes	
:А:.*
(
_output_shapes
:АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
::  

_output_shapes
::,!(
&
_output_shapes
:: "

_output_shapes
::,#(
&
_output_shapes
:: $

_output_shapes
::,%(
&
_output_shapes
:: &

_output_shapes
::,'(
&
_output_shapes
:: (

_output_shapes
::,)(
&
_output_shapes
: : *

_output_shapes
: :,+(
&
_output_shapes
: @: ,

_output_shapes
:@:--)
'
_output_shapes
:@А:!.

_output_shapes	
:А:./*
(
_output_shapes
:АА:!0

_output_shapes	
:А:&1"
 
_output_shapes
:
АА:!2

_output_shapes	
:А:%3!

_output_shapes
:	А: 4

_output_shapes
::,5(
&
_output_shapes
:: 6

_output_shapes
::,7(
&
_output_shapes
:: 8

_output_shapes
::,9(
&
_output_shapes
:: :

_output_shapes
::,;(
&
_output_shapes
:: <

_output_shapes
::,=(
&
_output_shapes
: : >

_output_shapes
: :,?(
&
_output_shapes
: @: @

_output_shapes
:@:-A)
'
_output_shapes
:@А:!B

_output_shapes	
:А:.C*
(
_output_shapes
:АА:!D

_output_shapes	
:А:&E"
 
_output_shapes
:
АА:!F

_output_shapes	
:А:%G!

_output_shapes
:	А: H

_output_shapes
::I

_output_shapes
: 
ї
L
0__inference_max_pooling2d_38_layer_call_fn_50065

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_48054Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ћ
G
+__inference_rescaling_9_layer_call_fn_49852

inputs
identityЊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_9_layer_call_and_return_conditional_losses_48085j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
еЮ
Ґ-
!__inference__traced_restore_51061
file_prefix;
!assignvariableop_conv2d_32_kernel:/
!assignvariableop_1_conv2d_32_bias:=
#assignvariableop_2_conv2d_33_kernel:/
!assignvariableop_3_conv2d_33_bias:=
#assignvariableop_4_conv2d_34_kernel:/
!assignvariableop_5_conv2d_34_bias:=
#assignvariableop_6_conv2d_35_kernel:/
!assignvariableop_7_conv2d_35_bias:=
#assignvariableop_8_conv2d_36_kernel: /
!assignvariableop_9_conv2d_36_bias: >
$assignvariableop_10_conv2d_37_kernel: @0
"assignvariableop_11_conv2d_37_bias:@?
$assignvariableop_12_conv2d_38_kernel:@А1
"assignvariableop_13_conv2d_38_bias:	А@
$assignvariableop_14_conv2d_39_kernel:АА1
"assignvariableop_15_conv2d_39_bias:	А6
"assignvariableop_16_dense_8_kernel:
АА/
 assignvariableop_17_dense_8_bias:	А5
"assignvariableop_18_dense_9_kernel:	А.
 assignvariableop_19_dense_9_bias:'
assignvariableop_20_adam_iter:	 )
assignvariableop_21_adam_beta_1: )
assignvariableop_22_adam_beta_2: (
assignvariableop_23_adam_decay: 0
&assignvariableop_24_adam_learning_rate: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: #
assignvariableop_27_total: #
assignvariableop_28_count: ,
assignvariableop_29_statevar_2:	,
assignvariableop_30_statevar_1:	*
assignvariableop_31_statevar:	E
+assignvariableop_32_adam_conv2d_32_kernel_m:7
)assignvariableop_33_adam_conv2d_32_bias_m:E
+assignvariableop_34_adam_conv2d_33_kernel_m:7
)assignvariableop_35_adam_conv2d_33_bias_m:E
+assignvariableop_36_adam_conv2d_34_kernel_m:7
)assignvariableop_37_adam_conv2d_34_bias_m:E
+assignvariableop_38_adam_conv2d_35_kernel_m:7
)assignvariableop_39_adam_conv2d_35_bias_m:E
+assignvariableop_40_adam_conv2d_36_kernel_m: 7
)assignvariableop_41_adam_conv2d_36_bias_m: E
+assignvariableop_42_adam_conv2d_37_kernel_m: @7
)assignvariableop_43_adam_conv2d_37_bias_m:@F
+assignvariableop_44_adam_conv2d_38_kernel_m:@А8
)assignvariableop_45_adam_conv2d_38_bias_m:	АG
+assignvariableop_46_adam_conv2d_39_kernel_m:АА8
)assignvariableop_47_adam_conv2d_39_bias_m:	А=
)assignvariableop_48_adam_dense_8_kernel_m:
АА6
'assignvariableop_49_adam_dense_8_bias_m:	А<
)assignvariableop_50_adam_dense_9_kernel_m:	А5
'assignvariableop_51_adam_dense_9_bias_m:E
+assignvariableop_52_adam_conv2d_32_kernel_v:7
)assignvariableop_53_adam_conv2d_32_bias_v:E
+assignvariableop_54_adam_conv2d_33_kernel_v:7
)assignvariableop_55_adam_conv2d_33_bias_v:E
+assignvariableop_56_adam_conv2d_34_kernel_v:7
)assignvariableop_57_adam_conv2d_34_bias_v:E
+assignvariableop_58_adam_conv2d_35_kernel_v:7
)assignvariableop_59_adam_conv2d_35_bias_v:E
+assignvariableop_60_adam_conv2d_36_kernel_v: 7
)assignvariableop_61_adam_conv2d_36_bias_v: E
+assignvariableop_62_adam_conv2d_37_kernel_v: @7
)assignvariableop_63_adam_conv2d_37_bias_v:@F
+assignvariableop_64_adam_conv2d_38_kernel_v:@А8
)assignvariableop_65_adam_conv2d_38_bias_v:	АG
+assignvariableop_66_adam_conv2d_39_kernel_v:АА8
)assignvariableop_67_adam_conv2d_39_bias_v:	А=
)assignvariableop_68_adam_dense_8_kernel_v:
АА6
'assignvariableop_69_adam_dense_8_bias_v:	А<
)assignvariableop_70_adam_dense_9_kernel_v:	А5
'assignvariableop_71_adam_dense_9_bias_v:
identity_73ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_8ҐAssignVariableOp_9К)
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*∞(
value¶(B£(IB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-9/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-9/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЕ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:I*
dtype0*І
valueЭBЪIB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B О
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ї
_output_shapesІ
§:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*W
dtypesM
K2I				[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_32_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_32_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_conv2d_33_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_conv2d_33_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_conv2d_34_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_conv2d_34_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_conv2d_35_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_conv2d_35_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_conv2d_36_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_conv2d_36_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_10AssignVariableOp$assignvariableop_10_conv2d_37_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_11AssignVariableOp"assignvariableop_11_conv2d_37_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_12AssignVariableOp$assignvariableop_12_conv2d_38_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_13AssignVariableOp"assignvariableop_13_conv2d_38_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Х
AssignVariableOp_14AssignVariableOp$assignvariableop_14_conv2d_39_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_15AssignVariableOp"assignvariableop_15_conv2d_39_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_8_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_8_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:У
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_9_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_9_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_iterIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_beta_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_22AssignVariableOpassignvariableop_22_adam_beta_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_23AssignVariableOpassignvariableop_23_adam_decayIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_24AssignVariableOp&assignvariableop_24_adam_learning_rateIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0	*
_output_shapes
:П
AssignVariableOp_29AssignVariableOpassignvariableop_29_statevar_2Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0	*
_output_shapes
:П
AssignVariableOp_30AssignVariableOpassignvariableop_30_statevar_1Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0	*
_output_shapes
:Н
AssignVariableOp_31AssignVariableOpassignvariableop_31_statevarIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adam_conv2d_32_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_33AssignVariableOp)assignvariableop_33_adam_conv2d_32_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_34AssignVariableOp+assignvariableop_34_adam_conv2d_33_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_conv2d_33_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_36AssignVariableOp+assignvariableop_36_adam_conv2d_34_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_conv2d_34_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_38AssignVariableOp+assignvariableop_38_adam_conv2d_35_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_conv2d_35_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_40AssignVariableOp+assignvariableop_40_adam_conv2d_36_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_conv2d_36_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_42AssignVariableOp+assignvariableop_42_adam_conv2d_37_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_conv2d_37_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_conv2d_38_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_conv2d_38_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_conv2d_39_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_conv2d_39_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_48AssignVariableOp)assignvariableop_48_adam_dense_8_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_49AssignVariableOp'assignvariableop_49_adam_dense_8_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_50AssignVariableOp)assignvariableop_50_adam_dense_9_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_51AssignVariableOp'assignvariableop_51_adam_dense_9_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_conv2d_32_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_conv2d_32_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_conv2d_33_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_conv2d_33_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_conv2d_34_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_conv2d_34_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_58AssignVariableOp+assignvariableop_58_adam_conv2d_35_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_59AssignVariableOp)assignvariableop_59_adam_conv2d_35_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_conv2d_36_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_61AssignVariableOp)assignvariableop_61_adam_conv2d_36_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_62AssignVariableOp+assignvariableop_62_adam_conv2d_37_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_63AssignVariableOp)assignvariableop_63_adam_conv2d_37_bias_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_64AssignVariableOp+assignvariableop_64_adam_conv2d_38_kernel_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_65AssignVariableOp)assignvariableop_65_adam_conv2d_38_bias_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_66AssignVariableOp+assignvariableop_66_adam_conv2d_39_kernel_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_67AssignVariableOp)assignvariableop_67_adam_conv2d_39_bias_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_68AssignVariableOp)assignvariableop_68_adam_dense_8_kernel_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_69AssignVariableOp'assignvariableop_69_adam_dense_8_bias_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_70AssignVariableOp)assignvariableop_70_adam_dense_9_kernel_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_dense_9_bias_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 €
Identity_72Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_73IdentityIdentity_72:output:0^NoOp_1*
T0*
_output_shapes
: м
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_73Identity_73:output:0*І
_input_shapesХ
Т: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_71AssignVariableOp_712(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
х
U
,__inference_sequential_8_layer_call_fn_47545
random_flip_4_input
identityћ
PartitionedCallPartitionedCallrandom_flip_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47542j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_4_input
ќ
H
,__inference_sequential_8_layer_call_fn_49511

inputs
identityњ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47542j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
њ
и
6map_while_stateless_random_flip_left_right_false_47875u
qmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityб
3map/while/stateless_random_flip_left_right/IdentityIdentityqmap_while_stateless_random_flip_left_right_identity_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
У
g
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_47982

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_50070

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
П
А
D__inference_conv2d_39_layer_call_and_return_conditional_losses_48224

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_47994

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ы
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_48236

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
б
№
G__inference_sequential_8_layer_call_and_return_conditional_losses_47973
random_flip_4_input!
random_flip_4_47963:	%
random_rotation_4_47966:	!
random_zoom_4_47969:	
identityИҐ%random_flip_4/StatefulPartitionedCallҐ)random_rotation_4/StatefulPartitionedCallҐ%random_zoom_4/StatefulPartitionedCallБ
%random_flip_4/StatefulPartitionedCallStatefulPartitionedCallrandom_flip_4_inputrandom_flip_4_47963*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47908®
)random_rotation_4/StatefulPartitionedCallStatefulPartitionedCall.random_flip_4/StatefulPartitionedCall:output:0random_rotation_4_47966*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47786†
%random_zoom_4/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_4/StatefulPartitionedCall:output:0random_zoom_4_47969*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47655З
IdentityIdentity.random_zoom_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА¬
NoOpNoOp&^random_flip_4/StatefulPartitionedCall*^random_rotation_4/StatefulPartitionedCall&^random_zoom_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2N
%random_flip_4/StatefulPartitionedCall%random_flip_4/StatefulPartitionedCall2V
)random_rotation_4/StatefulPartitionedCall)random_rotation_4/StatefulPartitionedCall2N
%random_zoom_4/StatefulPartitionedCall%random_zoom_4/StatefulPartitionedCall:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_4_input
ЧА
≈
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47786

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ѕ
Ґ
Drandom_flip_4_map_while_stateless_random_flip_left_right_false_49602Т
Нrandom_flip_4_map_while_stateless_random_flip_left_right_identity_random_flip_4_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_4_map_while_stateless_random_flip_left_right_identityМ
Arandom_flip_4/map/while/stateless_random_flip_left_right/IdentityIdentityНrandom_flip_4_map_while_stateless_random_flip_left_right_identity_random_flip_4_map_while_stateless_random_flip_left_right_control_dependency*
T0*$
_output_shapes
:АА"П
Arandom_flip_4_map_while_stateless_random_flip_left_right_identityJrandom_flip_4/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
ї
L
0__inference_max_pooling2d_34_layer_call_fn_49945

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_48006Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Г
э
D__inference_conv2d_37_layer_call_and_return_conditional_losses_50030

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
–
I
-__inference_random_flip_4_layer_call_fn_50209

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47527j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Т
Ѓ
,__inference_sequential_8_layer_call_fn_49522

inputs
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47933y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ъ
h
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47533

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ш
b
F__inference_rescaling_9_layer_call_and_return_conditional_losses_49860

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ќ
Ђ
,__inference_sequential_9_layer_call_fn_48708
sequential_8_input
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:$

unknown_10: 

unknown_11: $

unknown_12: @

unknown_13:@%

unknown_14:@А

unknown_15:	А&

unknown_16:АА

unknown_17:	А

unknown_18:
АА

unknown_19:	А

unknown_20:	А

unknown_21:
identityИҐStatefulPartitionedCallЕ
StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_48608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€АА
,
_user_specified_namesequential_8_input
ё
С
"random_flip_4_map_while_cond_49541@
<random_flip_4_map_while_random_flip_4_map_while_loop_counter;
7random_flip_4_map_while_random_flip_4_map_strided_slice'
#random_flip_4_map_while_placeholder)
%random_flip_4_map_while_placeholder_1@
<random_flip_4_map_while_less_random_flip_4_map_strided_sliceW
Srandom_flip_4_map_while_random_flip_4_map_while_cond_49541___redundant_placeholder0W
Srandom_flip_4_map_while_random_flip_4_map_while_cond_49541___redundant_placeholder1$
 random_flip_4_map_while_identity
®
random_flip_4/map/while/LessLess#random_flip_4_map_while_placeholder<random_flip_4_map_while_less_random_flip_4_map_strided_slice*
T0*
_output_shapes
: Њ
random_flip_4/map/while/Less_1Less<random_flip_4_map_while_random_flip_4_map_while_loop_counter7random_flip_4_map_while_random_flip_4_map_strided_slice*
T0*
_output_shapes
: О
"random_flip_4/map/while/LogicalAnd
LogicalAnd"random_flip_4/map/while/Less_1:z:0 random_flip_4/map/while/Less:z:0*
_output_shapes
: u
 random_flip_4/map/while/IdentityIdentity&random_flip_4/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "M
 random_flip_4_map_while_identity)random_flip_4/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
У
g
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_50040

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ы
p
G__inference_sequential_8_layer_call_and_return_conditional_losses_47960
random_flip_4_input
identityџ
random_flip_4/PartitionedCallPartitionedCallrandom_flip_4_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47527ц
!random_rotation_4/PartitionedCallPartitionedCall&random_flip_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47533т
random_zoom_4/PartitionedCallPartitionedCall*random_rotation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47539x
IdentityIdentity&random_zoom_4/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_4_input
П
А
D__inference_conv2d_39_layer_call_and_return_conditional_losses_50090

inputs:
conv2d_readvariableop_resource:АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp~
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•

ц
B__inference_dense_8_layer_call_and_return_conditional_losses_48257

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
н
Ю
)__inference_conv2d_37_layer_call_fn_50019

inputs!
unknown: @
	unknown_0:@
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_48188w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_48054

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ѓ
—
,__inference_sequential_9_layer_call_fn_48946

inputs!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:#
	unknown_3:
	unknown_4:#
	unknown_5:
	unknown_6:#
	unknown_7: 
	unknown_8: #
	unknown_9: @

unknown_10:@%

unknown_11:@А

unknown_12:	А&

unknown_13:АА

unknown_14:	А

unknown_15:
АА

unknown_16:	А

unknown_17:	А

unknown_18:
identityИҐStatefulPartitionedCall“
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_48287o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
н
Ю
)__inference_conv2d_35_layer_call_fn_49959

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_48152w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@@: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_48042

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
х
Ю
)__inference_conv2d_33_layer_call_fn_49899

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_48116y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ц	
Ґ
Crandom_flip_4_map_while_stateless_random_flip_left_right_true_49601У
Оrandom_flip_4_map_while_stateless_random_flip_left_right_reversev2_random_flip_4_map_while_stateless_random_flip_left_right_control_dependencyE
Arandom_flip_4_map_while_stateless_random_flip_left_right_identityС
Grandom_flip_4/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:б
Brandom_flip_4/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2Оrandom_flip_4_map_while_stateless_random_flip_left_right_reversev2_random_flip_4_map_while_stateless_random_flip_left_right_control_dependencyPrandom_flip_4/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА…
Arandom_flip_4/map/while/stateless_random_flip_left_right/IdentityIdentityKrandom_flip_4/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"П
Arandom_flip_4_map_while_stateless_random_flip_left_right_identityJrandom_flip_4/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
У
g
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_48006

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
кZ
Я	
G__inference_sequential_9_layer_call_and_return_conditional_losses_48287

inputs)
conv2d_32_48099:
conv2d_32_48101:)
conv2d_33_48117:
conv2d_33_48119:)
conv2d_34_48135:
conv2d_34_48137:)
conv2d_35_48153:
conv2d_35_48155:)
conv2d_36_48171: 
conv2d_36_48173: )
conv2d_37_48189: @
conv2d_37_48191:@*
conv2d_38_48207:@А
conv2d_38_48209:	А+
conv2d_39_48225:АА
conv2d_39_48227:	А!
dense_8_48258:
АА
dense_8_48260:	А 
dense_9_48281:	А
dense_9_48283:
identityИҐ!conv2d_32/StatefulPartitionedCallҐ!conv2d_33/StatefulPartitionedCallҐ!conv2d_34/StatefulPartitionedCallҐ!conv2d_35/StatefulPartitionedCallҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐdense_8/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallћ
sequential_8/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47542й
rescaling_9/PartitionedCallPartitionedCall%sequential_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_9_layer_call_and_return_conditional_losses_48085Ь
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall$rescaling_9/PartitionedCall:output:0conv2d_32_48099conv2d_32_48101*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_48098ш
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_47982°
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_48117conv2d_33_48119*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_48116ш
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_47994°
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_34_48135conv2d_34_48137*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_48134ц
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_48006Я
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_35_48153conv2d_35_48155*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_48152ц
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_48018Я
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_36_48171conv2d_36_48173*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_48170ц
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_48030Я
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_48189conv2d_37_48191*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_48188ц
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_48042†
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_48207conv2d_38_48209*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_48206ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_48054†
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_39_48225conv2d_39_48227*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_48224ч
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_48066и
dropout_8/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_48236ў
flatten_4/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_48244Й
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_48258dense_8_48260*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_48257я
dropout_9/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_48268И
dense_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_9_48281dense_9_48283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_48280w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€™
NoOpNoOp"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Я
÷
Psequential_8_random_flip_4_map_while_stateless_random_flip_left_right_true_49161≠
®sequential_8_random_flip_4_map_while_stateless_random_flip_left_right_reversev2_sequential_8_random_flip_4_map_while_stateless_random_flip_left_right_control_dependencyR
Nsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_identityЮ
Tsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Х
Osequential_8/random_flip_4/map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2®sequential_8_random_flip_4_map_while_stateless_random_flip_left_right_reversev2_sequential_8_random_flip_4_map_while_stateless_random_flip_left_right_control_dependency]sequential_8/random_flip_4/map/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ААг
Nsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/IdentityIdentityXsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"©
Nsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_identityWsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
П
э
D__inference_conv2d_34_layer_call_and_return_conditional_losses_48134

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_33_layer_call_fn_49915

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_47994Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ы
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_50115

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:€€€€€€€€€Аd

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
О[
Ђ	
G__inference_sequential_9_layer_call_and_return_conditional_losses_48775
sequential_8_input)
conv2d_32_48713:
conv2d_32_48715:)
conv2d_33_48719:
conv2d_33_48721:)
conv2d_34_48725:
conv2d_34_48727:)
conv2d_35_48731:
conv2d_35_48733:)
conv2d_36_48737: 
conv2d_36_48739: )
conv2d_37_48743: @
conv2d_37_48745:@*
conv2d_38_48749:@А
conv2d_38_48751:	А+
conv2d_39_48755:АА
conv2d_39_48757:	А!
dense_8_48763:
АА
dense_8_48765:	А 
dense_9_48769:	А
dense_9_48771:
identityИҐ!conv2d_32/StatefulPartitionedCallҐ!conv2d_33/StatefulPartitionedCallҐ!conv2d_34/StatefulPartitionedCallҐ!conv2d_35/StatefulPartitionedCallҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐdense_8/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallЎ
sequential_8/PartitionedCallPartitionedCallsequential_8_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47542й
rescaling_9/PartitionedCallPartitionedCall%sequential_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_9_layer_call_and_return_conditional_losses_48085Ь
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall$rescaling_9/PartitionedCall:output:0conv2d_32_48713conv2d_32_48715*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_48098ш
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_47982°
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_48719conv2d_33_48721*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_48116ш
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_47994°
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_34_48725conv2d_34_48727*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_48134ц
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_48006Я
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_35_48731conv2d_35_48733*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_48152ц
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_48018Я
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_36_48737conv2d_36_48739*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_48170ц
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_48030Я
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_48743conv2d_37_48745*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_48188ц
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_48042†
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_48749conv2d_38_48751*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_48206ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_48054†
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_39_48755conv2d_39_48757*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_48224ч
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_48066и
dropout_8/PartitionedCallPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_48236ў
flatten_4/PartitionedCallPartitionedCall"dropout_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_48244Й
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_48763dense_8_48765*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_48257я
dropout_9/PartitionedCallPartitionedCall(dense_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_48268И
dense_9/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0dense_9_48769dense_9_48771*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_48280w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€™
NoOpNoOp"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€АА
,
_user_specified_namesequential_8_input
Х
c
G__inference_sequential_8_layer_call_and_return_conditional_losses_49526

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Лn
Ѕ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47655

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :П
concatConcatV2stateful_uniform:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
х
Ю
)__inference_conv2d_34_layer_call_fn_49929

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_48134y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
≈
}
-__inference_random_zoom_4_layer_call_fn_50475

inputs
unknown:	
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47655y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
љ`
ф

G__inference_sequential_9_layer_call_and_return_conditional_losses_48608

inputs 
sequential_8_48538:	 
sequential_8_48540:	 
sequential_8_48542:	)
conv2d_32_48546:
conv2d_32_48548:)
conv2d_33_48552:
conv2d_33_48554:)
conv2d_34_48558:
conv2d_34_48560:)
conv2d_35_48564:
conv2d_35_48566:)
conv2d_36_48570: 
conv2d_36_48572: )
conv2d_37_48576: @
conv2d_37_48578:@*
conv2d_38_48582:@А
conv2d_38_48584:	А+
conv2d_39_48588:АА
conv2d_39_48590:	А!
dense_8_48596:
АА
dense_8_48598:	А 
dense_9_48602:	А
dense_9_48604:
identityИҐ!conv2d_32/StatefulPartitionedCallҐ!conv2d_33/StatefulPartitionedCallҐ!conv2d_34/StatefulPartitionedCallҐ!conv2d_35/StatefulPartitionedCallҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐdense_8/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ!dropout_8/StatefulPartitionedCallҐ!dropout_9/StatefulPartitionedCallҐ$sequential_8/StatefulPartitionedCallЫ
$sequential_8/StatefulPartitionedCallStatefulPartitionedCallinputssequential_8_48538sequential_8_48540sequential_8_48542*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47933с
rescaling_9/PartitionedCallPartitionedCall-sequential_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_9_layer_call_and_return_conditional_losses_48085Ь
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall$rescaling_9/PartitionedCall:output:0conv2d_32_48546conv2d_32_48548*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_48098ш
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_47982°
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_48552conv2d_33_48554*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_48116ш
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_47994°
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_34_48558conv2d_34_48560*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_48134ц
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_48006Я
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_35_48564conv2d_35_48566*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_48152ц
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_48018Я
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_36_48570conv2d_36_48572*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_48170ц
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_48030Я
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_48576conv2d_37_48578*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_48188ц
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_48042†
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_48582conv2d_38_48584*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_48206ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_48054†
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_39_48588conv2d_39_48590*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_48224ч
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_48066ш
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_48399б
flatten_4/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_48244Й
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_48596dense_8_48598*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_48257У
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_48360Р
dense_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_9_48602dense_9_48604*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_48280w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Щ
NoOpNoOp"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ъ	
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_48360

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_32_layer_call_fn_49885

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_47982Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Г
э
D__inference_conv2d_37_layer_call_and_return_conditional_losses_48188

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
џ
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_48268

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Љ
и
5map_while_stateless_random_flip_left_right_true_50295v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityГ
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:®
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА≠
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
ҐV
”
map_while_body_47815$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0K
=map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensorI
;map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐ2map/while/stateful_uniform_full_int/RngReadAndSkipР
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ј
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0s
)map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
)map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
(map/while/stateful_uniform_full_int/ProdProd2map/while/stateful_uniform_full_int/shape:output:02map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: l
*map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Х
*map/while/stateful_uniform_full_int/Cast_1Cast1map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Д
2map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip=map_while_stateful_uniform_full_int_rngreadandskip_resource_03map/while/stateful_uniform_full_int/Cast/x:output:0.map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Б
7map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Л
1map/while/stateful_uniform_full_int/strided_sliceStridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0@map/while/stateful_uniform_full_int/strided_slice/stack:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Bmap/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask£
+map/while/stateful_uniform_full_int/BitcastBitcast:map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Г
9map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Е
;map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Б
3map/while/stateful_uniform_full_int/strided_slice_1StridedSlice:map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Bmap/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Dmap/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:І
-map/while/stateful_uniform_full_int/Bitcast_1Bitcast<map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0i
'map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :√
#map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV22map/while/stateful_uniform_full_int/shape:output:06map/while/stateful_uniform_full_int/Bitcast_1:output:04map/while/stateful_uniform_full_int/Bitcast:output:00map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	^
map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ц
map/while/stackPack,map/while/stateful_uniform_full_int:output:0map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:n
map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        p
map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       p
map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ©
map/while/strided_sliceStridedSlicemap/while/stack:output:0&map/while/strided_slice/stack:output:0(map/while/strided_slice/stack_1:output:0(map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskр
=map/while/stateless_random_flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААМ
Imap/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    М
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ƒ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter map/while/strided_slice:output:0* 
_output_shapes
::Ґ
`map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :£
\map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Rmap/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0fmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0jmap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0imap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: У
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/subSubPmap/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: £
Gmap/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulemap/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: М
Cmap/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Kmap/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Pmap/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: v
1map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ё
/map/while/stateless_random_flip_left_right/LessLessGmap/while/stateless_random_flip_left_right/stateless_random_uniform:z:0:map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: Г
*map/while/stateless_random_flip_left_rightStatelessIf3map/while/stateless_random_flip_left_right/Less:z:0Fmap/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *I
else_branch:R8
6map_while_stateless_random_flip_left_right_false_47875*#
output_shapes
:АА*H
then_branch9R7
5map_while_stateless_random_flip_left_right_true_47874£
3map/while/stateless_random_flip_left_right/IdentityIdentity3map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААс
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder<map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“Q
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: e
map/while/IdentityIdentitymap/while/add_1:z:0^map/while/NoOp*
T0*
_output_shapes
: o
map/while/Identity_1Identitymap_while_map_strided_slice^map/while/NoOp*
T0*
_output_shapes
: e
map/while/Identity_2Identitymap/while/add:z:0^map/while/NoOp*
T0*
_output_shapes
: Т
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^map/while/NoOp*
T0*
_output_shapes
: Е
map/while/NoOpNoOp3^map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"|
;map_while_stateful_uniform_full_int_rngreadandskip_resource=map_while_stateful_uniform_full_int_rngreadandskip_resource_0"Є
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2h
2map/while/stateful_uniform_full_int/RngReadAndSkip2map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
…	
ф
B__inference_dense_9_layer_call_and_return_conditional_losses_50204

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
х
Ю
)__inference_conv2d_32_layer_call_fn_49869

inputs!
unknown:
	unknown_0:
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_48098y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_49890

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Л
€
D__inference_conv2d_38_layer_call_and_return_conditional_losses_50060

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@
 
_user_specified_nameinputs
Ц
b
)__inference_dropout_8_layer_call_fn_50110

inputs
identityИҐStatefulPartitionedCallЋ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_48399x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_35_layer_call_fn_49975

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_48018Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
`
D__inference_flatten_4_layer_call_and_return_conditional_losses_48244

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:€€€€€€€€€АY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ў
M
1__inference_random_rotation_4_layer_call_fn_50334

inputs
identityƒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47533j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Г
э
D__inference_conv2d_35_layer_call_and_return_conditional_losses_48152

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€@@w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€@@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€@@
 
_user_specified_nameinputs
Ї

c
D__inference_dropout_8_layer_call_and_return_conditional_losses_48399

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Х
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?ѓ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аx
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€Аr
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€Аb
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_39_layer_call_fn_50095

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_48066Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
П
э
D__inference_conv2d_32_layer_call_and_return_conditional_losses_49880

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47527

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
і
E
)__inference_flatten_4_layer_call_fn_50132

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_48244a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:€€€€€€€€€А:X T
0
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_48018

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
мg
З
"random_flip_4_map_while_body_49542@
<random_flip_4_map_while_random_flip_4_map_while_loop_counter;
7random_flip_4_map_while_random_flip_4_map_strided_slice'
#random_flip_4_map_while_placeholder)
%random_flip_4_map_while_placeholder_1?
;random_flip_4_map_while_random_flip_4_map_strided_slice_1_0{
wrandom_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_4_map_tensorarrayunstack_tensorlistfromtensor_0Y
Krandom_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	$
 random_flip_4_map_while_identity&
"random_flip_4_map_while_identity_1&
"random_flip_4_map_while_identity_2&
"random_flip_4_map_while_identity_3=
9random_flip_4_map_while_random_flip_4_map_strided_slice_1y
urandom_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_4_map_tensorarrayunstack_tensorlistfromtensorW
Irandom_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐ@random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkipЮ
Irandom_flip_4/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         э
;random_flip_4/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwrandom_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_4_map_tensorarrayunstack_tensorlistfromtensor_0#random_flip_4_map_while_placeholderRrandom_flip_4/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0Б
7random_flip_4/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:Б
7random_flip_4/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: г
6random_flip_4/map/while/stateful_uniform_full_int/ProdProd@random_flip_4/map/while/stateful_uniform_full_int/shape:output:0@random_flip_4/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: z
8random_flip_4/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :±
8random_flip_4/map/while/stateful_uniform_full_int/Cast_1Cast?random_flip_4/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Љ
@random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipKrandom_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Arandom_flip_4/map/while/stateful_uniform_full_int/Cast/x:output:0<random_flip_4/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:П
Erandom_flip_4/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: С
Grandom_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:С
Grandom_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
?random_flip_4/map/while/stateful_uniform_full_int/strided_sliceStridedSliceHrandom_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Nrandom_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack:output:0Prandom_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0Prandom_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskњ
9random_flip_4/map/while/stateful_uniform_full_int/BitcastBitcastHrandom_flip_4/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0С
Grandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:У
Irandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:У
Irandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
Arandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceHrandom_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0Prandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0Rrandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Rrandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:√
;random_flip_4/map/while/stateful_uniform_full_int/Bitcast_1BitcastJrandom_flip_4/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0w
5random_flip_4/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Й
1random_flip_4/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2@random_flip_4/map/while/stateful_uniform_full_int/shape:output:0Drandom_flip_4/map/while/stateful_uniform_full_int/Bitcast_1:output:0Brandom_flip_4/map/while/stateful_uniform_full_int/Bitcast:output:0>random_flip_4/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	l
"random_flip_4/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ј
random_flip_4/map/while/stackPack:random_flip_4/map/while/stateful_uniform_full_int:output:0+random_flip_4/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:|
+random_flip_4/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        ~
-random_flip_4/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       ~
-random_flip_4/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
%random_flip_4/map/while/strided_sliceStridedSlice&random_flip_4/map/while/stack:output:04random_flip_4/map/while/strided_slice/stack:output:06random_flip_4/map/while/strided_slice/stack_1:output:06random_flip_4/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЪ
Krandom_flip_4/map/while/stateless_random_flip_left_right/control_dependencyIdentityBrandom_flip_4/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*N
_classD
B@loc:@random_flip_4/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААЪ
Wrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB Ъ
Urandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
Urandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?а
nrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter.random_flip_4/map/while/strided_slice:output:0* 
_output_shapes
::∞
nrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :й
jrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2`random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0trandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0xrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0wrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: љ
Urandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSub^random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0^random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ќ
Urandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulsrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Yrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: ґ
Qrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2Yrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0^random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Д
?random_flip_4/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?З
=random_flip_4/map/while/stateless_random_flip_left_right/LessLessUrandom_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Hrandom_flip_4/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: …
8random_flip_4/map/while/stateless_random_flip_left_rightStatelessIfArandom_flip_4/map/while/stateless_random_flip_left_right/Less:z:0Trandom_flip_4/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *W
else_branchHRF
Drandom_flip_4_map_while_stateless_random_flip_left_right_false_49602*#
output_shapes
:АА*V
then_branchGRE
Crandom_flip_4_map_while_stateless_random_flip_left_right_true_49601њ
Arandom_flip_4/map/while/stateless_random_flip_left_right/IdentityIdentityArandom_flip_4/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:АА©
<random_flip_4/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%random_flip_4_map_while_placeholder_1#random_flip_4_map_while_placeholderJrandom_flip_4/map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“_
random_flip_4/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Т
random_flip_4/map/while/addAddV2#random_flip_4_map_while_placeholder&random_flip_4/map/while/add/y:output:0*
T0*
_output_shapes
: a
random_flip_4/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ѓ
random_flip_4/map/while/add_1AddV2<random_flip_4_map_while_random_flip_4_map_while_loop_counter(random_flip_4/map/while/add_1/y:output:0*
T0*
_output_shapes
: П
 random_flip_4/map/while/IdentityIdentity!random_flip_4/map/while/add_1:z:0^random_flip_4/map/while/NoOp*
T0*
_output_shapes
: І
"random_flip_4/map/while/Identity_1Identity7random_flip_4_map_while_random_flip_4_map_strided_slice^random_flip_4/map/while/NoOp*
T0*
_output_shapes
: П
"random_flip_4/map/while/Identity_2Identityrandom_flip_4/map/while/add:z:0^random_flip_4/map/while/NoOp*
T0*
_output_shapes
: Љ
"random_flip_4/map/while/Identity_3IdentityLrandom_flip_4/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^random_flip_4/map/while/NoOp*
T0*
_output_shapes
: °
random_flip_4/map/while/NoOpNoOpA^random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "M
 random_flip_4_map_while_identity)random_flip_4/map/while/Identity:output:0"Q
"random_flip_4_map_while_identity_1+random_flip_4/map/while/Identity_1:output:0"Q
"random_flip_4_map_while_identity_2+random_flip_4/map/while/Identity_2:output:0"Q
"random_flip_4_map_while_identity_3+random_flip_4/map/while/Identity_3:output:0"x
9random_flip_4_map_while_random_flip_4_map_strided_slice_1;random_flip_4_map_while_random_flip_4_map_strided_slice_1_0"Ш
Irandom_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resourceKrandom_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"р
urandom_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_4_map_tensorarrayunstack_tensorlistfromtensorwrandom_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_4_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2Д
@random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip@random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ї
ѕ
G__inference_sequential_8_layer_call_and_return_conditional_losses_47933

inputs!
random_flip_4_47923:	%
random_rotation_4_47926:	!
random_zoom_4_47929:	
identityИҐ%random_flip_4/StatefulPartitionedCallҐ)random_rotation_4/StatefulPartitionedCallҐ%random_zoom_4/StatefulPartitionedCallф
%random_flip_4/StatefulPartitionedCallStatefulPartitionedCallinputsrandom_flip_4_47923*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47908®
)random_rotation_4/StatefulPartitionedCallStatefulPartitionedCall.random_flip_4/StatefulPartitionedCall:output:0random_rotation_4_47926*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47786†
%random_zoom_4/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_4/StatefulPartitionedCall:output:0random_zoom_4_47929*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47655З
IdentityIdentity.random_zoom_4/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА¬
NoOpNoOp&^random_flip_4/StatefulPartitionedCall*^random_rotation_4/StatefulPartitionedCall&^random_zoom_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 2N
%random_flip_4/StatefulPartitionedCall%random_flip_4/StatefulPartitionedCall2V
)random_rotation_4/StatefulPartitionedCall)random_rotation_4/StatefulPartitionedCall2N
%random_zoom_4/StatefulPartitionedCall%random_zoom_4/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
б`
А
G__inference_sequential_9_layer_call_and_return_conditional_losses_48848
sequential_8_input 
sequential_8_48778:	 
sequential_8_48780:	 
sequential_8_48782:	)
conv2d_32_48786:
conv2d_32_48788:)
conv2d_33_48792:
conv2d_33_48794:)
conv2d_34_48798:
conv2d_34_48800:)
conv2d_35_48804:
conv2d_35_48806:)
conv2d_36_48810: 
conv2d_36_48812: )
conv2d_37_48816: @
conv2d_37_48818:@*
conv2d_38_48822:@А
conv2d_38_48824:	А+
conv2d_39_48828:АА
conv2d_39_48830:	А!
dense_8_48836:
АА
dense_8_48838:	А 
dense_9_48842:	А
dense_9_48844:
identityИҐ!conv2d_32/StatefulPartitionedCallҐ!conv2d_33/StatefulPartitionedCallҐ!conv2d_34/StatefulPartitionedCallҐ!conv2d_35/StatefulPartitionedCallҐ!conv2d_36/StatefulPartitionedCallҐ!conv2d_37/StatefulPartitionedCallҐ!conv2d_38/StatefulPartitionedCallҐ!conv2d_39/StatefulPartitionedCallҐdense_8/StatefulPartitionedCallҐdense_9/StatefulPartitionedCallҐ!dropout_8/StatefulPartitionedCallҐ!dropout_9/StatefulPartitionedCallҐ$sequential_8/StatefulPartitionedCallІ
$sequential_8/StatefulPartitionedCallStatefulPartitionedCallsequential_8_inputsequential_8_48778sequential_8_48780sequential_8_48782*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47933с
rescaling_9/PartitionedCallPartitionedCall-sequential_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_rescaling_9_layer_call_and_return_conditional_losses_48085Ь
!conv2d_32/StatefulPartitionedCallStatefulPartitionedCall$rescaling_9/PartitionedCall:output:0conv2d_32_48786conv2d_32_48788*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_32_layer_call_and_return_conditional_losses_48098ш
 max_pooling2d_32/PartitionedCallPartitionedCall*conv2d_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_47982°
!conv2d_33/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_32/PartitionedCall:output:0conv2d_33_48792conv2d_33_48794*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_33_layer_call_and_return_conditional_losses_48116ш
 max_pooling2d_33/PartitionedCallPartitionedCall*conv2d_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_47994°
!conv2d_34/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_33/PartitionedCall:output:0conv2d_34_48798conv2d_34_48800*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_34_layer_call_and_return_conditional_losses_48134ц
 max_pooling2d_34/PartitionedCallPartitionedCall*conv2d_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_48006Я
!conv2d_35/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_34/PartitionedCall:output:0conv2d_35_48804conv2d_35_48806*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_35_layer_call_and_return_conditional_losses_48152ц
 max_pooling2d_35/PartitionedCallPartitionedCall*conv2d_35/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€  * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_48018Я
!conv2d_36/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_35/PartitionedCall:output:0conv2d_36_48810conv2d_36_48812*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_48170ц
 max_pooling2d_36/PartitionedCallPartitionedCall*conv2d_36/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€ * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_48030Я
!conv2d_37/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_36/PartitionedCall:output:0conv2d_37_48816conv2d_37_48818*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_37_layer_call_and_return_conditional_losses_48188ц
 max_pooling2d_37/PartitionedCallPartitionedCall*conv2d_37/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_48042†
!conv2d_38/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_37/PartitionedCall:output:0conv2d_38_48822conv2d_38_48824*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_38_layer_call_and_return_conditional_losses_48206ч
 max_pooling2d_38/PartitionedCallPartitionedCall*conv2d_38/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_48054†
!conv2d_39/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_38/PartitionedCall:output:0conv2d_39_48828conv2d_39_48830*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_39_layer_call_and_return_conditional_losses_48224ч
 max_pooling2d_39/PartitionedCallPartitionedCall*conv2d_39/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_48066ш
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)max_pooling2d_39/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_48399б
flatten_4/PartitionedCallPartitionedCall*dropout_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_48244Й
dense_8/StatefulPartitionedCallStatefulPartitionedCall"flatten_4/PartitionedCall:output:0dense_8_48836dense_8_48838*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_48257У
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_48360Р
dense_9/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0dense_9_48842dense_9_48844*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_48280w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Щ
NoOpNoOp"^conv2d_32/StatefulPartitionedCall"^conv2d_33/StatefulPartitionedCall"^conv2d_34/StatefulPartitionedCall"^conv2d_35/StatefulPartitionedCall"^conv2d_36/StatefulPartitionedCall"^conv2d_37/StatefulPartitionedCall"^conv2d_38/StatefulPartitionedCall"^conv2d_39/StatefulPartitionedCall ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall%^sequential_8/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : 2F
!conv2d_32/StatefulPartitionedCall!conv2d_32/StatefulPartitionedCall2F
!conv2d_33/StatefulPartitionedCall!conv2d_33/StatefulPartitionedCall2F
!conv2d_34/StatefulPartitionedCall!conv2d_34/StatefulPartitionedCall2F
!conv2d_35/StatefulPartitionedCall!conv2d_35/StatefulPartitionedCall2F
!conv2d_36/StatefulPartitionedCall!conv2d_36/StatefulPartitionedCall2F
!conv2d_37/StatefulPartitionedCall!conv2d_37/StatefulPartitionedCall2F
!conv2d_38/StatefulPartitionedCall!conv2d_38/StatefulPartitionedCall2F
!conv2d_39/StatefulPartitionedCall!conv2d_39/StatefulPartitionedCall2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall2L
$sequential_8/StatefulPartitionedCall$sequential_8/StatefulPartitionedCall:e a
1
_output_shapes
:€€€€€€€€€АА
,
_user_specified_namesequential_8_input
џ
b
D__inference_dropout_9_layer_call_and_return_conditional_losses_50173

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50220

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_50010

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Љ
и
5map_while_stateless_random_flip_left_right_true_47874v
rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependency7
3map_while_stateless_random_flip_left_right_identityГ
9map/while/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:®
4map/while/stateless_random_flip_left_right/ReverseV2	ReverseV2rmap_while_stateless_random_flip_left_right_reversev2_map_while_stateless_random_flip_left_right_control_dependencyBmap/while/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:АА≠
3map/while/stateless_random_flip_left_right/IdentityIdentity=map/while/stateless_random_flip_left_right/ReverseV2:output:0*
T0*$
_output_shapes
:АА"s
3map_while_stateless_random_flip_left_right_identity<map/while/stateless_random_flip_left_right/Identity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
:АА:* &
$
_output_shapes
:АА
П
э
D__inference_conv2d_34_layer_call_and_return_conditional_losses_49940

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_50100

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Г
э
D__inference_conv2d_36_layer_call_and_return_conditional_losses_50000

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
е
«
/sequential_8_random_flip_4_map_while_cond_49101Z
Vsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_while_loop_counterU
Qsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice4
0sequential_8_random_flip_4_map_while_placeholder6
2sequential_8_random_flip_4_map_while_placeholder_1Z
Vsequential_8_random_flip_4_map_while_less_sequential_8_random_flip_4_map_strided_sliceq
msequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_while_cond_49101___redundant_placeholder0q
msequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_while_cond_49101___redundant_placeholder11
-sequential_8_random_flip_4_map_while_identity
№
)sequential_8/random_flip_4/map/while/LessLess0sequential_8_random_flip_4_map_while_placeholderVsequential_8_random_flip_4_map_while_less_sequential_8_random_flip_4_map_strided_slice*
T0*
_output_shapes
: €
+sequential_8/random_flip_4/map/while/Less_1LessVsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_while_loop_counterQsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice*
T0*
_output_shapes
: µ
/sequential_8/random_flip_4/map/while/LogicalAnd
LogicalAnd/sequential_8/random_flip_4/map/while/Less_1:z:0-sequential_8/random_flip_4/map/while/Less:z:0*
_output_shapes
: П
-sequential_8/random_flip_4/map/while/IdentityIdentity3sequential_8/random_flip_4/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "g
-sequential_8_random_flip_4_map_while_identity6sequential_8/random_flip_4/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
ї
L
0__inference_max_pooling2d_37_layer_call_fn_50035

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_48042Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
П
э
D__inference_conv2d_33_layer_call_and_return_conditional_losses_49910

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
П
э
D__inference_conv2d_32_layer_call_and_return_conditional_losses_48098

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
н
Ю
)__inference_conv2d_36_layer_call_fn_49989

inputs!
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallд
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:€€€€€€€€€   *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_conv2d_36_layer_call_and_return_conditional_losses_48170w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€   `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
§
E
)__inference_dropout_9_layer_call_fn_50163

inputs
identity≥
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_48268a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50479

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ц
b
)__inference_dropout_9_layer_call_fn_50168

inputs
identityИҐStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_dropout_9_layer_call_and_return_conditional_losses_48360p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
©
Я
,__inference_sequential_9_layer_call_fn_48997

inputs
unknown:	
	unknown_0:	
	unknown_1:	#
	unknown_2:
	unknown_3:#
	unknown_4:
	unknown_5:#
	unknown_6:
	unknown_7:#
	unknown_8:
	unknown_9:$

unknown_10: 

unknown_11: $

unknown_12: @

unknown_13:@%

unknown_14:@А

unknown_15:	А&

unknown_16:АА

unknown_17:	А

unknown_18:
АА

unknown_19:	А

unknown_20:	А

unknown_21:
identityИҐStatefulPartitionedCallщ
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
unknown_21*#
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*6
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_9_layer_call_and_return_conditional_losses_48608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ео
о
G__inference_sequential_9_layer_call_and_return_conditional_losses_49506

inputs:
,sequential_8_random_flip_4_map_while_input_6:	U
Gsequential_8_random_rotation_4_stateful_uniform_rngreadandskip_resource:	Q
Csequential_8_random_zoom_4_stateful_uniform_rngreadandskip_resource:	B
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource:B
(conv2d_34_conv2d_readvariableop_resource:7
)conv2d_34_biasadd_readvariableop_resource:B
(conv2d_35_conv2d_readvariableop_resource:7
)conv2d_35_biasadd_readvariableop_resource:B
(conv2d_36_conv2d_readvariableop_resource: 7
)conv2d_36_biasadd_readvariableop_resource: B
(conv2d_37_conv2d_readvariableop_resource: @7
)conv2d_37_biasadd_readvariableop_resource:@C
(conv2d_38_conv2d_readvariableop_resource:@А8
)conv2d_38_biasadd_readvariableop_resource:	АD
(conv2d_39_conv2d_readvariableop_resource:АА8
)conv2d_39_biasadd_readvariableop_resource:	А:
&dense_8_matmul_readvariableop_resource:
АА6
'dense_8_biasadd_readvariableop_resource:	А9
&dense_9_matmul_readvariableop_resource:	А5
'dense_9_biasadd_readvariableop_resource:
identityИҐ conv2d_32/BiasAdd/ReadVariableOpҐconv2d_32/Conv2D/ReadVariableOpҐ conv2d_33/BiasAdd/ReadVariableOpҐconv2d_33/Conv2D/ReadVariableOpҐ conv2d_34/BiasAdd/ReadVariableOpҐconv2d_34/Conv2D/ReadVariableOpҐ conv2d_35/BiasAdd/ReadVariableOpҐconv2d_35/Conv2D/ReadVariableOpҐ conv2d_36/BiasAdd/ReadVariableOpҐconv2d_36/Conv2D/ReadVariableOpҐ conv2d_37/BiasAdd/ReadVariableOpҐconv2d_37/Conv2D/ReadVariableOpҐ conv2d_38/BiasAdd/ReadVariableOpҐconv2d_38/Conv2D/ReadVariableOpҐ conv2d_39/BiasAdd/ReadVariableOpҐconv2d_39/Conv2D/ReadVariableOpҐdense_8/BiasAdd/ReadVariableOpҐdense_8/MatMul/ReadVariableOpҐdense_9/BiasAdd/ReadVariableOpҐdense_9/MatMul/ReadVariableOpҐ$sequential_8/random_flip_4/map/whileҐ>sequential_8/random_rotation_4/stateful_uniform/RngReadAndSkipҐ:sequential_8/random_zoom_4/stateful_uniform/RngReadAndSkipZ
$sequential_8/random_flip_4/map/ShapeShapeinputs*
T0*
_output_shapes
:|
2sequential_8/random_flip_4/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_8/random_flip_4/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_8/random_flip_4/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,sequential_8/random_flip_4/map/strided_sliceStridedSlice-sequential_8/random_flip_4/map/Shape:output:0;sequential_8/random_flip_4/map/strided_slice/stack:output:0=sequential_8/random_flip_4/map/strided_slice/stack_1:output:0=sequential_8/random_flip_4/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЕ
:sequential_8/random_flip_4/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€П
,sequential_8/random_flip_4/map/TensorArrayV2TensorListReserveCsequential_8/random_flip_4/map/TensorArrayV2/element_shape:output:05sequential_8/random_flip_4/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“©
Tsequential_8/random_flip_4/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         Ч
Fsequential_8/random_flip_4/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputs]sequential_8/random_flip_4/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
$sequential_8/random_flip_4/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : З
<sequential_8/random_flip_4/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€У
.sequential_8/random_flip_4/map/TensorArrayV2_1TensorListReserveEsequential_8/random_flip_4/map/TensorArrayV2_1/element_shape:output:05sequential_8/random_flip_4/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“s
1sequential_8/random_flip_4/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Х
$sequential_8/random_flip_4/map/whileWhile:sequential_8/random_flip_4/map/while/loop_counter:output:05sequential_8/random_flip_4/map/strided_slice:output:0-sequential_8/random_flip_4/map/Const:output:07sequential_8/random_flip_4/map/TensorArrayV2_1:handle:05sequential_8/random_flip_4/map/strided_slice:output:0Vsequential_8/random_flip_4/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0,sequential_8_random_flip_4_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *;
body3R1
/sequential_8_random_flip_4_map_while_body_49102*;
cond3R1
/sequential_8_random_flip_4_map_while_cond_49101*!
output_shapes
: : : : : : : §
Osequential_8/random_flip_4/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         •
Asequential_8/random_flip_4/map/TensorArrayV2Stack/TensorListStackTensorListStack-sequential_8/random_flip_4/map/while:output:3Xsequential_8/random_flip_4/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0Ю
$sequential_8/random_rotation_4/ShapeShapeJsequential_8/random_flip_4/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:|
2sequential_8/random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_8/random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_8/random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:м
,sequential_8/random_rotation_4/strided_sliceStridedSlice-sequential_8/random_rotation_4/Shape:output:0;sequential_8/random_rotation_4/strided_slice/stack:output:0=sequential_8/random_rotation_4/strided_slice/stack_1:output:0=sequential_8/random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЗ
4sequential_8/random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€Й
6sequential_8/random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€А
6sequential_8/random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
.sequential_8/random_rotation_4/strided_slice_1StridedSlice-sequential_8/random_rotation_4/Shape:output:0=sequential_8/random_rotation_4/strided_slice_1/stack:output:0?sequential_8/random_rotation_4/strided_slice_1/stack_1:output:0?sequential_8/random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskФ
#sequential_8/random_rotation_4/CastCast7sequential_8/random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: З
4sequential_8/random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Й
6sequential_8/random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€А
6sequential_8/random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ф
.sequential_8/random_rotation_4/strided_slice_2StridedSlice-sequential_8/random_rotation_4/Shape:output:0=sequential_8/random_rotation_4/strided_slice_2/stack:output:0?sequential_8/random_rotation_4/strided_slice_2/stack_1:output:0?sequential_8/random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
%sequential_8/random_rotation_4/Cast_1Cast7sequential_8/random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Ґ
5sequential_8/random_rotation_4/stateful_uniform/shapePack5sequential_8/random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:x
3sequential_8/random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њx
3sequential_8/random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?
5sequential_8/random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ё
4sequential_8/random_rotation_4/stateful_uniform/ProdProd>sequential_8/random_rotation_4/stateful_uniform/shape:output:0>sequential_8/random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: x
6sequential_8/random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :≠
6sequential_8/random_rotation_4/stateful_uniform/Cast_1Cast=sequential_8/random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ≤
>sequential_8/random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkipGsequential_8_random_rotation_4_stateful_uniform_rngreadandskip_resource?sequential_8/random_rotation_4/stateful_uniform/Cast/x:output:0:sequential_8/random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:Н
Csequential_8/random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: П
Esequential_8/random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:П
Esequential_8/random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
=sequential_8/random_rotation_4/stateful_uniform/strided_sliceStridedSliceFsequential_8/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Lsequential_8/random_rotation_4/stateful_uniform/strided_slice/stack:output:0Nsequential_8/random_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Nsequential_8/random_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskї
7sequential_8/random_rotation_4/stateful_uniform/BitcastBitcastFsequential_8/random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0П
Esequential_8/random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:С
Gsequential_8/random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:С
Gsequential_8/random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:љ
?sequential_8/random_rotation_4/stateful_uniform/strided_slice_1StridedSliceFsequential_8/random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Nsequential_8/random_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Psequential_8/random_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Psequential_8/random_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:њ
9sequential_8/random_rotation_4/stateful_uniform/Bitcast_1BitcastHsequential_8/random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0О
Lsequential_8/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :¶
Hsequential_8/random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2>sequential_8/random_rotation_4/stateful_uniform/shape:output:0Bsequential_8/random_rotation_4/stateful_uniform/Bitcast_1:output:0@sequential_8/random_rotation_4/stateful_uniform/Bitcast:output:0Usequential_8/random_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€„
3sequential_8/random_rotation_4/stateful_uniform/subSub<sequential_8/random_rotation_4/stateful_uniform/max:output:0<sequential_8/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: ф
3sequential_8/random_rotation_4/stateful_uniform/mulMulQsequential_8/random_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:07sequential_8/random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ё
/sequential_8/random_rotation_4/stateful_uniformAddV27sequential_8/random_rotation_4/stateful_uniform/mul:z:0<sequential_8/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€y
4sequential_8/random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ƒ
2sequential_8/random_rotation_4/rotation_matrix/subSub)sequential_8/random_rotation_4/Cast_1:y:0=sequential_8/random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: Ь
2sequential_8/random_rotation_4/rotation_matrix/CosCos3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_8/random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?»
4sequential_8/random_rotation_4/rotation_matrix/sub_1Sub)sequential_8/random_rotation_4/Cast_1:y:0?sequential_8/random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ў
2sequential_8/random_rotation_4/rotation_matrix/mulMul6sequential_8/random_rotation_4/rotation_matrix/Cos:y:08sequential_8/random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ь
2sequential_8/random_rotation_4/rotation_matrix/SinSin3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_8/random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∆
4sequential_8/random_rotation_4/rotation_matrix/sub_2Sub'sequential_8/random_rotation_4/Cast:y:0?sequential_8/random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: џ
4sequential_8/random_rotation_4/rotation_matrix/mul_1Mul6sequential_8/random_rotation_4/rotation_matrix/Sin:y:08sequential_8/random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€џ
4sequential_8/random_rotation_4/rotation_matrix/sub_3Sub6sequential_8/random_rotation_4/rotation_matrix/mul:z:08sequential_8/random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€џ
4sequential_8/random_rotation_4/rotation_matrix/sub_4Sub6sequential_8/random_rotation_4/rotation_matrix/sub:z:08sequential_8/random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€}
8sequential_8/random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @м
6sequential_8/random_rotation_4/rotation_matrix/truedivRealDiv8sequential_8/random_rotation_4/rotation_matrix/sub_4:z:0Asequential_8/random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_8/random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∆
4sequential_8/random_rotation_4/rotation_matrix/sub_5Sub'sequential_8/random_rotation_4/Cast:y:0?sequential_8/random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Ю
4sequential_8/random_rotation_4/rotation_matrix/Sin_1Sin3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_8/random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?»
4sequential_8/random_rotation_4/rotation_matrix/sub_6Sub)sequential_8/random_rotation_4/Cast_1:y:0?sequential_8/random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Ё
4sequential_8/random_rotation_4/rotation_matrix/mul_2Mul8sequential_8/random_rotation_4/rotation_matrix/Sin_1:y:08sequential_8/random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ю
4sequential_8/random_rotation_4/rotation_matrix/Cos_1Cos3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€{
6sequential_8/random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∆
4sequential_8/random_rotation_4/rotation_matrix/sub_7Sub'sequential_8/random_rotation_4/Cast:y:0?sequential_8/random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Ё
4sequential_8/random_rotation_4/rotation_matrix/mul_3Mul8sequential_8/random_rotation_4/rotation_matrix/Cos_1:y:08sequential_8/random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ё
2sequential_8/random_rotation_4/rotation_matrix/addAddV28sequential_8/random_rotation_4/rotation_matrix/mul_2:z:08sequential_8/random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€џ
4sequential_8/random_rotation_4/rotation_matrix/sub_8Sub8sequential_8/random_rotation_4/rotation_matrix/sub_5:z:06sequential_8/random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€
:sequential_8/random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @р
8sequential_8/random_rotation_4/rotation_matrix/truediv_1RealDiv8sequential_8/random_rotation_4/rotation_matrix/sub_8:z:0Csequential_8/random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Ч
4sequential_8/random_rotation_4/rotation_matrix/ShapeShape3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:М
Bsequential_8/random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: О
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:О
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
<sequential_8/random_rotation_4/rotation_matrix/strided_sliceStridedSlice=sequential_8/random_rotation_4/rotation_matrix/Shape:output:0Ksequential_8/random_rotation_4/rotation_matrix/strided_slice/stack:output:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЮ
4sequential_8/random_rotation_4/rotation_matrix/Cos_2Cos3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Х
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
>sequential_8/random_rotation_4/rotation_matrix/strided_slice_1StridedSlice8sequential_8/random_rotation_4/rotation_matrix/Cos_2:y:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЮ
4sequential_8/random_rotation_4/rotation_matrix/Sin_2Sin3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Х
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
>sequential_8/random_rotation_4/rotation_matrix/strided_slice_2StridedSlice8sequential_8/random_rotation_4/rotation_matrix/Sin_2:y:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskі
2sequential_8/random_rotation_4/rotation_matrix/NegNegGsequential_8/random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Х
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      с
>sequential_8/random_rotation_4/rotation_matrix/strided_slice_3StridedSlice:sequential_8/random_rotation_4/rotation_matrix/truediv:z:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЮ
4sequential_8/random_rotation_4/rotation_matrix/Sin_3Sin3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Х
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
>sequential_8/random_rotation_4/rotation_matrix/strided_slice_4StridedSlice8sequential_8/random_rotation_4/rotation_matrix/Sin_3:y:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЮ
4sequential_8/random_rotation_4/rotation_matrix/Cos_3Cos3sequential_8/random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Х
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      п
>sequential_8/random_rotation_4/rotation_matrix/strided_slice_5StridedSlice8sequential_8/random_rotation_4/rotation_matrix/Cos_3:y:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskХ
Dsequential_8/random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ч
Fsequential_8/random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      у
>sequential_8/random_rotation_4/rotation_matrix/strided_slice_6StridedSlice<sequential_8/random_rotation_4/rotation_matrix/truediv_1:z:0Msequential_8/random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Osequential_8/random_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask
=sequential_8/random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :А
;sequential_8/random_rotation_4/rotation_matrix/zeros/packedPackEsequential_8/random_rotation_4/rotation_matrix/strided_slice:output:0Fsequential_8/random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
:sequential_8/random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    щ
4sequential_8/random_rotation_4/rotation_matrix/zerosFillDsequential_8/random_rotation_4/rotation_matrix/zeros/packed:output:0Csequential_8/random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
:sequential_8/random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :•
5sequential_8/random_rotation_4/rotation_matrix/concatConcatV2Gsequential_8/random_rotation_4/rotation_matrix/strided_slice_1:output:06sequential_8/random_rotation_4/rotation_matrix/Neg:y:0Gsequential_8/random_rotation_4/rotation_matrix/strided_slice_3:output:0Gsequential_8/random_rotation_4/rotation_matrix/strided_slice_4:output:0Gsequential_8/random_rotation_4/rotation_matrix/strided_slice_5:output:0Gsequential_8/random_rotation_4/rotation_matrix/strided_slice_6:output:0=sequential_8/random_rotation_4/rotation_matrix/zeros:output:0Csequential_8/random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€®
.sequential_8/random_rotation_4/transform/ShapeShapeJsequential_8/random_flip_4/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:Ж
<sequential_8/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:И
>sequential_8/random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:И
>sequential_8/random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:К
6sequential_8/random_rotation_4/transform/strided_sliceStridedSlice7sequential_8/random_rotation_4/transform/Shape:output:0Esequential_8/random_rotation_4/transform/strided_slice/stack:output:0Gsequential_8/random_rotation_4/transform/strided_slice/stack_1:output:0Gsequential_8/random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:x
3sequential_8/random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    б
Csequential_8/random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Jsequential_8/random_flip_4/map/TensorArrayV2Stack/TensorListStack:tensor:0>sequential_8/random_rotation_4/rotation_matrix/concat:output:0?sequential_8/random_rotation_4/transform/strided_slice:output:0<sequential_8/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR®
 sequential_8/random_zoom_4/ShapeShapeXsequential_8/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:x
.sequential_8/random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0sequential_8/random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0sequential_8/random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ў
(sequential_8/random_zoom_4/strided_sliceStridedSlice)sequential_8/random_zoom_4/Shape:output:07sequential_8/random_zoom_4/strided_slice/stack:output:09sequential_8/random_zoom_4/strided_slice/stack_1:output:09sequential_8/random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskГ
0sequential_8/random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€Е
2sequential_8/random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€|
2sequential_8/random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*sequential_8/random_zoom_4/strided_slice_1StridedSlice)sequential_8/random_zoom_4/Shape:output:09sequential_8/random_zoom_4/strided_slice_1/stack:output:0;sequential_8/random_zoom_4/strided_slice_1/stack_1:output:0;sequential_8/random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
sequential_8/random_zoom_4/CastCast3sequential_8/random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: Г
0sequential_8/random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Е
2sequential_8/random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€|
2sequential_8/random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
*sequential_8/random_zoom_4/strided_slice_2StridedSlice)sequential_8/random_zoom_4/Shape:output:09sequential_8/random_zoom_4/strided_slice_2/stack:output:0;sequential_8/random_zoom_4/strided_slice_2/stack_1:output:0;sequential_8/random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskО
!sequential_8/random_zoom_4/Cast_1Cast3sequential_8/random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: u
3sequential_8/random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Ў
1sequential_8/random_zoom_4/stateful_uniform/shapePack1sequential_8/random_zoom_4/strided_slice:output:0<sequential_8/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:t
/sequential_8/random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?t
/sequential_8/random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?{
1sequential_8/random_zoom_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: —
0sequential_8/random_zoom_4/stateful_uniform/ProdProd:sequential_8/random_zoom_4/stateful_uniform/shape:output:0:sequential_8/random_zoom_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: t
2sequential_8/random_zoom_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :•
2sequential_8/random_zoom_4/stateful_uniform/Cast_1Cast9sequential_8/random_zoom_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ґ
:sequential_8/random_zoom_4/stateful_uniform/RngReadAndSkipRngReadAndSkipCsequential_8_random_zoom_4_stateful_uniform_rngreadandskip_resource;sequential_8/random_zoom_4/stateful_uniform/Cast/x:output:06sequential_8/random_zoom_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:Й
?sequential_8/random_zoom_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Л
Asequential_8/random_zoom_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Asequential_8/random_zoom_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
9sequential_8/random_zoom_4/stateful_uniform/strided_sliceStridedSliceBsequential_8/random_zoom_4/stateful_uniform/RngReadAndSkip:value:0Hsequential_8/random_zoom_4/stateful_uniform/strided_slice/stack:output:0Jsequential_8/random_zoom_4/stateful_uniform/strided_slice/stack_1:output:0Jsequential_8/random_zoom_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask≥
3sequential_8/random_zoom_4/stateful_uniform/BitcastBitcastBsequential_8/random_zoom_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Л
Asequential_8/random_zoom_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Н
Csequential_8/random_zoom_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Н
Csequential_8/random_zoom_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
;sequential_8/random_zoom_4/stateful_uniform/strided_slice_1StridedSliceBsequential_8/random_zoom_4/stateful_uniform/RngReadAndSkip:value:0Jsequential_8/random_zoom_4/stateful_uniform/strided_slice_1/stack:output:0Lsequential_8/random_zoom_4/stateful_uniform/strided_slice_1/stack_1:output:0Lsequential_8/random_zoom_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ј
5sequential_8/random_zoom_4/stateful_uniform/Bitcast_1BitcastDsequential_8/random_zoom_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0К
Hsequential_8/random_zoom_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ц
Dsequential_8/random_zoom_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2:sequential_8/random_zoom_4/stateful_uniform/shape:output:0>sequential_8/random_zoom_4/stateful_uniform/Bitcast_1:output:0<sequential_8/random_zoom_4/stateful_uniform/Bitcast:output:0Qsequential_8/random_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€Ћ
/sequential_8/random_zoom_4/stateful_uniform/subSub8sequential_8/random_zoom_4/stateful_uniform/max:output:08sequential_8/random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: м
/sequential_8/random_zoom_4/stateful_uniform/mulMulMsequential_8/random_zoom_4/stateful_uniform/StatelessRandomUniformV2:output:03sequential_8/random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€’
+sequential_8/random_zoom_4/stateful_uniformAddV23sequential_8/random_zoom_4/stateful_uniform/mul:z:08sequential_8/random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€h
&sequential_8/random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ы
!sequential_8/random_zoom_4/concatConcatV2/sequential_8/random_zoom_4/stateful_uniform:z:0/sequential_8/random_zoom_4/stateful_uniform:z:0/sequential_8/random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ж
,sequential_8/random_zoom_4/zoom_matrix/ShapeShape*sequential_8/random_zoom_4/concat:output:0*
T0*
_output_shapes
:Д
:sequential_8/random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ж
<sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ж
<sequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ф
4sequential_8/random_zoom_4/zoom_matrix/strided_sliceStridedSlice5sequential_8/random_zoom_4/zoom_matrix/Shape:output:0Csequential_8/random_zoom_4/zoom_matrix/strided_slice/stack:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_1:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
,sequential_8/random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
*sequential_8/random_zoom_4/zoom_matrix/subSub%sequential_8/random_zoom_4/Cast_1:y:05sequential_8/random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: u
0sequential_8/random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @≈
.sequential_8/random_zoom_4/zoom_matrix/truedivRealDiv.sequential_8/random_zoom_4/zoom_matrix/sub:z:09sequential_8/random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: С
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_1StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masks
.sequential_8/random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?я
,sequential_8/random_zoom_4/zoom_matrix/sub_1Sub7sequential_8/random_zoom_4/zoom_matrix/sub_1/x:output:0?sequential_8/random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€…
*sequential_8/random_zoom_4/zoom_matrix/mulMul2sequential_8/random_zoom_4/zoom_matrix/truediv:z:00sequential_8/random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€s
.sequential_8/random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?≤
,sequential_8/random_zoom_4/zoom_matrix/sub_2Sub#sequential_8/random_zoom_4/Cast:y:07sequential_8/random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: w
2sequential_8/random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ћ
0sequential_8/random_zoom_4/zoom_matrix/truediv_1RealDiv0sequential_8/random_zoom_4/zoom_matrix/sub_2:z:0;sequential_8/random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: С
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_2StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masks
.sequential_8/random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?я
,sequential_8/random_zoom_4/zoom_matrix/sub_3Sub7sequential_8/random_zoom_4/zoom_matrix/sub_3/x:output:0?sequential_8/random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ќ
,sequential_8/random_zoom_4/zoom_matrix/mul_1Mul4sequential_8/random_zoom_4/zoom_matrix/truediv_1:z:00sequential_8/random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€С
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_3StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskw
5sequential_8/random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :и
3sequential_8/random_zoom_4/zoom_matrix/zeros/packedPack=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0>sequential_8/random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:w
2sequential_8/random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
,sequential_8/random_zoom_4/zoom_matrix/zerosFill<sequential_8/random_zoom_4/zoom_matrix/zeros/packed:output:0;sequential_8/random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€y
7sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :м
5sequential_8/random_zoom_4/zoom_matrix/zeros_1/packedPack=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0@sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential_8/random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    з
.sequential_8/random_zoom_4/zoom_matrix/zeros_1Fill>sequential_8/random_zoom_4/zoom_matrix/zeros_1/packed:output:0=sequential_8/random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€С
<sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           У
>sequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ў
6sequential_8/random_zoom_4/zoom_matrix/strided_slice_4StridedSlice*sequential_8/random_zoom_4/concat:output:0Esequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0Gsequential_8/random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_masky
7sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :м
5sequential_8/random_zoom_4/zoom_matrix/zeros_2/packedPack=sequential_8/random_zoom_4/zoom_matrix/strided_slice:output:0@sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:y
4sequential_8/random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    з
.sequential_8/random_zoom_4/zoom_matrix/zeros_2Fill>sequential_8/random_zoom_4/zoom_matrix/zeros_2/packed:output:0=sequential_8/random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€t
2sequential_8/random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Њ
-sequential_8/random_zoom_4/zoom_matrix/concatConcatV2?sequential_8/random_zoom_4/zoom_matrix/strided_slice_3:output:05sequential_8/random_zoom_4/zoom_matrix/zeros:output:0.sequential_8/random_zoom_4/zoom_matrix/mul:z:07sequential_8/random_zoom_4/zoom_matrix/zeros_1:output:0?sequential_8/random_zoom_4/zoom_matrix/strided_slice_4:output:00sequential_8/random_zoom_4/zoom_matrix/mul_1:z:07sequential_8/random_zoom_4/zoom_matrix/zeros_2:output:0;sequential_8/random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€≤
*sequential_8/random_zoom_4/transform/ShapeShapeXsequential_8/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:В
8sequential_8/random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_8/random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:sequential_8/random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
2sequential_8/random_zoom_4/transform/strided_sliceStridedSlice3sequential_8/random_zoom_4/transform/Shape:output:0Asequential_8/random_zoom_4/transform/strided_slice/stack:output:0Csequential_8/random_zoom_4/transform/strided_slice/stack_1:output:0Csequential_8/random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:t
/sequential_8/random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    џ
?sequential_8/random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Xsequential_8/random_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:06sequential_8/random_zoom_4/zoom_matrix/concat:output:0;sequential_8/random_zoom_4/transform/strided_slice:output:08sequential_8/random_zoom_4/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARW
rescaling_9/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_9/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ≈
rescaling_9/mulMulTsequential_8/random_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0rescaling_9/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААИ
rescaling_9/addAddV2rescaling_9/mul:z:0rescaling_9/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААР
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Љ
conv2d_32/Conv2DConv2Drescaling_9/add:z:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ж
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААn
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА∞
max_pooling2d_32/MaxPoolMaxPoolconv2d_32/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА*
ksize
*
paddingVALID*
strides
Р
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0 
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ж
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААn
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА∞
max_pooling2d_33/MaxPoolMaxPoolconv2d_33/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА*
ksize
*
paddingVALID*
strides
Р
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0 
conv2d_34/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ж
 conv2d_34/BiasAdd/ReadVariableOpReadVariableOp)conv2d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_34/BiasAddBiasAddconv2d_34/Conv2D:output:0(conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААn
conv2d_34/ReluReluconv2d_34/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААЃ
max_pooling2d_34/MaxPoolMaxPoolconv2d_34/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@@*
ksize
*
paddingVALID*
strides
Р
conv2d_35/Conv2D/ReadVariableOpReadVariableOp(conv2d_35_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0»
conv2d_35/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0'conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@*
paddingSAME*
strides
Ж
 conv2d_35/BiasAdd/ReadVariableOpReadVariableOp)conv2d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_35/BiasAddBiasAddconv2d_35/Conv2D:output:0(conv2d_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@l
conv2d_35/ReluReluconv2d_35/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@@Ѓ
max_pooling2d_35/MaxPoolMaxPoolconv2d_35/Relu:activations:0*/
_output_shapes
:€€€€€€€€€  *
ksize
*
paddingVALID*
strides
Р
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0»
conv2d_36/Conv2DConv2D!max_pooling2d_35/MaxPool:output:0'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Ж
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   l
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ѓ
max_pooling2d_36/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0»
conv2d_37/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ж
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_37/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
С
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0…
conv2d_38/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аѓ
max_pooling2d_38/MaxPoolMaxPoolconv2d_38/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
Т
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0…
conv2d_39/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аѓ
max_pooling2d_39/MaxPoolMaxPoolconv2d_39/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ь
dropout_8/dropout/MulMul!max_pooling2d_39/MaxPool:output:0 dropout_8/dropout/Const:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аh
dropout_8/dropout/ShapeShape!max_pooling2d_39/MaxPool:output:0*
T0*
_output_shapes
:©
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*0
_output_shapes
:€€€€€€€€€А*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ќ
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:€€€€€€€€€АМ
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:€€€€€€€€€АР
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*0
_output_shapes
:€€€€€€€€€А`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ж
flatten_4/ReshapeReshapedropout_8/dropout/Mul_1:z:0flatten_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЖ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0О
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @Н
dropout_9/dropout/MulMuldense_8/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
dropout_9/dropout/ShapeShapedense_8/Relu:activations:0*
T0*
_output_shapes
:°
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?≈
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€АД
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€АИ
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
dense_9/MatMulMatMuldropout_9/dropout/Mul_1:z:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Х
NoOpNoOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp!^conv2d_34/BiasAdd/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp!^conv2d_35/BiasAdd/ReadVariableOp ^conv2d_35/Conv2D/ReadVariableOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp%^sequential_8/random_flip_4/map/while?^sequential_8/random_rotation_4/stateful_uniform/RngReadAndSkip;^sequential_8/random_zoom_4/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : : : : 2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2D
 conv2d_34/BiasAdd/ReadVariableOp conv2d_34/BiasAdd/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2D
 conv2d_35/BiasAdd/ReadVariableOp conv2d_35/BiasAdd/ReadVariableOp2B
conv2d_35/Conv2D/ReadVariableOpconv2d_35/Conv2D/ReadVariableOp2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2L
$sequential_8/random_flip_4/map/while$sequential_8/random_flip_4/map/while2А
>sequential_8/random_rotation_4/stateful_uniform/RngReadAndSkip>sequential_8/random_rotation_4/stateful_uniform/RngReadAndSkip2x
:sequential_8/random_zoom_4/stateful_uniform/RngReadAndSkip:sequential_8/random_zoom_4/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
„З
–
 __inference__wrapped_model_47516
sequential_8_inputO
5sequential_9_conv2d_32_conv2d_readvariableop_resource:D
6sequential_9_conv2d_32_biasadd_readvariableop_resource:O
5sequential_9_conv2d_33_conv2d_readvariableop_resource:D
6sequential_9_conv2d_33_biasadd_readvariableop_resource:O
5sequential_9_conv2d_34_conv2d_readvariableop_resource:D
6sequential_9_conv2d_34_biasadd_readvariableop_resource:O
5sequential_9_conv2d_35_conv2d_readvariableop_resource:D
6sequential_9_conv2d_35_biasadd_readvariableop_resource:O
5sequential_9_conv2d_36_conv2d_readvariableop_resource: D
6sequential_9_conv2d_36_biasadd_readvariableop_resource: O
5sequential_9_conv2d_37_conv2d_readvariableop_resource: @D
6sequential_9_conv2d_37_biasadd_readvariableop_resource:@P
5sequential_9_conv2d_38_conv2d_readvariableop_resource:@АE
6sequential_9_conv2d_38_biasadd_readvariableop_resource:	АQ
5sequential_9_conv2d_39_conv2d_readvariableop_resource:ААE
6sequential_9_conv2d_39_biasadd_readvariableop_resource:	АG
3sequential_9_dense_8_matmul_readvariableop_resource:
ААC
4sequential_9_dense_8_biasadd_readvariableop_resource:	АF
3sequential_9_dense_9_matmul_readvariableop_resource:	АB
4sequential_9_dense_9_biasadd_readvariableop_resource:
identityИҐ-sequential_9/conv2d_32/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_32/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_33/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_33/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_34/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_34/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_35/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_35/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_36/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_36/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_37/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_37/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_38/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_38/Conv2D/ReadVariableOpҐ-sequential_9/conv2d_39/BiasAdd/ReadVariableOpҐ,sequential_9/conv2d_39/Conv2D/ReadVariableOpҐ+sequential_9/dense_8/BiasAdd/ReadVariableOpҐ*sequential_9/dense_8/MatMul/ReadVariableOpҐ+sequential_9/dense_9/BiasAdd/ReadVariableOpҐ*sequential_9/dense_9/MatMul/ReadVariableOpd
sequential_9/rescaling_9/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;f
!sequential_9/rescaling_9/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Э
sequential_9/rescaling_9/mulMulsequential_8_input(sequential_9/rescaling_9/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААѓ
sequential_9/rescaling_9/addAddV2 sequential_9/rescaling_9/mul:z:0*sequential_9/rescaling_9/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА™
,sequential_9/conv2d_32/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0г
sequential_9/conv2d_32/Conv2DConv2D sequential_9/rescaling_9/add:z:04sequential_9/conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
†
-sequential_9/conv2d_32/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ƒ
sequential_9/conv2d_32/BiasAddBiasAdd&sequential_9/conv2d_32/Conv2D:output:05sequential_9/conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААИ
sequential_9/conv2d_32/ReluRelu'sequential_9/conv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА 
%sequential_9/max_pooling2d_32/MaxPoolMaxPool)sequential_9/conv2d_32/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА*
ksize
*
paddingVALID*
strides
™
,sequential_9/conv2d_33/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0с
sequential_9/conv2d_33/Conv2DConv2D.sequential_9/max_pooling2d_32/MaxPool:output:04sequential_9/conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
†
-sequential_9/conv2d_33/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ƒ
sequential_9/conv2d_33/BiasAddBiasAdd&sequential_9/conv2d_33/Conv2D:output:05sequential_9/conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААИ
sequential_9/conv2d_33/ReluRelu'sequential_9/conv2d_33/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА 
%sequential_9/max_pooling2d_33/MaxPoolMaxPool)sequential_9/conv2d_33/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА*
ksize
*
paddingVALID*
strides
™
,sequential_9/conv2d_34/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_34_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0с
sequential_9/conv2d_34/Conv2DConv2D.sequential_9/max_pooling2d_33/MaxPool:output:04sequential_9/conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
†
-sequential_9/conv2d_34/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ƒ
sequential_9/conv2d_34/BiasAddBiasAdd&sequential_9/conv2d_34/Conv2D:output:05sequential_9/conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААИ
sequential_9/conv2d_34/ReluRelu'sequential_9/conv2d_34/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА»
%sequential_9/max_pooling2d_34/MaxPoolMaxPool)sequential_9/conv2d_34/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@@*
ksize
*
paddingVALID*
strides
™
,sequential_9/conv2d_35/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_35_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0п
sequential_9/conv2d_35/Conv2DConv2D.sequential_9/max_pooling2d_34/MaxPool:output:04sequential_9/conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@*
paddingSAME*
strides
†
-sequential_9/conv2d_35/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
sequential_9/conv2d_35/BiasAddBiasAdd&sequential_9/conv2d_35/Conv2D:output:05sequential_9/conv2d_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@Ж
sequential_9/conv2d_35/ReluRelu'sequential_9/conv2d_35/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@@»
%sequential_9/max_pooling2d_35/MaxPoolMaxPool)sequential_9/conv2d_35/Relu:activations:0*/
_output_shapes
:€€€€€€€€€  *
ksize
*
paddingVALID*
strides
™
,sequential_9/conv2d_36/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0п
sequential_9/conv2d_36/Conv2DConv2D.sequential_9/max_pooling2d_35/MaxPool:output:04sequential_9/conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
†
-sequential_9/conv2d_36/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¬
sequential_9/conv2d_36/BiasAddBiasAdd&sequential_9/conv2d_36/Conv2D:output:05sequential_9/conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   Ж
sequential_9/conv2d_36/ReluRelu'sequential_9/conv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   »
%sequential_9/max_pooling2d_36/MaxPoolMaxPool)sequential_9/conv2d_36/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
™
,sequential_9/conv2d_37/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0п
sequential_9/conv2d_37/Conv2DConv2D.sequential_9/max_pooling2d_36/MaxPool:output:04sequential_9/conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
†
-sequential_9/conv2d_37/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0¬
sequential_9/conv2d_37/BiasAddBiasAdd&sequential_9/conv2d_37/Conv2D:output:05sequential_9/conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@Ж
sequential_9/conv2d_37/ReluRelu'sequential_9/conv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@»
%sequential_9/max_pooling2d_37/MaxPoolMaxPool)sequential_9/conv2d_37/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
Ђ
,sequential_9/conv2d_38/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_38_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0р
sequential_9/conv2d_38/Conv2DConv2D.sequential_9/max_pooling2d_37/MaxPool:output:04sequential_9/conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
°
-sequential_9/conv2d_38/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_38_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
sequential_9/conv2d_38/BiasAddBiasAdd&sequential_9/conv2d_38/Conv2D:output:05sequential_9/conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЗ
sequential_9/conv2d_38/ReluRelu'sequential_9/conv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А…
%sequential_9/max_pooling2d_38/MaxPoolMaxPool)sequential_9/conv2d_38/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
ђ
,sequential_9/conv2d_39/Conv2D/ReadVariableOpReadVariableOp5sequential_9_conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0р
sequential_9/conv2d_39/Conv2DConv2D.sequential_9/max_pooling2d_38/MaxPool:output:04sequential_9/conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
°
-sequential_9/conv2d_39/BiasAdd/ReadVariableOpReadVariableOp6sequential_9_conv2d_39_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
sequential_9/conv2d_39/BiasAddBiasAdd&sequential_9/conv2d_39/Conv2D:output:05sequential_9/conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€АЗ
sequential_9/conv2d_39/ReluRelu'sequential_9/conv2d_39/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€А…
%sequential_9/max_pooling2d_39/MaxPoolMaxPool)sequential_9/conv2d_39/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
Ц
sequential_9/dropout_8/IdentityIdentity.sequential_9/max_pooling2d_39/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
sequential_9/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   ≠
sequential_9/flatten_4/ReshapeReshape(sequential_9/dropout_8/Identity:output:0%sequential_9/flatten_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€А†
*sequential_9/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0µ
sequential_9/dense_8/MatMulMatMul'sequential_9/flatten_4/Reshape:output:02sequential_9/dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЭ
+sequential_9/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0ґ
sequential_9/dense_8/BiasAddBiasAdd%sequential_9/dense_8/MatMul:product:03sequential_9/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А{
sequential_9/dense_8/ReluRelu%sequential_9/dense_8/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
sequential_9/dropout_9/IdentityIdentity'sequential_9/dense_8/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЯ
*sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_9_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0µ
sequential_9/dense_9/MatMulMatMul(sequential_9/dropout_9/Identity:output:02sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ь
+sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_9/dense_9/BiasAddBiasAdd%sequential_9/dense_9/MatMul:product:03sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€t
IdentityIdentity%sequential_9/dense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ф
NoOpNoOp.^sequential_9/conv2d_32/BiasAdd/ReadVariableOp-^sequential_9/conv2d_32/Conv2D/ReadVariableOp.^sequential_9/conv2d_33/BiasAdd/ReadVariableOp-^sequential_9/conv2d_33/Conv2D/ReadVariableOp.^sequential_9/conv2d_34/BiasAdd/ReadVariableOp-^sequential_9/conv2d_34/Conv2D/ReadVariableOp.^sequential_9/conv2d_35/BiasAdd/ReadVariableOp-^sequential_9/conv2d_35/Conv2D/ReadVariableOp.^sequential_9/conv2d_36/BiasAdd/ReadVariableOp-^sequential_9/conv2d_36/Conv2D/ReadVariableOp.^sequential_9/conv2d_37/BiasAdd/ReadVariableOp-^sequential_9/conv2d_37/Conv2D/ReadVariableOp.^sequential_9/conv2d_38/BiasAdd/ReadVariableOp-^sequential_9/conv2d_38/Conv2D/ReadVariableOp.^sequential_9/conv2d_39/BiasAdd/ReadVariableOp-^sequential_9/conv2d_39/Conv2D/ReadVariableOp,^sequential_9/dense_8/BiasAdd/ReadVariableOp+^sequential_9/dense_8/MatMul/ReadVariableOp,^sequential_9/dense_9/BiasAdd/ReadVariableOp+^sequential_9/dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 2^
-sequential_9/conv2d_32/BiasAdd/ReadVariableOp-sequential_9/conv2d_32/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_32/Conv2D/ReadVariableOp,sequential_9/conv2d_32/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_33/BiasAdd/ReadVariableOp-sequential_9/conv2d_33/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_33/Conv2D/ReadVariableOp,sequential_9/conv2d_33/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_34/BiasAdd/ReadVariableOp-sequential_9/conv2d_34/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_34/Conv2D/ReadVariableOp,sequential_9/conv2d_34/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_35/BiasAdd/ReadVariableOp-sequential_9/conv2d_35/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_35/Conv2D/ReadVariableOp,sequential_9/conv2d_35/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_36/BiasAdd/ReadVariableOp-sequential_9/conv2d_36/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_36/Conv2D/ReadVariableOp,sequential_9/conv2d_36/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_37/BiasAdd/ReadVariableOp-sequential_9/conv2d_37/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_37/Conv2D/ReadVariableOp,sequential_9/conv2d_37/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_38/BiasAdd/ReadVariableOp-sequential_9/conv2d_38/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_38/Conv2D/ReadVariableOp,sequential_9/conv2d_38/Conv2D/ReadVariableOp2^
-sequential_9/conv2d_39/BiasAdd/ReadVariableOp-sequential_9/conv2d_39/BiasAdd/ReadVariableOp2\
,sequential_9/conv2d_39/Conv2D/ReadVariableOp,sequential_9/conv2d_39/Conv2D/ReadVariableOp2Z
+sequential_9/dense_8/BiasAdd/ReadVariableOp+sequential_9/dense_8/BiasAdd/ReadVariableOp2X
*sequential_9/dense_8/MatMul/ReadVariableOp*sequential_9/dense_8/MatMul/ReadVariableOp2Z
+sequential_9/dense_9/BiasAdd/ReadVariableOp+sequential_9/dense_9/BiasAdd/ReadVariableOp2X
*sequential_9/dense_9/MatMul/ReadVariableOp*sequential_9/dense_9/MatMul/ReadVariableOp:e a
1
_output_shapes
:€€€€€€€€€АА
,
_user_specified_namesequential_8_input
П
э
D__inference_conv2d_33_layer_call_and_return_conditional_losses_48116

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААZ
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААk
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€АА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_49950

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_48030

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
Ј
Ќ
map_while_cond_50235$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice;
7map_while_map_while_cond_50235___redundant_placeholder0;
7map_while_map_while_cond_50235___redundant_placeholder1
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
: : : : : ::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ъ
h
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50345

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ќ
Б
1__inference_random_rotation_4_layer_call_fn_50341

inputs
unknown:	
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47786y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ƒ
Х
'__inference_dense_9_layer_call_fn_50194

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallЏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_9_layer_call_and_return_conditional_losses_48280o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ЫЅ
£
G__inference_sequential_8_layer_call_and_return_conditional_losses_49847

inputs-
random_flip_4_map_while_input_6:	H
:random_rotation_4_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_4_stateful_uniform_rngreadandskip_resource:	
identityИҐrandom_flip_4/map/whileҐ1random_rotation_4/stateful_uniform/RngReadAndSkipҐ-random_zoom_4/stateful_uniform/RngReadAndSkipM
random_flip_4/map/ShapeShapeinputs*
T0*
_output_shapes
:o
%random_flip_4/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_flip_4/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_flip_4/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
random_flip_4/map/strided_sliceStridedSlice random_flip_4/map/Shape:output:0.random_flip_4/map/strided_slice/stack:output:00random_flip_4/map/strided_slice/stack_1:output:00random_flip_4/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-random_flip_4/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€и
random_flip_4/map/TensorArrayV2TensorListReserve6random_flip_4/map/TensorArrayV2/element_shape:output:0(random_flip_4/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ь
Grandom_flip_4/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         э
9random_flip_4/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsPrandom_flip_4/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Y
random_flip_4/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : z
/random_flip_4/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€м
!random_flip_4/map/TensorArrayV2_1TensorListReserve8random_flip_4/map/TensorArrayV2_1/element_shape:output:0(random_flip_4/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“f
$random_flip_4/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : У
random_flip_4/map/whileWhile-random_flip_4/map/while/loop_counter:output:0(random_flip_4/map/strided_slice:output:0 random_flip_4/map/Const:output:0*random_flip_4/map/TensorArrayV2_1:handle:0(random_flip_4/map/strided_slice:output:0Irandom_flip_4/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0random_flip_4_map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *.
body&R$
"random_flip_4_map_while_body_49542*.
cond&R$
"random_flip_4_map_while_cond_49541*!
output_shapes
: : : : : : : Ч
Brandom_flip_4/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ю
4random_flip_4/map/TensorArrayV2Stack/TensorListStackTensorListStack random_flip_4/map/while:output:3Krandom_flip_4/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0Д
random_rotation_4/ShapeShape=random_flip_4/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:o
%random_rotation_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
random_rotation_4/strided_sliceStridedSlice random_rotation_4/Shape:output:0.random_rotation_4/strided_slice/stack:output:00random_rotation_4/strided_slice/stack_1:output:00random_rotation_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€|
)random_rotation_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€s
)random_rotation_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
!random_rotation_4/strided_slice_1StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_1/stack:output:02random_rotation_4/strided_slice_1/stack_1:output:02random_rotation_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_4/CastCast*random_rotation_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€|
)random_rotation_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€s
)random_rotation_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
!random_rotation_4/strided_slice_2StridedSlice random_rotation_4/Shape:output:00random_rotation_4/strided_slice_2/stack:output:02random_rotation_4/strided_slice_2/stack_1:output:02random_rotation_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_4/Cast_1Cast*random_rotation_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: И
(random_rotation_4/stateful_uniform/shapePack(random_rotation_4/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њk
&random_rotation_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?r
(random_rotation_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ґ
'random_rotation_4/stateful_uniform/ProdProd1random_rotation_4/stateful_uniform/shape:output:01random_rotation_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :У
)random_rotation_4/stateful_uniform/Cast_1Cast0random_rotation_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ю
1random_rotation_4/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_4_stateful_uniform_rngreadandskip_resource2random_rotation_4/stateful_uniform/Cast/x:output:0-random_rotation_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:А
6random_rotation_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8random_rotation_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
0random_rotation_4/stateful_uniform/strided_sliceStridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0?random_rotation_4/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask°
*random_rotation_4/stateful_uniform/BitcastBitcast9random_rotation_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0В
8random_rotation_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:random_rotation_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:random_rotation_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
2random_rotation_4/stateful_uniform/strided_slice_1StridedSlice9random_rotation_4/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_4/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:•
,random_rotation_4/stateful_uniform/Bitcast_1Bitcast;random_rotation_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Б
?random_rotation_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :е
;random_rotation_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_4/stateful_uniform/shape:output:05random_rotation_4/stateful_uniform/Bitcast_1:output:03random_rotation_4/stateful_uniform/Bitcast:output:0Hrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€∞
&random_rotation_4/stateful_uniform/subSub/random_rotation_4/stateful_uniform/max:output:0/random_rotation_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ќ
&random_rotation_4/stateful_uniform/mulMulDrandom_rotation_4/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_4/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
"random_rotation_4/stateful_uniformAddV2*random_rotation_4/stateful_uniform/mul:z:0/random_rotation_4/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation_4/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
%random_rotation_4/rotation_matrix/subSubrandom_rotation_4/Cast_1:y:00random_rotation_4/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: В
%random_rotation_4/rotation_matrix/CosCos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_4/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
'random_rotation_4/rotation_matrix/sub_1Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ≤
%random_rotation_4/rotation_matrix/mulMul)random_rotation_4/rotation_matrix/Cos:y:0+random_rotation_4/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€В
%random_rotation_4/rotation_matrix/SinSin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_4/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_4/rotation_matrix/sub_2Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: і
'random_rotation_4/rotation_matrix/mul_1Mul)random_rotation_4/rotation_matrix/Sin:y:0+random_rotation_4/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€і
'random_rotation_4/rotation_matrix/sub_3Sub)random_rotation_4/rotation_matrix/mul:z:0+random_rotation_4/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€і
'random_rotation_4/rotation_matrix/sub_4Sub)random_rotation_4/rotation_matrix/sub:z:0+random_rotation_4/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€p
+random_rotation_4/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @≈
)random_rotation_4/rotation_matrix/truedivRealDiv+random_rotation_4/rotation_matrix/sub_4:z:04random_rotation_4/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_4/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_4/rotation_matrix/sub_5Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Д
'random_rotation_4/rotation_matrix/Sin_1Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_4/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
'random_rotation_4/rotation_matrix/sub_6Subrandom_rotation_4/Cast_1:y:02random_rotation_4/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ґ
'random_rotation_4/rotation_matrix/mul_2Mul+random_rotation_4/rotation_matrix/Sin_1:y:0+random_rotation_4/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€Д
'random_rotation_4/rotation_matrix/Cos_1Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_4/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_4/rotation_matrix/sub_7Subrandom_rotation_4/Cast:y:02random_rotation_4/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ґ
'random_rotation_4/rotation_matrix/mul_3Mul+random_rotation_4/rotation_matrix/Cos_1:y:0+random_rotation_4/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
%random_rotation_4/rotation_matrix/addAddV2+random_rotation_4/rotation_matrix/mul_2:z:0+random_rotation_4/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€і
'random_rotation_4/rotation_matrix/sub_8Sub+random_rotation_4/rotation_matrix/sub_5:z:0)random_rotation_4/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€r
-random_rotation_4/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @…
+random_rotation_4/rotation_matrix/truediv_1RealDiv+random_rotation_4/rotation_matrix/sub_8:z:06random_rotation_4/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€}
'random_rotation_4/rotation_matrix/ShapeShape&random_rotation_4/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_4/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7random_rotation_4/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7random_rotation_4/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
/random_rotation_4/rotation_matrix/strided_sliceStridedSlice0random_rotation_4/rotation_matrix/Shape:output:0>random_rotation_4/rotation_matrix/strided_slice/stack:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_4/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskД
'random_rotation_4/rotation_matrix/Cos_2Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_4/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_4/rotation_matrix/strided_slice_1StridedSlice+random_rotation_4/rotation_matrix/Cos_2:y:0@random_rotation_4/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_4/rotation_matrix/Sin_2Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_4/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_4/rotation_matrix/strided_slice_2StridedSlice+random_rotation_4/rotation_matrix/Sin_2:y:0@random_rotation_4/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЪ
%random_rotation_4/rotation_matrix/NegNeg:random_rotation_4/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
7random_rotation_4/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ∞
1random_rotation_4/rotation_matrix/strided_slice_3StridedSlice-random_rotation_4/rotation_matrix/truediv:z:0@random_rotation_4/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_4/rotation_matrix/Sin_3Sin&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_4/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_4/rotation_matrix/strided_slice_4StridedSlice+random_rotation_4/rotation_matrix/Sin_3:y:0@random_rotation_4/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_4/rotation_matrix/Cos_3Cos&random_rotation_4/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_4/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_4/rotation_matrix/strided_slice_5StridedSlice+random_rotation_4/rotation_matrix/Cos_3:y:0@random_rotation_4/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskИ
7random_rotation_4/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_4/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≤
1random_rotation_4/rotation_matrix/strided_slice_6StridedSlice/random_rotation_4/rotation_matrix/truediv_1:z:0@random_rotation_4/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_4/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_4/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ў
.random_rotation_4/rotation_matrix/zeros/packedPack8random_rotation_4/rotation_matrix/strided_slice:output:09random_rotation_4/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_4/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    “
'random_rotation_4/rotation_matrix/zerosFill7random_rotation_4/rotation_matrix/zeros/packed:output:06random_rotation_4/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€o
-random_rotation_4/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :∞
(random_rotation_4/rotation_matrix/concatConcatV2:random_rotation_4/rotation_matrix/strided_slice_1:output:0)random_rotation_4/rotation_matrix/Neg:y:0:random_rotation_4/rotation_matrix/strided_slice_3:output:0:random_rotation_4/rotation_matrix/strided_slice_4:output:0:random_rotation_4/rotation_matrix/strided_slice_5:output:0:random_rotation_4/rotation_matrix/strided_slice_6:output:00random_rotation_4/rotation_matrix/zeros:output:06random_rotation_4/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€О
!random_rotation_4/transform/ShapeShape=random_flip_4/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:y
/random_rotation_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
)random_rotation_4/transform/strided_sliceStridedSlice*random_rotation_4/transform/Shape:output:08random_rotation_4/transform/strided_slice/stack:output:0:random_rotation_4/transform/strided_slice/stack_1:output:0:random_rotation_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    †
6random_rotation_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3=random_flip_4/map/TensorArrayV2Stack/TensorListStack:tensor:01random_rotation_4/rotation_matrix/concat:output:02random_rotation_4/transform/strided_slice:output:0/random_rotation_4/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARО
random_zoom_4/ShapeShapeKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:k
!random_zoom_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
random_zoom_4/strided_sliceStridedSlicerandom_zoom_4/Shape:output:0*random_zoom_4/strided_slice/stack:output:0,random_zoom_4/strided_slice/stack_1:output:0,random_zoom_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€x
%random_zoom_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€o
%random_zoom_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
random_zoom_4/strided_slice_1StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_1/stack:output:0.random_zoom_4/strided_slice_1/stack_1:output:0.random_zoom_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_4/CastCast&random_zoom_4/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€x
%random_zoom_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€o
%random_zoom_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
random_zoom_4/strided_slice_2StridedSlicerandom_zoom_4/Shape:output:0,random_zoom_4/strided_slice_2/stack:output:0.random_zoom_4/strided_slice_2/stack_1:output:0.random_zoom_4/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_4/Cast_1Cast&random_zoom_4/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_4/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :±
$random_zoom_4/stateful_uniform/shapePack$random_zoom_4/strided_slice:output:0/random_zoom_4/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_4/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *fff?g
"random_zoom_4/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћМ?n
$random_zoom_4/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
#random_zoom_4/stateful_uniform/ProdProd-random_zoom_4/stateful_uniform/shape:output:0-random_zoom_4/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_4/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Л
%random_zoom_4/stateful_uniform/Cast_1Cast,random_zoom_4/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: о
-random_zoom_4/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_4_stateful_uniform_rngreadandskip_resource.random_zoom_4/stateful_uniform/Cast/x:output:0)random_zoom_4/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_4/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_4/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_4/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
,random_zoom_4/stateful_uniform/strided_sliceStridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0;random_zoom_4/stateful_uniform/strided_slice/stack:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_4/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЩ
&random_zoom_4/stateful_uniform/BitcastBitcast5random_zoom_4/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_4/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_4/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_4/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
.random_zoom_4/stateful_uniform/strided_slice_1StridedSlice5random_zoom_4/stateful_uniform/RngReadAndSkip:value:0=random_zoom_4/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_4/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Э
(random_zoom_4/stateful_uniform/Bitcast_1Bitcast7random_zoom_4/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_4/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :’
7random_zoom_4/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_4/stateful_uniform/shape:output:01random_zoom_4/stateful_uniform/Bitcast_1:output:0/random_zoom_4/stateful_uniform/Bitcast:output:0Drandom_zoom_4/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€§
"random_zoom_4/stateful_uniform/subSub+random_zoom_4/stateful_uniform/max:output:0+random_zoom_4/stateful_uniform/min:output:0*
T0*
_output_shapes
: ≈
"random_zoom_4/stateful_uniform/mulMul@random_zoom_4/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_4/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
random_zoom_4/stateful_uniformAddV2&random_zoom_4/stateful_uniform/mul:z:0+random_zoom_4/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
random_zoom_4/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :«
random_zoom_4/concatConcatV2"random_zoom_4/stateful_uniform:z:0"random_zoom_4/stateful_uniform:z:0"random_zoom_4/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€l
random_zoom_4/zoom_matrix/ShapeShaperandom_zoom_4/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_4/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_4/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_4/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'random_zoom_4/zoom_matrix/strided_sliceStridedSlice(random_zoom_4/zoom_matrix/Shape:output:06random_zoom_4/zoom_matrix/strided_slice/stack:output:08random_zoom_4/zoom_matrix/strided_slice/stack_1:output:08random_zoom_4/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_4/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Й
random_zoom_4/zoom_matrix/subSubrandom_zoom_4/Cast_1:y:0(random_zoom_4/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_4/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
!random_zoom_4/zoom_matrix/truedivRealDiv!random_zoom_4/zoom_matrix/sub:z:0,random_zoom_4/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_4/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_4/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_4/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_4/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_4/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Є
random_zoom_4/zoom_matrix/sub_1Sub*random_zoom_4/zoom_matrix/sub_1/x:output:02random_zoom_4/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
random_zoom_4/zoom_matrix/mulMul%random_zoom_4/zoom_matrix/truediv:z:0#random_zoom_4/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
!random_zoom_4/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
random_zoom_4/zoom_matrix/sub_2Subrandom_zoom_4/Cast:y:0*random_zoom_4/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_4/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
#random_zoom_4/zoom_matrix/truediv_1RealDiv#random_zoom_4/zoom_matrix/sub_2:z:0.random_zoom_4/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_4/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_4/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_4/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_4/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_4/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Є
random_zoom_4/zoom_matrix/sub_3Sub*random_zoom_4/zoom_matrix/sub_3/x:output:02random_zoom_4/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€¶
random_zoom_4/zoom_matrix/mul_1Mul'random_zoom_4/zoom_matrix/truediv_1:z:0#random_zoom_4/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
/random_zoom_4/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_4/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_4/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_4/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_4/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
&random_zoom_4/zoom_matrix/zeros/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:01random_zoom_4/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_4/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
random_zoom_4/zoom_matrix/zerosFill/random_zoom_4/zoom_matrix/zeros/packed:output:0.random_zoom_4/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
*random_zoom_4/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≈
(random_zoom_4/zoom_matrix/zeros_1/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_4/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ј
!random_zoom_4/zoom_matrix/zeros_1Fill1random_zoom_4/zoom_matrix/zeros_1/packed:output:00random_zoom_4/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Д
/random_zoom_4/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_4/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_4/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_4/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_4/concat:output:08random_zoom_4/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_4/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_4/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≈
(random_zoom_4/zoom_matrix/zeros_2/packedPack0random_zoom_4/zoom_matrix/strided_slice:output:03random_zoom_4/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_4/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ј
!random_zoom_4/zoom_matrix/zeros_2Fill1random_zoom_4/zoom_matrix/zeros_2/packed:output:00random_zoom_4/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
%random_zoom_4/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :…
 random_zoom_4/zoom_matrix/concatConcatV22random_zoom_4/zoom_matrix/strided_slice_3:output:0(random_zoom_4/zoom_matrix/zeros:output:0!random_zoom_4/zoom_matrix/mul:z:0*random_zoom_4/zoom_matrix/zeros_1:output:02random_zoom_4/zoom_matrix/strided_slice_4:output:0#random_zoom_4/zoom_matrix/mul_1:z:0*random_zoom_4/zoom_matrix/zeros_2:output:0.random_zoom_4/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ш
random_zoom_4/transform/ShapeShapeKrandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:u
+random_zoom_4/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_4/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_4/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
%random_zoom_4/transform/strided_sliceStridedSlice&random_zoom_4/transform/Shape:output:04random_zoom_4/transform/strided_slice/stack:output:06random_zoom_4/transform/strided_slice/stack_1:output:06random_zoom_4/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_4/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ъ
2random_zoom_4/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_4/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_4/zoom_matrix/concat:output:0.random_zoom_4/transform/strided_slice:output:0+random_zoom_4/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR†
IdentityIdentityGrandom_zoom_4/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААƒ
NoOpNoOp^random_flip_4/map/while2^random_rotation_4/stateful_uniform/RngReadAndSkip.^random_zoom_4/stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
random_flip_4/map/whilerandom_flip_4/map/while2f
1random_rotation_4/stateful_uniform/RngReadAndSkip1random_rotation_4/stateful_uniform/RngReadAndSkip2^
-random_zoom_4/stateful_uniform/RngReadAndSkip-random_zoom_4/stateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Эn
г
G__inference_sequential_9_layer_call_and_return_conditional_losses_49086

inputsB
(conv2d_32_conv2d_readvariableop_resource:7
)conv2d_32_biasadd_readvariableop_resource:B
(conv2d_33_conv2d_readvariableop_resource:7
)conv2d_33_biasadd_readvariableop_resource:B
(conv2d_34_conv2d_readvariableop_resource:7
)conv2d_34_biasadd_readvariableop_resource:B
(conv2d_35_conv2d_readvariableop_resource:7
)conv2d_35_biasadd_readvariableop_resource:B
(conv2d_36_conv2d_readvariableop_resource: 7
)conv2d_36_biasadd_readvariableop_resource: B
(conv2d_37_conv2d_readvariableop_resource: @7
)conv2d_37_biasadd_readvariableop_resource:@C
(conv2d_38_conv2d_readvariableop_resource:@А8
)conv2d_38_biasadd_readvariableop_resource:	АD
(conv2d_39_conv2d_readvariableop_resource:АА8
)conv2d_39_biasadd_readvariableop_resource:	А:
&dense_8_matmul_readvariableop_resource:
АА6
'dense_8_biasadd_readvariableop_resource:	А9
&dense_9_matmul_readvariableop_resource:	А5
'dense_9_biasadd_readvariableop_resource:
identityИҐ conv2d_32/BiasAdd/ReadVariableOpҐconv2d_32/Conv2D/ReadVariableOpҐ conv2d_33/BiasAdd/ReadVariableOpҐconv2d_33/Conv2D/ReadVariableOpҐ conv2d_34/BiasAdd/ReadVariableOpҐconv2d_34/Conv2D/ReadVariableOpҐ conv2d_35/BiasAdd/ReadVariableOpҐconv2d_35/Conv2D/ReadVariableOpҐ conv2d_36/BiasAdd/ReadVariableOpҐconv2d_36/Conv2D/ReadVariableOpҐ conv2d_37/BiasAdd/ReadVariableOpҐconv2d_37/Conv2D/ReadVariableOpҐ conv2d_38/BiasAdd/ReadVariableOpҐconv2d_38/Conv2D/ReadVariableOpҐ conv2d_39/BiasAdd/ReadVariableOpҐconv2d_39/Conv2D/ReadVariableOpҐdense_8/BiasAdd/ReadVariableOpҐdense_8/MatMul/ReadVariableOpҐdense_9/BiasAdd/ReadVariableOpҐdense_9/MatMul/ReadVariableOpW
rescaling_9/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_9/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    w
rescaling_9/mulMulinputsrescaling_9/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААИ
rescaling_9/addAddV2rescaling_9/mul:z:0rescaling_9/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААР
conv2d_32/Conv2D/ReadVariableOpReadVariableOp(conv2d_32_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0Љ
conv2d_32/Conv2DConv2Drescaling_9/add:z:0'conv2d_32/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ж
 conv2d_32/BiasAdd/ReadVariableOpReadVariableOp)conv2d_32_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_32/BiasAddBiasAddconv2d_32/Conv2D:output:0(conv2d_32/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААn
conv2d_32/ReluReluconv2d_32/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА∞
max_pooling2d_32/MaxPoolMaxPoolconv2d_32/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА*
ksize
*
paddingVALID*
strides
Р
conv2d_33/Conv2D/ReadVariableOpReadVariableOp(conv2d_33_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0 
conv2d_33/Conv2DConv2D!max_pooling2d_32/MaxPool:output:0'conv2d_33/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ж
 conv2d_33/BiasAdd/ReadVariableOpReadVariableOp)conv2d_33_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_33/BiasAddBiasAddconv2d_33/Conv2D:output:0(conv2d_33/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААn
conv2d_33/ReluReluconv2d_33/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА∞
max_pooling2d_33/MaxPoolMaxPoolconv2d_33/Relu:activations:0*1
_output_shapes
:€€€€€€€€€АА*
ksize
*
paddingVALID*
strides
Р
conv2d_34/Conv2D/ReadVariableOpReadVariableOp(conv2d_34_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0 
conv2d_34/Conv2DConv2D!max_pooling2d_33/MaxPool:output:0'conv2d_34/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€АА*
paddingSAME*
strides
Ж
 conv2d_34/BiasAdd/ReadVariableOpReadVariableOp)conv2d_34_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Э
conv2d_34/BiasAddBiasAddconv2d_34/Conv2D:output:0(conv2d_34/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ААn
conv2d_34/ReluReluconv2d_34/BiasAdd:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААЃ
max_pooling2d_34/MaxPoolMaxPoolconv2d_34/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@@*
ksize
*
paddingVALID*
strides
Р
conv2d_35/Conv2D/ReadVariableOpReadVariableOp(conv2d_35_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype0»
conv2d_35/Conv2DConv2D!max_pooling2d_34/MaxPool:output:0'conv2d_35/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@*
paddingSAME*
strides
Ж
 conv2d_35/BiasAdd/ReadVariableOpReadVariableOp)conv2d_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ы
conv2d_35/BiasAddBiasAddconv2d_35/Conv2D:output:0(conv2d_35/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@@l
conv2d_35/ReluReluconv2d_35/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@@Ѓ
max_pooling2d_35/MaxPoolMaxPoolconv2d_35/Relu:activations:0*/
_output_shapes
:€€€€€€€€€  *
ksize
*
paddingVALID*
strides
Р
conv2d_36/Conv2D/ReadVariableOpReadVariableOp(conv2d_36_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0»
conv2d_36/Conv2DConv2D!max_pooling2d_35/MaxPool:output:0'conv2d_36/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
Ж
 conv2d_36/BiasAdd/ReadVariableOpReadVariableOp)conv2d_36_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ы
conv2d_36/BiasAddBiasAddconv2d_36/Conv2D:output:0(conv2d_36/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   l
conv2d_36/ReluReluconv2d_36/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   Ѓ
max_pooling2d_36/MaxPoolMaxPoolconv2d_36/Relu:activations:0*/
_output_shapes
:€€€€€€€€€ *
ksize
*
paddingVALID*
strides
Р
conv2d_37/Conv2D/ReadVariableOpReadVariableOp(conv2d_37_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0»
conv2d_37/Conv2DConv2D!max_pooling2d_36/MaxPool:output:0'conv2d_37/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@*
paddingSAME*
strides
Ж
 conv2d_37/BiasAdd/ReadVariableOpReadVariableOp)conv2d_37_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Ы
conv2d_37/BiasAddBiasAddconv2d_37/Conv2D:output:0(conv2d_37/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€@l
conv2d_37/ReluReluconv2d_37/BiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€@Ѓ
max_pooling2d_37/MaxPoolMaxPoolconv2d_37/Relu:activations:0*/
_output_shapes
:€€€€€€€€€@*
ksize
*
paddingVALID*
strides
С
conv2d_38/Conv2D/ReadVariableOpReadVariableOp(conv2d_38_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0…
conv2d_38/Conv2DConv2D!max_pooling2d_37/MaxPool:output:0'conv2d_38/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_38/BiasAdd/ReadVariableOpReadVariableOp)conv2d_38_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_38/BiasAddBiasAddconv2d_38/Conv2D:output:0(conv2d_38/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
conv2d_38/ReluReluconv2d_38/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аѓ
max_pooling2d_38/MaxPoolMaxPoolconv2d_38/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
Т
conv2d_39/Conv2D/ReadVariableOpReadVariableOp(conv2d_39_conv2d_readvariableop_resource*(
_output_shapes
:АА*
dtype0…
conv2d_39/Conv2DConv2D!max_pooling2d_38/MaxPool:output:0'conv2d_39/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€А*
paddingSAME*
strides
З
 conv2d_39/BiasAdd/ReadVariableOpReadVariableOp)conv2d_39_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Ь
conv2d_39/BiasAddBiasAddconv2d_39/Conv2D:output:0(conv2d_39/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:€€€€€€€€€Аm
conv2d_39/ReluReluconv2d_39/BiasAdd:output:0*
T0*0
_output_shapes
:€€€€€€€€€Аѓ
max_pooling2d_39/MaxPoolMaxPoolconv2d_39/Relu:activations:0*0
_output_shapes
:€€€€€€€€€А*
ksize
*
paddingVALID*
strides
|
dropout_8/IdentityIdentity!max_pooling2d_39/MaxPool:output:0*
T0*0
_output_shapes
:€€€€€€€€€А`
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€   Ж
flatten_4/ReshapeReshapedropout_8/Identity:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЖ
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0О
dense_8/MatMulMatMulflatten_4/Reshape:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0П
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
dropout_9/IdentityIdentitydense_8/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0О
dense_9/MatMulMatMuldropout_9/Identity:output:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€В
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0О
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€g
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€р
NoOpNoOp!^conv2d_32/BiasAdd/ReadVariableOp ^conv2d_32/Conv2D/ReadVariableOp!^conv2d_33/BiasAdd/ReadVariableOp ^conv2d_33/Conv2D/ReadVariableOp!^conv2d_34/BiasAdd/ReadVariableOp ^conv2d_34/Conv2D/ReadVariableOp!^conv2d_35/BiasAdd/ReadVariableOp ^conv2d_35/Conv2D/ReadVariableOp!^conv2d_36/BiasAdd/ReadVariableOp ^conv2d_36/Conv2D/ReadVariableOp!^conv2d_37/BiasAdd/ReadVariableOp ^conv2d_37/Conv2D/ReadVariableOp!^conv2d_38/BiasAdd/ReadVariableOp ^conv2d_38/Conv2D/ReadVariableOp!^conv2d_39/BiasAdd/ReadVariableOp ^conv2d_39/Conv2D/ReadVariableOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:€€€€€€€€€АА: : : : : : : : : : : : : : : : : : : : 2D
 conv2d_32/BiasAdd/ReadVariableOp conv2d_32/BiasAdd/ReadVariableOp2B
conv2d_32/Conv2D/ReadVariableOpconv2d_32/Conv2D/ReadVariableOp2D
 conv2d_33/BiasAdd/ReadVariableOp conv2d_33/BiasAdd/ReadVariableOp2B
conv2d_33/Conv2D/ReadVariableOpconv2d_33/Conv2D/ReadVariableOp2D
 conv2d_34/BiasAdd/ReadVariableOp conv2d_34/BiasAdd/ReadVariableOp2B
conv2d_34/Conv2D/ReadVariableOpconv2d_34/Conv2D/ReadVariableOp2D
 conv2d_35/BiasAdd/ReadVariableOp conv2d_35/BiasAdd/ReadVariableOp2B
conv2d_35/Conv2D/ReadVariableOpconv2d_35/Conv2D/ReadVariableOp2D
 conv2d_36/BiasAdd/ReadVariableOp conv2d_36/BiasAdd/ReadVariableOp2B
conv2d_36/Conv2D/ReadVariableOpconv2d_36/Conv2D/ReadVariableOp2D
 conv2d_37/BiasAdd/ReadVariableOp conv2d_37/BiasAdd/ReadVariableOp2B
conv2d_37/Conv2D/ReadVariableOpconv2d_37/Conv2D/ReadVariableOp2D
 conv2d_38/BiasAdd/ReadVariableOp conv2d_38/BiasAdd/ReadVariableOp2B
conv2d_38/Conv2D/ReadVariableOpconv2d_38/Conv2D/ReadVariableOp2D
 conv2d_39/BiasAdd/ReadVariableOp conv2d_39/BiasAdd/ReadVariableOp2B
conv2d_39/Conv2D/ReadVariableOpconv2d_39/Conv2D/ReadVariableOp2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ЧА
≈
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50463

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|ў њY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|ў ?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€АА*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
–
I
-__inference_random_zoom_4_layer_call_fn_50468

inputs
identityј
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47539j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Эx
©

/sequential_8_random_flip_4_map_while_body_49102Z
Vsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_while_loop_counterU
Qsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice4
0sequential_8_random_flip_4_map_while_placeholder6
2sequential_8_random_flip_4_map_while_placeholder_1Y
Usequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice_1_0Ц
Сsequential_8_random_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_sequential_8_random_flip_4_map_tensorarrayunstack_tensorlistfromtensor_0f
Xsequential_8_random_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource_0:	1
-sequential_8_random_flip_4_map_while_identity3
/sequential_8_random_flip_4_map_while_identity_13
/sequential_8_random_flip_4_map_while_identity_23
/sequential_8_random_flip_4_map_while_identity_3W
Ssequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice_1Ф
Пsequential_8_random_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_sequential_8_random_flip_4_map_tensorarrayunstack_tensorlistfromtensord
Vsequential_8_random_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource:	ИҐMsequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkipЂ
Vsequential_8/random_flip_4/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         њ
Hsequential_8/random_flip_4/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemСsequential_8_random_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_sequential_8_random_flip_4_map_tensorarrayunstack_tensorlistfromtensor_00sequential_8_random_flip_4_map_while_placeholder_sequential_8/random_flip_4/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:АА*
element_dtype0О
Dsequential_8/random_flip_4/map/while/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:О
Dsequential_8/random_flip_4/map/while/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: К
Csequential_8/random_flip_4/map/while/stateful_uniform_full_int/ProdProdMsequential_8/random_flip_4/map/while/stateful_uniform_full_int/shape:output:0Msequential_8/random_flip_4/map/while/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: З
Esequential_8/random_flip_4/map/while/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ћ
Esequential_8/random_flip_4/map/while/stateful_uniform_full_int/Cast_1CastLsequential_8/random_flip_4/map/while/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: р
Msequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipXsequential_8_random_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource_0Nsequential_8/random_flip_4/map/while/stateful_uniform_full_int/Cast/x:output:0Isequential_8/random_flip_4/map/while/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Ь
Rsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ю
Tsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ю
Tsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Т
Lsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_sliceStridedSliceUsequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0[sequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack:output:0]sequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_1:output:0]sequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskў
Fsequential_8/random_flip_4/map/while/stateful_uniform_full_int/BitcastBitcastUsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ю
Tsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:†
Vsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:†
Vsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
Nsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1StridedSliceUsequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip:value:0]sequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack:output:0_sequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_1:output:0_sequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ё
Hsequential_8/random_flip_4/map/while/stateful_uniform_full_int/Bitcast_1BitcastWsequential_8/random_flip_4/map/while/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Д
Bsequential_8/random_flip_4/map/while/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B : 
>sequential_8/random_flip_4/map/while/stateful_uniform_full_intStatelessRandomUniformFullIntV2Msequential_8/random_flip_4/map/while/stateful_uniform_full_int/shape:output:0Qsequential_8/random_flip_4/map/while/stateful_uniform_full_int/Bitcast_1:output:0Osequential_8/random_flip_4/map/while/stateful_uniform_full_int/Bitcast:output:0Ksequential_8/random_flip_4/map/while/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	y
/sequential_8/random_flip_4/map/while/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R з
*sequential_8/random_flip_4/map/while/stackPackGsequential_8/random_flip_4/map/while/stateful_uniform_full_int:output:08sequential_8/random_flip_4/map/while/zeros_like:output:0*
N*
T0	*
_output_shapes

:Й
8sequential_8/random_flip_4/map/while/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Л
:sequential_8/random_flip_4/map/while/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Л
:sequential_8/random_flip_4/map/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ∞
2sequential_8/random_flip_4/map/while/strided_sliceStridedSlice3sequential_8/random_flip_4/map/while/stack:output:0Asequential_8/random_flip_4/map/while/strided_slice/stack:output:0Csequential_8/random_flip_4/map/while/strided_slice/stack_1:output:0Csequential_8/random_flip_4/map/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЅ
Xsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/control_dependencyIdentityOsequential_8/random_flip_4/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*[
_classQ
OMloc:@sequential_8/random_flip_4/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ААІ
dsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/shapeConst*
_output_shapes
: *
dtype0*
valueB І
bsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    І
bsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ъ
{sequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter;sequential_8/random_flip_4/map/while/strided_slice:output:0* 
_output_shapes
::љ
{sequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :≠
wsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2msequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0Бsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Еsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Дsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
: д
bsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/subSubksequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/max:output:0ksequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: х
bsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/mulMulАsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0fsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*
_output_shapes
: Ё
^sequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniformAddV2fsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0ksequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: С
Lsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/Less/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Ѓ
Jsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/LessLessbsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/stateless_random_uniform:z:0Usequential_8/random_flip_4/map/while/stateless_random_flip_left_right/Less/y:output:0*
T0*
_output_shapes
: К
Esequential_8/random_flip_4/map/while/stateless_random_flip_left_rightStatelessIfNsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/Less:z:0asequential_8/random_flip_4/map/while/stateless_random_flip_left_right/control_dependency:output:0*
Tcond0
*
Tin
2*
Tout
2*
_lower_using_switch_merge(*$
_output_shapes
:АА* 
_read_only_resource_inputs
 *d
else_branchURS
Qsequential_8_random_flip_4_map_while_stateless_random_flip_left_right_false_49162*#
output_shapes
:АА*c
then_branchTRR
Psequential_8_random_flip_4_map_while_stateless_random_flip_left_right_true_49161ў
Nsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/IdentityIdentityNsequential_8/random_flip_4/map/while/stateless_random_flip_left_right:output:0*
T0*$
_output_shapes
:ААЁ
Isequential_8/random_flip_4/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2sequential_8_random_flip_4_map_while_placeholder_10sequential_8_random_flip_4_map_while_placeholderWsequential_8/random_flip_4/map/while/stateless_random_flip_left_right/Identity:output:0*
_output_shapes
: *
element_dtype0:йи“l
*sequential_8/random_flip_4/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :є
(sequential_8/random_flip_4/map/while/addAddV20sequential_8_random_flip_4_map_while_placeholder3sequential_8/random_flip_4/map/while/add/y:output:0*
T0*
_output_shapes
: n
,sequential_8/random_flip_4/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :г
*sequential_8/random_flip_4/map/while/add_1AddV2Vsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_while_loop_counter5sequential_8/random_flip_4/map/while/add_1/y:output:0*
T0*
_output_shapes
: ґ
-sequential_8/random_flip_4/map/while/IdentityIdentity.sequential_8/random_flip_4/map/while/add_1:z:0*^sequential_8/random_flip_4/map/while/NoOp*
T0*
_output_shapes
: џ
/sequential_8/random_flip_4/map/while/Identity_1IdentityQsequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice*^sequential_8/random_flip_4/map/while/NoOp*
T0*
_output_shapes
: ґ
/sequential_8/random_flip_4/map/while/Identity_2Identity,sequential_8/random_flip_4/map/while/add:z:0*^sequential_8/random_flip_4/map/while/NoOp*
T0*
_output_shapes
: г
/sequential_8/random_flip_4/map/while/Identity_3IdentityYsequential_8/random_flip_4/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^sequential_8/random_flip_4/map/while/NoOp*
T0*
_output_shapes
: ї
)sequential_8/random_flip_4/map/while/NoOpNoOpN^sequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "g
-sequential_8_random_flip_4_map_while_identity6sequential_8/random_flip_4/map/while/Identity:output:0"k
/sequential_8_random_flip_4_map_while_identity_18sequential_8/random_flip_4/map/while/Identity_1:output:0"k
/sequential_8_random_flip_4_map_while_identity_28sequential_8/random_flip_4/map/while/Identity_2:output:0"k
/sequential_8_random_flip_4_map_while_identity_38sequential_8/random_flip_4/map/while/Identity_3:output:0"ђ
Ssequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice_1Usequential_8_random_flip_4_map_while_sequential_8_random_flip_4_map_strided_slice_1_0"≤
Vsequential_8_random_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resourceXsequential_8_random_flip_4_map_while_stateful_uniform_full_int_rngreadandskip_resource_0"¶
Пsequential_8_random_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_sequential_8_random_flip_4_map_tensorarrayunstack_tensorlistfromtensorСsequential_8_random_flip_4_map_while_tensorarrayv2read_tensorlistgetitem_sequential_8_random_flip_4_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : : : 2Ю
Msequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkipMsequential_8/random_flip_4/map/while/stateful_uniform_full_int/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
У
g
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_49980

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
»
Ч
'__inference_dense_8_layer_call_fn_50147

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_dense_8_layer_call_and_return_conditional_losses_48257p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•

ц
B__inference_dense_8_layer_call_and_return_conditional_losses_50158

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•
Ф
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50329

inputs
map_while_input_6:	
identityИҐ	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Њ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         б
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_50236* 
condR
map_while_cond_50235*!
output_shapes
: : : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ‘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0И
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2
	map/while	map/while:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ъ	
c
D__inference_dropout_9_layer_call_and_return_conditional_losses_50185

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
…	
ф
B__inference_dense_9_layer_call_and_return_conditional_losses_48280

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
•
Ф
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47908

inputs
map_while_input_6:	
identityИҐ	map/while?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:е
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€Њ
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“О
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         б
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“K
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€¬
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“X
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : З
	map/whileWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0map_while_input_6*
T
	2*
_lower_using_switch_merge(*
_num_original_outputs*"
_output_shapes
: : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( * 
bodyR
map_while_body_47815* 
condR
map_while_cond_47814*!
output_shapes
: : : : : : : Й
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"         ‘
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:€€€€€€€€€АА*
element_dtype0И
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ААR
NoOpNoOp
^map/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€АА: 2
	map/while	map/while:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
У
g
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_48066

inputs
identityҐ
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
ф
c
G__inference_sequential_8_layer_call_and_return_conditional_losses_47542

inputs
identityќ
random_flip_4/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_47527ц
!random_rotation_4/PartitionedCallPartitionedCall&random_flip_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *U
fPRN
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_47533т
random_zoom_4/PartitionedCallPartitionedCall*random_rotation_4/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *Q
fLRJ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_47539x
IdentityIdentity&random_zoom_4/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
ш
b
F__inference_rescaling_9_layer_call_and_return_conditional_losses_48085

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ААY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€АА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€АА:Y U
1
_output_shapes
:€€€€€€€€€АА
 
_user_specified_nameinputs
Г
э
D__inference_conv2d_36_layer_call_and_return_conditional_losses_48170

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:€€€€€€€€€   X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:€€€€€€€€€   i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:€€€€€€€€€   w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€  : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:€€€€€€€€€  
 
_user_specified_nameinputs
ї
L
0__inference_max_pooling2d_36_layer_call_fn_50005

inputs
identity№
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_48030Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€:r n
J
_output_shapes8
6:4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
 
_user_specified_nameinputs
є
ї
,__inference_sequential_8_layer_call_fn_47953
random_flip_4_input
unknown:	
	unknown_0:	
	unknown_1:	
identityИҐStatefulPartitionedCallю
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_4_inputunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€АА* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *P
fKRI
G__inference_sequential_8_layer_call_and_return_conditional_losses_47933y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€АА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:€€€€€€€€€АА: : : 22
StatefulPartitionedCallStatefulPartitionedCall:f b
1
_output_shapes
:€€€€€€€€€АА
-
_user_specified_namerandom_flip_4_input"њL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp* 
serving_defaultґ
[
sequential_8_inputE
$serving_default_sequential_8_input:0€€€€€€€€€АА;
dense_90
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Ув
Ґ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer-9
layer_with_weights-4
layer-10
layer-11
layer_with_weights-5
layer-12
layer-13
layer_with_weights-6
layer-14
layer-15
layer_with_weights-7
layer-16
layer-17
layer-18
layer-19
layer_with_weights-8
layer-20
layer-21
layer_with_weights-9
layer-22
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
 
signatures"
_tf_keras_sequential
—
!layer-0
"layer-1
#layer-2
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_sequential
•
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses

6kernel
7bias
 8_jit_compiled_convolution_op"
_tf_keras_layer
•
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses

Ekernel
Fbias
 G_jit_compiled_convolution_op"
_tf_keras_layer
•
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses

Tkernel
Ubias
 V_jit_compiled_convolution_op"
_tf_keras_layer
•
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias
 e_jit_compiled_convolution_op"
_tf_keras_layer
•
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
Ё
l	variables
mtrainable_variables
nregularization_losses
o	keras_api
p__call__
*q&call_and_return_all_conditional_losses

rkernel
sbias
 t_jit_compiled_convolution_op"
_tf_keras_layer
•
u	variables
vtrainable_variables
wregularization_losses
x	keras_api
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
б
{	variables
|trainable_variables
}regularization_losses
~	keras_api
__call__
+А&call_and_return_all_conditional_losses
Бkernel
	Вbias
!Г_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
ж
К	variables
Лtrainable_variables
Мregularization_losses
Н	keras_api
О__call__
+П&call_and_return_all_conditional_losses
Рkernel
	Сbias
!Т_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
ж
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses
Яkernel
	†bias
!°_jit_compiled_convolution_op"
_tf_keras_layer
Ђ
Ґ	variables
£trainable_variables
§regularization_losses
•	keras_api
¶__call__
+І&call_and_return_all_conditional_losses"
_tf_keras_layer
√
®	variables
©trainable_variables
™regularization_losses
Ђ	keras_api
ђ__call__
+≠&call_and_return_all_conditional_losses
Ѓ_random_generator"
_tf_keras_layer
Ђ
ѓ	variables
∞trainable_variables
±regularization_losses
≤	keras_api
≥__call__
+і&call_and_return_all_conditional_losses"
_tf_keras_layer
√
µ	variables
ґtrainable_variables
Јregularization_losses
Є	keras_api
є__call__
+Ї&call_and_return_all_conditional_losses
їkernel
	Љbias"
_tf_keras_layer
√
љ	variables
Њtrainable_variables
њregularization_losses
ј	keras_api
Ѕ__call__
+¬&call_and_return_all_conditional_losses
√_random_generator"
_tf_keras_layer
√
ƒ	variables
≈trainable_variables
∆regularization_losses
«	keras_api
»__call__
+…&call_and_return_all_conditional_losses
 kernel
	Ћbias"
_tf_keras_layer
ј
60
71
E2
F3
T4
U5
c6
d7
r8
s9
Б10
В11
Р12
С13
Я14
†15
ї16
Љ17
 18
Ћ19"
trackable_list_wrapper
ј
60
71
E2
F3
T4
U5
c6
d7
r8
s9
Б10
В11
Р12
С13
Я14
†15
ї16
Љ17
 18
Ћ19"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
ћnon_trainable_variables
Ќlayers
ќmetrics
 ѕlayer_regularization_losses
–layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
о
—trace_0
“trace_1
”trace_2
‘trace_32ы
,__inference_sequential_9_layer_call_fn_48330
,__inference_sequential_9_layer_call_fn_48946
,__inference_sequential_9_layer_call_fn_48997
,__inference_sequential_9_layer_call_fn_48708ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z—trace_0z“trace_1z”trace_2z‘trace_3
Џ
’trace_0
÷trace_1
„trace_2
Ўtrace_32з
G__inference_sequential_9_layer_call_and_return_conditional_losses_49086
G__inference_sequential_9_layer_call_and_return_conditional_losses_49506
G__inference_sequential_9_layer_call_and_return_conditional_losses_48775
G__inference_sequential_9_layer_call_and_return_conditional_losses_48848ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z’trace_0z÷trace_1z„trace_2zЎtrace_3
÷B”
 __inference__wrapped_model_47516sequential_8_input"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ь
	ўiter
Џbeta_1
џbeta_2

№decay
Ёlearning_rate6mЋ7mћEmЌFmќTmѕUm–cm—dm“rm”sm‘	Бm’	Вm÷	Рm„	СmЎ	Яmў	†mЏ	їmџ	Љm№	 mЁ	Ћmё6vя7vаEvбFvвTvгUvдcvеdvжrvзsvи	Бvй	Вvк	Рvл	Сvм	Яvн	†vо	їvп	Љvр	 vс	Ћvт"
	optimizer
-
ёserving_default"
signature_map
√
я	variables
аtrainable_variables
бregularization_losses
в	keras_api
г__call__
+д&call_and_return_all_conditional_losses
е_random_generator"
_tf_keras_layer
√
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator"
_tf_keras_layer
√
н	variables
оtrainable_variables
пregularization_losses
р	keras_api
с__call__
+т&call_and_return_all_conditional_losses
у_random_generator"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
фnon_trainable_variables
хlayers
цmetrics
 чlayer_regularization_losses
шlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
о
щtrace_0
ъtrace_1
ыtrace_2
ьtrace_32ы
,__inference_sequential_8_layer_call_fn_47545
,__inference_sequential_8_layer_call_fn_49511
,__inference_sequential_8_layer_call_fn_49522
,__inference_sequential_8_layer_call_fn_47953ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zщtrace_0zъtrace_1zыtrace_2zьtrace_3
Џ
эtrace_0
юtrace_1
€trace_2
Аtrace_32з
G__inference_sequential_8_layer_call_and_return_conditional_losses_49526
G__inference_sequential_8_layer_call_and_return_conditional_losses_49847
G__inference_sequential_8_layer_call_and_return_conditional_losses_47960
G__inference_sequential_8_layer_call_and_return_conditional_losses_47973ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zэtrace_0zюtrace_1z€trace_2zАtrace_3
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
с
Жtrace_02“
+__inference_rescaling_9_layer_call_fn_49852Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
М
Зtrace_02н
F__inference_rescaling_9_layer_call_and_return_conditional_losses_49860Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
п
Нtrace_02–
)__inference_conv2d_32_layer_call_fn_49869Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
К
Оtrace_02л
D__inference_conv2d_32_layer_call_and_return_conditional_losses_49880Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
*:(2conv2d_32/kernel
:2conv2d_32/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
ц
Фtrace_02„
0__inference_max_pooling2d_32_layer_call_fn_49885Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zФtrace_0
С
Хtrace_02т
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_49890Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zХtrace_0
.
E0
F1"
trackable_list_wrapper
.
E0
F1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
п
Ыtrace_02–
)__inference_conv2d_33_layer_call_fn_49899Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЫtrace_0
К
Ьtrace_02л
D__inference_conv2d_33_layer_call_and_return_conditional_losses_49910Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЬtrace_0
*:(2conv2d_33/kernel
:2conv2d_33/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Эnon_trainable_variables
Юlayers
Яmetrics
 †layer_regularization_losses
°layer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
ц
Ґtrace_02„
0__inference_max_pooling2d_33_layer_call_fn_49915Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zҐtrace_0
С
£trace_02т
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_49920Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z£trace_0
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
§non_trainable_variables
•layers
¶metrics
 Іlayer_regularization_losses
®layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
п
©trace_02–
)__inference_conv2d_34_layer_call_fn_49929Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z©trace_0
К
™trace_02л
D__inference_conv2d_34_layer_call_and_return_conditional_losses_49940Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z™trace_0
*:(2conv2d_34/kernel
:2conv2d_34/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
ц
∞trace_02„
0__inference_max_pooling2d_34_layer_call_fn_49945Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∞trace_0
С
±trace_02т
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_49950Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z±trace_0
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
п
Јtrace_02–
)__inference_conv2d_35_layer_call_fn_49959Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЈtrace_0
К
Єtrace_02л
D__inference_conv2d_35_layer_call_and_return_conditional_losses_49970Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЄtrace_0
*:(2conv2d_35/kernel
:2conv2d_35/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
єnon_trainable_variables
Їlayers
їmetrics
 Љlayer_regularization_losses
љlayer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
ц
Њtrace_02„
0__inference_max_pooling2d_35_layer_call_fn_49975Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЊtrace_0
С
њtrace_02т
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_49980Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zњtrace_0
.
r0
s1"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
јnon_trainable_variables
Ѕlayers
¬metrics
 √layer_regularization_losses
ƒlayer_metrics
l	variables
mtrainable_variables
nregularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
п
≈trace_02–
)__inference_conv2d_36_layer_call_fn_49989Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z≈trace_0
К
∆trace_02л
D__inference_conv2d_36_layer_call_and_return_conditional_losses_50000Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z∆trace_0
*:( 2conv2d_36/kernel
: 2conv2d_36/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
«non_trainable_variables
»layers
…metrics
  layer_regularization_losses
Ћlayer_metrics
u	variables
vtrainable_variables
wregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
ц
ћtrace_02„
0__inference_max_pooling2d_36_layer_call_fn_50005Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zћtrace_0
С
Ќtrace_02т
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_50010Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЌtrace_0
0
Б0
В1"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
і
ќnon_trainable_variables
ѕlayers
–metrics
 —layer_regularization_losses
“layer_metrics
{	variables
|trainable_variables
}regularization_losses
__call__
+А&call_and_return_all_conditional_losses
'А"call_and_return_conditional_losses"
_generic_user_object
п
”trace_02–
)__inference_conv2d_37_layer_call_fn_50019Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z”trace_0
К
‘trace_02л
D__inference_conv2d_37_layer_call_and_return_conditional_losses_50030Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z‘trace_0
*:( @2conv2d_37/kernel
:@2conv2d_37/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
ц
Џtrace_02„
0__inference_max_pooling2d_37_layer_call_fn_50035Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЏtrace_0
С
џtrace_02т
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_50040Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zџtrace_0
0
Р0
С1"
trackable_list_wrapper
0
Р0
С1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
№non_trainable_variables
Ёlayers
ёmetrics
 яlayer_regularization_losses
аlayer_metrics
К	variables
Лtrainable_variables
Мregularization_losses
О__call__
+П&call_and_return_all_conditional_losses
'П"call_and_return_conditional_losses"
_generic_user_object
п
бtrace_02–
)__inference_conv2d_38_layer_call_fn_50049Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zбtrace_0
К
вtrace_02л
D__inference_conv2d_38_layer_call_and_return_conditional_losses_50060Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zвtrace_0
+:)@А2conv2d_38/kernel
:А2conv2d_38/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
гnon_trainable_variables
дlayers
еmetrics
 жlayer_regularization_losses
зlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
ц
иtrace_02„
0__inference_max_pooling2d_38_layer_call_fn_50065Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zиtrace_0
С
йtrace_02т
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_50070Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zйtrace_0
0
Я0
†1"
trackable_list_wrapper
0
Я0
†1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
п
пtrace_02–
)__inference_conv2d_39_layer_call_fn_50079Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zпtrace_0
К
рtrace_02л
D__inference_conv2d_39_layer_call_and_return_conditional_losses_50090Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zрtrace_0
,:*АА2conv2d_39/kernel
:А2conv2d_39/bias
і2±Ѓ
£≤Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
Ґ	variables
£trainable_variables
§regularization_losses
¶__call__
+І&call_and_return_all_conditional_losses
'І"call_and_return_conditional_losses"
_generic_user_object
ц
цtrace_02„
0__inference_max_pooling2d_39_layer_call_fn_50095Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zцtrace_0
С
чtrace_02т
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_50100Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zчtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
®	variables
©trainable_variables
™regularization_losses
ђ__call__
+≠&call_and_return_all_conditional_losses
'≠"call_and_return_conditional_losses"
_generic_user_object
»
эtrace_0
юtrace_12Н
)__inference_dropout_8_layer_call_fn_50105
)__inference_dropout_8_layer_call_fn_50110і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zэtrace_0zюtrace_1
ю
€trace_0
Аtrace_12√
D__inference_dropout_8_layer_call_and_return_conditional_losses_50115
D__inference_dropout_8_layer_call_and_return_conditional_losses_50127і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z€trace_0zАtrace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
ѓ	variables
∞trainable_variables
±regularization_losses
≥__call__
+і&call_and_return_all_conditional_losses
'і"call_and_return_conditional_losses"
_generic_user_object
п
Жtrace_02–
)__inference_flatten_4_layer_call_fn_50132Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЖtrace_0
К
Зtrace_02л
D__inference_flatten_4_layer_call_and_return_conditional_losses_50138Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЗtrace_0
0
ї0
Љ1"
trackable_list_wrapper
0
ї0
Љ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Иnon_trainable_variables
Йlayers
Кmetrics
 Лlayer_regularization_losses
Мlayer_metrics
µ	variables
ґtrainable_variables
Јregularization_losses
є__call__
+Ї&call_and_return_all_conditional_losses
'Ї"call_and_return_conditional_losses"
_generic_user_object
н
Нtrace_02ќ
'__inference_dense_8_layer_call_fn_50147Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zНtrace_0
И
Оtrace_02й
B__inference_dense_8_layer_call_and_return_conditional_losses_50158Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zОtrace_0
": 
АА2dense_8/kernel
:А2dense_8/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Пnon_trainable_variables
Рlayers
Сmetrics
 Тlayer_regularization_losses
Уlayer_metrics
љ	variables
Њtrainable_variables
њregularization_losses
Ѕ__call__
+¬&call_and_return_all_conditional_losses
'¬"call_and_return_conditional_losses"
_generic_user_object
»
Фtrace_0
Хtrace_12Н
)__inference_dropout_9_layer_call_fn_50163
)__inference_dropout_9_layer_call_fn_50168і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zФtrace_0zХtrace_1
ю
Цtrace_0
Чtrace_12√
D__inference_dropout_9_layer_call_and_return_conditional_losses_50173
D__inference_dropout_9_layer_call_and_return_conditional_losses_50185і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zЦtrace_0zЧtrace_1
"
_generic_user_object
0
 0
Ћ1"
trackable_list_wrapper
0
 0
Ћ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
ƒ	variables
≈trainable_variables
∆regularization_losses
»__call__
+…&call_and_return_all_conditional_losses
'…"call_and_return_conditional_losses"
_generic_user_object
н
Эtrace_02ќ
'__inference_dense_9_layer_call_fn_50194Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЭtrace_0
И
Юtrace_02й
B__inference_dense_9_layer_call_and_return_conditional_losses_50204Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zЮtrace_0
!:	А2dense_9/kernel
:2dense_9/bias
 "
trackable_list_wrapper
ќ
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
14
15
16
17
18
19
20
21
22"
trackable_list_wrapper
0
Я0
†1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
КBЗ
,__inference_sequential_9_layer_call_fn_48330sequential_8_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
юBы
,__inference_sequential_9_layer_call_fn_48946inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
юBы
,__inference_sequential_9_layer_call_fn_48997inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
КBЗ
,__inference_sequential_9_layer_call_fn_48708sequential_8_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЩBЦ
G__inference_sequential_9_layer_call_and_return_conditional_losses_49086inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЩBЦ
G__inference_sequential_9_layer_call_and_return_conditional_losses_49506inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
•BҐ
G__inference_sequential_9_layer_call_and_return_conditional_losses_48775sequential_8_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
•BҐ
G__inference_sequential_9_layer_call_and_return_conditional_losses_48848sequential_8_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
’B“
#__inference_signature_wrapper_48901sequential_8_input"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
°non_trainable_variables
Ґlayers
£metrics
 §layer_regularization_losses
•layer_metrics
я	variables
аtrainable_variables
бregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
–
¶trace_0
Іtrace_12Х
-__inference_random_flip_4_layer_call_fn_50209
-__inference_random_flip_4_layer_call_fn_50216і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z¶trace_0zІtrace_1
Ж
®trace_0
©trace_12Ћ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50220
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50329і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z®trace_0z©trace_1
/
™
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ђnon_trainable_variables
ђlayers
≠metrics
 Ѓlayer_regularization_losses
ѓlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
Ў
∞trace_0
±trace_12Э
1__inference_random_rotation_4_layer_call_fn_50334
1__inference_random_rotation_4_layer_call_fn_50341і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z∞trace_0z±trace_1
О
≤trace_0
≥trace_12”
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50345
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50463і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 z≤trace_0z≥trace_1
/
і
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
µnon_trainable_variables
ґlayers
Јmetrics
 Єlayer_regularization_losses
єlayer_metrics
н	variables
оtrainable_variables
пregularization_losses
с__call__
+т&call_and_return_all_conditional_losses
'т"call_and_return_conditional_losses"
_generic_user_object
–
Їtrace_0
їtrace_12Х
-__inference_random_zoom_4_layer_call_fn_50468
-__inference_random_zoom_4_layer_call_fn_50475і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zЇtrace_0zїtrace_1
Ж
Љtrace_0
љtrace_12Ћ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50479
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50581і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 zЉtrace_0zљtrace_1
/
Њ
_generator"
_generic_user_object
 "
trackable_list_wrapper
5
!0
"1
#2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЛBИ
,__inference_sequential_8_layer_call_fn_47545random_flip_4_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
юBы
,__inference_sequential_8_layer_call_fn_49511inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
юBы
,__inference_sequential_8_layer_call_fn_49522inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЛBИ
,__inference_sequential_8_layer_call_fn_47953random_flip_4_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЩBЦ
G__inference_sequential_8_layer_call_and_return_conditional_losses_49526inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЩBЦ
G__inference_sequential_8_layer_call_and_return_conditional_losses_49847inputs"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¶B£
G__inference_sequential_8_layer_call_and_return_conditional_losses_47960random_flip_4_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
¶B£
G__inference_sequential_8_layer_call_and_return_conditional_losses_47973random_flip_4_input"ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
яB№
+__inference_rescaling_9_layer_call_fn_49852inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ъBч
F__inference_rescaling_9_layer_call_and_return_conditional_losses_49860inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_32_layer_call_fn_49869inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_32_layer_call_and_return_conditional_losses_49880inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_32_layer_call_fn_49885inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_49890inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_33_layer_call_fn_49899inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_33_layer_call_and_return_conditional_losses_49910inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_33_layer_call_fn_49915inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_49920inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_34_layer_call_fn_49929inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_34_layer_call_and_return_conditional_losses_49940inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_34_layer_call_fn_49945inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_49950inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_35_layer_call_fn_49959inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_35_layer_call_and_return_conditional_losses_49970inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_35_layer_call_fn_49975inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_49980inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_36_layer_call_fn_49989inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_36_layer_call_and_return_conditional_losses_50000inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_36_layer_call_fn_50005inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_50010inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_37_layer_call_fn_50019inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_37_layer_call_and_return_conditional_losses_50030inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_37_layer_call_fn_50035inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_50040inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_38_layer_call_fn_50049inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_38_layer_call_and_return_conditional_losses_50060inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_38_layer_call_fn_50065inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_50070inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
ЁBЏ
)__inference_conv2d_39_layer_call_fn_50079inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_conv2d_39_layer_call_and_return_conditional_losses_50090inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
0__inference_max_pooling2d_39_layer_call_fn_50095inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
€Bь
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_50100inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
пBм
)__inference_dropout_8_layer_call_fn_50105inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
пBм
)__inference_dropout_8_layer_call_fn_50110inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
КBЗ
D__inference_dropout_8_layer_call_and_return_conditional_losses_50115inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
КBЗ
D__inference_dropout_8_layer_call_and_return_conditional_losses_50127inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
ЁBЏ
)__inference_flatten_4_layer_call_fn_50132inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
шBх
D__inference_flatten_4_layer_call_and_return_conditional_losses_50138inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
џBЎ
'__inference_dense_8_layer_call_fn_50147inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_8_layer_call_and_return_conditional_losses_50158inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
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
пBм
)__inference_dropout_9_layer_call_fn_50163inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
пBм
)__inference_dropout_9_layer_call_fn_50168inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
КBЗ
D__inference_dropout_9_layer_call_and_return_conditional_losses_50173inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
КBЗ
D__inference_dropout_9_layer_call_and_return_conditional_losses_50185inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
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
џBЎ
'__inference_dense_9_layer_call_fn_50194inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
цBу
B__inference_dense_9_layer_call_and_return_conditional_losses_50204inputs"Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
R
њ	variables
ј	keras_api

Ѕtotal

¬count"
_tf_keras_metric
c
√	variables
ƒ	keras_api

≈total

∆count
«
_fn_kwargs"
_tf_keras_metric
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
уBр
-__inference_random_flip_4_layer_call_fn_50209inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
уBр
-__inference_random_flip_4_layer_call_fn_50216inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50220inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50329inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
/
»
_state_var"
_generic_user_object
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
1__inference_random_rotation_4_layer_call_fn_50334inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
чBф
1__inference_random_rotation_4_layer_call_fn_50341inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ТBП
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50345inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ТBП
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50463inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
/
…
_state_var"
_generic_user_object
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
уBр
-__inference_random_zoom_4_layer_call_fn_50468inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
уBр
-__inference_random_zoom_4_layer_call_fn_50475inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50479inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ОBЛ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50581inputs"і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
/
 
_state_var"
_generic_user_object
0
Ѕ0
¬1"
trackable_list_wrapper
.
њ	variables"
_generic_user_object
:  (2total
:  (2count
0
≈0
∆1"
trackable_list_wrapper
.
√	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
:	2StateVar
:	2StateVar
:	2StateVar
/:-2Adam/conv2d_32/kernel/m
!:2Adam/conv2d_32/bias/m
/:-2Adam/conv2d_33/kernel/m
!:2Adam/conv2d_33/bias/m
/:-2Adam/conv2d_34/kernel/m
!:2Adam/conv2d_34/bias/m
/:-2Adam/conv2d_35/kernel/m
!:2Adam/conv2d_35/bias/m
/:- 2Adam/conv2d_36/kernel/m
!: 2Adam/conv2d_36/bias/m
/:- @2Adam/conv2d_37/kernel/m
!:@2Adam/conv2d_37/bias/m
0:.@А2Adam/conv2d_38/kernel/m
": А2Adam/conv2d_38/bias/m
1:/АА2Adam/conv2d_39/kernel/m
": А2Adam/conv2d_39/bias/m
':%
АА2Adam/dense_8/kernel/m
 :А2Adam/dense_8/bias/m
&:$	А2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
/:-2Adam/conv2d_32/kernel/v
!:2Adam/conv2d_32/bias/v
/:-2Adam/conv2d_33/kernel/v
!:2Adam/conv2d_33/bias/v
/:-2Adam/conv2d_34/kernel/v
!:2Adam/conv2d_34/bias/v
/:-2Adam/conv2d_35/kernel/v
!:2Adam/conv2d_35/bias/v
/:- 2Adam/conv2d_36/kernel/v
!: 2Adam/conv2d_36/bias/v
/:- @2Adam/conv2d_37/kernel/v
!:@2Adam/conv2d_37/bias/v
0:.@А2Adam/conv2d_38/kernel/v
": А2Adam/conv2d_38/bias/v
1:/АА2Adam/conv2d_39/kernel/v
": А2Adam/conv2d_39/bias/v
':%
АА2Adam/dense_8/kernel/v
 :А2Adam/dense_8/bias/v
&:$	А2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/vњ
 __inference__wrapped_model_47516Ъ67EFTUcdrsБВРСЯ†їЉ ЋEҐB
;Ґ8
6К3
sequential_8_input€€€€€€€€€АА
™ "1™.
,
dense_9!К
dense_9€€€€€€€€€Є
D__inference_conv2d_32_layer_call_and_return_conditional_losses_49880p679Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Р
)__inference_conv2d_32_layer_call_fn_49869c679Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€ААЄ
D__inference_conv2d_33_layer_call_and_return_conditional_losses_49910pEF9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Р
)__inference_conv2d_33_layer_call_fn_49899cEF9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€ААЄ
D__inference_conv2d_34_layer_call_and_return_conditional_losses_49940pTU9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Р
)__inference_conv2d_34_layer_call_fn_49929cTU9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€ААі
D__inference_conv2d_35_layer_call_and_return_conditional_losses_49970lcd7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@@
™ "-Ґ*
#К 
0€€€€€€€€€@@
Ъ М
)__inference_conv2d_35_layer_call_fn_49959_cd7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@@
™ " К€€€€€€€€€@@і
D__inference_conv2d_36_layer_call_and_return_conditional_losses_50000lrs7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ "-Ґ*
#К 
0€€€€€€€€€   
Ъ М
)__inference_conv2d_36_layer_call_fn_49989_rs7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€  
™ " К€€€€€€€€€   ґ
D__inference_conv2d_37_layer_call_and_return_conditional_losses_50030nБВ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ "-Ґ*
#К 
0€€€€€€€€€@
Ъ О
)__inference_conv2d_37_layer_call_fn_50019aБВ7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€ 
™ " К€€€€€€€€€@Ј
D__inference_conv2d_38_layer_call_and_return_conditional_losses_50060oРС7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ П
)__inference_conv2d_38_layer_call_fn_50049bРС7Ґ4
-Ґ*
(К%
inputs€€€€€€€€€@
™ "!К€€€€€€€€€АЄ
D__inference_conv2d_39_layer_call_and_return_conditional_losses_50090pЯ†8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ Р
)__inference_conv2d_39_layer_call_fn_50079cЯ†8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "!К€€€€€€€€€А¶
B__inference_dense_8_layer_call_and_return_conditional_losses_50158`їЉ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ~
'__inference_dense_8_layer_call_fn_50147SїЉ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€А•
B__inference_dense_9_layer_call_and_return_conditional_losses_50204_ Ћ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ }
'__inference_dense_9_layer_call_fn_50194R Ћ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€ґ
D__inference_dropout_8_layer_call_and_return_conditional_losses_50115n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ ґ
D__inference_dropout_8_layer_call_and_return_conditional_losses_50127n<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ ".Ґ+
$К!
0€€€€€€€€€А
Ъ О
)__inference_dropout_8_layer_call_fn_50105a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p 
™ "!К€€€€€€€€€АО
)__inference_dropout_8_layer_call_fn_50110a<Ґ9
2Ґ/
)К&
inputs€€€€€€€€€А
p
™ "!К€€€€€€€€€А¶
D__inference_dropout_9_layer_call_and_return_conditional_losses_50173^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ¶
D__inference_dropout_9_layer_call_and_return_conditional_losses_50185^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ ~
)__inference_dropout_9_layer_call_fn_50163Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€А~
)__inference_dropout_9_layer_call_fn_50168Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€А™
D__inference_flatten_4_layer_call_and_return_conditional_losses_50138b8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "&Ґ#
К
0€€€€€€€€€А
Ъ В
)__inference_flatten_4_layer_call_fn_50132U8Ґ5
.Ґ+
)К&
inputs€€€€€€€€€А
™ "К€€€€€€€€€Ао
K__inference_max_pooling2d_32_layer_call_and_return_conditional_losses_49890ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_32_layer_call_fn_49885СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_33_layer_call_and_return_conditional_losses_49920ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_33_layer_call_fn_49915СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_34_layer_call_and_return_conditional_losses_49950ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_34_layer_call_fn_49945СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_35_layer_call_and_return_conditional_losses_49980ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_35_layer_call_fn_49975СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_36_layer_call_and_return_conditional_losses_50010ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_36_layer_call_fn_50005СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_37_layer_call_and_return_conditional_losses_50040ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_37_layer_call_fn_50035СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_38_layer_call_and_return_conditional_losses_50070ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_38_layer_call_fn_50065СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€о
K__inference_max_pooling2d_39_layer_call_and_return_conditional_losses_50100ЮRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ "HҐE
>К;
04€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
Ъ ∆
0__inference_max_pooling2d_39_layer_call_fn_50095СRҐO
HҐE
CК@
inputs4€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€
™ ";К84€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€€Љ
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50220p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ј
H__inference_random_flip_4_layer_call_and_return_conditional_losses_50329t»=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ф
-__inference_random_flip_4_layer_call_fn_50209c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ ""К€€€€€€€€€ААШ
-__inference_random_flip_4_layer_call_fn_50216g»=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ ""К€€€€€€€€€ААј
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50345p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ƒ
L__inference_random_rotation_4_layer_call_and_return_conditional_losses_50463t…=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ш
1__inference_random_rotation_4_layer_call_fn_50334c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ ""К€€€€€€€€€ААЬ
1__inference_random_rotation_4_layer_call_fn_50341g…=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ ""К€€€€€€€€€ААЉ
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50479p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ј
H__inference_random_zoom_4_layer_call_and_return_conditional_losses_50581t =Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ Ф
-__inference_random_zoom_4_layer_call_fn_50468c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p 
™ ""К€€€€€€€€€ААШ
-__inference_random_zoom_4_layer_call_fn_50475g =Ґ:
3Ґ0
*К'
inputs€€€€€€€€€АА
p
™ ""К€€€€€€€€€ААґ
F__inference_rescaling_9_layer_call_and_return_conditional_losses_49860l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ О
+__inference_rescaling_9_layer_call_fn_49852_9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€АА
™ ""К€€€€€€€€€ААЌ
G__inference_sequential_8_layer_call_and_return_conditional_losses_47960БNҐK
DҐA
7К4
random_flip_4_input€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ ’
G__inference_sequential_8_layer_call_and_return_conditional_losses_47973Й»… NҐK
DҐA
7К4
random_flip_4_input€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ њ
G__inference_sequential_8_layer_call_and_return_conditional_losses_49526tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ «
G__inference_sequential_8_layer_call_and_return_conditional_losses_49847|»… AҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "/Ґ,
%К"
0€€€€€€€€€АА
Ъ §
,__inference_sequential_8_layer_call_fn_47545tNҐK
DҐA
7К4
random_flip_4_input€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААђ
,__inference_sequential_8_layer_call_fn_47953|»… NҐK
DҐA
7К4
random_flip_4_input€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААЧ
,__inference_sequential_8_layer_call_fn_49511gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ ""К€€€€€€€€€ААЯ
,__inference_sequential_8_layer_call_fn_49522o»… AҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ ""К€€€€€€€€€ААв
G__inference_sequential_9_layer_call_and_return_conditional_losses_48775Ц67EFTUcdrsБВРСЯ†їЉ ЋMҐJ
CҐ@
6К3
sequential_8_input€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ и
G__inference_sequential_9_layer_call_and_return_conditional_losses_48848Ь$»… 67EFTUcdrsБВРСЯ†їЉ ЋMҐJ
CҐ@
6К3
sequential_8_input€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ÷
G__inference_sequential_9_layer_call_and_return_conditional_losses_49086К67EFTUcdrsБВРСЯ†їЉ ЋAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ №
G__inference_sequential_9_layer_call_and_return_conditional_losses_49506Р$»… 67EFTUcdrsБВРСЯ†їЉ ЋAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ї
,__inference_sequential_9_layer_call_fn_48330Й67EFTUcdrsБВРСЯ†їЉ ЋMҐJ
CҐ@
6К3
sequential_8_input€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€ј
,__inference_sequential_9_layer_call_fn_48708П$»… 67EFTUcdrsБВРСЯ†їЉ ЋMҐJ
CҐ@
6К3
sequential_8_input€€€€€€€€€АА
p

 
™ "К€€€€€€€€€≠
,__inference_sequential_9_layer_call_fn_48946}67EFTUcdrsБВРСЯ†їЉ ЋAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p 

 
™ "К€€€€€€€€€і
,__inference_sequential_9_layer_call_fn_48997Г$»… 67EFTUcdrsБВРСЯ†їЉ ЋAҐ>
7Ґ4
*К'
inputs€€€€€€€€€АА
p

 
™ "К€€€€€€€€€Ў
#__inference_signature_wrapper_48901∞67EFTUcdrsБВРСЯ†їЉ Ћ[ҐX
Ґ 
Q™N
L
sequential_8_input6К3
sequential_8_input€€€€€€€€€АА"1™.
,
dense_9!К
dense_9€€€€€€€€€