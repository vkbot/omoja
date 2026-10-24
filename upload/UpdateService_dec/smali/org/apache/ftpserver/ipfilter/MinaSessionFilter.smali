.class public Lorg/apache/ftpserver/ipfilter/MinaSessionFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "MinaSessionFilter.java"


# instance fields
.field private final filter:Lorg/apache/ftpserver/ipfilter/SessionFilter;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/SessionFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 46
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/MinaSessionFilter;->filter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    .line 48
    return-void
.end method


# virtual methods
.method public sessionCreated(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 1
    .param p1, "nextFilter"    # Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .param p2, "session"    # Lorg/apache/mina/core/session/IoSession;

    .line 52
    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/MinaSessionFilter;->filter:Lorg/apache/ftpserver/ipfilter/SessionFilter;

    invoke-interface {v0, p2}, Lorg/apache/ftpserver/ipfilter/SessionFilter;->accept(Lorg/apache/mina/core/session/IoSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lorg/apache/mina/core/session/IoSession;->close(Z)Lorg/apache/mina/core/future/CloseFuture;

    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionCreated(Lorg/apache/mina/core/session/IoSession;)V

    .line 57
    :goto_0
    return-void
.end method
