.class Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;
.super Ljava/lang/Object;
.source "AbstractPollingIoProcessor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Processor"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 598
    const-class v0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V
    .locals 0

    .line 598
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iput-object p1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;
    .param p2, "x1"    # Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;

    .line 598
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;-><init>(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)V

    return-void
.end method

.method private addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 824
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x0

    .line 827
    .local v0, "registered":Z
    :try_start_0
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->init(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 828
    const/4 v0, 0x1

    .line 831
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/service/IoService;->getFilterChainBuilder()Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;

    move-result-object v1

    .line 832
    .local v1, "chainBuilder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;->buildFilterChain(Lorg/apache/mina/core/filterchain/IoFilterChain;)V

    .line 837
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v2}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v2

    .line 838
    .local v2, "listeners":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    invoke-virtual {v2, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionCreated(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 849
    .end local v1    # "chainBuilder":Lorg/apache/mina/core/filterchain/IoFilterChainBuilder;
    .end local v2    # "listeners":Lorg/apache/mina/core/service/IoServiceListenerSupport;
    goto :goto_1

    .line 839
    :catch_0
    move-exception v1

    .line 840
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 843
    :try_start_1
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :goto_0
    const/4 v0, 0x0

    .line 848
    goto :goto_1

    .line 847
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 844
    :catch_1
    move-exception v2

    .line 845
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "e1":Ljava/lang/Exception;
    goto :goto_0

    .line 851
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return v0

    .line 847
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v0, 0x0

    .line 848
    throw v2
.end method

.method private clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1161
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v0

    .line 1164
    .local v0, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1166
    .local v1, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v2

    move-object v3, v2

    .local v3, "req":Lorg/apache/mina/core/write/WriteRequest;
    if-eqz v2, :cond_2

    .line 1167
    invoke-interface {v3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    .line 1169
    .local v2, "message":Ljava/lang/Object;
    instance-of v4, v2, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v4, :cond_1

    .line 1170
    move-object v4, v2

    check-cast v4, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1174
    .local v4, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v4}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1175
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1177
    :cond_0
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v5

    .line 1178
    .local v5, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v5, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1180
    .end local v4    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v5    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_0
    goto :goto_1

    .line 1181
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    :goto_1
    invoke-interface {v0, p1}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v4

    move-object v3, v4

    if-eqz v4, :cond_2

    .line 1186
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1191
    .end local v2    # "message":Ljava/lang/Object;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1192
    new-instance v2, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-direct {v2, v1}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;)V

    .line 1194
    .local v2, "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 1195
    .local v5, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-virtual {p1, v5}, Lorg/apache/mina/core/session/AbstractIoSession;->decreaseScheduledBytesAndMessages(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1196
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 1197
    .end local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    goto :goto_2

    .line 1199
    :cond_3
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v4

    .line 1200
    .local v4, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v4, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 1202
    .end local v2    # "cause":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v4    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :cond_4
    return-void
.end method

.method private fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            ")V"
        }
    .end annotation

    .line 1205
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1206
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 1207
    .local v0, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v0, p2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireMessageSent(Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1208
    return-void
.end method

.method private flush(J)V
    .locals 4
    .param p1, "currentTime"    # J

    .line 899
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 907
    .local v0, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-nez v0, :cond_1

    .line 909
    goto :goto_1

    .line 916
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->unscheduledForFlush()V

    .line 918
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v1, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v1

    .line 920
    .local v1, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v2, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v1}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 946
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 947
    return-void

    .line 950
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 940
    :cond_3
    goto :goto_0

    .line 923
    :cond_4
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z

    move-result v2

    .line 925
    .local v2, "flushedAll":Z
    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/write/WriteRequestQueue;->isEmpty(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 926
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->isScheduledForFlush()Z

    move-result v3

    if-nez v3, :cond_5

    .line 927
    invoke-direct {p0, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    .end local v2    # "flushedAll":Z
    :cond_5
    goto :goto_0

    .line 929
    :catch_0
    move-exception v2

    .line 930
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v3, v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 931
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 932
    invoke-virtual {v0}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 933
    .local v3, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v2}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 936
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    nop

    .line 953
    .end local v0    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    .end local v1    # "state":Lorg/apache/mina/core/session/SessionState;
    :goto_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 954
    :goto_1
    return-void
.end method

.method private flushNow(Lorg/apache/mina/core/session/AbstractIoSession;J)Z
    .locals 17
    .param p2, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;J)Z"
        }
    .end annotation

    .line 957
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isConnected()Z

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_0

    .line 958
    iget-object v0, v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0, v9}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 959
    return v10

    .line 962
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->hasFragmentation()Z

    move-result v11

    .line 964
    .local v11, "hasFragmentation":Z
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getWriteRequestQueue()Lorg/apache/mina/core/write/WriteRequestQueue;

    move-result-object v12

    .line 969
    .local v12, "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v0

    .line 970
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getConfig()Lorg/apache/mina/core/session/IoSessionConfig;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/mina/core/session/IoSessionConfig;->getMaxReadBufferSize()I

    move-result v1

    const/4 v13, 0x1

    ushr-int/2addr v1, v13

    add-int v14, v0, v1

    .line 971
    .local v14, "maxWrittenBytes":I
    const/4 v1, 0x0

    .line 972
    .local v1, "writtenBytes":I
    const/4 v2, 0x0

    .line 976
    .local v2, "req":Lorg/apache/mina/core/write/WriteRequest;
    :try_start_0
    iget-object v0, v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0, v9, v10}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    move v15, v1

    .line 980
    .end local v1    # "writtenBytes":I
    .local v15, "writtenBytes":I
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getCurrentWriteRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    move-object v2, v0

    .line 982
    if-nez v2, :cond_3

    .line 983
    invoke-interface {v12, v9}, Lorg/apache/mina/core/write/WriteRequestQueue;->poll(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v0

    move-object v2, v0

    .line 985
    if-nez v2, :cond_2

    .line 986
    goto/16 :goto_1

    .line 989
    :cond_2
    invoke-virtual {v9, v2}, Lorg/apache/mina/core/session/AbstractIoSession;->setCurrentWriteRequest(Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-object v6, v2

    goto :goto_0

    .line 982
    :cond_3
    move-object v6, v2

    .line 993
    .end local v2    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .local v6, "req":Lorg/apache/mina/core/write/WriteRequest;
    :goto_0
    :try_start_2
    invoke-interface {v6}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    .line 995
    .local v0, "message":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v1, :cond_4

    .line 996
    sub-int v5, v14, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v6

    move v4, v11

    move-object/from16 v16, v6

    .end local v6    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .local v16, "req":Lorg/apache/mina/core/write/WriteRequest;
    move-wide/from16 v6, p2

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v1

    .line 999
    .local v1, "localWrittenBytes":I
    if-lez v1, :cond_5

    move-object v2, v0

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1001
    iget-object v2, v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, v9, v13}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1003
    return v10

    .line 1045
    .end local v0    # "message":Ljava/lang/Object;
    .end local v1    # "localWrittenBytes":I
    :catch_0
    move-exception v0

    move v1, v15

    move-object/from16 v2, v16

    goto/16 :goto_2

    .line 1005
    .end local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v0    # "message":Ljava/lang/Object;
    .restart local v6    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_4
    move-object/from16 v16, v6

    .end local v6    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :try_start_4
    instance-of v1, v0, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v1, :cond_a

    .line 1006
    sub-int v5, v14, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move v4, v11

    move-wide/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1014
    .restart local v1    # "localWrittenBytes":I
    if-lez v1, :cond_5

    :try_start_5
    move-object v2, v0

    check-cast v2, Lorg/apache/mina/core/file/FileRegion;

    invoke-interface {v2}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 1015
    iget-object v2, v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, v9, v13}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1017
    return v10

    .line 1024
    :cond_5
    if-nez v1, :cond_6

    .line 1027
    :try_start_6
    sget-object v2, Lorg/apache/mina/core/session/AbstractIoSession;->MESSAGE_SENT_REQUEST:Lorg/apache/mina/core/write/WriteRequest;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object/from16 v3, v16

    .end local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .local v3, "req":Lorg/apache/mina/core/write/WriteRequest;
    :try_start_7
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1028
    iget-object v2, v8, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, v9, v13}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->setInterestedInWrite(Lorg/apache/mina/core/session/AbstractIoSession;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 1029
    return v10

    .line 1032
    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_6
    move-object/from16 v3, v16

    .end local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    add-int v2, v15, v1

    .line 1034
    .end local v15    # "writtenBytes":I
    .local v2, "writtenBytes":I
    if-lt v2, v14, :cond_7

    .line 1036
    :try_start_8
    invoke-direct/range {p0 .. p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 1037
    return v10

    .line 1045
    .end local v0    # "message":Ljava/lang/Object;
    .end local v1    # "localWrittenBytes":I
    :catch_1
    move-exception v0

    move v1, v2

    move-object v2, v3

    goto :goto_2

    .line 1034
    .restart local v0    # "message":Ljava/lang/Object;
    .restart local v1    # "localWrittenBytes":I
    :cond_7
    move v15, v2

    .line 1041
    .end local v2    # "writtenBytes":I
    .restart local v15    # "writtenBytes":I
    :cond_8
    :try_start_9
    instance-of v2, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_9

    .line 1042
    move-object v2, v0

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 1044
    .end local v0    # "message":Ljava/lang/Object;
    .end local v1    # "localWrittenBytes":I
    :cond_9
    move-object v2, v3

    if-lt v15, v14, :cond_1

    .line 1053
    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .local v2, "req":Lorg/apache/mina/core/write/WriteRequest;
    :goto_1
    nop

    .line 1055
    return v13

    .line 1020
    .end local v2    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v0    # "message":Ljava/lang/Object;
    .restart local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :cond_a
    move-object/from16 v3, v16

    .end local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t know how to handle message of type \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'.  Are you missing a protocol encoder?"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .end local v11    # "hasFragmentation":Z
    .end local v12    # "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    .end local v14    # "maxWrittenBytes":I
    .end local v15    # "writtenBytes":I
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .end local p1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    .end local p2    # "currentTime":J
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 1045
    .end local v0    # "message":Ljava/lang/Object;
    .restart local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v11    # "hasFragmentation":Z
    .restart local v12    # "writeRequestQueue":Lorg/apache/mina/core/write/WriteRequestQueue;
    .restart local v14    # "maxWrittenBytes":I
    .restart local v15    # "writtenBytes":I
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .restart local p1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    .restart local p2    # "currentTime":J
    :catch_2
    move-exception v0

    move-object v2, v3

    move v1, v15

    goto :goto_2

    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :catch_3
    move-exception v0

    move-object/from16 v3, v16

    move-object v2, v3

    move v1, v15

    .end local v16    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    goto :goto_2

    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v6    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :catch_4
    move-exception v0

    move-object v3, v6

    move-object v2, v3

    move v1, v15

    .end local v6    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    goto :goto_2

    .end local v3    # "req":Lorg/apache/mina/core/write/WriteRequest;
    .restart local v2    # "req":Lorg/apache/mina/core/write/WriteRequest;
    :catch_5
    move-exception v0

    move v1, v15

    goto :goto_2

    .end local v15    # "writtenBytes":I
    .local v1, "writtenBytes":I
    :catch_6
    move-exception v0

    .line 1046
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v2, :cond_b

    .line 1047
    invoke-interface {v2}, Lorg/apache/mina/core/write/WriteRequest;->getFuture()Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/mina/core/future/WriteFuture;->setException(Ljava/lang/Throwable;)V

    .line 1050
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v3

    .line 1051
    .local v3, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v3, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V

    .line 1052
    return v10
.end method

.method private handleNewSessions()I
    .locals 3

    .line 749
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    const/4 v0, 0x0

    .line 751
    .local v0, "addedSessions":I
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_0
    if-eqz v1, :cond_1

    .line 752
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->addNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 754
    add-int/lit8 v0, v0, 0x1

    .line 751
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    goto :goto_0

    .line 758
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_1
    return v0
.end method

.method private notifyIdleSessions(J)V
    .locals 4
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 763
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 764
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J

    .line 765
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/mina/core/session/AbstractIoSession;->notifyIdleness(Ljava/util/Iterator;J)V

    .line 767
    :cond_0
    return-void
.end method

.method private process()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1211
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->selectedSessions()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 1213
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->process(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1214
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1215
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    goto :goto_0

    .line 1216
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :cond_0
    return-void
.end method

.method private process(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1223
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isReadable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isReadSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1200(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1228
    :cond_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isWritable(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->isWriteSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1232
    :cond_1
    return-void
.end method

.method private removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .line 1134
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1137
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->destroy(Lorg/apache/mina/core/session/AbstractIoSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1138
    const/4 v0, 0x1

    .line 1144
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1153
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1145
    :catch_0
    move-exception v1

    .line 1150
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    .line 1151
    .local v2, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v2, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1153
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1154
    nop

    .line 1138
    return v0

    .line 1153
    :goto_1
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1154
    throw v0

    .line 1143
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 1139
    :catch_1
    move-exception v0

    .line 1140
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 1141
    .local v1, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1144
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :try_start_4
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v0}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    .line 1153
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 1145
    :catch_2
    move-exception v0

    .line 1150
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v1

    .line 1151
    .restart local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1153
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1154
    nop

    .line 1155
    nop

    .line 1157
    const/4 v0, 0x0

    return v0

    .line 1153
    :goto_3
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1154
    throw v0

    .line 1144
    :goto_4
    :try_start_6
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/service/AbstractIoService;

    invoke-virtual {v1}, Lorg/apache/mina/core/service/AbstractIoService;->getListeners()Lorg/apache/mina/core/service/IoServiceListenerSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/mina/core/service/IoServiceListenerSupport;->fireSessionDestroyed(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    .line 1153
    :catchall_3
    move-exception v0

    goto :goto_6

    .line 1145
    :catch_3
    move-exception v1

    .line 1150
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    .line 1151
    .restart local v2    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    invoke-interface {v2, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireExceptionCaught(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1153
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    :goto_5
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1154
    nop

    .line 1155
    throw v0

    .line 1153
    :goto_6
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->clearWriteRequestQueue(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 1154
    throw v0
.end method

.method private removeSessions()I
    .locals 5

    .line 855
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    const/4 v0, 0x0

    .line 857
    .local v0, "removedSessions":I
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :goto_0
    if-eqz v1, :cond_4

    .line 858
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 861
    .local v2, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 879
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 881
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 882
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 888
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 873
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 874
    goto :goto_1

    .line 864
    :cond_2
    invoke-direct {p0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 865
    add-int/lit8 v0, v0, 0x1

    .line 857
    .end local v2    # "state":Lorg/apache/mina/core/session/SessionState;
    :cond_3
    :goto_1
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1000(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    goto :goto_0

    .line 892
    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    :cond_4
    return v0
.end method

.method private scheduleFlush(Lorg/apache/mina/core/session/AbstractIoSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 1061
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/mina/core/session/AbstractIoSession;->setScheduledForFlush(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$1100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1064
    :cond_0
    return-void
.end method

.method private updateTrafficMask()V
    .locals 5

    .line 773
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    iget-object v0, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    .line 775
    .local v0, "queueSize":I
    :goto_0
    if-lez v0, :cond_4

    .line 776
    iget-object v1, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/session/AbstractIoSession;

    .line 778
    .local v1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    if-nez v1, :cond_0

    .line 780
    return-void

    .line 783
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->getState(Lorg/apache/mina/core/session/AbstractIoSession;)Lorg/apache/mina/core/session/SessionState;

    move-result-object v2

    .line 785
    .local v2, "state":Lorg/apache/mina/core/session/SessionState;
    sget-object v3, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$1;->$SwitchMap$org$apache$mina$core$session$SessionState:[I

    invoke-virtual {v2}, Lorg/apache/mina/core/session/SessionState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 799
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$900(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 800
    goto :goto_1

    .line 803
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 792
    :cond_2
    goto :goto_1

    .line 787
    :cond_3
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v3, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->updateTrafficControl(Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 789
    nop

    .line 811
    :goto_1
    nop

    .end local v1    # "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    .end local v2    # "state":Lorg/apache/mina/core/session/SessionState;
    add-int/lit8 v0, v0, -0x1

    .line 812
    goto :goto_0

    .line 813
    :cond_4
    return-void
.end method

.method private writeBuffer(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 5
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p3, "hasFragmentation"    # Z
    .param p4, "maxLength"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1096
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 1097
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    const/4 v1, 0x0

    .line 1099
    .local v1, "localWrittenBytes":I
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1102
    if-eqz p3, :cond_0

    .line 1103
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .local v2, "length":I
    goto :goto_0

    .line 1105
    .end local v2    # "length":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->remaining()I

    move-result v2

    .line 1109
    .restart local v2    # "length":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v3, p1, v0, v2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->write(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/buffer/IoBuffer;I)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    .line 1118
    nop

    .line 1120
    invoke-virtual {p1, v1, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 1123
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p3, :cond_2

    if-eqz v1, :cond_2

    .line 1124
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1126
    .end local v2    # "length":I
    :cond_2
    goto :goto_1

    .line 1110
    .restart local v2    # "length":I
    :catch_0
    move-exception v3

    .line 1113
    .local v3, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->free()V

    .line 1114
    invoke-virtual {p1}, Lorg/apache/mina/core/session/AbstractIoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 1115
    invoke-direct {p0, p1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->removeNow(Lorg/apache/mina/core/session/AbstractIoSession;)Z

    .line 1117
    const/4 v4, 0x0

    return v4

    .line 1127
    .end local v2    # "length":I
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1130
    :goto_1
    return v1
.end method

.method private writeFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;ZIJ)I
    .locals 7
    .param p2, "req"    # Lorg/apache/mina/core/write/WriteRequest;
    .param p3, "hasFragmentation"    # Z
    .param p4, "maxLength"    # I
    .param p5, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;",
            "Lorg/apache/mina/core/write/WriteRequest;",
            "ZIJ)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1069
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    .local p1, "session":Lorg/apache/mina/core/session/AbstractIoSession;, "TS;"
    invoke-interface {p2}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/core/file/FileRegion;

    .line 1071
    .local v0, "region":Lorg/apache/mina/core/file/FileRegion;
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 1074
    if-eqz p3, :cond_0

    .line 1075
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v1

    int-to-long v5, p4

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .local v1, "length":I
    goto :goto_0

    .line 1077
    .end local v1    # "length":I
    :cond_0
    const-wide/32 v1, 0x7fffffff

    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 1080
    .restart local v1    # "length":I
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v2, p1, v0, v1}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->transferFile(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/file/FileRegion;I)I

    move-result v2

    .line 1081
    .local v2, "localWrittenBytes":I
    int-to-long v5, v2

    invoke-interface {v0, v5, v6}, Lorg/apache/mina/core/file/FileRegion;->update(J)V

    .line 1082
    .end local v1    # "length":I
    goto :goto_1

    .line 1083
    .end local v2    # "localWrittenBytes":I
    :cond_1
    const/4 v2, 0x0

    .line 1086
    .restart local v2    # "localWrittenBytes":I
    :goto_1
    invoke-virtual {p1, v2, p5, p6}, Lorg/apache/mina/core/session/AbstractIoSession;->increaseWrittenBytes(IJ)V

    .line 1088
    invoke-interface {v0}, Lorg/apache/mina/core/file/FileRegion;->getRemainingBytes()J

    move-result-wide v5

    cmp-long v1, v5, v3

    if-lez v1, :cond_2

    if-nez p3, :cond_3

    if-eqz v2, :cond_3

    .line 1089
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->fireMessageSent(Lorg/apache/mina/core/session/AbstractIoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 1092
    :cond_3
    return v2
.end method


# virtual methods
.method public run()V
    .locals 16

    .line 604
    .local p0, "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    move-object/from16 v1, p0

    .line 606
    iget-object v0, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$202(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;J)J

    .line 607
    const/16 v0, 0xa

    move v2, v0

    .line 615
    .local v2, "nbTries":I
    :goto_0
    const-wide/16 v3, 0x3e8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 616
    .local v5, "t0":J
    iget-object v0, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0, v3, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->select(J)I

    move-result v0

    .line 617
    .local v0, "selected":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 618
    .local v7, "t1":J
    sub-long v9, v7, v5

    .line 620
    .local v9, "delta":J
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    iget-object v11, v11, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeupCalled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v11

    if-nez v11, :cond_2

    if-nez v0, :cond_2

    const-wide/16 v11, 0x64

    cmp-long v11, v9, v11

    if-gez v11, :cond_2

    .line 623
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isBrokenConnection()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 624
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v11

    const-string v12, "Broken connection"

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_0
    if-nez v2, :cond_1

    .line 640
    invoke-static {}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$300()Lorg/slf4j/Logger;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Create a new selector. Selected is 0, delta = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 641
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->registerNewSelector()V

    .line 642
    const/16 v2, 0xa

    goto :goto_1

    .line 644
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 648
    :cond_2
    const/16 v2, 0xa

    .line 652
    :goto_1
    invoke-direct/range {p0 .. p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->handleNewSessions()I

    move-result v11

    if-nez v11, :cond_4

    .line 655
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessionsCount()I

    move-result v11

    if-nez v11, :cond_4

    .line 656
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 658
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$400(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isSelectorEmpty()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 660
    nop

    .line 661
    goto/16 :goto_4

    .line 664
    :cond_3
    nop

    .line 666
    iget-object v11, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v11}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$100(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v11

    invoke-virtual {v11, v12, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 668
    nop

    .line 669
    goto/16 :goto_4

    .line 676
    :cond_4
    invoke-direct/range {p0 .. p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->updateTrafficMask()V

    .line 680
    if-lez v0, :cond_5

    .line 683
    invoke-direct/range {p0 .. p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->process()V

    .line 687
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 688
    .local v11, "currentTime":J
    invoke-direct {v1, v11, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->flush(J)V

    .line 691
    invoke-direct {v1, v11, v12}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->notifyIdleSessions(J)V

    .line 694
    invoke-direct/range {p0 .. p0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->removeSessions()I

    .line 698
    iget-object v13, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v13}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->isDisposing()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 699
    const/4 v13, 0x0

    .line 701
    .local v13, "hasKeys":Z
    iget-object v14, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v14}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->allSessions()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 702
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/mina/core/session/IoSession;

    .line 704
    .local v15, "session":Lorg/apache/mina/core/session/IoSession;
    iget-object v3, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    move-object v4, v15

    check-cast v4, Lorg/apache/mina/core/session/AbstractIoSession;

    invoke-static {v3, v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$500(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;Lorg/apache/mina/core/session/AbstractIoSession;)V

    .line 706
    invoke-interface {v15}, Lorg/apache/mina/core/session/IoSession;->isActive()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 707
    const/4 v3, 0x1

    move v13, v3

    .line 709
    .end local v15    # "session":Lorg/apache/mina/core/session/IoSession;
    :cond_6
    const-wide/16 v3, 0x3e8

    goto :goto_2

    .line 711
    .end local v14    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TS;>;"
    :cond_7
    iget-object v3, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v3}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->wakeup()V
    :try_end_0
    .catch Ljava/nio/channels/ClosedSelectorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 718
    .end local v0    # "selected":I
    .end local v5    # "t0":J
    .end local v7    # "t1":J
    .end local v9    # "delta":J
    .end local v11    # "currentTime":J
    .end local v13    # "hasKeys":Z
    :catch_0
    move-exception v0

    move-object v3, v0

    .line 719
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 722
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 725
    goto :goto_3

    .line 723
    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 724
    .local v0, "e1":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 726
    .end local v0    # "e1":Ljava/lang/InterruptedException;
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_3
    goto/16 :goto_0

    .line 713
    :catch_2
    move-exception v0

    .line 716
    .local v0, "cse":Ljava/nio/channels/ClosedSelectorException;
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 717
    nop

    .line 730
    .end local v0    # "cse":Ljava/nio/channels/ClosedSelectorException;
    :goto_4
    const/4 v3, 0x1

    :try_start_2
    iget-object v0, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$600(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 731
    :try_start_3
    iget-object v0, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$700(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-virtual {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->doDispose()V

    .line 734
    :cond_9
    monitor-exit v4

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v2    # "nbTries":I
    .end local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 738
    .restart local v2    # "nbTries":I
    .restart local p0    # "this":Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;, "Lorg/apache/mina/core/polling/AbstractPollingIoProcessor<TS;>.Processor;"
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 735
    :catch_3
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lorg/apache/mina/util/ExceptionMonitor;->getInstance()Lorg/apache/mina/util/ExceptionMonitor;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/apache/mina/util/ExceptionMonitor;->exceptionCaught(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 738
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5
    iget-object v0, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v0}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :goto_6
    iget-object v4, v1, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor$Processor;->this$0:Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;

    invoke-static {v4}, Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;->access$800(Lorg/apache/mina/core/polling/AbstractPollingIoProcessor;)Lorg/apache/mina/core/future/DefaultIoFuture;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/mina/core/future/DefaultIoFuture;->setValue(Ljava/lang/Object;)Z

    .line 739
    throw v0
.end method
