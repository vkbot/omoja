.class public Lorg/apache/mina/filter/ssl/SslFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SslFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;,
        Lorg/apache/mina/filter/ssl/SslFilter$SslFilterMessage;
    }
.end annotation


# static fields
.field public static final CLIENT_HANDSHAKE:Z = false

.field public static final DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

.field private static final SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

.field public static final SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

.field public static final START_HANDSHAKE:Z = true

.field public static final USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private final autoStart:Z

.field private client:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private needClientAuth:Z

.field final sslContext:Ljavax/net/ssl/SSLContext;

.field private wantClientAuth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    .line 98
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "session"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    .line 110
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "disableOnce"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    .line 120
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "useNotification"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->USE_NOTIFICATION:Lorg/apache/mina/core/session/AttributeKey;

    .line 135
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "peerAddress"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->PEER_ADDRESS:Lorg/apache/mina/core/session/AttributeKey;

    .line 138
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "nextFilter"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    .line 140
    new-instance v1, Lorg/apache/mina/core/session/AttributeKey;

    const-string v2, "handler"

    invoke-direct {v1, v0, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;

    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;-><init>(Ljavax/net/ssl/SSLContext;Z)V

    .line 173
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Z)V
    .locals 2
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "autoStart"    # Z

    .line 184
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 185
    if-eqz p1, :cond_0

    .line 189
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 190
    iput-boolean p2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    .line 191
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sslContext"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 828
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 830
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-eqz v0, :cond_1

    .line 834
    monitor-enter v0

    .line 835
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->getSslFilter()Lorg/apache/mina/filter/ssl/SslFilter;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 838
    monitor-exit v0

    .line 840
    return-object v0

    .line 836
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Not managed by this filter."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    throw v1

    .line 838
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 831
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method private handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "sslHandler"    # Lorg/apache/mina/filter/ssl/SslHandler;

    .line 820
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchAppBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    .line 822
    .local v0, "readBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {p2, p1, v0}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V

    .line 825
    :cond_0
    return-void
.end method

.method private handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "sslHandler"    # Lorg/apache/mina/filter/ssl/SslHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 802
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 803
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Processing the SSL Data "

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 807
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 808
    invoke-virtual {p2}, Lorg/apache/mina/filter/ssl/SslHandler;->flushPreHandshakeEvents()V

    .line 812
    :cond_1
    invoke-virtual {p2, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    .line 815
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->handleAppDataRead(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 816
    return-void
.end method

.method private initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 4
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 767
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 768
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    const/4 v1, 0x0

    .line 772
    .local v1, "future":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 773
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->closeOutbound()Z

    move-result v2

    if-nez v2, :cond_0

    .line 774
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SSL session is shut down already."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p2, v2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newNotWrittenFuture(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 779
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->writeNetBuffer(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    move-object v1, v2

    .line 781
    if-nez v1, :cond_1

    .line 782
    invoke-static {p2}, Lorg/apache/mina/core/future/DefaultWriteFuture;->newWrittenFuture(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    move-object v1, v2

    .line 785
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 788
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 791
    :try_start_2
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v2

    sget-object v3, Lorg/apache/mina/filter/ssl/SslEvent;->UNSECURED:Lorg/apache/mina/filter/ssl/SslEvent;

    invoke-interface {v2, v3}, Lorg/apache/mina/core/filterchain/IoFilterChain;->fireEvent(Lorg/apache/mina/filter/FilterEvent;)V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 795
    nop

    .line 797
    return-object v1

    .line 788
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 792
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :catch_0
    move-exception v2

    .line 793
    .local v2, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 794
    throw v2
.end method

.method private initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 748
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{} : Starting the first handshake"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 755
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 756
    :try_start_1
    invoke-virtual {v0, p1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 757
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushFilterWrite()V

    .line 758
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushMessageReceived()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 763
    nop

    .line 764
    return-void

    .line 758
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 760
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :catch_0
    move-exception v1

    .line 761
    .local v1, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 762
    throw v1
.end method

.method private isCloseNotify(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "message"    # Ljava/lang/Object;

    .line 620
    instance-of v0, p1, Lorg/apache/mina/core/buffer/IoBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 621
    return v1

    .line 624
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 625
    .local v0, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    .line 627
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x0

    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x1

    .line 628
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    add-int/lit8 v3, v2, 0x2

    .line 629
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v2, 0x2

    .line 630
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    if-eq v3, v5, :cond_1

    add-int/lit8 v3, v2, 0x2

    .line 631
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    add-int/lit8 v3, v2, 0x2

    .line 632
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    if-ne v3, v4, :cond_2

    :cond_1
    add-int/lit8 v3, v2, 0x3

    .line 633
    invoke-virtual {v0, v3}, Lorg/apache/mina/core/buffer/IoBuffer;->get(I)B

    move-result v3

    if-nez v3, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    nop

    .line 627
    :goto_0
    return v1
.end method


# virtual methods
.method public exceptionCaught(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 579
    instance-of v0, p3, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    if-eqz v0, :cond_6

    .line 582
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    .line 583
    .local v0, "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    invoke-virtual {v0}, Lorg/apache/mina/core/write/WriteToClosedSessionException;->getRequests()Ljava/util/List;

    move-result-object v1

    .line 584
    .local v1, "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    const/4 v2, 0x0

    .line 586
    .local v2, "containsCloseNotify":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/core/write/WriteRequest;

    .line 587
    .local v4, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v4}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v5}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    const/4 v2, 0x1

    .line 589
    goto :goto_1

    .line 591
    .end local v4    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_0
    goto :goto_0

    .line 593
    :cond_1
    :goto_1
    if-eqz v2, :cond_6

    .line 594
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 596
    return-void

    .line 599
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 601
    .local v3, "newFailedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/mina/core/write/WriteRequest;

    .line 602
    .local v5, "r":Lorg/apache/mina/core/write/WriteRequest;
    invoke-interface {v5}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/apache/mina/filter/ssl/SslFilter;->isCloseNotify(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 603
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    .end local v5    # "r":Lorg/apache/mina/core/write/WriteRequest;
    :cond_3
    goto :goto_2

    .line 607
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 609
    return-void

    .line 612
    :cond_5
    new-instance v4, Lorg/apache/mina/core/write/WriteToClosedSessionException;

    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Lorg/apache/mina/core/write/WriteToClosedSessionException;-><init>(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p3, v4

    .line 616
    .end local v0    # "e":Lorg/apache/mina/core/write/WriteToClosedSessionException;
    .end local v1    # "failedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    .end local v2    # "containsCloseNotify":Z
    .end local v3    # "newFailedRequests":Ljava/util/List;, "Ljava/util/List<Lorg/apache/mina/core/write/WriteRequest;>;"
    :cond_6
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    .line 617
    return-void
.end method

.method public filterClose(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 690
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 692
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v0, :cond_0

    .line 695
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 696
    return-void

    .line 699
    :cond_0
    const/4 v1, 0x0

    .line 702
    .local v1, "future":Lorg/apache/mina/core/future/WriteFuture;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 703
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 704
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    move-object v1, v2

    .line 705
    new-instance v2, Lorg/apache/mina/filter/ssl/SslFilter$1;

    invoke-direct {v2, p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter$1;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v1, v2}, Lorg/apache/mina/core/future/WriteFuture;->addListener(Lorg/apache/mina/core/future/IoFutureListener;)Lorg/apache/mina/core/future/WriteFuture;

    .line 712
    :cond_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushFilterWrite()V

    .line 713
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    if-nez v1, :cond_2

    .line 719
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 722
    :cond_2
    return-void

    .line 713
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :try_start_3
    throw v2
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 718
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 714
    :catch_0
    move-exception v2

    .line 715
    .local v2, "se":Ljavax/net/ssl/SSLException;
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 716
    nop

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 718
    .end local v2    # "se":Ljavax/net/ssl/SSLException;
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local v1    # "future":Lorg/apache/mina/core/future/WriteFuture;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :goto_0
    if-nez v1, :cond_3

    .line 719
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterClose(Lorg/apache/mina/core/session/IoSession;)V

    .line 721
    :cond_3
    throw v2
.end method

.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 638
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Writing Message : {}"

    invoke-interface {v0, v2, v1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 642
    :cond_0
    const/4 v0, 0x1

    .line 643
    .local v0, "needsFlush":Z
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v1

    .line 646
    .local v1, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v1
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :try_start_1
    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 648
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 651
    :cond_1
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->containsAttribute(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->DISABLE_ENCRYPTION_ONCE:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p2, v2}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 654
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 657
    :cond_2
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    .line 659
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isWritingEncryptedData()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 661
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    .line 662
    :cond_3
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 664
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/mina/filter/ssl/SslHandler;->encrypt(Ljava/nio/ByteBuffer;)V

    .line 665
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->fetchOutNetBuffer()Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v3

    .line 666
    .local v3, "encryptedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    invoke-interface {p3, v3}, Lorg/apache/mina/core/write/WriteRequest;->setMessage(Ljava/lang/Object;)V

    .line 667
    new-instance v4, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    const/4 v5, 0x0

    invoke-direct {v4, p3, v3, v5}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/ssl/SslFilter$1;)V

    invoke-virtual {v1, p1, v4}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleFilterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 669
    .end local v3    # "encryptedBuffer":Lorg/apache/mina/core/buffer/IoBuffer;
    goto :goto_0

    .line 670
    :cond_4
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 672
    invoke-virtual {v1, p1, p3}, Lorg/apache/mina/filter/ssl/SslHandler;->schedulePreHandshakeWriteRequest(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 675
    :cond_5
    const/4 v0, 0x0

    .line 678
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_0
    if-eqz v0, :cond_6

    .line 679
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->flushFilterWrite()V

    .line 681
    :cond_6
    monitor-exit v1

    .line 685
    nop

    .line 686
    return-void

    .line 681
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "needsFlush":Z
    .end local v1    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p3    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 682
    .restart local v0    # "needsFlush":Z
    .restart local v1    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p3    # "writeRequest":Lorg/apache/mina/core/write/WriteRequest;
    :catch_0
    move-exception v2

    .line 683
    .local v2, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 684
    throw v2
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 394
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    return-object v0
.end method

.method getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getService()Lorg/apache/mina/core/service/IoService;

    move-result-object v1

    instance-of v1, v1, Lorg/apache/mina/core/service/IoAcceptor;

    if-eqz v1, :cond_0

    .line 247
    const-string v1, "Session Server"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 250
    :cond_0
    const-string v1, "Session Client"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :goto_0
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 255
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 257
    .local v1, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    if-nez v1, :cond_1

    .line 258
    const-string v2, "(no sslEngine)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 259
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 260
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 261
    const-string v2, "(SSL)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 263
    :cond_2
    const-string v2, "(ssl...)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSslSession(Lorg/apache/mina/core/session/IoSession;)Ljavax/net/ssl/SSLSession;
    .locals 1
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 200
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_SESSION:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public initiateHandshake(Lorg/apache/mina/core/session/IoSession;)V
    .locals 4
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 732
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getFilterChain()Lorg/apache/mina/core/filterchain/IoFilterChain;

    move-result-object v0

    .line 734
    .local v0, "filterChain":Lorg/apache/mina/core/filterchain/IoFilterChain;
    if-eqz v0, :cond_1

    .line 738
    const-class v1, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getNextFilter(Ljava/lang/Class;)Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    move-result-object v1

    .line 740
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    if-eqz v1, :cond_0

    .line 744
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 745
    return-void

    .line 741
    :cond_0
    new-instance v2, Ljavax/net/ssl/SSLException;

    const-string v3, "No SSL next filter in the chain"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    .end local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :cond_1
    new-instance v1, Ljavax/net/ssl/SSLException;

    const-string v2, "No filter chain"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isNeedClientAuth()Z
    .locals 1

    .line 358
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    return v0
.end method

.method public isSecured(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 298
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 300
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 301
    return v1

    .line 304
    :cond_0
    monitor-enter v0

    .line 305
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    .line 306
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isSslStarted(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 279
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/ssl/SslHandler;

    .line 281
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 282
    return v1

    .line 285
    :cond_0
    monitor-enter v0

    .line 286
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    .line 287
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isUseClientMode()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    return v0
.end method

.method public isWantClientAuth()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    return v0
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 6
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 496
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSessionInfo(Lorg/apache/mina/core/session/IoSession;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "{}: Message received : {}"

    invoke-interface {v0, v2, v1, p3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    :cond_0
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 501
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 505
    .local v1, "canPushMessage":Ljava/util/concurrent/atomic/AtomicBoolean;
    monitor-enter v0

    .line 506
    :try_start_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 512
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    .line 514
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 515
    move-object v2, p3

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .local v2, "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v3

    if-nez v3, :cond_5

    .line 524
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lorg/apache/mina/filter/ssl/SslHandler;->messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/nio/ByteBuffer;)V

    .line 527
    invoke-direct {p0, p1, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->handleSslData(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/filter/ssl/SslHandler;)V

    .line 529
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isInboundDone()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 530
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 531
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    goto :goto_0

    .line 533
    :cond_2
    invoke-direct {p0, p1, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    .line 536
    :goto_0
    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 538
    invoke-virtual {v0, p1, v2}, Lorg/apache/mina/filter/ssl/SslHandler;->scheduleMessageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 555
    :cond_3
    nop

    .line 557
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 559
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 560
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    goto :goto_2

    .line 562
    :cond_4
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushMessageReceived()V

    .line 564
    :goto_2
    return-void

    .line 519
    .restart local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    :cond_5
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 520
    new-instance v3, Ljavax/net/ssl/SSLException;

    const-string v4, "Outbound done"

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local v1    # "canPushMessage":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p3    # "message":Ljava/lang/Object;
    throw v3
    :try_end_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local v1    # "canPushMessage":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p3    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 542
    .local v3, "ssle":Ljavax/net/ssl/SSLException;
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isHandshakeComplete()Z

    move-result v4

    if-nez v4, :cond_6

    .line 543
    new-instance v4, Ljavax/net/ssl/SSLHandshakeException;

    const-string v5, "SSL handshake failed."

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    .line 544
    .local v4, "newSsle":Ljavax/net/ssl/SSLException;
    invoke-virtual {v4, v3}, Ljavax/net/ssl/SSLException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 545
    move-object v3, v4

    .line 548
    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->closeNow()Lorg/apache/mina/core/future/CloseFuture;

    .line 549
    nop

    .end local v4    # "newSsle":Ljavax/net/ssl/SSLException;
    goto :goto_3

    .line 551
    :cond_6
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 554
    :goto_3
    nop

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local v1    # "canPushMessage":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local p3    # "message":Ljava/lang/Object;
    throw v3

    .line 557
    .end local v2    # "buf":Lorg/apache/mina/core/buffer/IoBuffer;
    .end local v3    # "ssle":Ljavax/net/ssl/SSLException;
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local v1    # "canPushMessage":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    .restart local p3    # "message":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .param p3, "writeRequest"    # Lorg/apache/mina/core/write/WriteRequest;

    .line 568
    instance-of v0, p3, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    if-eqz v0, :cond_0

    .line 569
    move-object v0, p3

    check-cast v0, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;

    .line 570
    .local v0, "wrappedRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    .line 574
    .end local v0    # "wrappedRequest":Lorg/apache/mina/filter/ssl/SslFilter$EncryptedWriteRequest;
    :cond_0
    return-void
.end method

.method public onPostAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 465
    iget-boolean v0, p0, Lorg/apache/mina/filter/ssl/SslFilter;->autoStart:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 466
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    invoke-direct {p0, p3, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateHandshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 468
    :cond_0
    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 437
    const-class v0, Lorg/apache/mina/filter/ssl/SslFilter;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 443
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    sget-object v0, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Adding the SSL Filter {} to the chain"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    :cond_0
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 448
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1, p3}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    new-instance v1, Lorg/apache/mina/filter/ssl/SslHandler;

    invoke-direct {v1, p0, v0}, Lorg/apache/mina/filter/ssl/SslHandler;-><init>(Lorg/apache/mina/filter/ssl/SslFilter;Lorg/apache/mina/core/session/IoSession;)V

    .line 454
    .local v1, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v2, v2

    if-nez v2, :cond_2

    .line 455
    :cond_1
    iget-object v2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/ssl/SSLServerSocketFactory;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 458
    :cond_2
    invoke-virtual {v1}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 460
    sget-object v2, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v2, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    return-void

    .line 438
    .end local v0    # "session":Lorg/apache/mina/core/session/IoSession;
    .end local v1    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :cond_3
    const-string v0, "Only one SSL filter is permitted in a chain."

    .line 439
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 440
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onPreRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 2
    .param p1, "parent"    # Lorg/apache/mina/core/filterchain/IoFilterChain;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 472
    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v0

    .line 473
    .local v0, "session":Lorg/apache/mina/core/session/IoSession;
    invoke-virtual {p0, v0}, Lorg/apache/mina/filter/ssl/SslFilter;->stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    .line 474
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->SSL_HANDLER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {v0, v1}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 2
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 481
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 484
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 486
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 487
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 491
    nop

    .line 492
    return-void

    .line 487
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 490
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p2    # "session":Lorg/apache/mina/core/session/IoSession;
    :catchall_1
    move-exception v1

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    .line 491
    throw v1
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .line 404
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledCipherSuites:[Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 0
    .param p1, "protocols"    # [Ljava/lang/String;

    .line 422
    iput-object p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->enabledProtocols:[Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 0
    .param p1, "needClientAuth"    # Z

    .line 368
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->needClientAuth:Z

    .line 369
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 0
    .param p1, "clientMode"    # Z

    .line 350
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->client:Z

    .line 351
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 0
    .param p1, "wantClientAuth"    # Z

    .line 386
    iput-boolean p1, p0, Lorg/apache/mina/filter/ssl/SslFilter;->wantClientAuth:Z

    .line 387
    return-void
.end method

.method public startSsl(Lorg/apache/mina/core/session/IoSession;)Z
    .locals 2
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 217
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->isOutboundDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 220
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->destroy()V

    .line 221
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->init()V

    .line 222
    invoke-virtual {v0, v1}, Lorg/apache/mina/filter/ssl/SslHandler;->handshake(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V

    .line 223
    const/4 v1, 0x1

    .line 224
    .local v1, "started":Z
    goto :goto_0

    .line 225
    .end local v1    # "started":Z
    :cond_0
    const/4 v1, 0x0

    .line 227
    .restart local v1    # "started":Z
    :goto_0
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushFilterWrite()V

    .line 228
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 229
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushMessageReceived()V
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 233
    nop

    .line 235
    return v1

    .line 228
    .end local v1    # "started":Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_0

    .line 230
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    :catch_0
    move-exception v1

    .line 231
    .local v1, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 232
    throw v1
.end method

.method public stopSsl(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;
    .locals 3
    .param p1, "session"    # Lorg/apache/mina/core/session/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->getSslSessionHandler(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/ssl/SslHandler;

    move-result-object v0

    .line 320
    .local v0, "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    sget-object v1, Lorg/apache/mina/filter/ssl/SslFilter;->NEXT_FILTER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v1}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 324
    .local v1, "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :try_start_1
    invoke-direct {p0, v1, p1}, Lorg/apache/mina/filter/ssl/SslFilter;->initiateClosure(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/core/future/WriteFuture;

    move-result-object v2

    .line 326
    .local v2, "future":Lorg/apache/mina/core/future/WriteFuture;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->flushFilterWrite()V

    .line 327
    monitor-exit v0

    .line 331
    nop

    .line 333
    return-object v2

    .line 327
    .end local v2    # "future":Lorg/apache/mina/core/future/WriteFuture;
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .end local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .end local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .end local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    :try_start_2
    throw v2
    :try_end_2
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 328
    .restart local v0    # "sslHandler":Lorg/apache/mina/filter/ssl/SslHandler;
    .restart local v1    # "nextFilter":Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .restart local p0    # "this":Lorg/apache/mina/filter/ssl/SslFilter;
    .restart local p1    # "session":Lorg/apache/mina/core/session/IoSession;
    :catch_0
    move-exception v2

    .line 329
    .local v2, "se":Ljavax/net/ssl/SSLException;
    invoke-virtual {v0}, Lorg/apache/mina/filter/ssl/SslHandler;->release()V

    .line 330
    throw v2
.end method
