.class public final Lv8/e1;
.super Lv8/d1;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final f:Lv8/h1;

.field public final g:Lv8/f1;

.field public final h:Lv8/i;

.field public final i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lv8/h1;Lv8/f1;Lv8/i;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, La9/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv8/e1;->f:Lv8/h1;

    .line 5
    .line 6
    iput-object p2, p0, Lv8/e1;->g:Lv8/f1;

    .line 7
    .line 8
    iput-object p3, p0, Lv8/e1;->h:Lv8/i;

    .line 9
    .line 10
    iput-object p4, p0, Lv8/e1;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lv8/e1;->j(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public final j(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lv8/e1;->h:Lv8/i;

    .line 2
    .line 3
    invoke-static {p1}, Lv8/h1;->C(La9/m;)Lv8/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lv8/e1;->f:Lv8/h1;

    .line 8
    .line 9
    iget-object v1, p0, Lv8/e1;->g:Lv8/f1;

    .line 10
    .line 11
    iget-object v2, p0, Lv8/e1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :cond_0
    iget-object v3, p1, Lv8/i;->f:Lv8/h1;

    .line 16
    .line 17
    new-instance v4, Lv8/e1;

    .line 18
    .line 19
    invoke-direct {v4, v0, v1, p1, v2}, Lv8/e1;-><init>(Lv8/h1;Lv8/f1;Lv8/i;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    invoke-static {v3, v4, v5}, Lv8/x0;->a(Lv8/z0;Lv8/d1;I)Lv8/i0;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Lv8/k1;->b:Lv8/k1;

    .line 28
    .line 29
    if-eq v3, v4, :cond_1

    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    invoke-static {p1}, Lv8/h1;->C(La9/m;)Lv8/i;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-nez p1, :cond_0

    .line 37
    .line 38
    :cond_2
    invoke-virtual {v0, v1, v2}, Lv8/h1;->r(Lv8/f1;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lv8/h1;->i(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
