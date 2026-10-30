.class public final synthetic Lt1/i;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lt1/j;


# direct methods
.method public synthetic constructor <init>(Lt1/j;I)V
    .locals 0

    .line 1
    iput p2, p0, Lt1/i;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lt1/i;->c:Lt1/j;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lt1/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lt1/i;->c:Lt1/j;

    .line 7
    .line 8
    invoke-static {v0}, Lt1/j;->a(Lt1/j;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    iget-object v0, p0, Lt1/i;->c:Lt1/j;

    .line 13
    .line 14
    iget-boolean v1, v0, Lt1/j;->f:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lt1/j;->b()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
