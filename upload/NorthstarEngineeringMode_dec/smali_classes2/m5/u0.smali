.class public final Lm5/u0;
.super Lm5/s0;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;
.implements Ljavax/xml/stream/Location;
.implements Ljavax/xml/namespace/NamespaceContext;


# virtual methods
.method public final getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm5/s0;->a:Lm5/z0;

    :try_start_0
    invoke-virtual {v0}, Lm5/z0;->l()V

    iget-object p0, p0, Lm5/s0;->b:Lm5/v0;

    invoke-virtual {p0, p1}, Lm5/v0;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lm5/z0;->m()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm5/z0;->m()V

    throw p0
.end method

.method public final getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lm5/s0;->a:Lm5/z0;

    :try_start_0
    invoke-virtual {v0}, Lm5/z0;->l()V

    iget-object p0, p0, Lm5/s0;->b:Lm5/v0;

    invoke-virtual {p0, p1}, Lm5/v0;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lm5/z0;->m()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm5/z0;->m()V

    throw p0
.end method

.method public final getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
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

    :try_start_0
    invoke-virtual {v0}, Lm5/z0;->l()V

    iget-object p0, p0, Lm5/s0;->b:Lm5/v0;

    invoke-virtual {p0, p1}, Lm5/v0;->getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lm5/z0;->m()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lm5/z0;->m()V

    throw p0
.end method
