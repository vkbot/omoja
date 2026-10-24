.class public abstract Lkotlin/text/m;
.super Lkotlin/text/l;
.source "SourceFile"


# direct methods
.method public static L1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "$this$endsWith"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suffix"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final M1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final N1()Ljava/util/Comparator;
    .locals 2

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const-string v1, "java.lang.String.CASE_INSENSITIVE_ORDER"

    invoke-static {v0, v1}, Lcom/google/android/material/slider/h;->x(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final O1(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "$this$isBlank"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    new-instance v0, Lu2/c;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lu2/c;-><init>(II)V

    instance-of v2, v0, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lu2/a;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    move-object v2, v0

    check-cast v2, Lu2/b;

    iget-boolean v2, v2, Lu2/b;->c:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lu2/b;

    invoke-virtual {v2}, Lu2/b;->b()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/google/android/material/slider/h;->H0(C)Z

    move-result v2

    if-nez v2, :cond_1

    move p0, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p0, v1

    :goto_1
    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v3

    :cond_4
    :goto_2
    return v1
.end method

.method public static final P1(IIILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, "$this$regionMatches"

    invoke-static {p3, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p4, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p5, :cond_0

    invoke-virtual {p3, p0, p4, p1, p2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    goto :goto_0

    :cond_0
    move-object v0, p3

    move v1, p5

    move v2, p0

    move-object v3, p4

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p0

    :goto_0
    return p0
.end method

.method public static Q1(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$replace"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    const/16 v1, 0x30

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026replace(oldChar, newChar)"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->x(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static R1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$replace"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lkotlin/text/n;->g2(Ljava/lang/CharSequence;[Ljava/lang/String;ZI)Lw2/c;

    move-result-object p0

    invoke-static {p0, p2}, Lw2/e;->J1(Lw2/d;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final S1(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 6

    const-string v0, "$this$startsWith"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v0, p2

    move-object v3, p0

    move-object v4, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lkotlin/text/m;->P1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final T1(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 6

    const-string v0, "$this$startsWith"

    invoke-static {p0, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefix"

    invoke-static {p1, v0}, Lcom/google/android/material/slider/h;->y(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lkotlin/text/m;->P1(IIILjava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method
