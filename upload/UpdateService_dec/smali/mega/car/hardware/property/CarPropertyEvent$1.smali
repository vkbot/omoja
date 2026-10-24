.class Lmega/car/hardware/property/CarPropertyEvent$1;
.super Ljava/lang/Object;
.source "CarPropertyEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/CarPropertyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/hardware/property/CarPropertyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/hardware/property/CarPropertyEvent;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/hardware/property/CarPropertyEvent;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 49
    new-instance v0, Lmega/car/hardware/property/CarPropertyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmega/car/hardware/property/CarPropertyEvent;-><init>(Landroid/os/Parcel;Lmega/car/hardware/property/CarPropertyEvent$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyEvent$1;->newArray(I)[Lmega/car/hardware/property/CarPropertyEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/hardware/property/CarPropertyEvent;
    .locals 1
    .param p1, "size"    # I

    .line 53
    new-array v0, p1, [Lmega/car/hardware/property/CarPropertyEvent;

    return-object v0
.end method
