.class public final Lk/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:F

.field public g:Z

.field public final h:[F

.field public final i:[F

.field public j:Landroidx/constraintlayout/core/SolverVariable$Type;

.field public k:[Lk/c;

.field public l:I

.field public m:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/SolverVariable$Type;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lk/i;->c:I

    iput v0, p0, Lk/i;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lk/i;->e:I

    iput-boolean v0, p0, Lk/i;->g:Z

    const/16 v1, 0x9

    new-array v2, v1, [F

    iput-object v2, p0, Lk/i;->h:[F

    new-array v1, v1, [F

    iput-object v1, p0, Lk/i;->i:[F

    const/16 v1, 0x10

    new-array v1, v1, [Lk/c;

    iput-object v1, p0, Lk/i;->k:[Lk/c;

    iput v0, p0, Lk/i;->l:I

    iput v0, p0, Lk/i;->m:I

    iput-object p1, p0, Lk/i;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    return-void
.end method


# virtual methods
.method public final a(Lk/c;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lk/i;->l:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lk/i;->k:[Lk/c;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lk/i;->k:[Lk/c;

    array-length v2, v0

    if-lt v1, v2, :cond_2

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/c;

    iput-object v0, p0, Lk/i;->k:[Lk/c;

    :cond_2
    iget-object v0, p0, Lk/i;->k:[Lk/c;

    iget v1, p0, Lk/i;->l:I

    aput-object p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lk/i;->l:I

    return-void
.end method

.method public final b(Lk/c;)V
    .locals 4

    iget v0, p0, Lk/i;->l:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lk/i;->k:[Lk/c;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    iget-object p1, p0, Lk/i;->k:[Lk/c;

    add-int/lit8 v2, v1, 0x1

    aget-object v3, p1, v2

    aput-object v3, p1, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget p1, p0, Lk/i;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lk/i;->l:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 6

    sget-object v0, Landroidx/constraintlayout/core/SolverVariable$Type;->UNKNOWN:Landroidx/constraintlayout/core/SolverVariable$Type;

    iput-object v0, p0, Lk/i;->j:Landroidx/constraintlayout/core/SolverVariable$Type;

    const/4 v0, 0x0

    iput v0, p0, Lk/i;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lk/i;->c:I

    iput v1, p0, Lk/i;->d:I

    const/4 v1, 0x0

    iput v1, p0, Lk/i;->f:F

    iput-boolean v0, p0, Lk/i;->g:Z

    iget v2, p0, Lk/i;->l:I

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lk/i;->k:[Lk/c;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lk/i;->l:I

    iput v0, p0, Lk/i;->m:I

    iput-boolean v0, p0, Lk/i;->b:Z

    iget-object v0, p0, Lk/i;->i:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lk/i;

    iget v0, p0, Lk/i;->c:I

    iget p1, p1, Lk/i;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lk/e;F)V
    .locals 3

    iput p2, p0, Lk/i;->f:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lk/i;->g:Z

    iget p2, p0, Lk/i;->l:I

    const/4 v0, -0x1

    iput v0, p0, Lk/i;->d:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    iget-object v2, p0, Lk/i;->k:[Lk/c;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p0, v0}, Lk/c;->h(Lk/e;Lk/i;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lk/i;->l:I

    return-void
.end method

.method public final e(Lk/e;Lk/c;)V
    .locals 4

    iget v0, p0, Lk/i;->l:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lk/i;->k:[Lk/c;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Lk/c;->i(Lk/e;Lk/c;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lk/i;->l:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lk/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
