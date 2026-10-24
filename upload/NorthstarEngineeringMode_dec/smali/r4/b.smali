.class public abstract Lr4/b;
.super Lb4/a;
.source "SourceFile"

# interfaces
.implements Lr4/k;


# static fields
.field public static final c:Lr4/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v1, Lr4/l;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-direct {v1, v0}, Lr4/l;-><init>(Ljava/text/NumberFormat;)V

    sput-object v1, Lr4/b;->c:Lr4/l;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x1

    if-lt p1, p0, :cond_1

    if-lt p2, p0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p0, Lp4/k;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lp4/k;-><init>(Ljava/lang/Integer;)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Lp4/k;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lp4/k;-><init>(Ljava/lang/Integer;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/k;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lr4/k;

    invoke-interface {p0}, Lr4/k;->c()I

    move-result v1

    invoke-interface {p0}, Lr4/k;->a()I

    move-result v3

    invoke-interface {p1}, Lr4/k;->a()I

    move-result v4

    if-ne v4, v3, :cond_6

    invoke-interface {p1}, Lr4/k;->c()I

    move-result v4

    if-eq v4, v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_5

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_4

    invoke-interface {p0, v4, v5}, Lr4/k;->d(II)D

    move-result-wide v6

    invoke-interface {p1, v4, v5}, Lr4/k;->d(II)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method public final hashCode()I
    .locals 10

    invoke-interface {p0}, Lr4/k;->c()I

    move-result v0

    invoke-interface {p0}, Lr4/k;->a()I

    move-result v1

    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0xb

    add-int/lit8 v7, v5, 0x1

    mul-int/lit8 v8, v7, 0x11

    add-int/2addr v8, v6

    invoke-interface {p0, v4, v5}, Lr4/k;->d(II)D

    move-result-wide v5

    new-instance v9, Ljava/lang/Double;

    invoke-direct {v9, v5, v6}, Ljava/lang/Double;-><init>(D)V

    invoke-virtual {v9}, Ljava/lang/Double;->hashCode()I

    move-result v5

    mul-int/2addr v5, v8

    add-int/2addr v2, v5

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final i(III[[D)V
    .locals 4

    invoke-static {p0, p1, p2, p3}, Lr4/h;->c(Lr4/k;III)V

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p3, 0x1

    sub-int/2addr v1, p2

    array-length v2, p4

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    aget-object v2, p4, v3

    array-length v2, v2

    if-lt v2, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p4, v2

    array-length v3, v3

    if-lt v3, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lp4/i;

    array-length p1, p4

    aget-object p2, p4, v2

    array-length p2, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lp4/i;-><init>(IIII)V

    throw p0

    :cond_1
    new-instance v0, Lr4/a;

    invoke-direct {v0, p4}, Lr4/a;-><init>([[D)V

    invoke-virtual {p0, v0, p1, p2, p3}, Lr4/b;->n(Lr4/a;III)V

    return-void

    :cond_2
    new-instance p0, Lp4/i;

    array-length p1, p4

    aget-object p2, p4, v3

    array-length p2, p2

    invoke-direct {p0, p1, p2, v0, v1}, Lp4/i;-><init>(IIII)V

    throw p0
.end method

.method public abstract j(II)Lr4/k;
.end method

.method public final k()Z
    .locals 1

    invoke-interface {p0}, Lr4/k;->a()I

    move-result v0

    invoke-interface {p0}, Lr4/k;->c()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m()Lr4/k;
    .locals 2

    invoke-interface {p0}, Lr4/k;->c()I

    move-result v0

    invoke-interface {p0}, Lr4/k;->a()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lr4/b;->j(II)Lr4/k;

    move-result-object v0

    new-instance v1, Lr4/b$a;

    invoke-direct {v1, v0}, Lr4/b$a;-><init>(Lr4/k;)V

    invoke-virtual {p0, v1}, Lr4/b;->p(Lr4/b$a;)V

    return-object v0
.end method

.method public n(Lr4/a;III)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lr4/b;->q(Lr4/a;III)V

    return-void
.end method

.method public p(Lr4/b$a;)V
    .locals 0

    invoke-virtual {p0, p1}, Lr4/b;->r(Lr4/b$a;)V

    return-void
.end method

.method public q(Lr4/a;III)V
    .locals 4

    invoke-static {p0, p2, p3, p4}, Lr4/h;->c(Lr4/k;III)V

    invoke-interface {p0}, Lr4/k;->c()I

    invoke-interface {p0}, Lr4/k;->a()I

    invoke-virtual {p1, p3}, Lr4/a;->l(I)V

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p2, :cond_1

    move v1, p3

    :goto_1
    if-gt v1, p4, :cond_0

    invoke-interface {p0, v0, v1}, Lr4/k;->d(II)D

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lr4/a;->m(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public r(Lr4/b$a;)V
    .locals 7

    invoke-interface {p0}, Lr4/k;->c()I

    move-result v0

    invoke-interface {p0}, Lr4/k;->a()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    invoke-interface {p0, v3, v4}, Lr4/k;->d(II)D

    move-result-wide v5

    invoke-virtual {p1, v3, v4, v5, v6}, Lr4/b$a;->l(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lr4/b;->c:Lr4/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v3, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const-string/jumbo v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lr4/k;->c()I

    move-result v6

    move v7, v4

    :goto_0
    const-string/jumbo v8, "}"

    if-ge v7, v6, :cond_3

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v9, v4

    :goto_1
    invoke-interface {p0}, Lr4/k;->a()I

    move-result v10

    const-string v11, ","

    if-ge v9, v10, :cond_1

    if-lez v9, :cond_0

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-interface {p0, v7, v9}, Lr4/k;->d(II)D

    move-result-wide v10

    iget-object v12, v1, Lr4/l;->a:Ljava/text/NumberFormat;

    invoke-static {v10, v11, v12, v2, v3}, Ld/f;->t(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
