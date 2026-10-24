.class public Lmega/car/hardware/CarPropertyConfig$AreaConfig;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/CarPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AreaConfig"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/hardware/CarPropertyConfig$AreaConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAreaId:I

.field private final mMaxValue:F

.field private final mMinValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Lmega/car/hardware/CarPropertyConfig$AreaConfig$1;

    invoke-direct {v0}, Lmega/car/hardware/CarPropertyConfig$AreaConfig$1;-><init>()V

    sput-object v0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 0
    .param p1, "areaId"    # I
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    .line 253
    iput p2, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    .line 254
    iput p3, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    .line 255
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    .line 262
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmega/car/hardware/CarPropertyConfig$1;

    .line 246
    invoke-direct {p0, p1}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public getAreaId()I
    .locals 1

    .line 265
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    return v0
.end method

.method public getMaxValue()F
    .locals 1

    .line 275
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    return v0
.end method

.method public getMinValue()F
    .locals 1

    .line 270
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarAreaConfig{mAreaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mMinValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 299
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    return-void
.end method
