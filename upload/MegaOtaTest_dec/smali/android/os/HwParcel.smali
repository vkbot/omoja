.class public Landroid/os/HwParcel;
.super Ljava/lang/Object;
.source "HwParcel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HwParcel$Status;
    }
.end annotation


# static fields
.field public static final STATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HwParcel"

.field private static final sNativeRegistry:Llibcore/util/NativeAllocationRegistry;


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 601
    invoke-static {}, Landroid/os/HwParcel;->native_init()J

    move-result-wide v6

    .line 603
    .local v6, "freeFunction":J
    new-instance v8, Llibcore/util/NativeAllocationRegistry;

    const-class v0, Landroid/os/HwParcel;

    .line 604
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-wide/16 v4, 0x80

    move-object v0, v8

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Llibcore/util/NativeAllocationRegistry;-><init>(Ljava/lang/ClassLoader;JJ)V

    sput-object v8, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 607
    .end local v6    # "freeFunction":J
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->native_setup(Z)V

    .line 66
    sget-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwParcel;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 69
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 3
    .param p1, "allocate"    # Z

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-direct {p0, p1}, Landroid/os/HwParcel;->native_setup(Z)V

    .line 55
    sget-object v0, Landroid/os/HwParcel;->sNativeRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/os/HwParcel;->mNativeContext:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 58
    return-void
.end method

.method private static final native native_init()J
.end method

.method private final native native_setup(Z)V
.end method

.method private final native readBoolVectorAsArray()[Z
.end method

.method private final native readDoubleVectorAsArray()[D
.end method

.method private final native readFloatVectorAsArray()[F
.end method

.method private final native readInt16VectorAsArray()[S
.end method

.method private final native readInt32VectorAsArray()[I
.end method

.method private final native readInt64VectorAsArray()[J
.end method

.method private final native readInt8VectorAsArray()[B
.end method

.method private final native readNativeHandleAsArray()[Landroid/os/NativeHandle;
.end method

.method private final native readStringVectorAsArray()[Ljava/lang/String;
.end method

.method private final native writeBoolVector([Z)V
.end method

.method private final native writeDoubleVector([D)V
.end method

.method private final native writeFloatVector([F)V
.end method

.method private final native writeInt16Vector([S)V
.end method

.method private final native writeInt32Vector([I)V
.end method

.method private final native writeInt64Vector([J)V
.end method

.method private final native writeInt8Vector([B)V
.end method

.method private final native writeNativeHandleVector([Landroid/os/NativeHandle;)V
.end method

.method private final native writeStringVector([Ljava/lang/String;)V
.end method


# virtual methods
.method public final native enforceInterface(Ljava/lang/String;)V
.end method

.method public final native readBool()Z
.end method

.method public final readBoolVector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 444
    invoke-direct {p0}, Landroid/os/HwParcel;->readBoolVectorAsArray()[Z

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([Z)[Ljava/lang/Boolean;

    move-result-object v0

    .line 446
    .local v0, "array":[Ljava/lang/Boolean;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readBuffer(J)Landroid/os/HwBlob;
.end method

.method public final native readDouble()D
.end method

.method public final readDoubleVector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 510
    invoke-direct {p0}, Landroid/os/HwParcel;->readDoubleVectorAsArray()[D

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([D)[Ljava/lang/Double;

    move-result-object v0

    .line 512
    .local v0, "array":[Ljava/lang/Double;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;
.end method

.method public final native readEmbeddedNativeHandle(JJ)Landroid/os/NativeHandle;
.end method

.method public final native readFloat()F
.end method

.method public final readFloatVector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 499
    invoke-direct {p0}, Landroid/os/HwParcel;->readFloatVectorAsArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([F)[Ljava/lang/Float;

    move-result-object v0

    .line 501
    .local v0, "array":[Ljava/lang/Float;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt16()S
.end method

.method public final readInt16Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt16VectorAsArray()[S

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([S)[Ljava/lang/Short;

    move-result-object v0

    .line 468
    .local v0, "array":[Ljava/lang/Short;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt32()I
.end method

.method public final readInt32Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt32VectorAsArray()[I

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([I)[Ljava/lang/Integer;

    move-result-object v0

    .line 479
    .local v0, "array":[Ljava/lang/Integer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt64()J
.end method

.method public final readInt64Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 488
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt64VectorAsArray()[J

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([J)[Ljava/lang/Long;

    move-result-object v0

    .line 490
    .local v0, "array":[Ljava/lang/Long;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readInt8()B
.end method

.method public final readInt8Vector()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 455
    invoke-direct {p0}, Landroid/os/HwParcel;->readInt8VectorAsArray()[B

    move-result-object v0

    invoke-static {v0}, Landroid/os/HwBlob;->wrapArray([B)[Ljava/lang/Byte;

    move-result-object v0

    .line 457
    .local v0, "array":[Ljava/lang/Byte;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public final native readNativeHandle()Landroid/os/NativeHandle;
.end method

.method public final readNativeHandleVector()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/NativeHandle;",
            ">;"
        }
    .end annotation

    .line 530
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/HwParcel;->readNativeHandleAsArray()[Landroid/os/NativeHandle;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final native readString()Ljava/lang/String;
.end method

.method public final readStringVector()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 521
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Landroid/os/HwParcel;->readStringVectorAsArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final native readStrongBinder()Landroid/os/IHwBinder;
.end method

.method public final native release()V
.end method

.method public final native releaseTemporaryStorage()V
.end method

.method public final native send()V
.end method

.method public final native verifySuccess()V
.end method

.method public final native writeBool(Z)V
.end method

.method public final writeBoolVector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 187
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 188
    .local v0, "n":I
    new-array v1, v0, [Z

    .line 189
    .local v1, "array":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 190
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeBoolVector([Z)V

    .line 194
    return-void
.end method

.method public final native writeBuffer(Landroid/os/HwBlob;)V
.end method

.method public final native writeDouble(D)V
.end method

.method public final writeDoubleVector(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 272
    .local v0, "n":I
    new-array v1, v0, [D

    .line 273
    .local v1, "array":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 274
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 277
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeDoubleVector([D)V

    .line 278
    return-void
.end method

.method public final native writeFloat(F)V
.end method

.method public final writeFloatVector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 257
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 258
    .local v0, "n":I
    new-array v1, v0, [F

    .line 259
    .local v1, "array":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 260
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeFloatVector([F)V

    .line 264
    return-void
.end method

.method public final native writeInt16(S)V
.end method

.method public final writeInt16Vector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Short;",
            ">;)V"
        }
    .end annotation

    .line 215
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 216
    .local v0, "n":I
    new-array v1, v0, [S

    .line 217
    .local v1, "array":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 218
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Short;

    invoke-virtual {v3}, Ljava/lang/Short;->shortValue()S

    move-result v3

    aput-short v3, v1, v2

    .line 217
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt16Vector([S)V

    .line 222
    return-void
.end method

.method public final native writeInt32(I)V
.end method

.method public final writeInt32Vector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 229
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 230
    .local v0, "n":I
    new-array v1, v0, [I

    .line 231
    .local v1, "array":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 232
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    .line 231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt32Vector([I)V

    .line 236
    return-void
.end method

.method public final native writeInt64(J)V
.end method

.method public final writeInt64Vector(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 243
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 244
    .local v0, "n":I
    new-array v1, v0, [J

    .line 245
    .local v1, "array":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 246
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 249
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt64Vector([J)V

    .line 250
    return-void
.end method

.method public final native writeInt8(B)V
.end method

.method public final writeInt8Vector(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, "n":I
    new-array v1, v0, [B

    .line 203
    .local v1, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 204
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 203
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v1}, Landroid/os/HwParcel;->writeInt8Vector([B)V

    .line 208
    return-void
.end method

.method public final native writeInterfaceToken(Ljava/lang/String;)V
.end method

.method public final native writeNativeHandle(Landroid/os/NativeHandle;)V
.end method

.method public final writeNativeHandleVector(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/NativeHandle;",
            ">;)V"
        }
    .end annotation

    .line 293
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/NativeHandle;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/NativeHandle;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/NativeHandle;

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeNativeHandleVector([Landroid/os/NativeHandle;)V

    .line 294
    return-void
.end method

.method public final native writeStatus(I)V
.end method

.method public final native writeString(Ljava/lang/String;)V
.end method

.method public final writeStringVector(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 285
    .local p1, "val":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/os/HwParcel;->writeStringVector([Ljava/lang/String;)V

    .line 286
    return-void
.end method

.method public final native writeStrongBinder(Landroid/os/IHwBinder;)V
.end method
