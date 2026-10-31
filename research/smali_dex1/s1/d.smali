.class public final synthetic Ls1/d;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/k;


# direct methods
.method public synthetic constructor <init>(Ls1/k;I)V
    .registers 3

    .line 1
    iput p2, p0, Ls1/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/d;->c:Ls1/k;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .line 1
    iget p1, p0, Ls1/d;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_44

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ls1/d;->c:Ls1/k;

    .line 7
    .line 8
    iget-object v0, p1, Ls1/k;->f:Landroid/widget/Button;

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    if-nez v1, :cond_11

    .line 16
    .line 17
    goto :goto_36

    .line 18
    :cond_11
    const/4 v3, 0x2

    .line 19
    if-ne v1, v3, :cond_18

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ls1/k;->A(Landroid/view/MotionEvent;)V

    .line 22
    .line 23
    .line 24
    goto :goto_36

    .line 25
    :cond_18
    const/4 v3, 0x0

    .line 26
    if-ne v1, v2, :cond_28

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ls1/k;->A(Landroid/view/MotionEvent;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ls1/k;->d()V

    .line 38
    .line 39
    .line 40
    goto :goto_36

    .line 41
    :cond_28
    const/4 p2, 0x3

    .line 42
    if-ne v1, p2, :cond_35

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ls1/k;->d()V

    .line 51
    .line 52
    .line 53
    goto :goto_36

    .line 54
    :cond_35
    const/4 v2, 0x0

    .line 55
    :goto_36
    return v2

    .line 56
    :pswitch_37
    iget-object p1, p0, Ls1/d;->c:Ls1/k;

    .line 57
    .line 58
    invoke-virtual {p1}, Ls1/k;->r()V

    .line 59
    .line 60
    .line 61
    :goto_3c
    const/4 p1, 0x0

    .line 62
    return p1

    .line 63
    :pswitch_3e
    iget-object p1, p0, Ls1/d;->c:Ls1/k;

    .line 64
    .line 65
    invoke-virtual {p1}, Ls1/k;->r()V

    .line 66
    .line 67
    .line 68
    goto :goto_3c

    .line 69
    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_3e
        :pswitch_37
    .end packed-switch
.end method
