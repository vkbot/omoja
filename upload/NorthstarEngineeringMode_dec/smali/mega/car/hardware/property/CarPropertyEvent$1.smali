.class Lmega/car/hardware/property/CarPropertyEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/hardware/property/CarPropertyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
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
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/hardware/property/CarPropertyEvent;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/hardware/property/CarPropertyEvent;
    .locals 1

    .line 2
    new-instance p0, Lmega/car/hardware/property/CarPropertyEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmega/car/hardware/property/CarPropertyEvent;-><init>(Landroid/os/Parcel;Lmega/car/hardware/property/CarPropertyEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmega/car/hardware/property/CarPropertyEvent$1;->newArray(I)[Lmega/car/hardware/property/CarPropertyEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmega/car/hardware/property/CarPropertyEvent;
    .locals 0

    .line 2
    new-array p0, p1, [Lmega/car/hardware/property/CarPropertyEvent;

    return-object p0
.end method
