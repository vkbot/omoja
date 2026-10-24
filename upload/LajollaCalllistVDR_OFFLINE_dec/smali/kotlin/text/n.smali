.class public abstract Lkotlin/text/n;
.super Lkotlin/text/m;
.source "SourceFile"


# direct methods
.method public static V1(Ljava/lang/CharSequence;C)Z
    .locals 2

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lkotlin/text/n;->Z1(Ljava/lang/CharSequence;CIZI)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static W1(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "$this$contains"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lkotlin/text/n;->a2(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static final X1(Ljava/lang/CharSequence;)I
    .locals 1

    const-string v0, "$this$lastIndex"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static final Y1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I
    .locals 9

    const-string v0, "$this$indexOf"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    goto/16 :goto_3

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gez p0, :cond_2

    const/4 p0, 0x0

    :cond_2
    new-instance v1, Lm2/c;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    move v0, v2

    :cond_3
    invoke-direct {v1, p0, v0}, Lm2/c;-><init>(II)V

    instance-of v0, p1, Ljava/lang/String;

    iget v2, v1, Lm2/a;->c:I

    iget v1, v1, Lm2/a;->b:I

    if-eqz v0, :cond_6

    if-ltz v2, :cond_4

    if-gt p0, v1, :cond_9

    goto :goto_1

    :cond_4
    if-lt p0, v1, :cond_9

    :goto_1
    const/4 v3, 0x0

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    move v4, p0

    move-object v6, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lkotlin/text/m;->Q1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    if-eq p0, v1, :cond_9

    add-int/2addr p0, v2

    goto :goto_1

    :cond_6
    if-ltz v2, :cond_7

    if-gt p0, v1, :cond_9

    goto :goto_2

    :cond_7
    if-lt p0, v1, :cond_9

    :goto_2
    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    move-object v3, p2

    move-object v5, p1

    move v6, p0

    move v8, p3

    invoke-static/range {v3 .. v8}, Lkotlin/text/n;->e2(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    if-eq p0, v1, :cond_9

    add-int/2addr p0, v2

    goto :goto_2

    :cond_9
    const/4 p0, -0x1

    :goto_3
    return p0
.end method

.method public static Z1(Ljava/lang/CharSequence;CIZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    const-string p4, "$this$indexOf"

    invoke-static {p0, p4}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_3

    instance-of p4, p0, Ljava/lang/String;

    if-nez p4, :cond_2

    goto :goto_0

    :cond_2
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p4, 0x1

    new-array p4, p4, [C

    aput-char p1, p4, v1

    invoke-static {p2, p0, p3, p4}, Lkotlin/text/n;->b2(ILjava/lang/CharSequence;Z[C)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static synthetic a2(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I
    .locals 2

    and-int/lit8 v0, p4, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move p3, v1

    :cond_1
    invoke-static {p2, p0, p1, p3}, Lkotlin/text/n;->Y1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method public static final b2(ILjava/lang/CharSequence;Z[C)I
    .locals 7

    const-string v0, "$this$indexOfAny"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chars"

    invoke-static {p3, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    array-length v1, p3

    if-ne v1, v0, :cond_0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-static {p3}, Lkotlin/collections/l;->O1([C)C

    move-result p2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->indexOf(II)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    if-gez p0, :cond_1

    move p0, v1

    :cond_1
    invoke-static {p1}, Lkotlin/text/n;->X1(Ljava/lang/CharSequence;)I

    move-result v2

    if-gt p0, v2, :cond_5

    :goto_0
    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    array-length v4, p3

    move v5, v1

    :goto_1
    if-ge v5, v4, :cond_3

    aget-char v6, p3, v5

    invoke-static {v6, v3, p2}, Ly1/l;->X(CCZ)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    return p0

    :cond_4
    if-eq p0, v2, :cond_5

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, -0x1

    return p0
.end method

.method public static c2(Ljava/lang/CharSequence;CII)I
    .locals 2

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    invoke-static {p0}, Lkotlin/text/n;->X1(Ljava/lang/CharSequence;)I

    move-result p2

    :cond_0
    const-string p3, "$this$lastIndexOf"

    invoke-static {p0, p3}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p3, p0, Ljava/lang/String;

    if-nez p3, :cond_5

    const/4 p3, 0x1

    new-array p3, p3, [C

    const/4 v0, 0x0

    aput-char p1, p3, v0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-static {p3}, Lkotlin/collections/l;->O1([C)C

    move-result p1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lkotlin/text/n;->X1(Ljava/lang/CharSequence;)I

    move-result p1

    if-le p2, p1, :cond_2

    move p2, p1

    :cond_2
    :goto_0
    if-ltz p2, :cond_4

    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    aget-char v1, p3, v0

    invoke-static {v1, p1, v0}, Ly1/l;->X(CCZ)Z

    move-result p1

    if-eqz p1, :cond_3

    move p0, p2

    goto :goto_1

    :cond_3
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    goto :goto_1

    :cond_5
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    :goto_1
    return p0
.end method

.method public static d2(Ljava/lang/CharSequence;[CZI)Lkotlin/text/c;
    .locals 3

    const/4 v0, 0x0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Lkotlin/text/c;

    new-instance v2, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;

    invoke-direct {v2, p1, p2}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$2;-><init>([CZ)V

    invoke-direct {v1, p0, v0, p3, v2}, Lkotlin/text/c;-><init>(Ljava/lang/CharSequence;IILk2/p;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Limit must be non-negative, but was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final e2(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z
    .locals 4

    const-string v0, "$this$regionMatchesImpl"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p2, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ltz p3, :cond_3

    if-ltz p1, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p4

    if-le p3, v1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, p1, v1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int v3, p3, v1

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3, p5}, Ly1/l;->X(CCZ)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method public static final f2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$removePrefix"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/text/n;->i2(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p0, p1}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    return-object p1
.end method

.method public static g2(Ljava/lang/CharSequence;[C)Ljava/util/List;
    .locals 5

    const-string v0, "$this$split"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    aget-char p1, p1, v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1, v2}, Lkotlin/text/n;->Y1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :cond_0
    invoke-interface {p0, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v4, p0, p1, v2}, Lkotlin/text/n;->Y1(ILjava/lang/CharSequence;Ljava/lang/String;Z)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-interface {p0, v4, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ly1/l;->N0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {p0, p1, v2, v2}, Lkotlin/text/n;->d2(Ljava/lang/CharSequence;[CZI)Lkotlin/text/c;

    move-result-object p1

    new-instance v0, Lo2/g;

    invoke-direct {v0, p1}, Lo2/g;-><init>(Lkotlin/text/c;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/l;->K1(Ljava/lang/Iterable;)I

    move-result p1

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Lo2/g;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm2/c;

    invoke-static {p0, v0}, Lkotlin/text/n;->j2(Ljava/lang/CharSequence;Lm2/c;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    return-object v3
.end method

.method public static h2(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lo2/c;
    .locals 2

    and-int/lit8 p3, p3, 0x2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    move p2, v0

    :cond_0
    const-string p3, "$this$splitToSequence"

    invoke-static {p0, p3}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p3, "ArraysUtilJVM.asList(this)"

    invoke-static {p1, p3}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Lkotlin/text/c;

    new-instance v1, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;

    invoke-direct {v1, p1, p2}, Lkotlin/text/StringsKt__StringsKt$rangesDelimitedBy$4;-><init>(Ljava/util/List;Z)V

    invoke-direct {p3, p0, v0, v0, v1}, Lkotlin/text/c;-><init>(Ljava/lang/CharSequence;IILk2/p;)V

    new-instance p1, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;

    invoke-direct {p1, p0}, Lkotlin/text/StringsKt__StringsKt$splitToSequence$1;-><init>(Ljava/lang/CharSequence;)V

    new-instance p0, Lo2/c;

    invoke-direct {p0, p3, p1}, Lo2/c;-><init>(Lkotlin/text/c;Lk2/l;)V

    return-object p0
.end method

.method public static i2(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const-string v0, "$this$startsWith"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lkotlin/text/m;->U1(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/n;->e2(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static final j2(Ljava/lang/CharSequence;Lm2/c;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$substring"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p1, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lm2/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget p1, p1, Lm2/a;->b:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-interface {p0, v0, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "$this$substringAfterLast"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missingDelimiterValue"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/16 v2, 0x2e

    invoke-static {p0, v2, v0, v1}, Lkotlin/text/n;->c2(Ljava/lang/CharSequence;CII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public static final l2(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, "$this$trim"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-gt v2, v0, :cond_4

    if-nez v3, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    move v4, v0

    :goto_1
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ly1/l;->K0(C)Z

    move-result v4

    if-nez v3, :cond_2

    if-nez v4, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    :goto_2
    add-int/2addr v0, v1

    invoke-interface {p0, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
