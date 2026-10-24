.class public Lmega/car/hardware/CarPropertyValue;
.super Ljava/lang/Object;
.source "CarPropertyValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/CarPropertyValue$PropertyStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/hardware/CarPropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final MGR_ID_BIT_MASK:I = -0x1000000

.field public static final MGR_ID_BIT_OFFSET:I = 0x18

.field public static final STATUS_AVAILABLE:I = 0x0

.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_NO_VALID:I = 0x3

.field public static final STATUS_UNAVAILABLE:I = 0x1


# instance fields
.field private final mAreaId:I

.field private mExtension:Ljava/lang/Object;

.field private final mPropertyId:I

.field private mRelative:Z

.field private final mStatus:I

.field private final mTimestamp:J

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lmega/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 170
    new-instance v0, Lmega/car/hardware/CarPropertyValue$1;

    invoke-direct {v0}, Lmega/car/hardware/CarPropertyValue$1;-><init>()V

    sput-object v0, Lmega/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJLjava/lang/Object;)V
    .locals 1
    .param p1, "propertyId"    # I
    .param p2, "areaId"    # I
    .param p3, "status"    # I
    .param p4, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJTT;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    .local p6, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    .line 102
    iput p1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 103
    iput p2, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    .line 104
    iput p3, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    .line 105
    iput-wide p4, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    .line 106
    iput-object p6, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 7
    .param p1, "propertyId"    # I
    .param p2, "areaId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lmega/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 90
    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7
    .param p1, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lmega/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 115
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "valueClassName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 125
    :try_start_0
    const-class v2, Ljava/lang/Object;

    .local v2, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 127
    .end local v2    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .restart local v2    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    nop

    .line 133
    const-class v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    invoke-static {p1}, Lcom/mega/nexus/os/MegaParcel;->readBlob(Landroid/os/Parcel;)[B

    move-result-object v3

    .line 135
    .local v3, "bytes":[B
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lmega/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v4, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    .line 136
    .end local v3    # "bytes":[B
    goto :goto_1

    :cond_1
    const-class v3, [B

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 137
    invoke-static {p1}, Lcom/mega/nexus/os/MegaParcel;->readBlob(Landroid/os/Parcel;)[B

    move-result-object v3

    iput-object v3, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    .line 141
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    .line 142
    const-class v0, Lmega/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    .line 143
    return-void

    .line 129
    .end local v2    # "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static final decodeMgrId(I)I
    .locals 1
    .param p0, "propid"    # I

    .line 167
    shr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "e1"    # Ljava/lang/Object;
    .param p1, "e2"    # Ljava/lang/Object;

    .line 277
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 278
    return v0

    .line 279
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    return v0

    .line 281
    :cond_1
    if-eqz p0, :cond_b

    if-nez p1, :cond_2

    goto/16 :goto_0

    .line 284
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 285
    .local v0, "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 287
    .local v1, "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Byte;

    if-ne v0, v2, :cond_3

    .line 288
    move-object v2, p0

    check-cast v2, [Ljava/lang/Byte;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Byte;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 289
    :cond_3
    const-class v2, Ljava/lang/Short;

    if-ne v0, v2, :cond_4

    .line 290
    move-object v2, p0

    check-cast v2, [Ljava/lang/Short;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Short;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 291
    :cond_4
    const-class v2, Ljava/lang/Integer;

    if-ne v0, v2, :cond_5

    .line 292
    move-object v2, p0

    check-cast v2, [Ljava/lang/Integer;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Integer;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 293
    :cond_5
    const-class v2, Ljava/lang/Long;

    if-ne v0, v2, :cond_6

    .line 294
    move-object v2, p0

    check-cast v2, [Ljava/lang/Long;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Long;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 295
    :cond_6
    const-class v2, Ljava/nio/charset/Charset;

    if-ne v0, v2, :cond_7

    .line 296
    move-object v2, p0

    check-cast v2, [Ljava/nio/charset/Charset;

    move-object v3, p1

    check-cast v3, [Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 297
    :cond_7
    const-class v2, Ljava/lang/Float;

    if-ne v0, v2, :cond_8

    .line 298
    move-object v2, p0

    check-cast v2, [Ljava/lang/Float;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Float;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 299
    :cond_8
    const-class v2, Ljava/lang/Double;

    if-ne v0, v2, :cond_9

    .line 300
    move-object v2, p0

    check-cast v2, [Ljava/lang/Double;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Double;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 301
    :cond_9
    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_a

    .line 302
    move-object v2, p0

    check-cast v2, [Ljava/lang/Boolean;

    move-object v3, p1

    check-cast v3, [Ljava/lang/Boolean;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 304
    :cond_a
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 282
    .end local v0    # "cl1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cl2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_b
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static stringOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    .line 309
    if-nez p0, :cond_0

    .line 310
    const-string v0, "null"

    return-object v0

    .line 312
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 314
    .local v0, "clo":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 315
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 316
    :cond_1
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    .line 317
    move-object v1, p0

    check-cast v1, [Ljava/lang/Byte;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 318
    :cond_2
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_3

    .line 319
    move-object v1, p0

    check-cast v1, [Ljava/lang/Short;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 320
    :cond_3
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_4

    .line 321
    move-object v1, p0

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 322
    :cond_4
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    .line 323
    move-object v1, p0

    check-cast v1, [Ljava/lang/Long;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 324
    :cond_5
    const-class v1, Ljava/nio/charset/Charset;

    if-ne v0, v1, :cond_6

    .line 325
    move-object v1, p0

    check-cast v1, [Ljava/nio/charset/Charset;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 326
    :cond_6
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_7

    .line 327
    move-object v1, p0

    check-cast v1, [Ljava/lang/Float;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 328
    :cond_7
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_8

    .line 329
    move-object v1, p0

    check-cast v1, [Ljava/lang/Double;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 330
    :cond_8
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_9

    .line 331
    move-object v1, p0

    check-cast v1, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 332
    :cond_9
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    .line 333
    move-object v1, p0

    check-cast v1, [B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 334
    :cond_a
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    .line 335
    move-object v1, p0

    check-cast v1, [S

    invoke-static {v1}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 336
    :cond_b
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    .line 337
    move-object v1, p0

    check-cast v1, [I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 338
    :cond_c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    .line 339
    move-object v1, p0

    check-cast v1, [J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 340
    :cond_d
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    .line 341
    move-object v1, p0

    check-cast v1, [C

    invoke-static {v1}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 342
    :cond_e
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    .line 343
    move-object v1, p0

    check-cast v1, [F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 344
    :cond_f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    .line 345
    move-object v1, p0

    check-cast v1, [D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 346
    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    .line 347
    move-object v1, p0

    check-cast v1, [Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 349
    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 184
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 148
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 149
    :cond_0
    instance-of v1, p1, Lmega/car/hardware/CarPropertyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 150
    :cond_1
    move-object v1, p1

    check-cast v1, Lmega/car/hardware/CarPropertyValue;

    .line 151
    .local v1, "value":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<*>;"
    iget v3, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    iget v4, v1, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    iget v4, v1, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    iget v4, v1, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    if-ne v3, v4, :cond_2

    iget-boolean v3, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    iget-boolean v4, v1, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    iget-object v4, v1, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    .line 156
    invoke-static {v3, v4}, Lmega/car/hardware/CarPropertyValue;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    iget-object v4, v1, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    .line 157
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 151
    :goto_0
    return v0
.end method

.method public getAreaId()I
    .locals 1

    .line 220
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    return v0
.end method

.method public getExtension()Ljava/lang/Object;
    .locals 1

    .line 259
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertyId()I
    .locals 1

    .line 213
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    return v0
.end method

.method public getRelative()Z
    .locals 1

    .line 251
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 228
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 235
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget-wide v0, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 162
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 162
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setExtension(Ljava/lang/Object;)V
    .locals 0
    .param p1, "extension"    # Ljava/lang/Object;

    .line 255
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iput-object p1, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public setRelative(Z)V
    .locals 0
    .param p1, "relative"    # Z

    .line 247
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iput-boolean p1, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 264
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPropertyValue{id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 265
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", area=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    .line 266
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    .line 268
    invoke-static {v1}, Lmega/car/hardware/CarPropertyValue;->stringOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", relative="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    .line 271
    invoke-static {v1}, Lmega/car/hardware/CarPropertyValue;->stringOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 189
    .local p0, "this":Lmega/car/hardware/CarPropertyValue;, "Lmega/car/hardware/CarPropertyValue<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-wide v0, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 194
    iget-object v0, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 195
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 199
    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lmega/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mega/nexus/os/MegaParcel;->writeBlob(Landroid/os/Parcel;[B)V

    goto :goto_2

    .line 200
    :cond_2
    const-class v1, [B

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {p1, v1}, Lcom/mega/nexus/os/MegaParcel;->writeBlob(Landroid/os/Parcel;[B)V

    goto :goto_2

    .line 203
    :cond_3
    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 205
    :goto_2
    iget-boolean v1, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 207
    return-void
.end method
