.class public Lorg/apache/commons/net/io/CopyStreamAdapter;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Lorg/apache/commons/net/io/CopyStreamListener;


# instance fields
.field private final listeners:Lorg/apache/commons/net/util/ListenerList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/net/util/ListenerList<",
            "Lorg/apache/commons/net/io/CopyStreamListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/apache/commons/net/util/ListenerList;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/apache/commons/net/util/ListenerList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/net/io/CopyStreamEvent;Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/net/io/CopyStreamAdapter;->lambda$bytesTransferred$0(Lorg/apache/commons/net/io/CopyStreamEvent;Lorg/apache/commons/net/io/CopyStreamListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(JIJLorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lorg/apache/commons/net/io/CopyStreamAdapter;->lambda$bytesTransferred$1(JIJLorg/apache/commons/net/io/CopyStreamListener;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$bytesTransferred$0(Lorg/apache/commons/net/io/CopyStreamEvent;Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$bytesTransferred$1(JIJLorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 2

    .line 1
    move-wide v0, p3

    .line 2
    move p3, p2

    .line 3
    move-wide p1, p0

    .line 4
    move-object p0, p5

    .line 5
    move-wide p4, v0

    .line 6
    invoke-interface/range {p0 .. p5}, Lorg/apache/commons/net/io/CopyStreamListener;->bytesTransferred(JIJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public addCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->addListener(Ljava/util/EventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bytesTransferred(JIJ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    new-instance v1, Lorg/apache/commons/net/io/a;

    .line 4
    .line 5
    move-wide v3, p1

    .line 6
    move v2, p3

    .line 7
    move-wide v5, p4

    .line 8
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/net/io/a;-><init>(IJJ)V

    .line 9
    .line 10
    .line 11
    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public bytesTransferred(Lorg/apache/commons/net/io/CopyStreamEvent;)V
    .locals 3

    .line 15
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    new-instance v1, Lorg/apache/commons/io/filefilter/b;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lorg/apache/commons/io/filefilter/b;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public removeCopyStreamListener(Lorg/apache/commons/net/io/CopyStreamListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/net/io/CopyStreamAdapter;->listeners:Lorg/apache/commons/net/util/ListenerList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lorg/apache/commons/net/util/ListenerList;->removeListener(Ljava/util/EventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
