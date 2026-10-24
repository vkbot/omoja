.class public final Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;
.super Ljava/lang/Object;
.source "UsbMassStorageDevice.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mjdev/libaums/UsbMassStorageDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUsbMassStorageDevice.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UsbMassStorageDevice.kt\ncom/github/mjdev/libaums/UsbMassStorageDevice$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,264:1\n1313#2:265\n1382#2,3:266\n673#2:269\n746#2,2:270\n1313#2:272\n1382#2,3:273\n65#3:276\n90#3,3:277\n37#4,2:280\n*E\n*S KotlinDebug\n*F\n+ 1 UsbMassStorageDevice.kt\ncom/github/mjdev/libaums/UsbMassStorageDevice$Companion\n*L\n195#1:265\n195#1,3:266\n196#1:269\n196#1,2:270\n203#1:272\n203#1,3:273\n254#1:276\n254#1,3:277\n260#1,2:280\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001b\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a2\u0006\u0002\u0010\rJ\u001a\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\u000e*\u00020\u000f2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;",
        "",
        "()V",
        "INTERFACE_PROTOCOL",
        "",
        "INTERFACE_SUBCLASS",
        "TAG",
        "",
        "getMassStorageDevices",
        "",
        "Lcom/github/mjdev/libaums/UsbMassStorageDevice;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)[Lcom/github/mjdev/libaums/UsbMassStorageDevice;",
        "",
        "Landroid/hardware/usb/UsbDevice;",
        "libaums_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 175
    invoke-direct {p0}, Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMassStorageDevices(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Ljava/util/List;
    .locals 24
    .param p1, "$this$getMassStorageDevices"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "context"    # Landroid/content/Context;
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

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "$this$getMassStorageDevices"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const-string v0, "usb"

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    move-object v9, v0

    check-cast v9, Landroid/hardware/usb/UsbManager;

    .line 194
    .local v9, "usbManager":Landroid/hardware/usb/UsbManager;
    nop

    .line 237
    nop

    .line 194
    nop

    .line 203
    nop

    .line 194
    nop

    .line 196
    nop

    .line 194
    nop

    .line 195
    nop

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    const/4 v10, 0x0

    invoke-static {v10, v0}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 195
    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 265
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 266
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v6

    check-cast v11, Lkotlin/collections/IntIterator;

    invoke-virtual {v11}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v11

    .line 267
    .local v11, "item$iv$iv":I
    move v12, v11

    .local v12, "it":I
    const/4 v13, 0x0

    .line 195
    .local v13, "$i$a$-map-UsbMassStorageDevice$Companion$getMassStorageDevices$1":I
    invoke-virtual {v7, v12}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v12

    .end local v12    # "it":I
    .end local v13    # "$i$a$-map-UsbMassStorageDevice$Companion$getMassStorageDevices$1":I
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 266
    .end local v11    # "item$iv$iv":I
    goto :goto_0

    .line 268
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 196
    .local v0, "$this$filter$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 269
    .local v1, "$i$f$filter":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .restart local v2    # "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v0

    .local v4, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 270
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .local v11, "element$iv$iv":Ljava/lang/Object;
    move-object v13, v11

    check-cast v13, Landroid/hardware/usb/UsbInterface;

    .local v13, "it":Landroid/hardware/usb/UsbInterface;
    const/4 v14, 0x0

    .line 199
    .local v14, "$i$a$-filter-UsbMassStorageDevice$Companion$getMassStorageDevices$2":I
    nop

    .line 200
    nop

    .line 201
    const-string v15, "it"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v15

    const/16 v10, 0x8

    if-ne v15, v10, :cond_1

    invoke-virtual {v13}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v10

    const/4 v15, 0x6

    if-ne v10, v15, :cond_1

    invoke-virtual {v13}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v10

    const/16 v15, 0x50

    if-ne v10, v15, :cond_1

    const/4 v12, 0x1

    goto :goto_2

    :cond_1
    const/4 v12, 0x0

    .end local v13    # "it":Landroid/hardware/usb/UsbInterface;
    .end local v14    # "$i$a$-filter-UsbMassStorageDevice$Companion$getMassStorageDevices$2":I
    :goto_2
    if-eqz v12, :cond_2

    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 271
    .end local v11    # "element$iv$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$filterTo":I
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    .end local v0    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$filter":I
    move-object v10, v0

    check-cast v10, Ljava/lang/Iterable;

    .line 203
    .local v10, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 272
    .local v11, "$i$f$map":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {v10, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object v13, v10

    .local v13, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    move-object v14, v0

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v14, "destination$iv$iv":Ljava/util/Collection;
    const/4 v15, 0x0

    .line 273
    .local v15, "$i$f$mapTo":I
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 274
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v6, v17

    check-cast v6, Landroid/hardware/usb/UsbInterface;

    .local v6, "usbInterface":Landroid/hardware/usb/UsbInterface;
    const/16 v18, 0x0

    .line 204
    .local v18, "$i$a$-map-UsbMassStorageDevice$Companion$getMassStorageDevices$3":I
    invoke-static {}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found usb interface: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    const-string v0, "usbInterface"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v5

    .line 209
    .local v5, "endpointCount":I
    const/4 v0, 0x2

    if-eq v5, v0, :cond_4

    .line 210
    invoke-static {}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interface endpoint count != 2"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_4
    const/4 v1, 0x0

    move-object v2, v1

    check-cast v2, Landroid/hardware/usb/UsbEndpoint;

    .line 214
    .local v2, "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    move-object v3, v1

    check-cast v3, Landroid/hardware/usb/UsbEndpoint;

    .line 216
    .local v3, "inEndpoint":Landroid/hardware/usb/UsbEndpoint;
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    const/4 v2, 0x0

    .end local v2    # "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local v3    # "inEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .local v19, "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .local v20, "inEndpoint":Landroid/hardware/usb/UsbEndpoint;
    :goto_4
    if-ge v2, v5, :cond_7

    .line 217
    .local v2, "j":I
    invoke-virtual {v6, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v3

    .line 218
    .local v3, "endpoint":Landroid/hardware/usb/UsbEndpoint;
    invoke-static {}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found usb endpoint: "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-string v1, "endpoint"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getType()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 220
    invoke-virtual {v3}, Landroid/hardware/usb/UsbEndpoint;->getDirection()I

    move-result v1

    if-nez v1, :cond_5

    .line 221
    move-object v1, v3

    move-object/from16 v19, v1

    .end local v19    # "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .local v1, "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    goto :goto_5

    .line 223
    .end local v1    # "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .restart local v19    # "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    :cond_5
    move-object v1, v3

    move-object/from16 v20, v1

    .line 224
    .end local v3    # "endpoint":Landroid/hardware/usb/UsbEndpoint;
    :cond_6
    :goto_5
    nop

    .line 216
    nop

    .end local v2    # "j":I
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x0

    goto :goto_4

    .line 228
    :cond_7
    if-eqz v19, :cond_9

    if-nez v20, :cond_8

    move/from16 v22, v5

    move-object/from16 v23, v6

    goto :goto_6

    .line 233
    :cond_8
    new-instance v12, Lcom/github/mjdev/libaums/UsbMassStorageDevice;

    .line 234
    const/16 v21, 0x0

    .line 233
    move-object v0, v12

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v6

    move-object/from16 v4, v20

    move/from16 v22, v5

    .end local v5    # "endpointCount":I
    .local v22, "endpointCount":I
    move-object/from16 v5, v19

    move-object/from16 v23, v6

    .end local v6    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    .local v23, "usbInterface":Landroid/hardware/usb/UsbInterface;
    move-object/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;-><init>(Landroid/hardware/usb/UsbManager;Landroid/hardware/usb/UsbDevice;Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbEndpoint;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, v12

    goto :goto_9

    .line 228
    .end local v22    # "endpointCount":I
    .end local v23    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    .restart local v5    # "endpointCount":I
    .restart local v6    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :cond_9
    move/from16 v22, v5

    move-object/from16 v23, v6

    .line 229
    .end local v5    # "endpointCount":I
    .end local v6    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    .restart local v22    # "endpointCount":I
    .restart local v23    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :goto_6
    invoke-static {}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not all needed endpoints found. In: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_a

    const/4 v2, 0x1

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v19, :cond_b

    const/4 v2, 0x1

    goto :goto_8

    :cond_b
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v1, 0x0

    .line 233
    .end local v18    # "$i$a$-map-UsbMassStorageDevice$Companion$getMassStorageDevices$3":I
    .end local v19    # "outEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local v20    # "inEndpoint":Landroid/hardware/usb/UsbEndpoint;
    .end local v22    # "endpointCount":I
    .end local v23    # "usbInterface":Landroid/hardware/usb/UsbInterface;
    :goto_9
    invoke-interface {v14, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 273
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    goto/16 :goto_3

    .line 275
    :cond_c
    nop

    .end local v13    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v14    # "destination$iv$iv":Ljava/util/Collection;
    .end local v15    # "$i$f$mapTo":I
    move-object v0, v14

    check-cast v0, Ljava/util/List;

    .end local v10    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 237
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 192
    .end local v9    # "usbManager":Landroid/hardware/usb/UsbManager;
    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMassStorageDevices(Landroid/content/Context;)[Lcom/github/mjdev/libaums/UsbMassStorageDevice;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    const-string v0, "usb"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 253
    .local v0, "usbManager":Landroid/hardware/usb/UsbManager;
    nop

    .line 260
    nop

    .line 253
    nop

    .line 259
    nop

    .line 253
    nop

    .line 254
    nop

    .line 253
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "usbManager.deviceList"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/util/Map;

    .line 254
    .local v1, "$this$map$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 276
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 277
    .local v5, "$i$f$mapTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 278
    .local v7, "item$iv$iv":Ljava/util/Map$Entry;
    move-object v8, v7

    .local v8, "it":Ljava/util/Map$Entry;
    const/4 v9, 0x0

    .line 255
    .local v9, "$i$a$-map-UsbMassStorageDevice$Companion$getMassStorageDevices$4":I
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/usb/UsbDevice;

    .line 256
    .local v10, "device":Landroid/hardware/usb/UsbDevice;
    invoke-static {}, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "found usb device: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    sget-object v11, Lcom/github/mjdev/libaums/UsbMassStorageDevice;->Companion:Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;

    const-string v12, "device"

    invoke-static {v10, v12}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v10, p1}, Lcom/github/mjdev/libaums/UsbMassStorageDevice$Companion;->getMassStorageDevices(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)Ljava/util/List;

    move-result-object v10

    .end local v8    # "it":Ljava/util/Map$Entry;
    .end local v9    # "$i$a$-map-UsbMassStorageDevice$Companion$getMassStorageDevices$4":I
    .end local v10    # "device":Landroid/hardware/usb/UsbDevice;
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 277
    .end local v7    # "item$iv$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 279
    :cond_0
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$mapTo":I
    move-object v1, v3

    check-cast v1, Ljava/util/List;

    .end local v1    # "$this$map$iv":Ljava/util/Map;
    .end local v2    # "$i$f$map":I
    check-cast v1, Ljava/lang/Iterable;

    .line 259
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 260
    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v2, 0x0

    .line 280
    .local v2, "$i$f$toTypedArray":I
    move-object v3, v1

    .line 281
    .local v3, "thisCollection$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    new-array v4, v4, [Lcom/github/mjdev/libaums/UsbMassStorageDevice;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v4, [Lcom/github/mjdev/libaums/UsbMassStorageDevice;

    return-object v4

    .restart local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .restart local v2    # "$i$f$toTypedArray":I
    .restart local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_1
    new-instance v4, Lkotlin/TypeCastException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v4, v5}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 251
    .end local v0    # "usbManager":Landroid/hardware/usb/UsbManager;
    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v2    # "$i$f$toTypedArray":I
    .end local v3    # "thisCollection$iv":Ljava/util/Collection;
    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.hardware.usb.UsbManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
