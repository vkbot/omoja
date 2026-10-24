.class public abstract Lcom/android/internal/car/ICarServiceHelper$Stub;
.super Landroid/os/Binder;
.source "ICarServiceHelper.java"

# interfaces
.implements Lcom/android/internal/car/ICarServiceHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/car/ICarServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.car.ICarServiceHelper"

.field static final TRANSACTION_forceSuspend:I = 0x1

.field static final TRANSACTION_setDisplayWhitelistForUser:I = 0x2

.field static final TRANSACTION_setPassengerDisplays:I = 0x3

.field static final TRANSACTION_setSourcePreferredComponents:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.android.internal.car.ICarServiceHelper"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/car/ICarServiceHelper$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/car/ICarServiceHelper;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 63
    :cond_0
    const-string v0, "com.android.internal.car.ICarServiceHelper"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/car/ICarServiceHelper;

    if-eqz v1, :cond_1

    .line 65
    move-object v1, v0

    check-cast v1, Lcom/android/internal/car/ICarServiceHelper;

    return-object v1

    .line 67
    :cond_1
    new-instance v1, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/car/ICarServiceHelper;
    .locals 1

    .line 258
    sget-object v0, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/car/ICarServiceHelper;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/car/ICarServiceHelper;)Z
    .locals 2
    .param p0, "impl"    # Lcom/android/internal/car/ICarServiceHelper;

    .line 248
    sget-object v0, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/car/ICarServiceHelper;

    if-nez v0, :cond_1

    .line 251
    if-eqz p0, :cond_0

    .line 252
    sput-object p0, Lcom/android/internal/car/ICarServiceHelper$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/car/ICarServiceHelper;

    .line 253
    const/4 v0, 0x1

    return v0

    .line 255
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 71
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    const-string v0, "com.android.internal.car.ICarServiceHelper"

    .line 76
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 80
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return v1

    .line 115
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 119
    .local v2, "_arg0":Z
    :goto_0
    sget-object v3, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 120
    .local v3, "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/car/ICarServiceHelper$Stub;->setSourcePreferredComponents(ZLjava/util/List;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v1

    .line 106
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 109
    .local v2, "_arg0":[I
    invoke-virtual {p0, v2}, Lcom/android/internal/car/ICarServiceHelper$Stub;->setPassengerDisplays([I)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v1

    .line 95
    .end local v2    # "_arg0":[I
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 99
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 100
    .local v3, "_arg1":[I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/car/ICarServiceHelper$Stub;->setDisplayWhitelistForUser(I[I)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    return v1

    .line 85
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[I
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 88
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/car/ICarServiceHelper$Stub;->forceSuspend(I)I

    move-result v3

    .line 89
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return v1
.end method
