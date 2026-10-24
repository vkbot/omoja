.class public abstract Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;
.super Landroid/os/Binder;
.source "IVoiceInteractionSessionShowCallback.java"

# interfaces
.implements Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceInteractionSessionShowCallback"

.field static final TRANSACTION_onFailed:I = 0x1

.field static final TRANSACTION_onShown:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionShowCallback"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_0

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_0
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionShowCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    if-eqz v1, :cond_1

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    return-object v1

    .line 43
    :cond_1
    new-instance v1, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .locals 1

    .line 140
    sget-object v0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 130
    sget-object v0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    if-nez v0, :cond_1

    .line 133
    if-eqz p0, :cond_0

    .line 134
    sput-object p0, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub$Proxy;->sDefaultImpl:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    .line 135
    const/4 v0, 0x1

    return v0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "com.android.internal.app.IVoiceInteractionSessionShowCallback"

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 56
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v1

    .line 67
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->onShown()V

    .line 69
    return v1

    .line 61
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback$Stub;->onFailed()V

    .line 63
    return v1
.end method
