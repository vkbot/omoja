.class public final Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;
.super Lokhttp3/internal/ws/RealWebSocket$Streams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnection;->newWebSocketStreams$okhttp(Lokhttp3/internal/connection/Exchange;)Lokhttp3/internal/ws/RealWebSocket$Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "okhttp3/internal/connection/RealConnection$newWebSocketStreams$1",
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "Ln2/b;",
        "close",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $exchange:Lokhttp3/internal/connection/Exchange;

.field final synthetic $sink:Lx2/l;

.field final synthetic $source:Lx2/m;


# direct methods
.method public constructor <init>(Lokhttp3/internal/connection/Exchange;Lx2/m;Lx2/l;ZLx2/m;Lx2/l;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    iput-object p2, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$source:Lx2/m;

    iput-object p3, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$sink:Lx2/l;

    invoke-direct {p0, p4, p5, p6}, Lokhttp3/internal/ws/RealWebSocket$Streams;-><init>(ZLx2/m;Lx2/l;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    iget-object v0, p0, Lokhttp3/internal/connection/RealConnection$newWebSocketStreams$1;->$exchange:Lokhttp3/internal/connection/Exchange;

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    return-void
.end method
