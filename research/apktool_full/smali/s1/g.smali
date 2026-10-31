.class public final synthetic Ls1/g;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/k;

.field public final synthetic d:Lj0/e;


# direct methods
.method public synthetic constructor <init>(Ls1/k;Lj0/e;I)V
    .locals 0

    .line 1
    iput p3, p0, Ls1/g;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/g;->c:Ls1/k;

    .line 4
    .line 5
    iput-object p2, p0, Ls1/g;->d:Lj0/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, Ls1/g;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Ls1/g;->c:Ls1/k;

    .line 7
    .line 8
    iget-object v0, p0, Ls1/g;->d:Lj0/e;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Ls1/k;->p(Lj0/e;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object p1, p0, Ls1/g;->c:Ls1/k;

    .line 15
    .line 16
    iget-object v0, p0, Ls1/g;->d:Lj0/e;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ls1/k;->p(Lj0/e;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object p1, p0, Ls1/g;->c:Ls1/k;

    .line 23
    .line 24
    iget-object v0, p0, Ls1/g;->d:Lj0/e;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ls1/k;->p(Lj0/e;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
