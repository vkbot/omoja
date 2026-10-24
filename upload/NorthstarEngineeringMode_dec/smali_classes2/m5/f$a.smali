.class public final Lm5/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:[C


# virtual methods
.method public final a(Ljava/lang/Object;III)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lm5/f$a;->h:Ljava/lang/String;

    iput-object v0, p0, Lm5/f$a;->i:[C

    iput-object p1, p0, Lm5/f$a;->a:Ljava/lang/Object;

    iput p2, p0, Lm5/f$a;->b:I

    iput p3, p0, Lm5/f$a;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lm5/f$a;->f:I

    iput p1, p0, Lm5/f$a;->e:I

    invoke-virtual {p0, p4}, Lm5/f$a;->b(I)V

    return-void
.end method

.method public final b(I)V
    .locals 5

    iget v0, p0, Lm5/f$a;->e:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lm5/f$a;->f:I

    if-le p1, v0, :cond_5

    :cond_0
    iget-object v0, p0, Lm5/f$a;->a:Ljava/lang/Object;

    iget v1, p0, Lm5/f$a;->b:I

    add-int v2, v1, p1

    iget v3, p0, Lm5/f$a;->c:I

    iput v1, p0, Lm5/f$a;->g:I

    :goto_0
    instance-of v1, v0, Lm5/f$b;

    if-eqz v1, :cond_2

    check-cast v0, Lm5/f$b;

    iget v1, v0, Lm5/f$b;->c:I

    if-ge v2, v1, :cond_1

    iget v3, v0, Lm5/f$b;->b:I

    iput v3, p0, Lm5/f$a;->g:I

    add-int/2addr v2, v3

    iget-object v0, v0, Lm5/f$b;->a:Ljava/lang/Object;

    move v3, v1

    goto :goto_0

    :cond_1
    iget v4, v0, Lm5/f$b;->e:I

    iput v4, p0, Lm5/f$a;->g:I

    sub-int v4, v1, v4

    sub-int/2addr v2, v4

    sub-int/2addr v3, v1

    iget-object v0, v0, Lm5/f$b;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget v1, p0, Lm5/f$a;->g:I

    sub-int/2addr v2, v1

    sub-int v1, p1, v2

    iput v1, p0, Lm5/f$a;->e:I

    add-int/2addr v1, v3

    iput v1, p0, Lm5/f$a;->f:I

    iget v2, p0, Lm5/f$a;->c:I

    if-ge p1, v2, :cond_3

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lm5/f$a;->f:I

    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lm5/f$a;->i:[C

    iput-object v1, p0, Lm5/f$a;->h:Ljava/lang/String;

    instance-of v1, v0, [C

    if-eqz v1, :cond_4

    check-cast v0, [C

    iput-object v0, p0, Lm5/f$a;->i:[C

    goto :goto_1

    :cond_4
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lm5/f$a;->h:Ljava/lang/String;

    :cond_5
    :goto_1
    iput p1, p0, Lm5/f$a;->d:I

    return-void
.end method
