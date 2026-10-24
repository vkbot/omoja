.class public Lmega/car/hardware/CarPropertyConfig$AreaConfig;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mMinValue:F
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmega/car/hardware/CarPropertyConfig$AreaConfig$1;

    invoke-direct {v0}, Lmega/car/hardware/CarPropertyConfig$AreaConfig$1;-><init>()V

    sput-object v0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    iput p2, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    iput p3, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Lmega/car/hardware/CarPropertyConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lmega/car/hardware/CarPropertyConfig$AreaConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAreaId()I
    .locals 0

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    return p0
.end method

.method public getMaxValue()F
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    return p0
.end method

.method public getMinValue()F
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarAreaConfig{mAreaId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mMinValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mAreaId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMinValue:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p0, p0, Lmega/car/hardware/CarPropertyConfig$AreaConfig;->mMaxValue:F

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
