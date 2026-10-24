.class public Lorg/apache/logging/log4j/core/Logger$PrivateConfig;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PrivateConfig"
.end annotation


# instance fields
.field public final config:Lorg/apache/logging/log4j/core/config/Configuration;

.field private final intLevel:I

.field private final logger:Lorg/apache/logging/log4j/core/Logger;

.field public final loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

.field private final loggerConfigLevel:Lorg/apache/logging/log4j/Level;

.field private final requiresLocation:Z

.field final synthetic this$0:Lorg/apache/logging/log4j/core/Logger;


# direct methods
.method public constructor <init>(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Logger$PrivateConfig;Lorg/apache/logging/log4j/Level;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "pc"    # Lorg/apache/logging/log4j/core/Logger$PrivateConfig;
    .param p3, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "pc",
            "level"
        }
    .end annotation

    .line 410
    iput-object p1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->this$0:Lorg/apache/logging/log4j/core/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iget-object v0, p2, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 412
    iget-object v0, p2, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 413
    iput-object p3, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfigLevel:Lorg/apache/logging/log4j/Level;

    .line 414
    invoke-virtual {p3}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    .line 415
    iget-object v0, p2, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    .line 416
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->requiresLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->requiresLocation:Z

    .line 417
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/Logger$PrivateConfig;Lorg/apache/logging/log4j/core/config/LoggerConfig;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "pc"    # Lorg/apache/logging/log4j/core/Logger$PrivateConfig;
    .param p3, "lc"    # Lorg/apache/logging/log4j/core/config/LoggerConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "pc",
            "lc"
        }
    .end annotation

    .line 419
    iput-object p1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->this$0:Lorg/apache/logging/log4j/core/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iget-object v0, p2, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 421
    iput-object p3, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 422
    invoke-virtual {p3}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfigLevel:Lorg/apache/logging/log4j/Level;

    .line 423
    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    .line 424
    iget-object v0, p2, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    .line 425
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->requiresLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->requiresLocation:Z

    .line 426
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/core/config/Configuration;Lorg/apache/logging/log4j/core/Logger;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/logging/log4j/core/Logger;
    .param p2, "config"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .param p3, "logger"    # Lorg/apache/logging/log4j/core/Logger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            "this$0",
            "config",
            "logger"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->this$0:Lorg/apache/logging/log4j/core/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 403
    invoke-virtual {p1}, Lorg/apache/logging/log4j/core/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getLoggerConfig(Ljava/lang/String;)Lorg/apache/logging/log4j/core/config/LoggerConfig;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    .line 404
    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfigLevel:Lorg/apache/logging/log4j/Level;

    .line 405
    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v0

    iput v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    .line 406
    iput-object p3, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    .line 407
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->requiresLocation()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->requiresLocation:Z

    .line 408
    return-void
.end method

.method static synthetic access$000(Lorg/apache/logging/log4j/core/Logger$PrivateConfig;)Lorg/apache/logging/log4j/Level;
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    .line 390
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfigLevel:Lorg/apache/logging/log4j/Level;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/logging/log4j/core/Logger$PrivateConfig;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/logging/log4j/core/Logger$PrivateConfig;

    .line 390
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->requiresLocation:Z

    return v0
.end method


# virtual methods
.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/CharSequence;Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 597
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 598
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 599
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 600
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 603
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/Object;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 608
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 609
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 610
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 611
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 614
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 435
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 436
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    new-array v6, v8, [Ljava/lang/Object;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 437
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 438
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 441
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "p0"
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 468
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 469
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 470
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 471
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 474
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "p0",
            "p1"
        }
    .end annotation

    .line 479
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 480
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v0, :cond_1

    .line 481
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 482
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 483
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    return v8

    .line 486
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v8, v9

    :goto_1
    return v8
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 12
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2"
        }
    .end annotation

    .line 491
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 492
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 493
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 494
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 495
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v10, v11

    :goto_0
    return v10

    .line 498
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v10, v11

    :goto_1
    return v10
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
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
            "level",
            "marker",
            "msg",
            "p0",
            "p1",
            "p2",
            "p3"
        }
    .end annotation

    .line 503
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 504
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v1, :cond_1

    .line 505
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 506
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 507
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v11, v12

    :goto_0
    return v11

    .line 510
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v11, v12

    :goto_1
    return v11
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 14
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
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

    .line 516
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 517
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    .line 518
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 519
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 520
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v12, v13

    :goto_0
    return v12

    .line 523
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v12, v13

    :goto_1
    return v12
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 15
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
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

    .line 529
    move-object v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 530
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_1

    .line 531
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-interface/range {v2 .. v12}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 532
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 533
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v13, v14

    :goto_0
    return v13

    .line 536
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v13, v14

    :goto_1
    return v13
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 16
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
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

    .line 542
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 543
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    .line 544
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-interface/range {v2 .. v13}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 545
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 546
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move v14, v15

    :goto_0
    return v14

    .line 549
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v14, v15

    :goto_1
    return v14
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 17
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
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

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 557
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v15, 0x1

    const/16 v16, 0x0

    if-eqz v1, :cond_1

    .line 558
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    invoke-interface/range {v2 .. v14}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 559
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 560
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v15, v16

    :goto_0
    return v15

    .line 563
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v15, v16

    :goto_1
    return v15
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 18
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
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

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 571
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v1, :cond_1

    .line 572
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-interface/range {v2 .. v15}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 573
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 574
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v16, v17

    :goto_0
    return v16

    .line 577
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v16, v17

    :goto_1
    return v16
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 19
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p0"    # Ljava/lang/Object;
    .param p5, "p1"    # Ljava/lang/Object;
    .param p6, "p2"    # Ljava/lang/Object;
    .param p7, "p3"    # Ljava/lang/Object;
    .param p8, "p4"    # Ljava/lang/Object;
    .param p9, "p5"    # Ljava/lang/Object;
    .param p10, "p6"    # Ljava/lang/Object;
    .param p11, "p7"    # Ljava/lang/Object;
    .param p12, "p8"    # Ljava/lang/Object;
    .param p13, "p9"    # Ljava/lang/Object;
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

    .line 584
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    .line 585
    .local v1, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v1, :cond_1

    .line 586
    iget-object v3, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v2, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-interface/range {v2 .. v16}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v2

    .line 588
    .local v2, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v2, v3, :cond_1

    .line 589
    sget-object v3, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v17, v18

    :goto_0
    return v17

    .line 592
    .end local v2    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v2, v0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual/range {p1 .. p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v3

    if-lt v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v17, v18

    :goto_1
    return v17
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 446
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 447
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 448
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 449
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 452
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method varargs filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "p1"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "p1"
        }
    .end annotation

    .line 456
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 457
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 458
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 459
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 460
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 463
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method filter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Z
    .locals 9
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "marker"    # Lorg/apache/logging/log4j/Marker;
    .param p3, "msg"    # Lorg/apache/logging/log4j/message/Message;
    .param p4, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "marker",
            "msg",
            "t"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-interface {v0}, Lorg/apache/logging/log4j/core/config/Configuration;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v0

    .line 619
    .local v0, "filter":Lorg/apache/logging/log4j/core/Filter;
    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_1

    .line 620
    iget-object v2, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lorg/apache/logging/log4j/core/Filter;->filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v1

    .line 621
    .local v1, "r":Lorg/apache/logging/log4j/core/Filter$Result;
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->NEUTRAL:Lorg/apache/logging/log4j/core/Filter$Result;

    if-eq v1, v2, :cond_1

    .line 622
    sget-object v2, Lorg/apache/logging/log4j/core/Filter$Result;->ACCEPT:Lorg/apache/logging/log4j/core/Filter$Result;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    return v7

    .line 625
    .end local v1    # "r":Lorg/apache/logging/log4j/core/Filter$Result;
    :cond_1
    if-eqz p1, :cond_2

    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {p1}, Lorg/apache/logging/log4j/Level;->intLevel()I

    move-result v2

    if-lt v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v7, v8

    :goto_1
    return v7
.end method

.method public logEvent(Lorg/apache/logging/log4j/core/LogEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/logging/log4j/core/LogEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "event"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/core/config/LoggerConfig;->log(Lorg/apache/logging/log4j/core/LogEvent;)V

    .line 431
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "PrivateConfig [loggerConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfig:Lorg/apache/logging/log4j/core/config/LoggerConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    iget-object v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->config:Lorg/apache/logging/log4j/core/config/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 635
    const-string v1, ", loggerConfigLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    iget-object v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->loggerConfigLevel:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 637
    const-string v1, ", intLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    iget v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->intLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 639
    const-string v1, ", logger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v1, p0, Lorg/apache/logging/log4j/core/Logger$PrivateConfig;->logger:Lorg/apache/logging/log4j/core/Logger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 641
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
