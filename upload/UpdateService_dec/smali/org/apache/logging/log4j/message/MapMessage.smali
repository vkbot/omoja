.class public Lorg/apache/logging/log4j/message/MapMessage;
.super Ljava/lang/Object;
.source "MapMessage.java"

# interfaces
.implements Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/apache/logging/log4j/message/MapMessage<",
        "TM;TV;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/logging/log4j/util/MultiFormatStringBuilderFormattable;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45d360f8f7f9fb90L


# instance fields
.field private final data:Lorg/apache/logging/log4j/util/IndexedStringMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    .line 109
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "initialCapacity"
        }
    .end annotation

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lorg/apache/logging/log4j/util/SortedArrayStringMap;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/util/SortedArrayStringMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    .line 126
    return-void
.end method

.method private asJava(Ljava/lang/StringBuilder;Z)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "quoted"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "sb",
            "quoted"
        }
    .end annotation

    .line 428
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 430
    if-lez v0, :cond_0

    .line 431
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 434
    const/16 v1, 0x22

    if-eqz p2, :cond_1

    .line 435
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    :cond_1
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 438
    if-eqz p2, :cond_2

    .line 439
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    .end local v0    # "i":I
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    return-void
.end method

.method private format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 2
    .param p1, "format"    # Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "sb"
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    if-nez p1, :cond_0

    .line 322
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->appendMap(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 324
    :cond_0
    sget-object v0, Lorg/apache/logging/log4j/message/MapMessage$1;->$SwitchMap$org$apache$logging$log4j$message$MapMessage$MapFormat:[I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 341
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->appendMap(Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asJavaUnquoted(Ljava/lang/StringBuilder;)V

    .line 339
    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asJava(Ljava/lang/StringBuilder;)V

    .line 335
    goto :goto_0

    .line 330
    :cond_3
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asJson(Ljava/lang/StringBuilder;)V

    .line 331
    goto :goto_0

    .line 326
    :cond_4
    invoke-virtual {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asXml(Ljava/lang/StringBuilder;)V

    .line 327
    nop

    .line 345
    :goto_0
    return-object p2
.end method

.method private getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    .locals 3
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 392
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    .line 395
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 396
    aget-object v2, p1, v1

    invoke-static {v2}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->lookupIgnoreCase(Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object v2

    .line 397
    .local v2, "mapFormat":Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    if-eqz v2, :cond_1

    .line 398
    return-object v2

    .line 395
    .end local v2    # "mapFormat":Lorg/apache/logging/log4j/message/MapMessage$MapFormat;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 393
    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method protected appendMap(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 405
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 406
    if-lez v0, :cond_0

    .line 407
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    :cond_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 413
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected asJava(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 424
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->asJava(Ljava/lang/StringBuilder;Z)V

    .line 425
    return-void
.end method

.method protected asJavaUnquoted(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/logging/log4j/message/MapMessage;->asJava(Ljava/lang/StringBuilder;Z)V

    .line 421
    return-void
.end method

.method protected asJson(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 416
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p1, v0}, Lorg/apache/logging/log4j/message/MapMessageJsonFormatter;->format(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 417
    return-void
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    .line 246
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MapMessage;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public asXml(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sb"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const-string v0, "<Map>\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 356
    const-string v1, "  <Entry key=\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    .line 357
    invoke-interface {v1, v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v1, "\">"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 360
    .local v1, "size":I
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 361
    invoke-static {p1, v1}, Lorg/apache/logging/log4j/util/StringBuilders;->escapeXml(Ljava/lang/StringBuilder;I)V

    .line 362
    const-string v2, "</Entry>\n"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .end local v1    # "size":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    .end local v0    # "i":I
    :cond_0
    const-string v0, "</Map>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    return-void
.end method

.method public clear()V
    .locals 1

    .line 181
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->clear()V

    .line 182
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 472
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    if-ne p0, p1, :cond_0

    .line 473
    const/4 v0, 0x1

    return v0

    .line 475
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage;

    .line 481
    .local v0, "that":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<**>;"
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    iget-object v2, v0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 476
    .end local v0    # "that":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<**>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "action"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CV:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/BiConsumer<",
            "Ljava/lang/String;",
            "-TCV;>;)V"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    .local p1, "action":Lorg/apache/logging/log4j/util/BiConsumer;, "Lorg/apache/logging/log4j/util/BiConsumer<Ljava/lang/String;-TCV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->forEach(Lorg/apache/logging/log4j/util/BiConsumer;)V

    .line 283
    return-void
.end method

.method public forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "action",
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<CV:",
            "Ljava/lang/Object;",
            "S:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/logging/log4j/util/TriConsumer<",
            "Ljava/lang/String;",
            "-TCV;TS;>;TS;)V"
        }
    .end annotation

    .line 311
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    .local p1, "action":Lorg/apache/logging/log4j/util/TriConsumer;, "Lorg/apache/logging/log4j/util/TriConsumer<Ljava/lang/String;-TCV;TS;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->forEach(Lorg/apache/logging/log4j/util/TriConsumer;Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x0

    check-cast v0, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    invoke-direct {p0, v0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 463
    return-void
.end method

.method public formatTo([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "formats"    # [Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formats",
            "buffer"
        }
    .end annotation

    .line 467
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 468
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 225
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0, p1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 226
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->deepToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getData()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 162
    .local v0, "result":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;TV;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getKeyAt(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v3, v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 152
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const-string v0, ""

    return-object v0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 1

    .line 130
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-static {}, Lorg/apache/logging/log4j/message/MapMessage$MapFormat;->names()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 1

    .line 373
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MapMessage;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedMessage([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 388
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage$MapFormat;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/apache/logging/log4j/message/MapMessage;->format(Lorg/apache/logging/log4j/message/MapMessage$MapFormat;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIndexedReadOnlyStringMap()Lorg/apache/logging/log4j/util/IndexedReadOnlyStringMap;
    .locals 1

    .line 174
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    return-object v0
.end method

.method public getParameters()[Ljava/lang/Object;
    .locals 3

    .line 139
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v0}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 140
    .local v0, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 141
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v2, v1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->getValueAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 496
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 486
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TV;>;)TM;"
        }
    .end annotation

    .line 452
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    new-instance v0, Lorg/apache/logging/log4j/message/MapMessage;

    invoke-direct {v0, p1}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    if-eqz p2, :cond_0

    .line 204
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0, p2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    return-void

    .line 202
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value provided for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 215
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, p1}, Lorg/apache/logging/log4j/util/IndexedStringMap;->remove(Ljava/lang/String;)V

    .line 237
    return-object v0
.end method

.method protected toKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "candidateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "candidateKey"
        }
    .end annotation

    .line 597
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 457
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/MapMessage;->asString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate(Ljava/lang/String;B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 515
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 524
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;D)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 533
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 542
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;J)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 560
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 569
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 587
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method protected validate(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 506
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    return-void
.end method

.method public with(Ljava/lang/String;B)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "B)TM;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;B)V

    .line 626
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 627
    return-object p0
.end method

.method public with(Ljava/lang/String;C)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "C)TM;"
        }
    .end annotation

    .line 639
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;C)V

    .line 641
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 642
    return-object p0
.end method

.method public with(Ljava/lang/String;D)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TM;"
        }
    .end annotation

    .line 655
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;D)V

    .line 657
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    return-object p0
.end method

.method public with(Ljava/lang/String;F)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F)TM;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;F)V

    .line 672
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 673
    return-object p0
.end method

.method public with(Ljava/lang/String;I)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TM;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 686
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;I)V

    .line 687
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 688
    return-object p0
.end method

.method public with(Ljava/lang/String;J)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TM;"
        }
    .end annotation

    .line 700
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2, p3}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;J)V

    .line 702
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 703
    return-object p0
.end method

.method public with(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 2
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TM;"
        }
    .end annotation

    .line 715
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 716
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-interface {v1, v0, p2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 718
    return-object p0
.end method

.method public with(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 1
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TM;"
        }
    .end annotation

    .line 744
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    return-object p0
.end method

.method public with(Ljava/lang/String;S)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S)TM;"
        }
    .end annotation

    .line 730
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;S)V

    .line 732
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 733
    return-object p0
.end method

.method public with(Ljava/lang/String;Z)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 3
    .param p1, "candidateKey"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "candidateKey",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TM;"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/apache/logging/log4j/message/MapMessage;, "Lorg/apache/logging/log4j/message/MapMessage<TM;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->toKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->validate(Ljava/lang/String;Z)V

    .line 611
    iget-object v1, p0, Lorg/apache/logging/log4j/message/MapMessage;->data:Lorg/apache/logging/log4j/util/IndexedStringMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lorg/apache/logging/log4j/util/IndexedStringMap;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 612
    return-object p0
.end method
