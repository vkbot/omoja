.class public Lcom/mega/update/usb/IUsbService$Default;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mega/update/usb/IUsbService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/usb/IUsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public attached(Landroid/os/storage/StorageVolume;)V
    .locals 0

    return-void
.end method

.method public detached()V
    .locals 0

    return-void
.end method

.method public subcribe(Lcom/mega/update/usb/IUsbCallback;)V
    .locals 0

    return-void
.end method

.method public triggerUpgrade()V
    .locals 0

    return-void
.end method

.method public unsubcribe()V
    .locals 0

    return-void
.end method
