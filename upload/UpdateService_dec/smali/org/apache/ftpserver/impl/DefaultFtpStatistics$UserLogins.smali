.class Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;
.super Ljava/lang/Object;
.source "DefaultFtpStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ftpserver/impl/DefaultFtpStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserLogins"
.end annotation


# instance fields
.field private perAddress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/net/InetAddress;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field public totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->perAddress:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->totalLogins:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 85
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->perAddress:Ljava/util/Map;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method


# virtual methods
.method public loginsFromInetAddress(Ljava/net/InetAddress;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 3
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 89
    iget-object v0, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->perAddress:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 90
    .local v0, "logins":Ljava/util/concurrent/atomic/AtomicInteger;
    if-nez v0, :cond_0

    .line 91
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, v1

    .line 92
    iget-object v1, p0, Lorg/apache/ftpserver/impl/DefaultFtpStatistics$UserLogins;->perAddress:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_0
    return-object v0
.end method
