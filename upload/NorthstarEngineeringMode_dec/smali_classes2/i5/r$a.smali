.class public abstract Li5/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li5/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public volatile a:Li5/r;

.field public b:Li5/f0;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Li5/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/r$a;->a:Li5/r;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/schema/z;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li5/r$a;->b:Li5/f0;

    iput-object p2, p0, Li5/r$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Li5/r;
    .locals 2

    iget-object v0, p0, Li5/r$a;->a:Li5/r;

    if-nez v0, :cond_1

    iget-object v0, p0, Li5/r$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Li5/r$a;->a:Li5/r;

    if-nez v0, :cond_0

    iget-object v0, p0, Li5/r$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Li5/r$a;->b:Li5/f0;

    invoke-interface {v1, v0}, Li5/f0;->resolveHandle(Ljava/lang/String;)Li5/r;

    move-result-object v0

    iput-object v0, p0, Li5/r$a;->a:Li5/r;

    const/4 v0, 0x0

    iput-object v0, p0, Li5/r$a;->b:Li5/f0;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p0, p0, Li5/r$a;->a:Li5/r;

    return-object p0
.end method
