.class public final synthetic Lcom/mega/update/usb/-$$Lambda$UsbService$H7KCANI6QG0PKOgSQHgzDIgc0as;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/mega/update/usb/UsbService$OnCpListener;


# instance fields
.field public final synthetic f$0:Lcom/mega/update/usb/UsbService;


# direct methods
.method public synthetic constructor <init>(Lcom/mega/update/usb/UsbService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/update/usb/-$$Lambda$UsbService$H7KCANI6QG0PKOgSQHgzDIgc0as;->f$0:Lcom/mega/update/usb/UsbService;

    return-void
.end method


# virtual methods
.method public final onCpProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/mega/update/usb/-$$Lambda$UsbService$H7KCANI6QG0PKOgSQHgzDIgc0as;->f$0:Lcom/mega/update/usb/UsbService;

    invoke-virtual {v0, p1}, Lcom/mega/update/usb/UsbService;->lambda$handleUgrade$0$UsbService(I)V

    return-void
.end method
