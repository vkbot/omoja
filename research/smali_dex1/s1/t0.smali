.class public final synthetic Ls1/t0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/u0;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ls1/u0;II)V
    .registers 4

    .line 1
    iput p3, p0, Ls1/t0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/t0;->c:Ls1/u0;

    .line 4
    .line 5
    iput p2, p0, Ls1/t0;->d:I

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
    .registers 3

    .line 1
    iget p1, p0, Ls1/t0;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_1a

    .line 4
    .line 5
    .line 6
    iget p1, p0, Ls1/t0;->d:I

    .line 7
    .line 8
    iget-object v0, p0, Ls1/t0;->c:Ls1/u0;

    .line 9
    .line 10
    iput p1, v0, Ls1/u0;->s:I

    .line 11
    .line 12
    invoke-virtual {v0}, Ls1/u0;->i()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_f
    iget p1, p0, Ls1/t0;->d:I

    .line 17
    .line 18
    iget-object v0, p0, Ls1/t0;->c:Ls1/u0;

    .line 19
    .line 20
    iput p1, v0, Ls1/u0;->r:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ls1/u0;->i()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    nop

    .line 27
    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch
.end method
