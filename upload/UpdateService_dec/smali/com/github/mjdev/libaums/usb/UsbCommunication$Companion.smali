.class public final Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;
.super Ljava/lang/Object;
.source "UsbCommunication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/usb/UsbCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;",
        "",
        "()V",
        "TRANSFER_TIMEOUT",
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
.field static final synthetic $$INSTANCE:Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;

.field public static final TRANSFER_TIMEOUT:I = 0x1388


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 88
    new-instance v0, Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;->$$INSTANCE:Lcom/github/mjdev/libaums/usb/UsbCommunication$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
