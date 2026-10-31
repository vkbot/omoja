.class public final Lw3/a;
.super Lw3/g;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final a:Landroid/graphics/Typeface;

.field public final b:Ln/p;

.field public c:Z


# direct methods
.method public constructor <init>(Ln/p;Landroid/graphics/Typeface;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lw3/a;->a:Landroid/graphics/Typeface;

    .line 5
    .line 6
    iput-object p1, p0, Lw3/a;->b:Ln/p;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    .line 1
    iget-boolean p1, p0, Lw3/a;->c:Z

    .line 2
    .line 3
    if-nez p1, :cond_16

    .line 4
    .line 5
    iget-object p1, p0, Lw3/a;->b:Ln/p;

    .line 6
    .line 7
    iget-object p1, p1, Ln/p;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p1, Ls3/c;

    .line 10
    .line 11
    iget-object v0, p0, Lw3/a;->a:Landroid/graphics/Typeface;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ls3/c;->l(Landroid/graphics/Typeface;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_16

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Ls3/c;->j(Z)V

    .line 21
    .line 22
    .line 23
    :cond_16
    return-void
.end method

.method public final b(Landroid/graphics/Typeface;Z)V
    .registers 3

    .line 1
    iget-boolean p2, p0, Lw3/a;->c:Z

    .line 2
    .line 3
    if-nez p2, :cond_14

    .line 4
    .line 5
    iget-object p2, p0, Lw3/a;->b:Ln/p;

    .line 6
    .line 7
    iget-object p2, p2, Ln/p;->c:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p2, Ls3/c;

    .line 10
    .line 11
    invoke-virtual {p2, p1}, Ls3/c;->l(Landroid/graphics/Typeface;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_14

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    invoke-virtual {p2, p1}, Ls3/c;->j(Z)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void
.end method
