.class public final Lm5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm5/f$a;,
        Lm5/f$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/SoftReference<",
            "Lm5/f;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lm5/f$a;

.field public final b:I

.field public c:I

.field public d:[C

.field public e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/commons/compress/archivers/zip/i;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/i;-><init>(I)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Lm5/f;->g:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm5/f$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lm5/f;->a:Lm5/f$a;

    iput p1, p0, Lm5/f;->b:I

    return-void
.end method

.method public static b([CILjava/lang/Object;II)V
    .locals 4

    if-nez p4, :cond_0

    return-void

    :cond_0
    instance-of v0, p2, [C

    if-eqz v0, :cond_1

    check-cast p2, [C

    invoke-static {p2, p3, p0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    add-int/2addr p4, p3

    invoke-virtual {p2, p3, p4, p0, p1}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0

    :cond_2
    check-cast p2, Lm5/f$b;

    iget v0, p2, Lm5/f$b;->e:I

    iget-object v1, p2, Lm5/f$b;->d:Ljava/lang/Object;

    iget v2, p2, Lm5/f$b;->c:I

    if-ge p3, v2, :cond_3

    sub-int/2addr v2, p3

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p2, Lm5/f$b;->b:I

    add-int/2addr v3, p3

    iget-object p2, p2, Lm5/f$b;->a:Ljava/lang/Object;

    invoke-static {p0, p1, p2, v3, v2}, Lm5/f;->b([CILjava/lang/Object;II)V

    if-le p4, v2, :cond_4

    add-int/2addr p1, v2

    sub-int/2addr p4, v2

    invoke-static {p0, p1, v1, v0, p4}, Lm5/f;->b([CILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int/2addr v0, p3

    sub-int/2addr v0, v2

    invoke-static {p0, p1, v1, v0, p4}, Lm5/f;->b([CILjava/lang/Object;II)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static c(IILjava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    instance-of v0, p2, [C

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    check-cast p2, [C

    invoke-direct {v0, p2, p0, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/String;

    if-nez p0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p1, v0, :cond_2

    return-object p2

    :cond_2
    add-int/2addr p1, p0

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    check-cast p2, Lm5/f$b;

    invoke-static {p2, v0, p0, p1}, Lm5/f$b;->a(Lm5/f$b;Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, [C

    if-eqz v0, :cond_1

    check-cast p1, [C

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;

    if-nez p2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne p3, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    add-int/2addr p3, p2

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    check-cast p1, Lm5/f$b;

    invoke-static {p1, p0, p2, p3}, Lm5/f$b;->a(Lm5/f$b;Ljava/lang/StringBuffer;II)V

    :goto_0
    return-void
.end method

.method public static f(C)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(I)[C
    .locals 3

    iget-object v0, p0, Lm5/f;->d:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lm5/f;->b:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lm5/f;->d:[C

    iput v1, p0, Lm5/f;->c:I

    :cond_0
    iget v0, p0, Lm5/f;->c:I

    iput v0, p0, Lm5/f;->e:I

    iget-object v2, p0, Lm5/f;->d:[C

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lm5/f;->f:I

    iget-object v0, p0, Lm5/f;->d:[C

    iget v2, p0, Lm5/f;->c:I

    add-int/2addr v2, p1

    iput v2, p0, Lm5/f;->c:I

    array-length p1, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lm5/f;->d:[C

    iput v1, p0, Lm5/f;->c:I

    :cond_1
    return-object v0
.end method

.method public final e(ILjava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 8

    if-nez p7, :cond_0

    iput p4, p0, Lm5/f;->f:I

    iput p3, p0, Lm5/f;->e:I

    return-object p2

    :cond_0
    if-nez p4, :cond_1

    iput p7, p0, Lm5/f;->f:I

    iput p6, p0, Lm5/f;->e:I

    return-object p5

    :cond_1
    add-int v0, p4, p7

    iput v0, p0, Lm5/f;->f:I

    const/16 v1, 0x40

    if-gt v0, v1, :cond_3

    iget-object v2, p0, Lm5/f;->d:[C

    if-eqz v2, :cond_2

    array-length v2, v2

    iget v3, p0, Lm5/f;->c:I

    sub-int/2addr v2, v3

    if-lt v2, v0, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lm5/f;->a(I)[C

    move-result-object v0

    iget v1, p0, Lm5/f;->e:I

    invoke-static {v0, v1, p2, p3, p1}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget v1, p0, Lm5/f;->e:I

    add-int/2addr v1, p1

    invoke-static {v0, v1, p5, p6, p7}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget p0, p0, Lm5/f;->e:I

    add-int/2addr p0, p1

    add-int/2addr p0, p7

    add-int/2addr p3, p1

    sub-int/2addr p4, p1

    invoke-static {v0, p0, p2, p3, p4}, Lm5/f;->b([CILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lm5/f;->e:I

    if-nez p1, :cond_4

    new-instance p1, Lm5/f$b;

    move-object v2, p1

    move-object v3, p5

    move v4, p6

    move v5, p7

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_4
    if-ne p1, p4, :cond_5

    new-instance p1, Lm5/f$b;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    new-instance p4, Lm5/f$b;

    move-object v2, p4

    move-object v3, p2

    move v4, p3

    move v5, p1

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v2 .. v7}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    new-instance p5, Lm5/f$b;

    const/4 v4, 0x0

    add-int v5, p1, p7

    add-int v7, p3, p1

    move-object v2, p5

    move-object v3, p4

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    move-object v0, p5

    :goto_1
    iget p1, v0, Lm5/f$b;->f:I

    if-le p1, v1, :cond_6

    iget p1, p0, Lm5/f;->e:I

    iget p2, p0, Lm5/f;->f:I

    invoke-virtual {p0, p1, p2, v0}, Lm5/f;->i(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_6
    :goto_2
    return-object v0
.end method

.method public final g(IILjava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-gtz p2, :cond_0

    return v0

    :cond_0
    instance-of v1, p3, [C

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p3, [C

    :goto_0
    if-lez p2, :cond_2

    add-int/lit8 p0, p1, 0x1

    aget-char p1, p3, p1

    invoke-static {p1}, Lm5/f;->f(C)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 p2, p2, -0x1

    move p1, p0

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    instance-of v1, p3, Ljava/lang/String;

    if-eqz v1, :cond_6

    check-cast p3, Ljava/lang/String;

    :goto_1
    if-lez p2, :cond_5

    add-int/lit8 p0, p1, 0x1

    invoke-virtual {p3, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lm5/f;->f(C)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    add-int/lit8 p2, p2, -0x1

    move p1, p0

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    iget-object p0, p0, Lm5/f;->a:Lm5/f$a;

    invoke-virtual {p0, p3, p1, p2, v2}, Lm5/f$a;->a(Ljava/lang/Object;III)V

    :cond_7
    iget p1, p0, Lm5/f$a;->d:I

    iget p2, p0, Lm5/f$a;->c:I

    if-ge p1, p2, :cond_8

    move p2, v0

    goto :goto_2

    :cond_8
    move p2, v2

    :goto_2
    if-eqz p2, :cond_a

    iget p2, p0, Lm5/f$a;->g:I

    add-int/2addr p2, p1

    iget p1, p0, Lm5/f$a;->e:I

    sub-int/2addr p2, p1

    iget-object p1, p0, Lm5/f$a;->i:[C

    if-nez p1, :cond_9

    iget-object p1, p0, Lm5/f$a;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    goto :goto_3

    :cond_9
    aget-char p1, p1, p2

    :goto_3
    iget p2, p0, Lm5/f$a;->d:I

    add-int/2addr p2, v0

    invoke-virtual {p0, p2}, Lm5/f$a;->b(I)V

    invoke-static {p1}, Lm5/f;->f(C)Z

    move-result p1

    if-nez p1, :cond_7

    move v0, v2

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lm5/f$a;->a:Ljava/lang/Object;

    iput-object p1, p0, Lm5/f$a;->h:Ljava/lang/String;

    iput-object p1, p0, Lm5/f$a;->i:[C

    return v0
.end method

.method public final h(IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 9

    sub-int v0, p5, p2

    iput v0, p0, Lm5/f;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput v1, p0, Lm5/f;->e:I

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    add-int/2addr p4, p2

    iput p4, p0, Lm5/f;->e:I

    goto :goto_0

    :cond_1
    add-int v2, p1, p2

    if-ne v2, p5, :cond_2

    iput p4, p0, Lm5/f;->e:I

    goto :goto_0

    :cond_2
    const/16 v2, 0x40

    if-gt v0, v2, :cond_4

    iget-object v3, p0, Lm5/f;->d:[C

    if-eqz v3, :cond_3

    array-length v3, v3

    iget v4, p0, Lm5/f;->c:I

    sub-int/2addr v3, v4

    if-lt v3, v0, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lm5/f;->a(I)[C

    move-result-object v0

    iget v1, p0, Lm5/f;->e:I

    invoke-static {v0, v1, p3, p4, p1}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget p0, p0, Lm5/f;->e:I

    add-int/2addr p0, p1

    add-int/2addr p4, p1

    add-int/2addr p4, p2

    sub-int/2addr p5, p1

    sub-int/2addr p5, p2

    invoke-static {v0, p0, p3, p4, p5}, Lm5/f;->b([CILjava/lang/Object;II)V

    move-object p3, v0

    goto :goto_0

    :cond_4
    new-instance p5, Lm5/f$b;

    add-int v0, p4, p1

    add-int v8, v0, p2

    move-object v3, p5

    move-object v4, p3

    move v5, p4

    move v6, p1

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    iget p1, p5, Lm5/f$b;->f:I

    if-le p1, v2, :cond_5

    iget p1, p0, Lm5/f;->f:I

    invoke-virtual {p0, v1, p1, p5}, Lm5/f;->i(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_0

    :cond_5
    iput v1, p0, Lm5/f;->e:I

    move-object p3, p5

    :goto_0
    return-object p3
.end method

.method public final i(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Lm5/f;->j(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/Object;IILjava/lang/Object;II)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v5, p4

    invoke-virtual {p0, v3}, Lm5/f;->a(I)[C

    move-result-object v8

    iget v9, v0, Lm5/f;->e:I

    iget v10, v0, Lm5/f;->f:I

    invoke-static {v8, v9, v1, v2, v10}, Lm5/f;->b([CILjava/lang/Object;II)V

    add-int v11, v10, p6

    const/16 v12, 0x40

    const/4 v13, 0x0

    if-nez p6, :cond_0

    move-object v14, v8

    goto :goto_1

    :cond_0
    if-ne v5, v8, :cond_1

    add-int v4, p5, p6

    if-ne v4, v9, :cond_1

    goto :goto_0

    :cond_1
    instance-of v4, v5, Lm5/f$b;

    if-eqz v4, :cond_2

    move-object v4, v5

    check-cast v4, Lm5/f$b;

    iget-object v6, v4, Lm5/f$b;->d:Ljava/lang/Object;

    if-ne v6, v8, :cond_2

    add-int v6, p5, p6

    iget v7, v4, Lm5/f$b;->c:I

    sub-int/2addr v6, v7

    iget v4, v4, Lm5/f$b;->e:I

    add-int/2addr v6, v4

    if-ne v6, v9, :cond_2

    :goto_0
    move/from16 v9, p5

    move-object v14, v5

    goto :goto_1

    :cond_2
    new-instance v14, Lm5/f$b;

    move-object v4, v14

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v4 .. v9}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    iget v4, v14, Lm5/f$b;->f:I

    if-le v4, v12, :cond_3

    invoke-virtual {p0, v13, v11, v14}, Lm5/f;->i(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    :cond_3
    move v9, v13

    :goto_1
    sub-int v4, v3, v10

    if-lez v4, :cond_5

    invoke-virtual {p0, v4}, Lm5/f;->a(I)[C

    move-result-object v5

    iget v6, v0, Lm5/f;->e:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-static {v5, v6, v1, v3, v4}, Lm5/f;->b([CILjava/lang/Object;II)V

    new-instance v1, Lm5/f$b;

    move-object/from16 p1, v1

    move-object/from16 p2, v14

    move/from16 p3, v9

    move/from16 p4, v11

    move-object/from16 p5, v5

    move/from16 p6, v6

    invoke-direct/range {p1 .. p6}, Lm5/f$b;-><init>(Ljava/lang/Object;IILjava/lang/Object;I)V

    add-int/2addr v11, v4

    iget v2, v1, Lm5/f$b;->f:I

    if-le v2, v12, :cond_4

    invoke-virtual {p0, v13, v11, v1}, Lm5/f;->i(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :cond_4
    move-object v14, v1

    goto :goto_2

    :cond_5
    move v13, v9

    :goto_2
    iput v13, v0, Lm5/f;->e:I

    iput v11, v0, Lm5/f;->f:I

    return-object v14
.end method

.method public final k(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    iget-object v2, p0, Lm5/f;->a:Lm5/f$a;

    invoke-virtual {v2, p3, p1, p2, p2}, Lm5/f$a;->a(Ljava/lang/Object;III)V

    :goto_0
    iget v3, v2, Lm5/f$a;->d:I

    if-lez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    if-eqz v4, :cond_3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lm5/f$a;->b(I)V

    iget v3, v2, Lm5/f$a;->g:I

    iget v4, v2, Lm5/f$a;->d:I

    add-int/2addr v3, v4

    iget v4, v2, Lm5/f$a;->e:I

    sub-int/2addr v3, v4

    iget-object v4, v2, Lm5/f$a;->i:[C

    if-nez v4, :cond_1

    iget-object v4, v2, Lm5/f$a;->h:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_2

    :cond_1
    aget-char v3, v4, v3

    :goto_2
    invoke-static {v3}, Lm5/f;->f(C)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    :goto_3
    iput-object v0, v2, Lm5/f$a;->a:Ljava/lang/Object;

    iput-object v0, v2, Lm5/f$a;->h:Ljava/lang/String;

    iput-object v0, v2, Lm5/f$a;->i:[C

    :cond_4
    if-nez p2, :cond_5

    iput v1, p0, Lm5/f;->e:I

    iput v1, p0, Lm5/f;->f:I

    return-object v0

    :cond_5
    iput p1, p0, Lm5/f;->e:I

    iput p2, p0, Lm5/f;->f:I

    return-object p3
.end method
