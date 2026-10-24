.class public final synthetic Lcom/mega/update/usb/-$$Lambda$UsbService$TppchD_UF8A1f7WuFBYtjDzjxc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/mega/update/usb/UsbService;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/update/usb/UsbService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/update/usb/-$$Lambda$UsbService$TppchD_UF8A1f7WuFBYtjDzjxc0;->f$0:Lcom/mega/update/usb/UsbService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/mega/update/usb/-$$Lambda$UsbService$TppchD_UF8A1f7WuFBYtjDzjxc0;->f$0:Lcom/mega/update/usb/UsbService;

    invoke-virtual {v0}, Lcom/mega/update/usb/UsbService;->lambda$showDialogIfHasPkg$1$UsbService()V

    return-void
.end method
