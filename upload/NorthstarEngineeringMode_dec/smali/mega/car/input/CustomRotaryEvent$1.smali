.class Lmega/car/input/CustomRotaryEvent$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/input/CustomRotaryEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/input/CustomRotaryEvent;",
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
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lmega/car/input/CustomRotaryEvent$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/input/CustomRotaryEvent;

    move-result-object p0

    return-object p0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/input/CustomRotaryEvent;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance p0, Lmega/car/input/CustomRotaryEvent;

    invoke-direct {p0, p1}, Lmega/car/input/CustomRotaryEvent;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmega/car/input/CustomRotaryEvent$1;->newArray(I)[Lmega/car/input/CustomRotaryEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lmega/car/input/CustomRotaryEvent;
    .locals 0

    .line 2
    new-array p0, p1, [Lmega/car/input/CustomRotaryEvent;

    return-object p0
.end method
