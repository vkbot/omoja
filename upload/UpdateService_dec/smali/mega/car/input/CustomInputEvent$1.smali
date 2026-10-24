.class Lmega/car/input/CustomInputEvent$1;
.super Ljava/lang/Object;
.source "CustomInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CustomInputEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/input/CustomInputEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lmega/car/input/CustomInputEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/input/CustomInputEvent;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/input/CustomInputEvent;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 161
    new-instance v0, Lmega/car/input/CustomInputEvent;

    invoke-direct {v0, p1}, Lmega/car/input/CustomInputEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lmega/car/input/CustomInputEvent$1;->newArray(I)[Lmega/car/input/CustomInputEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/input/CustomInputEvent;
    .locals 1
    .param p1, "size"    # I

    .line 156
    new-array v0, p1, [Lmega/car/input/CustomInputEvent;

    return-object v0
.end method
