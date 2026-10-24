.class public Lorg/apache/ftpserver/impl/PassivePorts;
.super Ljava/lang/Object;
.source "PassivePorts.java"


# static fields
.field private static final MAX_PORT:I = 0xffff

.field private static final MAX_PORT_INTEGER:Ljava/lang/Integer;


# instance fields
.field private checkIfBound:Z

.field private freeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private log:Lorg/slf4j/Logger;

.field private passivePortsString:Ljava/lang/String;

.field private r:Ljava/util/Random;

.field private usedList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const v0, 0xffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/apache/ftpserver/impl/PassivePorts;->MAX_PORT_INTEGER:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "passivePorts"    # Ljava/lang/String;
    .param p2, "checkIfBound"    # Z

    .line 148
    invoke-static {p1}, Lorg/apache/ftpserver/impl/PassivePorts;->parse(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/apache/ftpserver/impl/PassivePorts;-><init>(Ljava/util/Set;Z)V

    .line 150
    iput-object p1, p0, Lorg/apache/ftpserver/impl/PassivePorts;->passivePortsString:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;Z)V
    .locals 2
    .param p2, "checkIfBound"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 153
    .local p1, "passivePorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-class v0, Lorg/apache/ftpserver/impl/PassivePorts;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->log:Lorg/slf4j/Logger;

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->r:Ljava/util/Random;

    .line 154
    if-eqz p1, :cond_1

    .line 156
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object p1, v0

    .line 158
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->freeList:Ljava/util/List;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->usedList:Ljava/util/Set;

    .line 164
    iput-boolean p2, p0, Lorg/apache/ftpserver/impl/PassivePorts;->checkIfBound:Z

    .line 165
    return-void

    .line 155
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "passivePorts can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static addPort(Ljava/util/Set;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 133
    .local p0, "passivePortsList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method

.method private checkPortUnbound(I)Z
    .locals 4
    .param p1, "port"    # I

    .line 172
    iget-boolean v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->checkIfBound:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 173
    return v1

    .line 177
    :cond_0
    if-nez p1, :cond_1

    .line 178
    return v1

    .line 181
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, "ss":Ljava/net/ServerSocket;
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    invoke-direct {v3, p1}, Ljava/net/ServerSocket;-><init>(I)V

    move-object v0, v3

    .line 184
    invoke-virtual {v0, v1}, Ljava/net/ServerSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    nop

    .line 190
    nop

    .line 192
    :try_start_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    nop

    .line 185
    return v1

    .line 193
    :catch_0
    move-exception v1

    .line 195
    .local v1, "e":Ljava/io/IOException;
    return v2

    .line 190
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 192
    :try_start_2
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    goto :goto_0

    .line 193
    :catch_1
    move-exception v1

    .line 195
    .restart local v1    # "e":Ljava/io/IOException;
    return v2

    .line 198
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    throw v1

    .line 186
    :catch_2
    move-exception v1

    .line 188
    .restart local v1    # "e":Ljava/io/IOException;
    nop

    .line 190
    if-eqz v0, :cond_3

    .line 192
    :try_start_3
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 196
    goto :goto_1

    .line 193
    :catch_3
    move-exception v3

    .line 195
    .local v3, "e":Ljava/io/IOException;
    return v2

    .line 188
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    :goto_1
    return v2
.end method

.method private static fillRange(Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2
    .param p1, "beginPort"    # Ljava/lang/Integer;
    .param p2, "endPort"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 124
    .local p0, "passivePortsList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/apache/ftpserver/impl/PassivePorts;->addPort(Ljava/util/Set;Ljava/lang/Integer;)V

    .line 124
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static parse(Ljava/lang/String;)Ljava/util/Set;
    .locals 8
    .param p0, "portsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 77
    .local v0, "passivePortsList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 78
    .local v1, "inRange":Z
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 79
    .local v3, "lastPort":Ljava/lang/Integer;
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, ",;-"

    invoke-direct {v4, p0, v5, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 80
    .local v4, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 81
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, "token":Ljava/lang/String;
    const-string v6, ","

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ";"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    const-string v6, "-"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 92
    const/4 v1, 0x1

    goto :goto_2

    .line 93
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 96
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 98
    .local v6, "port":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lorg/apache/ftpserver/impl/PassivePorts;->verifyPort(I)V

    .line 100
    if-eqz v1, :cond_3

    .line 102
    invoke-static {v0, v3, v6}, Lorg/apache/ftpserver/impl/PassivePorts;->fillRange(Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 104
    const/4 v1, 0x0

    .line 107
    :cond_3
    invoke-static {v0, v6}, Lorg/apache/ftpserver/impl/PassivePorts;->addPort(Ljava/util/Set;Ljava/lang/Integer;)V

    .line 109
    move-object v3, v6

    goto :goto_2

    .line 84
    .end local v6    # "port":Ljava/lang/Integer;
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 85
    sget-object v6, Lorg/apache/ftpserver/impl/PassivePorts;->MAX_PORT_INTEGER:Ljava/lang/Integer;

    invoke-static {v0, v3, v6}, Lorg/apache/ftpserver/impl/PassivePorts;->fillRange(Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 89
    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 90
    const/4 v1, 0x0

    .line 111
    .end local v5    # "token":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 113
    :cond_6
    if-eqz v1, :cond_7

    .line 114
    sget-object v2, Lorg/apache/ftpserver/impl/PassivePorts;->MAX_PORT_INTEGER:Ljava/lang/Integer;

    invoke-static {v0, v3, v2}, Lorg/apache/ftpserver/impl/PassivePorts;->fillRange(Ljava/util/Set;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 117
    :cond_7
    return-object v0
.end method

.method private static verifyPort(I)V
    .locals 3
    .param p0, "port"    # I

    .line 140
    if-ltz p0, :cond_1

    .line 142
    const v0, 0xffff

    if-gt p0, v0, :cond_0

    .line 145
    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Port can not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized releasePort(I)V
    .locals 3
    .param p1, "port"    # I

    monitor-enter p0

    .line 233
    if-nez p1, :cond_0

    goto :goto_0

    .line 237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->usedList:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->freeList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local p0    # "this":Lorg/apache/ftpserver/impl/PassivePorts;
    :cond_1
    iget-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Releasing unreserved passive port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :goto_0
    monitor-exit p0

    return-void

    .line 232
    .end local p1    # "port":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized reserveNextPort()I
    .locals 6

    monitor-enter p0

    .line 203
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/ftpserver/impl/PassivePorts;->freeList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    .local v0, "freeCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 208
    iget-object v1, p0, Lorg/apache/ftpserver/impl/PassivePorts;->r:Ljava/util/Random;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 209
    .local v1, "i":I
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 211
    .local v2, "ret":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 214
    const/4 v3, 0x0

    monitor-exit p0

    return v3

    .line 216
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lorg/apache/ftpserver/impl/PassivePorts;->checkPortUnbound(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 218
    iget-object v3, p0, Lorg/apache/ftpserver/impl/PassivePorts;->freeList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    iget-object v3, p0, Lorg/apache/ftpserver/impl/PassivePorts;->usedList:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 223
    .end local p0    # "this":Lorg/apache/ftpserver/impl/PassivePorts;
    :cond_1
    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object v3, p0, Lorg/apache/ftpserver/impl/PassivePorts;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Passive port in use by another process: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    .end local v1    # "i":I
    .end local v2    # "ret":Ljava/lang/Integer;
    goto :goto_0

    .line 229
    :cond_2
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 202
    .end local v0    # "freeCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 248
    iget-object v0, p0, Lorg/apache/ftpserver/impl/PassivePorts;->passivePortsString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 249
    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/ftpserver/impl/PassivePorts;->freeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 255
    .local v2, "port":Ljava/lang/Integer;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .end local v2    # "port":Ljava/lang/Integer;
    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
