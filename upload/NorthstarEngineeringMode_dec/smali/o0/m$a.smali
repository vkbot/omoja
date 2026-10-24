.class public abstract Lo0/m$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lo0/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "com.mega.carlink.IConnectStatusListener"

    if-eq p1, v0, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    check-cast p0, Lo0/d$c;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConnectStatusChange ==> deviceId=="

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state=="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "CarLinkDeviceManager"

    invoke-static {v1, p4}, Lmega/log/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p4

    const/16 v1, 0x601

    iput v1, p4, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    iput v1, p4, Landroid/os/Message;->arg1:I

    iput-object p1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, p4, Landroid/os/Message;->arg2:I

    iget-object p0, p0, Lo0/d$c;->a:Lo0/d;

    iget-object p0, p0, Lo0/d;->f:Landroid/os/Handler;

    invoke-virtual {p0, p4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
