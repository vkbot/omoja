.class public final Lr4/d;
.super Lr4/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final r:Lr4/n;


# instance fields
.field public c:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    new-instance v1, Lr4/n;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    invoke-direct {v1, v0}, Lr4/n;-><init>(Ljava/text/NumberFormat;)V

    sput-object v1, Lr4/d;->r:Lr4/n;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lr4/d;->c:[D

    array-length p0, p0

    return p0
.end method

.method public final b(I)D
    .locals 3

    iget-object p0, p0, Lr4/d;->c:[D

    :try_start_0
    aget-wide p0, p0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    new-instance v0, Lp4/n;

    sget-object v1, Lq4/c;->i1:Lq4/c;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p1, v2, p0}, Lp4/n;-><init>(Lq4/c;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public final c()Z
    .locals 5

    iget-object p0, p0, Lr4/d;->c:[D

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lr4/m;

    iget-object v1, p0, Lr4/d;->c:[D

    array-length v3, v1

    invoke-virtual {p1}, Lr4/m;->a()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v2

    :cond_2
    invoke-virtual {p1}, Lr4/m;->c()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lr4/d;->c()Z

    move-result p0

    return p0

    :cond_3
    move p0, v2

    :goto_0
    array-length v3, v1

    if-ge p0, v3, :cond_5

    aget-wide v3, v1, p0

    invoke-virtual {p1, p0}, Lr4/m;->b(I)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lr4/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x9

    return p0

    :cond_0
    iget-object p0, p0, Lr4/d;->c:[D

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([D)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    sget-object v0, Lr4/d;->r:Lr4/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/text/FieldPosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {v2, v3}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const-string/jumbo v4, "{"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v4, p0, Lr4/d;->c:[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    if-lez v3, :cond_0

    const-string v4, "; "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p0, v3}, Lr4/d;->b(I)D

    move-result-wide v4

    iget-object v6, v0, Lr4/n;->a:Ljava/text/NumberFormat;

    invoke-static {v4, v5, v6, v1, v2}, Ld/f;->t(DLjava/text/NumberFormat;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
