.class public Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;
.super Ljava/lang/Object;
.source "MegaDmcOtaAssistImpl.java"

# interfaces
.implements Lcom/mega/update/sdk/MegaOtaAssistInterface;
.implements Landroid/os/Handler$Callback;
.implements Lcom/mega/update/sdk/utils/OtaConnector$Callback;


# static fields
.field public static final CANTP_DEINIT:Ljava/lang/String; = "cantp_svc/deinit"

.field public static final CANTP_INIT:Ljava/lang/String; = "cantp_svc/init"

.field public static final CANTP_INIT_RESP:Ljava/lang/String; = "cantp_svc/init/resp"

.field public static final CANTP_RPC_CHANNEL_STATUS:Ljava/lang/String; = "cantp_svc/channel_status"

.field public static final CANTP_RPC_ERR:Ljava/lang/String; = "cantp_svc/err"

.field public static final CANTP_RPC_REQ:Ljava/lang/String; = "cantp_svc/req"

.field public static final CANTP_RPC_RES:Ljava/lang/String; = "cantp_svc/resp"

.field private static final ECALL_STR2INTEGER_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVENT_ECALL_STATUS:I = 0x1

.field private static final EVENT_POWER_STATUS_CHANGE:I = 0x4

.field private static final EVENT_SET_HALFHOUR:I = 0x3

.field private static final EVENT_VEHICLE_INFO:I = 0x2

.field public static final ID_OTA_SEAT_BELT_LOCK:I = 0x67000132

.field public static final UART_RPC_REQ:Ljava/lang/String; = "uartrpc_svc/uds/req"

.field public static final UART_RPC_RES:Ljava/lang/String; = "uartrpc_svc/uds/resp"

.field private static mLastPowerStatus:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mApplicationContext:Landroid/content/Context;

.field private mAssistEventCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

.field private mCantpInitStatus:Z

.field private mCarProp:Lmega/car/MegaCarProperty;

.field private mEventHanlder:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

.field private mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

.field private mRequestingSc:Z

.field private mSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    const/4 v0, 0x6

    sput v0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mLastPowerStatus:I

    .line 112
    new-instance v0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;

    invoke-direct {v0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$1;-><init>()V

    sput-object v0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->ECALL_STR2INTEGER_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mRequestingSc:Z

    .line 70
    const-string v1, "MegaDmcOtaAssistImpl"

    iput-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    .line 80
    iput-boolean v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCantpInitStatus:Z

    .line 121
    new-instance v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;

    invoke-direct {v1, p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$2;-><init>(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)V

    iput-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCallback:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    .line 220
    iput-object p1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mApplicationContext:Landroid/content/Context;

    .line 221
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mEventHanlder:Landroid/os/Handler;

    .line 222
    new-instance v1, Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-direct {v1}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;-><init>()V

    iput-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    .line 223
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    .line 224
    invoke-static {}, Lcom/mega/update/sdk/utils/OtaConnector;->self()Lcom/mega/update/sdk/utils/OtaConnector;

    move-result-object v1

    iput-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    .line 225
    const-string v2, "uartrpc_svc/uds/resp"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 226
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v2, "cantp_svc/init/resp"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v2, "cantp_svc/resp"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v2, "cantp_svc/err"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v2, "cantp_svc/channel_status"

    invoke-virtual {v1, p0, v2}, Lcom/mega/update/sdk/utils/OtaConnector;->addCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 231
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v4, "cantp_svc/init"

    invoke-virtual {v3, v4, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 259
    new-instance v3, Ljava/util/HashSet;

    new-array v2, v2, [Ljava/lang/Integer;

    .line 260
    const v4, 0x2d000006

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 267
    const v0, 0x9000018

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v2, v4

    .line 268
    const v0, 0x500000c4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x2

    aput-object v0, v2, v4

    .line 259
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mSet:Ljava/util/HashSet;

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    .line 274
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCallback:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mSet:Ljava/util/HashSet;

    invoke-virtual {v0, v2, v3}, Lmega/car/MegaCarProperty;->registerCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    goto :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 277
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    .line 280
    .end local v0    # "e":Ljava/lang/SecurityException;
    :goto_0
    invoke-direct {p0}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->registerObserver()V

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    .line 54
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Lcom/mega/update/sdk/utils/OtaVehicleInfo;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    .line 54
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;

    .line 54
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mEventHanlder:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 54
    sget v0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mLastPowerStatus:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .param p0, "x0"    # I

    .line 54
    sput p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mLastPowerStatus:I

    return p0
.end method

.method private gearTransform(I)I
    .locals 1
    .param p1, "n"    # I

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "g":I
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 409
    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    .line 360
    :pswitch_1
    const/4 v0, 0x4

    .line 361
    goto :goto_0

    .line 349
    :pswitch_2
    const/4 v0, 0x3

    .line 350
    goto :goto_0

    .line 345
    :pswitch_3
    const/4 v0, 0x2

    .line 346
    goto :goto_0

    .line 341
    :pswitch_4
    const/4 v0, 0x1

    .line 342
    goto :goto_0

    .line 337
    :pswitch_5
    const/4 v0, 0x0

    .line 338
    nop

    .line 413
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isNegtiveResponse(Ljava/util/ArrayList;[I)Z
    .locals 3
    .param p2, "i"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[I)Z"
        }
    .end annotation

    .line 618
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 619
    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 620
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 621
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 619
    :goto_0
    return v1
.end method

.method private isScPositiveResponse(Ljava/util/ArrayList;[I)Z
    .locals 3
    .param p2, "i"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[I)Z"
        }
    .end annotation

    .line 611
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 612
    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x62

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 613
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, -0x30

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 614
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 612
    :goto_0
    return v1
.end method

.method private isSkNegtiveResponse(Ljava/util/ArrayList;[I)Z
    .locals 3
    .param p2, "i"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[I)Z"
        }
    .end annotation

    .line 604
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 605
    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 606
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x70

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 607
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 605
    :goto_0
    return v1
.end method

.method private isSkPositiveResponse(Ljava/util/ArrayList;[I)Z
    .locals 3
    .param p2, "i"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[I)Z"
        }
    .end annotation

    .line 596
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v0, p2, v1

    .line 597
    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x71

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 598
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 599
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x70

    if-ne v0, v2, :cond_0

    aget v0, p2, v1

    add-int/lit8 v2, v0, 0x1

    aput v2, p2, v1

    .line 600
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, 0x1e

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 597
    :goto_0
    return v1
.end method

.method private isValidDiagHeader(Ljava/util/ArrayList;[I)Z
    .locals 4
    .param p2, "i"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[I)Z"
        }
    .end annotation

    .line 625
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v1, p2, v0

    .line 626
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, -0x7d

    if-eq v2, v3, :cond_0

    .line 627
    return v0

    .line 629
    :cond_0
    aget v2, p2, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p2, v0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_1

    aget v2, p2, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p2, v0

    .line 630
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-nez v2, :cond_1

    aget v2, p2, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p2, v0

    .line 631
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1

    aget v2, p2, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p2, v0

    .line 632
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, -0x80

    if-ne v2, v3, :cond_1

    aget v2, p2, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p2, v0

    .line 633
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    aget v2, p2, v0

    add-int/lit8 v3, v2, 0x1

    aput v3, p2, v0

    .line 634
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    if-ne v2, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    nop

    .line 629
    :goto_0
    return v0
.end method

.method private registerObserver()V
    .locals 7

    .line 288
    new-instance v0, Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 289
    .local v0, "mHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 290
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 291
    .local v1, "mHandler":Landroid/os/Handler;
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 292
    .local v2, "mResolver":Landroid/content/ContentResolver;
    new-instance v3, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl$3;-><init>(Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 308
    .local v3, "mObserver":Landroid/database/ContentObserver;
    const-string v4, "mega_android_power_status"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x2

    invoke-static {v2, v4, v5, v3, v6}, Lcom/mega/nexus/content/MegaContentResolver;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 309
    return-void
.end method

.method private scheduledTimeTransform(I)I
    .locals 1
    .param p1, "n"    # I

    .line 328
    add-int/lit8 v0, p1, -0x1

    return v0
.end method


# virtual methods
.method public getCertPath()Ljava/lang/String;
    .locals 1

    .line 529
    const-string v0, ""

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 86
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_4

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 105
    .local v2, "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaPowerStatusChange(I)V

    .line 106
    .end local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 100
    .restart local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v2}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistRunning2HalfHour()V

    .line 101
    .end local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_1

    .line 102
    :cond_2
    goto :goto_4

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 95
    .restart local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-interface {v2, v3}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistVehicleInfo(Lcom/mega/update/sdk/utils/OtaVehicleInfo;)V

    .line 96
    .end local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_2

    .line 97
    :cond_4
    goto :goto_4

    .line 89
    :cond_5
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 90
    .restart local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    int-to-long v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistECallStatus(IJ)V

    .line 91
    .end local v2    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_3

    .line 92
    :cond_6
    nop

    .line 109
    :cond_7
    :goto_4
    return v1
.end method

.method public onFinish(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "bundle"    # Landroid/os/Bundle;

    .line 737
    const/4 v0, 0x0

    .line 738
    .local v0, "request_reset":Z
    if-eqz p1, :cond_1

    .line 739
    const-string v1, "reset"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 740
    if-eqz v0, :cond_1

    .line 743
    const-string v1, "{\"id\":\"UpdateService\",\"operation\":\"set\",\"command\":\"8\"}"

    .line 744
    .local v1, "jsonStr":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 745
    .local v2, "reset_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-byte v6, v3, v5

    .local v6, "b":B
    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v6    # "b":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 746
    :cond_0
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v4, "misc_service/command/update_request"

    invoke-virtual {v3, v4, v2}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 749
    .end local v1    # "jsonStr":Ljava/lang/String;
    .end local v2    # "reset_data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "cantp_svc/deinit"

    invoke-virtual {v2, v3, v1}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 752
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "uartrpc_svc/uds/resp"

    invoke-virtual {v2, p0, v3}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 753
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "cantp_svc/init/resp"

    invoke-virtual {v2, p0, v3}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 754
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "cantp_svc/resp"

    invoke-virtual {v2, p0, v3}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "cantp_svc/err"

    invoke-virtual {v2, p0, v3}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 756
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "cantp_svc/channel_status"

    invoke-virtual {v2, p0, v3}, Lcom/mega/update/sdk/utils/OtaConnector;->removeCallback(Lcom/mega/update/sdk/utils/OtaConnector$Callback;Ljava/lang/String;)V

    .line 757
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCallback:Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    iget-object v4, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mSet:Ljava/util/HashSet;

    invoke-virtual {v2, v3, v4}, Lmega/car/MegaCarProperty;->unregisterCallback(Lmega/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;Ljava/util/Set;)V

    .line 759
    return-void
.end method

.method public onReceive(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    const-string v0, "uartrpc_svc/uds/resp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "i":I
    const/4 v3, 0x0

    .line 646
    .local v3, "j":I
    new-array v4, v1, [I

    .line 647
    .local v4, "index":[I
    invoke-direct {p0, p2, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->isValidDiagHeader(Ljava/util/ArrayList;[I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 649
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    const-string v2, "onReceive: UNSUPPORTED HEADERS."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 652
    :cond_0
    invoke-direct {p0, p2, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->isSkPositiveResponse(Ljava/util/ArrayList;[I)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_3

    .line 654
    new-array v5, v6, [B

    .line 655
    .local v5, "sk":[B
    aget v2, v4, v2

    .line 656
    .end local v3    # "j":I
    .local v2, "j":I
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 658
    add-int v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v5, v0

    .line 659
    add-int/lit8 v3, v0, 0x8

    add-int v6, v2, v0

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v5, v3

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 663
    .local v6, "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v6, v5, v1}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistSK([BZ)V

    .line 664
    .end local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_1

    .line 665
    :cond_2
    return-void

    .line 668
    .end local v2    # "j":I
    .end local v5    # "sk":[B
    .restart local v3    # "j":I
    :cond_3
    invoke-direct {p0, p2, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->isSkNegtiveResponse(Ljava/util/ArrayList;[I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 670
    new-array v1, v6, [B

    .line 671
    .local v1, "sk":[B
    aget v5, v4, v2

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v1, v2

    .line 673
    iget-object v5, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 674
    .restart local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v6, v1, v2}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistSK([BZ)V

    .line 675
    .end local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_2

    .line 676
    :cond_4
    return-void

    .line 678
    .end local v1    # "sk":[B
    :cond_5
    invoke-direct {p0, p2, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->isScPositiveResponse(Ljava/util/ArrayList;[I)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_8

    .line 680
    new-array v5, v6, [B

    .line 681
    .local v5, "sc":[B
    aget v2, v4, v2

    .line 682
    .end local v3    # "j":I
    .restart local v2    # "j":I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v6, :cond_6

    .line 684
    add-int v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v5, v0

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 687
    :cond_6
    iget-object v3, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 688
    .restart local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v6, v5, v1}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistSC([BZ)V

    .line 689
    .end local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_4

    .line 690
    :cond_7
    return-void

    .line 692
    .end local v2    # "j":I
    .end local v5    # "sc":[B
    .restart local v3    # "j":I
    :cond_8
    invoke-direct {p0, p2, v4}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->isNegtiveResponse(Ljava/util/ArrayList;[I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 694
    new-array v1, v6, [B

    .line 695
    .local v1, "sc":[B
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v1, v2

    .line 697
    iget-boolean v5, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mRequestingSc:Z

    if-eqz v5, :cond_a

    .line 698
    iget-object v5, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 699
    .restart local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v6, v1, v2}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistSC([BZ)V

    .line 700
    .end local v6    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_5

    .line 701
    :cond_9
    iput-boolean v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mRequestingSc:Z

    .line 704
    :cond_a
    return-void

    .line 706
    .end local v0    # "i":I
    .end local v1    # "sc":[B
    .end local v3    # "j":I
    .end local v4    # "index":[I
    :cond_b
    goto/16 :goto_c

    :cond_c
    const-string v0, "cantp_svc/resp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 707
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 708
    .local v0, "resp":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 709
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v2

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 711
    .end local v2    # "i":I
    :cond_d
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 712
    .local v3, "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v3, v0, v1}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistCanTp([BZ)V

    .line 713
    .end local v3    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_7

    .line 714
    .end local v0    # "resp":[B
    :cond_e
    goto/16 :goto_c

    :cond_f
    const-string v0, "cantp_svc/err"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 715
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 716
    .restart local v0    # "resp":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_10

    .line 717
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 719
    .end local v1    # "i":I
    :cond_10
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 720
    .restart local v3    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    invoke-interface {v3, v0, v2}, Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;->otaAssistCanTp([BZ)V

    .line 721
    .end local v3    # "callback":Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;
    goto :goto_9

    .line 719
    .end local v0    # "resp":[B
    :cond_11
    goto :goto_b

    .line 722
    :cond_12
    const-string v0, "cantp_svc/init/resp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 723
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-nez v0, :cond_13

    .line 724
    iput-boolean v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCantpInitStatus:Z

    goto :goto_a

    .line 726
    :cond_13
    iput-boolean v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCantpInitStatus:Z

    .line 728
    :goto_a
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CANTP_INIT_RESP return: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 722
    :cond_14
    :goto_b
    nop

    .line 730
    :goto_c
    return-void
.end method

.method public registerCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;)Z
    .locals 1
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 313
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestECall(I)Z
    .locals 3
    .param p1, "action"    # I

    .line 323
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not implemented requestECall action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public requestSCSK()Z
    .locals 10

    .line 564
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    .local v0, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    const/16 v5, 0xf

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const/16 v6, 0xe

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    const/16 v7, -0x80

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    const/16 v8, 0x31

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    const/16 v8, 0x70

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/16 v8, 0x1e

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v8, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v9, "uartrpc_svc/uds/req"

    invoke-virtual {v8, v9, v0}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 579
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 580
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    const/16 v1, -0x30

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    iput-boolean v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mRequestingSc:Z

    .line 591
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    invoke-virtual {v1, v9, v0}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public requestVehicleInfo()Z
    .locals 32

    .line 418
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 420
    :try_start_0
    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lmega/car/MegaCarProperty;->getInstance(Landroid/content/Context;)Lmega/car/MegaCarProperty;

    move-result-object v0

    iput-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 423
    iput-object v2, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    .line 426
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 427
    :cond_1
    const v4, 0x33000009

    invoke-virtual {v0, v4}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 428
    .local v0, "qnxVersion":Lmega/car/hardware/CarPropertyValue;
    const-string v4, ""

    if-nez v0, :cond_2

    move-object v5, v4

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 429
    .local v5, "qVersion":Ljava/lang/String;
    :goto_1
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v6, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setQnxVersion(Ljava/lang/String;)V

    .line 430
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v7, 0x33000002

    invoke-virtual {v6, v7}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v6

    .line 431
    .local v6, "vinProp":Lmega/car/hardware/CarPropertyValue;
    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 432
    .local v4, "vin":Ljava/lang/String;
    :goto_2
    iget-object v7, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v7, v4}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setVinNumber(Ljava/lang/String;)V

    .line 435
    iget-object v7, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v8, 0x33100114

    invoke-virtual {v7, v8}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v7

    .line 436
    .local v7, "idcuProp":I
    iget-object v8, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v8, v7}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setIdcu(I)V

    .line 439
    iget-object v8, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v9, 0x331001fe

    invoke-virtual {v8, v9}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v8

    .line 440
    .local v8, "countryCode":I
    iget-object v9, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v9, v8}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setCountryCode(I)V

    .line 443
    iget-object v9, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v10, 0x5000003

    invoke-virtual {v9, v10}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result v9

    .line 444
    .local v9, "battVol":F
    iget-object v10, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v10, v9}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setBatteryVoltage(F)V

    .line 446
    iget-object v10, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v11, 0x5000044

    invoke-virtual {v10, v11}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v10

    .line 447
    .local v10, "battSoc":I
    iget-object v11, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v11, v10}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setSocBattery(I)V

    .line 448
    iget-object v11, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v12, 0x50000016    # 8.5899571E9f

    invoke-virtual {v11, v12}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v11

    .line 449
    .local v11, "powerStatus":I
    iget-object v12, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v12, v11}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setPowerStatus(I)V

    .line 450
    iget-object v12, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v13, 0x400000b

    invoke-virtual {v12, v13}, Lmega/car/MegaCarProperty;->getFloatProp(I)F

    move-result v12

    .line 451
    .local v12, "speed":F
    iget-object v13, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v13, v12}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setDrivenSpeed(F)V

    .line 452
    iget-object v13, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v14, 0x400000a

    invoke-virtual {v13, v14}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v13

    .line 453
    .local v13, "gearStatus":I
    iget-object v14, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-direct {v1, v13}, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->gearTransform(I)I

    move-result v15

    invoke-virtual {v14, v15}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setGearStatus(I)V

    .line 454
    iget-object v14, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v15, 0x5000042

    invoke-virtual {v14, v15}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v14

    .line 455
    .local v14, "engineStatus":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v14}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setEngineStatus(I)V

    .line 456
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v2, 0xa000003

    invoke-virtual {v15, v2}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v2

    .line 457
    .local v2, "handbrakeStatus":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v2}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setHandbrakStatus(I)V

    .line 459
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v3, 0x5000003e    # 8.5899981E9f

    invoke-virtual {v15, v3}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v3

    .line 460
    .local v3, "obdStatus":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v3}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setOBDStatus(I)V

    .line 462
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move-object/from16 v18, v0

    .end local v0    # "qnxVersion":Lmega/car/hardware/CarPropertyValue;
    .local v18, "qnxVersion":Lmega/car/hardware/CarPropertyValue;
    const v0, 0x900006b

    invoke-virtual {v15, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    .line 463
    .local v0, "antiTheftStatus":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v0}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setAntiTheftStatus(I)V

    .line 466
    const-string v15, "ro.ecu.config.DRIVING_POWER_TYPE"

    move/from16 v19, v0

    const/4 v0, 0x0

    .end local v0    # "antiTheftStatus":I
    .local v19, "antiTheftStatus":I
    invoke-static {v15, v0}, Lcom/mega/update/sdk/utils/OtaUtil;->getSystemPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, "drivenType":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v0}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setDrivenType(I)V

    .line 470
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move/from16 v17, v0

    .end local v0    # "drivenType":I
    .local v17, "drivenType":I
    const v0, 0x500000f

    invoke-virtual {v15, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    .line 471
    .local v0, "bookChargeSwitch":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v0}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargeMode(I)V

    .line 473
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move/from16 v20, v0

    .end local v0    # "bookChargeSwitch":I
    .local v20, "bookChargeSwitch":I
    const v0, 0x67000004

    invoke-virtual {v15, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    .line 474
    .local v0, "bookChargeTimeWeek":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v0}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingRepeatDate(I)V

    .line 476
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move/from16 v21, v0

    .end local v0    # "bookChargeTimeWeek":I
    .local v21, "bookChargeTimeWeek":I
    const v0, 0x67000001

    invoke-virtual {v15, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    .line 477
    .local v0, "bookChargeTimeHour":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move/from16 v22, v2

    .end local v2    # "handbrakeStatus":I
    .local v22, "handbrakeStatus":I
    const v2, 0x67000002

    invoke-virtual {v15, v2}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v2

    .line 478
    .local v2, "bookChargeTimeMin":I
    invoke-static {}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isT1gcVersion()Z

    move-result v15

    move/from16 v23, v3

    .end local v3    # "obdStatus":I
    .local v23, "obdStatus":I
    const-string v3, " timePair.second ="

    move-object/from16 v24, v4

    .end local v4    # "vin":Ljava/lang/String;
    .local v24, "vin":Ljava/lang/String;
    const/16 v4, 0x19

    if-eqz v15, :cond_4

    if-lez v0, :cond_4

    if-ge v0, v4, :cond_4

    if-lez v2, :cond_4

    const/16 v15, 0x3d

    if-ge v2, v15, :cond_4

    .line 479
    add-int/lit8 v15, v0, -0x1

    add-int/lit8 v4, v2, -0x1

    invoke-static {v15, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->toCurTimeZone(II)Landroid/util/Pair;

    move-result-object v4

    .line 480
    .local v4, "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move-object/from16 v27, v5

    .end local v5    # "qVersion":Ljava/lang/String;
    .local v27, "qVersion":Ljava/lang/String;
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingTimeHour(I)V

    .line 481
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    iget-object v15, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingTimeMinute(I)V

    .line 482
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v6

    .end local v6    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    .local v28, "vinProp":Lmega/car/hardware/CarPropertyValue;
    const-string v6, "ChargeTime timePair.first = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v4    # "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_3

    .line 478
    .end local v27    # "qVersion":Ljava/lang/String;
    .end local v28    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    .restart local v5    # "qVersion":Ljava/lang/String;
    .restart local v6    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    :cond_4
    move-object/from16 v27, v5

    move-object/from16 v28, v6

    .line 484
    .end local v5    # "qVersion":Ljava/lang/String;
    .end local v6    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    .restart local v27    # "qVersion":Ljava/lang/String;
    .restart local v28    # "vinProp":Lmega/car/hardware/CarPropertyValue;
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingTimeHour(I)V

    .line 485
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingTimeMinute(I)V

    .line 486
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bookChargeTimeHour = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bookChargeTimeMin ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :goto_3
    iget-object v4, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v5, 0x67000003

    invoke-virtual {v4, v5}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v4

    .line 490
    .local v4, "bookChargeDuration":I
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledChargingDuration(I)V

    .line 493
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v6, 0x67000009

    invoke-virtual {v5, v6}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v5

    .line 494
    .local v5, "bookTripSwitch":I
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v6, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravel(I)V

    .line 496
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v15, 0x67000030

    invoke-virtual {v6, v15}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v6

    .line 497
    .local v6, "bookTripTimeWeek":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v15, v6}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelRepeatDate(I)V

    .line 499
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move/from16 v29, v0

    .end local v0    # "bookChargeTimeHour":I
    .local v29, "bookChargeTimeHour":I
    const v0, 0x6700000a

    invoke-virtual {v15, v0}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v0

    .line 500
    .local v0, "bookTripTimeHour":I
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    move/from16 v30, v2

    .end local v2    # "bookChargeTimeMin":I
    .local v30, "bookChargeTimeMin":I
    const v2, 0x6700000b

    invoke-virtual {v15, v2}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v2

    .line 501
    .local v2, "bookTripTimeMin":I
    invoke-static {}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->isT1gcVersion()Z

    move-result v15

    if-eqz v15, :cond_5

    if-lez v0, :cond_5

    const/16 v15, 0x19

    if-ge v0, v15, :cond_5

    if-lez v2, :cond_5

    const/16 v15, 0x3d

    if-ge v2, v15, :cond_5

    .line 502
    add-int/lit8 v15, v0, -0x1

    move/from16 v25, v4

    .end local v4    # "bookChargeDuration":I
    .local v25, "bookChargeDuration":I
    add-int/lit8 v4, v2, -0x1

    invoke-static {v15, v4}, Lcom/mega/update/sdk/MegaOtaCbfUtil;->toCurTimeZone(II)Landroid/util/Pair;

    move-result-object v4

    .line 503
    .local v4, "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    move/from16 v26, v5

    .end local v5    # "bookTripSwitch":I
    .local v26, "bookTripSwitch":I
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v15, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelHour(I)V

    .line 504
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    iget-object v15, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v5, v15}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelMinute(I)V

    .line 505
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v31, v6

    .end local v6    # "bookTripTimeWeek":I
    .local v31, "bookTripTimeWeek":I
    const-string v6, "ScheduledTravel timePair.first = "

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    .end local v4    # "timePair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto :goto_4

    .line 501
    .end local v25    # "bookChargeDuration":I
    .end local v26    # "bookTripSwitch":I
    .end local v31    # "bookTripTimeWeek":I
    .local v4, "bookChargeDuration":I
    .restart local v5    # "bookTripSwitch":I
    .restart local v6    # "bookTripTimeWeek":I
    :cond_5
    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v31, v6

    .line 507
    .end local v4    # "bookChargeDuration":I
    .end local v5    # "bookTripSwitch":I
    .end local v6    # "bookTripTimeWeek":I
    .restart local v25    # "bookChargeDuration":I
    .restart local v26    # "bookTripSwitch":I
    .restart local v31    # "bookTripTimeWeek":I
    iget-object v3, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v4}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelHour(I)V

    .line 508
    iget-object v3, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setScheduledTravelMinute(I)V

    .line 509
    iget-object v3, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bookTripTimeHour = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " bookTripTimeMin ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :goto_4
    iget-object v3, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v4, 0x2d000006

    invoke-virtual {v3, v4}, Lmega/car/MegaCarProperty;->getPropertyRaw(I)Lmega/car/hardware/CarPropertyValue;

    move-result-object v3

    .line 513
    .local v3, "powerEFSMModeProp":Lmega/car/hardware/CarPropertyValue;
    if-nez v3, :cond_6

    const/16 v16, 0x0

    goto :goto_5

    :cond_6
    invoke-virtual {v3}, Lmega/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmega/car/config/Power$PowerEFSMMode;

    move-object/from16 v16, v4

    :goto_5
    move-object/from16 v4, v16

    .line 514
    .local v4, "powerEFSMMode":Lmega/car/config/Power$PowerEFSMMode;
    if-eqz v4, :cond_7

    .line 515
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    iget-object v6, v4, Lmega/car/config/Power$PowerEFSMMode;->mode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setPowerEFSMMode(Ljava/lang/String;)V

    .line 519
    :cond_7
    iget-object v5, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCarProp:Lmega/car/MegaCarProperty;

    const v6, 0x67000132

    invoke-virtual {v5, v6}, Lmega/car/MegaCarProperty;->getIntProp(I)I

    move-result v5

    .line 520
    .local v5, "mainDriverBeltStatus":I
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v6, v5}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->setMainSeatBelt(I)V

    .line 521
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    .end local v0    # "bookTripTimeHour":I
    .local v16, "bookTripTimeHour":I
    const-string v0, "getOtaVehicleInfo = "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v0}, Lcom/mega/update/sdk/utils/OtaVehicleInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mEventHanlder:Landroid/os/Handler;

    const/4 v6, 0x2

    iget-object v15, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaVehicleInfo:Lcom/mega/update/sdk/utils/OtaVehicleInfo;

    invoke-virtual {v0, v6, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 524
    .local v0, "message":Landroid/os/Message;
    iget-object v6, v1, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mEventHanlder:Landroid/os/Handler;

    invoke-virtual {v6, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    return v6
.end method

.method public sendCanTpMsg(I[B)Z
    .locals 6
    .param p1, "canid"    # I
    .param p2, "data"    # [B

    .line 544
    iget-boolean v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mCantpInitStatus:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->TAG:Ljava/lang/String;

    const-string v2, "Cantp not initilaized, init again."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 547
    .local v0, "payload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, p2, v3

    .local v4, "b":B
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 548
    :cond_0
    iget-object v2, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v3, "cantp_svc/init"

    invoke-virtual {v2, v3, v0}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 549
    return v1

    .line 551
    .end local v0    # "payload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .restart local v0    # "payload":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    shr-int/lit8 v2, p1, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    shr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    shr-int/lit8 v2, p1, 0x0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_2

    aget-byte v3, p2, v1

    .local v3, "b":B
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 558
    :cond_2
    iget-object v1, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mOtaConnector:Lcom/mega/update/sdk/utils/OtaConnector;

    const-string v2, "cantp_svc/req"

    invoke-virtual {v1, v2, v0}, Lcom/mega/update/sdk/utils/OtaConnector;->send(Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v1

    return v1
.end method

.method public setEcuVersionCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/mega/update/sdk/MegaOtaAssistInterface$ecuVersionCallback;

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public setScreenBacklightStatus(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .line 539
    const/4 v0, 0x1

    return v0
.end method

.method public setVehicleImmoStatus(I)Z
    .locals 1
    .param p1, "status"    # I

    .line 534
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterCallback(Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;)V
    .locals 1
    .param p1, "listener"    # Lcom/mega/update/sdk/MegaOtaAssistInterface$OtaAssistEventCallback;

    .line 318
    iget-object v0, p0, Lcom/mega/update/sdk/impl/MegaDmcOtaAssistImpl;->mAssistEventCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void
.end method
