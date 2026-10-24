.class public final Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilter;
.source "LevelMatchFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/Plugin;
    category = "Core"
    elementType = "filter"
    name = "LevelMatchFilter"
    printObject = true
.end annotation


# static fields
.field public static final ATTR_MATCH:Ljava/lang/String; = "match"


# instance fields
.field private final level:Lorg/apache/logging/log4j/Level;


# direct methods
.method private constructor <init>(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .param p2, "onMatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p3, "onMismatch"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "level",
            "onMatch",
            "onMismatch"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p2, p3}, Lorg/apache/logging/log4j/core/filter/AbstractFilter;-><init>(Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    .line 44
    iput-object p1, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->level:Lorg/apache/logging/log4j/Level;

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/logging/log4j/Level;
    .param p2, "x1"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p3, "x2"    # Lorg/apache/logging/log4j/core/Filter$Result;
    .param p4, "x3"    # Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$1;

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;-><init>(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)V

    return-void
.end method

.method private filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
    .param p1, "level"    # Lorg/apache/logging/log4j/Level;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "level"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->level:Lorg/apache/logging/log4j/Level;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->onMatch:Lorg/apache/logging/log4j/core/Filter$Result;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->onMismatch:Lorg/apache/logging/log4j/core/Filter$Result;

    :goto_0
    return-object v0
.end method

.method public static newBuilder()Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;
    .locals 1
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderFactory;
    .end annotation

    .line 150
    new-instance v0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public filter(Lorg/apache/logging/log4j/core/LogEvent;)Lorg/apache/logging/log4j/core/Filter$Result;
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

    .line 67
    invoke-interface {p1}, Lorg/apache/logging/log4j/core/LogEvent;->getLevel()Lorg/apache/logging/log4j/Level;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 56
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 77
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 83
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 89
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 95
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 102
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 109
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 116
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 124
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 132
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 140
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public varargs filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 50
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public filter(Lorg/apache/logging/log4j/core/Logger;Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/Marker;Lorg/apache/logging/log4j/message/Message;Ljava/lang/Throwable;)Lorg/apache/logging/log4j/core/Filter$Result;
    .locals 1
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

    .line 62
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->filter(Lorg/apache/logging/log4j/Level;)Lorg/apache/logging/log4j/core/Filter$Result;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/logging/log4j/core/filter/LevelMatchFilter;->level:Lorg/apache/logging/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/logging/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
