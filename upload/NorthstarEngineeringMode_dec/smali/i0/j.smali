.class public final Li0/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li0/j;->a:I

    const/4 v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Li0/j;->b:[D

    return-void
.end method

.method public constructor <init>([DI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li0/j;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Li0/j;->b:[D

    if-ltz p2, :cond_0

    .line 3
    array-length v0, p1

    if-gt p2, v0, :cond_0

    iput-object p1, p0, Li0/j;->b:[D

    iput p2, p0, Li0/j;->a:I

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "size >= 0 && size <= value.length required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(D)V
    .locals 5

    iget v0, p0, Li0/j;->a:I

    if-ltz v0, :cond_4

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Li0/j;->b:[D

    array-length v3, v2

    if-ge v3, v1, :cond_2

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v2, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    new-array v1, v1, [D

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Li0/j;->a:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Li0/j;->b:[D

    aget-wide v3, v3, v2

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object v1, p0, Li0/j;->b:[D

    :cond_2
    iget v1, p0, Li0/j;->a:I

    :goto_2
    if-le v1, v0, :cond_3

    iget-object v2, p0, Li0/j;->b:[D

    add-int/lit8 v3, v1, -0x1

    aget-wide v3, v2, v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Li0/j;->b:[D

    aput-wide p1, v1, v0

    iget p1, p0, Li0/j;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li0/j;->a:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "required: (index >= 0 && index <= size) but: (index = "

    const-string v1, ", size = "

    invoke-static {p2, v0, v1}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p0, p0, Li0/j;->a:I

    const-string v0, ")"

    invoke-static {p2, p0, v0}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b(I)D
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Li0/j;->a:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Li0/j;->b:[D

    aget-wide p0, p0, p1

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "required: (index >= 0 && index < size) but: (index = "

    const-string v2, ", size = "

    invoke-static {v1, p1, v2}, Landroidx/activity/result/a;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Li0/j;->a:I

    const-string v1, ")"

    invoke-static {p1, p0, v1}, La4/a;->h(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
