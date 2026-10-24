.class public Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "RandomAccessFileAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private advertise:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "advertise"
    .end annotation
.end field

.field private advertiseURI:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "advertiseURI"
    .end annotation
.end field

.field private append:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "append"
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "fileName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->append:Z

    .line 66
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->withBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    .line 67
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 50
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;
    .locals 17

    .line 71
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v12, :cond_0

    .line 73
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "No name provided for RandomAccessFileAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 74
    return-object v1

    .line 77
    :cond_0
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 78
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "No filename provided for RandomAccessFileAppender with name {}"

    invoke-interface {v2, v3, v12}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    return-object v1

    .line 81
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v13

    .line 82
    .local v13, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->isImmediateFlush()Z

    move-result v14

    .line 83
    .local v14, "immediateFlush":Z
    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    iget-boolean v5, v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->append:Z

    .line 84
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->getBufferSize()I

    move-result v7

    iget-object v8, v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->advertiseURI:Ljava/lang/String;

    const/4 v10, 0x0

    .line 83
    move v6, v14

    move-object v9, v13

    invoke-static/range {v4 .. v10}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;->getFileManager(Ljava/lang/String;ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;

    move-result-object v15

    .line 85
    .local v15, "manager":Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;
    if-nez v15, :cond_2

    .line 86
    return-object v1

    .line 89
    :cond_2
    new-instance v16, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v4

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->isIgnoreExceptions()Z

    move-result v7

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->advertise:Z

    if-eqz v2, :cond_3

    .line 90
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    move-object v9, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v1, v16

    move-object v2, v12

    move-object v3, v13

    move-object v5, v15

    move v8, v14

    invoke-direct/range {v1 .. v11}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/RandomAccessFileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$1;)V

    .line 89
    return-object v16
.end method

.method public setAdvertise(Z)Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "advertise"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertise"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->advertise:Z

    .line 105
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public setAdvertiseURI(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "advertiseURI"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertiseURI"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->advertiseURI:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public setAppend(Z)Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "append"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "append"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->append:Z

    .line 100
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    .line 95
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RandomAccessFileAppender$Builder;

    return-object v0
.end method
