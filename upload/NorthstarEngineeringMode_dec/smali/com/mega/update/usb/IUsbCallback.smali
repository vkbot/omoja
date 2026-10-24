.class public interface abstract Lcom/mega/update/usb/IUsbCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mega/update/usb/IUsbCallback$Stub;,
        Lcom/mega/update/usb/IUsbCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onError(I)V
.end method

.method public abstract onProgress(I)V
.end method

.method public abstract onUpgrade()V
.end method

.method public abstract onUpload()V
.end method
