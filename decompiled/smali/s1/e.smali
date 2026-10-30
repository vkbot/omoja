.class public final synthetic Ls1/e;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls1/k;


# direct methods
.method public synthetic constructor <init>(Ls1/k;I)V
    .locals 0

    .line 1
    iput p2, p0, Ls1/e;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/e;->b:Ls1/k;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget p1, p0, Ls1/e;->a:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    sub-int/2addr p4, p2

    .line 7
    sub-int/2addr p8, p6

    .line 8
    if-ne p4, p8, :cond_0

    .line 9
    .line 10
    sub-int/2addr p5, p3

    .line 11
    sub-int/2addr p9, p7

    .line 12
    if-eq p5, p9, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object p1, p0, Ls1/e;->b:Ls1/k;

    .line 15
    .line 16
    iget-object p2, p1, Ls1/k;->p:Ls1/v0;

    .line 17
    .line 18
    if-eqz p2, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void

    .line 27
    :pswitch_0
    sub-int/2addr p4, p2

    .line 28
    sub-int/2addr p8, p6

    .line 29
    if-ne p4, p8, :cond_2

    .line 30
    .line 31
    sub-int/2addr p5, p3

    .line 32
    sub-int/2addr p9, p7

    .line 33
    if-eq p5, p9, :cond_3

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Ls1/e;->b:Ls1/k;

    .line 36
    .line 37
    iget-object p2, p1, Ls1/k;->p:Ls1/v0;

    .line 38
    .line 39
    if-eqz p2, :cond_3

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    :cond_3
    return-void

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
