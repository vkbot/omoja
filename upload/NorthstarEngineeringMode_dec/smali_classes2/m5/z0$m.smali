.class public final Lm5/z0$m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "m"
.end annotation


# instance fields
.field public a:J

.field public b:Lm5/o0$a;

.field public c:Lm5/o0$a;

.field public d:I

.field public e:I

.field public final synthetic f:Lm5/z0;


# direct methods
.method public constructor <init>(Lm5/z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/z0$m;->f:Lm5/z0;

    return-void
.end method


# virtual methods
.method public final a(ILm5/o0$a;)I
    .locals 4

    iget-wide v0, p0, Lm5/z0$m;->a:J

    iget-object v2, p0, Lm5/z0$m;->f:Lm5/z0;

    iget-wide v2, v2, Lm5/z0;->k:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const p0, 0x7ffffffe

    return p0

    :cond_0
    iget-object v0, p0, Lm5/z0$m;->b:Lm5/o0$a;

    if-eq p2, v0, :cond_1

    const p0, 0x7fffffff

    return p0

    :cond_1
    iget p0, p0, Lm5/z0$m;->d:I

    if-le p1, p0, :cond_2

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_2
    sub-int p1, p0, p1

    :goto_0
    return p1
.end method

.method public final b(ILm5/o0$a;)Lm5/o0$a;
    .locals 4

    iget-wide v0, p0, Lm5/z0$m;->a:J

    iget-object v2, p0, Lm5/z0$m;->f:Lm5/z0;

    iget-wide v2, v2, Lm5/z0;->k:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lm5/z0$m;->b:Lm5/o0$a;

    if-eq v0, p2, :cond_0

    goto :goto_2

    :cond_0
    iget p2, p0, Lm5/z0$m;->d:I

    if-gez p2, :cond_1

    return-object v1

    :cond_1
    if-le p1, p2, :cond_3

    :goto_0
    iget p2, p0, Lm5/z0$m;->d:I

    if-le p1, p2, :cond_5

    iget-object p2, p0, Lm5/z0$m;->c:Lm5/o0$a;

    invoke-static {p2}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lm5/o0$a;

    if-nez p2, :cond_2

    return-object v1

    :cond_2
    iput-object p2, p0, Lm5/z0$m;->c:Lm5/o0$a;

    iget p2, p0, Lm5/z0$m;->d:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lm5/z0$m;->d:I

    goto :goto_0

    :cond_3
    if-ge p1, p2, :cond_5

    :goto_1
    iget p2, p0, Lm5/z0$m;->d:I

    if-ge p1, p2, :cond_5

    iget-object p2, p0, Lm5/z0$m;->c:Lm5/o0$a;

    invoke-static {p2}, Lm5/o0;->P(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lm5/o0$a;

    if-nez p2, :cond_4

    return-object v1

    :cond_4
    iput-object p2, p0, Lm5/z0$m;->c:Lm5/o0$a;

    iget p2, p0, Lm5/z0$m;->d:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lm5/z0$m;->d:I

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lm5/z0$m;->c:Lm5/o0$a;

    return-object p0

    :cond_6
    :goto_2
    iput-object p2, p0, Lm5/z0$m;->b:Lm5/o0$a;

    iput-wide v2, p0, Lm5/z0$m;->a:J

    iput-object v1, p0, Lm5/z0$m;->c:Lm5/o0$a;

    const/4 v0, -0x1

    iput v0, p0, Lm5/z0$m;->d:I

    iput v0, p0, Lm5/z0$m;->e:I

    invoke-static {p2}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p2

    :goto_3
    check-cast p2, Lm5/o0$a;

    if-eqz p2, :cond_8

    iget v0, p0, Lm5/z0$m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm5/z0$m;->d:I

    iget-object v1, p0, Lm5/z0$m;->c:Lm5/o0$a;

    if-nez v1, :cond_7

    if-ne p1, v0, :cond_7

    iput-object p2, p0, Lm5/z0$m;->c:Lm5/o0$a;

    goto :goto_4

    :cond_7
    invoke-static {p2}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p2

    goto :goto_3

    :cond_8
    :goto_4
    iget-object p0, p0, Lm5/z0$m;->c:Lm5/o0$a;

    return-object p0
.end method

.method public final c(Lm5/o0$a;)I
    .locals 4

    iget-wide v0, p0, Lm5/z0$m;->a:J

    iget-object v2, p0, Lm5/z0$m;->f:Lm5/z0;

    iget-wide v2, v2, Lm5/z0;->k:J

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lm5/z0$m;->b:Lm5/o0$a;

    if-eq v0, p1, :cond_1

    :cond_0
    iput-object p1, p0, Lm5/z0$m;->b:Lm5/o0$a;

    iput-wide v2, p0, Lm5/z0$m;->a:J

    const/4 p1, 0x0

    iput-object p1, p0, Lm5/z0$m;->c:Lm5/o0$a;

    iput v1, p0, Lm5/z0$m;->d:I

    iput v1, p0, Lm5/z0$m;->e:I

    :cond_1
    iget p1, p0, Lm5/z0$m;->e:I

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lm5/z0$m;->c:Lm5/o0$a;

    if-eqz p1, :cond_2

    iget v0, p0, Lm5/z0$m;->d:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lm5/z0$m;->e:I

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lm5/z0$m;->b:Lm5/o0$a;

    invoke-static {p1}, Lm5/o0;->K(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lm5/o0$a;

    const/4 v0, 0x0

    iput v0, p0, Lm5/z0$m;->e:I

    iput-object p1, p0, Lm5/z0$m;->c:Lm5/o0$a;

    iput v0, p0, Lm5/z0$m;->d:I

    :goto_0
    if-eqz p1, :cond_3

    iget v0, p0, Lm5/z0$m;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lm5/z0$m;->e:I

    invoke-static {p1}, Lm5/o0;->L(Lm5/o0$a;)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lm5/o0$a;

    goto :goto_0

    :cond_3
    iget p0, p0, Lm5/z0$m;->e:I

    return p0
.end method
