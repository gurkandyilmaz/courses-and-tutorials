??
??
8
Const
output"dtype"
valuetensor"
dtypetype

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
?
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
executor_typestring ?
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape?"serve*2.2.02unknown8??
~
Conv_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_1/kernel
w
!Conv_1/kernel/Read/ReadVariableOpReadVariableOpConv_1/kernel*&
_output_shapes
:*
dtype0
n
Conv_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_1/bias
g
Conv_1/bias/Read/ReadVariableOpReadVariableOpConv_1/bias*
_output_shapes
:*
dtype0
z
BatchNorm_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameBatchNorm_1/gamma
s
%BatchNorm_1/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_1/gamma*
_output_shapes
:*
dtype0
x
BatchNorm_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchNorm_1/beta
q
$BatchNorm_1/beta/Read/ReadVariableOpReadVariableOpBatchNorm_1/beta*
_output_shapes
:*
dtype0
?
BatchNorm_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBatchNorm_1/moving_mean

+BatchNorm_1/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_1/moving_mean*
_output_shapes
:*
dtype0
?
BatchNorm_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameBatchNorm_1/moving_variance
?
/BatchNorm_1/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_1/moving_variance*
_output_shapes
:*
dtype0
~
Conv_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_2/kernel
w
!Conv_2/kernel/Read/ReadVariableOpReadVariableOpConv_2/kernel*&
_output_shapes
:*
dtype0
n
Conv_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_2/bias
g
Conv_2/bias/Read/ReadVariableOpReadVariableOpConv_2/bias*
_output_shapes
:*
dtype0
z
BatchNorm_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameBatchNorm_2/gamma
s
%BatchNorm_2/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_2/gamma*
_output_shapes
:*
dtype0
x
BatchNorm_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchNorm_2/beta
q
$BatchNorm_2/beta/Read/ReadVariableOpReadVariableOpBatchNorm_2/beta*
_output_shapes
:*
dtype0
?
BatchNorm_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBatchNorm_2/moving_mean

+BatchNorm_2/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_2/moving_mean*
_output_shapes
:*
dtype0
?
BatchNorm_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameBatchNorm_2/moving_variance
?
/BatchNorm_2/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_2/moving_variance*
_output_shapes
:*
dtype0
~
Conv_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_3/kernel
w
!Conv_3/kernel/Read/ReadVariableOpReadVariableOpConv_3/kernel*&
_output_shapes
:*
dtype0
n
Conv_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_3/bias
g
Conv_3/bias/Read/ReadVariableOpReadVariableOpConv_3/bias*
_output_shapes
:*
dtype0
z
BatchNorm_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameBatchNorm_3/gamma
s
%BatchNorm_3/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_3/gamma*
_output_shapes
:*
dtype0
x
BatchNorm_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*!
shared_nameBatchNorm_3/beta
q
$BatchNorm_3/beta/Read/ReadVariableOpReadVariableOpBatchNorm_3/beta*
_output_shapes
:*
dtype0
?
BatchNorm_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameBatchNorm_3/moving_mean

+BatchNorm_3/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_3/moving_mean*
_output_shapes
:*
dtype0
?
BatchNorm_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_nameBatchNorm_3/moving_variance
?
/BatchNorm_3/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_3/moving_variance*
_output_shapes
:*
dtype0
~
Conv_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_4/kernel
w
!Conv_4/kernel/Read/ReadVariableOpReadVariableOpConv_4/kernel*&
_output_shapes
:*
dtype0
n
Conv_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameConv_4/bias
g
Conv_4/bias/Read/ReadVariableOpReadVariableOpConv_4/bias*
_output_shapes
:*
dtype0
{
BatchNorm_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*"
shared_nameBatchNorm_4/gamma
t
%BatchNorm_4/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_4/gamma*
_output_shapes	
:?*
dtype0
y
BatchNorm_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameBatchNorm_4/beta
r
$BatchNorm_4/beta/Read/ReadVariableOpReadVariableOpBatchNorm_4/beta*
_output_shapes	
:?*
dtype0
?
BatchNorm_4/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameBatchNorm_4/moving_mean
?
+BatchNorm_4/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_4/moving_mean*
_output_shapes	
:?*
dtype0
?
BatchNorm_4/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*,
shared_nameBatchNorm_4/moving_variance
?
/BatchNorm_4/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_4/moving_variance*
_output_shapes	
:?*
dtype0
y
Dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *
shared_nameDense_1/kernel
r
"Dense_1/kernel/Read/ReadVariableOpReadVariableOpDense_1/kernel*
_output_shapes
:	? *
dtype0
p
Dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameDense_1/bias
i
 Dense_1/bias/Read/ReadVariableOpReadVariableOpDense_1/bias*
_output_shapes
: *
dtype0
z
BatchNorm_5/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameBatchNorm_5/gamma
s
%BatchNorm_5/gamma/Read/ReadVariableOpReadVariableOpBatchNorm_5/gamma*
_output_shapes
: *
dtype0
x
BatchNorm_5/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *!
shared_nameBatchNorm_5/beta
q
$BatchNorm_5/beta/Read/ReadVariableOpReadVariableOpBatchNorm_5/beta*
_output_shapes
: *
dtype0
?
BatchNorm_5/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameBatchNorm_5/moving_mean

+BatchNorm_5/moving_mean/Read/ReadVariableOpReadVariableOpBatchNorm_5/moving_mean*
_output_shapes
: *
dtype0
?
BatchNorm_5/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_nameBatchNorm_5/moving_variance
?
/BatchNorm_5/moving_variance/Read/ReadVariableOpReadVariableOpBatchNorm_5/moving_variance*
_output_shapes
: *
dtype0
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

: 
*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:
*
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
?
Adam/Conv_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_1/kernel/m
?
(Adam/Conv_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_1/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/Conv_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_1/bias/m
u
&Adam/Conv_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_1/bias/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/BatchNorm_1/gamma/m
?
,Adam/BatchNorm_1/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_1/gamma/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/BatchNorm_1/beta/m

+Adam/BatchNorm_1/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_1/beta/m*
_output_shapes
:*
dtype0
?
Adam/Conv_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_2/kernel/m
?
(Adam/Conv_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_2/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/Conv_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_2/bias/m
u
&Adam/Conv_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_2/bias/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/BatchNorm_2/gamma/m
?
,Adam/BatchNorm_2/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_2/gamma/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/BatchNorm_2/beta/m

+Adam/BatchNorm_2/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_2/beta/m*
_output_shapes
:*
dtype0
?
Adam/Conv_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_3/kernel/m
?
(Adam/Conv_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_3/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/Conv_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_3/bias/m
u
&Adam/Conv_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/BatchNorm_3/gamma/m
?
,Adam/BatchNorm_3/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_3/gamma/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/BatchNorm_3/beta/m

+Adam/BatchNorm_3/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_3/beta/m*
_output_shapes
:*
dtype0
?
Adam/Conv_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_4/kernel/m
?
(Adam/Conv_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Conv_4/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/Conv_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_4/bias/m
u
&Adam/Conv_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/Conv_4/bias/m*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_4/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/BatchNorm_4/gamma/m
?
,Adam/BatchNorm_4/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_4/gamma/m*
_output_shapes	
:?*
dtype0
?
Adam/BatchNorm_4/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/BatchNorm_4/beta/m
?
+Adam/BatchNorm_4/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_4/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/Dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *&
shared_nameAdam/Dense_1/kernel/m
?
)Adam/Dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/m*
_output_shapes
:	? *
dtype0
~
Adam/Dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Dense_1/bias/m
w
'Adam/Dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/m*
_output_shapes
: *
dtype0
?
Adam/BatchNorm_5/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/BatchNorm_5/gamma/m
?
,Adam/BatchNorm_5/gamma/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_5/gamma/m*
_output_shapes
: *
dtype0
?
Adam/BatchNorm_5/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/BatchNorm_5/beta/m

+Adam/BatchNorm_5/beta/m/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_5/beta/m*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

: 
*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:
*
dtype0
?
Adam/Conv_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_1/kernel/v
?
(Adam/Conv_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_1/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/Conv_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_1/bias/v
u
&Adam/Conv_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_1/bias/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/BatchNorm_1/gamma/v
?
,Adam/BatchNorm_1/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_1/gamma/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/BatchNorm_1/beta/v

+Adam/BatchNorm_1/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_1/beta/v*
_output_shapes
:*
dtype0
?
Adam/Conv_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_2/kernel/v
?
(Adam/Conv_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_2/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/Conv_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_2/bias/v
u
&Adam/Conv_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_2/bias/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/BatchNorm_2/gamma/v
?
,Adam/BatchNorm_2/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_2/gamma/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/BatchNorm_2/beta/v

+Adam/BatchNorm_2/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_2/beta/v*
_output_shapes
:*
dtype0
?
Adam/Conv_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_3/kernel/v
?
(Adam/Conv_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_3/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/Conv_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_3/bias/v
u
&Adam/Conv_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_3/bias/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameAdam/BatchNorm_3/gamma/v
?
,Adam/BatchNorm_3/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_3/gamma/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameAdam/BatchNorm_3/beta/v

+Adam/BatchNorm_3/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_3/beta/v*
_output_shapes
:*
dtype0
?
Adam/Conv_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/Conv_4/kernel/v
?
(Adam/Conv_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Conv_4/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/Conv_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/Conv_4/bias/v
u
&Adam/Conv_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/Conv_4/bias/v*
_output_shapes
:*
dtype0
?
Adam/BatchNorm_4/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/BatchNorm_4/gamma/v
?
,Adam/BatchNorm_4/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_4/gamma/v*
_output_shapes	
:?*
dtype0
?
Adam/BatchNorm_4/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdam/BatchNorm_4/beta/v
?
+Adam/BatchNorm_4/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_4/beta/v*
_output_shapes	
:?*
dtype0
?
Adam/Dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	? *&
shared_nameAdam/Dense_1/kernel/v
?
)Adam/Dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/kernel/v*
_output_shapes
:	? *
dtype0
~
Adam/Dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/Dense_1/bias/v
w
'Adam/Dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/Dense_1/bias/v*
_output_shapes
: *
dtype0
?
Adam/BatchNorm_5/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/BatchNorm_5/gamma/v
?
,Adam/BatchNorm_5/gamma/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_5/gamma/v*
_output_shapes
: *
dtype0
?
Adam/BatchNorm_5/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameAdam/BatchNorm_5/beta/v

+Adam/BatchNorm_5/beta/v/Read/ReadVariableOpReadVariableOpAdam/BatchNorm_5/beta/v*
_output_shapes
: *
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

: 
*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?
axis
	gamma
beta
 moving_mean
!moving_variance
"trainable_variables
#regularization_losses
$	variables
%	keras_api
h

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
R
,trainable_variables
-regularization_losses
.	variables
/	keras_api
?
0axis
	1gamma
2beta
3moving_mean
4moving_variance
5trainable_variables
6regularization_losses
7	variables
8	keras_api
h

9kernel
:bias
;trainable_variables
<regularization_losses
=	variables
>	keras_api
?
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
h

Hkernel
Ibias
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
R
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
R
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
?
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[trainable_variables
\regularization_losses
]	variables
^	keras_api
h

_kernel
`bias
atrainable_variables
bregularization_losses
c	variables
d	keras_api
?
eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
R
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
h

rkernel
sbias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
?
xiter

ybeta_1

zbeta_2
	{decay
|learning_ratem?m?m?m?&m?'m?1m?2m?9m?:m?@m?Am?Hm?Im?Wm?Xm?_m?`m?fm?gm?rm?sm?v?v?v?v?&v?'v?1v?2v?9v?:v?@v?Av?Hv?Iv?Wv?Xv?_v?`v?fv?gv?rv?sv?
?
0
1
2
3
&4
'5
16
27
98
:9
@10
A11
H12
I13
W14
X15
_16
`17
f18
g19
r20
s21
 
?
0
1
2
3
 4
!5
&6
'7
18
29
310
411
912
:13
@14
A15
B16
C17
H18
I19
W20
X21
Y22
Z23
_24
`25
f26
g27
h28
i29
r30
s31
?
}metrics
~non_trainable_variables
trainable_variables
layer_regularization_losses
regularization_losses
?layer_metrics
	variables
?layers
 
YW
VARIABLE_VALUEConv_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?
?metrics
?non_trainable_variables
trainable_variables
 ?layer_regularization_losses
regularization_losses
?layer_metrics
	variables
?layers
 
\Z
VARIABLE_VALUEBatchNorm_1/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_1/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_1/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_1/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
 2
!3
?
?metrics
?non_trainable_variables
"trainable_variables
 ?layer_regularization_losses
#regularization_losses
?layer_metrics
$	variables
?layers
YW
VARIABLE_VALUEConv_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

&0
'1
 

&0
'1
?
?metrics
?non_trainable_variables
(trainable_variables
 ?layer_regularization_losses
)regularization_losses
?layer_metrics
*	variables
?layers
 
 
 
?
?metrics
?non_trainable_variables
,trainable_variables
 ?layer_regularization_losses
-regularization_losses
?layer_metrics
.	variables
?layers
 
\Z
VARIABLE_VALUEBatchNorm_2/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_2/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_2/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_2/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

10
21
 

10
21
32
43
?
?metrics
?non_trainable_variables
5trainable_variables
 ?layer_regularization_losses
6regularization_losses
?layer_metrics
7	variables
?layers
YW
VARIABLE_VALUEConv_3/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv_3/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
?
?metrics
?non_trainable_variables
;trainable_variables
 ?layer_regularization_losses
<regularization_losses
?layer_metrics
=	variables
?layers
 
\Z
VARIABLE_VALUEBatchNorm_3/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_3/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_3/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_3/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

@0
A1
 

@0
A1
B2
C3
?
?metrics
?non_trainable_variables
Dtrainable_variables
 ?layer_regularization_losses
Eregularization_losses
?layer_metrics
F	variables
?layers
YW
VARIABLE_VALUEConv_4/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEConv_4/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

H0
I1
 

H0
I1
?
?metrics
?non_trainable_variables
Jtrainable_variables
 ?layer_regularization_losses
Kregularization_losses
?layer_metrics
L	variables
?layers
 
 
 
?
?metrics
?non_trainable_variables
Ntrainable_variables
 ?layer_regularization_losses
Oregularization_losses
?layer_metrics
P	variables
?layers
 
 
 
?
?metrics
?non_trainable_variables
Rtrainable_variables
 ?layer_regularization_losses
Sregularization_losses
?layer_metrics
T	variables
?layers
 
\Z
VARIABLE_VALUEBatchNorm_4/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_4/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_4/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_4/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

W0
X1
 

W0
X1
Y2
Z3
?
?metrics
?non_trainable_variables
[trainable_variables
 ?layer_regularization_losses
\regularization_losses
?layer_metrics
]	variables
?layers
ZX
VARIABLE_VALUEDense_1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEDense_1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE

_0
`1
 

_0
`1
?
?metrics
?non_trainable_variables
atrainable_variables
 ?layer_regularization_losses
bregularization_losses
?layer_metrics
c	variables
?layers
 
\Z
VARIABLE_VALUEBatchNorm_5/gamma5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEBatchNorm_5/beta4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUEBatchNorm_5/moving_mean;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEBatchNorm_5/moving_variance?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

f0
g1
 

f0
g1
h2
i3
?
?metrics
?non_trainable_variables
jtrainable_variables
 ?layer_regularization_losses
kregularization_losses
?layer_metrics
l	variables
?layers
 
 
 
?
?metrics
?non_trainable_variables
ntrainable_variables
 ?layer_regularization_losses
oregularization_losses
?layer_metrics
p	variables
?layers
YW
VARIABLE_VALUEdense/kernel7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUE
dense/bias5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUE

r0
s1
 

r0
s1
?
?metrics
?non_trainable_variables
ttrainable_variables
 ?layer_regularization_losses
uregularization_losses
?layer_metrics
v	variables
?layers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE

?0
?1
F
 0
!1
32
43
B4
C5
Y6
Z7
h8
i9
 
 
v
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
 
 
 
 
 
 

 0
!1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

30
41
 
 
 
 
 
 
 
 
 

B0
C1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Y0
Z1
 
 
 
 
 
 
 
 
 

h0
i1
 
 
 
 
 
 
 
 
 
 
 
 
 
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
|z
VARIABLE_VALUEAdam/Conv_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_1/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_1/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_2/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_2/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_3/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_3/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_3/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_3/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_4/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_4/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_4/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_4/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_1/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_1/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_5/gamma/mQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_5/beta/mPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/mSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/mQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_1/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_1/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_2/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_2/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_3/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_3/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_3/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_3/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Conv_4/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/Conv_4/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_4/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_4/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Dense_1/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Dense_1/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/BatchNorm_5/gamma/vQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/BatchNorm_5/beta/vPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/dense/kernel/vSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/dense/bias/vQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_layerPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_layerConv_1/kernelConv_1/biasBatchNorm_1/gammaBatchNorm_1/betaBatchNorm_1/moving_meanBatchNorm_1/moving_varianceConv_2/kernelConv_2/biasBatchNorm_2/gammaBatchNorm_2/betaBatchNorm_2/moving_meanBatchNorm_2/moving_varianceConv_3/kernelConv_3/biasBatchNorm_3/gammaBatchNorm_3/betaBatchNorm_3/moving_meanBatchNorm_3/moving_varianceConv_4/kernelConv_4/biasBatchNorm_4/moving_varianceBatchNorm_4/gammaBatchNorm_4/moving_meanBatchNorm_4/betaDense_1/kernelDense_1/biasBatchNorm_5/moving_varianceBatchNorm_5/gammaBatchNorm_5/moving_meanBatchNorm_5/betadense/kernel
dense/bias*,
Tin%
#2!*
Tout
2*'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 **
config_proto

CPU

GPU 2J 8*+
f&R$
"__inference_signature_wrapper_8003
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!Conv_1/kernel/Read/ReadVariableOpConv_1/bias/Read/ReadVariableOp%BatchNorm_1/gamma/Read/ReadVariableOp$BatchNorm_1/beta/Read/ReadVariableOp+BatchNorm_1/moving_mean/Read/ReadVariableOp/BatchNorm_1/moving_variance/Read/ReadVariableOp!Conv_2/kernel/Read/ReadVariableOpConv_2/bias/Read/ReadVariableOp%BatchNorm_2/gamma/Read/ReadVariableOp$BatchNorm_2/beta/Read/ReadVariableOp+BatchNorm_2/moving_mean/Read/ReadVariableOp/BatchNorm_2/moving_variance/Read/ReadVariableOp!Conv_3/kernel/Read/ReadVariableOpConv_3/bias/Read/ReadVariableOp%BatchNorm_3/gamma/Read/ReadVariableOp$BatchNorm_3/beta/Read/ReadVariableOp+BatchNorm_3/moving_mean/Read/ReadVariableOp/BatchNorm_3/moving_variance/Read/ReadVariableOp!Conv_4/kernel/Read/ReadVariableOpConv_4/bias/Read/ReadVariableOp%BatchNorm_4/gamma/Read/ReadVariableOp$BatchNorm_4/beta/Read/ReadVariableOp+BatchNorm_4/moving_mean/Read/ReadVariableOp/BatchNorm_4/moving_variance/Read/ReadVariableOp"Dense_1/kernel/Read/ReadVariableOp Dense_1/bias/Read/ReadVariableOp%BatchNorm_5/gamma/Read/ReadVariableOp$BatchNorm_5/beta/Read/ReadVariableOp+BatchNorm_5/moving_mean/Read/ReadVariableOp/BatchNorm_5/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp(Adam/Conv_1/kernel/m/Read/ReadVariableOp&Adam/Conv_1/bias/m/Read/ReadVariableOp,Adam/BatchNorm_1/gamma/m/Read/ReadVariableOp+Adam/BatchNorm_1/beta/m/Read/ReadVariableOp(Adam/Conv_2/kernel/m/Read/ReadVariableOp&Adam/Conv_2/bias/m/Read/ReadVariableOp,Adam/BatchNorm_2/gamma/m/Read/ReadVariableOp+Adam/BatchNorm_2/beta/m/Read/ReadVariableOp(Adam/Conv_3/kernel/m/Read/ReadVariableOp&Adam/Conv_3/bias/m/Read/ReadVariableOp,Adam/BatchNorm_3/gamma/m/Read/ReadVariableOp+Adam/BatchNorm_3/beta/m/Read/ReadVariableOp(Adam/Conv_4/kernel/m/Read/ReadVariableOp&Adam/Conv_4/bias/m/Read/ReadVariableOp,Adam/BatchNorm_4/gamma/m/Read/ReadVariableOp+Adam/BatchNorm_4/beta/m/Read/ReadVariableOp)Adam/Dense_1/kernel/m/Read/ReadVariableOp'Adam/Dense_1/bias/m/Read/ReadVariableOp,Adam/BatchNorm_5/gamma/m/Read/ReadVariableOp+Adam/BatchNorm_5/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp(Adam/Conv_1/kernel/v/Read/ReadVariableOp&Adam/Conv_1/bias/v/Read/ReadVariableOp,Adam/BatchNorm_1/gamma/v/Read/ReadVariableOp+Adam/BatchNorm_1/beta/v/Read/ReadVariableOp(Adam/Conv_2/kernel/v/Read/ReadVariableOp&Adam/Conv_2/bias/v/Read/ReadVariableOp,Adam/BatchNorm_2/gamma/v/Read/ReadVariableOp+Adam/BatchNorm_2/beta/v/Read/ReadVariableOp(Adam/Conv_3/kernel/v/Read/ReadVariableOp&Adam/Conv_3/bias/v/Read/ReadVariableOp,Adam/BatchNorm_3/gamma/v/Read/ReadVariableOp+Adam/BatchNorm_3/beta/v/Read/ReadVariableOp(Adam/Conv_4/kernel/v/Read/ReadVariableOp&Adam/Conv_4/bias/v/Read/ReadVariableOp,Adam/BatchNorm_4/gamma/v/Read/ReadVariableOp+Adam/BatchNorm_4/beta/v/Read/ReadVariableOp)Adam/Dense_1/kernel/v/Read/ReadVariableOp'Adam/Dense_1/bias/v/Read/ReadVariableOp,Adam/BatchNorm_5/gamma/v/Read/ReadVariableOp+Adam/BatchNorm_5/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOpConst*b
Tin[
Y2W	*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*&
f!R
__inference__traced_save_9551
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameConv_1/kernelConv_1/biasBatchNorm_1/gammaBatchNorm_1/betaBatchNorm_1/moving_meanBatchNorm_1/moving_varianceConv_2/kernelConv_2/biasBatchNorm_2/gammaBatchNorm_2/betaBatchNorm_2/moving_meanBatchNorm_2/moving_varianceConv_3/kernelConv_3/biasBatchNorm_3/gammaBatchNorm_3/betaBatchNorm_3/moving_meanBatchNorm_3/moving_varianceConv_4/kernelConv_4/biasBatchNorm_4/gammaBatchNorm_4/betaBatchNorm_4/moving_meanBatchNorm_4/moving_varianceDense_1/kernelDense_1/biasBatchNorm_5/gammaBatchNorm_5/betaBatchNorm_5/moving_meanBatchNorm_5/moving_variancedense/kernel
dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/Conv_1/kernel/mAdam/Conv_1/bias/mAdam/BatchNorm_1/gamma/mAdam/BatchNorm_1/beta/mAdam/Conv_2/kernel/mAdam/Conv_2/bias/mAdam/BatchNorm_2/gamma/mAdam/BatchNorm_2/beta/mAdam/Conv_3/kernel/mAdam/Conv_3/bias/mAdam/BatchNorm_3/gamma/mAdam/BatchNorm_3/beta/mAdam/Conv_4/kernel/mAdam/Conv_4/bias/mAdam/BatchNorm_4/gamma/mAdam/BatchNorm_4/beta/mAdam/Dense_1/kernel/mAdam/Dense_1/bias/mAdam/BatchNorm_5/gamma/mAdam/BatchNorm_5/beta/mAdam/dense/kernel/mAdam/dense/bias/mAdam/Conv_1/kernel/vAdam/Conv_1/bias/vAdam/BatchNorm_1/gamma/vAdam/BatchNorm_1/beta/vAdam/Conv_2/kernel/vAdam/Conv_2/bias/vAdam/BatchNorm_2/gamma/vAdam/BatchNorm_2/beta/vAdam/Conv_3/kernel/vAdam/Conv_3/bias/vAdam/BatchNorm_3/gamma/vAdam/BatchNorm_3/beta/vAdam/Conv_4/kernel/vAdam/Conv_4/bias/vAdam/BatchNorm_4/gamma/vAdam/BatchNorm_4/beta/vAdam/Dense_1/kernel/vAdam/Dense_1/bias/vAdam/BatchNorm_5/gamma/vAdam/BatchNorm_5/beta/vAdam/dense/kernel/vAdam/dense/bias/v*a
TinZ
X2V*
Tout
2*
_output_shapes
: * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*)
f$R"
 __inference__traced_restore_9818??
?
?
*__inference_BatchNorm_3_layer_call_fn_8942

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_66252
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_9058

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1h
IdentityIdentitybatchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::::P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:
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
: 
?K
?
C__inference_cnn_model_layer_call_and_return_conditional_losses_7749

inputs
conv_1_7669
conv_1_7671
batchnorm_1_7674
batchnorm_1_7676
batchnorm_1_7678
batchnorm_1_7680
conv_2_7683
conv_2_7685
batchnorm_2_7689
batchnorm_2_7691
batchnorm_2_7693
batchnorm_2_7695
conv_3_7698
conv_3_7700
batchnorm_3_7703
batchnorm_3_7705
batchnorm_3_7707
batchnorm_3_7709
conv_4_7712
conv_4_7714
batchnorm_4_7719
batchnorm_4_7721
batchnorm_4_7723
batchnorm_4_7725
dense_1_7728
dense_1_7730
batchnorm_5_7733
batchnorm_5_7735
batchnorm_5_7737
batchnorm_5_7739

dense_7743

dense_7745
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?#BatchNorm_3/StatefulPartitionedCall?#BatchNorm_4/StatefulPartitionedCall?#BatchNorm_5/StatefulPartitionedCall?Conv_1/StatefulPartitionedCall?Conv_2/StatefulPartitionedCall?Conv_3/StatefulPartitionedCall?Conv_4/StatefulPartitionedCall?Dense_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_7669conv_1_7671*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_1_layer_call_and_return_conditional_losses_62232 
Conv_1/StatefulPartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCall'Conv_1/StatefulPartitionedCall:output:0batchnorm_1_7674batchnorm_1_7676batchnorm_1_7678batchnorm_1_7680*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_70382%
#BatchNorm_1/StatefulPartitionedCall?
Conv_2/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0conv_2_7683conv_2_7685*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_2_layer_call_and_return_conditional_losses_63712 
Conv_2/StatefulPartitionedCall?
Pooling_1/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_1_layer_call_and_return_conditional_losses_63872
Pooling_1/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCall"Pooling_1/PartitionedCall:output:0batchnorm_2_7689batchnorm_2_7691batchnorm_2_7693batchnorm_2_7695*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_71282%
#BatchNorm_2/StatefulPartitionedCall?
Conv_3/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0conv_3_7698conv_3_7700*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_3_layer_call_and_return_conditional_losses_65312 
Conv_3/StatefulPartitionedCall?
#BatchNorm_3/StatefulPartitionedCallStatefulPartitionedCall'Conv_3/StatefulPartitionedCall:output:0batchnorm_3_7703batchnorm_3_7705batchnorm_3_7707batchnorm_3_7709*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_72172%
#BatchNorm_3/StatefulPartitionedCall?
Conv_4/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_3/StatefulPartitionedCall:output:0conv_4_7712conv_4_7714*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_4_layer_call_and_return_conditional_losses_66792 
Conv_4/StatefulPartitionedCall?
Pooling_2/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_2_layer_call_and_return_conditional_losses_66952
Pooling_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall"Pooling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:??????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_72652
flatten/PartitionedCall?
#BatchNorm_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0batchnorm_4_7719batchnorm_4_7721batchnorm_4_7723batchnorm_4_7725*
Tin	
2*
Tout
2*(
_output_shapes
:??????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_68302%
#BatchNorm_4/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_4/StatefulPartitionedCall:output:0dense_1_7728dense_1_7730*
Tin
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_Dense_1_layer_call_and_return_conditional_losses_73192!
Dense_1/StatefulPartitionedCall?
#BatchNorm_5/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0batchnorm_5_7733batchnorm_5_7735batchnorm_5_7737batchnorm_5_7739*
Tin	
2*
Tout
2*'
_output_shapes
:????????? *&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_69702%
#BatchNorm_5/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall,BatchNorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*'
_output_shapes
:????????? * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_73872
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_7743
dense_7745*
Tin
2*
Tout
2*'
_output_shapes
:?????????
*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74112
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall$^BatchNorm_3/StatefulPartitionedCall$^BatchNorm_4/StatefulPartitionedCall$^BatchNorm_5/StatefulPartitionedCall^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2J
#BatchNorm_3/StatefulPartitionedCall#BatchNorm_3/StatefulPartitionedCall2J
#BatchNorm_4/StatefulPartitionedCall#BatchNorm_4/StatefulPartitionedCall2J
#BatchNorm_5/StatefulPartitionedCall#BatchNorm_5/StatefulPartitionedCall2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?)
?
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_9176

inputs
assignmovingavg_9151
assignmovingavg_1_9157)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst*'
_class
loc:@AssignMovingAvg/9151*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_9151*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*'
_class
loc:@AssignMovingAvg/9151*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*'
_class
loc:@AssignMovingAvg/9151*
_output_shapes
: 2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_9151AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*'
_class
loc:@AssignMovingAvg/9151*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst*)
_class
loc:@AssignMovingAvg_1/9157*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_9157*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/9157*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/9157*
_output_shapes
: 2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_9157AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*)
_class
loc:@AssignMovingAvg_1/9157*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_7217

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3p
IdentityIdentityFusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????:::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
??
?
C__inference_cnn_model_layer_call_and_return_conditional_losses_8331

inputs)
%conv_1_conv2d_readvariableop_resource*
&conv_1_biasadd_readvariableop_resource'
#batchnorm_1_readvariableop_resource)
%batchnorm_1_readvariableop_1_resource8
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource)
%conv_2_conv2d_readvariableop_resource*
&conv_2_biasadd_readvariableop_resource'
#batchnorm_2_readvariableop_resource)
%batchnorm_2_readvariableop_1_resource8
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource)
%conv_3_conv2d_readvariableop_resource*
&conv_3_biasadd_readvariableop_resource'
#batchnorm_3_readvariableop_resource)
%batchnorm_3_readvariableop_1_resource8
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource)
%conv_4_conv2d_readvariableop_resource*
&conv_4_biasadd_readvariableop_resource1
-batchnorm_4_batchnorm_readvariableop_resource5
1batchnorm_4_batchnorm_mul_readvariableop_resource3
/batchnorm_4_batchnorm_readvariableop_1_resource3
/batchnorm_4_batchnorm_readvariableop_2_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource1
-batchnorm_5_batchnorm_readvariableop_resource5
1batchnorm_5_batchnorm_mul_readvariableop_resource3
/batchnorm_5_batchnorm_readvariableop_1_resource3
/batchnorm_5_batchnorm_readvariableop_2_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity??
Conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_1/Conv2D/ReadVariableOp?
Conv_1/Conv2DConv2Dinputs$Conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_1/Conv2D?
Conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_1/BiasAdd/ReadVariableOp?
Conv_1/BiasAddBiasAddConv_1/Conv2D:output:0%Conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_1/BiasAddu
Conv_1/ReluReluConv_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_1/Relu?
BatchNorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:*
dtype02
BatchNorm_1/ReadVariableOp?
BatchNorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:*
dtype02
BatchNorm_1/ReadVariableOp_1?
+BatchNorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02-
+BatchNorm_1/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02/
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_1/FusedBatchNormV3FusedBatchNormV3Conv_1/Relu:activations:0"BatchNorm_1/ReadVariableOp:value:0$BatchNorm_1/ReadVariableOp_1:value:03BatchNorm_1/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
BatchNorm_1/FusedBatchNormV3?
Conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_2/Conv2D/ReadVariableOp?
Conv_2/Conv2DConv2D BatchNorm_1/FusedBatchNormV3:y:0$Conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_2/Conv2D?
Conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_2/BiasAdd/ReadVariableOp?
Conv_2/BiasAddBiasAddConv_2/Conv2D:output:0%Conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_2/BiasAddu
Conv_2/ReluReluConv_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_2/Relu?
Pooling_1/MaxPoolMaxPoolConv_2/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
Pooling_1/MaxPool?
BatchNorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:*
dtype02
BatchNorm_2/ReadVariableOp?
BatchNorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:*
dtype02
BatchNorm_2/ReadVariableOp_1?
+BatchNorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02-
+BatchNorm_2/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02/
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_2/FusedBatchNormV3FusedBatchNormV3Pooling_1/MaxPool:output:0"BatchNorm_2/ReadVariableOp:value:0$BatchNorm_2/ReadVariableOp_1:value:03BatchNorm_2/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
BatchNorm_2/FusedBatchNormV3?
Conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_3/Conv2D/ReadVariableOp?
Conv_3/Conv2DConv2D BatchNorm_2/FusedBatchNormV3:y:0$Conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_3/Conv2D?
Conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_3/BiasAdd/ReadVariableOp?
Conv_3/BiasAddBiasAddConv_3/Conv2D:output:0%Conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_3/BiasAddu
Conv_3/ReluReluConv_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_3/Relu?
BatchNorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes
:*
dtype02
BatchNorm_3/ReadVariableOp?
BatchNorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes
:*
dtype02
BatchNorm_3/ReadVariableOp_1?
+BatchNorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02-
+BatchNorm_3/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02/
-BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_3/FusedBatchNormV3FusedBatchNormV3Conv_3/Relu:activations:0"BatchNorm_3/ReadVariableOp:value:0$BatchNorm_3/ReadVariableOp_1:value:03BatchNorm_3/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
BatchNorm_3/FusedBatchNormV3?
Conv_4/Conv2D/ReadVariableOpReadVariableOp%conv_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_4/Conv2D/ReadVariableOp?
Conv_4/Conv2DConv2D BatchNorm_3/FusedBatchNormV3:y:0$Conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_4/Conv2D?
Conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_4/BiasAdd/ReadVariableOp?
Conv_4/BiasAddBiasAddConv_4/Conv2D:output:0%Conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_4/BiasAddu
Conv_4/ReluReluConv_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_4/Relu?
Pooling_2/MaxPoolMaxPoolConv_4/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
Pooling_2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapePooling_2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
$BatchNorm_4/batchnorm/ReadVariableOpReadVariableOp-batchnorm_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$BatchNorm_4/batchnorm/ReadVariableOp
BatchNorm_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
BatchNorm_4/batchnorm/add/y?
BatchNorm_4/batchnorm/addAddV2,BatchNorm_4/batchnorm/ReadVariableOp:value:0$BatchNorm_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/add?
BatchNorm_4/batchnorm/RsqrtRsqrtBatchNorm_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/Rsqrt?
(BatchNorm_4/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(BatchNorm_4/batchnorm/mul/ReadVariableOp?
BatchNorm_4/batchnorm/mulMulBatchNorm_4/batchnorm/Rsqrt:y:00BatchNorm_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/mul?
BatchNorm_4/batchnorm/mul_1Mulflatten/Reshape:output:0BatchNorm_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
BatchNorm_4/batchnorm/mul_1?
&BatchNorm_4/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02(
&BatchNorm_4/batchnorm/ReadVariableOp_1?
BatchNorm_4/batchnorm/mul_2Mul.BatchNorm_4/batchnorm/ReadVariableOp_1:value:0BatchNorm_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/mul_2?
&BatchNorm_4/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02(
&BatchNorm_4/batchnorm/ReadVariableOp_2?
BatchNorm_4/batchnorm/subSub.BatchNorm_4/batchnorm/ReadVariableOp_2:value:0BatchNorm_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/sub?
BatchNorm_4/batchnorm/add_1AddV2BatchNorm_4/batchnorm/mul_1:z:0BatchNorm_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
BatchNorm_4/batchnorm/add_1?
Dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
Dense_1/MatMul/ReadVariableOp?
Dense_1/MatMulMatMulBatchNorm_4/batchnorm/add_1:z:0%Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Dense_1/MatMul?
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Dense_1/BiasAdd/ReadVariableOp?
Dense_1/BiasAddBiasAddDense_1/MatMul:product:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Dense_1/BiasAddp
Dense_1/ReluReluDense_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Dense_1/Relu?
$BatchNorm_5/batchnorm/ReadVariableOpReadVariableOp-batchnorm_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02&
$BatchNorm_5/batchnorm/ReadVariableOp
BatchNorm_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
BatchNorm_5/batchnorm/add/y?
BatchNorm_5/batchnorm/addAddV2,BatchNorm_5/batchnorm/ReadVariableOp:value:0$BatchNorm_5/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/add?
BatchNorm_5/batchnorm/RsqrtRsqrtBatchNorm_5/batchnorm/add:z:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/Rsqrt?
(BatchNorm_5/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02*
(BatchNorm_5/batchnorm/mul/ReadVariableOp?
BatchNorm_5/batchnorm/mulMulBatchNorm_5/batchnorm/Rsqrt:y:00BatchNorm_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/mul?
BatchNorm_5/batchnorm/mul_1MulDense_1/Relu:activations:0BatchNorm_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
BatchNorm_5/batchnorm/mul_1?
&BatchNorm_5/batchnorm/ReadVariableOp_1ReadVariableOp/batchnorm_5_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02(
&BatchNorm_5/batchnorm/ReadVariableOp_1?
BatchNorm_5/batchnorm/mul_2Mul.BatchNorm_5/batchnorm/ReadVariableOp_1:value:0BatchNorm_5/batchnorm/mul:z:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/mul_2?
&BatchNorm_5/batchnorm/ReadVariableOp_2ReadVariableOp/batchnorm_5_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02(
&BatchNorm_5/batchnorm/ReadVariableOp_2?
BatchNorm_5/batchnorm/subSub.BatchNorm_5/batchnorm/ReadVariableOp_2:value:0BatchNorm_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/sub?
BatchNorm_5/batchnorm/add_1AddV2BatchNorm_5/batchnorm/mul_1:z:0BatchNorm_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
BatchNorm_5/batchnorm/add_1?
dropout/IdentityIdentityBatchNorm_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:????????? 2
dropout/Identity?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense/Softmaxk
IdentityIdentitydense/Softmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:::::::::::::::::::::::::::::::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?*
?
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_9038

inputs
assignmovingavg_9013
assignmovingavg_1_9019)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst*'
_class
loc:@AssignMovingAvg/9013*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_9013*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*'
_class
loc:@AssignMovingAvg/9013*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*'
_class
loc:@AssignMovingAvg/9013*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_9013AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*'
_class
loc:@AssignMovingAvg/9013*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst*)
_class
loc:@AssignMovingAvg_1/9019*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_9019*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/9019*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/9019*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_9019AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*)
_class
loc:@AssignMovingAvg_1/9019*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:
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
: 
?
_
C__inference_Pooling_1_layer_call_and_return_conditional_losses_6387

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
@__inference_Conv_3_layer_call_and_return_conditional_losses_6531

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????:::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_BatchNorm_2_layer_call_fn_8718

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_71282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_1_layer_call_fn_8631

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_70382
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?$
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8674

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_7265

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?M
?	
C__inference_cnn_model_layer_call_and_return_conditional_losses_7428
input_layer
conv_1_6985
conv_1_6987
batchnorm_1_7065
batchnorm_1_7067
batchnorm_1_7069
batchnorm_1_7071
conv_2_7074
conv_2_7076
batchnorm_2_7155
batchnorm_2_7157
batchnorm_2_7159
batchnorm_2_7161
conv_3_7164
conv_3_7166
batchnorm_3_7244
batchnorm_3_7246
batchnorm_3_7248
batchnorm_3_7250
conv_4_7253
conv_4_7255
batchnorm_4_7299
batchnorm_4_7301
batchnorm_4_7303
batchnorm_4_7305
dense_1_7330
dense_1_7332
batchnorm_5_7361
batchnorm_5_7363
batchnorm_5_7365
batchnorm_5_7367

dense_7422

dense_7424
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?#BatchNorm_3/StatefulPartitionedCall?#BatchNorm_4/StatefulPartitionedCall?#BatchNorm_5/StatefulPartitionedCall?Conv_1/StatefulPartitionedCall?Conv_2/StatefulPartitionedCall?Conv_3/StatefulPartitionedCall?Conv_4/StatefulPartitionedCall?Dense_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv_1_6985conv_1_6987*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_1_layer_call_and_return_conditional_losses_62232 
Conv_1/StatefulPartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCall'Conv_1/StatefulPartitionedCall:output:0batchnorm_1_7065batchnorm_1_7067batchnorm_1_7069batchnorm_1_7071*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_70202%
#BatchNorm_1/StatefulPartitionedCall?
Conv_2/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0conv_2_7074conv_2_7076*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_2_layer_call_and_return_conditional_losses_63712 
Conv_2/StatefulPartitionedCall?
Pooling_1/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_1_layer_call_and_return_conditional_losses_63872
Pooling_1/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCall"Pooling_1/PartitionedCall:output:0batchnorm_2_7155batchnorm_2_7157batchnorm_2_7159batchnorm_2_7161*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_71102%
#BatchNorm_2/StatefulPartitionedCall?
Conv_3/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0conv_3_7164conv_3_7166*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_3_layer_call_and_return_conditional_losses_65312 
Conv_3/StatefulPartitionedCall?
#BatchNorm_3/StatefulPartitionedCallStatefulPartitionedCall'Conv_3/StatefulPartitionedCall:output:0batchnorm_3_7244batchnorm_3_7246batchnorm_3_7248batchnorm_3_7250*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_71992%
#BatchNorm_3/StatefulPartitionedCall?
Conv_4/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_3/StatefulPartitionedCall:output:0conv_4_7253conv_4_7255*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_4_layer_call_and_return_conditional_losses_66792 
Conv_4/StatefulPartitionedCall?
Pooling_2/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_2_layer_call_and_return_conditional_losses_66952
Pooling_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall"Pooling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:??????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_72652
flatten/PartitionedCall?
#BatchNorm_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0batchnorm_4_7299batchnorm_4_7301batchnorm_4_7303batchnorm_4_7305*
Tin	
2*
Tout
2*(
_output_shapes
:??????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_67972%
#BatchNorm_4/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_4/StatefulPartitionedCall:output:0dense_1_7330dense_1_7332*
Tin
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_Dense_1_layer_call_and_return_conditional_losses_73192!
Dense_1/StatefulPartitionedCall?
#BatchNorm_5/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0batchnorm_5_7361batchnorm_5_7363batchnorm_5_7365batchnorm_5_7367*
Tin	
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_69372%
#BatchNorm_5/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*'
_output_shapes
:????????? * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_73822!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_7422
dense_7424*
Tin
2*
Tout
2*'
_output_shapes
:?????????
*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74112
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall$^BatchNorm_3/StatefulPartitionedCall$^BatchNorm_4/StatefulPartitionedCall$^BatchNorm_5/StatefulPartitionedCall^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2J
#BatchNorm_3/StatefulPartitionedCall#BatchNorm_3/StatefulPartitionedCall2J
#BatchNorm_4/StatefulPartitionedCall#BatchNorm_4/StatefulPartitionedCall2J
#BatchNorm_5/StatefulPartitionedCall#BatchNorm_5/StatefulPartitionedCall2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
y
$__inference_dense_layer_call_fn_9269

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:?????????
*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? ::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
(__inference_cnn_model_layer_call_fn_8400

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
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
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_cnn_model_layer_call_and_return_conditional_losses_75972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8530

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????:::::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?K
?
C__inference_cnn_model_layer_call_and_return_conditional_losses_7511
input_layer
conv_1_7431
conv_1_7433
batchnorm_1_7436
batchnorm_1_7438
batchnorm_1_7440
batchnorm_1_7442
conv_2_7445
conv_2_7447
batchnorm_2_7451
batchnorm_2_7453
batchnorm_2_7455
batchnorm_2_7457
conv_3_7460
conv_3_7462
batchnorm_3_7465
batchnorm_3_7467
batchnorm_3_7469
batchnorm_3_7471
conv_4_7474
conv_4_7476
batchnorm_4_7481
batchnorm_4_7483
batchnorm_4_7485
batchnorm_4_7487
dense_1_7490
dense_1_7492
batchnorm_5_7495
batchnorm_5_7497
batchnorm_5_7499
batchnorm_5_7501

dense_7505

dense_7507
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?#BatchNorm_3/StatefulPartitionedCall?#BatchNorm_4/StatefulPartitionedCall?#BatchNorm_5/StatefulPartitionedCall?Conv_1/StatefulPartitionedCall?Conv_2/StatefulPartitionedCall?Conv_3/StatefulPartitionedCall?Conv_4/StatefulPartitionedCall?Dense_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinput_layerconv_1_7431conv_1_7433*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_1_layer_call_and_return_conditional_losses_62232 
Conv_1/StatefulPartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCall'Conv_1/StatefulPartitionedCall:output:0batchnorm_1_7436batchnorm_1_7438batchnorm_1_7440batchnorm_1_7442*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_70382%
#BatchNorm_1/StatefulPartitionedCall?
Conv_2/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0conv_2_7445conv_2_7447*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_2_layer_call_and_return_conditional_losses_63712 
Conv_2/StatefulPartitionedCall?
Pooling_1/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_1_layer_call_and_return_conditional_losses_63872
Pooling_1/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCall"Pooling_1/PartitionedCall:output:0batchnorm_2_7451batchnorm_2_7453batchnorm_2_7455batchnorm_2_7457*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_71282%
#BatchNorm_2/StatefulPartitionedCall?
Conv_3/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0conv_3_7460conv_3_7462*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_3_layer_call_and_return_conditional_losses_65312 
Conv_3/StatefulPartitionedCall?
#BatchNorm_3/StatefulPartitionedCallStatefulPartitionedCall'Conv_3/StatefulPartitionedCall:output:0batchnorm_3_7465batchnorm_3_7467batchnorm_3_7469batchnorm_3_7471*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_72172%
#BatchNorm_3/StatefulPartitionedCall?
Conv_4/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_3/StatefulPartitionedCall:output:0conv_4_7474conv_4_7476*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_4_layer_call_and_return_conditional_losses_66792 
Conv_4/StatefulPartitionedCall?
Pooling_2/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_2_layer_call_and_return_conditional_losses_66952
Pooling_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall"Pooling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:??????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_72652
flatten/PartitionedCall?
#BatchNorm_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0batchnorm_4_7481batchnorm_4_7483batchnorm_4_7485batchnorm_4_7487*
Tin	
2*
Tout
2*(
_output_shapes
:??????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_68302%
#BatchNorm_4/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_4/StatefulPartitionedCall:output:0dense_1_7490dense_1_7492*
Tin
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_Dense_1_layer_call_and_return_conditional_losses_73192!
Dense_1/StatefulPartitionedCall?
#BatchNorm_5/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0batchnorm_5_7495batchnorm_5_7497batchnorm_5_7499batchnorm_5_7501*
Tin	
2*
Tout
2*'
_output_shapes
:????????? *&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_69702%
#BatchNorm_5/StatefulPartitionedCall?
dropout/PartitionedCallPartitionedCall,BatchNorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*'
_output_shapes
:????????? * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_73872
dropout/PartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0
dense_7505
dense_7507*
Tin
2*
Tout
2*'
_output_shapes
:?????????
*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74112
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall$^BatchNorm_3/StatefulPartitionedCall$^BatchNorm_4/StatefulPartitionedCall$^BatchNorm_5/StatefulPartitionedCall^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall^dense/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2J
#BatchNorm_3/StatefulPartitionedCall#BatchNorm_3/StatefulPartitionedCall2J
#BatchNorm_4/StatefulPartitionedCall#BatchNorm_4/StatefulPartitionedCall2J
#BatchNorm_5/StatefulPartitionedCall#BatchNorm_5/StatefulPartitionedCall2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?$
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_6477

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
D
(__inference_Pooling_2_layer_call_fn_6701

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_2_layer_call_and_return_conditional_losses_66952
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
B
&__inference_flatten_layer_call_fn_8966

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*(
_output_shapes
:??????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_72652
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8749

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8854

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3p
IdentityIdentityFusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????:::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_3_layer_call_fn_8867

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_71992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8767

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????:::::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_9196

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1g
IdentityIdentitybatchnorm/add_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? :::::O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8929

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????:::::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
?__inference_dense_layer_call_and_return_conditional_losses_9260

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :::O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?$
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_6625

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_2_layer_call_fn_8780

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_64772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?

`
A__inference_dropout_layer_call_and_return_conditional_losses_9234

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?,
 __inference__traced_restore_9818
file_prefix"
assignvariableop_conv_1_kernel"
assignvariableop_1_conv_1_bias(
$assignvariableop_2_batchnorm_1_gamma'
#assignvariableop_3_batchnorm_1_beta.
*assignvariableop_4_batchnorm_1_moving_mean2
.assignvariableop_5_batchnorm_1_moving_variance$
 assignvariableop_6_conv_2_kernel"
assignvariableop_7_conv_2_bias(
$assignvariableop_8_batchnorm_2_gamma'
#assignvariableop_9_batchnorm_2_beta/
+assignvariableop_10_batchnorm_2_moving_mean3
/assignvariableop_11_batchnorm_2_moving_variance%
!assignvariableop_12_conv_3_kernel#
assignvariableop_13_conv_3_bias)
%assignvariableop_14_batchnorm_3_gamma(
$assignvariableop_15_batchnorm_3_beta/
+assignvariableop_16_batchnorm_3_moving_mean3
/assignvariableop_17_batchnorm_3_moving_variance%
!assignvariableop_18_conv_4_kernel#
assignvariableop_19_conv_4_bias)
%assignvariableop_20_batchnorm_4_gamma(
$assignvariableop_21_batchnorm_4_beta/
+assignvariableop_22_batchnorm_4_moving_mean3
/assignvariableop_23_batchnorm_4_moving_variance&
"assignvariableop_24_dense_1_kernel$
 assignvariableop_25_dense_1_bias)
%assignvariableop_26_batchnorm_5_gamma(
$assignvariableop_27_batchnorm_5_beta/
+assignvariableop_28_batchnorm_5_moving_mean3
/assignvariableop_29_batchnorm_5_moving_variance$
 assignvariableop_30_dense_kernel"
assignvariableop_31_dense_bias!
assignvariableop_32_adam_iter#
assignvariableop_33_adam_beta_1#
assignvariableop_34_adam_beta_2"
assignvariableop_35_adam_decay*
&assignvariableop_36_adam_learning_rate
assignvariableop_37_total
assignvariableop_38_count
assignvariableop_39_total_1
assignvariableop_40_count_1,
(assignvariableop_41_adam_conv_1_kernel_m*
&assignvariableop_42_adam_conv_1_bias_m0
,assignvariableop_43_adam_batchnorm_1_gamma_m/
+assignvariableop_44_adam_batchnorm_1_beta_m,
(assignvariableop_45_adam_conv_2_kernel_m*
&assignvariableop_46_adam_conv_2_bias_m0
,assignvariableop_47_adam_batchnorm_2_gamma_m/
+assignvariableop_48_adam_batchnorm_2_beta_m,
(assignvariableop_49_adam_conv_3_kernel_m*
&assignvariableop_50_adam_conv_3_bias_m0
,assignvariableop_51_adam_batchnorm_3_gamma_m/
+assignvariableop_52_adam_batchnorm_3_beta_m,
(assignvariableop_53_adam_conv_4_kernel_m*
&assignvariableop_54_adam_conv_4_bias_m0
,assignvariableop_55_adam_batchnorm_4_gamma_m/
+assignvariableop_56_adam_batchnorm_4_beta_m-
)assignvariableop_57_adam_dense_1_kernel_m+
'assignvariableop_58_adam_dense_1_bias_m0
,assignvariableop_59_adam_batchnorm_5_gamma_m/
+assignvariableop_60_adam_batchnorm_5_beta_m+
'assignvariableop_61_adam_dense_kernel_m)
%assignvariableop_62_adam_dense_bias_m,
(assignvariableop_63_adam_conv_1_kernel_v*
&assignvariableop_64_adam_conv_1_bias_v0
,assignvariableop_65_adam_batchnorm_1_gamma_v/
+assignvariableop_66_adam_batchnorm_1_beta_v,
(assignvariableop_67_adam_conv_2_kernel_v*
&assignvariableop_68_adam_conv_2_bias_v0
,assignvariableop_69_adam_batchnorm_2_gamma_v/
+assignvariableop_70_adam_batchnorm_2_beta_v,
(assignvariableop_71_adam_conv_3_kernel_v*
&assignvariableop_72_adam_conv_3_bias_v0
,assignvariableop_73_adam_batchnorm_3_gamma_v/
+assignvariableop_74_adam_batchnorm_3_beta_v,
(assignvariableop_75_adam_conv_4_kernel_v*
&assignvariableop_76_adam_conv_4_bias_v0
,assignvariableop_77_adam_batchnorm_4_gamma_v/
+assignvariableop_78_adam_batchnorm_4_beta_v-
)assignvariableop_79_adam_dense_1_kernel_v+
'assignvariableop_80_adam_dense_1_bias_v0
,assignvariableop_81_adam_batchnorm_5_gamma_v/
+assignvariableop_82_adam_batchnorm_5_beta_v+
'assignvariableop_83_adam_dense_kernel_v)
%assignvariableop_84_adam_dense_bias_v
identity_86??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_66?AssignVariableOp_67?AssignVariableOp_68?AssignVariableOp_69?AssignVariableOp_7?AssignVariableOp_70?AssignVariableOp_71?AssignVariableOp_72?AssignVariableOp_73?AssignVariableOp_74?AssignVariableOp_75?AssignVariableOp_76?AssignVariableOp_77?AssignVariableOp_78?AssignVariableOp_79?AssignVariableOp_8?AssignVariableOp_80?AssignVariableOp_81?AssignVariableOp_82?AssignVariableOp_83?AssignVariableOp_84?AssignVariableOp_9?	RestoreV2?RestoreV2_1?/
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?.
value?.B?.UB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?
value?B?UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U	2
	RestoreV2X
IdentityIdentityRestoreV2:tensors:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_conv_1_kernelIdentity:output:0*
_output_shapes
 *
dtype02
AssignVariableOp\

Identity_1IdentityRestoreV2:tensors:1*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv_1_biasIdentity_1:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_1\

Identity_2IdentityRestoreV2:tensors:2*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_batchnorm_1_gammaIdentity_2:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_2\

Identity_3IdentityRestoreV2:tensors:3*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp#assignvariableop_3_batchnorm_1_betaIdentity_3:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_3\

Identity_4IdentityRestoreV2:tensors:4*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp*assignvariableop_4_batchnorm_1_moving_meanIdentity_4:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_4\

Identity_5IdentityRestoreV2:tensors:5*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp.assignvariableop_5_batchnorm_1_moving_varianceIdentity_5:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_5\

Identity_6IdentityRestoreV2:tensors:6*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp assignvariableop_6_conv_2_kernelIdentity_6:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_6\

Identity_7IdentityRestoreV2:tensors:7*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_conv_2_biasIdentity_7:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_7\

Identity_8IdentityRestoreV2:tensors:8*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_batchnorm_2_gammaIdentity_8:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_8\

Identity_9IdentityRestoreV2:tensors:9*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp#assignvariableop_9_batchnorm_2_betaIdentity_9:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_9_
Identity_10IdentityRestoreV2:tensors:10*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp+assignvariableop_10_batchnorm_2_moving_meanIdentity_10:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_10_
Identity_11IdentityRestoreV2:tensors:11*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_batchnorm_2_moving_varianceIdentity_11:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_11_
Identity_12IdentityRestoreV2:tensors:12*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp!assignvariableop_12_conv_3_kernelIdentity_12:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_12_
Identity_13IdentityRestoreV2:tensors:13*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_conv_3_biasIdentity_13:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_13_
Identity_14IdentityRestoreV2:tensors:14*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_batchnorm_3_gammaIdentity_14:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_14_
Identity_15IdentityRestoreV2:tensors:15*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp$assignvariableop_15_batchnorm_3_betaIdentity_15:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_15_
Identity_16IdentityRestoreV2:tensors:16*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_batchnorm_3_moving_meanIdentity_16:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_16_
Identity_17IdentityRestoreV2:tensors:17*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp/assignvariableop_17_batchnorm_3_moving_varianceIdentity_17:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_17_
Identity_18IdentityRestoreV2:tensors:18*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp!assignvariableop_18_conv_4_kernelIdentity_18:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_18_
Identity_19IdentityRestoreV2:tensors:19*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_conv_4_biasIdentity_19:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_19_
Identity_20IdentityRestoreV2:tensors:20*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp%assignvariableop_20_batchnorm_4_gammaIdentity_20:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_20_
Identity_21IdentityRestoreV2:tensors:21*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp$assignvariableop_21_batchnorm_4_betaIdentity_21:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_21_
Identity_22IdentityRestoreV2:tensors:22*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_batchnorm_4_moving_meanIdentity_22:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_22_
Identity_23IdentityRestoreV2:tensors:23*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp/assignvariableop_23_batchnorm_4_moving_varianceIdentity_23:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_23_
Identity_24IdentityRestoreV2:tensors:24*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp"assignvariableop_24_dense_1_kernelIdentity_24:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_24_
Identity_25IdentityRestoreV2:tensors:25*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp assignvariableop_25_dense_1_biasIdentity_25:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_25_
Identity_26IdentityRestoreV2:tensors:26*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_batchnorm_5_gammaIdentity_26:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_26_
Identity_27IdentityRestoreV2:tensors:27*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp$assignvariableop_27_batchnorm_5_betaIdentity_27:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_27_
Identity_28IdentityRestoreV2:tensors:28*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp+assignvariableop_28_batchnorm_5_moving_meanIdentity_28:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_28_
Identity_29IdentityRestoreV2:tensors:29*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp/assignvariableop_29_batchnorm_5_moving_varianceIdentity_29:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_29_
Identity_30IdentityRestoreV2:tensors:30*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp assignvariableop_30_dense_kernelIdentity_30:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_30_
Identity_31IdentityRestoreV2:tensors:31*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_dense_biasIdentity_31:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_31_
Identity_32IdentityRestoreV2:tensors:32*
T0	*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_adam_iterIdentity_32:output:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_32_
Identity_33IdentityRestoreV2:tensors:33*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOpassignvariableop_33_adam_beta_1Identity_33:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_33_
Identity_34IdentityRestoreV2:tensors:34*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOpassignvariableop_34_adam_beta_2Identity_34:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_34_
Identity_35IdentityRestoreV2:tensors:35*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOpassignvariableop_35_adam_decayIdentity_35:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_35_
Identity_36IdentityRestoreV2:tensors:36*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp&assignvariableop_36_adam_learning_rateIdentity_36:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_36_
Identity_37IdentityRestoreV2:tensors:37*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOpassignvariableop_37_totalIdentity_37:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_37_
Identity_38IdentityRestoreV2:tensors:38*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOpassignvariableop_38_countIdentity_38:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_38_
Identity_39IdentityRestoreV2:tensors:39*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOpassignvariableop_39_total_1Identity_39:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_39_
Identity_40IdentityRestoreV2:tensors:40*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOpassignvariableop_40_count_1Identity_40:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_40_
Identity_41IdentityRestoreV2:tensors:41*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_conv_1_kernel_mIdentity_41:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_41_
Identity_42IdentityRestoreV2:tensors:42*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp&assignvariableop_42_adam_conv_1_bias_mIdentity_42:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_42_
Identity_43IdentityRestoreV2:tensors:43*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp,assignvariableop_43_adam_batchnorm_1_gamma_mIdentity_43:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_43_
Identity_44IdentityRestoreV2:tensors:44*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_batchnorm_1_beta_mIdentity_44:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_44_
Identity_45IdentityRestoreV2:tensors:45*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_conv_2_kernel_mIdentity_45:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_45_
Identity_46IdentityRestoreV2:tensors:46*
T0*
_output_shapes
:2
Identity_46?
AssignVariableOp_46AssignVariableOp&assignvariableop_46_adam_conv_2_bias_mIdentity_46:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_46_
Identity_47IdentityRestoreV2:tensors:47*
T0*
_output_shapes
:2
Identity_47?
AssignVariableOp_47AssignVariableOp,assignvariableop_47_adam_batchnorm_2_gamma_mIdentity_47:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_47_
Identity_48IdentityRestoreV2:tensors:48*
T0*
_output_shapes
:2
Identity_48?
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_batchnorm_2_beta_mIdentity_48:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_48_
Identity_49IdentityRestoreV2:tensors:49*
T0*
_output_shapes
:2
Identity_49?
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_conv_3_kernel_mIdentity_49:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_49_
Identity_50IdentityRestoreV2:tensors:50*
T0*
_output_shapes
:2
Identity_50?
AssignVariableOp_50AssignVariableOp&assignvariableop_50_adam_conv_3_bias_mIdentity_50:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_50_
Identity_51IdentityRestoreV2:tensors:51*
T0*
_output_shapes
:2
Identity_51?
AssignVariableOp_51AssignVariableOp,assignvariableop_51_adam_batchnorm_3_gamma_mIdentity_51:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_51_
Identity_52IdentityRestoreV2:tensors:52*
T0*
_output_shapes
:2
Identity_52?
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_batchnorm_3_beta_mIdentity_52:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_52_
Identity_53IdentityRestoreV2:tensors:53*
T0*
_output_shapes
:2
Identity_53?
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_conv_4_kernel_mIdentity_53:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_53_
Identity_54IdentityRestoreV2:tensors:54*
T0*
_output_shapes
:2
Identity_54?
AssignVariableOp_54AssignVariableOp&assignvariableop_54_adam_conv_4_bias_mIdentity_54:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_54_
Identity_55IdentityRestoreV2:tensors:55*
T0*
_output_shapes
:2
Identity_55?
AssignVariableOp_55AssignVariableOp,assignvariableop_55_adam_batchnorm_4_gamma_mIdentity_55:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_55_
Identity_56IdentityRestoreV2:tensors:56*
T0*
_output_shapes
:2
Identity_56?
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_batchnorm_4_beta_mIdentity_56:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_56_
Identity_57IdentityRestoreV2:tensors:57*
T0*
_output_shapes
:2
Identity_57?
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_1_kernel_mIdentity_57:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_57_
Identity_58IdentityRestoreV2:tensors:58*
T0*
_output_shapes
:2
Identity_58?
AssignVariableOp_58AssignVariableOp'assignvariableop_58_adam_dense_1_bias_mIdentity_58:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_58_
Identity_59IdentityRestoreV2:tensors:59*
T0*
_output_shapes
:2
Identity_59?
AssignVariableOp_59AssignVariableOp,assignvariableop_59_adam_batchnorm_5_gamma_mIdentity_59:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_59_
Identity_60IdentityRestoreV2:tensors:60*
T0*
_output_shapes
:2
Identity_60?
AssignVariableOp_60AssignVariableOp+assignvariableop_60_adam_batchnorm_5_beta_mIdentity_60:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_60_
Identity_61IdentityRestoreV2:tensors:61*
T0*
_output_shapes
:2
Identity_61?
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_dense_kernel_mIdentity_61:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_61_
Identity_62IdentityRestoreV2:tensors:62*
T0*
_output_shapes
:2
Identity_62?
AssignVariableOp_62AssignVariableOp%assignvariableop_62_adam_dense_bias_mIdentity_62:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_62_
Identity_63IdentityRestoreV2:tensors:63*
T0*
_output_shapes
:2
Identity_63?
AssignVariableOp_63AssignVariableOp(assignvariableop_63_adam_conv_1_kernel_vIdentity_63:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_63_
Identity_64IdentityRestoreV2:tensors:64*
T0*
_output_shapes
:2
Identity_64?
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_conv_1_bias_vIdentity_64:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_64_
Identity_65IdentityRestoreV2:tensors:65*
T0*
_output_shapes
:2
Identity_65?
AssignVariableOp_65AssignVariableOp,assignvariableop_65_adam_batchnorm_1_gamma_vIdentity_65:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_65_
Identity_66IdentityRestoreV2:tensors:66*
T0*
_output_shapes
:2
Identity_66?
AssignVariableOp_66AssignVariableOp+assignvariableop_66_adam_batchnorm_1_beta_vIdentity_66:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_66_
Identity_67IdentityRestoreV2:tensors:67*
T0*
_output_shapes
:2
Identity_67?
AssignVariableOp_67AssignVariableOp(assignvariableop_67_adam_conv_2_kernel_vIdentity_67:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_67_
Identity_68IdentityRestoreV2:tensors:68*
T0*
_output_shapes
:2
Identity_68?
AssignVariableOp_68AssignVariableOp&assignvariableop_68_adam_conv_2_bias_vIdentity_68:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_68_
Identity_69IdentityRestoreV2:tensors:69*
T0*
_output_shapes
:2
Identity_69?
AssignVariableOp_69AssignVariableOp,assignvariableop_69_adam_batchnorm_2_gamma_vIdentity_69:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_69_
Identity_70IdentityRestoreV2:tensors:70*
T0*
_output_shapes
:2
Identity_70?
AssignVariableOp_70AssignVariableOp+assignvariableop_70_adam_batchnorm_2_beta_vIdentity_70:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_70_
Identity_71IdentityRestoreV2:tensors:71*
T0*
_output_shapes
:2
Identity_71?
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_conv_3_kernel_vIdentity_71:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_71_
Identity_72IdentityRestoreV2:tensors:72*
T0*
_output_shapes
:2
Identity_72?
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_conv_3_bias_vIdentity_72:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_72_
Identity_73IdentityRestoreV2:tensors:73*
T0*
_output_shapes
:2
Identity_73?
AssignVariableOp_73AssignVariableOp,assignvariableop_73_adam_batchnorm_3_gamma_vIdentity_73:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_73_
Identity_74IdentityRestoreV2:tensors:74*
T0*
_output_shapes
:2
Identity_74?
AssignVariableOp_74AssignVariableOp+assignvariableop_74_adam_batchnorm_3_beta_vIdentity_74:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_74_
Identity_75IdentityRestoreV2:tensors:75*
T0*
_output_shapes
:2
Identity_75?
AssignVariableOp_75AssignVariableOp(assignvariableop_75_adam_conv_4_kernel_vIdentity_75:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_75_
Identity_76IdentityRestoreV2:tensors:76*
T0*
_output_shapes
:2
Identity_76?
AssignVariableOp_76AssignVariableOp&assignvariableop_76_adam_conv_4_bias_vIdentity_76:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_76_
Identity_77IdentityRestoreV2:tensors:77*
T0*
_output_shapes
:2
Identity_77?
AssignVariableOp_77AssignVariableOp,assignvariableop_77_adam_batchnorm_4_gamma_vIdentity_77:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_77_
Identity_78IdentityRestoreV2:tensors:78*
T0*
_output_shapes
:2
Identity_78?
AssignVariableOp_78AssignVariableOp+assignvariableop_78_adam_batchnorm_4_beta_vIdentity_78:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_78_
Identity_79IdentityRestoreV2:tensors:79*
T0*
_output_shapes
:2
Identity_79?
AssignVariableOp_79AssignVariableOp)assignvariableop_79_adam_dense_1_kernel_vIdentity_79:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_79_
Identity_80IdentityRestoreV2:tensors:80*
T0*
_output_shapes
:2
Identity_80?
AssignVariableOp_80AssignVariableOp'assignvariableop_80_adam_dense_1_bias_vIdentity_80:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_80_
Identity_81IdentityRestoreV2:tensors:81*
T0*
_output_shapes
:2
Identity_81?
AssignVariableOp_81AssignVariableOp,assignvariableop_81_adam_batchnorm_5_gamma_vIdentity_81:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_81_
Identity_82IdentityRestoreV2:tensors:82*
T0*
_output_shapes
:2
Identity_82?
AssignVariableOp_82AssignVariableOp+assignvariableop_82_adam_batchnorm_5_beta_vIdentity_82:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_82_
Identity_83IdentityRestoreV2:tensors:83*
T0*
_output_shapes
:2
Identity_83?
AssignVariableOp_83AssignVariableOp'assignvariableop_83_adam_dense_kernel_vIdentity_83:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_83_
Identity_84IdentityRestoreV2:tensors:84*
T0*
_output_shapes
:2
Identity_84?
AssignVariableOp_84AssignVariableOp%assignvariableop_84_adam_dense_bias_vIdentity_84:output:0*
_output_shapes
 *
dtype02
AssignVariableOp_84?
RestoreV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2_1/tensor_names?
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
RestoreV2_1/shape_and_slices?
RestoreV2_1	RestoreV2file_prefix!RestoreV2_1/tensor_names:output:0%RestoreV2_1/shape_and_slices:output:0
^RestoreV2"/device:CPU:0*
_output_shapes
:*
dtypes
22
RestoreV2_19
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_85Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_85?
Identity_86IdentityIdentity_85:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_9
^RestoreV2^RestoreV2_1*
T0*
_output_shapes
: 2
Identity_86"#
identity_86Identity_86:output:0*?
_input_shapes?
?: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_84AssignVariableOp_842(
AssignVariableOp_9AssignVariableOp_92
	RestoreV2	RestoreV22
RestoreV2_1RestoreV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :*

_output_shapes
: :+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3
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
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :H

_output_shapes
: :I

_output_shapes
: :J

_output_shapes
: :K

_output_shapes
: :L

_output_shapes
: :M

_output_shapes
: :N

_output_shapes
: :O

_output_shapes
: :P

_output_shapes
: :Q

_output_shapes
: :R

_output_shapes
: :S

_output_shapes
: :T

_output_shapes
: :U

_output_shapes
: 
??
?
__inference__wrapped_model_6211
input_layer3
/cnn_model_conv_1_conv2d_readvariableop_resource4
0cnn_model_conv_1_biasadd_readvariableop_resource1
-cnn_model_batchnorm_1_readvariableop_resource3
/cnn_model_batchnorm_1_readvariableop_1_resourceB
>cnn_model_batchnorm_1_fusedbatchnormv3_readvariableop_resourceD
@cnn_model_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource3
/cnn_model_conv_2_conv2d_readvariableop_resource4
0cnn_model_conv_2_biasadd_readvariableop_resource1
-cnn_model_batchnorm_2_readvariableop_resource3
/cnn_model_batchnorm_2_readvariableop_1_resourceB
>cnn_model_batchnorm_2_fusedbatchnormv3_readvariableop_resourceD
@cnn_model_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource3
/cnn_model_conv_3_conv2d_readvariableop_resource4
0cnn_model_conv_3_biasadd_readvariableop_resource1
-cnn_model_batchnorm_3_readvariableop_resource3
/cnn_model_batchnorm_3_readvariableop_1_resourceB
>cnn_model_batchnorm_3_fusedbatchnormv3_readvariableop_resourceD
@cnn_model_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource3
/cnn_model_conv_4_conv2d_readvariableop_resource4
0cnn_model_conv_4_biasadd_readvariableop_resource;
7cnn_model_batchnorm_4_batchnorm_readvariableop_resource?
;cnn_model_batchnorm_4_batchnorm_mul_readvariableop_resource=
9cnn_model_batchnorm_4_batchnorm_readvariableop_1_resource=
9cnn_model_batchnorm_4_batchnorm_readvariableop_2_resource4
0cnn_model_dense_1_matmul_readvariableop_resource5
1cnn_model_dense_1_biasadd_readvariableop_resource;
7cnn_model_batchnorm_5_batchnorm_readvariableop_resource?
;cnn_model_batchnorm_5_batchnorm_mul_readvariableop_resource=
9cnn_model_batchnorm_5_batchnorm_readvariableop_1_resource=
9cnn_model_batchnorm_5_batchnorm_readvariableop_2_resource2
.cnn_model_dense_matmul_readvariableop_resource3
/cnn_model_dense_biasadd_readvariableop_resource
identity??
&cnn_model/Conv_1/Conv2D/ReadVariableOpReadVariableOp/cnn_model_conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&cnn_model/Conv_1/Conv2D/ReadVariableOp?
cnn_model/Conv_1/Conv2DConv2Dinput_layer.cnn_model/Conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
cnn_model/Conv_1/Conv2D?
'cnn_model/Conv_1/BiasAdd/ReadVariableOpReadVariableOp0cnn_model_conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'cnn_model/Conv_1/BiasAdd/ReadVariableOp?
cnn_model/Conv_1/BiasAddBiasAdd cnn_model/Conv_1/Conv2D:output:0/cnn_model/Conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_1/BiasAdd?
cnn_model/Conv_1/ReluRelu!cnn_model/Conv_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_1/Relu?
$cnn_model/BatchNorm_1/ReadVariableOpReadVariableOp-cnn_model_batchnorm_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$cnn_model/BatchNorm_1/ReadVariableOp?
&cnn_model/BatchNorm_1/ReadVariableOp_1ReadVariableOp/cnn_model_batchnorm_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&cnn_model/BatchNorm_1/ReadVariableOp_1?
5cnn_model/BatchNorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>cnn_model_batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5cnn_model/BatchNorm_1/FusedBatchNormV3/ReadVariableOp?
7cnn_model/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@cnn_model_batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7cnn_model/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?
&cnn_model/BatchNorm_1/FusedBatchNormV3FusedBatchNormV3#cnn_model/Conv_1/Relu:activations:0,cnn_model/BatchNorm_1/ReadVariableOp:value:0.cnn_model/BatchNorm_1/ReadVariableOp_1:value:0=cnn_model/BatchNorm_1/FusedBatchNormV3/ReadVariableOp:value:0?cnn_model/BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2(
&cnn_model/BatchNorm_1/FusedBatchNormV3?
&cnn_model/Conv_2/Conv2D/ReadVariableOpReadVariableOp/cnn_model_conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&cnn_model/Conv_2/Conv2D/ReadVariableOp?
cnn_model/Conv_2/Conv2DConv2D*cnn_model/BatchNorm_1/FusedBatchNormV3:y:0.cnn_model/Conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
cnn_model/Conv_2/Conv2D?
'cnn_model/Conv_2/BiasAdd/ReadVariableOpReadVariableOp0cnn_model_conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'cnn_model/Conv_2/BiasAdd/ReadVariableOp?
cnn_model/Conv_2/BiasAddBiasAdd cnn_model/Conv_2/Conv2D:output:0/cnn_model/Conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_2/BiasAdd?
cnn_model/Conv_2/ReluRelu!cnn_model/Conv_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_2/Relu?
cnn_model/Pooling_1/MaxPoolMaxPool#cnn_model/Conv_2/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
cnn_model/Pooling_1/MaxPool?
$cnn_model/BatchNorm_2/ReadVariableOpReadVariableOp-cnn_model_batchnorm_2_readvariableop_resource*
_output_shapes
:*
dtype02&
$cnn_model/BatchNorm_2/ReadVariableOp?
&cnn_model/BatchNorm_2/ReadVariableOp_1ReadVariableOp/cnn_model_batchnorm_2_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&cnn_model/BatchNorm_2/ReadVariableOp_1?
5cnn_model/BatchNorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp>cnn_model_batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5cnn_model/BatchNorm_2/FusedBatchNormV3/ReadVariableOp?
7cnn_model/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@cnn_model_batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7cnn_model/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?
&cnn_model/BatchNorm_2/FusedBatchNormV3FusedBatchNormV3$cnn_model/Pooling_1/MaxPool:output:0,cnn_model/BatchNorm_2/ReadVariableOp:value:0.cnn_model/BatchNorm_2/ReadVariableOp_1:value:0=cnn_model/BatchNorm_2/FusedBatchNormV3/ReadVariableOp:value:0?cnn_model/BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2(
&cnn_model/BatchNorm_2/FusedBatchNormV3?
&cnn_model/Conv_3/Conv2D/ReadVariableOpReadVariableOp/cnn_model_conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&cnn_model/Conv_3/Conv2D/ReadVariableOp?
cnn_model/Conv_3/Conv2DConv2D*cnn_model/BatchNorm_2/FusedBatchNormV3:y:0.cnn_model/Conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
cnn_model/Conv_3/Conv2D?
'cnn_model/Conv_3/BiasAdd/ReadVariableOpReadVariableOp0cnn_model_conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'cnn_model/Conv_3/BiasAdd/ReadVariableOp?
cnn_model/Conv_3/BiasAddBiasAdd cnn_model/Conv_3/Conv2D:output:0/cnn_model/Conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_3/BiasAdd?
cnn_model/Conv_3/ReluRelu!cnn_model/Conv_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_3/Relu?
$cnn_model/BatchNorm_3/ReadVariableOpReadVariableOp-cnn_model_batchnorm_3_readvariableop_resource*
_output_shapes
:*
dtype02&
$cnn_model/BatchNorm_3/ReadVariableOp?
&cnn_model/BatchNorm_3/ReadVariableOp_1ReadVariableOp/cnn_model_batchnorm_3_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&cnn_model/BatchNorm_3/ReadVariableOp_1?
5cnn_model/BatchNorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp>cnn_model_batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5cnn_model/BatchNorm_3/FusedBatchNormV3/ReadVariableOp?
7cnn_model/BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@cnn_model_batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7cnn_model/BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1?
&cnn_model/BatchNorm_3/FusedBatchNormV3FusedBatchNormV3#cnn_model/Conv_3/Relu:activations:0,cnn_model/BatchNorm_3/ReadVariableOp:value:0.cnn_model/BatchNorm_3/ReadVariableOp_1:value:0=cnn_model/BatchNorm_3/FusedBatchNormV3/ReadVariableOp:value:0?cnn_model/BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2(
&cnn_model/BatchNorm_3/FusedBatchNormV3?
&cnn_model/Conv_4/Conv2D/ReadVariableOpReadVariableOp/cnn_model_conv_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02(
&cnn_model/Conv_4/Conv2D/ReadVariableOp?
cnn_model/Conv_4/Conv2DConv2D*cnn_model/BatchNorm_3/FusedBatchNormV3:y:0.cnn_model/Conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
cnn_model/Conv_4/Conv2D?
'cnn_model/Conv_4/BiasAdd/ReadVariableOpReadVariableOp0cnn_model_conv_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02)
'cnn_model/Conv_4/BiasAdd/ReadVariableOp?
cnn_model/Conv_4/BiasAddBiasAdd cnn_model/Conv_4/Conv2D:output:0/cnn_model/Conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_4/BiasAdd?
cnn_model/Conv_4/ReluRelu!cnn_model/Conv_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
cnn_model/Conv_4/Relu?
cnn_model/Pooling_2/MaxPoolMaxPool#cnn_model/Conv_4/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
cnn_model/Pooling_2/MaxPool?
cnn_model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
cnn_model/flatten/Const?
cnn_model/flatten/ReshapeReshape$cnn_model/Pooling_2/MaxPool:output:0 cnn_model/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
cnn_model/flatten/Reshape?
.cnn_model/BatchNorm_4/batchnorm/ReadVariableOpReadVariableOp7cnn_model_batchnorm_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype020
.cnn_model/BatchNorm_4/batchnorm/ReadVariableOp?
%cnn_model/BatchNorm_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%cnn_model/BatchNorm_4/batchnorm/add/y?
#cnn_model/BatchNorm_4/batchnorm/addAddV26cnn_model/BatchNorm_4/batchnorm/ReadVariableOp:value:0.cnn_model/BatchNorm_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2%
#cnn_model/BatchNorm_4/batchnorm/add?
%cnn_model/BatchNorm_4/batchnorm/RsqrtRsqrt'cnn_model/BatchNorm_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2'
%cnn_model/BatchNorm_4/batchnorm/Rsqrt?
2cnn_model/BatchNorm_4/batchnorm/mul/ReadVariableOpReadVariableOp;cnn_model_batchnorm_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype024
2cnn_model/BatchNorm_4/batchnorm/mul/ReadVariableOp?
#cnn_model/BatchNorm_4/batchnorm/mulMul)cnn_model/BatchNorm_4/batchnorm/Rsqrt:y:0:cnn_model/BatchNorm_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2%
#cnn_model/BatchNorm_4/batchnorm/mul?
%cnn_model/BatchNorm_4/batchnorm/mul_1Mul"cnn_model/flatten/Reshape:output:0'cnn_model/BatchNorm_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2'
%cnn_model/BatchNorm_4/batchnorm/mul_1?
0cnn_model/BatchNorm_4/batchnorm/ReadVariableOp_1ReadVariableOp9cnn_model_batchnorm_4_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype022
0cnn_model/BatchNorm_4/batchnorm/ReadVariableOp_1?
%cnn_model/BatchNorm_4/batchnorm/mul_2Mul8cnn_model/BatchNorm_4/batchnorm/ReadVariableOp_1:value:0'cnn_model/BatchNorm_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2'
%cnn_model/BatchNorm_4/batchnorm/mul_2?
0cnn_model/BatchNorm_4/batchnorm/ReadVariableOp_2ReadVariableOp9cnn_model_batchnorm_4_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype022
0cnn_model/BatchNorm_4/batchnorm/ReadVariableOp_2?
#cnn_model/BatchNorm_4/batchnorm/subSub8cnn_model/BatchNorm_4/batchnorm/ReadVariableOp_2:value:0)cnn_model/BatchNorm_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2%
#cnn_model/BatchNorm_4/batchnorm/sub?
%cnn_model/BatchNorm_4/batchnorm/add_1AddV2)cnn_model/BatchNorm_4/batchnorm/mul_1:z:0'cnn_model/BatchNorm_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2'
%cnn_model/BatchNorm_4/batchnorm/add_1?
'cnn_model/Dense_1/MatMul/ReadVariableOpReadVariableOp0cnn_model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02)
'cnn_model/Dense_1/MatMul/ReadVariableOp?
cnn_model/Dense_1/MatMulMatMul)cnn_model/BatchNorm_4/batchnorm/add_1:z:0/cnn_model/Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
cnn_model/Dense_1/MatMul?
(cnn_model/Dense_1/BiasAdd/ReadVariableOpReadVariableOp1cnn_model_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02*
(cnn_model/Dense_1/BiasAdd/ReadVariableOp?
cnn_model/Dense_1/BiasAddBiasAdd"cnn_model/Dense_1/MatMul:product:00cnn_model/Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
cnn_model/Dense_1/BiasAdd?
cnn_model/Dense_1/ReluRelu"cnn_model/Dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
cnn_model/Dense_1/Relu?
.cnn_model/BatchNorm_5/batchnorm/ReadVariableOpReadVariableOp7cnn_model_batchnorm_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype020
.cnn_model/BatchNorm_5/batchnorm/ReadVariableOp?
%cnn_model/BatchNorm_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2'
%cnn_model/BatchNorm_5/batchnorm/add/y?
#cnn_model/BatchNorm_5/batchnorm/addAddV26cnn_model/BatchNorm_5/batchnorm/ReadVariableOp:value:0.cnn_model/BatchNorm_5/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2%
#cnn_model/BatchNorm_5/batchnorm/add?
%cnn_model/BatchNorm_5/batchnorm/RsqrtRsqrt'cnn_model/BatchNorm_5/batchnorm/add:z:0*
T0*
_output_shapes
: 2'
%cnn_model/BatchNorm_5/batchnorm/Rsqrt?
2cnn_model/BatchNorm_5/batchnorm/mul/ReadVariableOpReadVariableOp;cnn_model_batchnorm_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype024
2cnn_model/BatchNorm_5/batchnorm/mul/ReadVariableOp?
#cnn_model/BatchNorm_5/batchnorm/mulMul)cnn_model/BatchNorm_5/batchnorm/Rsqrt:y:0:cnn_model/BatchNorm_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2%
#cnn_model/BatchNorm_5/batchnorm/mul?
%cnn_model/BatchNorm_5/batchnorm/mul_1Mul$cnn_model/Dense_1/Relu:activations:0'cnn_model/BatchNorm_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2'
%cnn_model/BatchNorm_5/batchnorm/mul_1?
0cnn_model/BatchNorm_5/batchnorm/ReadVariableOp_1ReadVariableOp9cnn_model_batchnorm_5_batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype022
0cnn_model/BatchNorm_5/batchnorm/ReadVariableOp_1?
%cnn_model/BatchNorm_5/batchnorm/mul_2Mul8cnn_model/BatchNorm_5/batchnorm/ReadVariableOp_1:value:0'cnn_model/BatchNorm_5/batchnorm/mul:z:0*
T0*
_output_shapes
: 2'
%cnn_model/BatchNorm_5/batchnorm/mul_2?
0cnn_model/BatchNorm_5/batchnorm/ReadVariableOp_2ReadVariableOp9cnn_model_batchnorm_5_batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype022
0cnn_model/BatchNorm_5/batchnorm/ReadVariableOp_2?
#cnn_model/BatchNorm_5/batchnorm/subSub8cnn_model/BatchNorm_5/batchnorm/ReadVariableOp_2:value:0)cnn_model/BatchNorm_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2%
#cnn_model/BatchNorm_5/batchnorm/sub?
%cnn_model/BatchNorm_5/batchnorm/add_1AddV2)cnn_model/BatchNorm_5/batchnorm/mul_1:z:0'cnn_model/BatchNorm_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2'
%cnn_model/BatchNorm_5/batchnorm/add_1?
cnn_model/dropout/IdentityIdentity)cnn_model/BatchNorm_5/batchnorm/add_1:z:0*
T0*'
_output_shapes
:????????? 2
cnn_model/dropout/Identity?
%cnn_model/dense/MatMul/ReadVariableOpReadVariableOp.cnn_model_dense_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02'
%cnn_model/dense/MatMul/ReadVariableOp?
cnn_model/dense/MatMulMatMul#cnn_model/dropout/Identity:output:0-cnn_model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
cnn_model/dense/MatMul?
&cnn_model/dense/BiasAdd/ReadVariableOpReadVariableOp/cnn_model_dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02(
&cnn_model/dense/BiasAdd/ReadVariableOp?
cnn_model/dense/BiasAddBiasAdd cnn_model/dense/MatMul:product:0.cnn_model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
cnn_model/dense/BiasAdd?
cnn_model/dense/SoftmaxSoftmax cnn_model/dense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
cnn_model/dense/Softmaxu
IdentityIdentity!cnn_model/dense/Softmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????:::::::::::::::::::::::::::::::::\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
A__inference_Dense_1_layer_call_and_return_conditional_losses_7319

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:::P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?

?
@__inference_Conv_2_layer_call_and_return_conditional_losses_6371

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????:::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8692

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3p
IdentityIdentityFusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????:::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_6830

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1h
IdentityIdentitybatchnorm/add_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????:::::P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_2_layer_call_fn_8793

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_65082
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
??
?
C__inference_cnn_model_layer_call_and_return_conditional_losses_8206

inputs)
%conv_1_conv2d_readvariableop_resource*
&conv_1_biasadd_readvariableop_resource'
#batchnorm_1_readvariableop_resource)
%batchnorm_1_readvariableop_1_resource8
4batchnorm_1_fusedbatchnormv3_readvariableop_resource:
6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource)
%conv_2_conv2d_readvariableop_resource*
&conv_2_biasadd_readvariableop_resource'
#batchnorm_2_readvariableop_resource)
%batchnorm_2_readvariableop_1_resource8
4batchnorm_2_fusedbatchnormv3_readvariableop_resource:
6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource)
%conv_3_conv2d_readvariableop_resource*
&conv_3_biasadd_readvariableop_resource'
#batchnorm_3_readvariableop_resource)
%batchnorm_3_readvariableop_1_resource8
4batchnorm_3_fusedbatchnormv3_readvariableop_resource:
6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource)
%conv_4_conv2d_readvariableop_resource*
&conv_4_biasadd_readvariableop_resource$
 batchnorm_4_assignmovingavg_8127&
"batchnorm_4_assignmovingavg_1_81335
1batchnorm_4_batchnorm_mul_readvariableop_resource1
-batchnorm_4_batchnorm_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource$
 batchnorm_5_assignmovingavg_8166&
"batchnorm_5_assignmovingavg_1_81725
1batchnorm_5_batchnorm_mul_readvariableop_resource1
-batchnorm_5_batchnorm_readvariableop_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource
identity??/BatchNorm_1/AssignMovingAvg/AssignSubVariableOp?1BatchNorm_1/AssignMovingAvg_1/AssignSubVariableOp?/BatchNorm_2/AssignMovingAvg/AssignSubVariableOp?1BatchNorm_2/AssignMovingAvg_1/AssignSubVariableOp?/BatchNorm_3/AssignMovingAvg/AssignSubVariableOp?1BatchNorm_3/AssignMovingAvg_1/AssignSubVariableOp?/BatchNorm_4/AssignMovingAvg/AssignSubVariableOp?1BatchNorm_4/AssignMovingAvg_1/AssignSubVariableOp?/BatchNorm_5/AssignMovingAvg/AssignSubVariableOp?1BatchNorm_5/AssignMovingAvg_1/AssignSubVariableOp?
Conv_1/Conv2D/ReadVariableOpReadVariableOp%conv_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_1/Conv2D/ReadVariableOp?
Conv_1/Conv2DConv2Dinputs$Conv_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_1/Conv2D?
Conv_1/BiasAdd/ReadVariableOpReadVariableOp&conv_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_1/BiasAdd/ReadVariableOp?
Conv_1/BiasAddBiasAddConv_1/Conv2D:output:0%Conv_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_1/BiasAddu
Conv_1/ReluReluConv_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_1/Relu?
BatchNorm_1/ReadVariableOpReadVariableOp#batchnorm_1_readvariableop_resource*
_output_shapes
:*
dtype02
BatchNorm_1/ReadVariableOp?
BatchNorm_1/ReadVariableOp_1ReadVariableOp%batchnorm_1_readvariableop_1_resource*
_output_shapes
:*
dtype02
BatchNorm_1/ReadVariableOp_1?
+BatchNorm_1/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02-
+BatchNorm_1/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02/
-BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_1/FusedBatchNormV3FusedBatchNormV3Conv_1/Relu:activations:0"BatchNorm_1/ReadVariableOp:value:0$BatchNorm_1/ReadVariableOp_1:value:03BatchNorm_1/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
BatchNorm_1/FusedBatchNormV3k
BatchNorm_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
BatchNorm_1/Const?
!BatchNorm_1/AssignMovingAvg/sub/xConst*G
_class=
;9loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!BatchNorm_1/AssignMovingAvg/sub/x?
BatchNorm_1/AssignMovingAvg/subSub*BatchNorm_1/AssignMovingAvg/sub/x:output:0BatchNorm_1/Const:output:0*
T0*G
_class=
;9loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2!
BatchNorm_1/AssignMovingAvg/sub?
*BatchNorm_1/AssignMovingAvg/ReadVariableOpReadVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*BatchNorm_1/AssignMovingAvg/ReadVariableOp?
!BatchNorm_1/AssignMovingAvg/sub_1Sub2BatchNorm_1/AssignMovingAvg/ReadVariableOp:value:0)BatchNorm_1/FusedBatchNormV3:batch_mean:0*
T0*G
_class=
;9loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2#
!BatchNorm_1/AssignMovingAvg/sub_1?
BatchNorm_1/AssignMovingAvg/mulMul%BatchNorm_1/AssignMovingAvg/sub_1:z:0#BatchNorm_1/AssignMovingAvg/sub:z:0*
T0*G
_class=
;9loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2!
BatchNorm_1/AssignMovingAvg/mul?
/BatchNorm_1/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp4batchnorm_1_fusedbatchnormv3_readvariableop_resource#BatchNorm_1/AssignMovingAvg/mul:z:0+^BatchNorm_1/AssignMovingAvg/ReadVariableOp,^BatchNorm_1/FusedBatchNormV3/ReadVariableOp*G
_class=
;9loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype021
/BatchNorm_1/AssignMovingAvg/AssignSubVariableOp?
#BatchNorm_1/AssignMovingAvg_1/sub/xConst*I
_class?
=;loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#BatchNorm_1/AssignMovingAvg_1/sub/x?
!BatchNorm_1/AssignMovingAvg_1/subSub,BatchNorm_1/AssignMovingAvg_1/sub/x:output:0BatchNorm_1/Const:output:0*
T0*I
_class?
=;loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2#
!BatchNorm_1/AssignMovingAvg_1/sub?
,BatchNorm_1/AssignMovingAvg_1/ReadVariableOpReadVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,BatchNorm_1/AssignMovingAvg_1/ReadVariableOp?
#BatchNorm_1/AssignMovingAvg_1/sub_1Sub4BatchNorm_1/AssignMovingAvg_1/ReadVariableOp:value:0-BatchNorm_1/FusedBatchNormV3:batch_variance:0*
T0*I
_class?
=;loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2%
#BatchNorm_1/AssignMovingAvg_1/sub_1?
!BatchNorm_1/AssignMovingAvg_1/mulMul'BatchNorm_1/AssignMovingAvg_1/sub_1:z:0%BatchNorm_1/AssignMovingAvg_1/sub:z:0*
T0*I
_class?
=;loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2#
!BatchNorm_1/AssignMovingAvg_1/mul?
1BatchNorm_1/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp6batchnorm_1_fusedbatchnormv3_readvariableop_1_resource%BatchNorm_1/AssignMovingAvg_1/mul:z:0-^BatchNorm_1/AssignMovingAvg_1/ReadVariableOp.^BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1*I
_class?
=;loc:@BatchNorm_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype023
1BatchNorm_1/AssignMovingAvg_1/AssignSubVariableOp?
Conv_2/Conv2D/ReadVariableOpReadVariableOp%conv_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_2/Conv2D/ReadVariableOp?
Conv_2/Conv2DConv2D BatchNorm_1/FusedBatchNormV3:y:0$Conv_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_2/Conv2D?
Conv_2/BiasAdd/ReadVariableOpReadVariableOp&conv_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_2/BiasAdd/ReadVariableOp?
Conv_2/BiasAddBiasAddConv_2/Conv2D:output:0%Conv_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_2/BiasAddu
Conv_2/ReluReluConv_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_2/Relu?
Pooling_1/MaxPoolMaxPoolConv_2/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
Pooling_1/MaxPool?
BatchNorm_2/ReadVariableOpReadVariableOp#batchnorm_2_readvariableop_resource*
_output_shapes
:*
dtype02
BatchNorm_2/ReadVariableOp?
BatchNorm_2/ReadVariableOp_1ReadVariableOp%batchnorm_2_readvariableop_1_resource*
_output_shapes
:*
dtype02
BatchNorm_2/ReadVariableOp_1?
+BatchNorm_2/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02-
+BatchNorm_2/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02/
-BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_2/FusedBatchNormV3FusedBatchNormV3Pooling_1/MaxPool:output:0"BatchNorm_2/ReadVariableOp:value:0$BatchNorm_2/ReadVariableOp_1:value:03BatchNorm_2/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
BatchNorm_2/FusedBatchNormV3k
BatchNorm_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
BatchNorm_2/Const?
!BatchNorm_2/AssignMovingAvg/sub/xConst*G
_class=
;9loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!BatchNorm_2/AssignMovingAvg/sub/x?
BatchNorm_2/AssignMovingAvg/subSub*BatchNorm_2/AssignMovingAvg/sub/x:output:0BatchNorm_2/Const:output:0*
T0*G
_class=
;9loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2!
BatchNorm_2/AssignMovingAvg/sub?
*BatchNorm_2/AssignMovingAvg/ReadVariableOpReadVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*BatchNorm_2/AssignMovingAvg/ReadVariableOp?
!BatchNorm_2/AssignMovingAvg/sub_1Sub2BatchNorm_2/AssignMovingAvg/ReadVariableOp:value:0)BatchNorm_2/FusedBatchNormV3:batch_mean:0*
T0*G
_class=
;9loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2#
!BatchNorm_2/AssignMovingAvg/sub_1?
BatchNorm_2/AssignMovingAvg/mulMul%BatchNorm_2/AssignMovingAvg/sub_1:z:0#BatchNorm_2/AssignMovingAvg/sub:z:0*
T0*G
_class=
;9loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2!
BatchNorm_2/AssignMovingAvg/mul?
/BatchNorm_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp4batchnorm_2_fusedbatchnormv3_readvariableop_resource#BatchNorm_2/AssignMovingAvg/mul:z:0+^BatchNorm_2/AssignMovingAvg/ReadVariableOp,^BatchNorm_2/FusedBatchNormV3/ReadVariableOp*G
_class=
;9loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype021
/BatchNorm_2/AssignMovingAvg/AssignSubVariableOp?
#BatchNorm_2/AssignMovingAvg_1/sub/xConst*I
_class?
=;loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#BatchNorm_2/AssignMovingAvg_1/sub/x?
!BatchNorm_2/AssignMovingAvg_1/subSub,BatchNorm_2/AssignMovingAvg_1/sub/x:output:0BatchNorm_2/Const:output:0*
T0*I
_class?
=;loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2#
!BatchNorm_2/AssignMovingAvg_1/sub?
,BatchNorm_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,BatchNorm_2/AssignMovingAvg_1/ReadVariableOp?
#BatchNorm_2/AssignMovingAvg_1/sub_1Sub4BatchNorm_2/AssignMovingAvg_1/ReadVariableOp:value:0-BatchNorm_2/FusedBatchNormV3:batch_variance:0*
T0*I
_class?
=;loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2%
#BatchNorm_2/AssignMovingAvg_1/sub_1?
!BatchNorm_2/AssignMovingAvg_1/mulMul'BatchNorm_2/AssignMovingAvg_1/sub_1:z:0%BatchNorm_2/AssignMovingAvg_1/sub:z:0*
T0*I
_class?
=;loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2#
!BatchNorm_2/AssignMovingAvg_1/mul?
1BatchNorm_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp6batchnorm_2_fusedbatchnormv3_readvariableop_1_resource%BatchNorm_2/AssignMovingAvg_1/mul:z:0-^BatchNorm_2/AssignMovingAvg_1/ReadVariableOp.^BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1*I
_class?
=;loc:@BatchNorm_2/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype023
1BatchNorm_2/AssignMovingAvg_1/AssignSubVariableOp?
Conv_3/Conv2D/ReadVariableOpReadVariableOp%conv_3_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_3/Conv2D/ReadVariableOp?
Conv_3/Conv2DConv2D BatchNorm_2/FusedBatchNormV3:y:0$Conv_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_3/Conv2D?
Conv_3/BiasAdd/ReadVariableOpReadVariableOp&conv_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_3/BiasAdd/ReadVariableOp?
Conv_3/BiasAddBiasAddConv_3/Conv2D:output:0%Conv_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_3/BiasAddu
Conv_3/ReluReluConv_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_3/Relu?
BatchNorm_3/ReadVariableOpReadVariableOp#batchnorm_3_readvariableop_resource*
_output_shapes
:*
dtype02
BatchNorm_3/ReadVariableOp?
BatchNorm_3/ReadVariableOp_1ReadVariableOp%batchnorm_3_readvariableop_1_resource*
_output_shapes
:*
dtype02
BatchNorm_3/ReadVariableOp_1?
+BatchNorm_3/FusedBatchNormV3/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02-
+BatchNorm_3/FusedBatchNormV3/ReadVariableOp?
-BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02/
-BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1?
BatchNorm_3/FusedBatchNormV3FusedBatchNormV3Conv_3/Relu:activations:0"BatchNorm_3/ReadVariableOp:value:0$BatchNorm_3/ReadVariableOp_1:value:03BatchNorm_3/FusedBatchNormV3/ReadVariableOp:value:05BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
BatchNorm_3/FusedBatchNormV3k
BatchNorm_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
BatchNorm_3/Const?
!BatchNorm_3/AssignMovingAvg/sub/xConst*G
_class=
;9loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2#
!BatchNorm_3/AssignMovingAvg/sub/x?
BatchNorm_3/AssignMovingAvg/subSub*BatchNorm_3/AssignMovingAvg/sub/x:output:0BatchNorm_3/Const:output:0*
T0*G
_class=
;9loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2!
BatchNorm_3/AssignMovingAvg/sub?
*BatchNorm_3/AssignMovingAvg/ReadVariableOpReadVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02,
*BatchNorm_3/AssignMovingAvg/ReadVariableOp?
!BatchNorm_3/AssignMovingAvg/sub_1Sub2BatchNorm_3/AssignMovingAvg/ReadVariableOp:value:0)BatchNorm_3/FusedBatchNormV3:batch_mean:0*
T0*G
_class=
;9loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2#
!BatchNorm_3/AssignMovingAvg/sub_1?
BatchNorm_3/AssignMovingAvg/mulMul%BatchNorm_3/AssignMovingAvg/sub_1:z:0#BatchNorm_3/AssignMovingAvg/sub:z:0*
T0*G
_class=
;9loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2!
BatchNorm_3/AssignMovingAvg/mul?
/BatchNorm_3/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp4batchnorm_3_fusedbatchnormv3_readvariableop_resource#BatchNorm_3/AssignMovingAvg/mul:z:0+^BatchNorm_3/AssignMovingAvg/ReadVariableOp,^BatchNorm_3/FusedBatchNormV3/ReadVariableOp*G
_class=
;9loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype021
/BatchNorm_3/AssignMovingAvg/AssignSubVariableOp?
#BatchNorm_3/AssignMovingAvg_1/sub/xConst*I
_class?
=;loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2%
#BatchNorm_3/AssignMovingAvg_1/sub/x?
!BatchNorm_3/AssignMovingAvg_1/subSub,BatchNorm_3/AssignMovingAvg_1/sub/x:output:0BatchNorm_3/Const:output:0*
T0*I
_class?
=;loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2#
!BatchNorm_3/AssignMovingAvg_1/sub?
,BatchNorm_3/AssignMovingAvg_1/ReadVariableOpReadVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,BatchNorm_3/AssignMovingAvg_1/ReadVariableOp?
#BatchNorm_3/AssignMovingAvg_1/sub_1Sub4BatchNorm_3/AssignMovingAvg_1/ReadVariableOp:value:0-BatchNorm_3/FusedBatchNormV3:batch_variance:0*
T0*I
_class?
=;loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2%
#BatchNorm_3/AssignMovingAvg_1/sub_1?
!BatchNorm_3/AssignMovingAvg_1/mulMul'BatchNorm_3/AssignMovingAvg_1/sub_1:z:0%BatchNorm_3/AssignMovingAvg_1/sub:z:0*
T0*I
_class?
=;loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2#
!BatchNorm_3/AssignMovingAvg_1/mul?
1BatchNorm_3/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp6batchnorm_3_fusedbatchnormv3_readvariableop_1_resource%BatchNorm_3/AssignMovingAvg_1/mul:z:0-^BatchNorm_3/AssignMovingAvg_1/ReadVariableOp.^BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1*I
_class?
=;loc:@BatchNorm_3/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype023
1BatchNorm_3/AssignMovingAvg_1/AssignSubVariableOp?
Conv_4/Conv2D/ReadVariableOpReadVariableOp%conv_4_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv_4/Conv2D/ReadVariableOp?
Conv_4/Conv2DConv2D BatchNorm_3/FusedBatchNormV3:y:0$Conv_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingVALID*
strides
2
Conv_4/Conv2D?
Conv_4/BiasAdd/ReadVariableOpReadVariableOp&conv_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
Conv_4/BiasAdd/ReadVariableOp?
Conv_4/BiasAddBiasAddConv_4/Conv2D:output:0%Conv_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
Conv_4/BiasAddu
Conv_4/ReluReluConv_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2
Conv_4/Relu?
Pooling_2/MaxPoolMaxPoolConv_4/Relu:activations:0*/
_output_shapes
:?????????*
ksize
*
paddingVALID*
strides
2
Pooling_2/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
flatten/Const?
flatten/ReshapeReshapePooling_2/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
*BatchNorm_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*BatchNorm_4/moments/mean/reduction_indices?
BatchNorm_4/moments/meanMeanflatten/Reshape:output:03BatchNorm_4/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
BatchNorm_4/moments/mean?
 BatchNorm_4/moments/StopGradientStopGradient!BatchNorm_4/moments/mean:output:0*
T0*
_output_shapes
:	?2"
 BatchNorm_4/moments/StopGradient?
%BatchNorm_4/moments/SquaredDifferenceSquaredDifferenceflatten/Reshape:output:0)BatchNorm_4/moments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2'
%BatchNorm_4/moments/SquaredDifference?
.BatchNorm_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 20
.BatchNorm_4/moments/variance/reduction_indices?
BatchNorm_4/moments/varianceMean)BatchNorm_4/moments/SquaredDifference:z:07BatchNorm_4/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
BatchNorm_4/moments/variance?
BatchNorm_4/moments/SqueezeSqueeze!BatchNorm_4/moments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
BatchNorm_4/moments/Squeeze?
BatchNorm_4/moments/Squeeze_1Squeeze%BatchNorm_4/moments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
BatchNorm_4/moments/Squeeze_1?
!BatchNorm_4/AssignMovingAvg/decayConst*3
_class)
'%loc:@BatchNorm_4/AssignMovingAvg/8127*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!BatchNorm_4/AssignMovingAvg/decay?
*BatchNorm_4/AssignMovingAvg/ReadVariableOpReadVariableOp batchnorm_4_assignmovingavg_8127*
_output_shapes	
:?*
dtype02,
*BatchNorm_4/AssignMovingAvg/ReadVariableOp?
BatchNorm_4/AssignMovingAvg/subSub2BatchNorm_4/AssignMovingAvg/ReadVariableOp:value:0$BatchNorm_4/moments/Squeeze:output:0*
T0*3
_class)
'%loc:@BatchNorm_4/AssignMovingAvg/8127*
_output_shapes	
:?2!
BatchNorm_4/AssignMovingAvg/sub?
BatchNorm_4/AssignMovingAvg/mulMul#BatchNorm_4/AssignMovingAvg/sub:z:0*BatchNorm_4/AssignMovingAvg/decay:output:0*
T0*3
_class)
'%loc:@BatchNorm_4/AssignMovingAvg/8127*
_output_shapes	
:?2!
BatchNorm_4/AssignMovingAvg/mul?
/BatchNorm_4/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp batchnorm_4_assignmovingavg_8127#BatchNorm_4/AssignMovingAvg/mul:z:0+^BatchNorm_4/AssignMovingAvg/ReadVariableOp*3
_class)
'%loc:@BatchNorm_4/AssignMovingAvg/8127*
_output_shapes
 *
dtype021
/BatchNorm_4/AssignMovingAvg/AssignSubVariableOp?
#BatchNorm_4/AssignMovingAvg_1/decayConst*5
_class+
)'loc:@BatchNorm_4/AssignMovingAvg_1/8133*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#BatchNorm_4/AssignMovingAvg_1/decay?
,BatchNorm_4/AssignMovingAvg_1/ReadVariableOpReadVariableOp"batchnorm_4_assignmovingavg_1_8133*
_output_shapes	
:?*
dtype02.
,BatchNorm_4/AssignMovingAvg_1/ReadVariableOp?
!BatchNorm_4/AssignMovingAvg_1/subSub4BatchNorm_4/AssignMovingAvg_1/ReadVariableOp:value:0&BatchNorm_4/moments/Squeeze_1:output:0*
T0*5
_class+
)'loc:@BatchNorm_4/AssignMovingAvg_1/8133*
_output_shapes	
:?2#
!BatchNorm_4/AssignMovingAvg_1/sub?
!BatchNorm_4/AssignMovingAvg_1/mulMul%BatchNorm_4/AssignMovingAvg_1/sub:z:0,BatchNorm_4/AssignMovingAvg_1/decay:output:0*
T0*5
_class+
)'loc:@BatchNorm_4/AssignMovingAvg_1/8133*
_output_shapes	
:?2#
!BatchNorm_4/AssignMovingAvg_1/mul?
1BatchNorm_4/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp"batchnorm_4_assignmovingavg_1_8133%BatchNorm_4/AssignMovingAvg_1/mul:z:0-^BatchNorm_4/AssignMovingAvg_1/ReadVariableOp*5
_class+
)'loc:@BatchNorm_4/AssignMovingAvg_1/8133*
_output_shapes
 *
dtype023
1BatchNorm_4/AssignMovingAvg_1/AssignSubVariableOp
BatchNorm_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
BatchNorm_4/batchnorm/add/y?
BatchNorm_4/batchnorm/addAddV2&BatchNorm_4/moments/Squeeze_1:output:0$BatchNorm_4/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/add?
BatchNorm_4/batchnorm/RsqrtRsqrtBatchNorm_4/batchnorm/add:z:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/Rsqrt?
(BatchNorm_4/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_4_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02*
(BatchNorm_4/batchnorm/mul/ReadVariableOp?
BatchNorm_4/batchnorm/mulMulBatchNorm_4/batchnorm/Rsqrt:y:00BatchNorm_4/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/mul?
BatchNorm_4/batchnorm/mul_1Mulflatten/Reshape:output:0BatchNorm_4/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
BatchNorm_4/batchnorm/mul_1?
BatchNorm_4/batchnorm/mul_2Mul$BatchNorm_4/moments/Squeeze:output:0BatchNorm_4/batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/mul_2?
$BatchNorm_4/batchnorm/ReadVariableOpReadVariableOp-batchnorm_4_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02&
$BatchNorm_4/batchnorm/ReadVariableOp?
BatchNorm_4/batchnorm/subSub,BatchNorm_4/batchnorm/ReadVariableOp:value:0BatchNorm_4/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
BatchNorm_4/batchnorm/sub?
BatchNorm_4/batchnorm/add_1AddV2BatchNorm_4/batchnorm/mul_1:z:0BatchNorm_4/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
BatchNorm_4/batchnorm/add_1?
Dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
Dense_1/MatMul/ReadVariableOp?
Dense_1/MatMulMatMulBatchNorm_4/batchnorm/add_1:z:0%Dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Dense_1/MatMul?
Dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
Dense_1/BiasAdd/ReadVariableOp?
Dense_1/BiasAddBiasAddDense_1/MatMul:product:0&Dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
Dense_1/BiasAddp
Dense_1/ReluReluDense_1/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Dense_1/Relu?
*BatchNorm_5/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2,
*BatchNorm_5/moments/mean/reduction_indices?
BatchNorm_5/moments/meanMeanDense_1/Relu:activations:03BatchNorm_5/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
BatchNorm_5/moments/mean?
 BatchNorm_5/moments/StopGradientStopGradient!BatchNorm_5/moments/mean:output:0*
T0*
_output_shapes

: 2"
 BatchNorm_5/moments/StopGradient?
%BatchNorm_5/moments/SquaredDifferenceSquaredDifferenceDense_1/Relu:activations:0)BatchNorm_5/moments/StopGradient:output:0*
T0*'
_output_shapes
:????????? 2'
%BatchNorm_5/moments/SquaredDifference?
.BatchNorm_5/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 20
.BatchNorm_5/moments/variance/reduction_indices?
BatchNorm_5/moments/varianceMean)BatchNorm_5/moments/SquaredDifference:z:07BatchNorm_5/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
BatchNorm_5/moments/variance?
BatchNorm_5/moments/SqueezeSqueeze!BatchNorm_5/moments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
BatchNorm_5/moments/Squeeze?
BatchNorm_5/moments/Squeeze_1Squeeze%BatchNorm_5/moments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
BatchNorm_5/moments/Squeeze_1?
!BatchNorm_5/AssignMovingAvg/decayConst*3
_class)
'%loc:@BatchNorm_5/AssignMovingAvg/8166*
_output_shapes
: *
dtype0*
valueB
 *
?#<2#
!BatchNorm_5/AssignMovingAvg/decay?
*BatchNorm_5/AssignMovingAvg/ReadVariableOpReadVariableOp batchnorm_5_assignmovingavg_8166*
_output_shapes
: *
dtype02,
*BatchNorm_5/AssignMovingAvg/ReadVariableOp?
BatchNorm_5/AssignMovingAvg/subSub2BatchNorm_5/AssignMovingAvg/ReadVariableOp:value:0$BatchNorm_5/moments/Squeeze:output:0*
T0*3
_class)
'%loc:@BatchNorm_5/AssignMovingAvg/8166*
_output_shapes
: 2!
BatchNorm_5/AssignMovingAvg/sub?
BatchNorm_5/AssignMovingAvg/mulMul#BatchNorm_5/AssignMovingAvg/sub:z:0*BatchNorm_5/AssignMovingAvg/decay:output:0*
T0*3
_class)
'%loc:@BatchNorm_5/AssignMovingAvg/8166*
_output_shapes
: 2!
BatchNorm_5/AssignMovingAvg/mul?
/BatchNorm_5/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp batchnorm_5_assignmovingavg_8166#BatchNorm_5/AssignMovingAvg/mul:z:0+^BatchNorm_5/AssignMovingAvg/ReadVariableOp*3
_class)
'%loc:@BatchNorm_5/AssignMovingAvg/8166*
_output_shapes
 *
dtype021
/BatchNorm_5/AssignMovingAvg/AssignSubVariableOp?
#BatchNorm_5/AssignMovingAvg_1/decayConst*5
_class+
)'loc:@BatchNorm_5/AssignMovingAvg_1/8172*
_output_shapes
: *
dtype0*
valueB
 *
?#<2%
#BatchNorm_5/AssignMovingAvg_1/decay?
,BatchNorm_5/AssignMovingAvg_1/ReadVariableOpReadVariableOp"batchnorm_5_assignmovingavg_1_8172*
_output_shapes
: *
dtype02.
,BatchNorm_5/AssignMovingAvg_1/ReadVariableOp?
!BatchNorm_5/AssignMovingAvg_1/subSub4BatchNorm_5/AssignMovingAvg_1/ReadVariableOp:value:0&BatchNorm_5/moments/Squeeze_1:output:0*
T0*5
_class+
)'loc:@BatchNorm_5/AssignMovingAvg_1/8172*
_output_shapes
: 2#
!BatchNorm_5/AssignMovingAvg_1/sub?
!BatchNorm_5/AssignMovingAvg_1/mulMul%BatchNorm_5/AssignMovingAvg_1/sub:z:0,BatchNorm_5/AssignMovingAvg_1/decay:output:0*
T0*5
_class+
)'loc:@BatchNorm_5/AssignMovingAvg_1/8172*
_output_shapes
: 2#
!BatchNorm_5/AssignMovingAvg_1/mul?
1BatchNorm_5/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp"batchnorm_5_assignmovingavg_1_8172%BatchNorm_5/AssignMovingAvg_1/mul:z:0-^BatchNorm_5/AssignMovingAvg_1/ReadVariableOp*5
_class+
)'loc:@BatchNorm_5/AssignMovingAvg_1/8172*
_output_shapes
 *
dtype023
1BatchNorm_5/AssignMovingAvg_1/AssignSubVariableOp
BatchNorm_5/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
BatchNorm_5/batchnorm/add/y?
BatchNorm_5/batchnorm/addAddV2&BatchNorm_5/moments/Squeeze_1:output:0$BatchNorm_5/batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/add?
BatchNorm_5/batchnorm/RsqrtRsqrtBatchNorm_5/batchnorm/add:z:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/Rsqrt?
(BatchNorm_5/batchnorm/mul/ReadVariableOpReadVariableOp1batchnorm_5_batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02*
(BatchNorm_5/batchnorm/mul/ReadVariableOp?
BatchNorm_5/batchnorm/mulMulBatchNorm_5/batchnorm/Rsqrt:y:00BatchNorm_5/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/mul?
BatchNorm_5/batchnorm/mul_1MulDense_1/Relu:activations:0BatchNorm_5/batchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
BatchNorm_5/batchnorm/mul_1?
BatchNorm_5/batchnorm/mul_2Mul$BatchNorm_5/moments/Squeeze:output:0BatchNorm_5/batchnorm/mul:z:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/mul_2?
$BatchNorm_5/batchnorm/ReadVariableOpReadVariableOp-batchnorm_5_batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02&
$BatchNorm_5/batchnorm/ReadVariableOp?
BatchNorm_5/batchnorm/subSub,BatchNorm_5/batchnorm/ReadVariableOp:value:0BatchNorm_5/batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
BatchNorm_5/batchnorm/sub?
BatchNorm_5/batchnorm/add_1AddV2BatchNorm_5/batchnorm/mul_1:z:0BatchNorm_5/batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
BatchNorm_5/batchnorm/add_1s
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/dropout/Const?
dropout/dropout/MulMulBatchNorm_5/batchnorm/add_1:z:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/dropout/Mul}
dropout/dropout/ShapeShapeBatchNorm_5/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout/dropout/Shape?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02.
,dropout/dropout/random_uniform/RandomUniform?
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2 
dropout/dropout/GreaterEqual/y?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/dropout/GreaterEqual?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/dropout/Cast?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/dropout/Mul_1?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMuldropout/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense/BiasAdds
dense/SoftmaxSoftmaxdense/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense/Softmax?
IdentityIdentitydense/Softmax:softmax:00^BatchNorm_1/AssignMovingAvg/AssignSubVariableOp2^BatchNorm_1/AssignMovingAvg_1/AssignSubVariableOp0^BatchNorm_2/AssignMovingAvg/AssignSubVariableOp2^BatchNorm_2/AssignMovingAvg_1/AssignSubVariableOp0^BatchNorm_3/AssignMovingAvg/AssignSubVariableOp2^BatchNorm_3/AssignMovingAvg_1/AssignSubVariableOp0^BatchNorm_4/AssignMovingAvg/AssignSubVariableOp2^BatchNorm_4/AssignMovingAvg_1/AssignSubVariableOp0^BatchNorm_5/AssignMovingAvg/AssignSubVariableOp2^BatchNorm_5/AssignMovingAvg_1/AssignSubVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2b
/BatchNorm_1/AssignMovingAvg/AssignSubVariableOp/BatchNorm_1/AssignMovingAvg/AssignSubVariableOp2f
1BatchNorm_1/AssignMovingAvg_1/AssignSubVariableOp1BatchNorm_1/AssignMovingAvg_1/AssignSubVariableOp2b
/BatchNorm_2/AssignMovingAvg/AssignSubVariableOp/BatchNorm_2/AssignMovingAvg/AssignSubVariableOp2f
1BatchNorm_2/AssignMovingAvg_1/AssignSubVariableOp1BatchNorm_2/AssignMovingAvg_1/AssignSubVariableOp2b
/BatchNorm_3/AssignMovingAvg/AssignSubVariableOp/BatchNorm_3/AssignMovingAvg/AssignSubVariableOp2f
1BatchNorm_3/AssignMovingAvg_1/AssignSubVariableOp1BatchNorm_3/AssignMovingAvg_1/AssignSubVariableOp2b
/BatchNorm_4/AssignMovingAvg/AssignSubVariableOp/BatchNorm_4/AssignMovingAvg/AssignSubVariableOp2f
1BatchNorm_4/AssignMovingAvg_1/AssignSubVariableOp1BatchNorm_4/AssignMovingAvg_1/AssignSubVariableOp2b
/BatchNorm_5/AssignMovingAvg/AssignSubVariableOp/BatchNorm_5/AssignMovingAvg/AssignSubVariableOp2f
1BatchNorm_5/AssignMovingAvg_1/AssignSubVariableOp1BatchNorm_5/AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_6508

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????:::::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
D
(__inference_Pooling_1_layer_call_fn_6393

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_1_layer_call_and_return_conditional_losses_63872
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_8003
input_layer
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 **
config_proto

CPU

GPU 2J 8*(
f#R!
__inference__wrapped_model_62112
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
*__inference_BatchNorm_2_layer_call_fn_8705

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_71102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?

?
@__inference_Conv_4_layer_call_and_return_conditional_losses_6679

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????:::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
z
%__inference_Conv_2_layer_call_fn_6381

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_2_layer_call_and_return_conditional_losses_63712
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?M
?	
C__inference_cnn_model_layer_call_and_return_conditional_losses_7597

inputs
conv_1_7517
conv_1_7519
batchnorm_1_7522
batchnorm_1_7524
batchnorm_1_7526
batchnorm_1_7528
conv_2_7531
conv_2_7533
batchnorm_2_7537
batchnorm_2_7539
batchnorm_2_7541
batchnorm_2_7543
conv_3_7546
conv_3_7548
batchnorm_3_7551
batchnorm_3_7553
batchnorm_3_7555
batchnorm_3_7557
conv_4_7560
conv_4_7562
batchnorm_4_7567
batchnorm_4_7569
batchnorm_4_7571
batchnorm_4_7573
dense_1_7576
dense_1_7578
batchnorm_5_7581
batchnorm_5_7583
batchnorm_5_7585
batchnorm_5_7587

dense_7591

dense_7593
identity??#BatchNorm_1/StatefulPartitionedCall?#BatchNorm_2/StatefulPartitionedCall?#BatchNorm_3/StatefulPartitionedCall?#BatchNorm_4/StatefulPartitionedCall?#BatchNorm_5/StatefulPartitionedCall?Conv_1/StatefulPartitionedCall?Conv_2/StatefulPartitionedCall?Conv_3/StatefulPartitionedCall?Conv_4/StatefulPartitionedCall?Dense_1/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?
Conv_1/StatefulPartitionedCallStatefulPartitionedCallinputsconv_1_7517conv_1_7519*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_1_layer_call_and_return_conditional_losses_62232 
Conv_1/StatefulPartitionedCall?
#BatchNorm_1/StatefulPartitionedCallStatefulPartitionedCall'Conv_1/StatefulPartitionedCall:output:0batchnorm_1_7522batchnorm_1_7524batchnorm_1_7526batchnorm_1_7528*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_70202%
#BatchNorm_1/StatefulPartitionedCall?
Conv_2/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_1/StatefulPartitionedCall:output:0conv_2_7531conv_2_7533*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_2_layer_call_and_return_conditional_losses_63712 
Conv_2/StatefulPartitionedCall?
Pooling_1/PartitionedCallPartitionedCall'Conv_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_1_layer_call_and_return_conditional_losses_63872
Pooling_1/PartitionedCall?
#BatchNorm_2/StatefulPartitionedCallStatefulPartitionedCall"Pooling_1/PartitionedCall:output:0batchnorm_2_7537batchnorm_2_7539batchnorm_2_7541batchnorm_2_7543*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_71102%
#BatchNorm_2/StatefulPartitionedCall?
Conv_3/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_2/StatefulPartitionedCall:output:0conv_3_7546conv_3_7548*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_3_layer_call_and_return_conditional_losses_65312 
Conv_3/StatefulPartitionedCall?
#BatchNorm_3/StatefulPartitionedCallStatefulPartitionedCall'Conv_3/StatefulPartitionedCall:output:0batchnorm_3_7551batchnorm_3_7553batchnorm_3_7555batchnorm_3_7557*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_71992%
#BatchNorm_3/StatefulPartitionedCall?
Conv_4/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_3/StatefulPartitionedCall:output:0conv_4_7560conv_4_7562*
Tin
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_4_layer_call_and_return_conditional_losses_66792 
Conv_4/StatefulPartitionedCall?
Pooling_2/PartitionedCallPartitionedCall'Conv_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*/
_output_shapes
:?????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_Pooling_2_layer_call_and_return_conditional_losses_66952
Pooling_2/PartitionedCall?
flatten/PartitionedCallPartitionedCall"Pooling_2/PartitionedCall:output:0*
Tin
2*
Tout
2*(
_output_shapes
:??????????* 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_72652
flatten/PartitionedCall?
#BatchNorm_4/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0batchnorm_4_7567batchnorm_4_7569batchnorm_4_7571batchnorm_4_7573*
Tin	
2*
Tout
2*(
_output_shapes
:??????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_67972%
#BatchNorm_4/StatefulPartitionedCall?
Dense_1/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_4/StatefulPartitionedCall:output:0dense_1_7576dense_1_7578*
Tin
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_Dense_1_layer_call_and_return_conditional_losses_73192!
Dense_1/StatefulPartitionedCall?
#BatchNorm_5/StatefulPartitionedCallStatefulPartitionedCall(Dense_1/StatefulPartitionedCall:output:0batchnorm_5_7581batchnorm_5_7583batchnorm_5_7585batchnorm_5_7587*
Tin	
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_69372%
#BatchNorm_5/StatefulPartitionedCall?
dropout/StatefulPartitionedCallStatefulPartitionedCall,BatchNorm_5/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*'
_output_shapes
:????????? * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_73822!
dropout/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0
dense_7591
dense_7593*
Tin
2*
Tout
2*'
_output_shapes
:?????????
*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_74112
dense/StatefulPartitionedCall?
IdentityIdentity&dense/StatefulPartitionedCall:output:0$^BatchNorm_1/StatefulPartitionedCall$^BatchNorm_2/StatefulPartitionedCall$^BatchNorm_3/StatefulPartitionedCall$^BatchNorm_4/StatefulPartitionedCall$^BatchNorm_5/StatefulPartitionedCall^Conv_1/StatefulPartitionedCall^Conv_2/StatefulPartitionedCall^Conv_3/StatefulPartitionedCall^Conv_4/StatefulPartitionedCall ^Dense_1/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::2J
#BatchNorm_1/StatefulPartitionedCall#BatchNorm_1/StatefulPartitionedCall2J
#BatchNorm_2/StatefulPartitionedCall#BatchNorm_2/StatefulPartitionedCall2J
#BatchNorm_3/StatefulPartitionedCall#BatchNorm_3/StatefulPartitionedCall2J
#BatchNorm_4/StatefulPartitionedCall#BatchNorm_4/StatefulPartitionedCall2J
#BatchNorm_5/StatefulPartitionedCall#BatchNorm_5/StatefulPartitionedCall2@
Conv_1/StatefulPartitionedCallConv_1/StatefulPartitionedCall2@
Conv_2/StatefulPartitionedCallConv_2/StatefulPartitionedCall2@
Conv_3/StatefulPartitionedCallConv_3/StatefulPartitionedCall2@
Conv_4/StatefulPartitionedCallConv_4/StatefulPartitionedCall2B
Dense_1/StatefulPartitionedCallDense_1/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
?__inference_dense_layer_call_and_return_conditional_losses_7411

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmaxe
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*.
_input_shapes
:????????? :::O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
z
%__inference_Conv_3_layer_call_fn_6541

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_3_layer_call_and_return_conditional_losses_65312
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_BatchNorm_1_layer_call_fn_8543

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_63172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_5_layer_call_fn_9209

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_69372
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:
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
: 
?
{
&__inference_Dense_1_layer_call_fn_9104

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*'
_output_shapes
:????????? *$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_Dense_1_layer_call_and_return_conditional_losses_73192
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_9239

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8605

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3p
IdentityIdentityFusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????:::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?$
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8512

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_6970

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity??
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1?
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_1?
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp_2?
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1g
IdentityIdentitybatchnorm/add_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? :::::O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_4_layer_call_fn_9084

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*(
_output_shapes
:??????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_68302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:
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
: 
?
?
A__inference_Dense_1_layer_call_and_return_conditional_losses_9095

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity??
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	? *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Reluf
IdentityIdentityRelu:activations:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*/
_input_shapes
:??????????:::P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?*
?
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_6797

inputs
assignmovingavg_6772
assignmovingavg_1_6778)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	?2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:??????????2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	?*
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:?*
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst*'
_class
loc:@AssignMovingAvg/6772*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_6772*
_output_shapes	
:?*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*'
_class
loc:@AssignMovingAvg/6772*
_output_shapes	
:?2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*'
_class
loc:@AssignMovingAvg/6772*
_output_shapes	
:?2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_6772AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*'
_class
loc:@AssignMovingAvg/6772*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst*)
_class
loc:@AssignMovingAvg_1/6778*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_6778*
_output_shapes	
:?*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/6778*
_output_shapes	
:?2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/6778*
_output_shapes	
:?2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_6778AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*)
_class
loc:@AssignMovingAvg_1/6778*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:
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
: 
?$
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_7199

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
(__inference_cnn_model_layer_call_fn_7664
input_layer
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*'
_output_shapes
:?????????
*8
_read_only_resource_inputs
	
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_cnn_model_layer_call_and_return_conditional_losses_75972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_7128

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3p
IdentityIdentityFusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????:::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
(__inference_cnn_model_layer_call_fn_7816
input_layer
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_layerunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_30*,
Tin%
#2!*
Tout
2*'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_cnn_model_layer_call_and_return_conditional_losses_77492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:\ X
/
_output_shapes
:?????????
%
_user_specified_nameinput_layer:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?
?
*__inference_BatchNorm_5_layer_call_fn_9222

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*'
_output_shapes
:????????? *&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_69702
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:
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
: 
?
z
%__inference_Conv_4_layer_call_fn_6689

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_4_layer_call_and_return_conditional_losses_66792
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?

`
A__inference_dropout_layer_call_and_return_conditional_losses_7382

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU??2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:????????? 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:????????? *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:????????? 2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:????????? 2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:????????? 2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?$
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8587

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
_
A__inference_dropout_layer_call_and_return_conditional_losses_7387

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:????????? 2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:????????? 2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
*__inference_BatchNorm_1_layer_call_fn_8556

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_63482
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?$
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_6317

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
?
(__inference_cnn_model_layer_call_fn_8469

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30
identity??StatefulPartitionedCall?
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
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30*,
Tin%
#2!*
Tout
2*'
_output_shapes
:?????????
*B
_read_only_resource_inputs$
" 	
 **
config_proto

CPU

GPU 2J 8*L
fGRE
C__inference_cnn_model_layer_call_and_return_conditional_losses_77492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*?
_input_shapes?
?:?????????::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :
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
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: 
?$
?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_7110

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
B
&__inference_dropout_layer_call_fn_9249

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*'
_output_shapes
:????????? * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_73872
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? :O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
z
%__inference_Conv_1_layer_call_fn_6233

inputs
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*I
fDRB
@__inference_Conv_1_layer_call_and_return_conditional_losses_62232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
*__inference_BatchNorm_3_layer_call_fn_8955

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_66562
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?$
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_7020

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_7038

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3p
IdentityIdentityFusedBatchNormV3:y:0*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????:::::W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_4_layer_call_fn_9071

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*(
_output_shapes
:??????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_67972
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:??????????::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_6348

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????:::::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?)
?
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_6937

inputs
assignmovingavg_6912
assignmovingavg_1_6918)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOp?
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices?
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

: 2
moments/StopGradient?
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:????????? 2
moments/SquaredDifference?
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices?
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

: *
	keep_dims(2
moments/variance?
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze?
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
: *
squeeze_dims
 2
moments/Squeeze_1?
AssignMovingAvg/decayConst*'
_class
loc:@AssignMovingAvg/6912*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg/decay?
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_6912*
_output_shapes
: *
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*'
_class
loc:@AssignMovingAvg/6912*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*'
_class
loc:@AssignMovingAvg/6912*
_output_shapes
: 2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_6912AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*'
_class
loc:@AssignMovingAvg/6912*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/decayConst*)
_class
loc:@AssignMovingAvg_1/6918*
_output_shapes
: *
dtype0*
valueB
 *
?#<2
AssignMovingAvg_1/decay?
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_6918*
_output_shapes
: *
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/6918*
_output_shapes
: 2
AssignMovingAvg_1/sub?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*)
_class
loc:@AssignMovingAvg_1/6918*
_output_shapes
: 2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_6918AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*)
_class
loc:@AssignMovingAvg_1/6918*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:2
batchnorm/add/y?
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
: 2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
: 2
batchnorm/Rsqrt?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/mul/ReadVariableOp?
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
: 2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
: 2
batchnorm/mul_2?
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
: *
dtype02
batchnorm/ReadVariableOp?
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
: 2
batchnorm/sub?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:????????? 2
batchnorm/add_1?
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:????????? ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs:
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
: 
?
_
&__inference_dropout_layer_call_fn_9244

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*'
_output_shapes
:????????? * 
_read_only_resource_inputs
 **
config_proto

CPU

GPU 2J 8*J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_73822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*&
_input_shapes
:????????? 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
??
?#
__inference__traced_save_9551
file_prefix,
(savev2_conv_1_kernel_read_readvariableop*
&savev2_conv_1_bias_read_readvariableop0
,savev2_batchnorm_1_gamma_read_readvariableop/
+savev2_batchnorm_1_beta_read_readvariableop6
2savev2_batchnorm_1_moving_mean_read_readvariableop:
6savev2_batchnorm_1_moving_variance_read_readvariableop,
(savev2_conv_2_kernel_read_readvariableop*
&savev2_conv_2_bias_read_readvariableop0
,savev2_batchnorm_2_gamma_read_readvariableop/
+savev2_batchnorm_2_beta_read_readvariableop6
2savev2_batchnorm_2_moving_mean_read_readvariableop:
6savev2_batchnorm_2_moving_variance_read_readvariableop,
(savev2_conv_3_kernel_read_readvariableop*
&savev2_conv_3_bias_read_readvariableop0
,savev2_batchnorm_3_gamma_read_readvariableop/
+savev2_batchnorm_3_beta_read_readvariableop6
2savev2_batchnorm_3_moving_mean_read_readvariableop:
6savev2_batchnorm_3_moving_variance_read_readvariableop,
(savev2_conv_4_kernel_read_readvariableop*
&savev2_conv_4_bias_read_readvariableop0
,savev2_batchnorm_4_gamma_read_readvariableop/
+savev2_batchnorm_4_beta_read_readvariableop6
2savev2_batchnorm_4_moving_mean_read_readvariableop:
6savev2_batchnorm_4_moving_variance_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop0
,savev2_batchnorm_5_gamma_read_readvariableop/
+savev2_batchnorm_5_beta_read_readvariableop6
2savev2_batchnorm_5_moving_mean_read_readvariableop:
6savev2_batchnorm_5_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop3
/savev2_adam_conv_1_kernel_m_read_readvariableop1
-savev2_adam_conv_1_bias_m_read_readvariableop7
3savev2_adam_batchnorm_1_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_1_beta_m_read_readvariableop3
/savev2_adam_conv_2_kernel_m_read_readvariableop1
-savev2_adam_conv_2_bias_m_read_readvariableop7
3savev2_adam_batchnorm_2_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_2_beta_m_read_readvariableop3
/savev2_adam_conv_3_kernel_m_read_readvariableop1
-savev2_adam_conv_3_bias_m_read_readvariableop7
3savev2_adam_batchnorm_3_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_3_beta_m_read_readvariableop3
/savev2_adam_conv_4_kernel_m_read_readvariableop1
-savev2_adam_conv_4_bias_m_read_readvariableop7
3savev2_adam_batchnorm_4_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_4_beta_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop7
3savev2_adam_batchnorm_5_gamma_m_read_readvariableop6
2savev2_adam_batchnorm_5_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop3
/savev2_adam_conv_1_kernel_v_read_readvariableop1
-savev2_adam_conv_1_bias_v_read_readvariableop7
3savev2_adam_batchnorm_1_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_1_beta_v_read_readvariableop3
/savev2_adam_conv_2_kernel_v_read_readvariableop1
-savev2_adam_conv_2_bias_v_read_readvariableop7
3savev2_adam_batchnorm_2_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_2_beta_v_read_readvariableop3
/savev2_adam_conv_3_kernel_v_read_readvariableop1
-savev2_adam_conv_3_bias_v_read_readvariableop7
3savev2_adam_batchnorm_3_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_3_beta_v_read_readvariableop3
/savev2_adam_conv_4_kernel_v_read_readvariableop1
-savev2_adam_conv_4_bias_v_read_readvariableop7
3savev2_adam_batchnorm_4_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_4_beta_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop7
3savev2_adam_batchnorm_5_gamma_v_read_readvariableop6
2savev2_adam_batchnorm_5_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop
savev2_1_const

identity_1??MergeV2Checkpoints?SaveV2?SaveV2_1?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Const?
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*<
value3B1 B+_temp_dc752222bb594d7b87746f5a5701980a/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?/
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?.
value?.B?.UB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-9/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-9/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-9/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-9/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-10/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-9/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-9/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-10/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-10/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*?
value?B?UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?!
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv_1_kernel_read_readvariableop&savev2_conv_1_bias_read_readvariableop,savev2_batchnorm_1_gamma_read_readvariableop+savev2_batchnorm_1_beta_read_readvariableop2savev2_batchnorm_1_moving_mean_read_readvariableop6savev2_batchnorm_1_moving_variance_read_readvariableop(savev2_conv_2_kernel_read_readvariableop&savev2_conv_2_bias_read_readvariableop,savev2_batchnorm_2_gamma_read_readvariableop+savev2_batchnorm_2_beta_read_readvariableop2savev2_batchnorm_2_moving_mean_read_readvariableop6savev2_batchnorm_2_moving_variance_read_readvariableop(savev2_conv_3_kernel_read_readvariableop&savev2_conv_3_bias_read_readvariableop,savev2_batchnorm_3_gamma_read_readvariableop+savev2_batchnorm_3_beta_read_readvariableop2savev2_batchnorm_3_moving_mean_read_readvariableop6savev2_batchnorm_3_moving_variance_read_readvariableop(savev2_conv_4_kernel_read_readvariableop&savev2_conv_4_bias_read_readvariableop,savev2_batchnorm_4_gamma_read_readvariableop+savev2_batchnorm_4_beta_read_readvariableop2savev2_batchnorm_4_moving_mean_read_readvariableop6savev2_batchnorm_4_moving_variance_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop,savev2_batchnorm_5_gamma_read_readvariableop+savev2_batchnorm_5_beta_read_readvariableop2savev2_batchnorm_5_moving_mean_read_readvariableop6savev2_batchnorm_5_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop/savev2_adam_conv_1_kernel_m_read_readvariableop-savev2_adam_conv_1_bias_m_read_readvariableop3savev2_adam_batchnorm_1_gamma_m_read_readvariableop2savev2_adam_batchnorm_1_beta_m_read_readvariableop/savev2_adam_conv_2_kernel_m_read_readvariableop-savev2_adam_conv_2_bias_m_read_readvariableop3savev2_adam_batchnorm_2_gamma_m_read_readvariableop2savev2_adam_batchnorm_2_beta_m_read_readvariableop/savev2_adam_conv_3_kernel_m_read_readvariableop-savev2_adam_conv_3_bias_m_read_readvariableop3savev2_adam_batchnorm_3_gamma_m_read_readvariableop2savev2_adam_batchnorm_3_beta_m_read_readvariableop/savev2_adam_conv_4_kernel_m_read_readvariableop-savev2_adam_conv_4_bias_m_read_readvariableop3savev2_adam_batchnorm_4_gamma_m_read_readvariableop2savev2_adam_batchnorm_4_beta_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop3savev2_adam_batchnorm_5_gamma_m_read_readvariableop2savev2_adam_batchnorm_5_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop/savev2_adam_conv_1_kernel_v_read_readvariableop-savev2_adam_conv_1_bias_v_read_readvariableop3savev2_adam_batchnorm_1_gamma_v_read_readvariableop2savev2_adam_batchnorm_1_beta_v_read_readvariableop/savev2_adam_conv_2_kernel_v_read_readvariableop-savev2_adam_conv_2_bias_v_read_readvariableop3savev2_adam_batchnorm_2_gamma_v_read_readvariableop2savev2_adam_batchnorm_2_beta_v_read_readvariableop/savev2_adam_conv_3_kernel_v_read_readvariableop-savev2_adam_conv_3_bias_v_read_readvariableop3savev2_adam_batchnorm_3_gamma_v_read_readvariableop2savev2_adam_batchnorm_3_beta_v_read_readvariableop/savev2_adam_conv_4_kernel_v_read_readvariableop-savev2_adam_conv_4_bias_v_read_readvariableop3savev2_adam_batchnorm_4_gamma_v_read_readvariableop2savev2_adam_batchnorm_4_beta_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop3savev2_adam_batchnorm_5_gamma_v_read_readvariableop2savev2_adam_batchnorm_5_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U	2
SaveV2?
ShardedFilename_1/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B :2
ShardedFilename_1/shard?
ShardedFilename_1ShardedFilenameStringJoin:output:0 ShardedFilename_1/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename_1?
SaveV2_1/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2_1/tensor_names?
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueB
B 2
SaveV2_1/shape_and_slices?
SaveV2_1SaveV2ShardedFilename_1:filename:0SaveV2_1/tensor_names:output:0"SaveV2_1/shape_and_slices:output:0savev2_1_const^SaveV2"/device:CPU:0*
_output_shapes
 *
dtypes
22

SaveV2_1?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0ShardedFilename_1:filename:0^SaveV2	^SaveV2_1"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix	^SaveV2_1"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity?

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints^SaveV2	^SaveV2_1*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :::::::::::::::::::::?:?:?:?:	? : : : : : : 
:
: : : : : : : : : :::::::::::::::?:?:	? : : : : 
:
:::::::::::::::?:?:	? : : : : 
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints2
SaveV2SaveV22
SaveV2_1SaveV2_1:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 	

_output_shapes
:: 


_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:%!

_output_shapes
:	? : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :$ 

_output_shapes

: 
:  

_output_shapes
:
:!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: :%

_output_shapes
: :&

_output_shapes
: :'

_output_shapes
: :(

_output_shapes
: :)

_output_shapes
: :,*(
&
_output_shapes
:: +

_output_shapes
:: ,

_output_shapes
:: -

_output_shapes
::,.(
&
_output_shapes
:: /

_output_shapes
:: 0

_output_shapes
:: 1

_output_shapes
::,2(
&
_output_shapes
:: 3

_output_shapes
:: 4

_output_shapes
:: 5

_output_shapes
::,6(
&
_output_shapes
:: 7

_output_shapes
::!8

_output_shapes	
:?:!9

_output_shapes	
:?:%:!

_output_shapes
:	? : ;

_output_shapes
: : <

_output_shapes
: : =

_output_shapes
: :$> 

_output_shapes

: 
: ?

_output_shapes
:
:,@(
&
_output_shapes
:: A

_output_shapes
:: B

_output_shapes
:: C

_output_shapes
::,D(
&
_output_shapes
:: E

_output_shapes
:: F

_output_shapes
:: G

_output_shapes
::,H(
&
_output_shapes
:: I

_output_shapes
:: J

_output_shapes
:: K

_output_shapes
::,L(
&
_output_shapes
:: M

_output_shapes
::!N

_output_shapes	
:?:!O

_output_shapes	
:?:%P!

_output_shapes
:	? : Q

_output_shapes
: : R

_output_shapes
: : S

_output_shapes
: :$T 

_output_shapes

: 
: U

_output_shapes
:
:V

_output_shapes
: 
?
?
*__inference_BatchNorm_3_layer_call_fn_8880

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*&
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_72172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_6656

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity?t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:*
is_training( 2
FusedBatchNormV3?
IdentityIdentityFusedBatchNormV3:y:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????:::::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?

?
@__inference_Conv_1_layer_call_and_return_conditional_losses_6223

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity??
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingVALID*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????2
Relu?
IdentityIdentityRelu:activations:0*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+???????????????????????????:::i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?$
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8911

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+???????????????????????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*A
_output_shapes/
-:+???????????????????????????2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+???????????????????????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs:
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
: 
?
_
C__inference_Pooling_2_layer_call_and_return_conditional_losses_6695

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
]
A__inference_flatten_layer_call_and_return_conditional_losses_8961

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*.
_input_shapes
:?????????:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8836

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity??#AssignMovingAvg/AssignSubVariableOp?%AssignMovingAvg_1/AssignSubVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1?
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp?
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1?
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:?????????:::::*
epsilon%o?:2
FusedBatchNormV3S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *?p}?2
Const?
AssignMovingAvg/sub/xConst*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg/sub/x?
AssignMovingAvg/subSubAssignMovingAvg/sub/x:output:0Const:output:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
: 2
AssignMovingAvg/sub?
AssignMovingAvg/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02 
AssignMovingAvg/ReadVariableOp?
AssignMovingAvg/sub_1Sub&AssignMovingAvg/ReadVariableOp:value:0FusedBatchNormV3:batch_mean:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/sub_1?
AssignMovingAvg/mulMulAssignMovingAvg/sub_1:z:0AssignMovingAvg/sub:z:0*
T0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
:2
AssignMovingAvg/mul?
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp(fusedbatchnormv3_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp ^FusedBatchNormV3/ReadVariableOp*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp?
AssignMovingAvg_1/sub/xConst*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: *
dtype0*
valueB
 *  ??2
AssignMovingAvg_1/sub/x?
AssignMovingAvg_1/subSub AssignMovingAvg_1/sub/x:output:0Const:output:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
: 2
AssignMovingAvg_1/sub?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOp?
AssignMovingAvg_1/sub_1Sub(AssignMovingAvg_1/ReadVariableOp:value:0!FusedBatchNormV3:batch_variance:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/sub_1?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub_1:z:0AssignMovingAvg_1/sub:z:0*
T0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
:2
AssignMovingAvg_1/mul?
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp*fusedbatchnormv3_readvariableop_1_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOp?
IdentityIdentityFusedBatchNormV3:y:0$^AssignMovingAvg/AssignSubVariableOp&^AssignMovingAvg_1/AssignSubVariableOp*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: 
?
?
*__inference_BatchNorm_1_layer_call_fn_8618

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*/
_output_shapes
:?????????*$
_read_only_resource_inputs
**
config_proto

CPU

GPU 2J 8*N
fIRG
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_70202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:?????????::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs:
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
K
input_layer<
serving_default_input_layer:0?????????9
dense0
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:ئ
̏
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer-4
layer_with_weights-3
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer-10
layer_with_weights-7
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?_default_save_signature
?__call__
+?&call_and_return_all_conditional_losses"??
_tf_keras_model??{"class_name": "Model", "name": "cnn_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "config": {"name": "cnn_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_layer"}, "name": "input_layer", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "Conv_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_1", "inbound_nodes": [[["input_layer", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_1", "inbound_nodes": [[["Conv_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_2", "inbound_nodes": [[["BatchNorm_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "Pooling_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "Pooling_1", "inbound_nodes": [[["Conv_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_2", "inbound_nodes": [[["Pooling_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv_3", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_3", "inbound_nodes": [[["BatchNorm_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_3", "inbound_nodes": [[["Conv_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv_4", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_4", "inbound_nodes": [[["BatchNorm_3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "Pooling_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "Pooling_2", "inbound_nodes": [[["Conv_4", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["Pooling_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_4", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_1", "inbound_nodes": [[["BatchNorm_4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_5", "inbound_nodes": [[["Dense_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["BatchNorm_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_layer", 0, 0]], "output_layers": [["dense", 0, 0]]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "keras_version": "2.3.0-tf", "backend": "tensorflow", "model_config": {"class_name": "Model", "config": {"name": "cnn_model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_layer"}, "name": "input_layer", "inbound_nodes": []}, {"class_name": "Conv2D", "config": {"name": "Conv_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_1", "inbound_nodes": [[["input_layer", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_1", "inbound_nodes": [[["Conv_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_2", "inbound_nodes": [[["BatchNorm_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "Pooling_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "Pooling_1", "inbound_nodes": [[["Conv_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_2", "inbound_nodes": [[["Pooling_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv_3", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_3", "inbound_nodes": [[["BatchNorm_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_3", "inbound_nodes": [[["Conv_3", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "Conv_4", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Conv_4", "inbound_nodes": [[["BatchNorm_3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "Pooling_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "Pooling_2", "inbound_nodes": [[["Conv_4", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["Pooling_2", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_4", "inbound_nodes": [[["flatten", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "Dense_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "Dense_1", "inbound_nodes": [[["BatchNorm_4", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "BatchNorm_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "BatchNorm_5", "inbound_nodes": [[["Dense_1", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["BatchNorm_5", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_layer", 0, 0]], "output_layers": [["dense", 0, 0]]}}, "training_config": {"loss": {"class_name": "CategoricalCrossentropy", "config": {"reduction": "auto", "name": "categorical_crossentropy", "from_logits": false, "label_smoothing": 0}}, "metrics": ["accuracy"], "weighted_metrics": null, "loss_weights": null, "sample_weight_mode": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_layer", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_layer"}}
?	

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Conv_1", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?	
axis
	gamma
beta
 moving_mean
!moving_variance
"trainable_variables
#regularization_losses
$	variables
%	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "BatchNorm_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27, 27, 16]}}
?	

&kernel
'bias
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Conv_2", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 27, 27, 16]}}
?
,trainable_variables
-regularization_losses
.	variables
/	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "Pooling_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Pooling_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?	
0axis
	1gamma
2beta
3moving_mean
4moving_variance
5trainable_variables
6regularization_losses
7	variables
8	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "BatchNorm_2", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 13, 16]}}
?	

9kernel
:bias
;trainable_variables
<regularization_losses
=	variables
>	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Conv_3", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 13, 13, 16]}}
?	
?axis
	@gamma
Abeta
Bmoving_mean
Cmoving_variance
Dtrainable_variables
Eregularization_losses
F	variables
G	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "BatchNorm_3", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 16]}}
?	

Hkernel
Ibias
Jtrainable_variables
Kregularization_losses
L	variables
M	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Conv2D", "name": "Conv_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Conv_4", "trainable": true, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [2, 2]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 16}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 12, 12, 16]}}
?
Ntrainable_variables
Oregularization_losses
P	variables
Q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "MaxPooling2D", "name": "Pooling_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Pooling_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
?
Rtrainable_variables
Sregularization_losses
T	variables
U	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
?
Vaxis
	Wgamma
Xbeta
Ymoving_mean
Zmoving_variance
[trainable_variables
\regularization_losses
]	variables
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "BatchNorm_4", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 400}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 400]}}
?

_kernel
`bias
atrainable_variables
bregularization_losses
c	variables
d	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "Dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "Dense_1", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 400}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 400]}}
?
eaxis
	fgamma
gbeta
hmoving_mean
imoving_variance
jtrainable_variables
kregularization_losses
l	variables
m	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "BatchNormalization", "name": "BatchNorm_5", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "BatchNorm_5", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
ntrainable_variables
oregularization_losses
p	variables
q	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}
?

rkernel
sbias
ttrainable_variables
uregularization_losses
v	variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
xiter

ybeta_1

zbeta_2
	{decay
|learning_ratem?m?m?m?&m?'m?1m?2m?9m?:m?@m?Am?Hm?Im?Wm?Xm?_m?`m?fm?gm?rm?sm?v?v?v?v?&v?'v?1v?2v?9v?:v?@v?Av?Hv?Iv?Wv?Xv?_v?`v?fv?gv?rv?sv?"
	optimizer
?
0
1
2
3
&4
'5
16
27
98
:9
@10
A11
H12
I13
W14
X15
_16
`17
f18
g19
r20
s21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
1
2
3
 4
!5
&6
'7
18
29
310
411
912
:13
@14
A15
B16
C17
H18
I19
W20
X21
Y22
Z23
_24
`25
f26
g27
h28
i29
r30
s31"
trackable_list_wrapper
?
}metrics
~non_trainable_variables
trainable_variables
layer_regularization_losses
regularization_losses
?layer_metrics
	variables
?layers
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
':%2Conv_1/kernel
:2Conv_1/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
trainable_variables
 ?layer_regularization_losses
regularization_losses
?layer_metrics
	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2BatchNorm_1/gamma
:2BatchNorm_1/beta
':% (2BatchNorm_1/moving_mean
+:) (2BatchNorm_1/moving_variance
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
"trainable_variables
 ?layer_regularization_losses
#regularization_losses
?layer_metrics
$	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%2Conv_2/kernel
:2Conv_2/bias
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
(trainable_variables
 ?layer_regularization_losses
)regularization_losses
?layer_metrics
*	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
,trainable_variables
 ?layer_regularization_losses
-regularization_losses
?layer_metrics
.	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2BatchNorm_2/gamma
:2BatchNorm_2/beta
':% (2BatchNorm_2/moving_mean
+:) (2BatchNorm_2/moving_variance
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
<
10
21
32
43"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
5trainable_variables
 ?layer_regularization_losses
6regularization_losses
?layer_metrics
7	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%2Conv_3/kernel
:2Conv_3/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
;trainable_variables
 ?layer_regularization_losses
<regularization_losses
?layer_metrics
=	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
:2BatchNorm_3/gamma
:2BatchNorm_3/beta
':% (2BatchNorm_3/moving_mean
+:) (2BatchNorm_3/moving_variance
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
@0
A1
B2
C3"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
Dtrainable_variables
 ?layer_regularization_losses
Eregularization_losses
?layer_metrics
F	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
':%2Conv_4/kernel
:2Conv_4/bias
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
Jtrainable_variables
 ?layer_regularization_losses
Kregularization_losses
?layer_metrics
L	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
Ntrainable_variables
 ?layer_regularization_losses
Oregularization_losses
?layer_metrics
P	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
Rtrainable_variables
 ?layer_regularization_losses
Sregularization_losses
?layer_metrics
T	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 :?2BatchNorm_4/gamma
:?2BatchNorm_4/beta
(:&? (2BatchNorm_4/moving_mean
,:*? (2BatchNorm_4/moving_variance
.
W0
X1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
W0
X1
Y2
Z3"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
[trainable_variables
 ?layer_regularization_losses
\regularization_losses
?layer_metrics
]	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	? 2Dense_1/kernel
: 2Dense_1/bias
.
_0
`1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
_0
`1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
atrainable_variables
 ?layer_regularization_losses
bregularization_losses
?layer_metrics
c	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
: 2BatchNorm_5/gamma
: 2BatchNorm_5/beta
':%  (2BatchNorm_5/moving_mean
+:)  (2BatchNorm_5/moving_variance
.
f0
g1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
f0
g1
h2
i3"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
jtrainable_variables
 ?layer_regularization_losses
kregularization_losses
?layer_metrics
l	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?metrics
?non_trainable_variables
ntrainable_variables
 ?layer_regularization_losses
oregularization_losses
?layer_metrics
p	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
: 
2dense/kernel
:
2
dense/bias
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
?
?metrics
?non_trainable_variables
ttrainable_variables
 ?layer_regularization_losses
uregularization_losses
?layer_metrics
v	variables
?layers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
0
?0
?1"
trackable_list_wrapper
f
 0
!1
32
43
B4
C5
Y6
Z7
h8
i9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
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
15"
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
.
 0
!1"
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
.
30
41"
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
.
B0
C1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
Y0
Z1"
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
.
h0
i1"
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
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
,:*2Adam/Conv_1/kernel/m
:2Adam/Conv_1/bias/m
$:"2Adam/BatchNorm_1/gamma/m
#:!2Adam/BatchNorm_1/beta/m
,:*2Adam/Conv_2/kernel/m
:2Adam/Conv_2/bias/m
$:"2Adam/BatchNorm_2/gamma/m
#:!2Adam/BatchNorm_2/beta/m
,:*2Adam/Conv_3/kernel/m
:2Adam/Conv_3/bias/m
$:"2Adam/BatchNorm_3/gamma/m
#:!2Adam/BatchNorm_3/beta/m
,:*2Adam/Conv_4/kernel/m
:2Adam/Conv_4/bias/m
%:#?2Adam/BatchNorm_4/gamma/m
$:"?2Adam/BatchNorm_4/beta/m
&:$	? 2Adam/Dense_1/kernel/m
: 2Adam/Dense_1/bias/m
$:" 2Adam/BatchNorm_5/gamma/m
#:! 2Adam/BatchNorm_5/beta/m
#:! 
2Adam/dense/kernel/m
:
2Adam/dense/bias/m
,:*2Adam/Conv_1/kernel/v
:2Adam/Conv_1/bias/v
$:"2Adam/BatchNorm_1/gamma/v
#:!2Adam/BatchNorm_1/beta/v
,:*2Adam/Conv_2/kernel/v
:2Adam/Conv_2/bias/v
$:"2Adam/BatchNorm_2/gamma/v
#:!2Adam/BatchNorm_2/beta/v
,:*2Adam/Conv_3/kernel/v
:2Adam/Conv_3/bias/v
$:"2Adam/BatchNorm_3/gamma/v
#:!2Adam/BatchNorm_3/beta/v
,:*2Adam/Conv_4/kernel/v
:2Adam/Conv_4/bias/v
%:#?2Adam/BatchNorm_4/gamma/v
$:"?2Adam/BatchNorm_4/beta/v
&:$	? 2Adam/Dense_1/kernel/v
: 2Adam/Dense_1/bias/v
$:" 2Adam/BatchNorm_5/gamma/v
#:! 2Adam/BatchNorm_5/beta/v
#:! 
2Adam/dense/kernel/v
:
2Adam/dense/bias/v
?2?
__inference__wrapped_model_6211?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *2?/
-?*
input_layer?????????
?2?
(__inference_cnn_model_layer_call_fn_8400
(__inference_cnn_model_layer_call_fn_8469
(__inference_cnn_model_layer_call_fn_7664
(__inference_cnn_model_layer_call_fn_7816?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_cnn_model_layer_call_and_return_conditional_losses_8206
C__inference_cnn_model_layer_call_and_return_conditional_losses_7428
C__inference_cnn_model_layer_call_and_return_conditional_losses_8331
C__inference_cnn_model_layer_call_and_return_conditional_losses_7511?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv_1_layer_call_fn_6233?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
@__inference_Conv_1_layer_call_and_return_conditional_losses_6223?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
*__inference_BatchNorm_1_layer_call_fn_8631
*__inference_BatchNorm_1_layer_call_fn_8618
*__inference_BatchNorm_1_layer_call_fn_8556
*__inference_BatchNorm_1_layer_call_fn_8543?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8605
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8530
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8512
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8587?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv_2_layer_call_fn_6381?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
@__inference_Conv_2_layer_call_and_return_conditional_losses_6371?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
(__inference_Pooling_1_layer_call_fn_6393?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_Pooling_1_layer_call_and_return_conditional_losses_6387?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
*__inference_BatchNorm_2_layer_call_fn_8780
*__inference_BatchNorm_2_layer_call_fn_8793
*__inference_BatchNorm_2_layer_call_fn_8718
*__inference_BatchNorm_2_layer_call_fn_8705?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8692
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8749
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8767
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8674?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv_3_layer_call_fn_6541?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
@__inference_Conv_3_layer_call_and_return_conditional_losses_6531?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
*__inference_BatchNorm_3_layer_call_fn_8880
*__inference_BatchNorm_3_layer_call_fn_8867
*__inference_BatchNorm_3_layer_call_fn_8942
*__inference_BatchNorm_3_layer_call_fn_8955?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8836
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8929
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8854
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8911?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
%__inference_Conv_4_layer_call_fn_6689?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
@__inference_Conv_4_layer_call_and_return_conditional_losses_6679?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *7?4
2?/+???????????????????????????
?2?
(__inference_Pooling_2_layer_call_fn_6701?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
C__inference_Pooling_2_layer_call_and_return_conditional_losses_6695?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *@?=
;?84????????????????????????????????????
?2?
&__inference_flatten_layer_call_fn_8966?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_flatten_layer_call_and_return_conditional_losses_8961?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_BatchNorm_4_layer_call_fn_9071
*__inference_BatchNorm_4_layer_call_fn_9084?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_9058
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_9038?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_Dense_1_layer_call_fn_9104?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
A__inference_Dense_1_layer_call_and_return_conditional_losses_9095?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_BatchNorm_5_layer_call_fn_9222
*__inference_BatchNorm_5_layer_call_fn_9209?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_9196
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_9176?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
&__inference_dropout_layer_call_fn_9249
&__inference_dropout_layer_call_fn_9244?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
A__inference_dropout_layer_call_and_return_conditional_losses_9239
A__inference_dropout_layer_call_and_return_conditional_losses_9234?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_dense_layer_call_fn_9269?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_dense_layer_call_and_return_conditional_losses_9260?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
5B3
"__inference_signature_wrapper_8003input_layer?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8512? !M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8530? !M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8587r !;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
E__inference_BatchNorm_1_layer_call_and_return_conditional_losses_8605r !;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
*__inference_BatchNorm_1_layer_call_fn_8543? !M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
*__inference_BatchNorm_1_layer_call_fn_8556? !M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
*__inference_BatchNorm_1_layer_call_fn_8618e !;?8
1?.
(?%
inputs?????????
p
? " ???????????
*__inference_BatchNorm_1_layer_call_fn_8631e !;?8
1?.
(?%
inputs?????????
p 
? " ???????????
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8674r1234;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8692r1234;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8749?1234M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
E__inference_BatchNorm_2_layer_call_and_return_conditional_losses_8767?1234M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
*__inference_BatchNorm_2_layer_call_fn_8705e1234;?8
1?.
(?%
inputs?????????
p
? " ???????????
*__inference_BatchNorm_2_layer_call_fn_8718e1234;?8
1?.
(?%
inputs?????????
p 
? " ???????????
*__inference_BatchNorm_2_layer_call_fn_8780?1234M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
*__inference_BatchNorm_2_layer_call_fn_8793?1234M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8836r@ABC;?8
1?.
(?%
inputs?????????
p
? "-?*
#? 
0?????????
? ?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8854r@ABC;?8
1?.
(?%
inputs?????????
p 
? "-?*
#? 
0?????????
? ?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8911?@ABCM?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
E__inference_BatchNorm_3_layer_call_and_return_conditional_losses_8929?@ABCM?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
*__inference_BatchNorm_3_layer_call_fn_8867e@ABC;?8
1?.
(?%
inputs?????????
p
? " ???????????
*__inference_BatchNorm_3_layer_call_fn_8880e@ABC;?8
1?.
(?%
inputs?????????
p 
? " ???????????
*__inference_BatchNorm_3_layer_call_fn_8942?@ABCM?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
*__inference_BatchNorm_3_layer_call_fn_8955?@ABCM?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_9038dYZWX4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
E__inference_BatchNorm_4_layer_call_and_return_conditional_losses_9058dZWYX4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
*__inference_BatchNorm_4_layer_call_fn_9071WYZWX4?1
*?'
!?
inputs??????????
p
? "????????????
*__inference_BatchNorm_4_layer_call_fn_9084WZWYX4?1
*?'
!?
inputs??????????
p 
? "????????????
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_9176bhifg3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
E__inference_BatchNorm_5_layer_call_and_return_conditional_losses_9196bifhg3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? ?
*__inference_BatchNorm_5_layer_call_fn_9209Uhifg3?0
)?&
 ?
inputs????????? 
p
? "?????????? ?
*__inference_BatchNorm_5_layer_call_fn_9222Uifhg3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
@__inference_Conv_1_layer_call_and_return_conditional_losses_6223?I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
%__inference_Conv_1_layer_call_fn_6233?I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
@__inference_Conv_2_layer_call_and_return_conditional_losses_6371?&'I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
%__inference_Conv_2_layer_call_fn_6381?&'I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
@__inference_Conv_3_layer_call_and_return_conditional_losses_6531?9:I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
%__inference_Conv_3_layer_call_fn_6541?9:I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
@__inference_Conv_4_layer_call_and_return_conditional_losses_6679?HII?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
%__inference_Conv_4_layer_call_fn_6689?HII?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
A__inference_Dense_1_layer_call_and_return_conditional_losses_9095]_`0?-
&?#
!?
inputs??????????
? "%?"
?
0????????? 
? z
&__inference_Dense_1_layer_call_fn_9104P_`0?-
&?#
!?
inputs??????????
? "?????????? ?
C__inference_Pooling_1_layer_call_and_return_conditional_losses_6387?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_Pooling_1_layer_call_fn_6393?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
C__inference_Pooling_2_layer_call_and_return_conditional_losses_6695?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
(__inference_Pooling_2_layer_call_fn_6701?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
__inference__wrapped_model_6211?  !&'12349:@ABCHIZWYX_`ifhgrs<?9
2?/
-?*
input_layer?????????
? "-?*
(
dense?
dense?????????
?
C__inference_cnn_model_layer_call_and_return_conditional_losses_7428?  !&'12349:@ABCHIYZWX_`hifgrsD?A
:?7
-?*
input_layer?????????
p

 
? "%?"
?
0?????????

? ?
C__inference_cnn_model_layer_call_and_return_conditional_losses_7511?  !&'12349:@ABCHIZWYX_`ifhgrsD?A
:?7
-?*
input_layer?????????
p 

 
? "%?"
?
0?????????

? ?
C__inference_cnn_model_layer_call_and_return_conditional_losses_8206?  !&'12349:@ABCHIYZWX_`hifgrs??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
C__inference_cnn_model_layer_call_and_return_conditional_losses_8331?  !&'12349:@ABCHIZWYX_`ifhgrs??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
(__inference_cnn_model_layer_call_fn_7664?  !&'12349:@ABCHIYZWX_`hifgrsD?A
:?7
-?*
input_layer?????????
p

 
? "??????????
?
(__inference_cnn_model_layer_call_fn_7816?  !&'12349:@ABCHIZWYX_`ifhgrsD?A
:?7
-?*
input_layer?????????
p 

 
? "??????????
?
(__inference_cnn_model_layer_call_fn_8400}  !&'12349:@ABCHIYZWX_`hifgrs??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
(__inference_cnn_model_layer_call_fn_8469}  !&'12349:@ABCHIZWYX_`ifhgrs??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
?__inference_dense_layer_call_and_return_conditional_losses_9260\rs/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????

? w
$__inference_dense_layer_call_fn_9269Ors/?,
%?"
 ?
inputs????????? 
? "??????????
?
A__inference_dropout_layer_call_and_return_conditional_losses_9234\3?0
)?&
 ?
inputs????????? 
p
? "%?"
?
0????????? 
? ?
A__inference_dropout_layer_call_and_return_conditional_losses_9239\3?0
)?&
 ?
inputs????????? 
p 
? "%?"
?
0????????? 
? y
&__inference_dropout_layer_call_fn_9244O3?0
)?&
 ?
inputs????????? 
p
? "?????????? y
&__inference_dropout_layer_call_fn_9249O3?0
)?&
 ?
inputs????????? 
p 
? "?????????? ?
A__inference_flatten_layer_call_and_return_conditional_losses_8961a7?4
-?*
(?%
inputs?????????
? "&?#
?
0??????????
? ~
&__inference_flatten_layer_call_fn_8966T7?4
-?*
(?%
inputs?????????
? "????????????
"__inference_signature_wrapper_8003?  !&'12349:@ABCHIZWYX_`ifhgrsK?H
? 
A?>
<
input_layer-?*
input_layer?????????"-?*
(
dense?
dense?????????
