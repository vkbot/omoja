.class Lcom/android/managedprovisioning/model/ProvisioningParams$1;
.super Ljava/lang/Object;
.source "ProvisioningParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/ProvisioningParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/managedprovisioning/model/ProvisioningParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 1

    .line 140
    new-instance p0, Lcom/android/managedprovisioning/model/ProvisioningParams;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/model/ProvisioningParams;-><init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/ProvisioningParams$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/managedprovisioning/model/ProvisioningParams;
    .locals 0

    .line 145
    new-array p0, p1, [Lcom/android/managedprovisioning/model/ProvisioningParams;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/ProvisioningParams$1;->newArray(I)[Lcom/android/managedprovisioning/model/ProvisioningParams;

    move-result-object p0

    return-object p0
.end method
