.class public abstract La4/b$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "j"
.end annotation


# instance fields
.field public final synthetic Z:La4/b;

.field public final c:I

.field public r:La4/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public x:La4/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public y:I


# direct methods
.method public constructor <init>(La4/b;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/b$j;->Z:La4/b;

    iput p2, p0, La4/b$j;->c:I

    iget v0, p1, La4/b;->x:I

    iput v0, p0, La4/b$j;->y:I

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    add-int/lit8 v1, p2, -0x1

    iget-object p1, p1, La4/b;->c:[La4/b$g;

    aget-object p1, p1, v1

    if-eqz p1, :cond_1

    :goto_0
    invoke-static {p1, p2}, La4/b$g;->a(La4/b$g;I)La4/b$g;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    iget-object p1, p1, La4/b$g;->x:[La4/b$g;

    aget-object p1, p1, v1

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    iput-object p1, p0, La4/b$j;->x:La4/b$g;

    iput-object v0, p0, La4/b$j;->r:La4/b$g;

    return-void

    :cond_2
    throw v0
.end method


# virtual methods
.method public final a()La4/b$g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, La4/b$j;->x:La4/b$g;

    if-eqz v0, :cond_1

    iget-object v1, p0, La4/b$j;->Z:La4/b;

    iget v1, v1, La4/b;->x:I

    iget v2, p0, La4/b$j;->y:I

    if-ne v1, v2, :cond_0

    iput-object v0, p0, La4/b$j;->r:La4/b$g;

    iget v1, p0, La4/b$j;->c:I

    invoke-static {v0, v1}, La4/b;->y(La4/b$g;I)La4/b$g;

    move-result-object v0

    iput-object v0, p0, La4/b$j;->x:La4/b$g;

    iget-object p0, p0, La4/b$j;->r:La4/b$g;

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, La4/b$j;->x:La4/b$g;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La4/b$j;->a()La4/b$g;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 5

    iget-object v0, p0, La4/b$j;->r:La4/b$g;

    if-eqz v0, :cond_4

    iget-object v1, p0, La4/b$j;->Z:La4/b;

    iget v2, v1, La4/b;->x:I

    iget v3, p0, La4/b$j;->y:I

    if-ne v2, v3, :cond_3

    invoke-virtual {v1, v0}, La4/b;->e(La4/b$g;)V

    iget v0, p0, La4/b$j;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La4/b$j;->y:I

    const/4 v0, 0x0

    iput-object v0, p0, La4/b$j;->r:La4/b$g;

    iget-object v0, p0, La4/b$j;->x:La4/b$g;

    iget p0, p0, La4/b$j;->c:I

    if-nez v0, :cond_0

    iget-object v0, v1, La4/b;->c:[La4/b$g;

    invoke-static {p0}, Lb0/c;->a(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0, p0}, La4/b;->r(La4/b$g;I)La4/b$g;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lb0/c;->a(I)I

    move-result v1

    iget-object v2, v0, La4/b$g;->x:[La4/b$g;

    aget-object v1, v2, v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lb0/c;->a(I)I

    move-result v0

    aget-object v0, v2, v0

    invoke-static {v0, p0}, La4/b;->r(La4/b$g;I)La4/b$g;

    goto :goto_1

    :cond_1
    iget-object v1, v0, La4/b$g;->Z:[La4/b$g;

    invoke-static {p0}, Lb0/c;->a(I)I

    move-result v2

    aget-object v1, v1, v2

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    if-eqz v0, :cond_2

    iget-object v2, v0, La4/b$g;->x:[La4/b$g;

    invoke-static {p0}, Lb0/c;->a(I)I

    move-result v3

    aget-object v2, v2, v3

    if-ne v1, v2, :cond_2

    iget-object v1, v0, La4/b$g;->Z:[La4/b$g;

    invoke-static {p0}, Lb0/c;->a(I)I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
