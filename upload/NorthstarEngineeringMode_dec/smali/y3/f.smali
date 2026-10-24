.class public Ly3/f;
.super Lv3/s0;
.source "SourceFile"


# instance fields
.field public final x:Ly3/a;


# direct methods
.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Lv3/s0;-><init>()V

    new-instance v6, Ly3/a;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Ly3/a;-><init>(IIJLjava/lang/String;)V

    iput-object v6, p0, Ly3/f;->x:Ly3/a;

    return-void
.end method


# virtual methods
.method public final l(Lh3/f;Ljava/lang/Runnable;)V
    .locals 1

    iget-object p0, p0, Ly3/f;->x:Ly3/a;

    sget-object p1, Ly3/a;->d1:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    sget-object p1, Ly3/k;->g:Ly3/i;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Ly3/a;->b(Ljava/lang/Runnable;Ly3/h;Z)V

    return-void
.end method
