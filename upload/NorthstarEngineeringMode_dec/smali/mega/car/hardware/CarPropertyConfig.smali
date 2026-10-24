.class public Lmega/car/hardware/CarPropertyConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmega/car/hardware/CarPropertyConfig$Builder;,
        Lmega/car/hardware/CarPropertyConfig$AreaConfig;,
        Lmega/car/hardware/CarPropertyConfig$VehiclePropertyChangeModeType;
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
            "Lmega/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final VEHICLE_PROPERTY_CHANGE_MODE_CONTINUOUS:I = 0x2

.field public static final VEHICLE_PROPERTY_CHANGE_MODE_ONCHANGE:I = 0x1

.field public static final VEHICLE_PROPERTY_CHANGE_MODE_STATIC:I


# instance fields
.field private final mAccess:I

.field private final mChangeMode:I

.field private final mConfigString:Ljava/lang/String;

.field private mIsSerializable:Z

.field private final mMaxSampleRate:F

.field private final mMinSampleRate:F

.field private mName:Ljava/lang/String;

.field private final mPropertyId:I

.field private mPublish:Ljava/lang/String;

.field private mSource:I

.field private mSubscribe:Ljava/lang/String;

.field private final mSupportedAreas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mTopic:Ljava/lang/String;

.field private final mType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmega/car/hardware/CarPropertyConfig$1;

    invoke-direct {v0}, Lmega/car/hardware/CarPropertyConfig$1;-><init>()V

    sput-object v0, Lmega/car/hardware/CarPropertyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "FFI",
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    iput p2, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    iput-object p3, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    iput p4, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    iput p5, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    iput p6, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    iput-object p7, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    iput-object p8, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    iput-boolean p9, p0, Lmega/car/hardware/CarPropertyConfig;->mIsSerializable:Z

    iput-object p10, p0, Lmega/car/hardware/CarPropertyConfig;->mTopic:Ljava/lang/String;

    iput-object p11, p0, Lmega/car/hardware/CarPropertyConfig;->mSubscribe:Ljava/lang/String;

    iput-object p12, p0, Lmega/car/hardware/CarPropertyConfig;->mPublish:Ljava/lang/String;

    iput p13, p0, Lmega/car/hardware/CarPropertyConfig;->mSource:I

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p13}, Lmega/car/hardware/CarPropertyConfig;-><init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 12
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    iget-object v4, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lmega/car/hardware/CarPropertyConfig;->mIsSerializable:Z

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSource:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig;->mName:Ljava/lang/String;

    return-void

    .line 21
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Class not found: "

    .line 22
    invoke-static {p1, v0}, Landroidx/activity/result/a;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmega/car/hardware/CarPropertyConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;II)",
            "Lmega/car/hardware/CarPropertyConfig$Builder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lmega/car/hardware/CarPropertyConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p0, v1}, Lmega/car/hardware/CarPropertyConfig$Builder;-><init>(IILjava/lang/Class;Lmega/car/hardware/CarPropertyConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAreaCount()I
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public getAreaIds()[I
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getChangeMode()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    return p0
.end method

.method public getConfigString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxSampleRate()F
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    return p0
.end method

.method public getMaxValue()F
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmega/car/hardware/CarPropertyConfig;->getMaxValue(I)F

    move-result p0

    return p0
.end method

.method public getMaxValue(I)F
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    if-nez p0, :cond_0

    const p0, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->getMaxValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getMinSampleRate()F
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    return p0
.end method

.method public getMinValue()F
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmega/car/hardware/CarPropertyConfig;->getMinValue(I)F

    move-result p0

    return p0
.end method

.method public getMinValue(I)F
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    .line 1
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->getMinValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPropertyId()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    return p0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    return-object p0
.end method

.method public getPublish()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mPublish:Ljava/lang/String;

    return-object p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSource:I

    return p0
.end method

.method public getSubscribe()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSubscribe:Ljava/lang/String;

    return-object p0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mTopic:Ljava/lang/String;

    return-object p0
.end method

.method public hasArea(I)Z
    .locals 0

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGlobalProperty()Z
    .locals 0

    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyConfig;->getAreaCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSerializable()Z
    .locals 0

    iget-boolean p0, p0, Lmega/car/hardware/CarPropertyConfig;->mIsSerializable:Z

    return p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmega/car/hardware/CarPropertyConfig;->mName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarPropertyConfig{mPropertyId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChangeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMinSampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSupportedAreas="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSerializable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lmega/car/hardware/CarPropertyConfig;->mIsSerializable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTopic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mTopic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubscribe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSubscribe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPublish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mPublish:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig;->mSource:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lmega/car/hardware/CarPropertyConfig;->mIsSerializable:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Lmega/car/hardware/CarPropertyConfig;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lmega/car/hardware/CarPropertyConfig;->mName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
