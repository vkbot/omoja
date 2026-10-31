.class public final Lo7/n0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .registers 4

    .line 1
    iput p3, p0, Lo7/n0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lo7/n0;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo7/n0;->c:I

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
    .registers 3

    .line 1
    iget v0, p0, Lo7/n0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_2a

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lo7/n0;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/material/datepicker/n;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/google/android/material/datepicker/n;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    iget v1, p0, Lo7/n0;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_11
    iget-object v0, p0, Lo7/n0;->d:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lo7/k0;

    .line 21
    .line 22
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 23
    .line 24
    iget v1, p0, Lo7/n0;->c:I

    .line 25
    .line 26
    invoke-interface {v0, v1}, Lo7/u;->c(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_1d
    iget-object v0, p0, Lo7/n0;->d:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lo7/k0;

    .line 33
    .line 34
    iget-object v0, v0, Lo7/k0;->d:Lo7/u;

    .line 35
    .line 36
    iget v1, p0, Lo7/n0;->c:I

    .line 37
    .line 38
    invoke-interface {v0, v1}, Lo7/u;->m(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_11
    .end packed-switch
.end method
