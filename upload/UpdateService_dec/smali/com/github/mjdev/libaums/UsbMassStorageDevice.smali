.class public final Lcom/github/mjdev/libaums/UsbMassStorageDevice;
.super Ljava/lang/Object;
.source "UsbMassStorageDevice.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbMassStorageDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbMassStorageDevice.kt\ncom/github/mjdev/libaums/UsbMassStorageDevice\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,264:1\n1313#2:265\n1382#2,3:266\n1365#2,9:269\n1591#2,2:278\n1374#2:280\n1365#2,9:281\n1591#2,2:290\n1374#2:292\n*E\n*S KotlinDebug\n*F\n+ 1 UsbMassStorageDevice.kt\ncom/github/mjdev/libaums/UsbMassStorageDevice\n*L\n133#1:265\n133#1,3:266\n136#1,9:269\n136#1,2:278\n136#1:280\n160#1,9:281\n160#1,2:290\n160#1:292\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \"2\u00020\u0001:\u0001\"B/\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u001aJ\u001e\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0008\u0010!\u001a\u00020\u001aH\u0002R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000fX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082.\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/UsbMassStorageDevice;",
        "",
        "usbManager",
        "Landroid/hardware/usb/UsbManager;",
        "usbDevice",
        "Landroid/hardware/usb/UsbDevice;",
        "usbInterface",
        "Landroid/hardware/usb/UsbInterface;",
        "inEndpoint",
        "Landroid/hardware/usb/UsbEndpoint;",
        "outEndpoint",
        "(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V",
        "inited",
        "",
        "partitions",
        "",
        "Lcom/github/mjdev/libaums/partition/Partition;",
        "getPartitions",
        "()Ljava/util/List;",
        "setPartitions",
        "(Ljava/util/List;)V",
        "usbCommunication",
        "Lcom/github/mjdev/libaums/usb/UsbCommunication;",
        "getUsbDevice",
        "()Landroid/hardware/usb/UsbDevice;",
        "close",
        "",
        "init",
        "initPartitions",
        "partitionTable",
        "Lcom/github/mjdev/libaums/partition/PartitionTable;",
        "blockDevice",
        "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
        "setupDevice",
        "Companion",
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
.field public static final Companion:Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;

.field private static final INTERFACE_PROTOCOL:I = 0x50

.field private static final INTERFACE_SUBCLASS:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final inEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private inited:Z

.field private final outEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field public partitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/mjdev/libaums/partition/Partition;",
            ">;"
        }
    .end annotation
.end field

.field private usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

.field private final usbDevice:Landroid/hardware/usb/UsbDevice;

.field private final usbInterface:Landroid/hardware/usb/UsbInterface;

.field private final usbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->Companion:Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;

    .line 177
    const-class v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbMassStorageDevice::class.java.simpleName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V
    .locals 0
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "usbInterface"    # Landroid/hardware/usb/UsbInterface;
    .param p4, "inEndpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p5, "outEndpoint"    # Landroid/hardware/usb/UsbEndpoint;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbManager:Landroid/hardware/usb/UsbManager;

    iput-object p2, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbDevice:Landroid/hardware/usb/UsbDevice;

    iput-object p3, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbInterface:Landroid/hardware/usb/UsbInterface;

    iput-object p4, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iput-object p5, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "usbManager"    # Landroid/hardware/usb/UsbManager;
    .param p2, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p3, "usbInterface"    # Landroid/hardware/usb/UsbInterface;
    .param p4, "inEndpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p5, "outEndpoint"    # Landroid/hardware/usb/UsbEndpoint;
    .param p6, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)V

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final getMassStorageDevices(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/usb/UsbDevice;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/mjdev/libaums/UsbMassStorageDevice;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->Companion:Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;->getMassStorageDevices(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final getMassStorageDevices(Landroid/content/Context;)[Lcom/github/mjdev/libaums/UsbMassStorageDevice;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->Companion:Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;

    invoke-virtual {v0, p0}, Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;->getMassStorageDevices(Landroid/content/Context;)[Lcom/github/mjdev/libaums/UsbMassStorageDevice;

    move-result-object v0

    return-object v0
.end method

.method private final initPartitions(Lcom/github/mjdev/libaums/partition/PartitionTable;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Ljava/util/List;
    .locals 15
    .param p1, "partitionTable"    # Lcom/github/mjdev/libaums/partition/PartitionTable;
    .param p2, "blockDevice"    # Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/mjdev/libaums/partition/PartitionTable;",
            "Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/mjdev/libaums/partition/Partition;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    invoke-interface/range {p1 .. p1}, Lcom/github/mjdev/libaums/partition/PartitionTable;->getPartitionTableEntries()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 281
    .local v1, "$i$f$mapNotNull":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 289
    .local v4, "$i$f$mapNotNullTo":I
    move-object v5, v3

    .local v5, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 290
    .local v6, "$i$f$forEach":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    .local v9, "element$iv$iv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 289
    .local v10, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v11, v9

    check-cast v11, Lcom/github/mjdev/libaums/partition/PartitionTableEntry;

    .local v11, "it":Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
    const/4 v12, 0x0

    .line 161
    .local v12, "$i$a$-mapNotNull-UsbMassStorageDevice$initPartitions$1":I
    sget-object v13, Lcom/github/mjdev/libaums/partition/Partition;->Companion:Lcom/github/mjdev/libaums/partition/Partition$Companion;

    move-object/from16 v14, p2

    invoke-virtual {v13, v11, v14}, Lcom/github/mjdev/libaums/partition/Partition$Companion;->createPartition(Lcom/github/mjdev/libaums/partition/PartitionTableEntry;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/Partition;

    move-result-object v11

    .end local v11    # "it":Lcom/github/mjdev/libaums/partition/PartitionTableEntry;
    .end local v12    # "$i$a$-mapNotNull-UsbMassStorageDevice$initPartitions$1":I
    if-eqz v11, :cond_0

    .local v11, "it$iv$iv":Ljava/lang/Object;
    const/4 v12, 0x0

    .line 289
    .local v12, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v11    # "it$iv$iv":Ljava/lang/Object;
    .end local v12    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_1

    :cond_0
    nop

    .end local v8    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v10    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :goto_1
    goto :goto_0

    .line 291
    :cond_1
    move-object/from16 v14, p2

    .line 292
    .end local v5    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$forEach":I
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNullTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .line 162
    .end local v0    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$mapNotNull":I
    return-object v0
.end method

.method private final setupDevice()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    move-object/from16 v1, p0

    .line 126
    nop

    .line 125
    sget-object v2, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->INSTANCE:Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;

    .line 126
    iget-object v3, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v4, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbDevice:Landroid/hardware/usb/UsbDevice;

    iget-object v5, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbInterface:Landroid/hardware/usb/UsbInterface;

    iget-object v6, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->outEndpoint:Landroid/hardware/usb/UsbEndpoint;

    iget-object v7, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->inEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual/range {v2 .. v7}, Lcom/github/mjdev/libaums/usb/UsbCommunicationFactory;->createUsbCommunication(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;)Lcom/github/mjdev/libaums/usb/UsbCommunication;

    move-result-object v8

    iput-object v8, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    .line 127
    const/4 v0, 0x1

    new-array v2, v0, [B

    .line 128
    .local v2, "maxLun":[B
    const-string v0, "usbCommunication"

    if-nez v8, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/16 v9, 0xa1

    const/16 v10, 0xfe

    const/4 v11, 0x0

    iget-object v3, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbInterface:Landroid/hardware/usb/UsbInterface;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v12

    const/4 v14, 0x1

    move-object v13, v2

    invoke-interface/range {v8 .. v14}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->controlTransfer(IIII[BI)I

    .line 130
    sget-object v3, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX LUN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-byte v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    nop

    .line 148
    nop

    .line 132
    nop

    .line 136
    nop

    .line 132
    nop

    .line 133
    nop

    .line 132
    new-instance v3, Lkotlin/ranges/IntRange;

    aget-byte v4, v2, v5

    invoke-direct {v3, v5, v4}, Lkotlin/ranges/IntRange;-><init>(II)V

    check-cast v3, Ljava/lang/Iterable;

    .line 133
    nop

    .local v3, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 265
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v3

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 266
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v8

    check-cast v9, Lkotlin/collections/IntIterator;

    invoke-virtual {v9}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v9

    .line 267
    .local v9, "item$iv$iv":I
    move v10, v9

    .local v10, "lun":I
    const/4 v11, 0x0

    .line 134
    .local v11, "$i$a$-map-UsbMassStorageDevice$setupDevice$1":I
    sget-object v12, Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;->INSTANCE:Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;

    iget-object v13, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    if-nez v13, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    int-to-byte v14, v10

    invoke-virtual {v12, v13, v14}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriverFactory;->createBlockDevice(Lcom/github/mjdev/libaums/usb/UsbCommunication;B)Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    move-result-object v10

    .end local v10    # "lun":I
    .end local v11    # "$i$a$-map-UsbMassStorageDevice$setupDevice$1":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v9    # "item$iv$iv":I
    goto :goto_0

    .line 268
    :cond_2
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    .end local v3    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 136
    move-object v3, v0

    .local v3, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 269
    .local v4, "$i$f$mapNotNull":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v3

    .local v5, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    move-object v6, v0

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v6, "destination$iv$iv":Ljava/util/Collection;
    const/4 v7, 0x0

    .line 277
    .local v7, "$i$f$mapNotNullTo":I
    move-object v8, v5

    .local v8, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 278
    .local v9, "$i$f$forEach":I
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "element$iv$iv":Ljava/lang/Object;
    const/4 v13, 0x0

    .line 277
    .local v13, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v14, v12

    check-cast v14, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;

    .local v14, "blockDevice":Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    const/4 v15, 0x0

    .line 137
    .local v15, "$i$a$-mapNotNull-UsbMassStorageDevice$setupDevice$2":I
    nop

    .line 138
    :try_start_0
    invoke-interface {v14}, Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;->init()V
    :try_end_0
    .catch Lcom/github/mjdev/libaums/driver/scsi/commands/sense/MediaNotInserted; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    sget-object v0, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->INSTANCE:Lcom/github/mjdev/libaums/partition/PartitionTableFactory;

    invoke-virtual {v0, v14}, Lcom/github/mjdev/libaums/partition/PartitionTableFactory;->createPartitionTable(Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Lcom/github/mjdev/libaums/partition/PartitionTable;

    move-result-object v0

    .line 146
    .local v0, "partitionTable":Lcom/github/mjdev/libaums/partition/PartitionTable;
    invoke-direct {v1, v0, v14}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->initPartitions(Lcom/github/mjdev/libaums/partition/PartitionTable;Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;)Ljava/util/List;

    move-result-object v0

    .end local v0    # "partitionTable":Lcom/github/mjdev/libaums/partition/PartitionTable;
    goto :goto_2

    .line 139
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    .line 141
    .local v0, "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/MediaNotInserted;
    const/16 v16, 0x0

    move-object/from16 v0, v16

    .line 146
    .end local v0    # "e":Lcom/github/mjdev/libaums/driver/scsi/commands/sense/MediaNotInserted;
    .end local v14    # "blockDevice":Lcom/github/mjdev/libaums/driver/BlockDeviceDriver;
    .end local v15    # "$i$a$-mapNotNull-UsbMassStorageDevice$setupDevice$2":I
    :goto_2
    if-eqz v0, :cond_3

    .local v0, "it$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 277
    .local v14, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .end local v0    # "it$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    goto :goto_3

    :cond_3
    nop

    .end local v11    # "element$iv$iv$iv":Ljava/lang/Object;
    .end local v12    # "element$iv$iv":Ljava/lang/Object;
    .end local v13    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :goto_3
    goto :goto_1

    .line 279
    :cond_4
    nop

    .line 280
    .end local v8    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$forEach":I
    nop

    .end local v5    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$i$f$mapNotNullTo":I
    move-object v0, v6

    check-cast v0, Ljava/util/List;

    .end local v3    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$mapNotNull":I
    check-cast v0, Ljava/lang/Iterable;

    .line 148
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->partitions:Ljava/util/List;

    .line 149
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbCommunication:Lcom/github/mjdev/libaums/usb/UsbCommunication;

    if-nez v0, :cond_0

    const-string v1, "usbCommunication"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Lcom/github/mjdev/libaums/usb/UsbCommunication;->close()V

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->inited:Z

    .line 173
    return-void
.end method

.method public final getPartitions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/mjdev/libaums/partition/Partition;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->partitions:Ljava/util/List;

    if-nez v0, :cond_0

    const-string v1, "partitions"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getUsbDevice()Landroid/hardware/usb/UsbDevice;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbDevice:Landroid/hardware/usb/UsbDevice;

    return-object v0
.end method

.method public final init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbManager:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->setupDevice()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->inited:Z

    .line 105
    return-void

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing permission to access usb device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->usbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final setPartitions(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/mjdev/libaums/partition/Partition;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->partitions:Ljava/util/List;

    return-void
.end method
