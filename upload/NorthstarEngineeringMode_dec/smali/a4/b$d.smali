.class public final La4/b$d;
.super La4/b$j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La4/b<",
        "TK;TV;>.j;",
        "Ljava/util/Iterator;"
    }
.end annotation


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, La4/b$j;->a()La4/b$g;

    move-result-object p0

    new-instance v0, Lc4/c;

    iget-object v1, p0, La4/b$g;->r:Ljava/lang/Comparable;

    iget-object p0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    invoke-direct {v0, v1, p0}, Lc4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method
