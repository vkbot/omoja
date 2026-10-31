.class public final enum Lai/onnxruntime/OrtProvider;
.super Ljava/lang/Enum;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/onnxruntime/OrtProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/onnxruntime/OrtProvider;

.field public static final enum ACL:Lai/onnxruntime/OrtProvider;

.field public static final enum AZURE:Lai/onnxruntime/OrtProvider;

.field public static final enum CORE_ML:Lai/onnxruntime/OrtProvider;

.field public static final enum CPU:Lai/onnxruntime/OrtProvider;

.field public static final enum CUDA:Lai/onnxruntime/OrtProvider;

.field public static final enum DIRECT_ML:Lai/onnxruntime/OrtProvider;

.field public static final enum DNNL:Lai/onnxruntime/OrtProvider;

.field public static final enum MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

.field public static final enum NNAPI:Lai/onnxruntime/OrtProvider;

.field public static final enum OPEN_VINO:Lai/onnxruntime/OrtProvider;

.field public static final enum QNN:Lai/onnxruntime/OrtProvider;

.field public static final enum RK_NPU:Lai/onnxruntime/OrtProvider;

.field public static final enum ROCM:Lai/onnxruntime/OrtProvider;

.field public static final enum TENSOR_RT:Lai/onnxruntime/OrtProvider;

.field public static final enum VITIS_AI:Lai/onnxruntime/OrtProvider;

.field public static final enum WEBGPU:Lai/onnxruntime/OrtProvider;

.field public static final enum XNNPACK:Lai/onnxruntime/OrtProvider;

.field private static final valueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lai/onnxruntime/OrtProvider;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lai/onnxruntime/OrtProvider;
    .registers 18

    .line 1
    sget-object v1, Lai/onnxruntime/OrtProvider;->CPU:Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    sget-object v2, Lai/onnxruntime/OrtProvider;->CUDA:Lai/onnxruntime/OrtProvider;

    .line 4
    .line 5
    sget-object v3, Lai/onnxruntime/OrtProvider;->DNNL:Lai/onnxruntime/OrtProvider;

    .line 6
    .line 7
    sget-object v4, Lai/onnxruntime/OrtProvider;->OPEN_VINO:Lai/onnxruntime/OrtProvider;

    .line 8
    .line 9
    sget-object v5, Lai/onnxruntime/OrtProvider;->VITIS_AI:Lai/onnxruntime/OrtProvider;

    .line 10
    .line 11
    sget-object v6, Lai/onnxruntime/OrtProvider;->TENSOR_RT:Lai/onnxruntime/OrtProvider;

    .line 12
    .line 13
    sget-object v7, Lai/onnxruntime/OrtProvider;->NNAPI:Lai/onnxruntime/OrtProvider;

    .line 14
    .line 15
    sget-object v8, Lai/onnxruntime/OrtProvider;->RK_NPU:Lai/onnxruntime/OrtProvider;

    .line 16
    .line 17
    sget-object v9, Lai/onnxruntime/OrtProvider;->DIRECT_ML:Lai/onnxruntime/OrtProvider;

    .line 18
    .line 19
    sget-object v10, Lai/onnxruntime/OrtProvider;->MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

    .line 20
    .line 21
    sget-object v11, Lai/onnxruntime/OrtProvider;->ACL:Lai/onnxruntime/OrtProvider;

    .line 22
    .line 23
    sget-object v12, Lai/onnxruntime/OrtProvider;->ROCM:Lai/onnxruntime/OrtProvider;

    .line 24
    .line 25
    sget-object v13, Lai/onnxruntime/OrtProvider;->CORE_ML:Lai/onnxruntime/OrtProvider;

    .line 26
    .line 27
    sget-object v14, Lai/onnxruntime/OrtProvider;->XNNPACK:Lai/onnxruntime/OrtProvider;

    .line 28
    .line 29
    sget-object v15, Lai/onnxruntime/OrtProvider;->AZURE:Lai/onnxruntime/OrtProvider;

    .line 30
    .line 31
    sget-object v16, Lai/onnxruntime/OrtProvider;->QNN:Lai/onnxruntime/OrtProvider;

    .line 32
    .line 33
    sget-object v17, Lai/onnxruntime/OrtProvider;->WEBGPU:Lai/onnxruntime/OrtProvider;

    .line 34
    .line 35
    filled-new-array/range {v1 .. v17}, [Lai/onnxruntime/OrtProvider;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 6

    .line 1
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    const-string v1, "CPUExecutionProvider"

    .line 4
    .line 5
    const-string v2, "CPU"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lai/onnxruntime/OrtProvider;->CPU:Lai/onnxruntime/OrtProvider;

    .line 12
    .line 13
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "CUDAExecutionProvider"

    .line 17
    .line 18
    const-string v4, "CUDA"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lai/onnxruntime/OrtProvider;->CUDA:Lai/onnxruntime/OrtProvider;

    .line 24
    .line 25
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "DnnlExecutionProvider"

    .line 29
    .line 30
    const-string v4, "DNNL"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lai/onnxruntime/OrtProvider;->DNNL:Lai/onnxruntime/OrtProvider;

    .line 36
    .line 37
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "OpenVINOExecutionProvider"

    .line 41
    .line 42
    const-string v4, "OPEN_VINO"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lai/onnxruntime/OrtProvider;->OPEN_VINO:Lai/onnxruntime/OrtProvider;

    .line 48
    .line 49
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "VitisAIExecutionProvider"

    .line 53
    .line 54
    const-string v4, "VITIS_AI"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lai/onnxruntime/OrtProvider;->VITIS_AI:Lai/onnxruntime/OrtProvider;

    .line 60
    .line 61
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "TensorrtExecutionProvider"

    .line 65
    .line 66
    const-string v4, "TENSOR_RT"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lai/onnxruntime/OrtProvider;->TENSOR_RT:Lai/onnxruntime/OrtProvider;

    .line 72
    .line 73
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "NnapiExecutionProvider"

    .line 77
    .line 78
    const-string v4, "NNAPI"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lai/onnxruntime/OrtProvider;->NNAPI:Lai/onnxruntime/OrtProvider;

    .line 84
    .line 85
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "RknpuExecutionProvider"

    .line 89
    .line 90
    const-string v4, "RK_NPU"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lai/onnxruntime/OrtProvider;->RK_NPU:Lai/onnxruntime/OrtProvider;

    .line 96
    .line 97
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "DmlExecutionProvider"

    .line 102
    .line 103
    const-string v4, "DIRECT_ML"

    .line 104
    .line 105
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lai/onnxruntime/OrtProvider;->DIRECT_ML:Lai/onnxruntime/OrtProvider;

    .line 109
    .line 110
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "MIGraphXExecutionProvider"

    .line 115
    .line 116
    const-string v4, "MI_GRAPH_X"

    .line 117
    .line 118
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lai/onnxruntime/OrtProvider;->MI_GRAPH_X:Lai/onnxruntime/OrtProvider;

    .line 122
    .line 123
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 124
    .line 125
    const/16 v1, 0xa

    .line 126
    .line 127
    const-string v2, "ACLExecutionProvider"

    .line 128
    .line 129
    const-string v4, "ACL"

    .line 130
    .line 131
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    .line 133
    .line 134
    sput-object v0, Lai/onnxruntime/OrtProvider;->ACL:Lai/onnxruntime/OrtProvider;

    .line 135
    .line 136
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 137
    .line 138
    const/16 v1, 0xb

    .line 139
    .line 140
    const-string v2, "ROCMExecutionProvider"

    .line 141
    .line 142
    const-string v4, "ROCM"

    .line 143
    .line 144
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sput-object v0, Lai/onnxruntime/OrtProvider;->ROCM:Lai/onnxruntime/OrtProvider;

    .line 148
    .line 149
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 150
    .line 151
    const/16 v1, 0xc

    .line 152
    .line 153
    const-string v2, "CoreMLExecutionProvider"

    .line 154
    .line 155
    const-string v4, "CORE_ML"

    .line 156
    .line 157
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v0, Lai/onnxruntime/OrtProvider;->CORE_ML:Lai/onnxruntime/OrtProvider;

    .line 161
    .line 162
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 163
    .line 164
    const/16 v1, 0xd

    .line 165
    .line 166
    const-string v2, "XnnpackExecutionProvider"

    .line 167
    .line 168
    const-string v4, "XNNPACK"

    .line 169
    .line 170
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    .line 172
    .line 173
    sput-object v0, Lai/onnxruntime/OrtProvider;->XNNPACK:Lai/onnxruntime/OrtProvider;

    .line 174
    .line 175
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 176
    .line 177
    const/16 v1, 0xe

    .line 178
    .line 179
    const-string v2, "AzureExecutionProvider"

    .line 180
    .line 181
    const-string v4, "AZURE"

    .line 182
    .line 183
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lai/onnxruntime/OrtProvider;->AZURE:Lai/onnxruntime/OrtProvider;

    .line 187
    .line 188
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 189
    .line 190
    const/16 v1, 0xf

    .line 191
    .line 192
    const-string v2, "QNNExecutionProvider"

    .line 193
    .line 194
    const-string v4, "QNN"

    .line 195
    .line 196
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sput-object v0, Lai/onnxruntime/OrtProvider;->QNN:Lai/onnxruntime/OrtProvider;

    .line 200
    .line 201
    new-instance v0, Lai/onnxruntime/OrtProvider;

    .line 202
    .line 203
    const/16 v1, 0x10

    .line 204
    .line 205
    const-string v2, "WebGpuExecutionProvider"

    .line 206
    .line 207
    const-string v4, "WEBGPU"

    .line 208
    .line 209
    invoke-direct {v0, v4, v1, v2}, Lai/onnxruntime/OrtProvider;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sput-object v0, Lai/onnxruntime/OrtProvider;->WEBGPU:Lai/onnxruntime/OrtProvider;

    .line 213
    .line 214
    invoke-static {}, Lai/onnxruntime/OrtProvider;->$values()[Lai/onnxruntime/OrtProvider;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    sput-object v0, Lai/onnxruntime/OrtProvider;->$VALUES:[Lai/onnxruntime/OrtProvider;

    .line 219
    .line 220
    new-instance v0, Ljava/util/HashMap;

    .line 221
    .line 222
    invoke-static {}, Lai/onnxruntime/OrtProvider;->values()[Lai/onnxruntime/OrtProvider;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    array-length v1, v1

    .line 227
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 228
    .line 229
    .line 230
    sput-object v0, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    .line 231
    .line 232
    invoke-static {}, Lai/onnxruntime/OrtProvider;->values()[Lai/onnxruntime/OrtProvider;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    array-length v1, v0

    .line 237
    :goto_ec
    if-ge v3, v1, :cond_fa

    .line 238
    .line 239
    aget-object v2, v0, v3

    .line 240
    .line 241
    sget-object v4, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    .line 242
    .line 243
    iget-object v5, v2, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    .line 244
    .line 245
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    add-int/lit8 v3, v3, 0x1

    .line 249
    .line 250
    goto :goto_ec

    .line 251
    :cond_fa
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static mapFromName(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;
    .registers 2

    .line 1
    sget-object v0, Lai/onnxruntime/OrtProvider;->valueMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lai/onnxruntime/OrtProvider;

    .line 8
    .line 9
    if-eqz v0, :cond_b

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_b
    const-string v0, "Unknown execution provider - "

    .line 13
    .line 14
    invoke-static {v0, p0}, Lai/onnxruntime/a;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x0

    .line 22
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lai/onnxruntime/OrtProvider;
    .registers 2

    .line 1
    const-class v0, Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/onnxruntime/OrtProvider;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/onnxruntime/OrtProvider;
    .registers 1

    .line 1
    sget-object v0, Lai/onnxruntime/OrtProvider;->$VALUES:[Lai/onnxruntime/OrtProvider;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lai/onnxruntime/OrtProvider;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/onnxruntime/OrtProvider;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lai/onnxruntime/OrtProvider;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
