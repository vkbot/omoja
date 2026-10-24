.class public abstract Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;
.source "AbstractFileAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/core/appender/AbstractFileAppender$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lorg/apache/logging/log4j/core/appender/OutputStreamManager;",
        ">",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender<",
        "TM;>;"
    }
.end annotation


# instance fields
.field private final advertisement:Ljava/lang/Object;

.field private final advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

.field private final fileName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .param p5, "filename"    # Ljava/lang/String;
    .param p6, "ignoreExceptions"    # Z
    .param p7, "immediateFlush"    # Z
    .param p8, "advertiser"    # Lorg/apache/logging/log4j/core/net/Advertiser;
    .param p9, "properties"    # [Lorg/apache/logging/log4j/core/config/Property;
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
            "name",
            "layout",
            "filter",
            "manager",
            "filename",
            "ignoreExceptions",
            "immediateFlush",
            "advertiser",
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;",
            "Lorg/apache/logging/log4j/core/Filter;",
            "TM;",
            "Ljava/lang/String;",
            "ZZ",
            "Lorg/apache/logging/log4j/core/net/Advertiser;",
            "[",
            "Lorg/apache/logging/log4j/core/config/Property;",
            ")V"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender<TM;>;"
    .local p2, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    .local p4, "manager":Lorg/apache/logging/log4j/core/appender/OutputStreamManager;, "TM;"
    move-object v8, p0

    move-object/from16 v9, p8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;ZZ[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/OutputStreamManager;)V

    .line 166
    if-eqz v9, :cond_0

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 168
    .local v0, "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p4}, Lorg/apache/logging/log4j/core/appender/OutputStreamManager;->getContentFormat()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 169
    invoke-interface {p2}, Lorg/apache/logging/log4j/core/Layout;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v1, "name"

    move-object v2, p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-interface {v9, v0}, Lorg/apache/logging/log4j/core/net/Advertiser;->advertise(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v8, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->advertisement:Ljava/lang/Object;

    .line 172
    .end local v0    # "configuration":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 173
    :cond_0
    move-object v2, p1

    const/4 v0, 0x0

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->advertisement:Ljava/lang/Object;

    .line 175
    :goto_0
    move-object v0, p5

    iput-object v0, v8, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->fileName:Ljava/lang/String;

    .line 176
    iput-object v9, v8, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    .line 177
    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 184
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender<TM;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
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

    .line 189
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;, "Lorg/apache/logging/log4j/core/appender/AbstractFileAppender<TM;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->setStopping()V

    .line 190
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender;->stop(JLjava/util/concurrent/TimeUnit;Z)Z

    .line 191
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->advertiser:Lorg/apache/logging/log4j/core/net/Advertiser;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->advertisement:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lorg/apache/logging/log4j/core/net/Advertiser;->unadvertise(Ljava/lang/Object;)V

    .line 194
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AbstractFileAppender;->setStopped()V

    .line 195
    const/4 v0, 0x1

    return v0
.end method
