.class public interface abstract Lcom/mega/update/usb/IUsbService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/usb/IUsbService$Stub;,
        Lcom/mega/update/usb/IUsbService$Default;
    }
.end annotation


# virtual methods
.method public abstract attached(Landroid/os/storage/StorageVolume;)V
.end method

.method public abstract detached()V
.end method

.method public abstract subcribe(Lcom/mega/update/usb/IUsbCallback;)V
.end method

.method public abstract triggerUpgrade()V
.end method

.method public abstract unsubcribe()V
.end method
