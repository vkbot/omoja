.class public Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
.super Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
.source "AsyncAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/AsyncAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<",
        "TB;>;>",
        "Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder<",
        "TB;>;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/AsyncAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "AppenderRef"
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No appender references provided to AsyncAppender"
    .end annotation
.end field

.field private blocking:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private blockingQueueFactory:Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/logging/log4j/core/async/BlockingQueueFactory<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "BlockingQueueFactory"
    .end annotation
.end field

.field private bufferSize:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private configuration:Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginConfiguration;
    .end annotation
.end field

.field private errorRef:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginAliases;
        value = {
            "error-ref"
        }
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private ignoreExceptions:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private includeLocation:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/Required;
        message = "No name provided for AsyncAppender"
    .end annotation
.end field

.field private shutdownTimeout:J
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 277
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;-><init>()V

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->blocking:Z

    .line 291
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->shutdownTimeout:J

    .line 294
    const/16 v1, 0x400

    iput v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->bufferSize:I

    .line 301
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->includeLocation:Z

    .line 307
    iput-boolean v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->ignoreExceptions:Z

    .line 310
    new-instance v0, Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;

    invoke-direct {v0}, Lorg/apache/logging/log4j/core/async/ArrayBlockingQueueFactory;-><init>()V

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->blockingQueueFactory:Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 277
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/AsyncAppender;
    .locals 17

    .line 365
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    move-object/from16 v0, p0

    new-instance v16, Lorg/apache/logging/log4j/core/appender/AsyncAppender;

    iget-object v2, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->name:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->errorRef:Ljava/lang/String;

    iget v6, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->bufferSize:I

    iget-boolean v7, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->blocking:Z

    iget-boolean v8, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->ignoreExceptions:Z

    iget-wide v9, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->shutdownTimeout:J

    iget-object v11, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    iget-boolean v12, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->includeLocation:Z

    iget-object v13, v0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->blockingQueueFactory:Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;

    .line 366
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lorg/apache/logging/log4j/core/appender/AsyncAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;[Lorg/apache/logging/log4j/core/config/AppenderRef;Ljava/lang/String;IZZJLorg/apache/logging/log4j/core/config/Configuration;ZLorg/apache/logging/log4j/core/async/BlockingQueueFactory;[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/AsyncAppender$1;)V

    .line 365
    return-object v16
.end method

.method public setAppenderRefs([Lorg/apache/logging/log4j/core/config/AppenderRef;)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "appenderRefs"    # [Lorg/apache/logging/log4j/core/config/AppenderRef;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "appenderRefs"
        }
    .end annotation

    .line 314
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->appenderRefs:[Lorg/apache/logging/log4j/core/config/AppenderRef;

    .line 315
    return-object p0
.end method

.method public setBlocking(Z)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "blocking"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "blocking"
        }
    .end annotation

    .line 324
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->blocking:Z

    .line 325
    return-object p0
.end method

.method public setBlockingQueueFactory(Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "blockingQueueFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/async/BlockingQueueFactory<",
            "Lorg/apache/logging/log4j/core/LogEvent;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    .local p1, "blockingQueueFactory":Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;, "Lorg/apache/logging/log4j/core/async/BlockingQueueFactory<Lorg/apache/logging/log4j/core/LogEvent;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->blockingQueueFactory:Lorg/apache/logging/log4j/core/async/BlockingQueueFactory;

    .line 360
    return-object p0
.end method

.method public setBufferSize(I)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 334
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->bufferSize:I

    .line 335
    return-object p0
.end method

.method public setConfiguration(Lorg/apache/logging/log4j/core/config/Configuration;)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "configuration"    # Lorg/apache/logging/log4j/core/config/Configuration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 349
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->configuration:Lorg/apache/logging/log4j/core/config/Configuration;

    .line 350
    return-object p0
.end method

.method public setErrorRef(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "errorRef"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "errorRef"
        }
    .end annotation

    .line 319
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->errorRef:Ljava/lang/String;

    .line 320
    return-object p0
.end method

.method public setIgnoreExceptions(Z)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "ignoreExceptions"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "ignoreExceptions"
        }
    .end annotation

    .line 354
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->ignoreExceptions:Z

    .line 355
    return-object p0
.end method

.method public setIncludeLocation(Z)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "includeLocation"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "includeLocation"
        }
    .end annotation

    .line 344
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->includeLocation:Z

    .line 345
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 339
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->name:Ljava/lang/String;

    .line 340
    return-object p0
.end method

.method public setShutdownTimeout(J)Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;
    .locals 0
    .param p1, "shutdownTimeout"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "shutdownTimeout"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;, "Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder<TB;>;"
    iput-wide p1, p0, Lorg/apache/logging/log4j/core/appender/AsyncAppender$Builder;->shutdownTimeout:J

    .line 330
    return-object p0
.end method
