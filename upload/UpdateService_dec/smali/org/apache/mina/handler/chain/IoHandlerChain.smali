.class public Lorg/apache/mina/handler/chain/IoHandlerChain;
.super Ljava/lang/Object;
.source "IoHandlerChain.java"

# interfaces
.implements Lorg/apache/mina/handler/chain/IoHandlerCommand;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    }
.end annotation


# static fields
.field private static volatile nextId:I


# instance fields
.field private final NEXT_COMMAND:Ljava/lang/String;

.field private final head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

.field private final id:I

.field private final name2entry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput v0, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget v0, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/apache/mina/handler/chain/IoHandlerChain;->nextId:I

    iput v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->id:I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/mina/handler/chain/IoHandlerChain;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".nextCommand"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    .line 54
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "head"

    const/4 v7, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    iput-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 55
    new-instance v8, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v6

    const-string v5, "tail"

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    iput-object v8, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 56
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0, v8}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 57
    return-void
.end method

.method static synthetic access$200(Lorg/apache/mina/handler/chain/IoHandlerChain;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain;

    .line 35
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/handler/chain/IoHandlerChain;
    .param p1, "x1"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p2, "x2"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "x3"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void
.end method

.method private callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerCommand;->execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    .line 267
    return-void
.end method

.method private checkAddable(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 244
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other filter is using the same name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 4
    .param p1, "baseName"    # Ljava/lang/String;

    .line 231
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 233
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-eqz v0, :cond_0

    .line 237
    return-object v0

    .line 234
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown filter name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createHeadCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .line 60
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/handler/chain/IoHandlerChain$1;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    return-object v0
.end method

.method private createTailCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/mina/handler/chain/IoHandlerChain$2;

    invoke-direct {v0, p0}, Lorg/apache/mina/handler/chain/IoHandlerChain$2;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;)V

    return-object v0
.end method

.method private deregister(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)V
    .locals 4
    .param p1, "entry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 217
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 218
    .local v0, "prevEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 219
    .local v1, "nextEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {v0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 220
    invoke-static {v1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 222
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$400(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method private register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 8
    .param p1, "prevEntry"    # Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .line 209
    new-instance v7, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;-><init>(Lorg/apache/mina/handler/chain/IoHandlerChain;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;Lorg/apache/mina/handler/chain/IoHandlerChain$1;)V

    .line 210
    .local v0, "newEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-static {p1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$302(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 211
    invoke-static {p1, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$102(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 213
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    return-void
.end method


# virtual methods
.method public declared-synchronized addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    monitor-enter p0

    .line 178
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 179
    .local v0, "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-direct {p0, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, v0, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    monitor-exit p0

    return-void

    .line 177
    .end local v0    # "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/handler/chain/IoHandlerChain;
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "command":Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 2
    .param p1, "baseName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 166
    .local v0, "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-direct {p0, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 167
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    .line 164
    .end local v0    # "baseEntry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/handler/chain/IoHandlerChain;
    .end local p1    # "baseName":Ljava/lang/String;
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "command":Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFirst(Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 141
    .end local p0    # "this":Lorg/apache/mina/handler/chain/IoHandlerChain;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "command":Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addLast(Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    monitor-enter p0

    .line 153
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkAddable(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/mina/handler/chain/IoHandlerChain;->register(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Ljava/lang/String;Lorg/apache/mina/handler/chain/IoHandlerCommand;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 152
    .end local p0    # "this":Lorg/apache/mina/handler/chain/IoHandlerChain;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "command":Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->remove(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 206
    .end local p0    # "this":Lorg/apache/mina/handler/chain/IoHandlerChain;
    :cond_0
    monitor-exit p0

    return-void

    .line 200
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public contains(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/handler/chain/IoHandlerCommand;",
            ">;)Z"
        }
    .end annotation

    .line 333
    .local p1, "commandType":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/apache/mina/handler/chain/IoHandlerCommand;>;"
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 335
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v1, :cond_1

    .line 336
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const/4 v1, 0x1

    return v1

    .line 340
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    .line 343
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Lorg/apache/mina/handler/chain/IoHandlerCommand;)Z
    .locals 2
    .param p1, "command"    # Lorg/apache/mina/handler/chain/IoHandlerCommand;

    .line 316
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 317
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v0, v1, :cond_1

    .line 318
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 319
    const/4 v1, 0x1

    return v1

    .line 321
    :cond_0
    invoke-static {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public execute(Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 2
    .param p1, "next"    # Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 254
    if-eqz p1, :cond_0

    .line 255
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-direct {p0, v0, p2, p3}, Lorg/apache/mina/handler/chain/IoHandlerChain;->callNextCommand(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    nop

    .line 263
    return-void

    .line 261
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->NEXT_COMMAND:Ljava/lang/String;

    invoke-interface {p2, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    throw v0
.end method

.method public get(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 109
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 111
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 112
    const/4 v1, 0x0

    return-object v1

    .line 115
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1

    return-object v1
.end method

.method public getAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;>;"
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 276
    .local v1, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v1, v2, :cond_0

    .line 277
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    goto :goto_0

    .line 281
    :cond_0
    return-object v0
.end method

.method public getAllReversed()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;>;"
    iget-object v1, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    .line 291
    .local v1, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v1, v2, :cond_0

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {v1}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$300(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_0
    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->name2entry:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    .line 95
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 96
    const/4 v1, 0x0

    return-object v1

    .line 99
    :cond_0
    return-object v0
.end method

.method public getNextCommand(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    invoke-virtual {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->getEntry(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 128
    .local v0, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    if-nez v0, :cond_0

    .line 129
    const/4 v1, 0x0

    return-object v1

    .line 132
    :cond_0
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getNextCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand$NextCommand;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerCommand;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    monitor-enter p0

    .line 190
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/mina/handler/chain/IoHandlerChain;->checkOldName(Ljava/lang/String;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v0

    .line 191
    .local v0, "entry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    invoke-direct {p0, v0}, Lorg/apache/mina/handler/chain/IoHandlerChain;->deregister(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)V

    .line 193
    invoke-virtual {v0}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 189
    .end local v0    # "entry":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    .end local p0    # "this":Lorg/apache/mina/handler/chain/IoHandlerChain;
    .end local p1    # "name":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v1, "{ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    const/4 v1, 0x1

    .line 356
    .local v1, "empty":Z
    iget-object v2, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->head:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    invoke-static {v2}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v2

    .line 358
    .local v2, "e":Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;
    :goto_0
    iget-object v3, p0, Lorg/apache/mina/handler/chain/IoHandlerChain;->tail:Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    if-eq v2, v3, :cond_1

    .line 359
    if-nez v1, :cond_0

    .line 360
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 362
    :cond_0
    const/4 v1, 0x0

    .line 365
    :goto_1
    const/16 v3, 0x28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v2}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v2}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->getCommand()Lorg/apache/mina/handler/chain/IoHandlerCommand;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {v2}, Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;->access$100(Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;)Lorg/apache/mina/handler/chain/IoHandlerChain$Entry;

    move-result-object v2

    goto :goto_0

    .line 374
    :cond_1
    if-eqz v1, :cond_2

    .line 375
    const-string v3, "empty"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_2
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
