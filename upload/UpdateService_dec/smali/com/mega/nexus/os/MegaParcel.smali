.class public Lcom/mega/nexus/os/MegaParcel;
.super Ljava/lang/Object;
.source "MegaParcel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBlob(Landroid/os/Parcel;)[B
    .locals 1
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 11
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    return-object v0
.end method

.method public static writeBlob(Landroid/os/Parcel;[B)V
    .locals 2
    .param p0, "parcel"    # Landroid/os/Parcel;
    .param p1, "b"    # [B

    .line 7
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Parcel;->writeBlob([BII)V

    .line 8
    return-void
.end method
