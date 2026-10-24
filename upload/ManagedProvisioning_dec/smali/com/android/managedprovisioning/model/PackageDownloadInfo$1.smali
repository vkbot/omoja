.class Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;
.super Ljava/lang/Object;
.source "PackageDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/PackageDownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/managedprovisioning/model/PackageDownloadInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 1

    .line 55
    new-instance p0, Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/model/PackageDownloadInfo;-><init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/managedprovisioning/model/PackageDownloadInfo;
    .locals 0

    .line 60
    new-array p0, p1, [Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/PackageDownloadInfo$1;->newArray(I)[Lcom/android/managedprovisioning/model/PackageDownloadInfo;

    move-result-object p0

    return-object p0
.end method
