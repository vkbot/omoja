.class Lcom/android/managedprovisioning/model/DisclaimersParam$1;
.super Ljava/lang/Object;
.source "DisclaimersParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/managedprovisioning/model/DisclaimersParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/managedprovisioning/model/DisclaimersParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/managedprovisioning/model/DisclaimersParam;
    .locals 1

    .line 39
    new-instance p0, Lcom/android/managedprovisioning/model/DisclaimersParam;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/managedprovisioning/model/DisclaimersParam;-><init>(Landroid/os/Parcel;Lcom/android/managedprovisioning/model/DisclaimersParam$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/DisclaimersParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/android/managedprovisioning/model/DisclaimersParam;
    .locals 0

    .line 44
    new-array p0, p1, [Lcom/android/managedprovisioning/model/DisclaimersParam;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/managedprovisioning/model/DisclaimersParam$1;->newArray(I)[Lcom/android/managedprovisioning/model/DisclaimersParam;

    move-result-object p0

    return-object p0
.end method
