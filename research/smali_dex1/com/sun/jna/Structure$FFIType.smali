.class Lcom/sun/jna/Structure$FFIType;
.super Lcom/sun/jna/Structure;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "size",
        "alignment",
        "type",
        "elements"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/Structure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FFIType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Structure$FFIType$FFITypes;,
        Lcom/sun/jna/Structure$FFIType$size_t;
    }
.end annotation


# static fields
.field private static final FFI_TYPE_STRUCT:I = 0xd

.field private static final ffiTypeInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/jna/Pointer;",
            "Lcom/sun/jna/Structure$FFIType;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sun/jna/Structure$FFIType;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final unionHelper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/sun/jna/Structure$FFIType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public alignment:S

.field public elements:Lcom/sun/jna/Pointer;

.field public size:Lcom/sun/jna/Structure$FFIType$size_t;

.field public type:S


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/WeakHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/sun/jna/Structure$FFIType;->unionHelper:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    .line 21
    .line 22
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 23
    .line 24
    if-eqz v1, :cond_243

    .line 25
    .line 26
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_void:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2100()Lcom/sun/jna/Pointer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_23b

    .line 31
    .line 32
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_void:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2100()Lcom/sun/jna/Pointer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_void:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2100()Lcom/sun/jna/Pointer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const-class v3, Lcom/sun/jna/Structure$FFIType;

    .line 41
    .line 42
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_float:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_float:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_double:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_double:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_longdouble:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2200()Lcom/sun/jna/Pointer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_longdouble:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2200()Lcom/sun/jna/Pointer;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_pointer:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_pointer:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {v3, v2}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_ec
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v1

    .line 241
    if-eqz v1, :cond_fc

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 248
    .line 249
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->read()V

    .line 250
    .line 251
    .line 252
    goto :goto_ec

    .line 253
    :cond_fc
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    .line 254
    .line 255
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_void:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2100()Lcom/sun/jna/Pointer;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 264
    .line 265
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 266
    .line 267
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 268
    .line 269
    .line 270
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_void:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2100()Lcom/sun/jna/Pointer;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 279
    .line 280
    const-class v2, Ljava/lang/Void;

    .line 281
    .line 282
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 283
    .line 284
    .line 285
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_float:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 294
    .line 295
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 296
    .line 297
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 298
    .line 299
    .line 300
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_float:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 309
    .line 310
    const-class v2, Ljava/lang/Float;

    .line 311
    .line 312
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 313
    .line 314
    .line 315
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_double:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 324
    .line 325
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 326
    .line 327
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 328
    .line 329
    .line 330
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_double:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 339
    .line 340
    const-class v2, Ljava/lang/Double;

    .line 341
    .line 342
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 343
    .line 344
    .line 345
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 354
    .line 355
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 356
    .line 357
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 358
    .line 359
    .line 360
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    move-result-object v1

    .line 368
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 369
    .line 370
    const-class v2, Ljava/lang/Long;

    .line 371
    .line 372
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 373
    .line 374
    .line 375
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 384
    .line 385
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 386
    .line 387
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 388
    .line 389
    .line 390
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 399
    .line 400
    const-class v2, Ljava/lang/Integer;

    .line 401
    .line 402
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 403
    .line 404
    .line 405
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 414
    .line 415
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 416
    .line 417
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 418
    .line 419
    .line 420
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    .line 426
    .line 427
    move-result-object v1

    .line 428
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 429
    .line 430
    const-class v2, Ljava/lang/Short;

    .line 431
    .line 432
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 433
    .line 434
    .line 435
    sget v1, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 436
    .line 437
    const/4 v2, 0x2

    .line 438
    if-ne v1, v2, :cond_1c2

    .line 439
    .line 440
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    :goto_1bb
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 449
    .line 450
    goto :goto_1c7

    .line 451
    :cond_1c2
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    goto :goto_1bb

    .line 456
    :goto_1c7
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 457
    .line 458
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 459
    .line 460
    .line 461
    const-class v2, Ljava/lang/Character;

    .line 462
    .line 463
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 464
    .line 465
    .line 466
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 475
    .line 476
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 477
    .line 478
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 479
    .line 480
    .line 481
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v1

    .line 489
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 490
    .line 491
    const-class v2, Ljava/lang/Byte;

    .line 492
    .line 493
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 494
    .line 495
    .line 496
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_pointer:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 505
    .line 506
    const-class v2, Lcom/sun/jna/Pointer;

    .line 507
    .line 508
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 509
    .line 510
    .line 511
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_pointer:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 520
    .line 521
    const-class v2, Ljava/lang/String;

    .line 522
    .line 523
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 524
    .line 525
    .line 526
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_pointer:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 535
    .line 536
    const-class v2, Lcom/sun/jna/WString;

    .line 537
    .line 538
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 539
    .line 540
    .line 541
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 542
    .line 543
    .line 544
    move-result-object v1

    .line 545
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    check-cast v1, Lcom/sun/jna/Structure$FFIType;

    .line 550
    .line 551
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 552
    .line 553
    invoke-static {v2, v1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 554
    .line 555
    .line 556
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    check-cast v0, Lcom/sun/jna/Structure$FFIType;

    .line 565
    .line 566
    const-class v1, Ljava/lang/Boolean;

    .line 567
    .line 568
    invoke-static {v1, v0}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_23b
    new-instance v0, Ljava/lang/Error;

    .line 573
    .line 574
    const-string v1, "FFI types not initialized"

    .line 575
    .line 576
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    throw v0

    .line 580
    :cond_243
    new-instance v0, Ljava/lang/Error;

    .line 581
    .line 582
    const-string v1, "Native library not initialized"

    .line 583
    .line 584
    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 585
    .line 586
    .line 587
    throw v0
.end method

.method public constructor <init>()V
    .registers 2

    .line 254
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 255
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Structure$FFIType;)V
    .registers 3

    .line 256
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 257
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 258
    iget-object v0, p1, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    iput-object v0, p0, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    .line 259
    iget-short v0, p1, Lcom/sun/jna/Structure$FFIType;->alignment:S

    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->alignment:S

    .line 260
    iget-short v0, p1, Lcom/sun/jna/Structure$FFIType;->type:S

    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 261
    iget-object p1, p1, Lcom/sun/jna/Structure$FFIType;->elements:Lcom/sun/jna/Pointer;

    iput-object p1, p0, Lcom/sun/jna/Structure$FFIType;->elements:Lcom/sun/jna/Pointer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/jna/Structure;)V
    .registers 13

    .line 1
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xd

    .line 5
    .line 6
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    # invokes: Lcom/sun/jna/Structure;->ensureAllocated(Z)V
    invoke-static {p1, v0}, Lcom/sun/jna/Structure;->access$2300(Lcom/sun/jna/Structure;Z)V

    .line 10
    .line 11
    .line 12
    instance-of v1, p1, Lcom/sun/jna/Union;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_c5

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const/4 v3, 0x0

    .line 30
    move v5, v2

    .line 31
    move v6, v5

    .line 32
    move-object v4, v3

    .line 33
    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v7

    .line 37
    if-eqz v7, :cond_4d

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    check-cast v7, Lcom/sun/jna/Structure$StructField;

    .line 44
    .line 45
    invoke-virtual {p1, v7}, Lcom/sun/jna/Structure;->getFieldTypeInfo(Lcom/sun/jna/Structure$StructField;)Lcom/sun/jna/Structure$FFIType;

    .line 46
    .line 47
    .line 48
    move-result-object v8

    .line 49
    invoke-static {v8}, Lcom/sun/jna/Structure$FFIType;->isIntegerType(Lcom/sun/jna/Structure$FFIType;)Z

    .line 50
    .line 51
    .line 52
    move-result v9

    .line 53
    if-eqz v9, :cond_37

    .line 54
    .line 55
    move v6, v0

    .line 56
    :cond_37
    if-eqz v4, :cond_49

    .line 57
    .line 58
    iget v9, v7, Lcom/sun/jna/Structure$StructField;->size:I

    .line 59
    .line 60
    if-lt v5, v9, :cond_49

    .line 61
    .line 62
    if-ne v5, v9, :cond_20

    .line 63
    .line 64
    const-class v9, Lcom/sun/jna/Structure;

    .line 65
    .line 66
    iget-object v10, v7, Lcom/sun/jna/Structure$StructField;->type:Ljava/lang/Class;

    .line 67
    .line 68
    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_20

    .line 73
    .line 74
    :cond_49
    iget v5, v7, Lcom/sun/jna/Structure$StructField;->size:I

    .line 75
    .line 76
    move-object v4, v8

    .line 77
    goto :goto_20

    .line 78
    :cond_4d
    invoke-static {}, Lcom/sun/jna/Platform;->isIntel()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_5f

    .line 83
    .line 84
    invoke-static {}, Lcom/sun/jna/Platform;->is64Bit()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_5f

    .line 89
    .line 90
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_6b

    .line 95
    .line 96
    :cond_5f
    invoke-static {}, Lcom/sun/jna/Platform;->isARM()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_6b

    .line 101
    .line 102
    invoke-static {}, Lcom/sun/jna/Platform;->isLoongArch()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_b0

    .line 107
    .line 108
    :cond_6b
    if-eqz v6, :cond_b0

    .line 109
    .line 110
    invoke-static {v4}, Lcom/sun/jna/Structure$FFIType;->isFloatType(Lcom/sun/jna/Structure$FFIType;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_b0

    .line 115
    .line 116
    new-instance v1, Lcom/sun/jna/Structure$FFIType;

    .line 117
    .line 118
    invoke-direct {v1, v4}, Lcom/sun/jna/Structure$FFIType;-><init>(Lcom/sun/jna/Structure$FFIType;)V

    .line 119
    .line 120
    .line 121
    iget-object v4, v1, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    .line 122
    .line 123
    invoke-virtual {v4}, Lcom/sun/jna/IntegerType;->intValue()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    const/4 v5, 0x4

    .line 128
    if-ne v4, v5, :cond_92

    .line 129
    .line 130
    sget-object v4, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    .line 131
    .line 132
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    check-cast v4, Lcom/sun/jna/Structure$FFIType;

    .line 141
    .line 142
    iget-short v4, v4, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 143
    .line 144
    iput-short v4, v1, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 145
    .line 146
    goto :goto_ac

    .line 147
    :cond_92
    iget-object v4, v1, Lcom/sun/jna/Structure$FFIType;->size:Lcom/sun/jna/Structure$FFIType$size_t;

    .line 148
    .line 149
    invoke-virtual {v4}, Lcom/sun/jna/IntegerType;->intValue()I

    .line 150
    .line 151
    .line 152
    move-result v4

    .line 153
    const/16 v5, 0x8

    .line 154
    .line 155
    if-ne v4, v5, :cond_ac

    .line 156
    .line 157
    sget-object v4, Lcom/sun/jna/Structure$FFIType;->ffiTypeInfo:Ljava/util/Map;

    .line 158
    .line 159
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    check-cast v4, Lcom/sun/jna/Structure$FFIType;

    .line 168
    .line 169
    iget-short v4, v4, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 170
    .line 171
    iput-short v4, v1, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 172
    .line 173
    :cond_ac
    :goto_ac
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->write()V

    .line 174
    .line 175
    .line 176
    move-object v4, v1

    .line 177
    :cond_b0
    const/4 v1, 0x2

    .line 178
    new-array v1, v1, [Lcom/sun/jna/Pointer;

    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    aput-object v5, v1, v2

    .line 185
    .line 186
    aput-object v3, v1, v0

    .line 187
    .line 188
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->unionHelper:Ljava/util/Map;

    .line 189
    .line 190
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    goto :goto_f6

    .line 198
    :cond_c5
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    add-int/2addr v1, v0

    .line 207
    new-array v1, v1, [Lcom/sun/jna/Pointer;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/sun/jna/Structure;->fields()Ljava/util/Map;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    :goto_dc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_f6

    .line 226
    .line 227
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    check-cast v3, Lcom/sun/jna/Structure$StructField;

    .line 232
    .line 233
    add-int/lit8 v4, v2, 0x1

    .line 234
    .line 235
    invoke-virtual {p1, v3}, Lcom/sun/jna/Structure;->getFieldTypeInfo(Lcom/sun/jna/Structure$StructField;)Lcom/sun/jna/Structure$FFIType;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    invoke-virtual {v3}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    aput-object v3, v1, v2

    .line 244
    .line 245
    move v2, v4

    .line 246
    goto :goto_dc

    .line 247
    :cond_f6
    :goto_f6
    invoke-direct {p0, v1}, Lcom/sun/jna/Structure$FFIType;->init([Lcom/sun/jna/Pointer;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    .line 251
    .line 252
    .line 253
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    const/16 v0, 0xd

    .line 263
    iput-short v0, p0, Lcom/sun/jna/Structure$FFIType;->type:S

    .line 264
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 v0, p1, 0x1

    .line 265
    new-array v0, v0, [Lcom/sun/jna/Pointer;

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, p1, :cond_24

    .line 267
    aput-object p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 268
    :cond_24
    invoke-direct {p0, v0}, Lcom/sun/jna/Structure$FFIType;->init([Lcom/sun/jna/Pointer;)V

    .line 269
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    return-void
.end method

.method public static synthetic access$900(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;
    .registers 3

    if-nez p0, :cond_11

    .line 228
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    monitor-enter v0

    .line 229
    :try_start_5
    const-class p0, Lcom/sun/jna/Pointer;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/sun/jna/Structure$FFIType;->getTypeInfo(Ljava/lang/Class;I)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_e
    move-exception p0

    .line 230
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p0

    .line 231
    :cond_11
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 232
    check-cast p0, Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0

    .line 233
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    move-result-object p0

    return-object p0
.end method

.method private static get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/Structure$FFIType;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v2, "Unsupported type "

    .line 7
    .line 8
    invoke-static {p1}, Lcom/sun/jna/Native;->getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-eqz v3, :cond_17

    .line 13
    .line 14
    invoke-interface {v3, p1}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-eqz v3, :cond_17

    .line 19
    .line 20
    invoke-interface {v3}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_17
    sget-object v3, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    .line 25
    .line 26
    monitor-enter v3

    .line 27
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_28

    .line 32
    .line 33
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    goto :goto_28

    .line 38
    :catchall_25
    move-exception p0

    .line 39
    goto/16 :goto_e1

    .line 40
    .line 41
    :cond_28
    :goto_28
    invoke-static {p1, v0}, Lcom/sun/jna/Structure$FFIType;->getTypeInfo(Ljava/lang/Class;I)Lcom/sun/jna/Structure$FFIType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_30

    .line 46
    .line 47
    monitor-exit v3

    .line 48
    return-object v0

    .line 49
    :cond_30
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3c

    .line 52
    .line 53
    const-class v0, Ljava/nio/Buffer;

    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-nez v0, :cond_44

    .line 60
    .line 61
    :cond_3c
    const-class v0, Lcom/sun/jna/Callback;

    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_5d

    .line 68
    .line 69
    :cond_44
    const-class p0, Lcom/sun/jna/Pointer;

    .line 70
    .line 71
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-class p0, Lcom/sun/jna/Pointer;

    .line 79
    .line 80
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    check-cast p0, Ljava/util/Map;

    .line 85
    .line 86
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    check-cast p0, Lcom/sun/jna/Structure$FFIType;

    .line 91
    .line 92
    monitor-exit v3

    .line 93
    return-object p0

    .line 94
    :cond_5d
    const-class v0, Lcom/sun/jna/Structure;

    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_9c

    .line 101
    .line 102
    if-nez p0, :cond_6f

    .line 103
    .line 104
    # getter for: Lcom/sun/jna/Structure;->PLACEHOLDER_MEMORY:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure;->access$2400()Lcom/sun/jna/Pointer;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    invoke-static {p1, p0}, Lcom/sun/jna/Structure;->newInstance(Ljava/lang/Class;Lcom/sun/jna/Pointer;)Lcom/sun/jna/Structure;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    :cond_6f
    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_90

    .line 119
    .line 120
    const-class p0, Lcom/sun/jna/Pointer;

    .line 121
    .line 122
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-interface {v3, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    const-class p0, Lcom/sun/jna/Pointer;

    .line 130
    .line 131
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    check-cast p0, Ljava/util/Map;

    .line 136
    .line 137
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    check-cast p0, Lcom/sun/jna/Structure$FFIType;

    .line 142
    .line 143
    monitor-exit v3

    .line 144
    return-object p0

    .line 145
    :cond_90
    new-instance v0, Lcom/sun/jna/Structure$FFIType;

    .line 146
    .line 147
    check-cast p0, Lcom/sun/jna/Structure;

    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/sun/jna/Structure$FFIType;-><init>(Lcom/sun/jna/Structure;)V

    .line 150
    .line 151
    .line 152
    invoke-static {p1, v0}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V

    .line 153
    .line 154
    .line 155
    monitor-exit v3

    .line 156
    return-object v0

    .line 157
    :cond_9c
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_bb

    .line 164
    .line 165
    invoke-static {p1}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    new-instance v0, Lcom/sun/jna/ToNativeContext;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, p0, v0}, Lcom/sun/jna/NativeMappedConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-static {p0, p1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;Ljava/lang/Class;)Lcom/sun/jna/Structure$FFIType;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    monitor-exit v3

    .line 187
    return-object p0

    .line 188
    :cond_bb
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_cf

    .line 193
    .line 194
    new-instance v0, Lcom/sun/jna/Structure$FFIType;

    .line 195
    .line 196
    invoke-direct {v0, p0, p1}, Lcom/sun/jna/Structure$FFIType;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 197
    .line 198
    .line 199
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    invoke-static {p1, p0, v0}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;ILcom/sun/jna/Structure$FFIType;)V

    .line 204
    .line 205
    .line 206
    monitor-exit v3

    .line 207
    return-object v0

    .line 208
    :cond_cf
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 209
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    throw p0

    .line 226
    :goto_e1
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_1a .. :try_end_e2} :catchall_25

    .line 227
    throw p0
.end method

.method private static getTypeInfo(Ljava/lang/Class;I)Lcom/sun/jna/Structure$FFIType;
    .registers 3

    .line 1
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz p0, :cond_15

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/sun/jna/Structure$FFIType;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_15
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method private init([Lcom/sun/jna/Pointer;)V
    .registers 8

    .line 1
    new-instance v0, Lcom/sun/jna/Memory;

    .line 2
    .line 3
    sget v1, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 4
    .line 5
    array-length v2, p1

    .line 6
    mul-int/2addr v1, v2

    .line 7
    int-to-long v1, v1

    .line 8
    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/sun/jna/Structure$FFIType;->elements:Lcom/sun/jna/Pointer;

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    array-length v5, p1

    .line 15
    const-wide/16 v1, 0x0

    .line 16
    .line 17
    move-object v3, p1

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/sun/jna/Pointer;->write(J[Lcom/sun/jna/Pointer;II)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->write()V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private static isFloatType(Lcom/sun/jna/Structure$FFIType;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_float:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1900()Lcom/sun/jna/Pointer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1b

    .line 14
    .line 15
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_double:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$2000()Lcom/sun/jna/Pointer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    if-eqz p0, :cond_19

    .line 24
    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    .line 29
    return p0
.end method

.method private static isIntegerType(Lcom/sun/jna/Structure$FFIType;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1000()Lcom/sun/jna/Pointer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_61

    .line 14
    .line 15
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint8:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1100()Lcom/sun/jna/Pointer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_61

    .line 24
    .line 25
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1200()Lcom/sun/jna/Pointer;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_61

    .line 34
    .line 35
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint16:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1300()Lcom/sun/jna/Pointer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_61

    .line 44
    .line 45
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1400()Lcom/sun/jna/Pointer;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_61

    .line 54
    .line 55
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint32:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1500()Lcom/sun/jna/Pointer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_61

    .line 64
    .line 65
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_uint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1600()Lcom/sun/jna/Pointer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_61

    .line 74
    .line 75
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_sint64:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1700()Lcom/sun/jna/Pointer;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_61

    .line 84
    .line 85
    # getter for: Lcom/sun/jna/Structure$FFIType$FFITypes;->ffi_type_pointer:Lcom/sun/jna/Pointer;
    invoke-static {}, Lcom/sun/jna/Structure$FFIType$FFITypes;->access$1800()Lcom/sun/jna/Pointer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Lcom/sun/jna/Pointer;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_5f

    .line 94
    .line 95
    goto :goto_61

    .line 96
    :cond_5f
    const/4 p0, 0x0

    .line 97
    return p0

    .line 98
    :cond_61
    :goto_61
    const/4 p0, 0x1

    .line 99
    return p0
.end method

.method private static storeTypeInfo(Ljava/lang/Class;ILcom/sun/jna/Structure$FFIType;)V
    .registers 5

    .line 1
    sget-object v0, Lcom/sun/jna/Structure$FFIType;->typeInfoMap:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/Map;

    .line 9
    .line 10
    if-nez v1, :cond_16

    .line 11
    .line 12
    new-instance v1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto :goto_16

    .line 21
    :catchall_14
    move-exception p0

    .line 22
    goto :goto_1f

    .line 23
    :cond_16
    :goto_16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {v1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_14

    .line 33
    throw p0
.end method

.method private static storeTypeInfo(Ljava/lang/Class;Lcom/sun/jna/Structure$FFIType;)V
    .registers 3

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, v0, p1}, Lcom/sun/jna/Structure$FFIType;->storeTypeInfo(Ljava/lang/Class;ILcom/sun/jna/Structure$FFIType;)V

    return-void
.end method
