.class public final Lu5/b;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:Lu5/d;

.field public c:Lu5/d;

.field public d:I

.field public final synthetic e:Lu5/e;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lu5/e;I)V
    .registers 3

    .line 1
    iput p2, p0, Lu5/b;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lu5/b;->e:Lu5/e;

    .line 7
    .line 8
    iget-object p2, p1, Lu5/e;->f:Lu5/d;

    .line 9
    .line 10
    iget-object p2, p2, Lu5/d;->e:Lu5/d;

    .line 11
    .line 12
    iput-object p2, p0, Lu5/b;->b:Lu5/d;

    .line 13
    .line 14
    const/4 p2, 0x0

    .line 15
    iput-object p2, p0, Lu5/b;->c:Lu5/d;

    .line 16
    .line 17
    iget p1, p1, Lu5/e;->e:I

    .line 18
    .line 19
    iput p1, p0, Lu5/b;->d:I

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .line 1
    invoke-virtual {p0}, Lu5/b;->b()Lu5/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b()Lu5/d;
    .registers 4

    .line 1
    iget-object v0, p0, Lu5/b;->b:Lu5/d;

    .line 2
    .line 3
    iget-object v1, p0, Lu5/b;->e:Lu5/e;

    .line 4
    .line 5
    iget-object v2, v1, Lu5/e;->f:Lu5/d;

    .line 6
    .line 7
    if-eq v0, v2, :cond_1a

    .line 8
    .line 9
    iget v1, v1, Lu5/e;->e:I

    .line 10
    .line 11
    iget v2, p0, Lu5/b;->d:I

    .line 12
    .line 13
    if-ne v1, v2, :cond_15

    .line 14
    .line 15
    iget-object v1, v0, Lu5/d;->e:Lu5/d;

    .line 16
    .line 17
    iput-object v1, p0, Lu5/b;->b:Lu5/d;

    .line 18
    .line 19
    iput-object v0, p0, Lu5/b;->c:Lu5/d;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_15
    invoke-static {}, Lai/onnxruntime/b;->a()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return-object v0

    .line 27
    :cond_1a
    invoke-static {}, Ln0/b;->x()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    .line 1
    iget-object v0, p0, Lu5/b;->b:Lu5/d;

    .line 2
    .line 3
    iget-object v1, p0, Lu5/b;->e:Lu5/e;

    .line 4
    .line 5
    iget-object v1, v1, Lu5/e;->f:Lu5/d;

    .line 6
    .line 7
    if-eq v0, v1, :cond_a

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_a
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 2

    .line 1
    iget v0, p0, Lu5/b;->f:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_12

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lu5/b;->a()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_a
    invoke-virtual {p0}, Lu5/b;->b()Lu5/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lu5/d;->g:Ljava/lang/Object;

    .line 16
    .line 17
    return-object v0

    .line 18
    nop

    .line 19
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public final remove()V
    .registers 4

    .line 1
    iget-object v0, p0, Lu5/b;->c:Lu5/d;

    .line 2
    .line 3
    if-eqz v0, :cond_12

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lu5/b;->e:Lu5/e;

    .line 7
    .line 8
    invoke-virtual {v2, v0, v1}, Lu5/e;->c(Lu5/d;Z)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lu5/b;->c:Lu5/d;

    .line 13
    .line 14
    iget v0, v2, Lu5/e;->e:I

    .line 15
    .line 16
    iput v0, p0, Lu5/b;->d:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 22
    .line 23
    .line 24
    throw v0
.end method
