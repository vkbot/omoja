.class public Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;
.source "FileAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/FileAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/FileAppender;",
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

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
    .end annotation
.end field

.field private fileOwner:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
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


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractOutputStreamAppender$Builder;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->append:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 52
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/FileAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/FileAppender;
    .locals 27

    .line 85
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->isBufferedIo()Z

    move-result v1

    .line 86
    .local v1, "bufferedIo":Z
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getBufferSize()I

    move-result v14

    .line 87
    .local v14, "bufferSize":I
    iget-boolean v2, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->locking:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 88
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/FileAppender;->access$000()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileName:Ljava/lang/String;

    const-string v4, "Locking and buffering are mutually exclusive. No buffering will occur for {}"

    invoke-interface {v2, v4, v3}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    const/4 v1, 0x0

    .line 91
    :cond_0
    if-nez v1, :cond_1

    if-lez v14, :cond_1

    .line 92
    invoke-static {}, Lorg/apache/logging/log4j/core/appender/FileAppender;->access$100()Lorg/apache/logging/log4j/Logger;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "The bufferSize is set to {} but bufferedIo is false: {}"

    invoke-interface {v2, v5, v3, v4}, Lorg/apache/logging/log4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 94
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getOrCreateLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v26

    .line 96
    .local v26, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileName:Ljava/lang/String;

    iget-boolean v3, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->append:Z

    iget-boolean v4, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->locking:Z

    iget-boolean v6, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->createOnDemand:Z

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->advertiseUri:Ljava/lang/String;

    iget-object v10, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->filePermissions:Ljava/lang/String;

    iget-object v11, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileOwner:Ljava/lang/String;

    iget-object v12, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v13

    .line 96
    move v5, v1

    move-object/from16 v8, v26

    move v9, v14

    invoke-static/range {v2 .. v13}, Lorg/apache/logging/log4j/core/appender/FileManager;->getFileManager(Ljava/lang/String;ZZZZLjava/lang/String;Lorg/apache/logging/log4j/core/Layout;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/FileManager;

    move-result-object v2

    .line 98
    .local v2, "manager":Lorg/apache/logging/log4j/core/appender/FileManager;
    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 99
    return-object v3

    .line 102
    :cond_2
    new-instance v4, Lorg/apache/logging/log4j/core/appender/FileAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v18

    iget-object v5, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->isIgnoreExceptions()Z

    move-result v21

    if-eqz v1, :cond_4

    .line 103
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->isImmediateFlush()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v6, 0x1

    :goto_1
    move/from16 v22, v6

    iget-boolean v6, v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->advertise:Z

    if-eqz v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/logging/log4j/core/config/Configuration;->getAdvertiser()Lorg/apache/logging/log4j/core/net/Advertiser;

    move-result-object v3

    :cond_5
    move-object/from16 v23, v3

    .line 104
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v24

    const/16 v25, 0x0

    move-object v15, v4

    move-object/from16 v17, v26

    move-object/from16 v19, v2

    move-object/from16 v20, v5

    invoke-direct/range {v15 .. v25}, Lorg/apache/logging/log4j/core/appender/FileAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/appender/FileManager;Ljava/lang/String;ZZLorg/apache/logging/log4j/core/net/Advertiser;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/FileAppender$1;)V

    .line 102
    return-object v4
.end method

.method public getAdvertiseUri()Ljava/lang/String;
    .locals 1

    .line 108
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->advertiseUri:Ljava/lang/String;

    return-object v0
.end method

.method public getFileGroup()Ljava/lang/String;
    .locals 1

    .line 140
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileGroup:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 112
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFileOwner()Ljava/lang/String;
    .locals 1

    .line 136
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileOwner:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePermissions()Ljava/lang/String;
    .locals 1

    .line 132
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-object v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->filePermissions:Ljava/lang/String;

    return-object v0
.end method

.method public isAdvertise()Z
    .locals 1

    .line 116
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->advertise:Z

    return v0
.end method

.method public isAppend()Z
    .locals 1

    .line 120
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->append:Z

    return v0
.end method

.method public isCreateOnDemand()Z
    .locals 1

    .line 124
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->createOnDemand:Z

    return v0
.end method

.method public isLocking()Z
    .locals 1

    .line 128
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iget-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->locking:Z

    return v0
.end method

.method public withAdvertise(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 144
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->advertise:Z

    .line 145
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withAdvertiseUri(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 149
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->advertiseUri:Ljava/lang/String;

    .line 150
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withAppend(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 154
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->append:Z

    .line 155
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withCreateOnDemand(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 164
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->createOnDemand:Z

    .line 165
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withFileGroup(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 184
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileGroup:Ljava/lang/String;

    .line 185
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withFileName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 159
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileName:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withFileOwner(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 179
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->fileOwner:Ljava/lang/String;

    .line 180
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withFilePermissions(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 174
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->filePermissions:Ljava/lang/String;

    .line 175
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method

.method public withLocking(Z)Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;
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

    .line 169
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/FileAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->locking:Z

    .line 170
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;->asBuilder()Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/FileAppender$Builder;

    return-object v0
.end method
