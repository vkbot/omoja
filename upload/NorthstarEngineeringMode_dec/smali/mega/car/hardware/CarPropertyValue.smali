.class public Lmega/car/hardware/CarPropertyValue;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field private mStatus:I

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

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lmega/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    new-instance v0, Lmega/car/hardware/CarPropertyValue$1;

    invoke-direct {v0}, Lmega/car/hardware/CarPropertyValue$1;-><init>()V

    sput-object v0, Lmega/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJTT;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    iput p1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    iput p2, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    iput p3, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    iput-wide p4, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    iput-object p6, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lmega/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lmega/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_0
    const-class v1, Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-class v2, Ljava/lang/String;

    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    invoke-static {p1}, Lb1/a;->q(Landroid/os/Parcel;)[B

    move-result-object v1

    .line 13
    new-instance v2, Ljava/lang/String;

    sget-object v3, Lmega/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v2, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-class v2, [B

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-static {p1}, Lb1/a;->q(Landroid/os/Parcel;)[B

    move-result-object v1

    iput-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    .line 17
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    const-class v0, Lmega/car/hardware/CarPropertyValue;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    return-void

    .line 19
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Class not found: "

    .line 20
    invoke-static {p1, v1}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final decodeMgrId(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    return p0
.end method

.method public static deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_b

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    check-cast p0, [Ljava/lang/Byte;

    check-cast p1, [Ljava/lang/Byte;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_4

    check-cast p0, [Ljava/lang/Short;

    check-cast p1, [Ljava/lang/Short;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_5

    check-cast p0, [Ljava/lang/Integer;

    check-cast p1, [Ljava/lang/Integer;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_6

    check-cast p0, [Ljava/lang/Long;

    check-cast p1, [Ljava/lang/Long;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    const-class v1, Ljava/nio/charset/Charset;

    if-ne v0, v1, :cond_7

    check-cast p0, [Ljava/nio/charset/Charset;

    check-cast p1, [Ljava/nio/charset/Charset;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_8

    check-cast p0, [Ljava/lang/Float;

    check-cast p1, [Ljava/lang/Float;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_8
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_9

    check-cast p0, [Ljava/lang/Double;

    check-cast p1, [Ljava/lang/Double;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_a

    check-cast p0, [Ljava/lang/Boolean;

    check-cast p1, [Ljava/lang/Boolean;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    invoke-static {p0, p1}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static stringOf(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_2

    check-cast p0, [Ljava/lang/Byte;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_3

    check-cast p0, [Ljava/lang/Short;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_4

    check-cast p0, [Ljava/lang/Integer;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    check-cast p0, [Ljava/lang/Long;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const-class v1, Ljava/nio/charset/Charset;

    if-ne v0, v1, :cond_6

    check-cast p0, [Ljava/nio/charset/Charset;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_7

    check-cast p0, [Ljava/lang/Float;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_8

    check-cast p0, [Ljava/lang/Double;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_9

    check-cast p0, [Ljava/lang/Boolean;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_a

    check-cast p0, [B

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_b

    check-cast p0, [S

    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    check-cast p0, [I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_c
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_d

    check-cast p0, [J

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_e

    check-cast p0, [C

    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_f

    check-cast p0, [F

    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_10

    check-cast p0, [D

    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_11

    check-cast p0, [Z

    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmega/car/hardware/CarPropertyValue;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lmega/car/hardware/CarPropertyValue;

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    iget v3, p1, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    iget v3, p1, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    iget v3, p1, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    iget-boolean v3, p1, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    iget-object v3, p1, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    invoke-static {v1, v3}, Lmega/car/hardware/CarPropertyValue;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    iget-object p1, p1, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getAreaId()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    return p0
.end method

.method public getExtension()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    return-object p0
.end method

.method public getPropertyId()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    return p0
.end method

.method public getRelative()Z
    .locals 0

    iget-boolean p0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    return p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    return p0
.end method

.method public getTimestamp()J
    .locals 2

    iget-wide v0, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 7

    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    iget-boolean v0, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setExtension(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    return-void
.end method

.method public setRelative(Z)V
    .locals 0

    iput-boolean p1, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarPropertyValue{id=0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", area=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

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

    iget-object p0, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    invoke-static {p0}, Lmega/car/hardware/CarPropertyValue;->stringOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lmega/car/hardware/CarPropertyValue;->mPropertyId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/hardware/CarPropertyValue;->mAreaId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/hardware/CarPropertyValue;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmega/car/hardware/CarPropertyValue;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lmega/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-static {p1, p2}, Lb1/a;->B(Landroid/os/Parcel;[B)V

    goto :goto_2

    :cond_2
    const-class v0, [B

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, [B

    invoke-static {p1, p2}, Lb1/a;->B(Landroid/os/Parcel;[B)V

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lmega/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :goto_2
    iget-boolean p2, p0, Lmega/car/hardware/CarPropertyValue;->mRelative:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lmega/car/hardware/CarPropertyValue;->mExtension:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
