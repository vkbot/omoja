.class public final Lcom/sun/jna/Native;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lcom/sun/jna/Version;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/Native$AWT;,
        Lcom/sun/jna/Native$Buffers;,
        Lcom/sun/jna/Native$ffi_callback;
    }
.end annotation


# static fields
.field public static final BOOL_SIZE:I

.field static final CB_HAS_INITIALIZER:I = 0x1

.field static final CB_OPTION_DIRECT:I = 0x1

.field static final CB_OPTION_IN_DLL:I = 0x2

.field private static final CVT_ARRAY_BOOLEAN:I = 0xd

.field private static final CVT_ARRAY_BYTE:I = 0x6

.field private static final CVT_ARRAY_CHAR:I = 0x8

.field private static final CVT_ARRAY_DOUBLE:I = 0xc

.field private static final CVT_ARRAY_FLOAT:I = 0xb

.field private static final CVT_ARRAY_INT:I = 0x9

.field private static final CVT_ARRAY_LONG:I = 0xa

.field private static final CVT_ARRAY_SHORT:I = 0x7

.field private static final CVT_BOOLEAN:I = 0xe

.field private static final CVT_BUFFER:I = 0x5

.field private static final CVT_BYTE:I = 0x1d

.field private static final CVT_CALLBACK:I = 0xf

.field private static final CVT_DEFAULT:I = 0x0

.field private static final CVT_FLOAT:I = 0x10

.field private static final CVT_INTEGER_TYPE:I = 0x15

.field private static final CVT_JNIENV:I = 0x1b

.field private static final CVT_NATIVE_MAPPED:I = 0x11

.field private static final CVT_NATIVE_MAPPED_STRING:I = 0x12

.field private static final CVT_NATIVE_MAPPED_WSTRING:I = 0x13

.field private static final CVT_OBJECT:I = 0x1a

.field private static final CVT_POINTER:I = 0x1

.field private static final CVT_POINTER_TYPE:I = 0x16

.field private static final CVT_SHORT:I = 0x1c

.field private static final CVT_STRING:I = 0x2

.field private static final CVT_STRUCTURE:I = 0x3

.field private static final CVT_STRUCTURE_BYVAL:I = 0x4

.field private static final CVT_TYPE_MAPPER:I = 0x17

.field private static final CVT_TYPE_MAPPER_STRING:I = 0x18

.field private static final CVT_TYPE_MAPPER_WSTRING:I = 0x19

.field private static final CVT_UNSUPPORTED:I = -0x1

.field private static final CVT_WSTRING:I = 0x14

.field public static final DEBUG_JNA_LOAD:Z

.field private static final DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

.field public static final DEBUG_LOAD:Z

.field public static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final DEFAULT_ENCODING:Ljava/lang/String;

.field private static final DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

.field static final JNA_TMPLIB_PREFIX:Ljava/lang/String; = "jna"

.field private static final LOG:Ljava/util/logging/Logger;

.field public static final LONG_DOUBLE_SIZE:I

.field public static final LONG_SIZE:I

.field static final MAX_ALIGNMENT:I

.field static final MAX_PADDING:I

.field public static final POINTER_SIZE:I

.field public static final SIZE_T_SIZE:I

.field private static final TYPE_BOOL:I = 0x4

.field private static final TYPE_LONG:I = 0x1

.field private static final TYPE_LONG_DOUBLE:I = 0x5

.field private static final TYPE_SIZE_T:I = 0x3

.field private static final TYPE_VOIDP:I = 0x0

.field private static final TYPE_WCHAR_T:I = 0x2

.field public static final WCHAR_SIZE:I

.field private static final _OPTION_ENCLOSING_LIBRARY:Ljava/lang/String; = "enclosing-library"

.field private static callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

.field private static final finalizer:Ljava/lang/Object;

.field static jnidispatchPath:Ljava/lang/String;

.field private static final libraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/Reference<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/sun/jna/Memory;",
            ">;"
        }
    .end annotation
.end field

.field private static final nativeThreads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Thread;",
            "Lcom/sun/jna/Pointer;",
            ">;"
        }
    .end annotation
.end field

.field private static final registeredClasses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;[J>;"
        }
    .end annotation
.end field

.field private static final registeredLibraries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/NativeLibrary;",
            ">;"
        }
    .end annotation
.end field

.field private static final typeOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 1
    const-class v0, Lcom/sun/jna/Native;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 12
    .line 13
    const-string v0, "native.encoding"

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-eqz v0, :cond_2a

    .line 21
    .line 22
    :try_start_15
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a

    .line 26
    goto :goto_2b

    .line 27
    :catch_1a
    move-exception v2

    .line 28
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 29
    .line 30
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 31
    .line 32
    const-string v5, "Failed to get charset for native.encoding value : \'"

    .line 33
    .line 34
    const-string v6, "\'"

    .line 35
    .line 36
    invoke-static {v5, v0, v6}, Lai/onnxruntime/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v4, v0, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    move-object v0, v1

    .line 44
    :goto_2b
    if-nez v0, :cond_31

    .line 45
    .line 46
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_31
    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 57
    .line 58
    const-string v0, "jna.debug_load"

    .line 59
    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    sput-boolean v0, Lcom/sun/jna/Native;->DEBUG_LOAD:Z

    .line 65
    .line 66
    const-string v0, "jna.debug_load.jna"

    .line 67
    .line 68
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    sput-boolean v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    .line 73
    .line 74
    if-eqz v0, :cond_4e

    .line 75
    .line 76
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 77
    .line 78
    goto :goto_50

    .line 79
    :cond_4e
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 80
    .line 81
    :goto_50
    sput-object v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 82
    .line 83
    sput-object v1, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 84
    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    sput-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 95
    .line 96
    new-instance v0, Ljava/util/WeakHashMap;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    sput-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    .line 106
    .line 107
    new-instance v0, Lcom/sun/jna/Native$1;

    .line 108
    .line 109
    invoke-direct {v0}, Lcom/sun/jna/Native$1;-><init>()V

    .line 110
    .line 111
    .line 112
    sput-object v0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 113
    .line 114
    sput-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 115
    .line 116
    invoke-static {}, Lcom/sun/jna/Native;->loadNativeDispatchLibrary()V

    .line 117
    .line 118
    .line 119
    const-string v0, "6.1.6"

    .line 120
    .line 121
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {v0, v1}, Lcom/sun/jna/Native;->isCompatibleVersion(Ljava/lang/String;Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_109

    .line 130
    .line 131
    const-string v0, "line.separator"

    .line 132
    .line 133
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/Error;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v3, "There is an incompatible JNA native library installed on this system"

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    const-string v3, "Expected: 6.1.6"

    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v3, "Found:    "

    .line 167
    .line 168
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    sget-object v3, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 182
    .line 183
    if-eqz v3, :cond_c8

    .line 184
    .line 185
    new-instance v3, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v4, "(at "

    .line 188
    .line 189
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    sget-object v4, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 193
    .line 194
    const-string v5, ")"

    .line 195
    .line 196
    invoke-static {v3, v4, v5}, Lai/onnxruntime/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v3

    .line 200
    goto :goto_ce

    .line 201
    :cond_c8
    const-string v3, "java.library.path"

    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :goto_ce
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string v3, "."

    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const-string v3, "To resolve this issue you may do one of the following:"

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v3, " - remove or uninstall the offending library"

    .line 227
    .line 228
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    const-string v3, " - set the system property jna.nosys=true"

    .line 235
    .line 236
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    const-string v3, " - set jna.boot.library.path to include the path to the version of the "

    .line 243
    .line 244
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    const-string v3, "   jnidispatch library included with the JNA jar file you are using"

    .line 251
    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    throw v1

    .line 266
    :cond_109
    const/4 v0, 0x0

    .line 267
    invoke-static {v0}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    sput v0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 272
    .line 273
    const/4 v0, 0x1

    .line 274
    invoke-static {v0}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    sput v1, Lcom/sun/jna/Native;->LONG_SIZE:I

    .line 279
    .line 280
    const/4 v2, 0x2

    .line 281
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 282
    .line 283
    .line 284
    move-result v2

    .line 285
    sput v2, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 286
    .line 287
    const/4 v2, 0x3

    .line 288
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    sput v2, Lcom/sun/jna/Native;->SIZE_T_SIZE:I

    .line 293
    .line 294
    const/4 v2, 0x4

    .line 295
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 296
    .line 297
    .line 298
    move-result v2

    .line 299
    sput v2, Lcom/sun/jna/Native;->BOOL_SIZE:I

    .line 300
    .line 301
    const/4 v2, 0x5

    .line 302
    invoke-static {v2}, Lcom/sun/jna/Native;->sizeof(I)I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    sput v2, Lcom/sun/jna/Native;->LONG_DOUBLE_SIZE:I

    .line 307
    .line 308
    invoke-static {}, Lcom/sun/jna/Native;->initIDs()V

    .line 309
    .line 310
    .line 311
    const-string v2, "jna.protected"

    .line 312
    .line 313
    invoke-static {v2}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 314
    .line 315
    .line 316
    move-result v2

    .line 317
    if-eqz v2, :cond_141

    .line 318
    .line 319
    invoke-static {v0}, Lcom/sun/jna/Native;->setProtected(Z)V

    .line 320
    .line 321
    .line 322
    :cond_141
    invoke-static {}, Lcom/sun/jna/Platform;->isSPARC()Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    const/16 v2, 0x8

    .line 327
    .line 328
    if-nez v0, :cond_17f

    .line 329
    .line 330
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez v0, :cond_17f

    .line 335
    .line 336
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    .line 337
    .line 338
    .line 339
    move-result v0

    .line 340
    if-eqz v0, :cond_16d

    .line 341
    .line 342
    invoke-static {}, Lcom/sun/jna/Platform;->isARM()Z

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    if-nez v0, :cond_17f

    .line 347
    .line 348
    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    .line 349
    .line 350
    .line 351
    move-result v0

    .line 352
    if-nez v0, :cond_17f

    .line 353
    .line 354
    invoke-static {}, Lcom/sun/jna/Platform;->isMIPS()Z

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    if-nez v0, :cond_17f

    .line 359
    .line 360
    invoke-static {}, Lcom/sun/jna/Platform;->isLoongArch()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-nez v0, :cond_17f

    .line 365
    .line 366
    :cond_16d
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-nez v0, :cond_17f

    .line 371
    .line 372
    invoke-static {}, Lcom/sun/jna/Platform;->isAndroid()Z

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    if-eqz v0, :cond_180

    .line 377
    .line 378
    invoke-static {}, Lcom/sun/jna/Platform;->isIntel()Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_180

    .line 383
    .line 384
    :cond_17f
    move v1, v2

    .line 385
    :cond_180
    sput v1, Lcom/sun/jna/Native;->MAX_ALIGNMENT:I

    .line 386
    .line 387
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 388
    .line 389
    .line 390
    move-result v0

    .line 391
    if-eqz v0, :cond_18f

    .line 392
    .line 393
    invoke-static {}, Lcom/sun/jna/Platform;->isPPC()Z

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    if-eqz v0, :cond_18f

    .line 398
    .line 399
    goto :goto_190

    .line 400
    :cond_18f
    move v2, v1

    .line 401
    :goto_190
    sput v2, Lcom/sun/jna/Native;->MAX_PADDING:I

    .line 402
    .line 403
    const-string v0, "jna.loaded"

    .line 404
    .line 405
    const-string v1, "true"

    .line 406
    .line 407
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    new-instance v0, Lcom/sun/jna/Native$2;

    .line 411
    .line 412
    invoke-direct {v0}, Lcom/sun/jna/Native$2;-><init>()V

    .line 413
    .line 414
    .line 415
    sput-object v0, Lcom/sun/jna/Native;->finalizer:Ljava/lang/Object;

    .line 416
    .line 417
    new-instance v0, Ljava/util/WeakHashMap;

    .line 418
    .line 419
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 420
    .line 421
    .line 422
    sput-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 423
    .line 424
    new-instance v0, Ljava/util/WeakHashMap;

    .line 425
    .line 426
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 427
    .line 428
    .line 429
    sput-object v0, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    .line 430
    .line 431
    new-instance v0, Lcom/sun/jna/Native$7;

    .line 432
    .line 433
    invoke-direct {v0}, Lcom/sun/jna/Native$7;-><init>()V

    .line 434
    .line 435
    .line 436
    sput-object v0, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    .line 437
    .line 438
    new-instance v0, Ljava/util/WeakHashMap;

    .line 439
    .line 440
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 441
    .line 442
    .line 443
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    sput-object v0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    .line 448
    .line 449
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native _getDirectBufferPointer(Ljava/nio/Buffer;)J
.end method

.method private static native _getPointer(J)J
.end method

.method public static synthetic access$000()Ljava/util/logging/Logger;
    .registers 1

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic access$100()V
    .registers 0

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "enclosing-library"

    .line 7
    .line 8
    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    if-eqz p2, :cond_1b

    .line 17
    .line 18
    sget-object p1, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1b
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_40

    .line 33
    .line 34
    const-class p1, Lcom/sun/jna/Library;

    .line 35
    .line 36
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_40

    .line 41
    .line 42
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    array-length v1, p0

    .line 47
    const/4 v2, 0x0

    .line 48
    :goto_2f
    if-ge v2, v1, :cond_40

    .line 49
    .line 50
    aget-object v3, p0, v2

    .line 51
    .line 52
    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3d

    .line 57
    .line 58
    invoke-static {v3, v0, p2}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 59
    .line 60
    .line 61
    return-object v0

    .line 62
    :cond_3d
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_2f

    .line 65
    :cond_40
    return-object v0
.end method

.method public static native close(J)V
.end method

.method public static synchronized native createNativeCallback(Lcom/sun/jna/Callback;Ljava/lang/reflect/Method;[Ljava/lang/Class;Ljava/lang/Class;IILjava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/jna/Callback;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;II",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public static deleteLibrary(Ljava/io/File;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_8
    invoke-static {p0}, Lcom/sun/jna/Native;->markTemporaryFile(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static detach(Z)V
    .registers 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz p0, :cond_1a

    .line 6
    .line 7
    sget-object p0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    sget-object p0, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/sun/jna/Pointer;

    .line 19
    .line 20
    const/4 p0, 0x1

    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Lcom/sun/jna/Native;->setDetachState(ZJ)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_1a
    sget-object p0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_33

    .line 34
    .line 35
    sget-object v1, Lcom/sun/jna/Native;->nativeThreadTerminationFlag:Ljava/lang/ThreadLocal;

    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/sun/jna/Pointer;

    .line 42
    .line 43
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    iget-wide v0, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 48
    .line 49
    invoke-static {p0, v0, v1}, Lcom/sun/jna/Native;->setDetachState(ZJ)V

    .line 50
    .line 51
    .line 52
    :cond_33
    return-void
.end method

.method private static dispose()V
    .registers 2

    .line 1
    invoke-static {}, Lcom/sun/jna/CallbackReference;->disposeAll()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/sun/jna/Memory;->disposeAll()V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/sun/jna/NativeLibrary;->disposeAll()V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/sun/jna/Native;->unregisterAll()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    sput-object v0, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "jna.loaded"

    .line 17
    .line 18
    const-string v1, "false"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static extractFromResourcePath(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    const/4 v0, 0x0

    .line 478
    invoke-static {p0, v0}, Lcom/sun/jna/Native;->extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;
    .registers 12

    .line 1
    sget-boolean v0, Lcom/sun/jna/Native;->DEBUG_LOAD:Z

    .line 2
    .line 3
    if-nez v0, :cond_14

    .line 4
    .line 5
    sget-boolean v0, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD:Z

    .line 6
    .line 7
    if-eqz v0, :cond_11

    .line 8
    .line 9
    const-string v0, "jnidispatch"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_11

    .line 16
    .line 17
    goto :goto_14

    .line 18
    :cond_11
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 19
    .line 20
    goto :goto_16

    .line 21
    :cond_14
    :goto_14
    sget-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    .line 22
    .line 23
    :goto_16
    if-nez p1, :cond_28

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_28

    .line 34
    .line 35
    const-class p1, Lcom/sun/jna/Native;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_28
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 42
    .line 43
    const-string v2, "Looking in classpath from {0} for {1}"

    .line 44
    .line 45
    filled-new-array {p1, p0}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "/"

    .line 53
    .line 54
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_3d

    .line 59
    .line 60
    move-object v3, p0

    .line 61
    goto :goto_41

    .line 62
    :cond_3d
    invoke-static {p0}, Lcom/sun/jna/NativeLibrary;->mapSharedLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :goto_41
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_49

    .line 71
    .line 72
    move-object v4, p0

    .line 73
    goto :goto_5d

    .line 74
    :cond_49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    sget-object v5, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 80
    .line 81
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    :goto_5d
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    const/4 v6, 0x1

    .line 99
    if-eqz v5, :cond_68

    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    :cond_68
    invoke-virtual {p1, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    if-nez v5, :cond_da

    .line 110
    .line 111
    sget-object v7, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    if-eqz v8, :cond_98

    .line 118
    .line 119
    const-string v2, "darwin"

    .line 120
    .line 121
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_91

    .line 126
    .line 127
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    add-int/2addr v2, v6

    .line 132
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    const-string v5, "darwin/"

    .line 137
    .line 138
    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    :cond_91
    if-nez v5, :cond_da

    .line 147
    .line 148
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    goto :goto_da

    .line 153
    :cond_98
    new-instance v8, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v9, "com/sun/jna/"

    .line 156
    .line 157
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_da

    .line 175
    .line 176
    const-string v2, "com/sun/jna/darwin"

    .line 177
    .line 178
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-eqz v8, :cond_d4

    .line 183
    .line 184
    new-instance v5, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v5

    .line 196
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v5

    .line 200
    add-int/2addr v5, v6

    .line 201
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v2, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    :cond_d4
    if-nez v5, :cond_da

    .line 214
    .line 215
    invoke-virtual {p1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    :cond_da
    :goto_da
    if-nez v5, :cond_ff

    .line 220
    .line 221
    const-string p0, "java.class.path"

    .line 222
    .line 223
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    instance-of v0, p1, Ljava/net/URLClassLoader;

    .line 228
    .line 229
    if-eqz v0, :cond_f4

    .line 230
    .line 231
    check-cast p1, Ljava/net/URLClassLoader;

    .line 232
    .line 233
    invoke-virtual {p1}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    .line 234
    .line 235
    .line 236
    move-result-object p0

    .line 237
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object p0

    .line 241
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p0

    .line 245
    :cond_f4
    const-string p1, ") not found in resource path ("

    .line 246
    .line 247
    const-string v0, ")"

    .line 248
    .line 249
    const-string v1, "Native library ("

    .line 250
    .line 251
    invoke-static {v1, v4, p1, p0, v0}, Landroidx/navigation/b;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    :goto_fd
    const/4 p0, 0x0

    .line 255
    return-object p0

    .line 256
    :cond_ff
    const-string p1, "Found library resource at {0}"

    .line 257
    .line 258
    invoke-virtual {v1, v0, p1, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    const-string v2, "file"

    .line 270
    .line 271
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_147

    .line 276
    .line 277
    :try_start_114
    new-instance p0, Ljava/io/File;

    .line 278
    .line 279
    new-instance p1, Ljava/net/URI;

    .line 280
    .line 281
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-direct {p1, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_122
    .catch Ljava/net/URISyntaxException; {:try_start_114 .. :try_end_122} :catch_123

    .line 289
    .line 290
    .line 291
    goto :goto_12c

    .line 292
    :catch_123
    new-instance p0, Ljava/io/File;

    .line 293
    .line 294
    invoke-virtual {v5}, Ljava/net/URL;->getPath()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object p1

    .line 298
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    :goto_12c
    sget-object p1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 302
    .line 303
    const-string v1, "Looking in {0}"

    .line 304
    .line 305
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v2

    .line 309
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 313
    .line 314
    .line 315
    move-result p1

    .line 316
    if-eqz p1, :cond_13f

    .line 317
    .line 318
    goto/16 :goto_1a4

    .line 319
    .line 320
    :cond_13f
    const-string p0, "File URL "

    .line 321
    .line 322
    const-string p1, " could not be properly decoded"

    .line 323
    .line 324
    invoke-static {v5, p0, p1}, Landroidx/navigation/b;->u(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto :goto_fd

    .line 328
    :cond_147
    const-string p1, "jna.nounpack"

    .line 329
    .line 330
    invoke-static {p1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    const/4 v2, 0x0

    .line 335
    if-nez p1, :cond_1dc

    .line 336
    .line 337
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    if-eqz p1, :cond_1d1

    .line 342
    .line 343
    :try_start_156
    invoke-static {}, Lcom/sun/jna/Native;->getTempDir()Ljava/io/File;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    const-string v4, "jna"

    .line 348
    .line 349
    invoke-static {}, Lcom/sun/jna/Platform;->isWindows()Z

    .line 350
    .line 351
    .line 352
    move-result v5

    .line 353
    if-eqz v5, :cond_169

    .line 354
    .line 355
    const-string v5, ".dll"

    .line 356
    .line 357
    goto :goto_16a

    .line 358
    :catchall_165
    move-exception p0

    .line 359
    goto :goto_1c8

    .line 360
    :catch_167
    move-exception v0

    .line 361
    goto :goto_1a5

    .line 362
    :cond_169
    move-object v5, v2

    .line 363
    :goto_16a
    invoke-static {v4, v5, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    const-string v4, "jnidispatch.preserve"

    .line 368
    .line 369
    invoke-static {v4}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 370
    .line 371
    .line 372
    move-result v4

    .line 373
    if-nez v4, :cond_179

    .line 374
    .line 375
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 376
    .line 377
    .line 378
    :cond_179
    const-string v4, "Extracting library to {0}"

    .line 379
    .line 380
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v5

    .line 384
    invoke-virtual {v1, v0, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 385
    .line 386
    .line 387
    new-instance v0, Ljava/io/FileOutputStream;

    .line 388
    .line 389
    invoke-direct {v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_156 .. :try_end_187} :catch_167
    .catchall {:try_start_156 .. :try_end_187} :catchall_165

    .line 390
    .line 391
    .line 392
    const/16 v1, 0x400

    .line 393
    .line 394
    :try_start_189
    new-array v2, v1, [B

    .line 395
    .line 396
    :goto_18b
    const/4 v4, 0x0

    .line 397
    invoke-virtual {p1, v2, v4, v1}, Ljava/io/InputStream;->read([BII)I

    .line 398
    .line 399
    .line 400
    move-result v5

    .line 401
    if-lez v5, :cond_19d

    .line 402
    .line 403
    invoke-virtual {v0, v2, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_189 .. :try_end_195} :catch_199
    .catchall {:try_start_189 .. :try_end_195} :catchall_196

    .line 404
    .line 405
    .line 406
    goto :goto_18b

    .line 407
    :catchall_196
    move-exception p0

    .line 408
    move-object v2, v0

    .line 409
    goto :goto_1c8

    .line 410
    :catch_199
    move-exception v1

    .line 411
    move-object v2, v0

    .line 412
    move-object v0, v1

    .line 413
    goto :goto_1a5

    .line 414
    :cond_19d
    :try_start_19d
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19d .. :try_end_1a0} :catch_1a0

    .line 415
    .line 416
    .line 417
    :catch_1a0
    :try_start_1a0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a3
    .catch Ljava/io/IOException; {:try_start_1a0 .. :try_end_1a3} :catch_1a3

    .line 418
    .line 419
    .line 420
    :catch_1a3
    move-object p0, v3

    .line 421
    :goto_1a4
    return-object p0

    .line 422
    :goto_1a5
    :try_start_1a5
    new-instance v1, Ljava/io/IOException;

    .line 423
    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    .line 425
    .line 426
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .line 428
    .line 429
    const-string v4, "Failed to create temporary file for "

    .line 430
    .line 431
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string p0, " library: "

    .line 438
    .line 439
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object p0

    .line 453
    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw v1
    :try_end_1c8
    .catchall {:try_start_1a5 .. :try_end_1c8} :catchall_165

    .line 457
    :goto_1c8
    :try_start_1c8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1cb
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1cb} :catch_1cb

    .line 458
    .line 459
    .line 460
    :catch_1cb
    if-eqz v2, :cond_1d0

    .line 461
    .line 462
    :try_start_1cd
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d0
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1d0} :catch_1d0

    .line 463
    .line 464
    .line 465
    :catch_1d0
    :cond_1d0
    throw p0

    .line 466
    :cond_1d1
    const-string p0, "Can\'t obtain InputStream for "

    .line 467
    .line 468
    invoke-virtual {p0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p0

    .line 472
    invoke-static {p0}, Ln0/b;->A(Ljava/lang/String;)V

    .line 473
    .line 474
    .line 475
    goto/16 :goto_fd

    .line 476
    .line 477
    :cond_1dc
    return-object v2
.end method

.method public static native ffi_call(JJJJ)V
.end method

.method public static native ffi_free_closure(J)V
.end method

.method public static native ffi_prep_cif(IIJJ)J
.end method

.method public static native ffi_prep_closure(JLcom/sun/jna/Native$ffi_callback;)J
.end method

.method public static findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_7
    if-ge v3, v1, :cond_17

    .line 9
    .line 10
    aget-object v4, v0, v3

    .line 11
    .line 12
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    and-int/lit16 v4, v4, 0x100

    .line 17
    .line 18
    if-eqz v4, :cond_14

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_14
    add-int/lit8 v3, v3, 0x1

    .line 22
    .line 23
    goto :goto_7

    .line 24
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "$"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, -0x1

    .line 35
    if-eq v0, v1, :cond_3a

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :try_start_2c
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x1

    .line 50
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object p0
    :try_end_39
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_39} :catch_3a

    .line 58
    return-object p0

    .line 59
    :catch_3a
    :cond_3a
    const-string v0, "Can\'t determine class with native methods from the current context ("

    .line 60
    .line 61
    const-string v1, ")"

    .line 62
    .line 63
    invoke-static {p0, v0, v1}, Landroidx/navigation/b;->p(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const/4 p0, 0x0

    .line 67
    return-object p0
.end method

.method public static findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_4
    sget-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Map;

    .line 12
    .line 13
    if-eqz v0, :cond_19

    .line 14
    .line 15
    const-string v1, "enclosing-library"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v0, :cond_21

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_19
    const-class v0, Lcom/sun/jna/Library;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_22

    .line 33
    .line 34
    :cond_21
    return-object p0

    .line 35
    :cond_22
    const-class v0, Lcom/sun/jna/Callback;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2e

    .line 42
    .line 43
    invoke-static {p0}, Lcom/sun/jna/CallbackReference;->findCallbackClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :cond_2e
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_39

    .line 56
    .line 57
    return-object v0

    .line 58
    :cond_39
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-static {p0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static native findSymbol(JLjava/lang/String;)J
.end method

.method public static native free(J)V
.end method

.method public static synchronized native freeNativeCallback(J)V
.end method

.method private static fromNative(Ljava/lang/Class;Ljava/lang/Object;)Lcom/sun/jna/NativeMapped;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/sun/jna/NativeMapped;"
        }
    .end annotation

    .line 22
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    move-result-object v0

    new-instance v1, Lcom/sun/jna/FromNativeContext;

    invoke-direct {v1, p0}, Lcom/sun/jna/FromNativeContext;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/NativeMapped;

    return-object p0
.end method

.method private static fromNative(Ljava/lang/reflect/Method;Ljava/lang/Object;)Lcom/sun/jna/NativeMapped;
    .registers 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/sun/jna/MethodResultContext;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-direct {v2, v0, v3, v3, p0}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1, v2}, Lcom/sun/jna/NativeMappedConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    check-cast p0, Lcom/sun/jna/NativeMapped;

    .line 20
    .line 21
    return-object p0
.end method

.method private static fromNative(Lcom/sun/jna/FromNativeConverter;Ljava/lang/Object;Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .registers 6

    .line 23
    new-instance v0, Lcom/sun/jna/MethodResultContext;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, p2}, Lcom/sun/jna/MethodResultContext;-><init>(Ljava/lang/Class;Lcom/sun/jna/Function;[Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {p0, p1, v0}, Lcom/sun/jna/FromNativeConverter;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static native getAPIChecksum()Ljava/lang/String;
.end method

.method public static native getByte(Lcom/sun/jna/Pointer;JJ)B
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .registers 2

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2

    .line 10
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static getCallbackExceptionHandler()Lcom/sun/jna/Callback$UncaughtExceptionHandler;
    .registers 1

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getCallingClass()Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/jna/Native$6;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sun/jna/Native$6;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/sun/jna/Native$6;->getClassContext()[Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1a

    .line 11
    .line 12
    array-length v1, v0

    .line 13
    const/4 v2, 0x4

    .line 14
    if-lt v1, v2, :cond_13

    .line 15
    .line 16
    const/4 v1, 0x3

    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_13
    const-string v0, "This method must be called from the static initializer of a class"

    .line 21
    .line 22
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    const-string v0, "The SecurityManager implementation on this platform is broken; you must explicitly provide the class to register"

    .line 28
    .line 29
    invoke-static {v0}, Lj1/i;->l(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0
.end method

.method public static native getChar(Lcom/sun/jna/Pointer;JJ)C
.end method

.method private static getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 5

    .line 1
    const-string v0, "JNA Warning: Encoding \'\'{0}\'\' is unsupported ({1})"

    .line 2
    .line 3
    if-eqz p0, :cond_2a

    .line 4
    .line 5
    :try_start_4
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_8
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_4 .. :try_end_8} :catch_1a
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_4 .. :try_end_8} :catch_9

    .line 9
    goto :goto_2b

    .line 10
    :catch_9
    move-exception v1

    .line 11
    sget-object v2, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v2, v3, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2a

    .line 27
    :catch_1a
    move-exception v1

    .line 28
    sget-object v2, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 29
    .line 30
    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v2, v3, v0, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_2a
    :goto_2a
    const/4 p0, 0x0

    .line 44
    :goto_2b
    if-nez p0, :cond_39

    .line 45
    .line 46
    sget-object p0, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 47
    .line 48
    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 49
    .line 50
    sget-object v1, Lcom/sun/jna/Native;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 51
    .line 52
    const-string v2, "JNA Warning: Using fallback encoding {0}"

    .line 53
    .line 54
    invoke-virtual {p0, v0, v2, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object p0, v1

    .line 58
    :cond_39
    return-object p0
.end method

.method public static getComponentID(Ljava/awt/Component;)J
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getComponentID(Ljava/lang/Object;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getComponentPointer(Ljava/awt/Component;)Lcom/sun/jna/Pointer;
    .registers 4

    .line 1
    new-instance v0, Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getComponentID(Ljava/lang/Object;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private static getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/TypeMapper;",
            "Z)I"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Void;

    .line 2
    .line 3
    if-ne p0, v0, :cond_6

    .line 4
    .line 5
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 6
    .line 7
    :cond_6
    const-class v0, Lcom/sun/jna/WString;

    .line 8
    .line 9
    const-class v1, Ljava/lang/String;

    .line 10
    .line 11
    if-eqz p1, :cond_34

    .line 12
    .line 13
    invoke-interface {p1, p0}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-interface {p1, p0}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/16 v3, 0x17

    .line 22
    .line 23
    const/16 v4, 0x19

    .line 24
    .line 25
    const/16 v5, 0x18

    .line 26
    .line 27
    if-eqz v2, :cond_27

    .line 28
    .line 29
    invoke-interface {v2}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-ne p0, v1, :cond_23

    .line 34
    .line 35
    return v5

    .line 36
    :cond_23
    if-ne p0, v0, :cond_26

    .line 37
    .line 38
    return v4

    .line 39
    :cond_26
    return v3

    .line 40
    :cond_27
    if-eqz p1, :cond_34

    .line 41
    .line 42
    invoke-interface {p1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    if-ne p0, v1, :cond_30

    .line 47
    .line 48
    return v5

    .line 49
    :cond_30
    if-ne p0, v0, :cond_33

    .line 50
    .line 51
    return v4

    .line 52
    :cond_33
    return v3

    .line 53
    :cond_34
    const-class p1, Lcom/sun/jna/Pointer;

    .line 54
    .line 55
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    const/4 v2, 0x1

    .line 60
    if-eqz p1, :cond_3e

    .line 61
    .line 62
    return v2

    .line 63
    :cond_3e
    if-ne v1, p0, :cond_42

    .line 64
    .line 65
    const/4 p0, 0x2

    .line 66
    return p0

    .line 67
    :cond_42
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eqz p1, :cond_4b

    .line 72
    .line 73
    const/16 p0, 0x14

    .line 74
    .line 75
    return p0

    .line 76
    :cond_4b
    sget-boolean p1, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 77
    .line 78
    if-eqz p1, :cond_57

    .line 79
    .line 80
    invoke-static {p0}, Lcom/sun/jna/Native$Buffers;->isBuffer(Ljava/lang/Class;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_57

    .line 85
    .line 86
    const/4 p0, 0x5

    .line 87
    return p0

    .line 88
    :cond_57
    const-class p1, Lcom/sun/jna/Structure;

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_6b

    .line 95
    .line 96
    const-class p1, Lcom/sun/jna/Structure$ByValue;

    .line 97
    .line 98
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-eqz p0, :cond_69

    .line 103
    .line 104
    const/4 p0, 0x4

    .line 105
    return p0

    .line 106
    :cond_69
    const/4 p0, 0x3

    .line 107
    return p0

    .line 108
    :cond_6b
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_a7

    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    const/16 v2, 0x46

    .line 123
    .line 124
    if-eq p1, v2, :cond_a4

    .line 125
    .line 126
    const/16 v2, 0x53

    .line 127
    .line 128
    if-eq p1, v2, :cond_a2

    .line 129
    .line 130
    const/16 v2, 0x5a

    .line 131
    .line 132
    if-eq p1, v2, :cond_9f

    .line 133
    .line 134
    const/16 v2, 0x49

    .line 135
    .line 136
    if-eq p1, v2, :cond_9c

    .line 137
    .line 138
    const/16 v2, 0x4a

    .line 139
    .line 140
    if-eq p1, v2, :cond_99

    .line 141
    .line 142
    packed-switch p1, :pswitch_data_102

    .line 143
    .line 144
    .line 145
    goto :goto_a7

    .line 146
    :pswitch_91
    const/16 p0, 0xc

    .line 147
    .line 148
    return p0

    .line 149
    :pswitch_94
    const/16 p0, 0x8

    .line 150
    .line 151
    return p0

    .line 152
    :pswitch_97
    const/4 p0, 0x6

    .line 153
    return p0

    .line 154
    :cond_99
    const/16 p0, 0xa

    .line 155
    .line 156
    return p0

    .line 157
    :cond_9c
    const/16 p0, 0x9

    .line 158
    .line 159
    return p0

    .line 160
    :cond_9f
    const/16 p0, 0xd

    .line 161
    .line 162
    return p0

    .line 163
    :cond_a2
    const/4 p0, 0x7

    .line 164
    return p0

    .line 165
    :cond_a4
    const/16 p0, 0xb

    .line 166
    .line 167
    return p0

    .line 168
    :cond_a7
    :goto_a7
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_b6

    .line 173
    .line 174
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 175
    .line 176
    if-ne p0, p1, :cond_b4

    .line 177
    .line 178
    const/16 p0, 0xe

    .line 179
    .line 180
    return p0

    .line 181
    :cond_b4
    const/4 p0, 0x0

    .line 182
    return p0

    .line 183
    :cond_b6
    const-class p1, Lcom/sun/jna/Callback;

    .line 184
    .line 185
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_c1

    .line 190
    .line 191
    const/16 p0, 0xf

    .line 192
    .line 193
    return p0

    .line 194
    :cond_c1
    const-class p1, Lcom/sun/jna/IntegerType;

    .line 195
    .line 196
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_cc

    .line 201
    .line 202
    const/16 p0, 0x15

    .line 203
    .line 204
    return p0

    .line 205
    :cond_cc
    const-class p1, Lcom/sun/jna/PointerType;

    .line 206
    .line 207
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_d7

    .line 212
    .line 213
    const/16 p0, 0x16

    .line 214
    .line 215
    return p0

    .line 216
    :cond_d7
    const-class p1, Lcom/sun/jna/NativeMapped;

    .line 217
    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_f4

    .line 223
    .line 224
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    move-result-object p0

    .line 232
    if-ne p0, v1, :cond_ec

    .line 233
    .line 234
    const/16 p0, 0x12

    .line 235
    .line 236
    return p0

    .line 237
    :cond_ec
    if-ne p0, v0, :cond_f1

    .line 238
    .line 239
    const/16 p0, 0x13

    .line 240
    .line 241
    return p0

    .line 242
    :cond_f1
    const/16 p0, 0x11

    .line 243
    .line 244
    return p0

    .line 245
    :cond_f4
    const-class p1, Lcom/sun/jna/JNIEnv;

    .line 246
    .line 247
    if-ne p1, p0, :cond_fb

    .line 248
    .line 249
    const/16 p0, 0x1b

    .line 250
    .line 251
    return p0

    .line 252
    :cond_fb
    if-eqz p2, :cond_100

    .line 253
    .line 254
    const/16 p0, 0x1a

    .line 255
    .line 256
    return p0

    .line 257
    :cond_100
    const/4 p0, -0x1

    .line 258
    return p0

    .line 259
    :pswitch_data_102
    .packed-switch 0x42
        :pswitch_97
        :pswitch_94
        :pswitch_91
    .end packed-switch
.end method

.method public static getDefaultStringEncoding()Ljava/lang/String;
    .registers 2

    .line 1
    const-string v0, "jna.encoding"

    .line 2
    .line 3
    sget-object v1, Lcom/sun/jna/Native;->DEFAULT_ENCODING:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getDirectBufferPointer(Ljava/nio/Buffer;)Lcom/sun/jna/Pointer;
    .registers 5

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Native;->_getDirectBufferPointer(Ljava/nio/Buffer;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-nez p0, :cond_c

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_c
    new-instance p0, Lcom/sun/jna/Pointer;

    .line 14
    .line 15
    invoke-direct {p0, v0, v1}, Lcom/sun/jna/Pointer;-><init>(J)V

    .line 16
    .line 17
    .line 18
    return-object p0
.end method

.method public static native getDirectByteBuffer(Lcom/sun/jna/Pointer;JJJ)Ljava/nio/ByteBuffer;
.end method

.method public static native getDouble(Lcom/sun/jna/Pointer;JJ)D
.end method

.method public static native getFloat(Lcom/sun/jna/Pointer;JJ)F
.end method

.method public static native getInt(Lcom/sun/jna/Pointer;JJ)I
.end method

.method public static native getLastError()I
.end method

.method public static getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    if-eqz v1, :cond_b

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_b
    invoke-static {p0}, Lcom/sun/jna/Native;->findEnclosingLibraryClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_15

    .line 17
    .line 18
    invoke-static {v1}, Lcom/sun/jna/Native;->loadLibraryInstance(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    goto :goto_16

    .line 22
    :cond_15
    move-object v1, p0

    .line 23
    :goto_16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/util/Map;

    .line 28
    .line 29
    if-eqz v2, :cond_22

    .line 30
    .line 31
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    return-object v2

    .line 35
    :cond_22
    const/4 v0, 0x0

    .line 36
    :try_start_23
    const-string v2, "OPTIONS"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Map;

    .line 51
    .line 52
    if-eqz v2, :cond_36

    .line 53
    .line 54
    goto :goto_4a

    .line 55
    :cond_36
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v3, "Null options field"

    .line 58
    .line 59
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw v2
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_23 .. :try_end_3e} :catch_48
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_3e} :catch_3e

    .line 63
    :catch_3e
    move-exception p0

    .line 64
    const-string v0, "OPTIONS must be a public field of type java.util.Map ("

    .line 65
    .line 66
    const-string v2, "): "

    .line 67
    .line 68
    invoke-static {v0, p0, v2, v1}, Landroidx/navigation/b;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const/4 p0, 0x0

    .line 72
    return-object p0

    .line 73
    :catch_48
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    .line 74
    .line 75
    :goto_4a
    new-instance v3, Ljava/util/HashMap;

    .line 76
    .line 77
    invoke-direct {v3, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "type-mapper"

    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_62

    .line 87
    .line 88
    const-string v4, "TYPE_MAPPER"

    .line 89
    .line 90
    const-class v5, Lcom/sun/jna/TypeMapper;

    .line 91
    .line 92
    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_62
    const-string v2, "structure-alignment"

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    if-nez v4, :cond_75

    .line 106
    .line 107
    const-string v4, "STRUCTURE_ALIGNMENT"

    .line 108
    .line 109
    const-class v5, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    :cond_75
    const-string v2, "string-encoding"

    .line 119
    .line 120
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-nez v4, :cond_88

    .line 125
    .line 126
    const-string v4, "STRING_ENCODING"

    .line 127
    .line 128
    const-class v5, Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v4, v5}, Lcom/sun/jna/Native;->lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    :cond_88
    invoke-static {v1, v3, v0}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eq p0, v1, :cond_93

    .line 142
    .line 143
    sget-object v1, Lcom/sun/jna/Native;->typeOptions:Ljava/util/Map;

    .line 144
    .line 145
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_93
    return-object v0
.end method

.method public static native getLong(Lcom/sun/jna/Pointer;JJ)J
.end method

.method public static getNativeSize(Ljava/lang/Class;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    const/4 v1, 0x4

    .line 20
    if-eq p0, v0, :cond_b6

    .line 21
    .line 22
    const-class v0, Ljava/lang/Boolean;

    .line 23
    .line 24
    if-ne p0, v0, :cond_1b

    .line 25
    .line 26
    goto/16 :goto_b6

    .line 27
    .line 28
    :cond_1b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    if-eq p0, v0, :cond_b4

    .line 31
    .line 32
    const-class v0, Ljava/lang/Byte;

    .line 33
    .line 34
    if-ne p0, v0, :cond_25

    .line 35
    .line 36
    goto/16 :goto_b4

    .line 37
    .line 38
    :cond_25
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    if-eq p0, v0, :cond_b2

    .line 41
    .line 42
    const-class v0, Ljava/lang/Short;

    .line 43
    .line 44
    if-ne p0, v0, :cond_2f

    .line 45
    .line 46
    goto/16 :goto_b2

    .line 47
    .line 48
    :cond_2f
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 49
    .line 50
    if-eq p0, v0, :cond_af

    .line 51
    .line 52
    const-class v0, Ljava/lang/Character;

    .line 53
    .line 54
    if-ne p0, v0, :cond_39

    .line 55
    .line 56
    goto/16 :goto_af

    .line 57
    .line 58
    :cond_39
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    if-eq p0, v0, :cond_ae

    .line 61
    .line 62
    const-class v0, Ljava/lang/Integer;

    .line 63
    .line 64
    if-ne p0, v0, :cond_43

    .line 65
    .line 66
    goto/16 :goto_ae

    .line 67
    .line 68
    :cond_43
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    const/16 v2, 0x8

    .line 71
    .line 72
    if-eq p0, v0, :cond_ad

    .line 73
    .line 74
    const-class v0, Ljava/lang/Long;

    .line 75
    .line 76
    if-ne p0, v0, :cond_4e

    .line 77
    .line 78
    goto :goto_ad

    .line 79
    :cond_4e
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    if-eq p0, v0, :cond_ac

    .line 82
    .line 83
    const-class v0, Ljava/lang/Float;

    .line 84
    .line 85
    if-ne p0, v0, :cond_57

    .line 86
    .line 87
    goto :goto_ac

    .line 88
    :cond_57
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 89
    .line 90
    if-eq p0, v0, :cond_ab

    .line 91
    .line 92
    const-class v0, Ljava/lang/Double;

    .line 93
    .line 94
    if-ne p0, v0, :cond_60

    .line 95
    .line 96
    goto :goto_ab

    .line 97
    :cond_60
    const-class v0, Lcom/sun/jna/Structure;

    .line 98
    .line 99
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_78

    .line 104
    .line 105
    const-class v0, Lcom/sun/jna/Structure$ByValue;

    .line 106
    .line 107
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_75

    .line 112
    .line 113
    invoke-static {p0}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0

    .line 118
    :cond_75
    sget p0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 119
    .line 120
    return p0

    .line 121
    :cond_78
    const-class v0, Lcom/sun/jna/Pointer;

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-nez v0, :cond_a8

    .line 128
    .line 129
    sget-boolean v0, Lcom/sun/jna/Platform;->HAS_BUFFERS:Z

    .line 130
    .line 131
    if-eqz v0, :cond_8a

    .line 132
    .line 133
    invoke-static {p0}, Lcom/sun/jna/Native$Buffers;->isBuffer(Ljava/lang/Class;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_a8

    .line 138
    .line 139
    :cond_8a
    const-class v0, Lcom/sun/jna/Callback;

    .line 140
    .line 141
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_a8

    .line 146
    .line 147
    const-class v0, Ljava/lang/String;

    .line 148
    .line 149
    if-eq v0, p0, :cond_a8

    .line 150
    .line 151
    const-class v0, Lcom/sun/jna/WString;

    .line 152
    .line 153
    if-ne v0, p0, :cond_9b

    .line 154
    .line 155
    goto :goto_a8

    .line 156
    :cond_9b
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    const-string v0, "\" is unknown"

    .line 161
    .line 162
    const-string v1, "Native size for type \""

    .line 163
    .line 164
    invoke-static {p0, v1, v0}, Landroidx/navigation/b;->x(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    const/4 p0, 0x0

    .line 168
    return p0

    .line 169
    :cond_a8
    :goto_a8
    sget p0, Lcom/sun/jna/Native;->POINTER_SIZE:I

    .line 170
    .line 171
    return p0

    .line 172
    :cond_ab
    :goto_ab
    return v2

    .line 173
    :cond_ac
    :goto_ac
    return v1

    .line 174
    :cond_ad
    :goto_ad
    return v2

    .line 175
    :cond_ae
    :goto_ae
    return v1

    .line 176
    :cond_af
    :goto_af
    sget p0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    .line 177
    .line 178
    return p0

    .line 179
    :cond_b2
    :goto_b2
    const/4 p0, 0x2

    .line 180
    return p0

    .line 181
    :cond_b4
    :goto_b4
    const/4 p0, 0x1

    .line 182
    return p0

    .line 183
    :cond_b6
    :goto_b6
    return v1
.end method

.method public static getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 185
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_1b

    const/4 v1, 0x0

    .line 186
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;Ljava/lang/Object;)I

    move-result p0

    mul-int/2addr p0, v0

    return p0

    .line 188
    :cond_1b
    const-string p1, "Arrays of length zero not allowed: "

    .line 189
    invoke-static {p0, p1}, Lai/onnxruntime/a;->j(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 190
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 191
    :cond_26
    const-class v0, Lcom/sun/jna/Structure;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-class v0, Lcom/sun/jna/Structure$ByReference;

    .line 192
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 193
    check-cast p1, Lcom/sun/jna/Structure;

    invoke-static {p0, p1}, Lcom/sun/jna/Structure;->size(Ljava/lang/Class;Lcom/sun/jna/Structure;)I

    move-result p0

    return p0

    .line 194
    :cond_3d
    :try_start_3d
    invoke-static {p0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    move-result p0
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_41} :catch_42

    return p0

    :catch_42
    move-exception p1

    .line 195
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\" is not supported: "

    .line 196
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "The type \""

    invoke-static {v1, p0, v0, p1}, Landroidx/navigation/b;->y(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static native getNativeVersion()Ljava/lang/String;
.end method

.method public static getPointer(J)Lcom/sun/jna/Pointer;
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/sun/jna/Native;->_getPointer(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    cmp-long v0, p0, v0

    .line 8
    .line 9
    if-nez v0, :cond_c

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_c
    new-instance v0, Lcom/sun/jna/Pointer;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/sun/jna/Pointer;-><init>(J)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public static native getShort(Lcom/sun/jna/Pointer;JJ)S
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1d

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "["

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_62

    .line 35
    .line 36
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    if-ne p0, v0, :cond_2a

    .line 39
    .line 40
    const-string p0, "V"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_2a
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    if-ne p0, v0, :cond_31

    .line 46
    .line 47
    const-string p0, "Z"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_31
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 51
    .line 52
    if-ne p0, v0, :cond_38

    .line 53
    .line 54
    const-string p0, "B"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_38
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    if-ne p0, v0, :cond_3f

    .line 60
    .line 61
    const-string p0, "S"

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_3f
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    if-ne p0, v0, :cond_46

    .line 67
    .line 68
    const-string p0, "C"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_46
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    if-ne p0, v0, :cond_4d

    .line 74
    .line 75
    const-string p0, "I"

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_4d
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 79
    .line 80
    if-ne p0, v0, :cond_54

    .line 81
    .line 82
    const-string p0, "J"

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_54
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 86
    .line 87
    if-ne p0, v0, :cond_5b

    .line 88
    .line 89
    const-string p0, "F"

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_5b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 93
    .line 94
    if-ne p0, v0, :cond_62

    .line 95
    .line 96
    const-string p0, "D"

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "L"

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v1, "/"

    .line 107
    .line 108
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    const-string v2, "."

    .line 113
    .line 114
    invoke-static {v2, v1, p0}, Lcom/sun/jna/Native;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p0, ";"

    .line 122
    .line 123
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p0

    .line 130
    return-object p0
.end method

.method public static getString(Lcom/sun/jna/Pointer;J)Ljava/lang/String;
    .registers 4

    .line 21
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/sun/jna/Native;->getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Lcom/sun/jna/Pointer;JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    iget-wide v0, p0, Lcom/sun/jna/Pointer;->peer:J

    .line 2
    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Lcom/sun/jna/Native;->getStringBytes(Lcom/sun/jna/Pointer;JJ)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p3, :cond_e

    .line 8
    .line 9
    :try_start_8
    new-instance p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p1, p0, p3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_d} :catch_e

    .line 12
    .line 13
    .line 14
    return-object p1

    .line 15
    :catch_e
    :cond_e
    new-instance p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public static native getStringBytes(Lcom/sun/jna/Pointer;JJ)[B
.end method

.method public static getStringEncoding(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "string-encoding"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p0, :cond_f

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_f
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static getStructureAlignment(Ljava/lang/Class;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "structure-alignment"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez p0, :cond_10

    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_10
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public static getTempDir()Ljava/io/File;
    .registers 4

    .line 1
    const-string v0, "jna.tmpdir"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_12

    .line 8
    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 15
    .line 16
    .line 17
    goto/16 :goto_b8

    .line 18
    .line 19
    :cond_12
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    const-string v0, "java.io.tmpdir"

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const-string v2, "user.home"

    .line 35
    .line 36
    if-eqz v0, :cond_32

    .line 37
    .line 38
    new-instance v0, Ljava/io/File;

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "Library/Caches/JNA/temp"

    .line 45
    .line 46
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_a7

    .line 50
    .line 51
    :cond_32
    invoke-static {}, Lcom/sun/jna/Platform;->isLinux()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_7b

    .line 56
    .line 57
    invoke-static {}, Lcom/sun/jna/Platform;->isSolaris()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_7b

    .line 62
    .line 63
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_7b

    .line 68
    .line 69
    invoke-static {}, Lcom/sun/jna/Platform;->isFreeBSD()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-nez v0, :cond_7b

    .line 74
    .line 75
    invoke-static {}, Lcom/sun/jna/Platform;->isNetBSD()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_7b

    .line 80
    .line 81
    invoke-static {}, Lcom/sun/jna/Platform;->isOpenBSD()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_7b

    .line 86
    .line 87
    invoke-static {}, Lcom/sun/jna/Platform;->iskFreeBSD()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_5d

    .line 92
    .line 93
    goto :goto_7b

    .line 94
    :cond_5d
    new-instance v0, Ljava/io/File;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v3, "jna-"

    .line 99
    .line 100
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v3, "user.name"

    .line 104
    .line 105
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    goto :goto_a7

    .line 124
    :cond_7b
    :goto_7b
    const-string v0, "XDG_CACHE_HOME"

    .line 125
    .line 126
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_94

    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_8e

    .line 141
    .line 142
    goto :goto_94

    .line 143
    :cond_8e
    new-instance v2, Ljava/io/File;

    .line 144
    .line 145
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto :goto_a0

    .line 149
    :cond_94
    :goto_94
    new-instance v0, Ljava/io/File;

    .line 150
    .line 151
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    const-string v3, ".cache"

    .line 156
    .line 157
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    move-object v2, v0

    .line 161
    :goto_a0
    new-instance v0, Ljava/io/File;

    .line 162
    .line 163
    const-string v3, "JNA/temp"

    .line 164
    .line 165
    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_a7
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    if-eqz v2, :cond_b8

    .line 176
    .line 177
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-nez v2, :cond_b7

    .line 182
    .line 183
    goto :goto_b8

    .line 184
    :cond_b7
    move-object v1, v0

    .line 185
    :cond_b8
    :goto_b8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    const-string v2, "JNA temporary directory \'"

    .line 190
    .line 191
    if-eqz v0, :cond_ce

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_c7

    .line 198
    .line 199
    return-object v1

    .line 200
    :cond_c7
    const-string v0, "\' is not writable"

    .line 201
    .line 202
    invoke-static {v1, v2, v0}, Landroidx/navigation/b;->u(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :goto_cc
    const/4 v0, 0x0

    .line 206
    return-object v0

    .line 207
    :cond_ce
    const-string v0, "\' does not exist"

    .line 208
    .line 209
    invoke-static {v1, v2, v0}, Landroidx/navigation/b;->u(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    .line 211
    .line 212
    goto :goto_cc
.end method

.method public static getTerminationFlag(Ljava/lang/Thread;)Lcom/sun/jna/Pointer;
    .registers 2

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->nativeThreads:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/sun/jna/Pointer;

    .line 8
    .line 9
    return-object p0
.end method

.method public static getTypeMapper(Ljava/lang/Class;)Lcom/sun/jna/TypeMapper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/TypeMapper;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Native;->getLibraryOptions(Ljava/lang/Class;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "type-mapper"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/sun/jna/TypeMapper;

    .line 12
    .line 13
    return-object p0
.end method

.method public static getWebStartLibraryPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    const-string v0, "javawebstart.version"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_a

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_a
    :try_start_a
    const-class v0, Lcom/sun/jna/Native;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v2, Lcom/sun/jna/Native$4;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/sun/jna/Native$4;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/reflect/Method;

    .line 27
    .line 28
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Ljava/lang/String;

    .line 37
    .line 38
    if-eqz p0, :cond_31

    .line 39
    .line 40
    new-instance v0, Ljava/io/File;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_30} :catch_31

    .line 49
    return-object p0

    .line 50
    :catch_31
    :cond_31
    return-object v1
.end method

.method public static native getWideString(Lcom/sun/jna/Pointer;JJ)Ljava/lang/String;
.end method

.method public static native getWindowHandle0(Ljava/awt/Component;)J
.end method

.method public static getWindowID(Ljava/awt/Window;)J
    .registers 3

    .line 1
    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getWindowID(Ljava/awt/Window;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static getWindowPointer(Ljava/awt/Window;)Lcom/sun/jna/Pointer;
    .registers 4

    .line 1
    new-instance v0, Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/sun/jna/Native$AWT;->getWindowID(Ljava/awt/Window;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/sun/jna/Pointer;-><init>(J)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public static native indexOf(Lcom/sun/jna/Pointer;JJB)J
.end method

.method private static native initIDs()V
.end method

.method public static native initialize_ffi_type(J)I
.end method

.method public static native invokeDouble(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)D
.end method

.method public static native invokeFloat(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)F
.end method

.method public static native invokeInt(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)I
.end method

.method public static native invokeLong(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J
.end method

.method public static native invokeObject(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public static native invokePointer(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)J
.end method

.method public static invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;Lcom/sun/jna/Structure;)Lcom/sun/jna/Structure;
    .registers 16

    .line 1
    invoke-virtual {p5}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-wide v6, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 6
    .line 7
    invoke-virtual {p5}, Lcom/sun/jna/Structure;->getTypeInfo()Lcom/sun/jna/Pointer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-wide v8, v0, Lcom/sun/jna/Pointer;->peer:J

    .line 12
    .line 13
    move-object v1, p0

    .line 14
    move-wide v2, p1

    .line 15
    move v4, p3

    .line 16
    move-object v5, p4

    .line 17
    invoke-static/range {v1 .. v9}, Lcom/sun/jna/Native;->invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;JJ)V

    .line 18
    .line 19
    .line 20
    return-object p5
.end method

.method private static native invokeStructure(Lcom/sun/jna/Function;JI[Ljava/lang/Object;JJ)V
.end method

.method public static native invokeVoid(Lcom/sun/jna/Function;JI[Ljava/lang/Object;)V
.end method

.method public static isCompatibleVersion(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 1
    const-string v0, "\\."

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x3

    .line 14
    if-lt v0, v2, :cond_33

    .line 15
    .line 16
    array-length v0, p1

    .line 17
    if-ge v0, v2, :cond_13

    .line 18
    .line 19
    goto :goto_33

    .line 20
    :cond_13
    aget-object v0, p0, v1

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    aget-object v2, p1, v1

    .line 27
    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    aget-object p0, p0, v3

    .line 34
    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    aget-object p1, p1, v3

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eq v0, v2, :cond_2f

    .line 46
    .line 47
    return v1

    .line 48
    :cond_2f
    if-le p0, p1, :cond_32

    .line 49
    .line 50
    return v1

    .line 51
    :cond_32
    return v3

    .line 52
    :cond_33
    :goto_33
    return v1
.end method

.method public static synchronized native isProtected()Z
.end method

.method public static isSupportedNativeType(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/Structure;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_a

    .line 9
    .line 10
    return v1

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    :try_start_b
    invoke-static {p0}, Lcom/sun/jna/Native;->getNativeSize(Ljava/lang/Class;)I

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_f} :catch_12

    .line 16
    if-eqz p0, :cond_12

    .line 17
    .line 18
    return v1

    .line 19
    :catch_12
    :cond_12
    return v0
.end method

.method public static isUnpacked(Ljava/io/File;)Z
    .registers 2

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "jna"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static load(Ljava/lang/Class;)Lcom/sun/jna/Library;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-static {v0, p0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {v0, p0, p1}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Class;)Lcom/sun/jna/Library;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 52
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Native;->load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;

    move-result-object p0

    return-object p0
.end method

.method public static load(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lcom/sun/jna/Library;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/sun/jna/Library;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/Library;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_23

    .line 8
    .line 9
    new-instance v0, Lcom/sun/jna/Library$Handler;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Library$Handler;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p1}, [Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p1, p2, p0}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Lcom/sun/jna/Library;

    .line 34
    .line 35
    return-object p0

    .line 36
    :cond_23
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string p2, ") of library="

    .line 41
    .line 42
    const-string v0, " does not extend Library"

    .line 43
    .line 44
    const-string v1, "Interface ("

    .line 45
    .line 46
    invoke-static {v1, p1, p2, p0, v0}, Landroidx/navigation/b;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-static {v0, p0}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 49
    invoke-static {v0, p0, p1}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-static {p0, p1, v0}, Lcom/sun/jna/Native;->loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static loadLibrary(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const-class v0, Lcom/sun/jna/Library;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_21

    .line 8
    .line 9
    new-instance v0, Lcom/sun/jna/Library$Handler;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2}, Lcom/sun/jna/Library$Handler;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    filled-new-array {p1}, [Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {p0, v1, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-static {p1, p2, p0}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_21
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, ") of library="

    .line 39
    .line 40
    const-string v0, " does not extend Library"

    .line 41
    .line 42
    const-string v1, "Interface ("

    .line 43
    .line 44
    invoke-static {v1, p1, p2, p0, v0}, Landroidx/navigation/b;->w(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x0

    .line 48
    return-object p0
.end method

.method private static loadLibraryInstance(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_46

    .line 2
    .line 3
    sget-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_46

    .line 10
    .line 11
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_f
    array-length v2, v0

    .line 17
    if-ge v1, v2, :cond_46

    .line 18
    .line 19
    aget-object v2, v0, v1

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    if-ne v3, p0, :cond_3a

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_3a

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    .line 40
    .line 41
    sget-object v0, Lcom/sun/jna/Native;->libraries:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    const/4 v3, 0x0

    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_38
    move-exception v0

    .line 58
    goto :goto_3d

    .line 59
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    .line 60
    .line 61
    goto :goto_f

    .line 62
    :goto_3d
    const-string v1, " ("

    .line 63
    .line 64
    const-string v2, ")"

    .line 65
    .line 66
    const-string v3, "Could not access instance of "

    .line 67
    .line 68
    invoke-static {v3, p0, v1, v0, v2}, Landroidx/navigation/b;->r(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_46
    return-void
.end method

.method private static loadNativeDispatchLibrary()V
    .registers 11

    .line 1
    const-string v0, "jna.nounpack"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_16

    .line 8
    .line 9
    :try_start_8
    invoke-static {}, Lcom/sun/jna/Native;->removeTemporaryFiles()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    .line 10
    .line 11
    .line 12
    goto :goto_16

    .line 13
    :catch_c
    move-exception v0

    .line 14
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 15
    .line 16
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 17
    .line 18
    const-string v3, "JNA Warning: IOException removing temporary files"

    .line 19
    .line 20
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_16
    :goto_16
    const-string v0, "jna.boot.library.name"

    .line 24
    .line 25
    const-string v1, "jnidispatch"

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "jna.boot.library.path"

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_d5

    .line 38
    .line 39
    new-instance v2, Ljava/util/StringTokenizer;

    .line 40
    .line 41
    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 42
    .line 43
    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_2d
    :goto_2d
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_d5

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v3, Ljava/io/File;

    .line 57
    .line 58
    new-instance v4, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v5, ".dylib"

    .line 68
    .line 69
    const-string v6, ".jnilib"

    .line 70
    .line 71
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-direct {v3, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    sget-object v4, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 83
    .line 84
    sget-object v5, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 85
    .line 86
    const-string v6, "Looking in {0}"

    .line 87
    .line 88
    invoke-virtual {v4, v5, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    const-string v7, "Found jnidispatch at {0}"

    .line 96
    .line 97
    const-string v8, "jnidispatch.path"

    .line 98
    .line 99
    const-string v9, "Trying {0}"

    .line 100
    .line 101
    if-eqz v3, :cond_76

    .line 102
    .line 103
    :try_start_66
    invoke-virtual {v4, v5, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v8, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v1, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v4, v5, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_74
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_66 .. :try_end_74} :catch_76

    .line 115
    .line 116
    .line 117
    goto/16 :goto_fa

    .line 118
    .line 119
    :catch_76
    :cond_76
    invoke-static {}, Lcom/sun/jna/Platform;->isMac()Z

    .line 120
    .line 121
    .line 122
    move-result v3

    .line 123
    if-eqz v3, :cond_2d

    .line 124
    .line 125
    const-string v3, "dylib"

    .line 126
    .line 127
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    const-string v5, "jnilib"

    .line 132
    .line 133
    if-eqz v4, :cond_87

    .line 134
    .line 135
    goto :goto_8a

    .line 136
    :cond_87
    move-object v10, v5

    .line 137
    move-object v5, v3

    .line 138
    move-object v3, v10

    .line 139
    :goto_8a
    const/4 v4, 0x0

    .line 140
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    sget-object v3, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 153
    .line 154
    sget-object v4, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 155
    .line 156
    invoke-virtual {v3, v4, v6, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    new-instance v5, Ljava/io/File;

    .line 160
    .line 161
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_2d

    .line 169
    .line 170
    :try_start_a9
    invoke-virtual {v3, v4, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v8, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    sput-object v1, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v3, v4, v7, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b7
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_a9 .. :try_end_b7} :catch_b8

    .line 182
    .line 183
    .line 184
    goto :goto_fa

    .line 185
    :catch_b8
    move-exception v3

    .line 186
    sget-object v4, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 187
    .line 188
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 189
    .line 190
    const-string v6, "File found at "

    .line 191
    .line 192
    const-string v7, " but not loadable: "

    .line 193
    .line 194
    invoke-static {v6, v1, v7}, Lai/onnxruntime/a;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v4, v5, v1, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_2d

    .line 213
    .line 214
    :cond_d5
    const-string v1, "jna.nosys"

    .line 215
    .line 216
    const-string v2, "true"

    .line 217
    .line 218
    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    if-eqz v1, :cond_e9

    .line 227
    .line 228
    invoke-static {}, Lcom/sun/jna/Platform;->isAndroid()Z

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    if-eqz v1, :cond_fb

    .line 233
    .line 234
    :cond_e9
    :try_start_e9
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 235
    .line 236
    sget-object v2, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 237
    .line 238
    const-string v3, "Trying (via loadLibrary) {0}"

    .line 239
    .line 240
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    const-string v0, "Found jnidispatch on system path"

    .line 247
    .line 248
    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_fa
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e9 .. :try_end_fa} :catch_fb

    .line 249
    .line 250
    .line 251
    :goto_fa
    return-void

    .line 252
    :catch_fb
    :cond_fb
    const-string v0, "jna.noclasspath"

    .line 253
    .line 254
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    if-nez v0, :cond_107

    .line 259
    .line 260
    invoke-static {}, Lcom/sun/jna/Native;->loadNativeDispatchLibraryFromClasspath()V

    .line 261
    .line 262
    .line 263
    return-void

    .line 264
    :cond_107
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    .line 265
    .line 266
    const-string v1, "Unable to locate JNA native support library"

    .line 267
    .line 268
    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw v0
.end method

.method private static loadNativeDispatchLibraryFromClasspath()V
    .registers 5

    .line 1
    const-string v0, "/com/sun/jna/"

    .line 2
    .line 3
    :try_start_2
    const-string v1, "jnidispatch"

    .line 4
    .line 5
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, ".dylib"

    .line 10
    .line 11
    const-string v3, ".jnilib"

    .line 12
    .line 13
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {}, Lcom/sun/jna/Platform;->isAIX()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_18

    .line 22
    .line 23
    const-string v1, "libjnidispatch.a"

    .line 24
    .line 25
    :cond_18
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, "/"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-class v1, Lcom/sun/jna/Native;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/sun/jna/Native;->extractFromResourcePath(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/io/File;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_45

    .line 58
    .line 59
    if-eqz v0, :cond_3d

    .line 60
    .line 61
    goto :goto_45

    .line 62
    :cond_3d
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    .line 63
    .line 64
    const-string v1, "Could not find JNA native support"

    .line 65
    .line 66
    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_45
    :goto_45
    sget-object v1, Lcom/sun/jna/Native;->LOG:Ljava/util/logging/Logger;

    .line 71
    .line 72
    sget-object v2, Lcom/sun/jna/Native;->DEBUG_JNA_LOAD_LEVEL:Ljava/util/logging/Level;

    .line 73
    .line 74
    const-string v3, "Trying {0}"

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v1, v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    const-string v3, "jnidispatch.path"

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v3, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    sput-object v3, Lcom/sun/jna/Native;->jnidispatchPath:Ljava/lang/String;

    .line 104
    .line 105
    const-string v4, "Found jnidispatch at {0}"

    .line 106
    .line 107
    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/sun/jna/Native;->isUnpacked(Ljava/io/File;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7e

    .line 115
    .line 116
    const-string v1, "jnidispatch.preserve"

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    if-nez v1, :cond_7e

    .line 123
    .line 124
    invoke-static {v0}, Lcom/sun/jna/Native;->deleteLibrary(Ljava/io/File;)Z
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7e} :catch_7f

    .line 125
    .line 126
    .line 127
    :cond_7e
    return-void

    .line 128
    :catch_7f
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw v1
.end method

.method private static lookupField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_d} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    .line 14
    return-object p0

    .line 15
    :catch_e
    move-exception v0

    .line 16
    move-object v4, v0

    .line 17
    const-string v0, " must be a public field of type "

    .line 18
    .line 19
    invoke-static {p1, v0}, Lai/onnxruntime/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, " ("

    .line 28
    .line 29
    const-string v5, "): "

    .line 30
    .line 31
    move-object v6, p0

    .line 32
    invoke-static/range {v1 .. v6}, Landroidx/navigation/b;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return-object p0

    .line 37
    :catch_24
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4

    .line 1
    const-class p0, Lcom/sun/jna/Native;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "Java Native Access (JNA)"

    .line 8
    .line 9
    if-eqz p0, :cond_f

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Package;->getSpecificationTitle()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    goto :goto_10

    .line 16
    :cond_f
    move-object v1, v0

    .line 17
    :goto_10
    if-nez v1, :cond_13

    .line 18
    .line 19
    goto :goto_14

    .line 20
    :cond_13
    move-object v0, v1

    .line 21
    :goto_14
    const-string v1, "5.13.0"

    .line 22
    .line 23
    if-eqz p0, :cond_1d

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/lang/Package;->getSpecificationVersion()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_1e

    .line 30
    :cond_1d
    move-object v2, v1

    .line 31
    :goto_1e
    if-nez v2, :cond_21

    .line 32
    .line 33
    goto :goto_22

    .line 34
    :cond_21
    move-object v1, v2

    .line 35
    :goto_22
    const-string v2, " API Version "

    .line 36
    .line 37
    invoke-static {v0, v2, v1}, Lai/onnxruntime/a;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "5.13.0 (package information missing)"

    .line 47
    .line 48
    if-eqz p0, :cond_36

    .line 49
    .line 50
    invoke-virtual {p0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    goto :goto_37

    .line 55
    :cond_36
    move-object p0, v0

    .line 56
    :goto_37
    if-nez p0, :cond_3a

    .line 57
    .line 58
    goto :goto_3b

    .line 59
    :cond_3a
    move-object v0, p0

    .line 60
    :goto_3b
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 61
    .line 62
    const-string v1, "Version: "

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v1, " Native: "

    .line 76
    .line 77
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {}, Lcom/sun/jna/Native;->getNativeVersion()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, " ("

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/sun/jna/Native;->getAPIChecksum()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v1, ")"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 112
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 114
    .line 115
    const-string v1, " Prefix: "

    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v1, Lcom/sun/jna/Platform;->RESOURCE_PREFIX:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public static native malloc(J)J
.end method

.method public static markTemporaryFile(Ljava/io/File;)V
    .registers 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p0, ".x"

    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_22

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_22
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static nativeType(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static open(Ljava/lang/String;)J
    .registers 3

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-static {p0, v0}, Lcom/sun/jna/Native;->open(Ljava/lang/String;I)J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    return-wide v0
.end method

.method public static native open(Ljava/lang/String;I)J
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[BII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[CII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[DII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[FII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[III)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[JII)V
.end method

.method public static native read(Lcom/sun/jna/Pointer;JJ[SII)V
.end method

.method public static register(Lcom/sun/jna/NativeLibrary;)V
    .registers 2

    .line 699
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V

    return-void
.end method

.method public static register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/sun/jna/NativeLibrary;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v4, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/sun/jna/NativeLibrary;->getOptions()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const-string v5, "type-mapper"

    .line 19
    .line 20
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/sun/jna/TypeMapper;

    .line 25
    .line 26
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    const-string v7, "allow-objects"

    .line 29
    .line 30
    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-static {v4, v3, v7}, Lcom/sun/jna/Native;->cacheOptions(Ljava/lang/Class;Ljava/util/Map;Ljava/lang/Object;)Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    array-length v3, v1

    .line 43
    const/16 v22, 0x0

    .line 44
    .line 45
    move/from16 v8, v22

    .line 46
    .line 47
    :goto_2e
    if-ge v8, v3, :cond_40

    .line 48
    .line 49
    aget-object v9, v1, v8

    .line 50
    .line 51
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getModifiers()I

    .line 52
    .line 53
    .line 54
    move-result v10

    .line 55
    and-int/lit16 v10, v10, 0x100

    .line 56
    .line 57
    if-eqz v10, :cond_3d

    .line 58
    .line 59
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    :cond_3d
    add-int/lit8 v8, v8, 0x1

    .line 63
    .line 64
    goto :goto_2e

    .line 65
    :cond_40
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    new-array v3, v1, [J

    .line 70
    .line 71
    move/from16 v8, v22

    .line 72
    .line 73
    :goto_48
    if-ge v8, v1, :cond_2a8

    .line 74
    .line 75
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v9

    .line 79
    move-object v14, v9

    .line 80
    check-cast v14, Ljava/lang/reflect/Method;

    .line 81
    .line 82
    const-string v9, "("

    .line 83
    .line 84
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    move-result-object v10

    .line 88
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    array-length v12, v11

    .line 93
    new-array v12, v12, [J

    .line 94
    .line 95
    array-length v13, v11

    .line 96
    new-array v13, v13, [J

    .line 97
    .line 98
    array-length v15, v11

    .line 99
    new-array v15, v15, [I

    .line 100
    .line 101
    array-length v7, v11

    .line 102
    new-array v7, v7, [Lcom/sun/jna/ToNativeConverter;

    .line 103
    .line 104
    move-object/from16 v17, v9

    .line 105
    .line 106
    invoke-static {v10, v5, v6}, Lcom/sun/jna/Native;->getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I

    .line 107
    .line 108
    .line 109
    move-result v9

    .line 110
    move/from16 v23, v1

    .line 111
    .line 112
    const/4 v1, -0x1

    .line 113
    if-eq v9, v1, :cond_292

    .line 114
    .line 115
    const/4 v1, 0x3

    .line 116
    move-object/from16 v24, v2

    .line 117
    .line 118
    const/4 v2, 0x4

    .line 119
    if-eq v9, v1, :cond_91

    .line 120
    .line 121
    if-eq v9, v2, :cond_eb

    .line 122
    .line 123
    packed-switch v9, :pswitch_data_2ba

    .line 124
    .line 125
    .line 126
    packed-switch v9, :pswitch_data_2c4

    .line 127
    .line 128
    .line 129
    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    move-object/from16 v19, v3

    .line 138
    .line 139
    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 140
    .line 141
    :goto_8c
    move-wide/from16 v25, v2

    .line 142
    .line 143
    :goto_8e
    const/4 v1, 0x0

    .line 144
    goto/16 :goto_114

    .line 145
    .line 146
    :cond_91
    :pswitch_91
    move-object/from16 v19, v3

    .line 147
    .line 148
    goto/16 :goto_106

    .line 149
    .line 150
    :pswitch_95
    move-object/from16 v19, v3

    .line 151
    .line 152
    invoke-interface {v5, v10}, Lcom/sun/jna/TypeMapper;->getFromNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/FromNativeConverter;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v10}, Ljava/lang/Class;->isPrimitive()Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-eqz v2, :cond_a3

    .line 161
    .line 162
    move-object v2, v10

    .line 163
    goto :goto_a5

    .line 164
    :cond_a3
    const-class v2, Lcom/sun/jna/Pointer;

    .line 165
    .line 166
    :goto_a5
    invoke-static {v2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    iget-wide v2, v2, Lcom/sun/jna/Pointer;->peer:J

    .line 175
    .line 176
    invoke-interface {v1}, Lcom/sun/jna/FromNativeConverter;->nativeType()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    move-result-object v21

    .line 180
    invoke-static/range {v21 .. v21}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 181
    .line 182
    .line 183
    move-result-object v21

    .line 184
    move-object/from16 v25, v1

    .line 185
    .line 186
    invoke-virtual/range {v21 .. v21}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    move-wide/from16 v26, v2

    .line 191
    .line 192
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 193
    .line 194
    move-wide v2, v1

    .line 195
    move-object/from16 v1, v25

    .line 196
    .line 197
    move-wide/from16 v25, v26

    .line 198
    .line 199
    goto :goto_114

    .line 200
    :pswitch_c7
    move-object/from16 v19, v3

    .line 201
    .line 202
    const-class v1, Lcom/sun/jna/Pointer;

    .line 203
    .line 204
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 213
    .line 214
    invoke-static {v10}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    move-wide/from16 v25, v2

    .line 231
    .line 232
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 233
    .line 234
    :goto_e9
    move-wide v2, v1

    .line 235
    goto :goto_8e

    .line 236
    :cond_eb
    move-object/from16 v19, v3

    .line 237
    .line 238
    const-class v1, Lcom/sun/jna/Pointer;

    .line 239
    .line 240
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 249
    .line 250
    invoke-static {v10}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    move-wide/from16 v25, v2

    .line 259
    .line 260
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 261
    .line 262
    goto :goto_e9

    .line 263
    :goto_106
    const-class v1, Lcom/sun/jna/Pointer;

    .line 264
    .line 265
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    iget-wide v2, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 274
    .line 275
    goto/16 :goto_8c

    .line 276
    .line 277
    :goto_114
    move-wide/from16 v27, v2

    .line 278
    .line 279
    move-object/from16 v21, v17

    .line 280
    .line 281
    move-object/from16 v17, v1

    .line 282
    .line 283
    move/from16 v1, v22

    .line 284
    .line 285
    :goto_11c
    array-length v2, v11

    .line 286
    if-ge v1, v2, :cond_1ef

    .line 287
    .line 288
    aget-object v2, v11, v1

    .line 289
    .line 290
    invoke-static/range {v21 .. v21}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    move/from16 v29, v1

    .line 295
    .line 296
    invoke-static {v2}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v21

    .line 307
    invoke-static {v2, v5, v6}, Lcom/sun/jna/Native;->getConversion(Ljava/lang/Class;Lcom/sun/jna/TypeMapper;Z)I

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    aput v1, v15, v29

    .line 312
    .line 313
    const/4 v3, -0x1

    .line 314
    if-eq v1, v3, :cond_1d9

    .line 315
    .line 316
    const/16 v3, 0x11

    .line 317
    .line 318
    if-eq v1, v3, :cond_15f

    .line 319
    .line 320
    const/16 v3, 0x12

    .line 321
    .line 322
    if-eq v1, v3, :cond_15f

    .line 323
    .line 324
    const/16 v3, 0x13

    .line 325
    .line 326
    if-eq v1, v3, :cond_15f

    .line 327
    .line 328
    const/16 v3, 0x15

    .line 329
    .line 330
    if-ne v1, v3, :cond_14c

    .line 331
    .line 332
    goto :goto_15f

    .line 333
    :cond_14c
    const/16 v3, 0x17

    .line 334
    .line 335
    if-eq v1, v3, :cond_158

    .line 336
    .line 337
    const/16 v3, 0x18

    .line 338
    .line 339
    if-eq v1, v3, :cond_158

    .line 340
    .line 341
    const/16 v3, 0x19

    .line 342
    .line 343
    if-ne v1, v3, :cond_167

    .line 344
    .line 345
    :cond_158
    invoke-interface {v5, v2}, Lcom/sun/jna/TypeMapper;->getToNativeConverter(Ljava/lang/Class;)Lcom/sun/jna/ToNativeConverter;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    aput-object v3, v7, v29

    .line 350
    .line 351
    goto :goto_167

    .line 352
    :cond_15f
    :goto_15f
    invoke-static {v2}, Lcom/sun/jna/NativeMappedConverter;->getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v2}, Lcom/sun/jna/NativeMappedConverter;->nativeType()Ljava/lang/Class;

    .line 357
    .line 358
    .line 359
    move-result-object v2

    .line 360
    :cond_167
    :goto_167
    if-eqz v1, :cond_1c6

    .line 361
    .line 362
    const/4 v3, 0x4

    .line 363
    if-eq v1, v3, :cond_1ab

    .line 364
    .line 365
    packed-switch v1, :pswitch_data_2d4

    .line 366
    .line 367
    .line 368
    packed-switch v1, :pswitch_data_2de

    .line 369
    .line 370
    .line 371
    const-class v1, Lcom/sun/jna/Pointer;

    .line 372
    .line 373
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 382
    .line 383
    aput-wide v1, v12, v29

    .line 384
    .line 385
    aput-wide v1, v13, v29

    .line 386
    .line 387
    goto :goto_1d5

    .line 388
    :pswitch_183
    invoke-virtual {v2}, Ljava/lang/Class;->isPrimitive()Z

    .line 389
    .line 390
    .line 391
    move-result v1

    .line 392
    if-eqz v1, :cond_18a

    .line 393
    .line 394
    goto :goto_18c

    .line 395
    :cond_18a
    const-class v2, Lcom/sun/jna/Pointer;

    .line 396
    .line 397
    :goto_18c
    invoke-static {v2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 406
    .line 407
    aput-wide v1, v13, v29

    .line 408
    .line 409
    aget-object v1, v7, v29

    .line 410
    .line 411
    invoke-interface {v1}, Lcom/sun/jna/ToNativeConverter;->nativeType()Ljava/lang/Class;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 424
    .line 425
    aput-wide v1, v12, v29

    .line 426
    .line 427
    goto :goto_1d5

    .line 428
    :cond_1ab
    :pswitch_1ab
    invoke-static {v2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 437
    .line 438
    aput-wide v1, v12, v29

    .line 439
    .line 440
    const-class v1, Lcom/sun/jna/Pointer;

    .line 441
    .line 442
    invoke-static {v1}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 451
    .line 452
    aput-wide v1, v13, v29

    .line 453
    .line 454
    goto :goto_1d5

    .line 455
    :cond_1c6
    const/4 v3, 0x4

    .line 456
    invoke-static {v2}, Lcom/sun/jna/Structure$FFIType;->get(Ljava/lang/Object;)Lcom/sun/jna/Structure$FFIType;

    .line 457
    .line 458
    .line 459
    move-result-object v1

    .line 460
    invoke-virtual {v1}, Lcom/sun/jna/Structure;->getPointer()Lcom/sun/jna/Pointer;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    iget-wide v1, v1, Lcom/sun/jna/Pointer;->peer:J

    .line 465
    .line 466
    aput-wide v1, v12, v29

    .line 467
    .line 468
    aput-wide v1, v13, v29

    .line 469
    .line 470
    :goto_1d5
    add-int/lit8 v1, v29, 0x1

    .line 471
    .line 472
    goto/16 :goto_11c

    .line 473
    .line 474
    :cond_1d9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 475
    .line 476
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v1, " is not a supported argument type (in method "

    .line 483
    .line 484
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    const-string v3, " in "

    .line 489
    .line 490
    const-string v5, ")"

    .line 491
    .line 492
    invoke-static/range {v0 .. v5}, Landroidx/navigation/b;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 493
    .line 494
    .line 495
    return-void

    .line 496
    :cond_1ef
    const-string v1, ")"

    .line 497
    .line 498
    move-object/from16 v2, v21

    .line 499
    .line 500
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-static {v1}, Lai/onnxruntime/a;->u(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-static {v10}, Lcom/sun/jna/Native;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v2

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    move/from16 v3, v22

    .line 524
    .line 525
    :goto_20c
    array-length v4, v2

    .line 526
    if-ge v3, v4, :cond_220

    .line 527
    .line 528
    const-class v4, Lcom/sun/jna/LastErrorException;

    .line 529
    .line 530
    aget-object v10, v2, v3

    .line 531
    .line 532
    invoke-virtual {v4, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 533
    .line 534
    .line 535
    move-result v4

    .line 536
    if-eqz v4, :cond_21d

    .line 537
    .line 538
    const/4 v2, 0x1

    .line 539
    move/from16 v18, v2

    .line 540
    .line 541
    goto :goto_222

    .line 542
    :cond_21d
    add-int/lit8 v3, v3, 0x1

    .line 543
    .line 544
    goto :goto_20c

    .line 545
    :cond_220
    move/from16 v18, v22

    .line 546
    .line 547
    :goto_222
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 548
    .line 549
    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v0, v2, v14}, Lcom/sun/jna/NativeLibrary;->getFunction(Ljava/lang/String;Ljava/lang/reflect/Method;)Lcom/sun/jna/Function;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    :try_start_22a
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v4

    .line 559
    iget-wide v10, v2, Lcom/sun/jna/Pointer;->peer:J

    .line 560
    .line 561
    move-object/from16 v20, v17

    .line 562
    .line 563
    invoke-virtual {v2}, Lcom/sun/jna/Function;->getCallingConvention()I

    .line 564
    .line 565
    .line 566
    move-result v17

    .line 567
    iget-object v2, v2, Lcom/sun/jna/Function;->encoding:Ljava/lang/String;
    :try_end_238
    .catch Ljava/lang/NoSuchMethodError; {:try_start_22a .. :try_end_238} :catch_267

    .line 568
    .line 569
    move-object/from16 v3, p0

    .line 570
    .line 571
    move-object/from16 v21, v2

    .line 572
    .line 573
    move v2, v6

    .line 574
    move-object v6, v15

    .line 575
    move-wide v15, v10

    .line 576
    move-wide/from16 v10, v25

    .line 577
    .line 578
    move-object/from16 v25, v5

    .line 579
    .line 580
    move/from16 v26, v8

    .line 581
    .line 582
    move-object v8, v12

    .line 583
    move-object v5, v1

    .line 584
    move-object/from16 v1, v19

    .line 585
    .line 586
    move-object/from16 v19, v7

    .line 587
    .line 588
    move-object v7, v13

    .line 589
    move-wide/from16 v12, v27

    .line 590
    .line 591
    const/16 v27, 0x0

    .line 592
    .line 593
    :try_start_250
    invoke-static/range {v3 .. v21}, Lcom/sun/jna/Native;->registerMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[I[J[JIJJLjava/lang/reflect/Method;JIZ[Lcom/sun/jna/ToNativeConverter;Lcom/sun/jna/FromNativeConverter;Ljava/lang/String;)J

    .line 594
    .line 595
    .line 596
    move-result-wide v6
    :try_end_254
    .catch Ljava/lang/NoSuchMethodError; {:try_start_250 .. :try_end_254} :catch_265

    .line 597
    move-object v4, v3

    .line 598
    :try_start_255
    aput-wide v6, v1, v26
    :try_end_257
    .catch Ljava/lang/NoSuchMethodError; {:try_start_255 .. :try_end_257} :catch_26a

    .line 599
    .line 600
    add-int/lit8 v8, v26, 0x1

    .line 601
    .line 602
    move-object v3, v1

    .line 603
    move v6, v2

    .line 604
    move/from16 v1, v23

    .line 605
    .line 606
    move-object/from16 v2, v24

    .line 607
    .line 608
    move-object/from16 v5, v25

    .line 609
    .line 610
    move-object/from16 v7, v27

    .line 611
    .line 612
    goto/16 :goto_48

    .line 613
    .line 614
    :catch_265
    move-object v4, v3

    .line 615
    goto :goto_26a

    .line 616
    :catch_267
    move-object/from16 v4, p0

    .line 617
    .line 618
    move-object v5, v1

    .line 619
    :catch_26a
    :goto_26a
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    .line 620
    .line 621
    const-string v1, "No method "

    .line 622
    .line 623
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v2

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    .line 628
    .line 629
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    const-string v1, " with signature "

    .line 636
    .line 637
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    .line 639
    .line 640
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    const-string v1, " in "

    .line 644
    .line 645
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v1

    .line 655
    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_292
    new-instance v0, Ljava/lang/StringBuilder;

    .line 660
    .line 661
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 662
    .line 663
    .line 664
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 665
    .line 666
    .line 667
    const-string v1, " is not a supported return type (in method "

    .line 668
    .line 669
    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v2

    .line 673
    const-string v3, " in "

    .line 674
    .line 675
    const-string v5, ")"

    .line 676
    .line 677
    invoke-static/range {v0 .. v5}, Landroidx/navigation/b;->m(Ljava/lang/StringBuilder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 678
    .line 679
    .line 680
    return-void

    .line 681
    :cond_2a8
    move-object v1, v3

    .line 682
    sget-object v2, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 683
    .line 684
    monitor-enter v2

    .line 685
    :try_start_2ac
    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    sget-object v1, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    .line 689
    .line 690
    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    monitor-exit v2

    .line 694
    return-void

    .line 695
    :catchall_2b6
    move-exception v0

    .line 696
    monitor-exit v2
    :try_end_2b8
    .catchall {:try_start_2ac .. :try_end_2b8} :catchall_2b6

    .line 697
    throw v0

    .line 698
    nop

    .line 699
    :pswitch_data_2ba
    .packed-switch 0x11
        :pswitch_c7
        :pswitch_c7
        :pswitch_c7
    .end packed-switch

    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    :pswitch_data_2c4
    .packed-switch 0x15
        :pswitch_c7
        :pswitch_c7
        :pswitch_95
        :pswitch_95
        :pswitch_95
        :pswitch_91
    .end packed-switch

    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    :pswitch_data_2d4
    .packed-switch 0x11
        :pswitch_1ab
        :pswitch_1ab
        :pswitch_1ab
    .end packed-switch

    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    .line 734
    .line 735
    :pswitch_data_2de
    .packed-switch 0x15
        :pswitch_1ab
        :pswitch_1ab
        :pswitch_183
        :pswitch_183
        :pswitch_183
    .end packed-switch
.end method

.method public static register(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 700
    const-string v0, "classloader"

    .line 701
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sun/jna/NativeLibrary;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/sun/jna/NativeLibrary;

    move-result-object p1

    .line 702
    invoke-static {p0, p1}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Lcom/sun/jna/NativeLibrary;)V

    return-void
.end method

.method public static register(Ljava/lang/String;)V
    .registers 2

    .line 703
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/sun/jna/Native;->register(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method private static native registerMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[I[J[JIJJLjava/lang/reflect/Method;JIZ[Lcom/sun/jna/ToNativeConverter;Lcom/sun/jna/FromNativeConverter;Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[I[J[JIJJ",
            "Ljava/lang/reflect/Method;",
            "JIZ[",
            "Lcom/sun/jna/ToNativeConverter;",
            "Lcom/sun/jna/FromNativeConverter;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation
.end method

.method public static registered(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_9
    move-exception p0

    .line 11
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    .line 12
    throw p0
.end method

.method public static removeTemporaryFiles()V
    .registers 7

    .line 1
    invoke-static {}, Lcom/sun/jna/Native;->getTempDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/sun/jna/Native$5;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/sun/jna/Native$5;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    move v2, v1

    .line 16
    :goto_f
    if-eqz v0, :cond_3f

    .line 17
    .line 18
    array-length v3, v0

    .line 19
    if-ge v2, v3, :cond_3f

    .line 20
    .line 21
    aget-object v3, v0, v2

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    add-int/lit8 v5, v5, -0x2

    .line 32
    .line 33
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    new-instance v5, Ljava/io/File;

    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_39

    .line 51
    .line 52
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_3c

    .line 57
    .line 58
    :cond_39
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 59
    .line 60
    .line 61
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    .line 62
    .line 63
    goto :goto_f

    .line 64
    :cond_3f
    return-void
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    :goto_5
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne v1, v2, :cond_14

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_14
    const/4 v2, 0x0

    .line 22
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    add-int/2addr v2, v1

    .line 37
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_5
.end method

.method public static native setByte(Lcom/sun/jna/Pointer;JJB)V
.end method

.method public static setCallbackExceptionHandler(Lcom/sun/jna/Callback$UncaughtExceptionHandler;)V
    .registers 1

    .line 1
    if-nez p0, :cond_4

    .line 2
    .line 3
    sget-object p0, Lcom/sun/jna/Native;->DEFAULT_HANDLER:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 4
    .line 5
    :cond_4
    sput-object p0, Lcom/sun/jna/Native;->callbackExceptionHandler:Lcom/sun/jna/Callback$UncaughtExceptionHandler;

    .line 6
    .line 7
    return-void
.end method

.method public static setCallbackThreadInitializer(Lcom/sun/jna/Callback;Lcom/sun/jna/CallbackThreadInitializer;)V
    .registers 2

    .line 1
    invoke-static {p0, p1}, Lcom/sun/jna/CallbackReference;->setCallbackThreadInitializer(Lcom/sun/jna/Callback;Lcom/sun/jna/CallbackThreadInitializer;)Lcom/sun/jna/CallbackThreadInitializer;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native setChar(Lcom/sun/jna/Pointer;JJC)V
.end method

.method private static native setDetachState(ZJ)V
.end method

.method public static native setDouble(Lcom/sun/jna/Pointer;JJD)V
.end method

.method public static native setFloat(Lcom/sun/jna/Pointer;JJF)V
.end method

.method public static native setInt(Lcom/sun/jna/Pointer;JJI)V
.end method

.method public static native setLastError(I)V
.end method

.method public static native setLong(Lcom/sun/jna/Pointer;JJJ)V
.end method

.method public static native setMemory(Lcom/sun/jna/Pointer;JJJB)V
.end method

.method public static native setPointer(Lcom/sun/jna/Pointer;JJJ)V
.end method

.method public static synchronized native setProtected(Z)V
.end method

.method public static native setShort(Lcom/sun/jna/Pointer;JJS)V
.end method

.method public static native setWideString(Lcom/sun/jna/Pointer;JJLjava/lang/String;)V
.end method

.method private static native sizeof(I)I
.end method

.method public static synchronizedLibrary(Lcom/sun/jna/Library;)Lcom/sun/jna/Library;
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2f

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    instance-of v2, v1, Lcom/sun/jna/Library$Handler;

    .line 16
    .line 17
    if-eqz v2, :cond_28

    .line 18
    .line 19
    check-cast v1, Lcom/sun/jna/Library$Handler;

    .line 20
    .line 21
    new-instance v2, Lcom/sun/jna/Native$3;

    .line 22
    .line 23
    invoke-direct {v2, v1, p0}, Lcom/sun/jna/Native$3;-><init>(Lcom/sun/jna/Library$Handler;Lcom/sun/jna/Library;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {p0, v0, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Lcom/sun/jna/Library;

    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_28
    const-string p0, "Unrecognized proxy handler: "

    .line 42
    .line 43
    invoke-static {v1, p0}, Landroidx/navigation/b;->t(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 p0, 0x0

    .line 47
    return-object p0

    .line 48
    :cond_2f
    const-string p0, "Library must be a proxy class"

    .line 49
    .line 50
    invoke-static {p0}, Lj1/i;->k(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;)[B
    .registers 2

    .line 17
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 2

    .line 16
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method

.method public static toByteArray(Ljava/lang/String;Ljava/nio/charset/Charset;)[B
    .registers 4

    .line 1
    invoke-static {p0, p1}, Lcom/sun/jna/Native;->getBytes(Ljava/lang/String;Ljava/nio/charset/Charset;)[B

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length p1, p0

    .line 6
    add-int/lit8 p1, p1, 0x1

    .line 7
    .line 8
    new-array p1, p1, [B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    array-length v1, p0

    .line 12
    invoke-static {p0, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public static toCharArray(Ljava/lang/String;)[C
    .registers 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    array-length v0, p0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    array-length v2, p0

    .line 12
    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method private static toNative(Lcom/sun/jna/ToNativeConverter;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 1
    new-instance v0, Lcom/sun/jna/ToNativeContext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sun/jna/ToNativeContext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1, v0}, Lcom/sun/jna/ToNativeConverter;->toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .registers 2

    .line 27
    invoke-static {}, Lcom/sun/jna/Native;->getDefaultStringEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sun/jna/Native;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 26
    invoke-static {p1}, Lcom/sun/jna/Native;->getCharset(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sun/jna/Native;->toString([BLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 6

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_3
    if-ge v2, v0, :cond_e

    .line 5
    .line 6
    aget-byte v3, p0, v2

    .line 7
    .line 8
    if-nez v3, :cond_b

    .line 9
    .line 10
    move v0, v2

    .line 11
    goto :goto_e

    .line 12
    :cond_b
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_3

    .line 15
    :cond_e
    :goto_e
    if-nez v0, :cond_13

    .line 16
    .line 17
    const-string p0, ""

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_13
    new-instance v2, Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v2, p0, v1, v0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 23
    .line 24
    .line 25
    return-object v2
.end method

.method public static toString([C)Ljava/lang/String;
    .registers 5

    .line 28
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    .line 29
    aget-char v3, p0, v2

    if-nez v3, :cond_b

    move v0, v2

    goto :goto_e

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    :goto_e
    if-nez v0, :cond_13

    .line 30
    const-string p0, ""

    return-object p0

    .line 31
    :cond_13
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public static toStringList([C)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/jna/Native;->toStringList([CII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toStringList([CII)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    add-int/2addr p2, p1

    .line 7
    move v1, p1

    .line 8
    :goto_7
    if-ge p1, p2, :cond_20

    .line 9
    .line 10
    aget-char v2, p0, p1

    .line 11
    .line 12
    if-eqz v2, :cond_e

    .line 13
    .line 14
    goto :goto_1d

    .line 15
    :cond_e
    if-ne v1, p1, :cond_11

    .line 16
    .line 17
    goto :goto_2b

    .line 18
    :cond_11
    new-instance v2, Ljava/lang/String;

    .line 19
    .line 20
    sub-int v3, p1, v1

    .line 21
    .line 22
    invoke-direct {v2, p0, v1, v3}, Ljava/lang/String;-><init>([CII)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v1, p1, 0x1

    .line 29
    .line 30
    :goto_1d
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    goto :goto_7

    .line 33
    :cond_20
    if-ge v1, p2, :cond_2b

    .line 34
    .line 35
    new-instance p1, Ljava/lang/String;

    .line 36
    .line 37
    sub-int/2addr p2, v1

    .line 38
    invoke-direct {p1, p0, v1, p2}, Ljava/lang/String;-><init>([CII)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_2b
    :goto_2b
    return-object v0
.end method

.method public static unregister()V
    .registers 1

    .line 30
    invoke-static {}, Lcom/sun/jna/Native;->getCallingClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->findDirectMappedClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;)V

    return-void
.end method

.method public static unregister(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

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
    check-cast v1, [J

    .line 9
    .line 10
    if-eqz v1, :cond_19

    .line 11
    .line 12
    invoke-static {p0, v1}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;[J)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object v1, Lcom/sun/jna/Native;->registeredLibraries:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    goto :goto_19

    .line 24
    :catchall_17
    move-exception p0

    .line 25
    goto :goto_1b

    .line 26
    :cond_19
    :goto_19
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_17

    .line 29
    throw p0
.end method

.method private static native unregister(Ljava/lang/Class;[J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[J)V"
        }
    .end annotation
.end method

.method private static unregisterAll()V
    .registers 4

    .line 1
    sget-object v0, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_29

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Class;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, [J

    .line 35
    .line 36
    invoke-static {v3, v2}, Lcom/sun/jna/Native;->unregister(Ljava/lang/Class;[J)V

    .line 37
    .line 38
    .line 39
    goto :goto_b

    .line 40
    :catchall_27
    move-exception v1

    .line 41
    goto :goto_30

    .line 42
    :cond_29
    sget-object v1, Lcom/sun/jna/Native;->registeredClasses:Ljava/util/Map;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :goto_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_27

    .line 50
    throw v1
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[BII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[CII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[DII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[FII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[III)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[JII)V
.end method

.method public static native write(Lcom/sun/jna/Pointer;JJ[SII)V
.end method
