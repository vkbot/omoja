.class Lcom/mega/update/usb/UsbService$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mega/update/usb/UsbService;->onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Lcom/mega/update/usb/UsbService$PARAMS$ValueJson;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mega/update/usb/UsbService;


# direct methods
.method constructor <init>(Lcom/mega/update/usb/UsbService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mega/update/usb/UsbService;

    .line 540
    iput-object p1, p0, Lcom/mega/update/usb/UsbService$4;->this$0:Lcom/mega/update/usb/UsbService;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
