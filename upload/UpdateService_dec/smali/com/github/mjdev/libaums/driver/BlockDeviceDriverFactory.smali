.class public final Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;
.super Ljava/lang/Object;
.source "BlockDeviceDriverFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;",
        "",
        "()V",
        "createBlockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "usbCommunication",
        "Lcom/github/mjdev/libaums/usb/UsbCommunication;",
        "lun",
        "",
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
.field public static final INSTANCE:Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;->INSTANCE:Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBlockDevice(Lcom/github/mjdev/libaums/usb/UsbCommunication;B)Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .locals 1
    .param p1, "usbCommunication"    # Lcom/github/mjdev/libaums/usb/UsbCommunication;
    .param p2, "lun"    # B

    const-string v0, "usbCommunication"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;

    invoke-direct {v0, p1, p2}, Lcom/github/mjdev/libaums/driver/scsi/ScsiBlockDevice;-><init>(Lcom/github/mjdev/libaums/usb/UsbCommunication;B)V

    check-cast v0, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    return-object v0
.end method
