.class public final synthetic Lg0/c;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lg0/e;

.field public final synthetic d:Lg0/b;


# direct methods
.method public synthetic constructor <init>(Lg0/e;Lg0/b;I)V
    .registers 4

    .line 1
    iput p3, p0, Lg0/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lg0/c;->c:Lg0/e;

    .line 4
    .line 5
    iput-object p2, p0, Lg0/c;->d:Lg0/b;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 1
    iget v0, p0, Lg0/c;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_3e

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    iget-object v1, p0, Lg0/c;->c:Lg0/e;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lg0/c;->d:Lg0/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lg0/b;->run()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_12
    iget-object v0, p0, Lg0/c;->c:Lg0/e;

    .line 20
    .line 21
    iget-object v1, v0, Lg0/e;->h:Landroid/view/ViewPropertyAnimator;

    .line 22
    .line 23
    if-eqz v1, :cond_3d

    .line 24
    .line 25
    const v2, 0x3f4ccccd    # 0.8f

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-wide/16 v2, 0x12c

    .line 42
    .line 43
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lg0/c;

    .line 48
    .line 49
    const/4 v3, 0x1

    .line 50
    iget-object v4, p0, Lg0/c;->d:Lg0/b;

    .line 51
    .line 52
    invoke-direct {v2, v0, v4, v3}, Lg0/c;-><init>(Lg0/e;Lg0/b;I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 60
    .line 61
    .line 62
    :cond_3d
    return-void

    .line 63
    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_12
    .end packed-switch
.end method
