.class public abstract Lz2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz2/e;
.implements Lz2/j;


# static fields
.field private static final NOT_SET:Ljava/lang/Long;


# instance fields
.field private producer:Lz2/f;

.field private requested:J

.field private final subscriber:Lz2/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz2/i;"
        }
    .end annotation
.end field

.field private final subscriptions:La3/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lz2/i;->NOT_SET:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lz2/i;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lz2/i;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lz2/i;->requested:J

    iput-object p1, p0, Lz2/i;->subscriber:Lz2/i;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lz2/i;->subscriptions:La3/a;

    goto :goto_0

    :cond_0
    new-instance p1, La3/a;

    invoke-direct {p1}, La3/a;-><init>()V

    :goto_0
    iput-object p1, p0, Lz2/i;->subscriptions:La3/a;

    return-void
.end method


# virtual methods
.method public final add(Lz2/j;)V
    .locals 2

    iget-object v0, p0, Lz2/i;->subscriptions:La3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Lz2/j;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v1, v0, La3/a;->c:Z

    if-nez v1, :cond_3

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, La3/a;->c:Z

    if-nez v1, :cond_2

    iget-object v1, v0, La3/a;->b:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, La3/a;->b:Ljava/util/LinkedList;

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Lz2/j;->unsubscribe()V

    :goto_1
    return-void
.end method

.method public final isUnsubscribed()Z
    .locals 1

    iget-object v0, p0, Lz2/i;->subscriptions:La3/a;

    iget-boolean v0, v0, La3/a;->c:Z

    return v0
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public final request(J)V
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lz2/i;->producer:Lz2/f;

    if-eqz v2, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2, p1, p2}, Lz2/f;->request(J)V

    return-void

    :cond_0
    :try_start_1
    iget-wide v2, p0, Lz2/i;->requested:J

    sget-object v4, Lz2/i;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iput-wide p1, p0, Lz2/i;->requested:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lz2/i;->requested:J

    add-long/2addr v2, p1

    cmp-long p1, v2, v0

    if-gez p1, :cond_2

    const-wide p1, 0x7fffffffffffffffL

    iput-wide p1, p0, Lz2/i;->requested:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lz2/i;->requested:J

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "number requested cannot be negative: "

    invoke-static {v1, p1, p2}, Landroidx/activity/b;->c(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lz2/f;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lz2/i;->requested:J

    iput-object p1, p0, Lz2/i;->producer:Lz2/f;

    iget-object p1, p0, Lz2/i;->subscriber:Lz2/i;

    if-eqz p1, :cond_0

    sget-object p1, Lz2/i;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lz2/i;->subscriber:Lz2/i;

    iget-object v0, p0, Lz2/i;->producer:Lz2/f;

    invoke-virtual {p1, v0}, Lz2/i;->setProducer(Lz2/f;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lz2/i;->NOT_SET:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    iget-object p1, p0, Lz2/i;->producer:Lz2/f;

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lz2/f;->request(J)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lz2/i;->producer:Lz2/f;

    invoke-interface {p1, v0, v1}, Lz2/f;->request(J)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final unsubscribe()V
    .locals 1

    iget-object v0, p0, Lz2/i;->subscriptions:La3/a;

    invoke-virtual {v0}, La3/a;->unsubscribe()V

    return-void
.end method
