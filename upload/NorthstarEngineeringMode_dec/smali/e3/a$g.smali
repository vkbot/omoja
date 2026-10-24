.class public final Le3/a$g;
.super Le3/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le3/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public transient a:I

.field public transient b:J

.field public transient c:I

.field public transient d:J

.field public transient e:J

.field public transient f:I

.field public final synthetic g:Le3/a;


# direct methods
.method public constructor <init>(Le3/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3/a$g;->g:Le3/a;

    return-void
.end method


# virtual methods
.method public final a(III[J[J)Z
    .locals 5

    const/4 p2, 0x1

    const/4 p5, 0x0

    move v0, p5

    :goto_0
    if-eq v0, p3, :cond_1

    aget-wide v1, p4, v0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    add-int p2, p1, v0

    invoke-virtual {p0, p2, v1, v2}, Le3/a$g;->f(IJ)V

    move p2, p5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p2
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Le3/a$g;->g:Le3/a;

    iget-object v1, v0, Le3/a;->y:Le3/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Le3/a;->y:Le3/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Le3/a;->y:Le3/a$b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Le3/a;->y:Le3/a$b;

    iget v2, p0, Le3/a$g;->f:I

    iput v2, v1, Le3/a$b;->b:I

    iget v2, p0, Le3/a$g;->c:I

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x40

    iget-wide v3, p0, Le3/a$g;->d:J

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Le3/a$b;->c:I

    iget-object v1, v0, Le3/a;->y:Le3/a$b;

    iget v1, v1, Le3/a$b;->c:I

    iget-wide v1, p0, Le3/a$g;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    iget-object v0, v0, Le3/a;->y:Le3/a$b;

    iget-wide v1, p0, Le3/a$g;->e:J

    const/16 p0, 0x20

    shr-long v3, v1, p0

    xor-long/2addr v1, v3

    long-to-int p0, v1

    iput p0, v0, Le3/a$b;->a:I

    return-void
.end method

.method public final c()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final d(Le3/a;)Z
    .locals 2

    const-wide/16 v0, 0x4d2

    iput-wide v0, p0, Le3/a$g;->e:J

    const/4 p1, -0x1

    iput p1, p0, Le3/a$g;->a:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Le3/a$g;->b:J

    const/4 p1, 0x0

    iput p1, p0, Le3/a$g;->c:I

    iput-wide v0, p0, Le3/a$g;->d:J

    iput p1, p0, Le3/a$g;->f:I

    return p1
.end method

.method public final e(II[J[JJ)Z
    .locals 3

    aget-wide p3, p3, p2

    and-long/2addr p5, p3

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-eqz v2, :cond_0

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, p5, p6}, Le3/a$g;->f(IJ)V

    :cond_0
    cmp-long p0, p3, v0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(IJ)V
    .locals 4

    iget-wide v0, p0, Le3/a$g;->e:J

    add-int/lit8 v2, p1, 0x1

    int-to-long v2, v2

    mul-long/2addr v2, p2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Le3/a$g;->e:J

    iget v0, p0, Le3/a$g;->a:I

    if-gez v0, :cond_0

    iput p1, p0, Le3/a$g;->a:I

    iput-wide p2, p0, Le3/a$g;->b:J

    :cond_0
    iput p1, p0, Le3/a$g;->c:I

    iput-wide p2, p0, Le3/a$g;->d:J

    iget p1, p0, Le3/a$g;->f:I

    invoke-static {p2, p3}, Ljava/lang/Long;->bitCount(J)I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Le3/a$g;->f:I

    return-void
.end method
