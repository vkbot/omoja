.class Landroid/hardware/radio/RadioManager$ModuleProperties$1;
.super Ljava/lang/Object;
.source "RadioManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$ModuleProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/hardware/radio/RadioManager$ModuleProperties;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;->createFromParcel(Landroid/os/Parcel;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 2
    .param p1, "size"    # I

    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t support this method, just for stub"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 160
    invoke-virtual {p0, p1}, Landroid/hardware/radio/RadioManager$ModuleProperties$1;->newArray(I)[Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p1

    return-object p1
.end method
