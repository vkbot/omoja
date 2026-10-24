.class public abstract Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;
.super Landroid/os/Binder;
.source "IRunningTaskChangeListener.java"

# interfaces
.implements Lcom/mega/nexus/app/IRunningTaskChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/nexus/app/IRunningTaskChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.mega.nexus.app.IRunningTaskChangeListener"

.field static final TRANSACTION_onTaskAppeared:I = 0x1

.field static final TRANSACTION_onTaskInfoChanged:I = 0x3

.field static final TRANSACTION_onTaskVanished:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 49
    const-string v0, "com.mega.nexus.app.IRunningTaskChangeListener"

    invoke-virtual {p0, p0, v0}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mega/nexus/app/IRunningTaskChangeListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 57
    if-nez p0, :cond_0

    .line 58
    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_0
    const-string v0, "com.mega.nexus.app.IRunningTaskChangeListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 61
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/mega/nexus/app/IRunningTaskChangeListener;

    if-eqz v1, :cond_1

    .line 62
    move-object v1, v0

    check-cast v1, Lcom/mega/nexus/app/IRunningTaskChangeListener;

    return-object v1

    .line 64
    :cond_1
    new-instance v1, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mega/nexus/app/IRunningTaskChangeListener;
    .locals 1

    .line 252
    sget-object v0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mega/nexus/app/IRunningTaskChangeListener;)Z
    .locals 2
    .param p0, "impl"    # Lcom/mega/nexus/app/IRunningTaskChangeListener;

    .line 242
    sget-object v0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    if-nez v0, :cond_1

    .line 245
    if-eqz p0, :cond_0

    .line 246
    sput-object p0, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub$Proxy;->sDefaultImpl:Lcom/mega/nexus/app/IRunningTaskChangeListener;

    .line 247
    const/4 v0, 0x1

    return v0

    .line 249
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 68
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

    .line 72
    const-string v0, "com.mega.nexus.app.IRunningTaskChangeListener"

    .line 73
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 128
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 77
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    return v1

    .line 115
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 118
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .local v2, "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    goto :goto_0

    .line 121
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    const/4 v2, 0x0

    .line 123
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 124
    return v1

    .line 102
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 105
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    goto :goto_1

    .line 108
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_4
    const/4 v2, 0x0

    .line 110
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 111
    return v1

    .line 82
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_6

    .line 85
    sget-object v2, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    goto :goto_2

    .line 88
    .end local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_6
    const/4 v2, 0x0

    .line 91
    .restart local v2    # "_arg0":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 92
    sget-object v3, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl;

    .local v3, "_arg1":Landroid/view/SurfaceControl;
    goto :goto_3

    .line 95
    .end local v3    # "_arg1":Landroid/view/SurfaceControl;
    :cond_7
    const/4 v3, 0x0

    .line 97
    .restart local v3    # "_arg1":Landroid/view/SurfaceControl;
    :goto_3
    invoke-virtual {p0, v2, v3}, Lcom/mega/nexus/app/IRunningTaskChangeListener$Stub;->onTaskAppeared(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;)V

    .line 98
    return v1
.end method
