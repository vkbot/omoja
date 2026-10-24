.class public Landroid/os/HwBlob;
.super Ljava/lang/Object;
.source "HwBlob.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HwBlob"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 430
    invoke-static {}, Landroid/os/HwBlob;->native_init()J

    move-result-wide v6

    .line 432
    .local v6, "freeFunction":J
    new-instance v8, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/HwBlob;

    .line 433
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    move-object v0, v8

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v8, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 436
    .end local v6    # "freeFunction":J
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "size"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-direct {p0, p1}, Landroid/os/HwBlob;->native_setup(I)V

    .line 42
    sget-object v0, Landroid/os/HwBlob;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwBlob;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 45
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup(I)V
.end method

.method public static wrapArray([Z)[Ljava/lang/Boolean;
    .locals 4
    .param p0, "array"    # [Z

    .line 326
    array-length v0, p0

    .line 327
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Boolean;

    .line 328
    .local v1, "wrappedArray":[Ljava/lang/Boolean;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 329
    aget-boolean v3, p0, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static wrapArray([B)[Ljava/lang/Byte;
    .locals 4
    .param p0, "array"    # [B

    .line 356
    array-length v0, p0

    .line 357
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Byte;

    .line 358
    .local v1, "wrappedArray":[Ljava/lang/Byte;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 359
    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static wrapArray([D)[Ljava/lang/Double;
    .locals 5
    .param p0, "array"    # [D

    .line 416
    array-length v0, p0

    .line 417
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Double;

    .line 418
    .local v1, "wrappedArray":[Ljava/lang/Double;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 419
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    .line 418
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 421
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static wrapArray([F)[Ljava/lang/Float;
    .locals 4
    .param p0, "array"    # [F

    .line 401
    array-length v0, p0

    .line 402
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Float;

    .line 403
    .local v1, "wrappedArray":[Ljava/lang/Float;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 404
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 403
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static wrapArray([I)[Ljava/lang/Integer;
    .locals 4
    .param p0, "array"    # [I

    .line 386
    array-length v0, p0

    .line 387
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Integer;

    .line 388
    .local v1, "wrappedArray":[Ljava/lang/Integer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 389
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static wrapArray([J)[Ljava/lang/Long;
    .locals 5
    .param p0, "array"    # [J

    .line 341
    array-length v0, p0

    .line 342
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Long;

    .line 343
    .local v1, "wrappedArray":[Ljava/lang/Long;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 344
    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 346
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static wrapArray([S)[Ljava/lang/Short;
    .locals 4
    .param p0, "array"    # [S

    .line 371
    array-length v0, p0

    .line 372
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Short;

    .line 373
    .local v1, "wrappedArray":[Ljava/lang/Short;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 374
    aget-short v3, p0, v2

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 376
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public final native copyToBoolArray(J[ZI)V
.end method

.method public final native copyToDoubleArray(J[DI)V
.end method

.method public final native copyToFloatArray(J[FI)V
.end method

.method public final native copyToInt16Array(J[SI)V
.end method

.method public final native copyToInt32Array(J[II)V
.end method

.method public final native copyToInt64Array(J[JI)V
.end method

.method public final native copyToInt8Array(J[BI)V
.end method

.method public final native getBool(J)Z
.end method

.method public final native getDouble(J)D
.end method

.method public final native getFloat(J)F
.end method

.method public final native getInt16(J)S
.end method

.method public final native getInt32(J)I
.end method

.method public final native getInt64(J)J
.end method

.method public final native getInt8(J)B
.end method

.method public final native getString(J)Ljava/lang/String;
.end method

.method public final native handle()J
.end method

.method public final native putBlob(JLandroid/os/HwBlob;)V
.end method

.method public final native putBool(JZ)V
.end method

.method public final native putBoolArray(J[Z)V
.end method

.method public final native putDouble(JD)V
.end method

.method public final native putDoubleArray(J[D)V
.end method

.method public final native putFloat(JF)V
.end method

.method public final native putFloatArray(J[F)V
.end method

.method public final native putInt16(JS)V
.end method

.method public final native putInt16Array(J[S)V
.end method

.method public final native putInt32(JI)V
.end method

.method public final native putInt32Array(J[I)V
.end method

.method public final native putInt64(JJ)V
.end method

.method public final native putInt64Array(J[J)V
.end method

.method public final native putInt8(JB)V
.end method

.method public final native putInt8Array(J[B)V
.end method

.method public final native putNativeHandle(JLandroid/os/NativeHandle;)V
.end method

.method public final native putString(JLjava/lang/String;)V
.end method
