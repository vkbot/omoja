.class public abstract Ls3/r;
.super Landroid/widget/ImageButton;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:I


# virtual methods
.method public final a(IZ)V
    .registers 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_7

    .line 5
    .line 6
    iput p1, p0, Ls3/r;->b:I

    .line 7
    .line 8
    :cond_7
    return-void
.end method

.method public final getUserSetVisibility()I
    .registers 2

    .line 1
    iget v0, p0, Ls3/r;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public setVisibility(I)V
    .registers 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Ls3/r;->a(IZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
