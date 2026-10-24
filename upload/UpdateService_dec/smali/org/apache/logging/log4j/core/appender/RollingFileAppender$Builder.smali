.class public Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "RollingFileAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/RollingFileAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/RollingFileAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private advertise:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private advertiseUri:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private append:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private createOnDemand:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileGroup:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileName:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private fileOwner:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private filePattern:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private filePermissions:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private locking:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Policy"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "Strategy"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->append:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 62
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/RollingFileAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/RollingFileAppender;
    .locals 32

    .line 107
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->isBufferedIo()Z

    move-result v16

    .line 108
    .local v16, "isBufferedIo":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getBufferSize()I

    move-result v17

    .line 109
    .local v17, "bufferSize":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    if-nez v1, :cond_0

    .line 110
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RollingFileAppender \'{}\': No name provided."

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    return-object v18

    .line 114
    :cond_0
    if-nez v16, :cond_1

    if-lez v17, :cond_1

    .line 115
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "RollingFileAppender \'{}\': The bufferSize is set to {} but bufferedIO is not true"

    invoke-interface {v1, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_1
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePattern:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 119
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->access$200()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RollingFileAppender \'{}\': No file name pattern provided."

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    return-object v18

    .line 123
    :cond_2
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    if-nez v1, :cond_3

    .line 124
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->access$300()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RollingFileAppender \'{}\': No TriggeringPolicy provided."

    invoke-interface {v1, v3, v2}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 125
    return-object v18

    .line 128
    :cond_3
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    if-nez v1, :cond_5

    .line 129
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileName:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    .line 130
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v1

    .line 131
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v1

    .line 132
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DefaultRolloverStrategy;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    goto :goto_0

    .line 135
    :cond_4
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;->newBuilder()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v1

    .line 136
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withCompressionLevelStr(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v1

    .line 137
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->withConfig(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy$Builder;->build()Lorg/apache/logging/log4j/core/appender/rolling/DirectWriteRolloverStrategy;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    goto :goto_0

    .line 140
    :cond_5
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileName:Ljava/lang/String;

    if-nez v2, :cond_6

    instance-of v1, v1, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    if-nez v1, :cond_6

    .line 141
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;->access$400()Lorg/apache/logging/log4j/Logger;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lorg/apache/logging/log4j/core/appender/rolling/DirectFileRolloverStrategy;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RollingFileAppender \'{}\': When no file name is provided a {} must be configured"

    invoke-interface {v1, v4, v2, v3}, Lorg/apache/logging/log4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 142
    return-object v18

    .line 145
    :cond_6
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v31

    .line 146
    .local v31, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileName:Ljava/lang/String;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePattern:Ljava/lang/String;

    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->append:Z

    iget-object v5, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->advertiseUri:Ljava/lang/String;

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->isImmediateFlush()Z

    move-result v10

    iget-boolean v11, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->createOnDemand:Z

    iget-object v12, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePermissions:Ljava/lang/String;

    iget-object v13, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileOwner:Ljava/lang/String;

    iget-object v14, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 148
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v15

    .line 146
    move/from16 v4, v16

    move-object/from16 v8, v31

    move/from16 v9, v17

    invoke-static/range {v1 .. v15}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->getFileManager(Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;

    move-result-object v1

    .line 149
    .local v1, "manager":Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;
    if-nez v1, :cond_7

    .line 150
    return-object v18

    .line 153
    :cond_7
    invoke-virtual {v1}, Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;->initialize()V

    .line 155
    new-instance v2, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v22

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileName:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePattern:Ljava/lang/String;

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->isIgnoreExceptions()Z

    move-result v26

    if-eqz v16, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->isImmediateFlush()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    :goto_1
    const/4 v5, 0x1

    :goto_2
    move/from16 v27, v5

    iget-boolean v5, v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->advertise:Z

    if-eqz v5, :cond_a

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v18

    goto :goto_3

    :cond_a
    nop

    :goto_3
    move-object/from16 v28, v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v29

    const/16 v30, 0x0

    move-object/from16 v19, v2

    move-object/from16 v21, v31

    move-object/from16 v23, v1

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-direct/range {v19 .. v30}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/rolling/RollingFileManager;Ljava/lang/String;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/RollingFileAppender$1;)V

    .line 155
    return-object v2
.end method

.method public getAdvertiseUri()Ljava/lang/String;
    .locals 1

    .line 161
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->advertiseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFileGroup()Ljava/lang/String;
    .locals 1

    .line 193
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 165
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    .line 189
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePattern()Ljava/lang/String;
    .locals 1

    .line 227
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePermissions()Ljava/lang/String;
    .locals 1

    .line 185
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePermissions:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicy()Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;
    .locals 1

    .line 231
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    return-object v0
.end method

.method public getStrategy()Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;
    .locals 1

    .line 235
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    return-object v0
.end method

.method public isAdvertise()Z
    .locals 1

    .line 169
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->advertise:Z

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 173
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->append:Z

    return v0
.end method

.method public isCreateOnDemand()Z
    .locals 1

    .line 177
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->createOnDemand:Z

    return v0
.end method

.method public isLocking()Z
    .locals 1

    .line 181
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->locking:Z

    return v0
.end method

.method public withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 197
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->advertise:Z

    .line 198
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withAdvertiseUri(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
    .locals 1
    .param p1, "advertiseUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "advertiseUri"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->advertiseUri:Ljava/lang/String;

    .line 203
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withAppend(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 207
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->append:Z

    .line 208
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withCreateOnDemand(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
    .locals 1
    .param p1, "createOnDemand"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "createOnDemand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->createOnDemand:Z

    .line 218
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 264
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 265
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 212
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileName:Ljava/lang/String;

    .line 213
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 259
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->fileOwner:Ljava/lang/String;

    .line 260
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withFilePattern(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 239
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePattern:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withFilePermissions(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 254
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->filePermissions:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withLocking(Z)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
    .locals 1
    .param p1, "locking"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "locking"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->locking:Z

    .line 223
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withPolicy(Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 244
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->policy:Lorg/apache/logging/log4j/core/appender/rolling/TriggeringPolicy;

    .line 245
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method

.method public withStrategy(Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;)Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;
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

    .line 249
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->strategy:Lorg/apache/logging/log4j/core/appender/rolling/RolloverStrategy;

    .line 250
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/RollingFileAppender$Builder;

    return-object v0
.end method
