.class public final Lm5/g1$m;
.super Lm5/g1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/g1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "m"
.end annotation


# instance fields
.field public A:[C

.field public final r:I

.field public final s:I

.field public final t:Z

.field public final u:Z

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Li5/z1;Lm5/h;)V
    .locals 5

    invoke-direct {p0, p3, p2}, Lm5/g1;-><init>(Lm5/h;Li5/z1;)V

    const/16 v0, 0x20

    iput v0, p0, Lm5/g1$m;->r:I

    const/4 v0, 0x5

    iput v0, p0, Lm5/g1$m;->s:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lm5/g1$m;->t:Z

    iput-boolean v0, p0, Lm5/g1$m;->u:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object v2, Li5/z1$a;->j1:Li5/z1$a;

    iget-object v3, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    sget-object v3, Li5/z1$a;->m1:Li5/z1$a;

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lm5/g1$m;->r:I

    :cond_1
    if-eqz p2, :cond_2

    sget-object v3, Li5/z1$a;->n1:Li5/z1$a;

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lm5/g1$m;->s:I

    :cond_2
    if-eqz p2, :cond_3

    sget-object v3, Li5/z1$a;->v1:Li5/z1$a;

    iget-object v4, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-boolean v1, p0, Lm5/g1$m;->t:Z

    :cond_3
    if-eqz p2, :cond_4

    sget-object v3, Li5/z1$a;->x:Li5/z1$a;

    iget-object p2, p2, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iput-boolean v1, p0, Lm5/g1$m;->u:Z

    :cond_4
    iput v0, p0, Lm5/g1$m;->z:I

    iput v0, p0, Lm5/g1$m;->y:I

    iput v0, p0, Lm5/g1$m;->x:I

    if-eqz p1, :cond_b

    if-nez v2, :cond_b

    invoke-static {p3, v0}, Lm5/z0;->s(Lm5/h;Z)Lm5/z0$d;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_5

    move-object v2, p3

    goto :goto_1

    :cond_5
    sget-object v2, Li5/t0;->c:Ljava/lang/Object;

    iget-object v3, p2, Lm5/z0$d;->i:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_1
    if-nez v2, :cond_6

    const-string v2, "1.0"

    :cond_6
    if-eqz p2, :cond_8

    sget-object v3, Li5/t0;->d:Ljava/lang/Object;

    iget-object p2, p2, Lm5/z0$d;->i:Ljava/util/HashMap;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "true"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    move v0, v1

    :cond_7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    :cond_8
    const-string p2, "<?xml version=\""

    invoke-virtual {p0, p2}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lm5/g1$m;->B(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\" encoding=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lm5/g1$m;->B(Ljava/lang/String;)V

    if-eqz p3, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, " standalone=\""

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "yes"

    goto :goto_2

    :cond_9
    const-string p3, "no"

    :goto_2
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "?>"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lm5/g1;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final A(CC)V
    .locals 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lm5/g1$m;->I(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm5/g1$m;->A:[C

    iget v1, p0, Lm5/g1$m;->y:I

    aput-char p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lm5/g1$m;->y:I

    aput-char p2, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Lm5/g1$m;->y:I

    return-void
.end method

.method public final B(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p0, v1}, Lm5/g1$m;->I(I)Z

    move-result v2

    if-nez v2, :cond_4

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    iget v2, p0, Lm5/g1$m;->y:I

    iget v3, p0, Lm5/g1$m;->z:I

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lm5/g1$m;->A:[C

    array-length v4, v3

    sub-int/2addr v4, v2

    if-ge v1, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v4, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lm5/g1$m;->A:[C

    invoke-virtual {p1, v4, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lm5/g1$m;->y:I

    add-int/2addr p1, v1

    iget-object v0, p0, Lm5/g1$m;->A:[C

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lm5/g1$m;->y:I

    goto :goto_2

    :cond_3
    :goto_1
    iget-object v3, p0, Lm5/g1$m;->A:[C

    invoke-virtual {p1, v0, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    iget p1, p0, Lm5/g1$m;->y:I

    add-int/2addr p1, v1

    iput p1, p0, Lm5/g1$m;->y:I

    :cond_4
    :goto_2
    return-void
.end method

.method public final C(Ljava/lang/String;)V
    .locals 1

    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lm5/g1$m;->z(C)V

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/g1$m;->z(C)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lm5/g1$m;->z(C)V

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lm5/g1$m;->z(C)V

    :goto_0
    return-void
.end method

.method public final D(Ljavax/xml/namespace/QName;Z)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "emitName does not support names with empty local part"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm5/g1;->o:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-object v1, p0, Lm5/g1;->n:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p0, v0}, Lm5/g1;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p0, v1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    const/16 p2, 0x3a

    invoke-virtual {p0, p2}, Lm5/g1$m;->z(C)V

    :cond_5
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    return-void
.end method

.method public final E()V
    .locals 4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p0}, Lm5/g1;->p()V

    :goto_0
    invoke-virtual {p0}, Lm5/g1;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lm5/g1;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lm5/g1;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lm5/g1;->s()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lm5/g1$m;->z(C)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "xmlns"

    invoke-virtual {p0, v3}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/16 v3, 0x3a

    invoke-virtual {p0, v3}, Lm5/g1$m;->z(C)V

    invoke-virtual {p0, v2}, Lm5/g1$m;->B(Ljava/lang/String;)V

    :cond_3
    const/16 v2, 0x3d

    const/16 v3, 0x22

    invoke-virtual {p0, v2, v3}, Lm5/g1$m;->A(CC)V

    invoke-virtual {p0, v1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lm5/g1$m;->F(Z)V

    invoke-virtual {p0, v3}, Lm5/g1$m;->z(C)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final F(Z)V
    .locals 4

    iget v0, p0, Lm5/g1$m;->w:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lm5/g1$m;->v:I

    :goto_0
    if-lez v0, :cond_7

    iget-object v2, p0, Lm5/g1$m;->A:[C

    aget-char v2, v2, v1

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1

    const-string v2, "&lt;"

    invoke-virtual {p0, v1, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/16 v3, 0x26

    if-ne v2, v3, :cond_2

    const-string v2, "&amp;"

    invoke-virtual {p0, v1, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/16 v3, 0x22

    if-ne v2, v3, :cond_3

    const-string v2, "&quot;"

    invoke-virtual {p0, v1, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Lm5/g1$m;->H(C)Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz p1, :cond_5

    iget-object v3, p0, Lm5/g1;->f:Li5/y1;

    iget-object v3, v3, Li5/y1;->a:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    :cond_5
    :goto_1
    iget-object v2, p0, Lm5/g1$m;->A:[C

    array-length v2, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final G()I
    .locals 1

    iget-object v0, p0, Lm5/g1$m;->A:[C

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, v0

    iget p0, p0, Lm5/g1$m;->x:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public final H(C)Z
    .locals 0

    iget-object p0, p0, Lm5/g1;->f:Li5/y1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Li5/y1;->a:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final I(I)Z
    .locals 2

    iput p1, p0, Lm5/g1$m;->w:I

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget v0, p0, Lm5/g1$m;->x:I

    if-gt v0, p1, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lm5/g1$m;->L(II)I

    :cond_1
    invoke-virtual {p0}, Lm5/g1$m;->G()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iput v1, p0, Lm5/g1$m;->z:I

    iput v1, p0, Lm5/g1$m;->y:I

    :cond_2
    iget v0, p0, Lm5/g1$m;->y:I

    iput v0, p0, Lm5/g1$m;->v:I

    iget v0, p0, Lm5/g1$m;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Lm5/g1$m;->x:I

    return v1
.end method

.method public final J([CII)I
    .locals 4

    if-gtz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    invoke-virtual {p0}, Lm5/g1$m;->G()I

    move-result v1

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p0}, Lm5/g1;->v()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lm5/g1$m;->G()I

    move-result v1

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-gtz p3, :cond_4

    goto :goto_4

    :cond_4
    if-ge v1, p3, :cond_5

    move p3, v1

    :cond_5
    iget v1, p0, Lm5/g1$m;->z:I

    iget v2, p0, Lm5/g1$m;->y:I

    if-ge v1, v2, :cond_6

    iget-object v0, p0, Lm5/g1$m;->A:[C

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lm5/g1$m;->A:[C

    array-length v3, v2

    sub-int/2addr v3, v1

    if-lt v3, p3, :cond_7

    invoke-static {v2, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_7
    invoke-static {v2, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lm5/g1$m;->A:[C

    add-int/2addr p2, v3

    sub-int v2, p3, v3

    invoke-static {v1, v0, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    iget p1, p0, Lm5/g1$m;->z:I

    add-int/2addr p1, p3

    iget-object p2, p0, Lm5/g1$m;->A:[C

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lm5/g1$m;->z:I

    iget p1, p0, Lm5/g1$m;->x:I

    add-int/2addr p1, p3

    iput p1, p0, Lm5/g1$m;->x:I

    return p3

    :cond_8
    :goto_4
    return v0
.end method

.method public final K(ILjava/lang/String;)I
    .locals 8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object p0, p0, Lm5/g1$m;->A:[C

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    aput-char p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_0
    iget v3, p0, Lm5/g1$m;->x:I

    if-le v1, v3, :cond_1

    invoke-virtual {p0, v1, p1}, Lm5/g1$m;->L(II)I

    move-result p1

    :cond_1
    iget v3, p0, Lm5/g1$m;->z:I

    iget v4, p0, Lm5/g1$m;->y:I

    if-le v3, v4, :cond_2

    if-lt p1, v3, :cond_2

    iget-object v4, p0, Lm5/g1$m;->A:[C

    sub-int v5, v3, v1

    sub-int v6, p1, v3

    invoke-static {v4, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lm5/g1$m;->z:I

    sub-int/2addr v3, v1

    iput v3, p0, Lm5/g1$m;->z:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lm5/g1$m;->A:[C

    array-length v5, v3

    sub-int/2addr v5, v4

    if-gt v1, v5, :cond_3

    add-int v5, p1, v1

    sub-int/2addr v4, p1

    invoke-static {v3, p1, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lm5/g1$m;->y:I

    add-int/2addr v3, v1

    iget-object v4, p0, Lm5/g1$m;->A:[C

    array-length v4, v4

    rem-int/2addr v3, v4

    iput v3, p0, Lm5/g1$m;->y:I

    goto :goto_0

    :cond_3
    add-int v6, v5, v4

    sub-int/2addr v6, p1

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_4

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lm5/g1$m;->A:[C

    add-int/lit8 v4, p1, 0x1

    add-int v6, v4, v1

    iget v7, p0, Lm5/g1$m;->y:I

    sub-int/2addr v7, p1

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v5

    invoke-static {v3, v4, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lm5/g1$m;->y:I

    goto :goto_0

    :cond_4
    sub-int v6, v4, p1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v4

    sub-int/2addr v5, p1

    sub-int/2addr v4, v6

    sub-int v7, v1, v5

    add-int/lit8 v7, v7, 0x1

    invoke-static {v3, v4, v3, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lm5/g1$m;->A:[C

    invoke-virtual {p2, v5, v0, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v6, v1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lm5/g1$m;->y:I

    move v0, v5

    :goto_0
    iget-object v3, p0, Lm5/g1$m;->A:[C

    invoke-virtual {p2, v2, v0, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    iget p2, p0, Lm5/g1$m;->x:I

    sub-int/2addr p2, v1

    iput p2, p0, Lm5/g1$m;->x:I

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lm5/g1$m;->A:[C

    array-length p0, p0

    rem-int/2addr p1, p0

    return p1
.end method

.method public final L(II)I
    .locals 7

    iget-object v0, p0, Lm5/g1$m;->A:[C

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1000

    goto :goto_0

    :cond_0
    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    :goto_0
    invoke-virtual {p0}, Lm5/g1$m;->G()I

    move-result v2

    :goto_1
    int-to-long v3, v2

    sub-long v3, v0, v3

    int-to-long v5, p1

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    const-wide/16 v3, 0x2

    mul-long/2addr v0, v3

    goto :goto_1

    :cond_1
    const-wide/32 v3, 0x7ffffff7

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    new-array v0, p1, [C

    if-lez v2, :cond_4

    iget v1, p0, Lm5/g1$m;->y:I

    iget v3, p0, Lm5/g1$m;->z:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lm5/g1$m;->A:[C

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lm5/g1$m;->z:I

    sub-int/2addr p2, v1

    goto :goto_2

    :cond_2
    sub-int v1, v2, v1

    iget-object v5, p0, Lm5/g1$m;->A:[C

    invoke-static {v5, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lm5/g1$m;->A:[C

    iget v5, p0, Lm5/g1$m;->y:I

    invoke-static {v3, v4, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lm5/g1$m;->z:I

    if-lt p2, v3, :cond_3

    sub-int/2addr p2, v3

    goto :goto_2

    :cond_3
    add-int/2addr p2, v1

    :goto_2
    iput v4, p0, Lm5/g1$m;->z:I

    iput v2, p0, Lm5/g1$m;->y:I

    iget v1, p0, Lm5/g1$m;->x:I

    iget-object v2, p0, Lm5/g1$m;->A:[C

    array-length v2, v2

    sub-int/2addr p1, v2

    add-int/2addr p1, v1

    iput p1, p0, Lm5/g1$m;->x:I

    goto :goto_3

    :cond_4
    iput p1, p0, Lm5/g1$m;->x:I

    :goto_3
    iput-object v0, p0, Lm5/g1$m;->A:[C

    return p2
.end method

.method public final d(Lm5/g1$h;)V
    .locals 8

    const-string v0, "<!--"

    invoke-virtual {p0, v0}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    invoke-virtual {p0, p1}, Lm5/g1$m;->y(Lm5/g1$h;)V

    invoke-virtual {p1}, Lm5/g1$h;->o()V

    iget p1, p0, Lm5/g1$m;->w:I

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lm5/g1$m;->v:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const-string v4, " "

    const/16 v5, 0x2d

    if-lez p1, :cond_5

    iget-object v6, p0, Lm5/g1$m;->A:[C

    aget-char v6, v6, v0

    invoke-static {v6}, Lm5/g1;->o(C)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v3, "?"

    invoke-virtual {p0, v0, v3}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v0

    goto :goto_2

    :cond_1
    if-ne v6, v5, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0, v4}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v0

    :goto_1
    move v2, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lm5/g1$m;->A:[C

    array-length v3, v3

    if-ne v0, v3, :cond_4

    move v0, v1

    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_5
    iget p1, p0, Lm5/g1$m;->v:I

    iget v0, p0, Lm5/g1$m;->w:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v3

    iget-object v0, p0, Lm5/g1$m;->A:[C

    array-length v1, v0

    rem-int/2addr p1, v1

    aget-char v0, v0, p1

    if-ne v0, v5, :cond_6

    invoke-virtual {p0, p1, v4}, Lm5/g1$m;->K(ILjava/lang/String;)I

    :cond_6
    :goto_3
    const-string p1, "-->"

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "<!DOCTYPE "

    invoke-virtual {p0, v0}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    const-string p1, " SYSTEM "

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lm5/g1$m;->C(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, " PUBLIC "

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lm5/g1$m;->C(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lm5/g1$m;->C(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string p1, ">"

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    sget-object p1, Lm5/g1;->q:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Lm5/g1$h;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 7

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lm5/g1$m;->z(C)V

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lm5/g1$m;->D(Ljavax/xml/namespace/QName;Z)V

    iget-boolean v0, p0, Lm5/g1;->i:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm5/g1$m;->E()V

    :cond_0
    move v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/namespace/QName;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x20

    invoke-virtual {p0, v6}, Lm5/g1$m;->z(C)V

    invoke-virtual {p0, v3, v4}, Lm5/g1$m;->D(Ljavax/xml/namespace/QName;Z)V

    const/16 v3, 0x3d

    const/16 v6, 0x22

    invoke-virtual {p0, v3, v6}, Lm5/g1$m;->A(CC)V

    invoke-virtual {p0, v5}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lm5/g1$m;->F(Z)V

    invoke-virtual {p0, v6}, Lm5/g1$m;->z(C)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lm5/g1$m;->E()V

    :cond_2
    invoke-virtual {p1}, Lm5/g1$h;->h()Z

    move-result p2

    const/16 p3, 0x3e

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lm5/g1$h;->i()Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x2f

    invoke-virtual {p0, p1, p3}, Lm5/g1$m;->A(CC)V

    return v4

    :cond_3
    invoke-virtual {p0, p3}, Lm5/g1$m;->z(C)V

    return v1
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h(Lm5/g1$h;)V
    .locals 2

    const/16 v0, 0x3c

    const/16 v1, 0x2f

    invoke-virtual {p0, v0, v1}, Lm5/g1$m;->A(CC)V

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lm5/g1$m;->D(Ljavax/xml/namespace/QName;Z)V

    const/16 p1, 0x3e

    invoke-virtual {p0, p1}, Lm5/g1$m;->z(C)V

    return-void
.end method

.method public final i(Lm5/g1$h;)V
    .locals 7

    const-string v0, "<?"

    invoke-virtual {p0, v0}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/g1$h;->e()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p1}, Lm5/g1$h;->p()V

    invoke-virtual {p1}, Lm5/g1$h;->n()Z

    invoke-virtual {p1}, Lm5/g1$h;->j()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " "

    invoke-virtual {p0, v0}, Lm5/g1$m;->B(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lm5/g1$m;->y(Lm5/g1$h;)V

    iget v1, p0, Lm5/g1$m;->w:I

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    iget v2, p0, Lm5/g1$m;->v:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lez v1, :cond_6

    iget-object v5, p0, Lm5/g1$m;->A:[C

    aget-char v5, v5, v2

    invoke-static {v5}, Lm5/g1;->o(C)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "?"

    invoke-virtual {p0, v2, v6}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    :cond_1
    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    if-eqz v4, :cond_2

    invoke-virtual {p0, v2, v0}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    :goto_1
    move v4, v3

    goto :goto_3

    :cond_3
    const/16 v4, 0x3f

    if-ne v5, v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    add-int/lit8 v2, v2, 0x1

    :goto_3
    iget-object v5, p0, Lm5/g1$m;->A:[C

    array-length v5, v5

    if-ne v2, v5, :cond_5

    move v2, v3

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_6
    :goto_4
    invoke-virtual {p1}, Lm5/g1$h;->o()V

    const-string p1, "?>"

    invoke-virtual {p0, p1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    return-void
.end method

.method public final j()V
    .locals 0

    return-void
.end method

.method public final k(Lm5/g1$h;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lm5/g1$m;->t:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lm5/g1$h;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lm5/g1$m;->y(Lm5/g1$h;)V

    iget v4, v0, Lm5/g1$m;->w:I

    if-nez v4, :cond_1

    goto/16 :goto_e

    :cond_1
    iget v5, v0, Lm5/g1$m;->v:I

    iget-object v6, v0, Lm5/g1$m;->A:[C

    array-length v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    iget-boolean v11, v0, Lm5/g1$m;->u:Z

    const/16 v12, 0xd

    const/16 v13, 0x26

    const/16 v14, 0x3c

    const/16 v15, 0x3e

    const/16 v3, 0x5d

    if-lez v4, :cond_8

    iget-object v2, v0, Lm5/g1$m;->A:[C

    aget-char v2, v2, v5

    if-eq v2, v14, :cond_5

    if-ne v2, v13, :cond_2

    goto :goto_3

    :cond_2
    if-ne v9, v3, :cond_4

    if-ne v10, v3, :cond_4

    if-ne v2, v15, :cond_4

    :cond_3
    :goto_2
    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    invoke-static {v2}, Lm5/g1;->o(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0, v2}, Lm5/g1$m;->H(C)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v11, :cond_6

    if-ne v2, v12, :cond_6

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v7, v7, 0x1

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_7

    const/4 v5, 0x0

    :cond_7
    add-int/lit8 v4, v4, -0x1

    move v9, v10

    move v10, v2

    goto :goto_1

    :cond_8
    iget v2, v0, Lm5/g1$m;->s:I

    if-nez v1, :cond_9

    if-nez v7, :cond_9

    if-nez v8, :cond_9

    if-ge v7, v2, :cond_9

    goto/16 :goto_e

    :cond_9
    iget v4, v0, Lm5/g1$m;->v:I

    const-string v5, "?"

    if-nez v1, :cond_12

    iget v1, v0, Lm5/g1$m;->w:I

    iget v6, v0, Lm5/g1$m;->r:I

    if-le v1, v6, :cond_a

    if-le v7, v2, :cond_a

    goto/16 :goto_8

    :cond_a
    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_5
    if-lez v1, :cond_1b

    iget-object v7, v0, Lm5/g1$m;->A:[C

    aget-char v7, v7, v4

    if-ne v7, v14, :cond_b

    const-string v2, "&lt;"

    invoke-virtual {v0, v4, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_b
    if-ne v7, v13, :cond_c

    const-string v2, "&amp;"

    invoke-virtual {v0, v4, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_c
    if-ne v7, v15, :cond_d

    if-ne v6, v3, :cond_d

    if-ne v2, v3, :cond_d

    const-string v2, "&gt;"

    invoke-virtual {v0, v4, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_d
    invoke-static {v7}, Lm5/g1;->o(C)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v4, v5}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_e
    if-nez v11, :cond_f

    if-ne v7, v12, :cond_f

    const-string v2, "&#13;"

    invoke-virtual {v0, v4, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_f
    invoke-virtual {v0, v7}, Lm5/g1$m;->H(C)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lm5/g1;->f:Li5/y1;

    iget-object v2, v2, Li5/y1;->a:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    goto :goto_6

    :cond_10
    add-int/lit8 v2, v4, 0x1

    :goto_6
    iget-object v4, v0, Lm5/g1$m;->A:[C

    array-length v4, v4

    if-ne v2, v4, :cond_11

    const/4 v4, 0x0

    goto :goto_7

    :cond_11
    move v4, v2

    :goto_7
    add-int/lit8 v1, v1, -0x1

    move v2, v6

    move v6, v7

    goto :goto_5

    :cond_12
    :goto_8
    iget-object v1, v0, Lm5/g1$m;->A:[C

    aget-char v1, v1, v4

    if-ne v1, v3, :cond_13

    const/4 v1, 0x1

    goto :goto_9

    :cond_13
    const/4 v1, 0x0

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "<![CDATA["

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lm5/g1$m;->A:[C

    aget-char v6, v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v2

    iget-object v4, v0, Lm5/g1$m;->A:[C

    aget-char v6, v4, v2

    if-ne v6, v3, :cond_14

    const/4 v6, 0x1

    const/16 v16, 0x1

    goto :goto_a

    :cond_14
    const/4 v6, 0x1

    const/16 v16, 0x0

    :goto_a
    add-int/2addr v2, v6

    array-length v4, v4

    if-ne v2, v4, :cond_15

    const/4 v2, 0x0

    :cond_15
    iget v4, v0, Lm5/g1$m;->w:I

    add-int/lit8 v4, v4, -0x2

    :goto_b
    if-lez v4, :cond_1a

    iget-object v7, v0, Lm5/g1$m;->A:[C

    aget-char v7, v7, v2

    if-ne v7, v15, :cond_16

    if-eqz v1, :cond_16

    if-eqz v16, :cond_16

    const-string v1, "]]>><![CDATA["

    invoke-virtual {v0, v2, v1}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v1

    goto :goto_c

    :cond_16
    invoke-static {v7}, Lm5/g1;->o(C)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual {v0, v2, v5}, Lm5/g1$m;->K(ILjava/lang/String;)I

    move-result v1

    goto :goto_c

    :cond_17
    add-int/lit8 v1, v2, 0x1

    :goto_c
    if-ne v7, v3, :cond_18

    move v2, v6

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    :goto_d
    iget-object v7, v0, Lm5/g1$m;->A:[C

    array-length v7, v7

    if-ne v1, v7, :cond_19

    const/4 v1, 0x0

    :cond_19
    add-int/lit8 v4, v4, -0x1

    move/from16 v17, v2

    move v2, v1

    move/from16 v1, v16

    move/from16 v16, v17

    goto :goto_b

    :cond_1a
    const-string v1, "]]>"

    invoke-virtual {v0, v1}, Lm5/g1$m;->B(Ljava/lang/String;)V

    :cond_1b
    :goto_e
    return-void
.end method

.method public final y(Lm5/g1$h;)V
    .locals 7

    invoke-virtual {p1}, Lm5/g1$h;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lm5/g1$h;->c()Ljava/lang/Object;

    move-result-object v0

    iget v2, p1, Lm5/g1$h;->b:I

    invoke-virtual {p0, v2}, Lm5/g1$m;->I(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lm5/g1$m;->y:I

    iget v4, p0, Lm5/g1$m;->z:I

    if-le v3, v4, :cond_2

    iget-object v4, p0, Lm5/g1$m;->A:[C

    array-length v5, v4

    sub-int/2addr v5, v3

    if-ge v2, v5, :cond_1

    goto :goto_0

    :cond_1
    iget v6, p1, Lm5/g1$h;->a:I

    invoke-static {v4, v3, v0, v6, v5}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget-object v3, p0, Lm5/g1$m;->A:[C

    iget p1, p1, Lm5/g1$h;->a:I

    add-int/2addr p1, v5

    sub-int v4, v2, v5

    invoke-static {v3, v1, v0, p1, v4}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget p1, p0, Lm5/g1$m;->y:I

    add-int/2addr p1, v2

    iget-object v0, p0, Lm5/g1$m;->A:[C

    array-length v0, v0

    rem-int/2addr p1, v0

    iput p1, p0, Lm5/g1$m;->y:I

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lm5/g1$m;->A:[C

    iget p1, p1, Lm5/g1$h;->a:I

    invoke-static {v1, v3, v0, p1, v2}, Lm5/f;->b([CILjava/lang/Object;II)V

    iget p1, p0, Lm5/g1$m;->y:I

    add-int/2addr p1, v2

    iput p1, p0, Lm5/g1$m;->y:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lm5/g1$m;->I(I)Z

    :goto_1
    return-void
.end method

.method public final z(C)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm5/g1$m;->I(I)Z

    iget-object v1, p0, Lm5/g1$m;->A:[C

    iget v2, p0, Lm5/g1$m;->y:I

    aput-char p1, v1, v2

    add-int/2addr v2, v0

    array-length p1, v1

    rem-int/2addr v2, p1

    iput v2, p0, Lm5/g1$m;->y:I

    return-void
.end method
