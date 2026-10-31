.class public final synthetic Lm0/j0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lm0/n0;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lm0/n0;IZLjava/lang/String;Z)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm0/j0;->b:Lm0/n0;

    .line 5
    .line 6
    iput p2, p0, Lm0/j0;->c:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lm0/j0;->d:Z

    .line 9
    .line 10
    iput-object p4, p0, Lm0/j0;->e:Ljava/lang/String;

    .line 11
    .line 12
    iput-boolean p5, p0, Lm0/j0;->f:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    sget-object v0, Lm0/n0;->k:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lm0/j0;->b:Lm0/n0;

    .line 4
    .line 5
    iget v1, p0, Lm0/j0;->c:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lm0/n0;->t(I)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_d

    .line 12
    .line 13
    return-void

    .line 14
    :cond_d
    iget-boolean v2, p0, Lm0/j0;->d:Z

    .line 15
    .line 16
    if-nez v2, :cond_15

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lm0/n0;->u(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_15
    iget-object v1, p0, Lm0/j0;->e:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v1, v0, Lm0/n0;->e:Ljava/lang/String;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lm0/n0;->d:Z

    .line 28
    .line 29
    iget-object v2, v0, Lm0/n0;->h:Landroid/view/View;

    .line 30
    .line 31
    const/16 v3, 0x8

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    iget-object v2, v0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 37
    .line 38
    iget-boolean v4, p0, Lm0/j0;->f:Z

    .line 39
    .line 40
    if-eqz v4, :cond_2a

    .line 41
    .line 42
    move v1, v3

    .line 43
    :cond_2a
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lm0/n0;->g:Landroid/widget/TextView;

    .line 47
    .line 48
    const v2, 0x7f130188

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lm0/n0;->j:Lm0/m0;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
