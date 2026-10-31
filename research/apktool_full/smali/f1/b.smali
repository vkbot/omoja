.class public final synthetic Lf1/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lf1/e;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lf1/e;II)V
    .locals 0

    .line 1
    iput p3, p0, Lf1/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lf1/b;->c:Lf1/e;

    .line 4
    .line 5
    iput p2, p0, Lf1/b;->d:I

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
    .locals 3

    .line 1
    iget v0, p0, Lf1/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lf1/e;->E()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, Lf1/b;->c:Lf1/e;

    .line 18
    .line 19
    iget v2, p0, Lf1/b;->d:I

    .line 20
    .line 21
    invoke-virtual {v1, v2, v0}, Lf1/e;->x(IF)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    invoke-static {}, Lf1/e;->E()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    const/high16 v0, -0x40800000    # -1.0f

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/high16 v0, -0x41000000    # -0.5f

    .line 35
    .line 36
    :goto_1
    iget-object v1, p0, Lf1/b;->c:Lf1/e;

    .line 37
    .line 38
    iget v2, p0, Lf1/b;->d:I

    .line 39
    .line 40
    invoke-virtual {v1, v2, v0}, Lf1/e;->x(IF)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
