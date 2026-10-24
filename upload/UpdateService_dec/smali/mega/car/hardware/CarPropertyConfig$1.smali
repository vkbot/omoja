.class Lmega/car/hardware/CarPropertyConfig$1;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/CarPropertyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/hardware/CarPropertyConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lmega/car/hardware/CarPropertyConfig$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/hardware/CarPropertyConfig;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/hardware/CarPropertyConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 219
    new-instance v0, Lmega/car/hardware/CarPropertyConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmega/car/hardware/CarPropertyConfig;-><init>(Landroid/os/Parcel;Lmega/car/hardware/CarPropertyConfig$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 216
    invoke-virtual {p0, p1}, Lmega/car/hardware/CarPropertyConfig$1;->newArray(I)[Lmega/car/hardware/CarPropertyConfig;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/hardware/CarPropertyConfig;
    .locals 1
    .param p1, "size"    # I

    .line 224
    new-array v0, p1, [Lmega/car/hardware/CarPropertyConfig;

    return-object v0
.end method
