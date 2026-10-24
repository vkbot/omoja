.class public Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "MemoryMappedFileAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;",
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

.field private regionLength:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "regionLength"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->append:Z

    .line 61
    const/high16 v0, 0x2000000

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->regionLength:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;
    .locals 17

    .line 72
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v12

    .line 73
    .local v12, "name":Ljava/lang/String;
    iget v1, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->regionLength:I

    invoke-static {v12, v1}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->access$000(Ljava/lang/String;I)I

    move-result v13

    .line 75
    .local v13, "actualRegionLength":I
    const/4 v1, 0x0

    if-nez v12, :cond_0

    .line 76
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "No name provided for MemoryMappedFileAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 77
    return-object v1

    .line 80
    :cond_0
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 81
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No filename provided for MemoryMappedFileAppender with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 82
    return-object v1

    .line 84
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v14

    .line 85
    .local v14, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->fileName:Ljava/lang/String;

    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->append:Z

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->isImmediateFlush()Z

    move-result v4

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->advertiseURI:Ljava/lang/String;

    move v5, v13

    move-object v7, v14

    invoke-static/range {v2 .. v7}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;->getFileManager(Ljava/lang/String;ZZILjava/lang/String;Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;

    move-result-object v15

    .line 87
    .local v15, "manager":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;
    if-nez v15, :cond_2

    .line 88
    return-object v1

    .line 91
    :cond_2
    new-instance v16, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v4

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->fileName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->isIgnoreExceptions()Z

    move-result v7

    const/4 v8, 0x0

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->advertise:Z

    if-eqz v2, :cond_3

    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v1

    goto :goto_0

    :cond_3
    nop

    :goto_0
    move-object v9, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v1, v16

    move-object v2, v12

    move-object v3, v14

    move-object v5, v15

    invoke-direct/range {v1 .. v11}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$1;)V

    .line 91
    return-object v16
.end method

.method public setAdvertise(Z)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
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

    .line 111
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->advertise:Z

    .line 112
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    return-object v0
.end method

.method public setAdvertiseURI(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
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

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->advertiseURI:Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    return-object v0
.end method

.method public setAppend(Z)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
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

    .line 101
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->append:Z

    .line 102
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    return-object v0
.end method

.method public setFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
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

    .line 96
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->fileName:Ljava/lang/String;

    .line 97
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    return-object v0
.end method

.method public setRegionLength(I)Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;
    .locals 1
    .param p1, "regionLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "regionLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->regionLength:I

    .line 107
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/MemoryMappedFileAppender$Builder;

    return-object v0
.end method
