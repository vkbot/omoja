.class public final Lg0/e;
.super Landroid/widget/LinearLayout;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/Button;

.field public f:Landroid/widget/LinearLayout;

.field public g:Lru/transfer/MessageData;

.field public h:Landroid/view/ViewPropertyAnimator;

.field public i:Lg0/d;


# virtual methods
.method public getMsg()Lru/transfer/MessageData;
    .registers 2

    .line 1
    iget-object v0, p0, Lg0/e;->g:Lru/transfer/MessageData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg0/e;->h:Landroid/view/ViewPropertyAnimator;

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lg0/e;->h:Landroid/view/ViewPropertyAnimator;

    .line 13
    .line 14
    :cond_d
    return-void
.end method

.method public setMessageBubbleViewListener(Lg0/d;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lg0/e;->i:Lg0/d;

    .line 2
    .line 3
    return-void
.end method
