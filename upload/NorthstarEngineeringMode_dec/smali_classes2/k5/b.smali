.class public final Lk5/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public Z:Ljava/lang/String;

.field public c:[I

.field public r:[I

.field public x:I

.field public y:Ljava/text/CharacterIterator;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lk5/b;->c:[I

    iput-object v0, p0, Lk5/b;->r:[I

    const/4 v1, 0x0

    iput v1, p0, Lk5/b;->x:I

    iput-object v0, p0, Lk5/b;->y:Ljava/text/CharacterIterator;

    iput-object v0, p0, Lk5/b;->Z:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    iget-object v0, p0, Lk5/b;->c:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    iget v1, p0, Lk5/b;->x:I

    if-le v1, p1, :cond_0

    aget p0, v0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The parameter must be less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lk5/b;->x:I

    const-string v2, ": "

    invoke-static {v1, p0, v2, p1}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A result is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(I)I
    .locals 3

    iget-object v0, p0, Lk5/b;->r:[I

    if-eqz v0, :cond_1

    if-ltz p1, :cond_0

    iget v1, p0, Lk5/b;->x:I

    if-le v1, p1, :cond_0

    aget p0, v0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The parameter must be less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lk5/b;->x:I

    const-string v2, ": "

    invoke-static {v1, p0, v2, p1}, La4/a;->i(Ljava/lang/StringBuilder;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "A result is not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c(I)V
    .locals 3

    iget v0, p0, Lk5/b;->x:I

    iput p1, p0, Lk5/b;->x:I

    if-lez v0, :cond_0

    if-lt v0, p1, :cond_0

    mul-int/lit8 v1, p1, 0x2

    if-ge v1, v0, :cond_1

    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lk5/b;->c:[I

    new-array v0, p1, [I

    iput-object v0, p0, Lk5/b;->r:[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v1, p0, Lk5/b;->c:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    iget-object v1, p0, Lk5/b;->r:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final declared-synchronized clone()Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Lk5/b;

    invoke-direct {v0}, Lk5/b;-><init>()V

    iget v1, p0, Lk5/b;->x:I

    if-lez v1, :cond_2

    invoke-virtual {v0, v1}, Lk5/b;->c(I)V

    iget-object v1, p0, Lk5/b;->y:Ljava/text/CharacterIterator;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput-object v1, v0, Lk5/b;->y:Ljava/text/CharacterIterator;

    iput-object v2, v0, Lk5/b;->Z:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lk5/b;->Z:Ljava/lang/String;

    if-eqz v1, :cond_1

    iput-object v2, v0, Lk5/b;->y:Ljava/text/CharacterIterator;

    iput-object v1, v0, Lk5/b;->Z:Ljava/lang/String;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lk5/b;->x:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lk5/b;->a(I)I

    move-result v2

    iget-object v3, v0, Lk5/b;->c:[I

    aput v2, v3, v1

    invoke-virtual {p0, v1}, Lk5/b;->b(I)I

    move-result v2

    iget-object v3, v0, Lk5/b;->r:[I

    aput v2, v3, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method
