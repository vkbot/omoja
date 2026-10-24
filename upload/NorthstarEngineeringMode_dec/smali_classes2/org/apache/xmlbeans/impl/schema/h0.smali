.class public final Lorg/apache/xmlbeans/impl/schema/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Li5/i0;

.field public final b:Li5/c0$a;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Li5/c0$a;Ljava/io/Serializable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/h0;->b:Li5/c0$a;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/h0;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Li5/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/h0;->a:Li5/i0;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Li5/i0;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/h0;->a:Li5/i0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/h0;->b:Li5/c0$a;

    invoke-virtual {v0}, Li5/r$a;->a()Li5/r;

    move-result-object v0

    check-cast v0, Li5/c0;

    invoke-interface {v0}, Li5/c0;->B0()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/schema/h0;->c:Ljava/lang/Object;

    invoke-interface {v0, v1}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/h0;->a:Li5/i0;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/schema/h0;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xmlbeans/impl/schema/h0;

    invoke-virtual {v3}, Lorg/apache/xmlbeans/impl/schema/h0;->a()Li5/i0;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0, v1}, Li5/c0;->U(Ljava/lang/Object;)Li5/i0;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/h0;->a:Li5/i0;

    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/schema/h0;->a:Li5/i0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method
