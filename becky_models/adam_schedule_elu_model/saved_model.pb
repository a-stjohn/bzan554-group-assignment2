??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
;
Elu
features"T
activations"T"
Ttype:
2
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
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
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.6.02v2.6.0-rc2-32-g919f693420e8??
?
embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*%
shared_nameembedding/embeddings

(embedding/embeddings/Read/ReadVariableOpReadVariableOpembedding/embeddings* 
_output_shapes
:
??d*
dtype0
w
hidden/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*
shared_namehidden/kernel
p
!hidden/kernel/Read/ReadVariableOpReadVariableOphidden/kernel*
_output_shapes
:	?2*
dtype0
n
hidden/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namehidden/bias
g
hidden/bias/Read/ReadVariableOpReadVariableOphidden/bias*
_output_shapes
:2*
dtype0
p

out/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*
shared_name
out/kernel
i
out/kernel/Read/ReadVariableOpReadVariableOp
out/kernel*
_output_shapes

:2*
dtype0
h
out/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
out/bias
a
out/bias/Read/ReadVariableOpReadVariableOpout/bias*
_output_shapes
:*
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
?
Adam/embedding/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*,
shared_nameAdam/embedding/embeddings/m
?
/Adam/embedding/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/m* 
_output_shapes
:
??d*
dtype0
?
Adam/hidden/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*%
shared_nameAdam/hidden/kernel/m
~
(Adam/hidden/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden/kernel/m*
_output_shapes
:	?2*
dtype0
|
Adam/hidden/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/hidden/bias/m
u
&Adam/hidden/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden/bias/m*
_output_shapes
:2*
dtype0
~
Adam/out/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*"
shared_nameAdam/out/kernel/m
w
%Adam/out/kernel/m/Read/ReadVariableOpReadVariableOpAdam/out/kernel/m*
_output_shapes

:2*
dtype0
v
Adam/out/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/out/bias/m
o
#Adam/out/bias/m/Read/ReadVariableOpReadVariableOpAdam/out/bias/m*
_output_shapes
:*
dtype0
?
Adam/embedding/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??d*,
shared_nameAdam/embedding/embeddings/v
?
/Adam/embedding/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding/embeddings/v* 
_output_shapes
:
??d*
dtype0
?
Adam/hidden/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?2*%
shared_nameAdam/hidden/kernel/v
~
(Adam/hidden/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden/kernel/v*
_output_shapes
:	?2*
dtype0
|
Adam/hidden/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*#
shared_nameAdam/hidden/bias/v
u
&Adam/hidden/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden/bias/v*
_output_shapes
:2*
dtype0
~
Adam/out/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2*"
shared_nameAdam/out/kernel/v
w
%Adam/out/kernel/v/Read/ReadVariableOpReadVariableOpAdam/out/kernel/v*
_output_shapes

:2*
dtype0
v
Adam/out/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameAdam/out/bias/v
o
#Adam/out/bias/v/Read/ReadVariableOpReadVariableOpAdam/out/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?$
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?#
value?#B?# B?#
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
 
b

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
R
regularization_losses
trainable_variables
	variables
	keras_api
 
R
regularization_losses
trainable_variables
	variables
	keras_api
h

kernel
bias
regularization_losses
trainable_variables
	variables
 	keras_api
h

!kernel
"bias
#regularization_losses
$trainable_variables
%	variables
&	keras_api
?
'iter

(beta_1

)beta_2
	*decaymNmOmP!mQ"mRvSvTvU!vV"vW
 
#
0
1
2
!3
"4
#
0
1
2
!3
"4
?
	regularization_losses

trainable_variables

+layers
,non_trainable_variables
-layer_metrics
	variables
.metrics
/layer_regularization_losses
 
db
VARIABLE_VALUEembedding/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0

0
?
regularization_losses
trainable_variables

0layers
1non_trainable_variables
2layer_metrics
	variables
3metrics
4layer_regularization_losses
 
 
 
?
regularization_losses
trainable_variables

5layers
6non_trainable_variables
7layer_metrics
	variables
8metrics
9layer_regularization_losses
 
 
 
?
regularization_losses
trainable_variables

:layers
;non_trainable_variables
<layer_metrics
	variables
=metrics
>layer_regularization_losses
YW
VARIABLE_VALUEhidden/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEhidden/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
trainable_variables

?layers
@non_trainable_variables
Alayer_metrics
	variables
Bmetrics
Clayer_regularization_losses
VT
VARIABLE_VALUE
out/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUEout/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

!0
"1

!0
"1
?
#regularization_losses
$trainable_variables

Dlayers
Enon_trainable_variables
Flayer_metrics
%	variables
Gmetrics
Hlayer_regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
1
0
1
2
3
4
5
6
 
 

I0
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
 
 
 
 
 
 
 
4
	Jtotal
	Kcount
L	variables
M	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

J0
K1

L	variables
??
VARIABLE_VALUEAdam/embedding/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/hidden/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/hidden/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/out/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/out/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/embedding/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/hidden/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/hidden/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/out/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
us
VARIABLE_VALUEAdam/out/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
y
serving_default_in_catPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
y
serving_default_in_numPlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_in_catserving_default_in_numembedding/embeddingshidden/kernelhidden/bias
out/kernelout/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1703379
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename(embedding/embeddings/Read/ReadVariableOp!hidden/kernel/Read/ReadVariableOphidden/bias/Read/ReadVariableOpout/kernel/Read/ReadVariableOpout/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp/Adam/embedding/embeddings/m/Read/ReadVariableOp(Adam/hidden/kernel/m/Read/ReadVariableOp&Adam/hidden/bias/m/Read/ReadVariableOp%Adam/out/kernel/m/Read/ReadVariableOp#Adam/out/bias/m/Read/ReadVariableOp/Adam/embedding/embeddings/v/Read/ReadVariableOp(Adam/hidden/kernel/v/Read/ReadVariableOp&Adam/hidden/bias/v/Read/ReadVariableOp%Adam/out/kernel/v/Read/ReadVariableOp#Adam/out/bias/v/Read/ReadVariableOpConst*"
Tin
2	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1703634
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding/embeddingshidden/kernelhidden/bias
out/kernelout/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotalcountAdam/embedding/embeddings/mAdam/hidden/kernel/mAdam/hidden/bias/mAdam/out/kernel/mAdam/out/bias/mAdam/embedding/embeddings/vAdam/hidden/kernel/vAdam/hidden/bias/vAdam/out/kernel/vAdam/out/bias/v*!
Tin
2*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1703707??
?

?
@__inference_out_layer_call_and_return_conditional_losses_1703538

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?
?
%__inference_out_layer_call_fn_1703547

inputs
unknown:2
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_out_layer_call_and_return_conditional_losses_17031882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?	
?
*__inference_model_13_layer_call_fn_1703208

in_cat

in_num
unknown:
??d
	unknown_0:	?2
	unknown_1:2
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallin_catin_numunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_17031952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_namein_cat:OK
'
_output_shapes
:?????????
 
_user_specified_namein_num
?	
?
*__inference_model_13_layer_call_fn_1703467
inputs_0
inputs_1
unknown:
??d
	unknown_0:	?2
	unknown_1:2
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_17032882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
[
/__inference_concatenation_layer_call_fn_1703508
inputs_0
inputs_1
identity?
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenation_layer_call_and_return_conditional_losses_17031592
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':??????????:?????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
E__inference_model_13_layer_call_and_return_conditional_losses_1703337

in_cat

in_num%
embedding_1703321:
??d!
hidden_1703326:	?2
hidden_1703328:2
out_1703331:2
out_1703333:
identity??!embedding/StatefulPartitionedCall?hidden/StatefulPartitionedCall?out/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallin_catembedding_1703321*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_17031402#
!embedding/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17031502
flatten/PartitionedCall?
concatenation/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0in_num*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenation_layer_call_and_return_conditional_losses_17031592
concatenation/PartitionedCall?
hidden/StatefulPartitionedCallStatefulPartitionedCall&concatenation/PartitionedCall:output:0hidden_1703326hidden_1703328*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_hidden_layer_call_and_return_conditional_losses_17031722 
hidden/StatefulPartitionedCall?
out/StatefulPartitionedCallStatefulPartitionedCall'hidden/StatefulPartitionedCall:output:0out_1703331out_1703333*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_out_layer_call_and_return_conditional_losses_17031882
out/StatefulPartitionedCall
IdentityIdentity$out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall^hidden/StatefulPartitionedCall^out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2@
hidden/StatefulPartitionedCallhidden/StatefulPartitionedCall2:
out/StatefulPartitionedCallout/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_namein_cat:OK
'
_output_shapes
:?????????
 
_user_specified_namein_num
?	
?
%__inference_signature_wrapper_1703379

in_cat

in_num
unknown:
??d
	unknown_0:	?2
	unknown_1:2
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallin_catin_numunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_17031212
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_namein_cat:OK
'
_output_shapes
:?????????
 
_user_specified_namein_num
?"
?
E__inference_model_13_layer_call_and_return_conditional_losses_1703407
inputs_0
inputs_16
"embedding_embedding_lookup_1703384:
??d8
%hidden_matmul_readvariableop_resource:	?24
&hidden_biasadd_readvariableop_resource:24
"out_matmul_readvariableop_resource:21
#out_biasadd_readvariableop_resource:
identity??embedding/embedding_lookup?hidden/BiasAdd/ReadVariableOp?hidden/MatMul/ReadVariableOp?out/BiasAdd/ReadVariableOp?out/MatMul/ReadVariableOps
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1703384embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1703384*+
_output_shapes
:?????????d*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1703384*+
_output_shapes
:?????????d2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2'
%embedding/embedding_lookup/Identity_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapex
concatenation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenation/concat/axis?
concatenation/concatConcatV2flatten/Reshape:output:0inputs_1"concatenation/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatenation/concat?
hidden/MatMul/ReadVariableOpReadVariableOp%hidden_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02
hidden/MatMul/ReadVariableOp?
hidden/MatMulMatMulconcatenation/concat:output:0$hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
hidden/MatMul?
hidden/BiasAdd/ReadVariableOpReadVariableOp&hidden_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
hidden/BiasAdd/ReadVariableOp?
hidden/BiasAddBiasAddhidden/MatMul:product:0%hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
hidden/BiasAddj

hidden/EluEluhidden/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

hidden/Elu?
out/MatMul/ReadVariableOpReadVariableOp"out_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
out/MatMul/ReadVariableOp?

out/MatMulMatMulhidden/Elu:activations:0!out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

out/MatMul?
out/BiasAdd/ReadVariableOpReadVariableOp#out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
out/BiasAdd/ReadVariableOp?
out/BiasAddBiasAddout/MatMul:product:0"out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
out/BiasAddo
IdentityIdentityout/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^embedding/embedding_lookup^hidden/BiasAdd/ReadVariableOp^hidden/MatMul/ReadVariableOp^out/BiasAdd/ReadVariableOp^out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 28
embedding/embedding_lookupembedding/embedding_lookup2>
hidden/BiasAdd/ReadVariableOphidden/BiasAdd/ReadVariableOp2<
hidden/MatMul/ReadVariableOphidden/MatMul/ReadVariableOp28
out/BiasAdd/ReadVariableOpout/BiasAdd/ReadVariableOp26
out/MatMul/ReadVariableOpout/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?'
?
"__inference__wrapped_model_1703121

in_cat

in_num?
+model_13_embedding_embedding_lookup_1703098:
??dA
.model_13_hidden_matmul_readvariableop_resource:	?2=
/model_13_hidden_biasadd_readvariableop_resource:2=
+model_13_out_matmul_readvariableop_resource:2:
,model_13_out_biasadd_readvariableop_resource:
identity??#model_13/embedding/embedding_lookup?&model_13/hidden/BiasAdd/ReadVariableOp?%model_13/hidden/MatMul/ReadVariableOp?#model_13/out/BiasAdd/ReadVariableOp?"model_13/out/MatMul/ReadVariableOp?
model_13/embedding/CastCastin_cat*

DstT0*

SrcT0*'
_output_shapes
:?????????2
model_13/embedding/Cast?
#model_13/embedding/embedding_lookupResourceGather+model_13_embedding_embedding_lookup_1703098model_13/embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*>
_class4
20loc:@model_13/embedding/embedding_lookup/1703098*+
_output_shapes
:?????????d*
dtype02%
#model_13/embedding/embedding_lookup?
,model_13/embedding/embedding_lookup/IdentityIdentity,model_13/embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@model_13/embedding/embedding_lookup/1703098*+
_output_shapes
:?????????d2.
,model_13/embedding/embedding_lookup/Identity?
.model_13/embedding/embedding_lookup/Identity_1Identity5model_13/embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d20
.model_13/embedding/embedding_lookup/Identity_1?
model_13/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
model_13/flatten/Const?
model_13/flatten/ReshapeReshape7model_13/embedding/embedding_lookup/Identity_1:output:0model_13/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
model_13/flatten/Reshape?
"model_13/concatenation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2$
"model_13/concatenation/concat/axis?
model_13/concatenation/concatConcatV2!model_13/flatten/Reshape:output:0in_num+model_13/concatenation/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
model_13/concatenation/concat?
%model_13/hidden/MatMul/ReadVariableOpReadVariableOp.model_13_hidden_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02'
%model_13/hidden/MatMul/ReadVariableOp?
model_13/hidden/MatMulMatMul&model_13/concatenation/concat:output:0-model_13/hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_13/hidden/MatMul?
&model_13/hidden/BiasAdd/ReadVariableOpReadVariableOp/model_13_hidden_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02(
&model_13/hidden/BiasAdd/ReadVariableOp?
model_13/hidden/BiasAddBiasAdd model_13/hidden/MatMul:product:0.model_13/hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
model_13/hidden/BiasAdd?
model_13/hidden/EluElu model_13/hidden/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22
model_13/hidden/Elu?
"model_13/out/MatMul/ReadVariableOpReadVariableOp+model_13_out_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02$
"model_13/out/MatMul/ReadVariableOp?
model_13/out/MatMulMatMul!model_13/hidden/Elu:activations:0*model_13/out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_13/out/MatMul?
#model_13/out/BiasAdd/ReadVariableOpReadVariableOp,model_13_out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#model_13/out/BiasAdd/ReadVariableOp?
model_13/out/BiasAddBiasAddmodel_13/out/MatMul:product:0+model_13/out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model_13/out/BiasAddx
IdentityIdentitymodel_13/out/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp$^model_13/embedding/embedding_lookup'^model_13/hidden/BiasAdd/ReadVariableOp&^model_13/hidden/MatMul/ReadVariableOp$^model_13/out/BiasAdd/ReadVariableOp#^model_13/out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2J
#model_13/embedding/embedding_lookup#model_13/embedding/embedding_lookup2P
&model_13/hidden/BiasAdd/ReadVariableOp&model_13/hidden/BiasAdd/ReadVariableOp2N
%model_13/hidden/MatMul/ReadVariableOp%model_13/hidden/MatMul/ReadVariableOp2J
#model_13/out/BiasAdd/ReadVariableOp#model_13/out/BiasAdd/ReadVariableOp2H
"model_13/out/MatMul/ReadVariableOp"model_13/out/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_namein_cat:OK
'
_output_shapes
:?????????
 
_user_specified_namein_num
?
?
C__inference_hidden_layer_call_and_return_conditional_losses_1703172

inputs1
matmul_readvariableop_resource:	?2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
E__inference_model_13_layer_call_and_return_conditional_losses_1703435
inputs_0
inputs_16
"embedding_embedding_lookup_1703412:
??d8
%hidden_matmul_readvariableop_resource:	?24
&hidden_biasadd_readvariableop_resource:24
"out_matmul_readvariableop_resource:21
#out_biasadd_readvariableop_resource:
identity??embedding/embedding_lookup?hidden/BiasAdd/ReadVariableOp?hidden/MatMul/ReadVariableOp?out/BiasAdd/ReadVariableOp?out/MatMul/ReadVariableOps
embedding/CastCastinputs_0*

DstT0*

SrcT0*'
_output_shapes
:?????????2
embedding/Cast?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1703412embedding/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1703412*+
_output_shapes
:?????????d*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1703412*+
_output_shapes
:?????????d2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2'
%embedding/embedding_lookup/Identity_1o
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshape.embedding/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshapex
concatenation/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenation/concat/axis?
concatenation/concatConcatV2flatten/Reshape:output:0inputs_1"concatenation/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatenation/concat?
hidden/MatMul/ReadVariableOpReadVariableOp%hidden_matmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02
hidden/MatMul/ReadVariableOp?
hidden/MatMulMatMulconcatenation/concat:output:0$hidden/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
hidden/MatMul?
hidden/BiasAdd/ReadVariableOpReadVariableOp&hidden_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
hidden/BiasAdd/ReadVariableOp?
hidden/BiasAddBiasAddhidden/MatMul:product:0%hidden/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
hidden/BiasAddj

hidden/EluEluhidden/BiasAdd:output:0*
T0*'
_output_shapes
:?????????22

hidden/Elu?
out/MatMul/ReadVariableOpReadVariableOp"out_matmul_readvariableop_resource*
_output_shapes

:2*
dtype02
out/MatMul/ReadVariableOp?

out/MatMulMatMulhidden/Elu:activations:0!out/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2

out/MatMul?
out/BiasAdd/ReadVariableOpReadVariableOp#out_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
out/BiasAdd/ReadVariableOp?
out/BiasAddBiasAddout/MatMul:product:0"out/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
out/BiasAddo
IdentityIdentityout/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp^embedding/embedding_lookup^hidden/BiasAdd/ReadVariableOp^hidden/MatMul/ReadVariableOp^out/BiasAdd/ReadVariableOp^out/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 28
embedding/embedding_lookupembedding/embedding_lookup2>
hidden/BiasAdd/ReadVariableOphidden/BiasAdd/ReadVariableOp2<
hidden/MatMul/ReadVariableOphidden/MatMul/ReadVariableOp28
out/BiasAdd/ReadVariableOpout/BiasAdd/ReadVariableOp26
out/MatMul/ReadVariableOpout/MatMul/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?\
?
#__inference__traced_restore_1703707
file_prefix9
%assignvariableop_embedding_embeddings:
??d3
 assignvariableop_1_hidden_kernel:	?2,
assignvariableop_2_hidden_bias:2/
assignvariableop_3_out_kernel:2)
assignvariableop_4_out_bias:&
assignvariableop_5_adam_iter:	 (
assignvariableop_6_adam_beta_1: (
assignvariableop_7_adam_beta_2: '
assignvariableop_8_adam_decay: "
assignvariableop_9_total: #
assignvariableop_10_count: C
/assignvariableop_11_adam_embedding_embeddings_m:
??d;
(assignvariableop_12_adam_hidden_kernel_m:	?24
&assignvariableop_13_adam_hidden_bias_m:27
%assignvariableop_14_adam_out_kernel_m:21
#assignvariableop_15_adam_out_bias_m:C
/assignvariableop_16_adam_embedding_embeddings_v:
??d;
(assignvariableop_17_adam_hidden_kernel_v:	?24
&assignvariableop_18_adam_hidden_bias_v:27
%assignvariableop_19_adam_out_kernel_v:21
#assignvariableop_20_adam_out_bias_v:
identity_22??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp%assignvariableop_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_hidden_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_hidden_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_out_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_out_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_iterIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_1Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_2Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_decayIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_totalIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_countIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp/assignvariableop_11_adam_embedding_embeddings_mIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_hidden_kernel_mIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp&assignvariableop_13_adam_hidden_bias_mIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp%assignvariableop_14_adam_out_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp#assignvariableop_15_adam_out_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp/assignvariableop_16_adam_embedding_embeddings_vIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_hidden_kernel_vIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_hidden_bias_vIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_out_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp#assignvariableop_20_adam_out_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_209
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_21f
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: 2
Identity_22?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 2
NoOp_1"#
identity_22Identity_22:output:0*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
E__inference_model_13_layer_call_and_return_conditional_losses_1703357

in_cat

in_num%
embedding_1703341:
??d!
hidden_1703346:	?2
hidden_1703348:2
out_1703351:2
out_1703353:
identity??!embedding/StatefulPartitionedCall?hidden/StatefulPartitionedCall?out/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallin_catembedding_1703341*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_17031402#
!embedding/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17031502
flatten/PartitionedCall?
concatenation/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0in_num*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenation_layer_call_and_return_conditional_losses_17031592
concatenation/PartitionedCall?
hidden/StatefulPartitionedCallStatefulPartitionedCall&concatenation/PartitionedCall:output:0hidden_1703346hidden_1703348*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_hidden_layer_call_and_return_conditional_losses_17031722 
hidden/StatefulPartitionedCall?
out/StatefulPartitionedCallStatefulPartitionedCall'hidden/StatefulPartitionedCall:output:0out_1703351out_1703353*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_out_layer_call_and_return_conditional_losses_17031882
out/StatefulPartitionedCall
IdentityIdentity$out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall^hidden/StatefulPartitionedCall^out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2@
hidden/StatefulPartitionedCallhidden/StatefulPartitionedCall2:
out/StatefulPartitionedCallout/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_namein_cat:OK
'
_output_shapes
:?????????
 
_user_specified_namein_num
?
?
E__inference_model_13_layer_call_and_return_conditional_losses_1703288

inputs
inputs_1%
embedding_1703272:
??d!
hidden_1703277:	?2
hidden_1703279:2
out_1703282:2
out_1703284:
identity??!embedding/StatefulPartitionedCall?hidden/StatefulPartitionedCall?out/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1703272*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_17031402#
!embedding/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17031502
flatten/PartitionedCall?
concatenation/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenation_layer_call_and_return_conditional_losses_17031592
concatenation/PartitionedCall?
hidden/StatefulPartitionedCallStatefulPartitionedCall&concatenation/PartitionedCall:output:0hidden_1703277hidden_1703279*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_hidden_layer_call_and_return_conditional_losses_17031722 
hidden/StatefulPartitionedCall?
out/StatefulPartitionedCallStatefulPartitionedCall'hidden/StatefulPartitionedCall:output:0out_1703282out_1703284*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_out_layer_call_and_return_conditional_losses_17031882
out/StatefulPartitionedCall
IdentityIdentity$out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall^hidden/StatefulPartitionedCall^out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2@
hidden/StatefulPartitionedCallhidden/StatefulPartitionedCall2:
out/StatefulPartitionedCallout/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_1703490

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?

?
F__inference_embedding_layer_call_and_return_conditional_losses_1703140

inputs,
embedding_lookup_1703134:
??d
identity??embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_1703134Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/1703134*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1703134*+
_output_shapes
:?????????d2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????d2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
@__inference_out_layer_call_and_return_conditional_losses_1703188

inputs0
matmul_readvariableop_resource:2-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAddk
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????2
 
_user_specified_nameinputs
?4
?
 __inference__traced_save_1703634
file_prefix3
/savev2_embedding_embeddings_read_readvariableop,
(savev2_hidden_kernel_read_readvariableop*
&savev2_hidden_bias_read_readvariableop)
%savev2_out_kernel_read_readvariableop'
#savev2_out_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop:
6savev2_adam_embedding_embeddings_m_read_readvariableop3
/savev2_adam_hidden_kernel_m_read_readvariableop1
-savev2_adam_hidden_bias_m_read_readvariableop0
,savev2_adam_out_kernel_m_read_readvariableop.
*savev2_adam_out_bias_m_read_readvariableop:
6savev2_adam_embedding_embeddings_v_read_readvariableop3
/savev2_adam_hidden_kernel_v_read_readvariableop1
-savev2_adam_hidden_bias_v_read_readvariableop0
,savev2_adam_out_kernel_v_read_readvariableop.
*savev2_adam_out_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
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
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
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
value	B :2

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0/savev2_embedding_embeddings_read_readvariableop(savev2_hidden_kernel_read_readvariableop&savev2_hidden_bias_read_readvariableop%savev2_out_kernel_read_readvariableop#savev2_out_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop6savev2_adam_embedding_embeddings_m_read_readvariableop/savev2_adam_hidden_kernel_m_read_readvariableop-savev2_adam_hidden_bias_m_read_readvariableop,savev2_adam_out_kernel_m_read_readvariableop*savev2_adam_out_bias_m_read_readvariableop6savev2_adam_embedding_embeddings_v_read_readvariableop/savev2_adam_hidden_kernel_v_read_readvariableop-savev2_adam_hidden_bias_v_read_readvariableop,savev2_adam_out_kernel_v_read_readvariableop*savev2_adam_out_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *$
dtypes
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identity_

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: 2

Identity_1c
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??d:	?2:2:2:: : : : : : :
??d:	?2:2:2::
??d:	?2:2:2:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??d:%!

_output_shapes
:	?2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::
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
: :&"
 
_output_shapes
:
??d:%!

_output_shapes
:	?2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::&"
 
_output_shapes
:
??d:%!

_output_shapes
:	?2: 

_output_shapes
:2:$ 

_output_shapes

:2: 

_output_shapes
::

_output_shapes
: 
?
t
J__inference_concatenation_layer_call_and_return_conditional_losses_1703159

inputs
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':??????????:?????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
E__inference_model_13_layer_call_and_return_conditional_losses_1703195

inputs
inputs_1%
embedding_1703141:
??d!
hidden_1703173:	?2
hidden_1703175:2
out_1703189:2
out_1703191:
identity??!embedding/StatefulPartitionedCall?hidden/StatefulPartitionedCall?out/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1703141*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_17031402#
!embedding/StatefulPartitionedCall?
flatten/PartitionedCallPartitionedCall*embedding/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17031502
flatten/PartitionedCall?
concatenation/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_concatenation_layer_call_and_return_conditional_losses_17031592
concatenation/PartitionedCall?
hidden/StatefulPartitionedCallStatefulPartitionedCall&concatenation/PartitionedCall:output:0hidden_1703173hidden_1703175*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_hidden_layer_call_and_return_conditional_losses_17031722 
hidden/StatefulPartitionedCall?
out/StatefulPartitionedCallStatefulPartitionedCall'hidden/StatefulPartitionedCall:output:0out_1703189out_1703191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_out_layer_call_and_return_conditional_losses_17031882
out/StatefulPartitionedCall
IdentityIdentity$out/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identity?
NoOpNoOp"^embedding/StatefulPartitionedCall^hidden/StatefulPartitionedCall^out/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2@
hidden/StatefulPartitionedCallhidden/StatefulPartitionedCall2:
out/StatefulPartitionedCallout/StatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:OK
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_layer_call_fn_1703495

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_17031502
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?
?
(__inference_hidden_layer_call_fn_1703528

inputs
unknown:	?2
	unknown_0:2
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????2*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *L
fGRE
C__inference_hidden_layer_call_and_return_conditional_losses_17031722
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????22

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_1703150

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????d:S O
+
_output_shapes
:?????????d
 
_user_specified_nameinputs
?	
?
*__inference_model_13_layer_call_fn_1703317

in_cat

in_num
unknown:
??d
	unknown_0:	?2
	unknown_1:2
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallin_catin_numunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_17032882
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_namein_cat:OK
'
_output_shapes
:?????????
 
_user_specified_namein_num
?

?
F__inference_embedding_layer_call_and_return_conditional_losses_1703477

inputs,
embedding_lookup_1703471:
??d
identity??embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:?????????2
Cast?
embedding_lookupResourceGatherembedding_lookup_1703471Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*+
_class!
loc:@embedding_lookup/1703471*+
_output_shapes
:?????????d*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*+
_class!
loc:@embedding_lookup/1703471*+
_output_shapes
:?????????d2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????d2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:?????????d2

Identitya
NoOpNoOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
v
J__inference_concatenation_layer_call_and_return_conditional_losses_1703502
inputs_0
inputs_1
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis?
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':??????????:?????????:R N
(
_output_shapes
:??????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?	
?
*__inference_model_13_layer_call_fn_1703451
inputs_0
inputs_1
unknown:
??d
	unknown_0:	?2
	unknown_1:2
	unknown_2:2
	unknown_3:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8? *N
fIRG
E__inference_model_13_layer_call_and_return_conditional_losses_17031952
StatefulPartitionedCall{
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:?????????:?????????: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:?????????
"
_user_specified_name
inputs/1
?
?
C__inference_hidden_layer_call_and_return_conditional_losses_1703519

inputs1
matmul_readvariableop_resource:	?2-
biasadd_readvariableop_resource:2
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?2*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22	
BiasAddU
EluEluBiasAdd:output:0*
T0*'
_output_shapes
:?????????22
Elul
IdentityIdentityElu:activations:0^NoOp*
T0*'
_output_shapes
:?????????22

Identity
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
+__inference_embedding_layer_call_fn_1703484

inputs
unknown:
??d
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????d*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_embedding_layer_call_and_return_conditional_losses_17031402
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????d2

Identityh
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 2
NoOp"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
9
in_cat/
serving_default_in_cat:0?????????
9
in_num/
serving_default_in_num:0?????????7
out0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?g
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
	optimizer
	regularization_losses

trainable_variables
	variables
	keras_api

signatures
*X&call_and_return_all_conditional_losses
Y_default_save_signature
Z__call__"
_tf_keras_network
"
_tf_keras_input_layer
?

embeddings
regularization_losses
trainable_variables
	variables
	keras_api
*[&call_and_return_all_conditional_losses
\__call__"
_tf_keras_layer
?
regularization_losses
trainable_variables
	variables
	keras_api
*]&call_and_return_all_conditional_losses
^__call__"
_tf_keras_layer
"
_tf_keras_input_layer
?
regularization_losses
trainable_variables
	variables
	keras_api
*_&call_and_return_all_conditional_losses
`__call__"
_tf_keras_layer
?

kernel
bias
regularization_losses
trainable_variables
	variables
 	keras_api
*a&call_and_return_all_conditional_losses
b__call__"
_tf_keras_layer
?

!kernel
"bias
#regularization_losses
$trainable_variables
%	variables
&	keras_api
*c&call_and_return_all_conditional_losses
d__call__"
_tf_keras_layer
?
'iter

(beta_1

)beta_2
	*decaymNmOmP!mQ"mRvSvTvU!vV"vW"
	optimizer
 "
trackable_list_wrapper
C
0
1
2
!3
"4"
trackable_list_wrapper
C
0
1
2
!3
"4"
trackable_list_wrapper
?
	regularization_losses

trainable_variables

+layers
,non_trainable_variables
-layer_metrics
	variables
.metrics
/layer_regularization_losses
Z__call__
Y_default_save_signature
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
,
eserving_default"
signature_map
(:&
??d2embedding/embeddings
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
regularization_losses
trainable_variables

0layers
1non_trainable_variables
2layer_metrics
	variables
3metrics
4layer_regularization_losses
\__call__
*[&call_and_return_all_conditional_losses
&["call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
trainable_variables

5layers
6non_trainable_variables
7layer_metrics
	variables
8metrics
9layer_regularization_losses
^__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
trainable_variables

:layers
;non_trainable_variables
<layer_metrics
	variables
=metrics
>layer_regularization_losses
`__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
 :	?22hidden/kernel
:22hidden/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
regularization_losses
trainable_variables

?layers
@non_trainable_variables
Alayer_metrics
	variables
Bmetrics
Clayer_regularization_losses
b__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
:22
out/kernel
:2out/bias
 "
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
?
#regularization_losses
$trainable_variables

Dlayers
Enon_trainable_variables
Flayer_metrics
%	variables
Gmetrics
Hlayer_regularization_losses
d__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
I0"
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
N
	Jtotal
	Kcount
L	variables
M	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
J0
K1"
trackable_list_wrapper
-
L	variables"
_generic_user_object
-:+
??d2Adam/embedding/embeddings/m
%:#	?22Adam/hidden/kernel/m
:22Adam/hidden/bias/m
!:22Adam/out/kernel/m
:2Adam/out/bias/m
-:+
??d2Adam/embedding/embeddings/v
%:#	?22Adam/hidden/kernel/v
:22Adam/hidden/bias/v
!:22Adam/out/kernel/v
:2Adam/out/bias/v
?2?
E__inference_model_13_layer_call_and_return_conditional_losses_1703407
E__inference_model_13_layer_call_and_return_conditional_losses_1703435
E__inference_model_13_layer_call_and_return_conditional_losses_1703337
E__inference_model_13_layer_call_and_return_conditional_losses_1703357?
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
?B?
"__inference__wrapped_model_1703121in_catin_num"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
*__inference_model_13_layer_call_fn_1703208
*__inference_model_13_layer_call_fn_1703451
*__inference_model_13_layer_call_fn_1703467
*__inference_model_13_layer_call_fn_1703317?
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
?2?
F__inference_embedding_layer_call_and_return_conditional_losses_1703477?
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
+__inference_embedding_layer_call_fn_1703484?
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
D__inference_flatten_layer_call_and_return_conditional_losses_1703490?
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
)__inference_flatten_layer_call_fn_1703495?
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
J__inference_concatenation_layer_call_and_return_conditional_losses_1703502?
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
/__inference_concatenation_layer_call_fn_1703508?
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
C__inference_hidden_layer_call_and_return_conditional_losses_1703519?
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
(__inference_hidden_layer_call_fn_1703528?
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
@__inference_out_layer_call_and_return_conditional_losses_1703538?
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
%__inference_out_layer_call_fn_1703547?
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
?B?
%__inference_signature_wrapper_1703379in_catin_num"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
"__inference__wrapped_model_1703121?!"V?S
L?I
G?D
 ?
in_cat?????????
 ?
in_num?????????
? ")?&
$
out?
out??????????
J__inference_concatenation_layer_call_and_return_conditional_losses_1703502?[?X
Q?N
L?I
#? 
inputs/0??????????
"?
inputs/1?????????
? "&?#
?
0??????????
? ?
/__inference_concatenation_layer_call_fn_1703508x[?X
Q?N
L?I
#? 
inputs/0??????????
"?
inputs/1?????????
? "????????????
F__inference_embedding_layer_call_and_return_conditional_losses_1703477_/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????d
? ?
+__inference_embedding_layer_call_fn_1703484R/?,
%?"
 ?
inputs?????????
? "??????????d?
D__inference_flatten_layer_call_and_return_conditional_losses_1703490]3?0
)?&
$?!
inputs?????????d
? "&?#
?
0??????????
? }
)__inference_flatten_layer_call_fn_1703495P3?0
)?&
$?!
inputs?????????d
? "????????????
C__inference_hidden_layer_call_and_return_conditional_losses_1703519]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????2
? |
(__inference_hidden_layer_call_fn_1703528P0?-
&?#
!?
inputs??????????
? "??????????2?
E__inference_model_13_layer_call_and_return_conditional_losses_1703337?!"^?[
T?Q
G?D
 ?
in_cat?????????
 ?
in_num?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_13_layer_call_and_return_conditional_losses_1703357?!"^?[
T?Q
G?D
 ?
in_cat?????????
 ?
in_num?????????
p

 
? "%?"
?
0?????????
? ?
E__inference_model_13_layer_call_and_return_conditional_losses_1703407?!"b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "%?"
?
0?????????
? ?
E__inference_model_13_layer_call_and_return_conditional_losses_1703435?!"b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "%?"
?
0?????????
? ?
*__inference_model_13_layer_call_fn_1703208?!"^?[
T?Q
G?D
 ?
in_cat?????????
 ?
in_num?????????
p 

 
? "???????????
*__inference_model_13_layer_call_fn_1703317?!"^?[
T?Q
G?D
 ?
in_cat?????????
 ?
in_num?????????
p

 
? "???????????
*__inference_model_13_layer_call_fn_1703451?!"b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p 

 
? "???????????
*__inference_model_13_layer_call_fn_1703467?!"b?_
X?U
K?H
"?
inputs/0?????????
"?
inputs/1?????????
p

 
? "???????????
@__inference_out_layer_call_and_return_conditional_losses_1703538\!"/?,
%?"
 ?
inputs?????????2
? "%?"
?
0?????????
? x
%__inference_out_layer_call_fn_1703547O!"/?,
%?"
 ?
inputs?????????2
? "???????????
%__inference_signature_wrapper_1703379?!"e?b
? 
[?X
*
in_cat ?
in_cat?????????
*
in_num ?
in_num?????????")?&
$
out?
out?????????