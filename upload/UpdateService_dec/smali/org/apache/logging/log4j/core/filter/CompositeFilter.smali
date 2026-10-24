.class public final Lorg/apache/logging/log4j/core/filter/CompositeFilter;
.super Lorg/apache/logging/log4j/core/AbstractLifeCycle;
.source "CompositeFilter.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lorg/apache/logging/log4j/core/Filter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/AbstractLifeCycle;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/logging/log4j/core/Filter;",
        ">;",
        "Lorg/apache/logging/log4j/core/Filter;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    name = "filters"
    printObject = true
.end annotation


# instance fields
.field private final filters:[Lorg/apache/logging/log4j/core/Filter;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 50
    sget-object v0, Lorg/apache/logging/log4j/core/Filter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/Filter;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    .line 51
    return-void
.end method

.method private constructor <init>([Lorg/apache/logging/log4j/core/Filter;)V
    .locals 1
    .param p1, "filters"    # [Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filters"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/AbstractLifeCycle;-><init>()V

    .line 54
    if-nez p1, :cond_0

    sget-object v0, Lorg/apache/logging/log4j/core/Filter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/Filter;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    .line 55
    return-void
.end method

.method public static createFilters([Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    .locals 1
    .param p0, "filters"    # [Lorg/apache/logging/log4j/core/Filter;
        .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
            value = "Filters"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filters"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginFactory;
    .end annotation

    .line 621
    new-instance v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-direct {v0, p0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;-><init>([Lorg/apache/logging/log4j/core/Filter;)V

    return-object v0
.end method


# virtual methods
.method public addFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    .locals 6
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 58
    if-nez p1, :cond_0

    .line 60
    return-object p0

    .line 62
    :cond_0
    instance-of v0, p1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    if-eqz v0, :cond_1

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    .line 64
    .local v0, "compositeFilter":Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v2, v1

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/logging/log4j/core/Filter;

    .line 65
    .local v1, "copy":[Lorg/apache/logging/log4j/core/Filter;
    iget-object v2, v0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v4

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-direct {v2, v1}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;-><init>([Lorg/apache/logging/log4j/core/Filter;)V

    return-object v2

    .line 68
    .end local v0    # "compositeFilter":Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    .end local v1    # "copy":[Lorg/apache/logging/log4j/core/Filter;
    :cond_1
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/logging/log4j/core/Filter;

    .line 69
    .local v0, "copy":[Lorg/apache/logging/log4j/core/Filter;
    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 70
    new-instance v1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    invoke-direct {v1, v0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;-><init>([Lorg/apache/logging/log4j/core/Filter;)V

    return-object v1
.end method

.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 4
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 585
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 586
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 587
    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 588
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_1
    :goto_1
    return-object v0

    .line 592
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 10
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 538
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 539
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 540
    aget-object v4, v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 541
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    :cond_1
    :goto_1
    return-object v0

    .line 545
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 10
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0"
        }
    .end annotation

    .line 213
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 214
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 215
    aget-object v4, v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 216
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_1
    :goto_1
    return-object v0

    .line 220
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 12
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
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
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1"
        }
    .end annotation

    .line 241
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 242
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 243
    aget-object v5, v3, v1

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 244
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 242
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    :goto_1
    return-object v0

    .line 248
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 13
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 270
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 271
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 272
    aget-object v5, v3, v1

    move-object v6, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-interface/range {v5 .. v12}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 273
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    :goto_1
    return-object v0

    .line 277
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 14
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 300
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 301
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 302
    aget-object v5, v3, v1

    move-object v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-interface/range {v5 .. v13}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 303
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_1
    :goto_1
    return-object v0

    .line 307
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 15
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4"
        }
    .end annotation

    .line 332
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 333
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 334
    aget-object v5, v3, v1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-interface/range {v5 .. v14}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 335
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    :cond_1
    :goto_1
    return-object v0

    .line 339
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 16
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5"
        }
    .end annotation

    .line 365
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 366
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 367
    aget-object v5, v3, v1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    invoke-interface/range {v5 .. v15}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 368
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_1
    :goto_1
    return-object v0

    .line 372
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 17
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6"
        }
    .end annotation

    .line 399
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 400
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 401
    aget-object v5, v3, v1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    invoke-interface/range {v5 .. v16}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 402
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    :cond_1
    :goto_1
    return-object v0

    .line 406
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 18
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7"
        }
    .end annotation

    .line 435
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 436
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 437
    aget-object v5, v3, v1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    invoke-interface/range {v5 .. v17}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 438
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 436
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 439
    :cond_1
    :goto_1
    return-object v0

    .line 442
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 19
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8"
        }
    .end annotation

    .line 472
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 473
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 474
    aget-object v5, v3, v1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    invoke-interface/range {v5 .. v18}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 475
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    :cond_1
    :goto_1
    return-object v0

    .line 479
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 20
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "p0"    # Ljava/lang/Object;
    .param p6, "p1"    # Ljava/lang/Object;
    .param p7, "p2"    # Ljava/lang/Object;
    .param p8, "p3"    # Ljava/lang/Object;
    .param p9, "p4"    # Ljava/lang/Object;
    .param p10, "p5"    # Ljava/lang/Object;
    .param p11, "p6"    # Ljava/lang/Object;
    .param p12, "p7"    # Ljava/lang/Object;
    .param p13, "p8"    # Ljava/lang/Object;
    .param p14, "p9"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3",
            "p4",
            "p5",
            "p6",
            "p7",
            "p8",
            "p9"
        }
    .end annotation

    .line 510
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 511
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    move-object/from16 v2, p0

    iget-object v3, v2, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 512
    aget-object v5, v3, v1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move-object/from16 v16, p11

    move-object/from16 v17, p12

    move-object/from16 v18, p13

    move-object/from16 v19, p14

    invoke-interface/range {v5 .. v19}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 513
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v3, :cond_1

    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v3, :cond_0

    goto :goto_1

    .line 511
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 514
    :cond_1
    :goto_1
    return-object v0

    .line 517
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 10
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Ljava/lang/String;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "params"
        }
    .end annotation

    .line 186
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 187
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 188
    aget-object v4, v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 189
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 187
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 190
    :cond_1
    :goto_1
    return-object v0

    .line 193
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 10
    .param p1, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "level"    # Lorg/apache/logging/log4j/Level;
    .param p3, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p4, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p5, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "logger",
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 566
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    .line 567
    .local v0, "result":Lorg/apache/logging/log4j/core/Filter$Result;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 568
    aget-object v4, v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    .line 569
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v0, v2, :cond_1

    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->DENY:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 567
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 570
    :cond_1
    :goto_1
    return-object v0

    .line 573
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getFilters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/logging/log4j/core/Filter;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFiltersArray()[Lorg/apache/logging/log4j/core/Filter;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    return-object v0
.end method

.method public getOnMatch()Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1

    .line 165
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public getOnMismatch()Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1

    .line 155
    sget-object v0, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/logging/log4j/core/Filter;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/apache/logging/log4j/core/util/ObjectArrayIterator;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    invoke-direct {v0, v1}, Lorg/apache/logging/log4j/core/util/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public removeFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/CompositeFilter;
    .locals 5
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 74
    if-nez p1, :cond_0

    .line 76
    return-object p0

    .line 81
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    .local v0, "filterList":Ljava/util/List;, "Ljava/util/List<Lorg/apache/logging/log4j/core/Filter;>;"
    instance-of v1, p1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    if-eqz v1, :cond_1

    .line 83
    move-object v1, p1

    check-cast v1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    iget-object v1, v1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 84
    .local v4, "currentFilter":Lorg/apache/logging/log4j/core/Filter;
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 83
    .end local v4    # "currentFilter":Lorg/apache/logging/log4j/core/Filter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 89
    :cond_2
    new-instance v1, Lorg/apache/logging/log4j/core/filter/CompositeFilter;

    sget-object v2, Lorg/apache/logging/log4j/core/Filter;->EMPTY_ARRAY:[Lorg/apache/logging/log4j/core/Filter;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/logging/log4j/core/Filter;

    invoke-direct {v1, v2}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;-><init>([Lorg/apache/logging/log4j/core/Filter;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v0, v0

    return v0
.end method

.method public start()V
    .locals 4

    .line 127
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->setStarting()V

    .line 128
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 129
    .local v3, "filter":Lorg/apache/logging/log4j/core/Filter;
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/Filter;->start()V

    .line 128
    .end local v3    # "filter":Lorg/apache/logging/log4j/core/Filter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->setStarted()V

    .line 132
    return-void
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "timeout",
            "timeUnit"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->setStopping()V

    .line 137
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 138
    .local v3, "filter":Lorg/apache/logging/log4j/core/Filter;
    instance-of v4, v3, Lorg/apache/logging/log4j/core/LifeCycle2;

    if-eqz v4, :cond_0

    .line 139
    move-object v4, v3

    check-cast v4, Lorg/apache/logging/log4j/core/LifeCycle2;

    invoke-interface {v4, p1, p2, p3}, Lorg/apache/logging/log4j/core/LifeCycle2;->stop(JLjava/util/concurrent/TimeUnit;)Z

    goto :goto_1

    .line 141
    :cond_0
    invoke-interface {v3}, Lorg/apache/logging/log4j/core/Filter;->stop()V

    .line 137
    .end local v3    # "filter":Lorg/apache/logging/log4j/core/Filter;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->setStopped()V

    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 598
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 599
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 600
    const/16 v2, 0x7b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 602
    :cond_0
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_1
    iget-object v2, p0, Lorg/apache/logging/log4j/core/filter/CompositeFilter;->filters:[Lorg/apache/logging/log4j/core/Filter;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 606
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 607
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 609
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
