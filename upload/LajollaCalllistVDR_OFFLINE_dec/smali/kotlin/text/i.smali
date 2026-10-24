.class public abstract Lkotlin/text/i;
.super Ly1/l;
.source "SourceFile"


# direct methods
.method public static K1(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const-string v0, "$this$trimMargin"

    invoke-static {p0, v0}, Ly1/l;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "|"

    invoke-static {v0}, Lkotlin/text/m;->P1(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    const-string v1, "\r\n"

    const-string v2, "\n"

    const-string v3, "\r"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2}, Lkotlin/text/n;->h2(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lo2/c;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lo2/c;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ly1/l;->h1(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v3

    add-int/2addr v2, p0

    sget-object p0, Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;->INSTANCE:Lkotlin/text/StringsKt__IndentKt$getIndentFunction$1;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    add-int/2addr v4, v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    if-ltz v7, :cond_9

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    if-eqz v7, :cond_1

    if-ne v7, v4, :cond_2

    :cond_1
    invoke-static {v8}, Lkotlin/text/m;->P1(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v8, v10

    goto :goto_5

    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v7

    move v11, v3

    :goto_2
    if-ge v11, v7, :cond_4

    invoke-virtual {v8, v11}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ly1/l;->K0(C)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    move v11, v5

    :goto_3
    if-ne v11, v5, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {v8, v11, v0, v3}, Lkotlin/text/m;->T1(Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v11

    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    const-string v7, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v7}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_4
    if-eqz v10, :cond_7

    invoke-interface {p0, v10}, Lk2/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_7

    move-object v8, v7

    :cond_7
    :goto_5
    if-eqz v8, :cond_8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move v7, v9

    goto :goto_1

    :cond_9
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "\n"

    const-string v10, ""

    const/4 v11, -0x1

    const-string v12, "..."

    const/4 v13, 0x0

    move-object v7, p0

    move-object v9, v10

    invoke-static/range {v6 .. v13}, Lkotlin/collections/j;->Q1(Ljava/lang/Iterable;Ljava/lang/StringBuilder;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lk2/l;)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mapIndexedNotNull { inde\u2026\"\\n\")\n        .toString()"

    invoke-static {p0, v0}, Ly1/l;->x(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "marginPrefix must be non-blank string."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
