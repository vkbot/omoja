.class public Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "RollingRandomAccessFileAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;",
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

.field private fileGroup:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "fileName"
    .end annotation
.end field

.field private fileOwner:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private filePattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        value = "filePattern"
    .end annotation
.end field

.field private filePermissions:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Policy"
    .end annotation
.end field

.field private strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Strategy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->append:Z

    .line 57
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withBufferSize(I)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    .line 58
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    .line 59
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->withImmediateFlush(Z)Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;

    .line 60
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 53
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;
    .locals 31

    .line 94
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v14

    .line 95
    .local v14, "name":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v14, :cond_0

    .line 96
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "No name provided for FileAppender"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 97
    return-object v1

    .line 100
    :cond_0
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    if-nez v2, :cond_2

    .line 101
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    .line 102
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v2

    .line 103
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v2

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v2

    .line 105
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v2

    .line 108
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v2

    .line 109
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    if-nez v3, :cond_3

    instance-of v2, v2, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    if-nez v2, :cond_3

    .line 113
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "RollingFileAppender \'{}\': When no file name is provided a DirectFileRolloverStrategy must be configured"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 114
    return-object v1

    .line 117
    :cond_3
    :goto_0
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->filePattern:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 118
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No filename pattern provided for FileAppender with name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 119
    return-object v1

    .line 122
    :cond_4
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    if-nez v2, :cond_5

    .line 123
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;->access$300()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    const-string v3, "A TriggeringPolicy must be provided"

    invoke-interface {v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;)V

    .line 124
    return-object v1

    .line 127
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v28

    .line 129
    .local v28, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->isImmediateFlush()Z

    move-result v29

    .line 130
    .local v29, "immediateFlush":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getBufferSize()I

    move-result v30

    .line 131
    .local v30, "bufferSize":I
    iget-object v15, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->filePattern:Ljava/lang/String;

    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->append:Z

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->advertiseURI:Ljava/lang/String;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->filePermissions:Ljava/lang/String;

    iget-object v8, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileOwner:Ljava/lang/String;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 134
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v27

    .line 132
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v29

    move/from16 v19, v30

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v28

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v9

    invoke-static/range {v15 .. v27}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->getRollingRandomAccessFileManager(Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;

    move-result-object v15

    .line 135
    .local v15, "manager":Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;
    if-nez v15, :cond_6

    .line 136
    return-object v1

    .line 139
    :cond_6
    invoke-virtual {v15}, Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;->initialize()V

    .line 141
    new-instance v16, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v4

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->filePattern:Ljava/lang/String;

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->isIgnoreExceptions()Z

    move-result v8

    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->advertise:Z

    if-eqz v2, :cond_7

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v1

    goto :goto_1

    :cond_7
    nop

    :goto_1
    move-object v11, v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v1, v16

    move-object v2, v14

    move-object/from16 v3, v28

    move-object v5, v15

    move/from16 v9, v29

    move/from16 v10, v30

    invoke-direct/range {v1 .. v13}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingRandomAccessFileManager;Ljava/lang/String;Ljava/lang/String;ZZILorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$1;)V

    .line 141
    return-object v16
.end method

.method public withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
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

    .line 172
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->advertise:Z

    .line 173
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withAdvertiseURI(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
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

    .line 177
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->advertiseURI:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withAppend(Z)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
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

    .line 157
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->append:Z

    .line 158
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "fileGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileGroup"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 193
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
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

    .line 147
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileName:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "fileOwner"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "fileOwner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->fileOwner:Ljava/lang/String;

    .line 188
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withFilePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "filePattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePattern"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->filePattern:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withFilePermissions(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "filePermissions"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filePermissions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 182
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->filePermissions:Ljava/lang/String;

    .line 183
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "policy"    # Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "policy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;",
            ")TB;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 163
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method

.method public withStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;
    .locals 1
    .param p1, "strategy"    # Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "strategy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;",
            ")TB;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 168
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingRandomAccessFileAppender$Builder;

    return-object v0
.end method
