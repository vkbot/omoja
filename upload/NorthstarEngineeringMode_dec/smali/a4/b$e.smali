.class public final La4/b$e;
.super La4/b$j;
.source "SourceFile"

# interfaces
.implements Lz3/c;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La4/b<",
        "TK;TV;>.j;",
        "Lz3/c;",
        "Ljava/util/Iterator;"
    }
.end annotation


# virtual methods
.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, La4/b$j;->r:La4/b$g;

    if-eqz p0, :cond_0

    iget-object p0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La4/b$j;->a()La4/b$g;

    move-result-object p0

    iget-object p0, p0, La4/b$g;->r:Ljava/lang/Comparable;

    return-object p0
.end method
