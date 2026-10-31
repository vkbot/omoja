.class public final Lf5/j0;
.super Ljava/lang/Object;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"

# interfaces
.implements Le5/b;
.implements Lf2/b;


# instance fields
.field public final synthetic b:I

.field public final c:Lt8/a;

.field public final d:Lt8/a;


# direct methods
.method public synthetic constructor <init>(Lt8/a;Lt8/a;I)V
    .locals 0

    .line 1
    iput p3, p0, Lf5/j0;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lf5/j0;->c:Lt8/a;

    .line 4
    .line 5
    iput-object p2, p0, Lf5/j0;->d:Lt8/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    .line 1
    iget v0, p0, Lf5/j0;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v2, Lc5/e;

    .line 7
    .line 8
    const/16 v0, 0xf

    .line 9
    .line 10
    invoke-direct {v2, v0}, Lc5/e;-><init>(I)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Lz3/f;

    .line 14
    .line 15
    const/16 v0, 0xe

    .line 16
    .line 17
    invoke-direct {v3, v0}, Lz3/f;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lf5/j0;->c:Lt8/a;

    .line 21
    .line 22
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v1, Lk2/h;

    .line 27
    .line 28
    move-object v5, v0

    .line 29
    check-cast v5, Lk2/j;

    .line 30
    .line 31
    sget-object v4, Lk2/a;->f:Lk2/a;

    .line 32
    .line 33
    iget-object v6, p0, Lf5/j0;->d:Lt8/a;

    .line 34
    .line 35
    invoke-direct/range {v1 .. v6}, Lk2/h;-><init>(Lm2/a;Lm2/a;Lk2/a;Lk2/j;Lt8/a;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :pswitch_0
    iget-object v0, p0, Lf5/j0;->c:Lt8/a;

    .line 40
    .line 41
    invoke-interface {v0}, Lt8/a;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lf5/y;

    .line 46
    .line 47
    iget-object v1, p0, Lf5/j0;->d:Lt8/a;

    .line 48
    .line 49
    invoke-interface {v1}, Lt8/a;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Li5/a;

    .line 54
    .line 55
    new-instance v2, Lf5/i0;

    .line 56
    .line 57
    invoke-direct {v2, v0, v1}, Lf5/i0;-><init>(Lf5/y;Li5/a;)V

    .line 58
    .line 59
    .line 60
    return-object v2

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
