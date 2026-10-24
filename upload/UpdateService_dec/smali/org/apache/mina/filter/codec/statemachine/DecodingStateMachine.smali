.class public abstract Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
.super Ljava/lang/Object;
.source "DecodingStateMachine.java"

# interfaces
.implements Lorg/apache/mina/filter/codec/statemachine/DecodingState;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

.field private final childProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    .line 55
    new-instance v0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine$1;-><init>(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;

    .line 50
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    return-object v0
.end method

.method private cleanup()V
    .locals 3

    .line 193
    iget-boolean v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    .line 198
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e2":Ljava/lang/Exception;
    sget-object v1, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "Failed to destroy a decoding state machine."

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v0    # "e2":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 210
    .local v0, "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->init()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->initialized:Z

    .line 214
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 5
    .param p1, "in"    # Lorg/apache/mina/core/buffer/IoBuffer;
    .param p2, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    .line 114
    .local v0, "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->limit()I

    move-result v1

    .line 115
    .local v1, "limit":I
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .line 120
    .local v2, "pos":I
    :goto_0
    if-ne v2, v1, :cond_0

    .line 121
    goto :goto_1

    .line 124
    :cond_0
    move-object v3, v0

    .line 125
    .local v3, "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :try_start_0
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    invoke-interface {v0, p1, v4}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->decode(Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v4

    move-object v0, v4

    .line 128
    if-nez v0, :cond_2

    .line 129
    iget-object v4, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v4, p2}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 149
    if-nez v0, :cond_1

    .line 150
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    .line 129
    :cond_1
    return-object v4

    .line 132
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    .local v4, "newPos":I
    if-ne v4, v2, :cond_4

    if-ne v3, v0, :cond_4

    .line 136
    nop

    .line 141
    .end local v3    # "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .end local v4    # "newPos":I
    :goto_1
    nop

    .line 146
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 149
    if-nez v0, :cond_3

    .line 150
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    .line 141
    :cond_3
    return-object p0

    .line 138
    .restart local v3    # "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .restart local v4    # "newPos":I
    :cond_4
    move v2, v4

    .line 139
    .end local v3    # "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .end local v4    # "newPos":I
    goto :goto_0

    .line 146
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 142
    :catch_0
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 144
    nop

    .end local v0    # "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .end local v1    # "limit":I
    .end local v2    # "pos":I
    .end local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
    .end local p1    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p2    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .restart local v1    # "limit":I
    .restart local v2    # "pos":I
    .restart local p0    # "this":Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;
    .restart local p1    # "in":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local p2    # "out":Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    :goto_2
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 149
    if-nez v0, :cond_5

    .line 150
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    .line 152
    :cond_5
    throw v3
.end method

.method protected abstract destroy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;",
            ")",
            "Lorg/apache/mina/filter/codec/statemachine/DecodingState;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .locals 4
    .param p1, "out"    # Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->getCurrentState()Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v0

    .line 164
    .local v0, "state":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :goto_0
    move-object v1, v0

    .line 165
    .local v1, "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :try_start_0
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childOutput:Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    invoke-interface {v0, v2}, Lorg/apache/mina/filter/codec/statemachine/DecodingState;->finishDecode(Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 166
    if-nez v0, :cond_0

    .line 168
    goto :goto_1

    .line 172
    :cond_0
    if-ne v1, v0, :cond_1

    .line 173
    nop

    .line 183
    .end local v1    # "oldState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :goto_1
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 184
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    .line 185
    .local v1, "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v0, :cond_3

    .line 186
    :goto_2
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    goto :goto_3

    .line 175
    .end local v1    # "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :cond_1
    goto :goto_0

    .line 183
    :catchall_0
    move-exception v1

    goto :goto_4

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 179
    :try_start_1
    sget-object v2, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 180
    sget-object v2, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Ignoring the exception caused by a closed session."

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 184
    iget-object v1, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v1, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v1

    .line 185
    .local v1, "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v0, :cond_3

    .line 186
    goto :goto_2

    .line 189
    :cond_3
    :goto_3
    return-object v1

    .line 183
    .end local v1    # "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    :goto_4
    iput-object v0, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->currentState:Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    .line 184
    iget-object v2, p0, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->childProducts:Ljava/util/List;

    invoke-virtual {p0, v2, p1}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->finishDecode(Ljava/util/List;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)Lorg/apache/mina/filter/codec/statemachine/DecodingState;

    move-result-object v2

    .line 185
    .local v2, "nextState":Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    if-nez v0, :cond_4

    .line 186
    invoke-direct {p0}, Lorg/apache/mina/filter/codec/statemachine/DecodingStateMachine;->cleanup()V

    .line 188
    :cond_4
    throw v1
.end method

.method protected abstract init()Lorg/apache/mina/filter/codec/statemachine/DecodingState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
