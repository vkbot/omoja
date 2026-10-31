.class public final synthetic Ls1/z;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ls1/q0;

.field public final synthetic d:Ls1/m0;


# direct methods
.method public synthetic constructor <init>(Ls1/q0;Ls1/m0;I)V
    .locals 0

    .line 1
    iput p3, p0, Ls1/z;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Ls1/z;->c:Ls1/q0;

    .line 4
    .line 5
    iput-object p2, p0, Ls1/z;->d:Ls1/m0;

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
    .locals 4

    .line 1
    iget v0, p0, Ls1/z;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls1/z;->c:Ls1/q0;

    .line 7
    .line 8
    iget-object v1, p0, Ls1/z;->d:Ls1/m0;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ls1/q0;->B(Ls1/m0;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    sget-object v0, Ls1/m0;->c:Ls1/m0;

    .line 15
    .line 16
    iget-object v1, p0, Ls1/z;->c:Ls1/q0;

    .line 17
    .line 18
    iget-object v2, p0, Ls1/z;->d:Ls1/m0;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-ne v2, v0, :cond_0

    .line 22
    .line 23
    iput-boolean v3, v1, Ls1/q0;->z:Z

    .line 24
    .line 25
    :cond_0
    sget-object v0, Ls1/m0;->d:Ls1/m0;

    .line 26
    .line 27
    if-ne v2, v0, :cond_1

    .line 28
    .line 29
    iput-boolean v3, v1, Ls1/q0;->A:Z

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ls1/q0;->B(Ls1/m0;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
