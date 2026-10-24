.class public final La4/b$h;
.super La4/b$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La4/b<",
        "TK;TV;>.i<TV;>;"
    }
.end annotation


# instance fields
.field public final synthetic x:La4/b;


# direct methods
.method public constructor <init>(La4/b;I)V
    .locals 0

    iput-object p1, p0, La4/b$h;->x:La4/b;

    invoke-direct {p0, p1, p2}, La4/b$i;-><init>(La4/b;I)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, La4/b;->a(Ljava/lang/Object;I)V

    iget-object p0, p0, La4/b$h;->x:La4/b;

    invoke-virtual {p0, p1, v0}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, La4/b$e;

    iget-object v1, p0, La4/b$h;->x:La4/b;

    iget p0, p0, La4/b$i;->c:I

    invoke-direct {v0, v1, p0}, La4/b$j;-><init>(La4/b;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, La4/b$h;->x:La4/b;

    invoke-virtual {p0, p1}, La4/b;->h(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
