.class public final Lu7/d;
.super Ln7/e;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field public final b:Lu7/a;

.field public c:Ljava/lang/Object;

.field public d:Z


# direct methods
.method public constructor <init>(Lu7/a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lu7/d;->d:Z

    .line 6
    .line 7
    iput-object p1, p0, Lu7/d;->b:Lu7/a;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final o(Ln7/f1;Ln7/v0;)V
    .registers 7

    .line 1
    invoke-virtual {p1}, Ln7/f1;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    iget-object v3, p0, Lu7/d;->b:Lu7/a;

    .line 8
    .line 9
    if-eqz v0, :cond_3d

    .line 10
    .line 11
    iget-boolean p1, p0, Lu7/d;->d:Z

    .line 12
    .line 13
    if-nez p1, :cond_2b

    .line 14
    .line 15
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 16
    .line 17
    const-string v0, "No value received for unary call"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Ln7/h1;

    .line 24
    .line 25
    invoke-direct {v0, p1, p2}, Ln7/h1;-><init>(Ln7/f1;Ln7/v0;)V

    .line 26
    .line 27
    .line 28
    new-instance p1, Lm4/c;

    .line 29
    .line 30
    invoke-direct {p1, v0}, Lm4/c;-><init>(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    sget-object p2, Lm4/m;->g:Lcom/bumptech/glide/c;

    .line 34
    .line 35
    invoke-virtual {p2, v3, v1, p1}, Lcom/bumptech/glide/c;->d(Lm4/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_2b

    .line 40
    .line 41
    invoke-static {v3, v2}, Lm4/m;->c(Lm4/m;Z)V

    .line 42
    .line 43
    .line 44
    :cond_2b
    iget-object p1, p0, Lu7/d;->c:Ljava/lang/Object;

    .line 45
    .line 46
    if-nez p1, :cond_31

    .line 47
    .line 48
    sget-object p1, Lm4/m;->h:Ljava/lang/Object;

    .line 49
    .line 50
    :cond_31
    sget-object p2, Lm4/m;->g:Lcom/bumptech/glide/c;

    .line 51
    .line 52
    invoke-virtual {p2, v3, v1, p1}, Lcom/bumptech/glide/c;->d(Lm4/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_52

    .line 57
    .line 58
    invoke-static {v3, v2}, Lm4/m;->c(Lm4/m;Z)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_3d
    new-instance v0, Ln7/h1;

    .line 63
    .line 64
    invoke-direct {v0, p1, p2}, Ln7/h1;-><init>(Ln7/f1;Ln7/v0;)V

    .line 65
    .line 66
    .line 67
    new-instance p1, Lm4/c;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Lm4/c;-><init>(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    sget-object p2, Lm4/m;->g:Lcom/bumptech/glide/c;

    .line 73
    .line 74
    invoke-virtual {p2, v3, v1, p1}, Lcom/bumptech/glide/c;->d(Lm4/m;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_52

    .line 79
    .line 80
    invoke-static {v3, v2}, Lm4/m;->c(Lm4/m;Z)V

    .line 81
    .line 82
    .line 83
    :cond_52
    return-void
.end method

.method public final p(Ln7/v0;)V
    .registers 2

    .line 1
    return-void
.end method

.method public final q(Ljava/lang/Object;)V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lu7/d;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_a

    .line 4
    .line 5
    iput-object p1, p0, Lu7/d;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lu7/d;->d:Z

    .line 9
    .line 10
    return-void

    .line 11
    :cond_a
    sget-object p1, Ln7/f1;->l:Ln7/f1;

    .line 12
    .line 13
    const-string v0, "More than one value received for unary call"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ln7/f1;->h(Ljava/lang/String;)Ln7/f1;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ln7/f1;->a()Ln7/h1;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    throw p1
.end method
