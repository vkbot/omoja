.class public interface abstract Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback$Stub;,
        Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback$Proxy;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.mega.tboxclient@1.0::ITboxClientFtpCallback"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.mega.tboxclient@1.0::ITboxClientFtpCallback"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    if-eqz v3, :cond_1

    check-cast v2, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    return-object v2

    :cond_1
    new-instance v2, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback$Proxy;

    invoke-direct {v2, p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback$Proxy;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .locals 1

    const-string v0, "default"

    .line 4
    invoke-static {v0}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->getService(Ljava/lang/String;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .locals 1

    const-string v0, "vendor.mega.tboxclient@1.0::ITboxClientFtpCallback"

    .line 3
    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .locals 1

    const-string v0, "vendor.mega.tboxclient@1.0::ITboxClientFtpCallback"

    .line 1
    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->asInterface(Landroid/os/IHwBinder;)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;
    .locals 1

    const-string v0, "default"

    .line 2
    invoke-static {v0, p0}, Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;->getService(Ljava/lang/String;Z)Lvendor/mega/tboxclient/V1_0/ITboxClientFtpCallback;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Lb/a;
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
.end method

.method public abstract notifySyspropsChanged()V
.end method

.method public abstract onDownLoadFileResult(Ljava/lang/String;B)V
.end method

.method public abstract onFtpLinkStatusChange(B)V
.end method

.method public abstract onProgress(Ljava/lang/String;BB)V
.end method

.method public abstract onUploadFileResult(Ljava/lang/String;B)V
.end method

.method public abstract ping()V
.end method

.method public abstract setHALInstrumentation()V
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
.end method
