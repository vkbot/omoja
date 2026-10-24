.class public final enum Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;
.super Ljava/lang/Enum;
.source "UsbCommunicationFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnderlyingUsbCommunication"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0005\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;",
        "",
        "(Ljava/lang/String;I)V",
        "USB_REQUEST_ASYNC",
        "DEVICE_CONNECTION_SYNC",
        "OTHER",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

.field public static final enum DEVICE_CONNECTION_SYNC:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

.field public static final enum OTHER:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

.field public static final enum USB_REQUEST_ASYNC:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    new-instance v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    const-string v2, "USB_REQUEST_ASYNC"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->USB_REQUEST_ASYNC:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    const-string v2, "DEVICE_CONNECTION_SYNC"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->DEVICE_CONNECTION_SYNC:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    aput-object v1, v0, v3

    new-instance v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    const-string v2, "OTHER"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->OTHER:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    aput-object v1, v0, v3

    sput-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->$VALUES:[Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum_name_or_ordinal$0"    # Ljava/lang/String;
    .param p2, "$enum_name_or_ordinal$1"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;
    .locals 1

    const-class v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    return-object p0
.end method

.method public static values()[Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;
    .locals 1

    sget-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->$VALUES:[Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    invoke-virtual {v0}, [Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    return-object v0
.end method
