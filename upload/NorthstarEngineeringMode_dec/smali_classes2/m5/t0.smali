.class public final Lm5/t0;
.super Lm5/s0;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;
.implements Ljavax/xml/stream/Location;
.implements Ljavax/xml/namespace/NamespaceContext;


# virtual methods
.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lm5/s0;->a:Lm5/z0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lm5/s0;->b:Lm5/v0;

    invoke-virtual {v1, p1}, Lm5/v0;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lm5/s0;->a:Lm5/z0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lm5/s0;->b:Lm5/v0;

    invoke-virtual {v1, p1}, Lm5/v0;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lm5/s0;->a:Lm5/z0;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->l()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lm5/s0;->b:Lm5/v0;

    invoke-virtual {v1, p1}, Lm5/v0;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object p0, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lm5/s0;->a:Lm5/z0;

    invoke-virtual {p0}, Lm5/z0;->m()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
