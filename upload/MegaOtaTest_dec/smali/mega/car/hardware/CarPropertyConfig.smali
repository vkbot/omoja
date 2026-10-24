.class public Lmega/car/hardware/CarPropertyConfig;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"

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

.field private final mMaxSampleRate:F

.field private final mMinSampleRate:F

.field private final mPropertyId:I

.field private final mSupportedAreas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;"
        }
    .end annotation
.end field

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

    .line 216
    new-instance v0, Lmega/car/hardware/CarPropertyConfig$1;

    invoke-direct {v0}, Lmega/car/hardware/CarPropertyConfig$1;-><init>()V

    sput-object v0, Lmega/car/hardware/CarPropertyConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;)V
    .locals 0
    .param p1, "access"    # I
    .param p2, "changeMode"    # I
    .param p3, "configString"    # Ljava/lang/String;
    .param p4, "maxSampleRate"    # F
    .param p5, "minSampleRate"    # F
    .param p6, "propertyId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "FFI",
            "Landroid/util/SparseArray<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    .local p7, "supportedAreas":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmega/car/hardware/CarPropertyConfig$AreaConfig;>;"
    .local p8, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput p1, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    .line 46
    iput p2, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    .line 47
    iput-object p3, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    .line 48
    iput p4, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    .line 49
    iput p5, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    .line 50
    iput p6, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    .line 51
    iput-object p7, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    .line 52
    iput-object p8, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/util/SparseArray;
    .param p8, "x7"    # Ljava/lang/Class;
    .param p9, "x8"    # Lmega/car/hardware/CarPropertyConfig$1;

    .line 26
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    invoke-direct/range {p0 .. p8}, Lmega/car/hardware/CarPropertyConfig;-><init>(IILjava/lang/String;FFILandroid/util/SparseArray;Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 194
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 202
    .local v0, "areaSize":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .local v2, "areaId":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    .line 206
    .local v3, "area":Lmega/car/hardware/CarPropertyConfig$AreaConfig;
    iget-object v4, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    .end local v2    # "areaId":I
    .end local v3    # "area":Lmega/car/hardware/CarPropertyConfig$AreaConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Class not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmega/car/hardware/CarPropertyConfig$1;

    .line 26
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    invoke-direct {p0, p1}, Lmega/car/hardware/CarPropertyConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static newBuilder(Ljava/lang/Class;II)Lmega/car/hardware/CarPropertyConfig$Builder;
    .locals 2
    .param p1, "propertyId"    # I
    .param p2, "areaCapacity"    # I
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

    .line 315
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lmega/car/hardware/CarPropertyConfig$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, p0, v1}, Lmega/car/hardware/CarPropertyConfig$Builder;-><init>(IILjava/lang/Class;Lmega/car/hardware/CarPropertyConfig$1;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 174
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaCount()I
    .locals 1

    .line 83
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getAreaIds()[I
    .locals 3

    .line 107
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 108
    .local v0, "areaIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 109
    iget-object v2, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getChangeMode()I
    .locals 1

    .line 157
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    return v0
.end method

.method public getConfigString()Ljava/lang/String;
    .locals 1

    .line 161
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSampleRate()F
    .locals 1

    .line 165
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 153
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmega/car/hardware/CarPropertyConfig;->getMaxValue(I)F

    move-result v0

    return v0
.end method

.method public getMaxValue(I)F
    .locals 2
    .param p1, "areaId"    # I

    .line 144
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    .line 145
    .local v0, "area":Lmega/car/hardware/CarPropertyConfig$AreaConfig;
    if-nez v0, :cond_0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->getMaxValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getMinSampleRate()F
    .locals 1

    .line 169
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 136
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmega/car/hardware/CarPropertyConfig;->getMinValue(I)F

    move-result v0

    return v0
.end method

.method public getMinValue(I)F
    .locals 2
    .param p1, "areaId"    # I

    .line 127
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;

    .line 128
    .local v0, "area":Lmega/car/hardware/CarPropertyConfig$AreaConfig;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->getMinValue()F

    move-result v1

    :goto_0
    return v1
.end method

.method public getPropertyId()I
    .locals 1

    .line 71
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    return v0
.end method

.method public getPropertyType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .line 75
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    return-object v0
.end method

.method public hasArea(I)Z
    .locals 1
    .param p1, "areaId"    # I

    .line 119
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalProperty()Z
    .locals 1

    .line 79
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    invoke-virtual {p0}, Lmega/car/hardware/CarPropertyConfig;->getAreaCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 230
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarPropertyConfig{mPropertyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 179
    .local p0, "this":Lmega/car/hardware/CarPropertyConfig;, "Lmega/car/hardware/CarPropertyConfig<TT;>;"
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mAccess:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mChangeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mConfigString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMaxSampleRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 183
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mMinSampleRate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 184
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig;->mPropertyId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 187
    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v1, p0, Lmega/car/hardware/CarPropertyConfig;->mSupportedAreas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lmega/car/hardware/CarPropertyConfig;->mType:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    return-void
.end method
