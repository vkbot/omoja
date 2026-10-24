.class public Lmega/car/config/Power$PowerEFSMMode;
.super Ljava/lang/Object;
.source "Power.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/car/config/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerEFSMMode"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmega/car/config/Power$PowerEFSMMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 554
    new-instance v0, Lmega/car/config/Power$PowerEFSMMode$1;

    invoke-direct {v0}, Lmega/car/config/Power$PowerEFSMMode$1;-><init>()V

    sput-object v0, Lmega/car/config/Power$PowerEFSMMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 550
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/car/config/Power$PowerEFSMMode;->mode:Ljava/lang/String;

    .line 552
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 568
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 573
    iget-object v0, p0, Lmega/car/config/Power$PowerEFSMMode;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    return-void
.end method
