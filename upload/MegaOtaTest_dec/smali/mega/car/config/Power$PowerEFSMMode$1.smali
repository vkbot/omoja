.class Lmega/car/config/Power$PowerEFSMMode$1;
.super Ljava/lang/Object;
.source "Power.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Power$PowerEFSMMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lmega/car/config/Power$PowerEFSMMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 554
    invoke-virtual {p0, p1}, Lmega/car/config/Power$PowerEFSMMode$1;->createFromParcel(Landroid/os/Parcel;)Lmega/car/config/Power$PowerEFSMMode;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmega/car/config/Power$PowerEFSMMode;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 557
    new-instance v0, Lmega/car/config/Power$PowerEFSMMode;

    invoke-direct {v0, p1}, Lmega/car/config/Power$PowerEFSMMode;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 554
    invoke-virtual {p0, p1}, Lmega/car/config/Power$PowerEFSMMode$1;->newArray(I)[Lmega/car/config/Power$PowerEFSMMode;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lmega/car/config/Power$PowerEFSMMode;
    .locals 1
    .param p1, "size"    # I

    .line 562
    new-array v0, p1, [Lmega/car/config/Power$PowerEFSMMode;

    return-object v0
.end method
