.class public final Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;
.super Ljava/lang/Object;
.source "UsbCommunicationFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$NoUsbCommunicationFound;,
        Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u001d\u001eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J.\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;",
        "",
        "()V",
        "TAG",
        "",
        "communications",
        "Ljava/util/ArrayList;",
        "Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;",
        "underlyingUsbCommunication",
        "Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;",
        "underlyingUsbCommunication$annotations",
        "getUnderlyingUsbCommunication",
        "()Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;",
        "setUnderlyingUsbCommunication",
        "(Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;)V",
        "createUsbCommunication",
        "Lcom/github/mjdev/libaums/usb/UsbCommunication;",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "usbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "outEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "inEndpoint",
        "registerCommunication",
        "",
        "creator",
        "NoUsbCommunicationFound",
        "UnderlyingUsbCommunication",
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
.field public static final INSTANCE:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;

.field private static final TAG:Ljava/lang/String;

.field private static final communications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;",
            ">;"
        }
    .end annotation
.end field

.field private static underlyingUsbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->INSTANCE:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;

    .line 19
    const-class v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbCommunicationFactory::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->TAG:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->communications:Ljava/util/ArrayList;

    .line 24
    sget-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->DEVICE_CONNECTION_SYNC:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    sput-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->underlyingUsbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUnderlyingUsbCommunication()Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;
    .locals 1

    .line 24
    sget-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->underlyingUsbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    return-object v0
.end method

.method public static final declared-synchronized registerCommunication(Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;)V
    .locals 2
    .param p0, "creator"    # Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;

    monitor-enter v0

    :try_start_0
    const-string v1, "creator"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->communications:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    .line 34
    .end local p0    # "creator":Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final setUnderlyingUsbCommunication(Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;)V
    .locals 1
    .param p0, "<set-?>"    # Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sput-object p0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->underlyingUsbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    return-void
.end method

.method public static synthetic underlyingUsbCommunication$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final createUsbCommunication(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/github/mjdev/libaums/usb/UsbCommunication;
    .locals 8
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "usbInterface"    # Landroid/hardware/usb/UsbInterface;
    .param p4, "outEndpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p5, "inEndpoint"    # Landroid/hardware/usb/UsbEndpoint;

    const-string v0, "usbManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbDevice"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usbInterface"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outEndpoint"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inEndpoint"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->underlyingUsbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;

    sget-object v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$UnderlyingUsbCommunication;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 58
    sget-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->communications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;

    .line 59
    .local v1, "creator":Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;
    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;->create(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/github/mjdev/libaums/usb/UsbCommunication;

    move-result-object v2

    .line 61
    .local v2, "communication":Lcom/github/mjdev/libaums/usb/UsbCommunication;
    if-eqz v2, :cond_0

    .line 62
    return-object v2

    .line 58
    .end local v1    # "creator":Lcom/github/mjdev/libaums/usb/UsbCommunicationCreator;
    .end local v2    # "communication":Lcom/github/mjdev/libaums/usb/UsbCommunication;
    :cond_0
    goto :goto_0

    .line 66
    :cond_1
    nop

    .line 67
    new-instance v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$NoUsbCommunicationFound;

    invoke-direct {v0}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory$NoUsbCommunicationFound;-><init>()V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 55
    :cond_2
    new-instance v0, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/github/mjdev/libaums/usb/UsbRequestCommunication;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    check-cast v0, Lcom/github/mjdev/libaums/usb/UsbCommunication;

    return-object v0

    .line 47
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_4

    .line 48
    new-instance v0, Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/github/mjdev/libaums/usb/JellyBeanMr2Communication;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    check-cast v0, Lcom/github/mjdev/libaums/usb/UsbCommunication;

    goto :goto_1

    .line 50
    :cond_4
    sget-object v0, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->TAG:Ljava/lang/String;

    const-string v1, "using workaround usb communication"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v0, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/github/mjdev/libaums/usb/HoneyCombMr1Communication;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    check-cast v0, Lcom/github/mjdev/libaums/usb/UsbCommunication;

    .line 47
    :goto_1
    return-object v0
.end method
