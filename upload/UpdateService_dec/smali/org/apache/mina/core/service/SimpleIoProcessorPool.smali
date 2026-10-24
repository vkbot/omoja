.class public Lorg/apache/mina/core/service/SimpleIoProcessorPool;
.super Ljava/lang/Object;
.source "SimpleIoProcessorPool.java"

# interfaces
.implements Lorg/apache/mina/core/service/IoProcessor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lorg/apache/mina/core/session/AbstractIoSession;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/mina/core/service/IoProcessor<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final createdExecutor:Z

.field private final disposalLock:Ljava/lang/Object;

.field private volatile disposed:Z

.field private volatile disposing:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final pool:[Lorg/apache/mina/core/service/IoProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    const-class v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    .line 85
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sput v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    .line 88
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "processor"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    sget v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;ILjava/nio/channels/spi/SelectorProvider;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 1
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I)V"
        }
    .end annotation

    .line 126
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;ILjava/nio/channels/spi/SelectorProvider;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 1
    .param p2, "size"    # I
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;I",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .line 138
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;ILjava/nio/channels/spi/SelectorProvider;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    sget v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->DEFAULT_SIZE:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;-><init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;ILjava/nio/channels/spi/SelectorProvider;)V

    .line 149
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/concurrent/Executor;ILjava/nio/channels/spi/SelectorProvider;)V
    .locals 10
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "size"    # I
    .param p4, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;>;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/nio/channels/spi/SelectorProvider;",
            ")V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposalLock:Ljava/lang/Object;

    .line 162
    if-eqz p1, :cond_a

    .line 166
    if-lez p3, :cond_9

    .line 171
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    .line 173
    if-eqz v2, :cond_1

    .line 174
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    .line 176
    check-cast v2, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;

    invoke-direct {v3}, Ljava/util/concurrent/ThreadPoolExecutor$CallerRunsPolicy;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    goto :goto_1

    .line 178
    :cond_1
    iput-object p2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    .line 181
    :goto_1
    new-array v2, p3, [Lorg/apache/mina/core/service/IoProcessor;

    iput-object v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    .line 183
    const/4 v2, 0x0

    .line 184
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 185
    .local v3, "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    const/4 v4, 0x1

    .line 191
    .local v4, "usesExecutorArg":Z
    const/4 v5, 0x2

    :try_start_0
    new-array v6, v0, [Ljava/lang/Class;

    const-class v7, Ljava/util/concurrent/ExecutorService;

    aput-object v7, v6, v1

    invoke-virtual {p1, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v3, v6

    .line 192
    iget-object v6, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v7, v0, [Ljava/lang/Object;

    iget-object v8, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v8, v7, v1

    invoke-virtual {v3, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v7, v6, v1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    goto/16 :goto_5

    .line 251
    :catchall_0
    move-exception v0

    goto/16 :goto_9

    .line 217
    :catch_0
    move-exception v0

    goto :goto_3

    .line 214
    :catch_1
    move-exception v0

    goto/16 :goto_4

    .line 193
    :catch_2
    move-exception v6

    .line 196
    .local v6, "e1":Ljava/lang/NoSuchMethodException;
    if-nez p4, :cond_2

    .line 197
    :try_start_1
    new-array v7, v0, [Ljava/lang/Class;

    const-class v8, Ljava/util/concurrent/Executor;

    aput-object v8, v7, v1

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v3, v7

    .line 198
    iget-object v7, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v9, v8, v1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v8, v7, v1

    goto :goto_2

    .line 200
    :cond_2
    new-array v7, v5, [Ljava/lang/Class;

    const-class v8, Ljava/util/concurrent/Executor;

    aput-object v8, v7, v1

    const-class v8, Ljava/nio/channels/spi/SelectorProvider;

    aput-object v8, v7, v0

    invoke-virtual {p1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    move-object v3, v7

    .line 201
    iget-object v7, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v9, v8, v1

    aput-object p4, v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v8, v7, v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :goto_2
    goto :goto_5

    .line 203
    :catch_3
    move-exception v7

    .line 206
    .local v7, "e2":Ljava/lang/NoSuchMethodException;
    :try_start_2
    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {p1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    move-object v3, v8

    .line 207
    const/4 v4, 0x0

    .line 208
    iget-object v8, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v9, v8, v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    goto :goto_5

    .line 218
    .end local v6    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v7    # "e2":Ljava/lang/NoSuchMethodException;
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create a new instance of "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "msg":Ljava/lang/String;
    sget-object v5, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v5, v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    new-instance v5, Lorg/apache/mina/core/RuntimeIoException;

    invoke-direct {v5, v1, v0}, Lorg/apache/mina/core/RuntimeIoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "success":Z
    .end local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local v4    # "usesExecutorArg":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .end local p1    # "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "size":I
    .end local p4    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    throw v5

    .line 215
    .end local v1    # "msg":Ljava/lang/String;
    .local v0, "re":Ljava/lang/RuntimeException;
    .restart local v2    # "success":Z
    .restart local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local v4    # "usesExecutorArg":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .restart local p1    # "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "size":I
    .restart local p4    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    :goto_4
    sget-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Cannot create an IoProcessor :{}"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    nop

    .end local v2    # "success":Z
    .end local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local v4    # "usesExecutorArg":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .end local p1    # "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "size":I
    .end local p4    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    throw v0

    .line 209
    .end local v0    # "re":Ljava/lang/RuntimeException;
    .restart local v2    # "success":Z
    .restart local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local v4    # "usesExecutorArg":Z
    .restart local v6    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local v7    # "e2":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .restart local p1    # "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "size":I
    .restart local p4    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    :catch_4
    move-exception v8

    .line 221
    .end local v6    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v7    # "e2":Ljava/lang/NoSuchMethodException;
    :goto_5
    nop

    .line 223
    if-eqz v3, :cond_7

    .line 233
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_6
    iget-object v7, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v7, v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ge v6, v7, :cond_5

    .line 235
    if-eqz v4, :cond_4

    .line 236
    if-nez p4, :cond_3

    .line 237
    :try_start_4
    iget-object v7, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v8, v0, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v9, v8, v1

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v8, v7, v6

    goto :goto_7

    .line 239
    :cond_3
    iget-object v7, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v8, v5, [Ljava/lang/Object;

    iget-object v9, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    aput-object v9, v8, v1

    aput-object p4, v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v8, v7, v6

    goto :goto_7

    .line 242
    :cond_4
    iget-object v7, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/mina/core/service/IoProcessor;

    aput-object v8, v7, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 246
    :goto_7
    goto :goto_8

    .line 244
    :catch_5
    move-exception v7

    .line 233
    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 249
    .end local v6    # "i":I
    :cond_5
    const/4 v0, 0x1

    .line 251
    .end local v2    # "success":Z
    .local v0, "success":Z
    if-nez v0, :cond_6

    .line 252
    invoke-virtual {p0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->dispose()V

    .line 255
    :cond_6
    return-void

    .line 225
    .end local v0    # "success":Z
    .restart local v2    # "success":Z
    :cond_7
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must have a public constructor with one "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/util/concurrent/ExecutorService;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parameter, a public constructor with one "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Ljava/util/concurrent/Executor;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " parameter or a public default constructor."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "success":Z
    .end local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local v4    # "usesExecutorArg":Z
    .end local p0    # "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .end local p1    # "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "size":I
    .end local p4    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    .end local v0    # "msg":Ljava/lang/String;
    .restart local v2    # "success":Z
    .restart local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local v4    # "usesExecutorArg":Z
    .restart local p0    # "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .restart local p1    # "processorType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "size":I
    .restart local p4    # "selectorProvider":Ljava/nio/channels/spi/SelectorProvider;
    :goto_9
    if-nez v2, :cond_8

    .line 252
    invoke-virtual {p0}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->dispose()V

    .line 254
    :cond_8
    throw v0

    .line 167
    .end local v2    # "success":Z
    .end local v3    # "processorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/apache/mina/core/service/IoProcessor<TS;>;>;"
    .end local v4    # "usesExecutorArg":Z
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (expected: positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "processorType"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lorg/apache/mina/core/service/IoProcessor<",
            "TS;>;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    sget-object v0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/IoProcessor;

    .line 361
    .local v0, "processor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    if-nez v0, :cond_2

    .line 362
    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    const-string v2, "A disposed processor cannot be accessed."

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    if-nez v1, :cond_1

    .line 366
    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getId()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v4, v4

    rem-int/2addr v3, v4

    aget-object v0, v1, v3

    .line 368
    if-eqz v0, :cond_0

    .line 372
    sget-object v1, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->PROCESSOR:Lorg/apache/mina/core/session/AttributeKey;

    invoke-virtual {p1, v1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setAttributeIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 375
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final add(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 262
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->add(Lorg/apache/mina/core/session/IoSession;)V

    .line 263
    return-void
.end method

.method public bridge synthetic add(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->add(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final dispose()V
    .locals 10

    .line 318
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    if-eqz v0, :cond_0

    .line 319
    return-void

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    const/4 v2, 0x1

    if-nez v1, :cond_4

    .line 324
    iput-boolean v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    .line 326
    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 327
    .local v5, "ioProcessor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    if-nez v5, :cond_1

    .line 329
    goto :goto_1

    .line 332
    :cond_1
    invoke-interface {v5}, Lorg/apache/mina/core/service/IoProcessor;->isDisposing()Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_2

    .line 333
    goto :goto_1

    .line 337
    :cond_2
    :try_start_1
    invoke-interface {v5}, Lorg/apache/mina/core/service/IoProcessor;->dispose()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    goto :goto_1

    .line 338
    :catch_0
    move-exception v6

    .line 339
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v7, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->LOGGER:Lorg/slf4j/Logger;

    const-string v8, "Failed to dispose the {} IoProcessor."

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 326
    .end local v5    # "ioProcessor":Lorg/apache/mina/core/service/IoProcessor;, "Lorg/apache/mina/core/service/IoProcessor<TS;>;"
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    :cond_3
    iget-boolean v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->createdExecutor:Z

    if-eqz v1, :cond_4

    .line 344
    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->executor:Ljava/util/concurrent/Executor;

    check-cast v1, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 348
    :cond_4
    iget-object v1, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->pool:[Lorg/apache/mina/core/service/IoProcessor;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    iput-boolean v2, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final flush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 270
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->flush(Lorg/apache/mina/core/session/IoSession;)V

    .line 271
    return-void
.end method

.method public bridge synthetic flush(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->flush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 302
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposed:Z

    return v0
.end method

.method public isDisposing()Z
    .locals 1

    .line 310
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    iget-boolean v0, p0, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->disposing:Z

    return v0
.end method

.method public final remove(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->remove(Lorg/apache/mina/core/session/IoSession;)V

    .line 287
    return-void
.end method

.method public bridge synthetic remove(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->remove(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/mina/core/service/IoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V

    .line 295
    return-void
.end method

.method public bridge synthetic updateTrafficControl(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    return-void
.end method

.method public final write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p2, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->getProcessor(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/service/IoProcessor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/mina/core/service/IoProcessor;->write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 279
    return-void
.end method

.method public bridge synthetic write(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 0

    .line 80
    .local p0, "this":Lorg/apache/mina/core/service/SimpleIoProcessorPool;, "Lorg/apache/mina/core/service/SimpleIoProcessorPool<TS;>;"
    check-cast p1, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-virtual {p0, p1, p2}, Lorg/apache/mina/core/service/SimpleIoProcessorPool;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method
