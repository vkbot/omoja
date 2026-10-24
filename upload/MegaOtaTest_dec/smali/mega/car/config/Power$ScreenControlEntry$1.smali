.class Lmega/car/config/Power$ScreenControlEntry$1;
.super Ljava/lang/Object;
.source "Power.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Power$ScreenControlEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/config/Power$ScreenControlEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 495
    invoke-virtual {p0, p1}, Lmega/car/config/Power$ScreenControlEntry$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/config/Power$ScreenControlEntry;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/config/Power$ScreenControlEntry;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 498
    new-instance v0, Lmega/car/config/Power$ScreenControlEntry;

    invoke-direct {v0, p1}, Lmega/car/config/Power$ScreenControlEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 495
    invoke-virtual {p0, p1}, Lmega/car/config/Power$ScreenControlEntry$1;->newArray(I)[Lmega/car/config/Power$ScreenControlEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/config/Power$ScreenControlEntry;
    .locals 1
    .param p1, "size"    # I

    .line 503
    new-array v0, p1, [Lmega/car/config/Power$ScreenControlEntry;

    return-object v0
.end method
