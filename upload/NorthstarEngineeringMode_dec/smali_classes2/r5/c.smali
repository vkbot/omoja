.class public final Lr5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/HashMap;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lr5/c;->e:Ljava/util/HashMap;

    if-nez p2, :cond_0

    const-string p2, "$this"

    :cond_0
    iput-object p2, p0, Lr5/c;->d:Ljava/lang/String;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iput-object p1, p0, Lr5/c;->f:Ljava/util/Map;

    return-void
.end method

.method public static a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;
    .locals 1

    new-instance v0, Lr5/h;

    invoke-direct {v0, p0, p1, p2}, Lr5/h;-><init>(ZZLjavax/xml/namespace/QName;)V

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    move-object p0, p3

    :goto_0
    iget-object p1, p0, Lr5/h;->e:Lr5/h;

    if-eqz p1, :cond_1

    move-object p0, p1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lr5/h;->e:Lr5/h;

    iput-object p0, v0, Lr5/h;->f:Lr5/h;

    return-object p3
.end method

.method public static c(Lr5/h;)V
    .locals 12

    :goto_0
    if-eqz p0, :cond_f

    iget-object v0, p0, Lr5/h;->e:Lr5/h;

    :goto_1
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lr5/h;->b:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lr5/h;->e:Lr5/h;

    goto :goto_1

    :cond_0
    iget-boolean v1, p0, Lr5/h;->b:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    :goto_2
    if-eq p0, v0, :cond_e

    iput-boolean v2, p0, Lr5/h;->g:Z

    iget-object p0, p0, Lr5/h;->e:Lr5/h;

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    move-object v3, p0

    move v4, v1

    :goto_3
    if-eq v3, v0, :cond_3

    iget-object v5, v3, Lr5/h;->d:Ljavax/xml/namespace/QName;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    iget-boolean v5, v3, Lr5/h;->a:Z

    if-nez v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    iget-object v3, v3, Lr5/h;->e:Lr5/h;

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v5, v4, 0x1

    new-array v6, v5, [Ljavax/xml/namespace/QName;

    new-array v5, v5, [I

    move-object v8, p0

    move v7, v1

    :goto_5
    if-ge v7, v4, :cond_4

    iget-object v9, v8, Lr5/h;->d:Ljavax/xml/namespace/QName;

    aput-object v9, v6, v7

    iget-object v8, v8, Lr5/h;->e:Lr5/h;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_4
    new-instance v7, Ljavax/xml/namespace/QName;

    const-string v8, ""

    invoke-direct {v7, v8, v8}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v4

    const/4 v7, -0x1

    aput v7, v5, v1

    move v8, v1

    move v9, v7

    :goto_6
    if-ge v8, v4, :cond_7

    :goto_7
    if-le v9, v7, :cond_5

    aget-object v10, v6, v8

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    aget v9, v5, v9

    goto :goto_7

    :cond_5
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v10, v6, v8

    aget-object v11, v6, v9

    invoke-virtual {v10, v11}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    aget v10, v5, v9

    goto :goto_8

    :cond_6
    move v10, v9

    :goto_8
    aput v10, v5, v8

    goto :goto_6

    :cond_7
    move-object v6, p0

    :goto_9
    if-eq v6, v3, :cond_9

    iput-boolean v2, v6, Lr5/h;->g:Z

    iput-object p0, v6, Lr5/h;->h:Lr5/h;

    aget v7, v5, v1

    :goto_a
    if-lez v7, :cond_8

    iget-object v8, v6, Lr5/h;->h:Lr5/h;

    iget-object v8, v8, Lr5/h;->e:Lr5/h;

    iput-object v8, v6, Lr5/h;->h:Lr5/h;

    add-int/lit8 v7, v7, -0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v1, v1, 0x1

    iget-object v6, v6, Lr5/h;->e:Lr5/h;

    goto :goto_9

    :cond_9
    if-le v4, v2, :cond_a

    add-int/lit8 v4, v4, -0x1

    aget v1, v5, v4

    move-object v4, p0

    :goto_b
    if-lez v1, :cond_b

    iget-object v4, v4, Lr5/h;->e:Lr5/h;

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_a
    move-object v4, p0

    :cond_b
    if-eq v3, v0, :cond_c

    iget-boolean v1, v3, Lr5/h;->a:Z

    if-eqz v1, :cond_c

    iput-boolean v2, v3, Lr5/h;->g:Z

    iput-object v4, v3, Lr5/h;->h:Lr5/h;

    iget-object v3, v3, Lr5/h;->e:Lr5/h;

    :cond_c
    if-eq v3, v0, :cond_d

    iget-object v1, v3, Lr5/h;->d:Ljavax/xml/namespace/QName;

    if-nez v1, :cond_d

    iput-boolean v2, v3, Lr5/h;->g:Z

    iput-object v4, v3, Lr5/h;->h:Lr5/h;

    :cond_d
    iput-boolean v2, p0, Lr5/h;->g:Z

    iput-object p0, p0, Lr5/h;->h:Lr5/h;

    :cond_e
    move-object p0, v0

    goto/16 :goto_0

    :cond_f
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget v0, p0, Lr5/c;->g:I

    iget-object v1, p0, Lr5/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lr5/c;->a:Ljava/lang/String;

    iget v1, p0, Lr5/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v1, p0, Lr5/c;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lr5/c;->g:I

    iget v2, p0, Lr5/c;->i:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lr5/c;->i:I

    const/16 v2, 0xa

    const/16 v4, 0xd

    if-eq v0, v4, :cond_0

    if-ne v0, v2, :cond_2

    :cond_0
    iget v5, p0, Lr5/c;->h:I

    add-int/2addr v5, v3

    iput v5, p0, Lr5/c;->h:I

    iput v3, p0, Lr5/c;->i:I

    add-int/lit8 v1, v1, 0x2

    iget-object v5, p0, Lr5/c;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    iget-object v1, p0, Lr5/c;->a:Ljava/lang/String;

    iget v5, p0, Lr5/c;->g:I

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_1

    if-ne v1, v2, :cond_2

    :cond_1
    if-eq v0, v1, :cond_2

    iget v0, p0, Lr5/c;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lr5/c;->g:I

    :cond_2
    return-void
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Lr5/c;->g:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lr5/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr5/c;->a:Ljava/lang/String;

    iget p0, p0, Lr5/c;->g:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    :goto_0
    return p0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lr5/c;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Lr5/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    const-string v1, "xsi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "xdt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v1, "xs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_5
    const-string v1, "fn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Undefined prefix: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :pswitch_0
    const-string p0, "http://www.w3.org/2003/11/xquery-local-functions"

    return-object p0

    :pswitch_1
    const-string p0, "http://www.w3.org/2001/XMLSchema-instance"

    return-object p0

    :pswitch_2
    const-string p0, "http://www.w3.org/XML/1998/namespace"

    return-object p0

    :pswitch_3
    const-string p0, "http://www.w3.org/2003/11/xpath-datatypes"

    return-object p0

    :pswitch_4
    const-string p0, "http://www.w3.org/2001/XMLSchema"

    return-object p0

    :pswitch_5
    const-string p0, "http://www.w3.org/2002/11/xquery-functions"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xcc8 -> :sswitch_5
        0xefb -> :sswitch_4
        0x1cf08 -> :sswitch_3
        0x1d017 -> :sswitch_2
        0x1d0ce -> :sswitch_1
        0x625df6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/String;)Lr5/b$b;
    .locals 6

    iget v4, p0, Lr5/c;->h:I

    iget v5, p0, Lr5/c;->i:I

    const/4 v3, 0x0

    new-instance p0, Li5/y0;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    new-instance p1, Lr5/b$b;

    invoke-virtual {p0}, Li5/y0;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, p0}, Li5/z0;-><init>(Ljava/lang/String;Lorg/xml/sax/SAXException;Li5/y0;)V

    return-object p1
.end method

.method public final varargs g([Ljava/lang/String;)Z
    .locals 7

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v4, p1, v2

    :goto_1
    invoke-virtual {p0, v3}, Lr5/c;->d(I)I

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    const/16 v6, 0xd

    if-ne v5, v6, :cond_0

    goto :goto_3

    :cond_0
    iget v5, p0, Lr5/c;->g:I

    add-int/2addr v5, v3

    iget-object v6, p0, Lr5/c;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v5, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lr5/c;->a:Ljava/lang/String;

    iget v6, p0, Lr5/c;->g:I

    add-int/2addr v6, v3

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_2

    :goto_2
    return v1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    :goto_4
    add-int/lit8 p1, v3, -0x1

    if-lez v3, :cond_5

    invoke-virtual {p0}, Lr5/c;->b()V

    move v3, p1

    goto :goto_4

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final h()Ljava/lang/String;
    .locals 4

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xa

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v1

    invoke-static {v1}, Lj5/p;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0}, Lr5/c;->b()V

    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v3

    invoke-static {v3}, Lj5/p;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0}, Lr5/c;->d(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v0, "Expected non-colonized name"

    invoke-virtual {p0, v0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lr5/c;->b()V

    goto :goto_0
.end method

.method public final i(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lr5/h;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr5/c;->c:Z

    const-string v1, "/"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "$"

    iget-object v3, p0, Lr5/c;->d:Ljava/lang/String;

    const-string v4, "//"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "."

    if-nez v5, :cond_4

    filled-new-array {v8, v4}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    filled-new-array {v2, v3, v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    filled-new-array {v8, v1}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    goto :goto_3

    :cond_3
    :goto_1
    invoke-static {v0, v0, v6, v6}, Lr5/c;->a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;

    move-result-object v1

    goto/16 :goto_9

    :cond_4
    :goto_2
    move v2, v7

    :goto_3
    move v5, v0

    move-object v3, v6

    :cond_5
    :goto_4
    const-string v9, "attribute"

    const-string v10, "::"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "@"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_8

    :cond_6
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    if-nez v5, :cond_8

    if-eqz v2, :cond_7

    goto :goto_5

    :cond_7
    move v5, v0

    goto :goto_6

    :cond_8
    :goto_5
    move v5, v7

    goto :goto_6

    :cond_9
    const-string v9, "child"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lr5/c;->g([Ljava/lang/String;)Z

    invoke-virtual {p0}, Lr5/c;->j()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-static {v2, v0, v9, v3}, Lr5/c;->a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;

    move-result-object v3

    move v2, v0

    :goto_6
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v5, v0

    :goto_7
    move v2, v7

    goto :goto_4

    :cond_a
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v5, :cond_5

    goto :goto_7

    :cond_b
    :goto_8
    invoke-virtual {p0}, Lr5/c;->j()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-static {v2, v7, v1, v3}, Lr5/c;->a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;

    move-result-object v3

    :cond_c
    iput-boolean v5, p0, Lr5/c;->c:Z

    if-eqz v5, :cond_d

    iput-boolean v7, p0, Lr5/c;->c:Z

    new-instance v1, Ljavax/xml/namespace/QName;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0, v1, v3}, Lr5/c;->a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;

    move-result-object v3

    :cond_d
    invoke-static {v0, v0, v6, v3}, Lr5/c;->a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;

    move-result-object v1

    :goto_9
    invoke-static {v1}, Lr5/c;->c(Lr5/h;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lr5/c;->c:Z

    if-eqz v2, :cond_12

    iput-boolean v7, p0, Lr5/c;->b:Z

    :goto_a
    if-eqz v1, :cond_11

    iget-object p0, v1, Lr5/h;->e:Lr5/h;

    if-eqz p0, :cond_e

    iget-object p0, p0, Lr5/h;->e:Lr5/h;

    if-eqz p0, :cond_f

    :cond_e
    iget-boolean p0, v1, Lr5/h;->a:Z

    if-eqz p0, :cond_10

    :cond_f
    move p0, v7

    goto :goto_b

    :cond_10
    move p0, v0

    :goto_b
    iget-boolean v2, v1, Lr5/h;->b:Z

    iget-object v3, v1, Lr5/h;->d:Ljavax/xml/namespace/QName;

    invoke-static {v2, p0, v3, v6}, Lr5/c;->a(ZZLjavax/xml/namespace/QName;Lr5/h;)Lr5/h;

    move-result-object v6

    iget-object v1, v1, Lr5/h;->e:Lr5/h;

    goto :goto_a

    :cond_11
    invoke-static {v6}, Lr5/c;->c(Lr5/h;)V

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void

    :cond_13
    const-string p1, "Absolute paths unsupported"

    invoke-virtual {p0, p1}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0
.end method

.method public final j()Ljavax/xml/namespace/QName;
    .locals 4

    const-string v0, "*"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance p0, Ljavax/xml/namespace/QName;

    invoke-direct {p0, v2, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lr5/c;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v2}, Lr5/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance v3, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v1}, Lr5/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lr5/c;->h()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public final k()Ljava/lang/String;
    .locals 5

    const-string v0, "\""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x22

    goto :goto_0

    :cond_0
    const-string v0, "\'"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lr5/c;->g([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x27

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lr5/c;->d(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-virtual {p0, v2}, Lr5/c;->d(I)I

    move-result v3

    if-ne v3, v0, :cond_1

    invoke-virtual {p0}, Lr5/c;->b()V

    invoke-virtual {p0, v2}, Lr5/c;->d(I)I

    move-result v3

    if-eq v3, v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Lr5/c;->d(I)I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lr5/c;->b()V

    goto :goto_1

    :cond_2
    const-string v0, "Path terminated in URI literal"

    invoke-virtual {p0, v0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0

    :cond_3
    const-string v0, "Expected quote (\" or \')"

    invoke-virtual {p0, v0}, Lr5/c;->f(Ljava/lang/String;)Lr5/b$b;

    move-result-object p0

    throw p0
.end method
