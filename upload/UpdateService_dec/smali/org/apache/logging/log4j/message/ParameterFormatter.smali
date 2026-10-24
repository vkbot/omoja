.class final Lorg/apache/logging/log4j/message/ParameterFormatter;
.super Ljava/lang/Object;
.source "ParameterFormatter.java"


# static fields
.field private static final DELIM_START:C = '{'

.field private static final DELIM_STOP:C = '}'

.field static final ERROR_MSG_SEPARATOR:Ljava/lang/String; = ":"

.field static final ERROR_PREFIX:Ljava/lang/String; = "[!!!"

.field static final ERROR_SEPARATOR:Ljava/lang/String; = "=>"

.field static final ERROR_SUFFIX:Ljava/lang/String; = "!!!]"

.field private static final ESCAPE_CHAR:C = '\\'

.field static final RECURSION_PREFIX:Ljava/lang/String; = "[..."

.field static final RECURSION_SUFFIX:Ljava/lang/String; = "...]"

.field private static final SIMPLE_DATE_FORMAT_REF:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-object v0, Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;->INSTANCE:Lorg/apache/logging/log4j/message/-$$Lambda$ParameterFormatter$iFCeOcsfcv98Z9c0FVirgm3BE1g;

    .line 65
    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lorg/apache/logging/log4j/message/ParameterFormatter;->SIMPLE_DATE_FORMAT_REF:Ljava/lang/ThreadLocal;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private static appendArray(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V
    .locals 8
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "str",
            "dejaVu",
            "oClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 525
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .local p3, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, [B

    if-ne p3, v0, :cond_0

    .line 526
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 527
    :cond_0
    const-class v0, [S

    if-ne p3, v0, :cond_1

    .line 528
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    invoke-static {v0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 529
    :cond_1
    const-class v0, [I

    if-ne p3, v0, :cond_2

    .line 530
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 531
    :cond_2
    const-class v0, [J

    if-ne p3, v0, :cond_3

    .line 532
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 533
    :cond_3
    const-class v0, [F

    if-ne p3, v0, :cond_4

    .line 534
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 535
    :cond_4
    const-class v0, [D

    if-ne p3, v0, :cond_5

    .line 536
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    invoke-static {v0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 537
    :cond_5
    const-class v0, [Z

    if-ne p3, v0, :cond_6

    .line 538
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    invoke-static {v0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 539
    :cond_6
    const-class v0, [C

    if-ne p3, v0, :cond_7

    .line 540
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    invoke-static {v0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 543
    :cond_7
    invoke-static {p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->getOrCreateDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 544
    .local v0, "effectiveDejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 545
    .local v1, "seen":Z
    if-eqz v1, :cond_8

    .line 546
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "id":Ljava/lang/String;
    const-string v3, "[..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "...]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_2

    .line 549
    :cond_8
    move-object v2, p0

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 550
    .local v2, "oArray":[Ljava/lang/Object;
    const/16 v3, 0x5b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    const/4 v3, 0x1

    .line 552
    .local v3, "first":Z
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_a

    aget-object v6, v2, v5

    .line 553
    .local v6, "current":Ljava/lang/Object;
    if-eqz v3, :cond_9

    .line 554
    const/4 v3, 0x0

    goto :goto_1

    .line 556
    :cond_9
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    :goto_1
    invoke-static {v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->cloneDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v7

    invoke-static {v6, p1, v7}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 552
    .end local v6    # "current":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 560
    :cond_a
    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 563
    .end local v0    # "effectiveDejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    .end local v1    # "seen":Z
    .end local v2    # "oArray":[Ljava/lang/Object;
    .end local v3    # "first":Z
    :goto_2
    return-void
.end method

.method private static appendCollection(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 7
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "str",
            "dejaVu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 605
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->getOrCreateDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 606
    .local v0, "effectiveDejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 607
    .local v1, "seen":Z
    if-eqz v1, :cond_0

    .line 608
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "id":Ljava/lang/String;
    const-string v3, "[..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "...]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_2

    .line 611
    :cond_0
    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    .line 612
    .local v2, "oCol":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/16 v3, 0x5b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const/4 v3, 0x1

    .line 614
    .local v3, "isFirst":Z
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 615
    .local v5, "anOCol":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 616
    const/4 v3, 0x0

    goto :goto_1

    .line 618
    :cond_1
    const-string v6, ", "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    :goto_1
    invoke-static {v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->cloneDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, p1, v6}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 621
    .end local v5    # "anOCol":Ljava/lang/Object;
    goto :goto_0

    .line 622
    :cond_2
    const/16 v4, 0x5d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    .end local v2    # "oCol":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v3    # "isFirst":Z
    :goto_2
    return-void
.end method

.method private static appendDate(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "o",
            "str"
        }
    .end annotation

    .line 488
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 489
    const/4 v0, 0x0

    return v0

    .line 491
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/util/Date;

    .line 492
    .local v0, "date":Ljava/util/Date;
    sget-object v1, Lorg/apache/logging/log4j/message/ParameterFormatter;->SIMPLE_DATE_FORMAT_REF:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 493
    .local v1, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/4 v2, 0x1

    return v2
.end method

.method private static appendMap(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 10
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "str",
            "dejaVu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 572
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->getOrCreateDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 573
    .local v0, "effectiveDejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 574
    .local v1, "seen":Z
    if-eqz v1, :cond_0

    .line 575
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "id":Ljava/lang/String;
    const-string v3, "[..."

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "...]"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .end local v2    # "id":Ljava/lang/String;
    goto :goto_2

    .line 578
    :cond_0
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    .line 579
    .local v2, "oMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 580
    const/4 v3, 0x1

    .line 581
    .local v3, "isFirst":Z
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 582
    .local v5, "o1":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Ljava/util/Map$Entry;

    .line 583
    .local v6, "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    if-eqz v3, :cond_1

    .line 584
    const/4 v3, 0x0

    goto :goto_1

    .line 586
    :cond_1
    const-string v7, ", "

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :goto_1
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    .line 589
    .local v7, "key":Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 590
    .local v8, "value":Ljava/lang/Object;
    invoke-static {v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->cloneDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v7, p1, v9}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 591
    const/16 v9, 0x3d

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    invoke-static {v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->cloneDejaVu(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    invoke-static {v8, p1, v9}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 593
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "current":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v7    # "key":Ljava/lang/Object;
    .end local v8    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 594
    :cond_2
    const/16 v4, 0x7d

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    .end local v2    # "oMap":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v3    # "isFirst":Z
    :goto_2
    return-void
.end method

.method private static appendPotentiallyRecursiveValue(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 4
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "str",
            "dejaVu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 509
    .local v0, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    invoke-static {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->appendArray(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V

    goto :goto_0

    .line 511
    :cond_0
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 512
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->appendMap(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto :goto_0

    .line 513
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 514
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->appendCollection(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 518
    :goto_0
    return-void

    .line 516
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "was expecting a container, found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static appendSpecialTypes(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "o",
            "str"
        }
    .end annotation

    .line 484
    invoke-static {p1, p0}, Lorg/apache/logging/log4j/util/StringBuilders;->appendSpecificTypes(Ljava/lang/StringBuilder;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->appendDate(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static cloneDejaVu(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dejaVu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 637
    .local p0, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {}, Lorg/apache/logging/log4j/message/ParameterFormatter;->createDejaVu()Ljava/util/Set;

    move-result-object v0

    .line 638
    .local v0, "clonedDejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 639
    return-object v0
.end method

.method static countArgumentPlaceholders(Ljava/lang/String;)I
    .locals 9
    .param p0, "messagePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "messagePattern"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 81
    .local v1, "length":I
    const/4 v2, 0x0

    .line 82
    .local v2, "result":I
    const/4 v3, 0x0

    .line 83
    .local v3, "isEscaped":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_5

    .line 84
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 85
    .local v5, "curChar":C
    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 86
    if-nez v3, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v3, v6

    goto :goto_2

    .line 87
    :cond_2
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_4

    .line 88
    if-nez v3, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x7d

    if-ne v6, v8, :cond_3

    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    add-int/lit8 v4, v4, 0x1

    .line 92
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 94
    :cond_4
    const/4 v3, 0x0

    .line 83
    .end local v5    # "curChar":C
    :goto_2
    add-int/2addr v4, v7

    goto :goto_0

    .line 97
    .end local v4    # "i":I
    :cond_5
    return v2
.end method

.method static countArgumentPlaceholders2(Ljava/lang/String;[I)I
    .locals 9
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "indices"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "indices"
        }
    .end annotation

    .line 107
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 108
    return v0

    .line 110
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 111
    .local v1, "length":I
    const/4 v2, 0x0

    .line 112
    .local v2, "result":I
    const/4 v3, 0x0

    .line 113
    .local v3, "isEscaped":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_5

    .line 114
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 115
    .local v5, "curChar":C
    const/16 v6, 0x5c

    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 116
    if-nez v3, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    move v3, v6

    .line 117
    const/4 v6, -0x1

    aput v6, p1, v0

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 119
    :cond_2
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_4

    .line 120
    if-nez v3, :cond_3

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x7d

    if-ne v6, v8, :cond_3

    .line 121
    aput v4, p1, v2

    .line 122
    add-int/lit8 v2, v2, 0x1

    .line 123
    add-int/lit8 v4, v4, 0x1

    .line 125
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 127
    :cond_4
    const/4 v3, 0x0

    .line 113
    .end local v5    # "curChar":C
    :goto_2
    add-int/2addr v4, v7

    goto :goto_0

    .line 130
    .end local v4    # "i":I
    :cond_5
    return v2
.end method

.method static countArgumentPlaceholders3([CI[I)I
    .locals 7
    .param p0, "messagePattern"    # [C
    .param p1, "length"    # I
    .param p2, "indices"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "length",
            "indices"
        }
    .end annotation

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "result":I
    const/4 v1, 0x0

    .line 142
    .local v1, "isEscaped":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, p1, -0x1

    if-ge v2, v3, :cond_4

    .line 143
    aget-char v3, p0, v2

    .line 144
    .local v3, "curChar":C
    const/16 v4, 0x5c

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 145
    if-nez v1, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    move v1, v4

    goto :goto_2

    .line 146
    :cond_1
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_3

    .line 147
    if-nez v1, :cond_2

    add-int/lit8 v4, v2, 0x1

    aget-char v4, p0, v4

    const/16 v6, 0x7d

    if-ne v4, v6, :cond_2

    .line 148
    aput v2, p2, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    .line 150
    add-int/lit8 v2, v2, 0x1

    .line 152
    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 154
    :cond_3
    const/4 v1, 0x0

    .line 142
    .end local v3    # "curChar":C
    :goto_2
    add-int/2addr v2, v5

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_4
    return v0
.end method

.method private static createDejaVu()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 633
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static deepToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 393
    if-nez p0, :cond_0

    .line 394
    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 398
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 400
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 401
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_2
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_3

    .line 404
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 406
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 407
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 409
    :cond_4
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 410
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 412
    :cond_5
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_6

    .line 413
    move-object v0, p0

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 415
    :cond_6
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_7

    .line 416
    move-object v0, p0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 418
    :cond_7
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_8

    .line 419
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 421
    :cond_8
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_9

    .line 422
    move-object v0, p0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 424
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .local v0, "str":Ljava/lang/StringBuilder;
    invoke-static {p0, v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "arguments"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .local v0, "result":Ljava/lang/StringBuilder;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p1

    .line 170
    .local v1, "argCount":I
    :goto_0
    invoke-static {v0, p0, p1, v1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->formatMessage(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I)V

    .line 171
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static formatMessage(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I)V
    .locals 6
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "argCount"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "messagePattern",
            "arguments",
            "argCount"
        }
    .end annotation

    .line 230
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-nez p3, :cond_0

    goto :goto_3

    .line 234
    :cond_0
    const/4 v0, 0x0

    .line 235
    .local v0, "escapeCounter":I
    const/4 v1, 0x0

    .line 236
    .local v1, "currentArgument":I
    const/4 v2, 0x0

    .line 237
    .local v2, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 238
    .local v3, "len":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    if-ge v2, v4, :cond_4

    .line 239
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 240
    .local v4, "curChar":C
    const/16 v5, 0x5c

    if-ne v4, v5, :cond_1

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 243
    :cond_1
    invoke-static {v4, p1, v2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->isDelimPair(CLjava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 244
    add-int/lit8 v2, v2, 0x1

    .line 247
    invoke-static {v0, p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeEscapedEscapeChars(ILjava/lang/StringBuilder;)V

    .line 249
    invoke-static {v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->isOdd(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeDelimPair(Ljava/lang/StringBuilder;)V

    goto :goto_1

    .line 254
    :cond_2
    invoke-static {p2, p3, v1, p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeArgOrDelimPair([Ljava/lang/Object;IILjava/lang/StringBuilder;)V

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_3
    invoke-static {p0, v0, v4}, Lorg/apache/logging/log4j/message/ParameterFormatter;->handleLiteralChar(Ljava/lang/StringBuilder;IC)V

    .line 260
    :goto_1
    const/4 v0, 0x0

    .line 238
    .end local v4    # "curChar":C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_4
    invoke-static {p1, v3, p0, v0, v2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->handleRemainingCharIfAny(Ljava/lang/String;ILjava/lang/StringBuilder;II)V

    .line 264
    return-void

    .line 231
    .end local v0    # "escapeCounter":I
    .end local v1    # "currentArgument":I
    .end local v2    # "i":I
    .end local v3    # "len":I
    :cond_5
    :goto_3
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    return-void
.end method

.method static formatMessage2(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;I[I)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/Object;
    .param p3, "argCount"    # I
    .param p4, "indices"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "messagePattern",
            "arguments",
            "argCount",
            "indices"
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    const/4 v0, 0x0

    .line 188
    .local v0, "previous":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 189
    aget v2, p4, v1

    invoke-virtual {p0, p1, v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 190
    aget v2, p4, v1

    add-int/lit8 v0, v2, 0x2

    .line 191
    aget-object v2, p2, v1

    invoke-static {v2, p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 194
    return-void

    .line 184
    .end local v0    # "previous":I
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    return-void
.end method

.method static formatMessage3(Ljava/lang/StringBuilder;[CI[Ljava/lang/Object;I[I)V
    .locals 3
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "messagePattern"    # [C
    .param p2, "patternLength"    # I
    .param p3, "arguments"    # [Ljava/lang/Object;
    .param p4, "argCount"    # I
    .param p5, "indices"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "messagePattern",
            "patternLength",
            "arguments",
            "argCount",
            "indices"
        }
    .end annotation

    .line 205
    if-nez p1, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    goto :goto_1

    .line 212
    :cond_1
    const/4 v0, 0x0

    .line 213
    .local v0, "previous":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_2

    .line 214
    aget v2, p5, v1

    invoke-virtual {p0, p1, v0, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 215
    aget v2, p5, v1

    add-int/lit8 v0, v2, 0x2

    .line 216
    aget-object v2, p3, v1

    invoke-static {v2, p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0, p1, v0, p2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 219
    return-void

    .line 209
    .end local v0    # "previous":I
    :cond_3
    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 210
    return-void
.end method

.method private static getOrCreateDejaVu(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dejaVu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 627
    .local p0, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    if-nez p0, :cond_0

    .line 628
    invoke-static {}, Lorg/apache/logging/log4j/message/ParameterFormatter;->createDejaVu()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 627
    :goto_0
    return-object v0
.end method

.method private static handleErrorInObjectToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "str",
            "t"
        }
    .end annotation

    .line 652
    const-string v0, "[!!!"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->identityToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    const-string v0, "=>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 659
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    :cond_0
    const-string v2, "!!!]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    return-void
.end method

.method private static handleLastChar(Ljava/lang/StringBuilder;IC)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "escapeCounter"    # I
    .param p2, "curChar"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "escapeCounter",
            "curChar"
        }
    .end annotation

    .line 296
    const/16 v0, 0x5c

    if-ne p2, v0, :cond_0

    .line 297
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0, p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeUnescapedEscapeChars(ILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 299
    :cond_0
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->handleLiteralChar(Ljava/lang/StringBuilder;IC)V

    .line 301
    :goto_0
    return-void
.end method

.method private static handleLiteralChar(Ljava/lang/StringBuilder;IC)V
    .locals 0
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .param p1, "escapeCounter"    # I
    .param p2, "curChar"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "buffer",
            "escapeCounter",
            "curChar"
        }
    .end annotation

    .line 312
    invoke-static {p1, p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeUnescapedEscapeChars(ILjava/lang/StringBuilder;)V

    .line 313
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    return-void
.end method

.method private static handleRemainingCharIfAny(Ljava/lang/String;ILjava/lang/StringBuilder;II)V
    .locals 1
    .param p0, "messagePattern"    # Ljava/lang/String;
    .param p1, "len"    # I
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .param p3, "escapeCounter"    # I
    .param p4, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "messagePattern",
            "len",
            "buffer",
            "escapeCounter",
            "i"
        }
    .end annotation

    .line 284
    add-int/lit8 v0, p1, -0x1

    if-ne p4, v0, :cond_0

    .line 285
    invoke-virtual {p0, p4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 286
    .local v0, "curChar":C
    invoke-static {p2, p3, v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->handleLastChar(Ljava/lang/StringBuilder;IC)V

    .line 288
    .end local v0    # "curChar":C
    :cond_0
    return-void
.end method

.method static identityToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "obj"
        }
    .end annotation

    .line 686
    if-nez p0, :cond_0

    .line 687
    const/4 v0, 0x0

    return-object v0

    .line 689
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isDelimPair(CLjava/lang/String;I)Z
    .locals 2
    .param p0, "curChar"    # C
    .param p1, "messagePattern"    # Ljava/lang/String;
    .param p2, "curCharIndex"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "curChar",
            "messagePattern",
            "curCharIndex"
        }
    .end annotation

    .line 273
    const/16 v0, 0x7b

    if-ne p0, v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isMaybeRecursive(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 501
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/Map;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static isOdd(I)Z
    .locals 2
    .param p0, "number"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "number"
        }
    .end annotation

    .line 332
    and-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$static$0()Ljava/text/SimpleDateFormat;
    .locals 2

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "o",
            "str"
        }
    .end annotation

    .line 448
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    .line 449
    return-void
.end method

.method private static recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "o",
            "str",
            "dejaVu"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 473
    .local p2, "dejaVu":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->appendSpecialTypes(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    return-void

    .line 476
    :cond_0
    invoke-static {p0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->isMaybeRecursive(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-static {p0, p1, p2}, Lorg/apache/logging/log4j/message/ParameterFormatter;->appendPotentiallyRecursiveValue(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/util/Set;)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->tryObjectToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 481
    :goto_0
    return-void
.end method

.method private static tryObjectToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;
    .param p1, "str"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "o",
            "str"
        }
    .end annotation

    .line 645
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    goto :goto_0

    .line 646
    :catchall_0
    move-exception v0

    .line 647
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {p0, p1, v0}, Lorg/apache/logging/log4j/message/ParameterFormatter;->handleErrorInObjectToString(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/Throwable;)V

    .line 649
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method private static writeArgOrDelimPair([Ljava/lang/Object;IILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "arguments"    # [Ljava/lang/Object;
    .param p1, "argCount"    # I
    .param p2, "currentArgument"    # I
    .param p3, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "arguments",
            "argCount",
            "currentArgument",
            "buffer"
        }
    .end annotation

    .line 367
    if-ge p2, p1, :cond_0

    .line 368
    aget-object v0, p0, p2

    invoke-static {v0, p3}, Lorg/apache/logging/log4j/message/ParameterFormatter;->recursiveDeepToString(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {p3}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeDelimPair(Ljava/lang/StringBuilder;)V

    .line 372
    :goto_0
    return-void
.end method

.method private static writeDelimPair(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p0, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 322
    const/16 v0, 0x7b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    return-void
.end method

.method private static writeEscapedEscapeChars(ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "escapeCounter"    # I
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "escapeCounter",
            "buffer"
        }
    .end annotation

    .line 342
    shr-int/lit8 v0, p0, 0x1

    .line 343
    .local v0, "escapedEscapes":I
    invoke-static {v0, p1}, Lorg/apache/logging/log4j/message/ParameterFormatter;->writeUnescapedEscapeChars(ILjava/lang/StringBuilder;)V

    .line 344
    return-void
.end method

.method private static writeUnescapedEscapeChars(ILjava/lang/StringBuilder;)V
    .locals 1
    .param p0, "escapeCounter"    # I
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "escapeCounter",
            "buffer"
        }
    .end annotation

    .line 353
    :goto_0
    if-lez p0, :cond_0

    .line 354
    const/16 v0, 0x5c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 357
    :cond_0
    return-void
.end method
