.class public final Li0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:I


# direct methods
.method public static b(Lk0/l;III)Lk0/c;
    .locals 7

    const-string v0, "0:n-1"

    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2710

    if-gt v2, v3, :cond_b

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ld/f;->f(ILjava/lang/String;)Lk0/c;

    move-result-object v0
    :try_end_0
    .catch Lk0/d; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_a

    new-instance v2, Lm0/a;

    invoke-direct {v2, v1}, Lm0/a;-><init>(I)V

    invoke-static {v0, v2}, Lk0/c;->c(Lk0/c;Lm0/a;)V

    iget v3, v2, Lm0/a;->a:I

    new-array v4, v3, [Ljava/lang/String;

    move v5, v1

    :goto_0
    if-ge v5, v3, :cond_0

    invoke-virtual {v2, v5}, Lm0/a;->c(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-gt v3, v2, :cond_9

    if-ne v3, v2, :cond_8

    aget-object p2, v4, v1

    int-to-double v3, p1

    if-eqz p2, :cond_7

    move p1, v1

    :goto_1
    iget p3, p0, Lk0/l;->d:I

    if-ge p1, p3, :cond_4

    iget-boolean p3, p0, Lk0/l;->a:Z

    if-eqz p3, :cond_1

    iget-object v5, p0, Lk0/l;->b:[Ljava/lang/String;

    aget-object v5, v5, p1

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    if-nez p3, :cond_3

    iget-object p3, p0, Lk0/l;->b:[Ljava/lang/String;

    aget-object p3, p3, p1

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :cond_2
    iget-object p0, p0, Lk0/l;->c:[D

    aput-wide v3, p0, p1

    goto :goto_3

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lk0/l;->b:[Ljava/lang/String;

    array-length p1, p1

    if-ne p3, p1, :cond_6

    mul-int/lit8 p3, p3, 0x2

    new-array p1, p3, [Ljava/lang/String;

    new-array p3, p3, [D

    :goto_2
    iget v5, p0, Lk0/l;->d:I

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lk0/l;->b:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, p1, v1

    iget-object v5, p0, Lk0/l;->c:[D

    aget-wide v5, v5, v1

    aput-wide v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    iput-object p1, p0, Lk0/l;->b:[Ljava/lang/String;

    iput-object p3, p0, Lk0/l;->c:[D

    :cond_6
    iget-object p1, p0, Lk0/l;->b:[Ljava/lang/String;

    iget p3, p0, Lk0/l;->d:I

    aput-object p2, p1, p3

    iget-object p1, p0, Lk0/l;->c:[D

    aput-wide v3, p1, p3

    add-int/2addr p3, v2

    iput p3, p0, Lk0/l;->d:I

    goto :goto_3

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "varName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_3
    return-object v0

    :cond_9
    new-instance p0, Li0/c;

    const-string/jumbo p1, "too many variables"

    invoke-direct {p0, p1, p2, p3}, Li0/c;-><init>(Ljava/lang/String;II)V

    throw p0

    :cond_a
    new-instance p0, Li0/c;

    const-string p1, "control substring is empty"

    invoke-direct {p0, p1, p2, p3}, Li0/c;-><init>(Ljava/lang/String;II)V

    throw p0

    :cond_b
    :try_start_1
    new-instance p0, Lk0/d;

    const-string p1, "Expression string is too long."

    invoke-direct {p0, p1, v1}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_c
    new-instance p0, Lk0/d;

    const-string p1, "Expression string cannot be null."

    invoke-direct {p0, p1, v1}, Lk0/d;-><init>(Ljava/lang/String;I)V

    throw p0
    :try_end_1
    .catch Lk0/d; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Li0/c;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v0, "error parsing expression"

    iput-object v0, p1, Li0/c;->c:Ljava/lang/String;

    iput p2, p1, Li0/c;->r:I

    iput p3, p1, Li0/c;->x:I

    iput-object p0, p1, Li0/c;->y:Lk0/d;

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Li0/d;->a:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    sub-int/2addr v3, v2

    if-gez v3, :cond_0

    neg-int v3, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    return v1
.end method
