.class public final Lv7/f;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Ln7/i0;


# instance fields
.field public final synthetic a:I

.field public final b:Ln7/i0;

.field public final synthetic c:Lv7/b;


# direct methods
.method public synthetic constructor <init>(Lv7/b;Ln7/i0;I)V
    .registers 4

    .line 1
    iput p3, p0, Lv7/f;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lv7/f;->c:Lv7/b;

    .line 4
    .line 5
    iput-object p2, p0, Lv7/f;->b:Ln7/i0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Ln7/k;)V
    .registers 3

    .line 1
    iget v0, p0, Lv7/f;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_24

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv7/f;->c:Lv7/b;

    .line 7
    .line 8
    check-cast v0, Lv7/s;

    .line 9
    .line 10
    iput-object p1, v0, Lv7/s;->g:Ln7/k;

    .line 11
    .line 12
    iget-boolean v0, v0, Lv7/s;->f:Z

    .line 13
    .line 14
    if-nez v0, :cond_14

    .line 15
    .line 16
    iget-object v0, p0, Lv7/f;->b:Ln7/i0;

    .line 17
    .line 18
    invoke-interface {v0, p1}, Ln7/i0;->a(Ln7/k;)V

    .line 19
    .line 20
    .line 21
    :cond_14
    return-void

    .line 22
    :pswitch_15
    iget-object v0, p0, Lv7/f;->b:Ln7/i0;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Ln7/i0;->a(Ln7/k;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lv7/f;->c:Lv7/b;

    .line 28
    .line 29
    check-cast v0, Lv7/g;

    .line 30
    .line 31
    iget-object v0, v0, Lv7/g;->e:Ln7/i0;

    .line 32
    .line 33
    invoke-interface {v0, p1}, Ln7/i0;->a(Ln7/k;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method
