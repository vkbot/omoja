.class public abstract Lorg/apache/xmlbeans/impl/values/h2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/values/b0;
.implements Ljava/io/Serializable;
.implements Lorg/apache/xmlbeans/XmlObject;
.implements Li5/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/values/h2$b;,
        Lorg/apache/xmlbeans/impl/values/h2$c;,
        Lorg/apache/xmlbeans/impl/values/h2$a;,
        Lorg/apache/xmlbeans/impl/values/h2$d;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

.field private static final FLAGS_DATED:I = 0x2a0

.field private static final FLAGS_ELEMENT:I = 0x7

.field private static final FLAG_ATTRIBUTE:I = 0x8

.field private static final FLAG_COMPLEXCONTENT:I = 0x4000

.field private static final FLAG_COMPLEXTYPE:I = 0x2000

.field private static final FLAG_ELEMENT_DATED:I = 0x200

.field private static final FLAG_FIXED:I = 0x4

.field private static final FLAG_HASDEFAULT:I = 0x2

.field private static final FLAG_IMMUTABLE:I = 0x1000

.field private static final FLAG_ISDEFAULT:I = 0x100

.field private static final FLAG_NIL:I = 0x40

.field private static final FLAG_NILLABLE:I = 0x1

.field private static final FLAG_NIL_DATED:I = 0x80

.field private static final FLAG_NOT_VARIABLE:I = 0x8000

.field private static final FLAG_ORPHANED:I = 0x800

.field private static final FLAG_SETTINGDEFAULT:I = 0x400

.field private static final FLAG_STORE:I = 0x10

.field private static final FLAG_VALIDATE_ON_SET:I = 0x10000

.field private static final FLAG_VALUE_DATED:I = 0x20

.field public static final KIND_SETTERHELPER_ARRAYITEM:S = 0x2s

.field public static final KIND_SETTERHELPER_SINGLETON:S = 0x1s

.field public static final MAJOR_VERSION_NUMBER:S = 0x1s

.field public static final MINOR_VERSION_NUMBER:S = 0x1s

.field private static final _max:Ljava/math/BigInteger;

.field private static final _min:Ljava/math/BigInteger;

.field private static final _toStringOptions:Li5/z1;

.field public static final _voorVc:Lj5/m;


# instance fields
.field private _flags:I

.field private _textsource:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/h2$d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_voorVc:Lj5/m;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_max:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_min:Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/h2;->buildInnerPrettyOptions()Li5/z1;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_toStringOptions:Li5/z1;

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xmlbeans/XmlObject;

    sput-object v0, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x41

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method private static _typedArray([Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 5

    array-length v0, p0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-interface {v1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v1

    sget-object v2, Lorg/apache/xmlbeans/XmlObject;->z0:Li5/c0;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface {v1}, Li5/c0;->x0()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_4

    aget-object v4, p0, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v4

    invoke-interface {v4}, Li5/c0;->x0()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object p0

    :cond_2
    aget-object v4, p0, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v4

    invoke-interface {v1, v4}, Li5/c0;->A0(Li5/c0;)Li5/c0;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Li5/c0;->X()Ljava/lang/Class;

    move-result-object v3

    :goto_1
    if-nez v3, :cond_6

    invoke-interface {v1}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    return-object p0

    :cond_5
    invoke-interface {v1}, Li5/c0;->X()Ljava/lang/Class;

    move-result-object v3

    goto :goto_1

    :cond_6
    array-length v1, p0

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    check-cast v1, [Lorg/apache/xmlbeans/XmlObject;

    array-length v2, p0

    invoke-static {p0, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_7
    :goto_2
    return-object p0
.end method

.method private apply_wscanon(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_wscanon_rule()I

    move-result p0

    invoke-static {p0, p1}, Ld/f;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildInnerPrettyOptions()Li5/z1;
    .locals 3

    new-instance v0, Li5/z1;

    invoke-direct {v0}, Li5/z1;-><init>()V

    sget-object v1, Li5/z1$a;->i1:Li5/z1$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->x:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->b1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    sget-object v1, Li5/z1$a;->c1:Li5/z1$a;

    invoke-virtual {v0, v1, v2}, Li5/z1;->a(Li5/z1$a;Z)V

    return-object v0
.end method

.method private check_element_dated()V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v0, 0x200

    const v2, 0x8000

    if-eqz v1, :cond_1

    and-int v1, v0, v2

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/a0;->B()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v1, -0x208

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    goto :goto_0

    :cond_0
    new-instance p0, Lf3/a;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int v1, v0, v2

    if-eqz v1, :cond_2

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    :cond_2
    return-void
.end method

.method private comparable_value_spaces(Li5/c0;Li5/c0;)Z
    .locals 3

    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    invoke-interface {p2}, Li5/c0;->f0()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result p0

    invoke-interface {p2}, Li5/c0;->getContentType()I

    move-result p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Li5/c0;->f0()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-interface {p2}, Li5/c0;->f0()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Li5/c0;->B0()I

    move-result p0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_3

    invoke-interface {p2}, Li5/c0;->B0()I

    move-result p0

    if-ne p0, v2, :cond_3

    return v0

    :cond_3
    invoke-interface {p1}, Li5/c0;->B0()I

    move-result p0

    if-eq p0, v2, :cond_5

    invoke-interface {p2}, Li5/c0;->B0()I

    move-result p0

    if-ne p0, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    invoke-interface {p2}, Li5/c0;->d0()Li5/c0;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method private compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->instanceType()Li5/c0;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Li5/g0;

    invoke-interface {v2}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v2
    :try_end_0
    .catch Lorg/apache/xmlbeans/impl/values/x2; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz v1, :cond_5

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Li5/c0;->f0()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Li5/c0;->C()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Li5/c0;->f0()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Li5/c0;->C()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Li5/c0;->d0()Li5/c0;

    move-result-object v1

    invoke-interface {v2}, Li5/c0;->d0()Li5/c0;

    move-result-object v2

    invoke-interface {v1}, Li5/c0;->e()I

    move-result v1

    invoke-interface {v2}, Li5/c0;->e()I

    move-result v2

    if-eq v1, v2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compare_to(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p0

    return p0

    :catch_0
    :cond_5
    :goto_0
    return v0
.end method

.method private ensureStore()Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Li5/z1;

    invoke-direct {v1}, Li5/z1;-><init>()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    sget-object v2, Li5/z1$a;->F1:Li5/z1$a;

    iget-object v3, v1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v3, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lorg/apache/xmlbeans/XmlObject;->y0:Lorg/apache/xmlbeans/impl/schema/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Li5/l0;->a()Lorg/apache/xmlbeans/impl/schema/t;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/schema/g0;->i()Li5/c0;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Li5/d0;->newInstance(Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Li5/p0;->C()Li5/p0$a;

    invoke-interface {v1, v0}, Li5/p0;->l0(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Li5/p0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method private getBaseArray(Li5/k;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/k;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/values/h2;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/a0;->f(Li5/k;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/namespace/QName;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/xmlbeans/impl/values/h2;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/a0;->b(Ljavax/xml/namespace/QName;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method private getPrimitiveTypeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->x0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    :cond_0
    invoke-interface {p0}, Li5/c0;->d0()Li5/c0;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "complex"

    return-object p0

    :cond_1
    invoke-interface {p0}, Li5/c0;->getName()Ljavax/xml/namespace/QName;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRootXmlObject()Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Li5/p0;->close()V

    :cond_0
    return-object p0

    :cond_1
    :try_start_0
    invoke-interface {v0}, Li5/p0;->j0()V

    invoke-interface {v0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Li5/p0;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method private getTargetForSetter(Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/h2;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Cannot set the value of an immutable XmlObject"

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown kindSetterHelper: "

    invoke-static {p1, p3}, La4/a;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p3

    invoke-interface {p3, p2, p1}, Lorg/apache/xmlbeans/impl/values/a0;->C(ILjavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p2

    check-cast p2, Lorg/apache/xmlbeans/impl/values/h2;

    if-nez p2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/a0;->F(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Lorg/apache/xmlbeans/impl/values/h2;

    :cond_4
    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result p0

    if-nez p0, :cond_5

    return-object p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isRootXmlObject()Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object p0

    if-nez p0, :cond_1

    if-eqz p0, :cond_0

    invoke-interface {p0}, Li5/p0;->close()V

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Li5/p0;->X0()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {p0}, Li5/p0;->close()V

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static java_value(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->isNil()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Li5/i0;

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    check-cast p0, Li5/g0;

    invoke-interface {p0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->B0()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-interface {p0}, Li5/g0;->getListValue()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0}, Li5/c0;->d0()Li5/c0;

    move-result-object v1

    invoke-interface {v1}, Li5/c0;->e()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-interface {p0}, Li5/g0;->getCalendarValue()Ljava/util/Calendar;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p0}, Li5/g0;->getGDurationValue()Li5/g;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    const/16 v1, 0x10

    if-eq v0, v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0x40

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    invoke-interface {p0}, Li5/g0;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p0}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-interface {p0}, Li5/g0;->getLongValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-interface {p0}, Li5/g0;->getIntValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-interface {p0}, Li5/g0;->getShortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-interface {p0}, Li5/g0;->getByteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p0}, Li5/g0;->getDoubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-interface {p0}, Li5/g0;->getFloatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-interface {p0}, Li5/g0;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_9
    invoke-interface {p0}, Li5/g0;->getByteArrayValue()[B

    move-result-object p0

    return-object p0

    :pswitch_a
    invoke-interface {p0}, Li5/g0;->getBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p0

    :goto_1
    :pswitch_b
    invoke-interface {p0}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_b
        :pswitch_6
        :pswitch_5
        :pswitch_2
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf4240
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private static makeInnerOptions(Li5/z1;)Li5/z1;
    .locals 2

    new-instance v0, Li5/z1;

    invoke-direct {v0, p0}, Li5/z1;-><init>(Li5/z1;)V

    sget-object p0, Li5/z1$a;->i1:Li5/z1$a;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Li5/z1;->a(Li5/z1$a;Z)V

    return-object v0
.end method

.method private objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->getTargetForSetter(Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p2

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/impl/values/a0;->d(Lorg/apache/xmlbeans/impl/values/a0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/a0;->A(Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0
.end method

.method private preCheck()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->l()Lm5/z0;

    move-result-object p0

    iget-boolean p0, p0, Lm5/z0;->a:Z

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private schemaField()Li5/s;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->V()Li5/s;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->i()Li5/s;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private set_commit()V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit16 v2, v0, -0x141

    iput v2, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2

    and-int/lit16 v0, v0, -0x3e1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/a0;->M()V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/a0;->y()V

    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v0, v0, -0x2a1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private set_prepare()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_element_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p0, p0, 0x1000

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/impl/values/a0;->d(Lorg/apache/xmlbeans/impl/values/a0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/a0;->A(Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    return-object p0
.end method

.method private static underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/h2;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/apache/xmlbeans/impl/values/h2;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    return-object p0

    :cond_1
    :goto_0
    instance-of v0, p0, Li5/b;

    if-eqz v0, :cond_2

    check-cast p0, Li5/b;

    invoke-interface {p0}, Li5/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/apache/xmlbeans/impl/values/h2;

    if-eqz v0, :cond_3

    check-cast p0, Lorg/apache/xmlbeans/impl/values/h2;

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Non-native implementations of XmlObject should extend FilterXmlObject or implement DelegateXmlObject"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private update_from_wscanon_text(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/a0;->s()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p1, p1, -0x441

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void

    :catchall_0
    move-exception p1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    throw p1

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_text(Ljava/lang/String;)V

    iget p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p1, p1, -0x141

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method private validate_immutable(Li5/z1;)Z
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Li5/z1$a;->E1:Li5/z1$a;

    iget-object v1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    :goto_0
    new-instance v1, Lj5/q;

    invoke-direct {v1, v0}, Lj5/q;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->f0()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    if-eqz p1, :cond_1

    sget-object v0, Li5/z1$a;->K1:Li5/z1$a;

    iget-object p1, p1, Li5/z1;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p1

    invoke-interface {p1}, Li5/c0;->getProperties()[Li5/a0;

    move-result-object p1

    array-length v0, p1

    move v4, v2

    :goto_1
    if-ge v4, v0, :cond_4

    aget-object v5, p1, v4

    invoke-interface {v5}, Li5/a0;->a()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-lez v6, :cond_3

    invoke-interface {v5}, Li5/a0;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "cvc-complex-type.4"

    invoke-static {v6, v5, p0}, Li5/y0;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Li5/y0;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj5/q;->a(Li5/y0;)Z

    goto :goto_2

    :cond_2
    invoke-interface {v5}, Li5/a0;->a()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v5}, Li5/a0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    invoke-static {v5}, Lj5/i;->f(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "cvc-complex-type.2.4c"

    invoke-static {v6, v5, p0}, Li5/y0;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Li5/y0;

    move-result-object v5

    invoke-virtual {v1, v5}, Lj5/q;->a(Li5/y0;)Z

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p1

    invoke-interface {p1}, Li5/c0;->getContentType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    iget-object p0, v1, Lj5/q;->r:Li5/y0;

    if-eqz p0, :cond_5

    move v2, v3

    :cond_5
    xor-int/lit8 p0, v2, 0x1

    return p0

    :cond_6
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    new-instance v0, Lorg/apache/xmlbeans/impl/values/h2$a;

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/h2$a;-><init>(Lj5/q;Lorg/apache/xmlbeans/XmlObject;)V

    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->validate_simpleval(Ljava/lang/String;Lj5/m;)V

    iget-object p0, v1, Lj5/q;->r:Li5/y0;

    if-eqz p0, :cond_8

    move v2, v3

    :cond_8
    xor-int/lit8 p0, v2, 0x1

    return p0
.end method

.method private valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->instanceType()Li5/c0;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Li5/g0;

    invoke-interface {v1}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->comparable_value_spaces(Li5/c0;Li5/c0;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->B0()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/apache/xmlbeans/impl/values/h2;->equal_to(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->equal_to(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v2
.end method


# virtual methods
.method public final _copy()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->_copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public final _copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/a0;->g()Li5/d0;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {v1, v0, p0, p1}, Lorg/apache/xmlbeans/impl/values/a0;->w(Li5/d0;Li5/c0;Li5/z1;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0
.end method

.method public _isComplexContent()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public _isComplexType()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final _set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/xmlbeans/impl/values/a0;->d(Lorg/apache/xmlbeans/impl/values/a0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/b0;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/a0;->A(Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set the value of an immutable XmlObject"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public _validateOnSet()Z
    .locals 1

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final attach_store(Lorg/apache/xmlbeans/impl/values/a0;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_2

    or-int/lit16 v0, v0, 0x2b0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/a0;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    :cond_0
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/values/a0;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public build_nil()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final build_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v0, v0, 0x140

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public changeType(Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    if-eqz p1, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/xmlbeans/impl/values/a0;->A(Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XML Value Objects cannot have thier type changed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type (null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final check_dated()V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v0, 0x2a0

    if-eqz v1, :cond_9

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_8

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_element_dated()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/a0;->B()I

    move-result v0

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v1, -0x208

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    :cond_0
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/values/a0;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_nil()V

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    if-nez v0, :cond_7

    :cond_4
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v0, v0, 0x4000

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_wscanon_text()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    new-instance v1, Lorg/apache/xmlbeans/impl/values/x;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/impl/values/a0;)V

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V

    :try_start_0
    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->update_from_wscanon_text(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    throw p0

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->update_from_complex_content()V

    :cond_7
    :goto_3
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    goto :goto_4

    :cond_8
    new-instance p0, Lf3/a;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_9
    :goto_4
    return-void
.end method

.method public final check_orphaned()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->is_orphaned()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lf3/a;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compareValue(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final compareValue(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_1
    invoke-interface {p1}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_2
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {}, Lj5/c;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-interface {p1}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {}, Lj5/c;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_0

    :catchall_4
    move-exception p0

    move v0, v1

    :goto_0
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :catchall_5
    move-exception p0

    move v0, v1

    :goto_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0

    :catchall_6
    move-exception p0

    move v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move v0, v1

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->compareValueImpl(Lorg/apache/xmlbeans/XmlObject;)I

    move-result p0

    monitor-exit v1

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    throw p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_3
    :try_start_d
    new-instance p1, Li5/c2;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_4
    if-eqz v0, :cond_5

    invoke-static {}, Lj5/c;->b()V

    :cond_5
    throw p0
.end method

.method public compare_to(Lorg/apache/xmlbeans/XmlObject;)I
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->equal_to(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public abstract compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;
.end method

.method public final copy()Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_copy()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 6
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->preCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->_copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->_copy(Li5/z1;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public create_attribute_user(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->g()Li5/d0;

    move-result-object p0

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->C()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->p:Lorg/apache/xmlbeans/impl/schema/r;

    :goto_0
    move-object v1, v2

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/r;->B:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a0;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Li5/a0;->getType()Li5/c0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/r;->F:Li5/k;

    invoke-virtual {v0, p1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_2

    :cond_3
    invoke-interface {p0, p1}, Li5/d0;->findAttribute(Ljavax/xml/namespace/QName;)Li5/t;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Li5/s;->getType()Li5/c0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_2

    :cond_4
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_2

    :cond_5
    :goto_1
    sget-object p0, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_0

    :goto_2
    if-eqz p0, :cond_6

    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/schema/r;->B(Li5/a0;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    :cond_6
    check-cast v2, Lorg/apache/xmlbeans/impl/values/b0;

    return-object v2
.end method

.method public create_element_user(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/b0;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->g()Li5/d0;

    move-result-object p0

    iget-boolean v1, v0, Lorg/apache/xmlbeans/impl/schema/r;->L:Z

    const/4 v2, 0x0

    if-nez v1, :cond_7

    iget v1, v0, Lorg/apache/xmlbeans/impl/schema/r;->H:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/schema/r;->x0()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lorg/apache/xmlbeans/impl/schema/r;->A:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/a0;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Li5/a0;->getType()Li5/c0;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v3, v0, Lorg/apache/xmlbeans/impl/schema/r;->E:Li5/k;

    invoke-virtual {v3, p1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v0, v0, Lorg/apache/xmlbeans/impl/schema/r;->G:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    goto :goto_1

    :cond_4
    :goto_0
    invoke-interface {p0, p1}, Li5/d0;->findElement(Ljavax/xml/namespace/QName;)Li5/u;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Li5/s;->getType()Li5/c0;

    move-result-object v0

    invoke-interface {p0, p1}, Li5/d0;->findDocumentType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v3, p1}, Li5/c0;->D0(Ljavax/xml/namespace/QName;)Li5/a0;

    move-result-object v1

    :cond_5
    move-object p1, v0

    goto :goto_1

    :cond_6
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    :goto_1
    if-eqz p2, :cond_8

    invoke-interface {p0, p2}, Li5/d0;->findType(Ljavax/xml/namespace/QName;)Li5/c0;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-interface {p1, p0}, Li5/c0;->G0(Li5/c0;)Z

    move-result p2

    if-eqz p2, :cond_8

    move-object p1, p0

    goto :goto_3

    :cond_7
    :goto_2
    sget-object p1, Lorg/apache/xmlbeans/impl/schema/a;->Q:Lorg/apache/xmlbeans/impl/schema/r;

    move-object v1, v2

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    check-cast p1, Lorg/apache/xmlbeans/impl/schema/r;

    invoke-virtual {p1, v1}, Lorg/apache/xmlbeans/impl/schema/r;->B(Li5/a0;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object v2

    :cond_9
    check-cast v2, Lorg/apache/xmlbeans/impl/values/b0;

    return-object v2
.end method

.method public disconnect_store()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit16 v0, v0, 0xaa0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method public documentProperties()Li5/t0;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/j2;->documentProperties()Li5/t0;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method public dump()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/j2;->dump()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method public elementFlags()I
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_element_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public abstract equal_to(Lorg/apache/xmlbeans/XmlObject;)Z
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/XmlObject;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0
.end method

.method public execQuery(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->execQuery(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public execQuery(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/a0;->c(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_typedArray([Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Li5/c2;

    const-string p1, "Cannot do XQuery on XML Value Objects"

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 7
    throw p0

    .line 8
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final generatedSetterHelperImpl(Lorg/apache/xmlbeans/XmlObject;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->getTargetForSetter(Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-direct {p0, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->getTargetForSetter(Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->preCheck()Z

    move-result v0

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/h2;->preCheck()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v2

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_3
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_4
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p0

    :cond_6
    const/4 v0, 0x0

    :try_start_5
    invoke-static {}, Lj5/c;->a()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    const/4 v1, 0x1

    :try_start_6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    :try_start_7
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    :try_start_8
    invoke-static {}, Lj5/c;->b()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :try_start_9
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/xmlbeans/impl/values/h2;->objSetterHelper(Lorg/apache/xmlbeans/impl/values/h2;Ljavax/xml/namespace/QName;IS)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    goto :goto_1

    :catchall_6
    move-exception p0

    goto :goto_0

    :catchall_7
    move-exception p0

    move v0, v1

    :goto_0
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :try_start_c
    throw p0

    :catchall_8
    move-exception p0

    move v0, v1

    :goto_1
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :try_start_d
    throw p0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    :catchall_9
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_a
    move-exception p0

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception p0

    move v0, v1

    :goto_2
    :try_start_e
    new-instance p1, Li5/c2;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {}, Lj5/c;->b()V

    :cond_7
    throw p0
.end method

.method public getBigDecimalValue()Ljava/math/BigDecimal;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "numeric"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getBooleanArray(Li5/k;)[Z
    .locals 4

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getBooleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    monitor-exit v0

    return-object v1

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBooleanArray(Ljavax/xml/namespace/QName;)[Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getBooleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getBooleanValue()Z
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "boolean"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getByteArray(Li5/k;)[B
    .locals 4

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getByteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    monitor-exit v0

    return-object v1

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getByteArray(Ljavax/xml/namespace/QName;)[B
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getByteValue()B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getByteArrayValue()[B
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "byte[]"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getByteValue()B
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getIntValue()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x7f

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    const-wide/16 v2, -0x80

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    long-to-int p0, v0

    int-to-byte p0, p0

    return p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getCalendarValue()Ljava/util/Calendar;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Calendar"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getDateValue()Ljava/util/Date;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Date"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getDomNode()Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/j2;->getDomNode()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p0, :cond_0

    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v1
.end method

.method public getDoubleArray(Li5/k;)[D
    .locals 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/d2;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/d2;-><init>(I)V

    .line 11
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/e2;

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/e2;-><init>(I)V

    .line 12
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDoubleArray(Ljavax/xml/namespace/QName;)[D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/d2;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/d2;-><init>(I)V

    .line 4
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/e2;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/e2;-><init>(I)V

    .line 5
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/stream/DoubleStream;->toArray()[D

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDoubleValue()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getEnumArray(Li5/k;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/k;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/xwpf/usermodel/f;

    const/16 v1, 0x1c

    invoke-direct {p1, v1}, Lorg/apache/poi/xwpf/usermodel/f;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEnumArray(Ljavax/xml/namespace/QName;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/schema/x;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/schema/x;-><init>(I)V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEnumValue()Li5/h0;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "enum"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getFloatArray(Li5/k;)[F
    .locals 4

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getFloatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    monitor-exit v0

    return-object v1

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFloatArray(Ljavax/xml/namespace/QName;)[F
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getFloatValue()F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getFloatValue()F
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    :goto_0
    return p0
.end method

.method public getGDateValue()Li5/d;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Date"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getGDurationValue()Li5/g;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Duration"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getIntArray(Li5/k;)[I
    .locals 2

    .line 8
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 10
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/f2;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/f2;-><init>(I)V

    .line 11
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/util/h;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lorg/apache/poi/util/h;-><init>(I)V

    .line 12
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 13
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIntArray(Ljavax/xml/namespace/QName;)[I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/f2;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/f2;-><init>(I)V

    .line 4
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/poi/util/h;

    const/4 v1, 0x2

    invoke-direct {p1, v1}, Lorg/apache/poi/util/h;-><init>(I)V

    .line 5
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIntValue()I
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getLongValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    const-wide/32 v2, -0x80000000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getListValue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "List"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getLongArray(Li5/k;)[J
    .locals 3

    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 10
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 11
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    const-class p1, Li5/g0;

    new-instance v1, Lorg/apache/poi/xddf/usermodel/text/g;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lorg/apache/poi/xddf/usermodel/text/g;-><init>(ILjava/lang/Object;)V

    .line 12
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/compress/archivers/zip/z0;

    invoke-direct {p1, v2}, Lorg/apache/commons/compress/archivers/zip/z0;-><init>(I)V

    .line 13
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLongArray(Ljavax/xml/namespace/QName;)[J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/d2;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Lorg/apache/xmlbeans/impl/values/d2;-><init>(I)V

    .line 4
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lorg/apache/xmlbeans/impl/values/g2;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getLongValue()J
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_max:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Lorg/apache/xmlbeans/impl/values/h2;->_min:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getObjectArray(Li5/k;Ljava/util/function/Function;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/k;",
            "Ljava/util/function/Function<",
            "Li5/g0;",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getObjectArray(Ljavax/xml/namespace/QName;Ljava/util/function/Function;Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/function/Function<",
            "Li5/g0;",
            "TT;>;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getObjectValue()Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/values/h2;->java_value(Lorg/apache/xmlbeans/XmlObject;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getQNameValue()Ljavax/xml/namespace/QName;
    .locals 2

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "QName"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getShortArray(Li5/k;)[S
    .locals 4

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 10
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getShortValue()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 11
    :cond_0
    monitor-exit v0

    return-object v1

    .line 12
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getShortArray(Ljavax/xml/namespace/QName;)[S
    .locals 4

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array v1, p1, [S

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 4
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getShortValue()S

    move-result v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 5
    :cond_0
    monitor-exit v0

    return-object v1

    .line 6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getShortValue()S
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getIntValue()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x7fff

    cmp-long p0, v0, v2

    if-gtz p0, :cond_1

    const-wide/16 v2, -0x8000

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    long-to-int p0, v0

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexContent()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Lorg/apache/xmlbeans/impl/values/a0;->L(I)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget v2, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    monitor-exit v0

    return-object v1

    :cond_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->compute_text(Lorg/apache/xmlbeans/impl/values/y;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getXmlLocale()Lj5/r;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->l()Lm5/z0;

    move-result-object p0

    return-object p0
.end method

.method public getXmlObjectArray(Li5/k;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Li5/k;",
            "[TT;)[TT;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 5
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Li5/k;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getXmlObjectArray(Ljavax/xml/namespace/QName;[Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "[TT;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->getBaseArray(Ljavax/xml/namespace/QName;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public get_attribute_field(Ljavax/xml/namespace/QName;)Li5/s;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->r0()Li5/q;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/f;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/w;

    return-object p0
.end method

.method public get_attribute_type(Ljavax/xml/namespace/QName;)Li5/c0;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->g()Li5/d0;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Li5/c0;->P(Ljavax/xml/namespace/QName;Li5/d0;)Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method public get_attributeflags(Ljavax/xml/namespace/QName;)I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexType()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/c0;->u0(Ljavax/xml/namespace/QName;)Li5/a0;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Li5/a0;->p()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    :goto_0
    invoke-interface {p0}, Li5/a0;->c()I

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    :goto_1
    or-int p0, p1, v1

    return p0
.end method

.method public get_default_attribute_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/c0;->u0(Ljavax/xml/namespace/QName;)Li5/a0;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Li5/a0;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public get_default_attribute_value(Ljavax/xml/namespace/QName;)Li5/i0;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->r0()Li5/q;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    check-cast p0, Lorg/apache/xmlbeans/impl/schema/f;

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/w;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p0}, Li5/s;->d()Li5/i0;

    move-result-object p0

    return-object p0
.end method

.method public get_default_element_text(Ljavax/xml/namespace/QName;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexContent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/c0;->D0(Ljavax/xml/namespace/QName;)Li5/a0;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Li5/a0;->k()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final get_element_ending_delimiters(Ljavax/xml/namespace/QName;)Li5/k;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/c0;->D0(Ljavax/xml/namespace/QName;)Li5/a0;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Li5/a0;->o()Li5/k;

    move-result-object p0

    return-object p0
.end method

.method public get_element_type(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;)Li5/c0;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->g()Li5/d0;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Li5/c0;->G(Ljavax/xml/namespace/QName;Ljavax/xml/namespace/QName;Li5/d0;)Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method public get_elementflags(Ljavax/xml/namespace/QName;)I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexContent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0, p1}, Li5/c0;->D0(Ljavax/xml/namespace/QName;)Li5/a0;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0}, Li5/a0;->p()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    invoke-interface {p0}, Li5/a0;->c()I

    move-result p1

    if-eq p1, v0, :cond_6

    invoke-interface {p0}, Li5/a0;->f()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Li5/a0;->p()I

    move-result p1

    if-nez p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    :goto_0
    invoke-interface {p0}, Li5/a0;->c()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    const/4 v2, 0x4

    :goto_1
    or-int/2addr p1, v2

    invoke-interface {p0}, Li5/a0;->f()I

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    or-int p0, p1, v1

    return p0

    :cond_6
    :goto_3
    const/4 p0, -0x1

    return p0
.end method

.method public get_schema_type()Li5/c0;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    return-object p0
.end method

.method public final get_store()Lorg/apache/xmlbeans/impl/values/a0;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    check-cast p0, Lorg/apache/xmlbeans/impl/values/a0;

    return-object p0
.end method

.method public get_wscanon_rule()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final get_wscanon_text()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->apply_wscanon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_wscanon_rule()I

    move-result p0

    invoke-interface {v0, p0}, Lorg/apache/xmlbeans/impl/values/a0;->L(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final has_store()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isNil()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->value_hash_code()I

    move-result p0

    monitor-exit v0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initComplexType(ZZ)V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 p1, 0x2000

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    const/16 v1, 0x4000

    :cond_1
    or-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method public init_flags(Li5/a0;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Li5/a0;->p()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    invoke-interface {p1}, Li5/a0;->c()I

    move-result v0

    if-eq v0, v1, :cond_5

    invoke-interface {p1}, Li5/a0;->f()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_2

    :cond_1
    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    invoke-interface {p1}, Li5/a0;->p()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    :goto_0
    invoke-interface {p1}, Li5/a0;->c()I

    move-result v4

    if-nez v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    or-int/2addr v2, v4

    invoke-interface {p1}, Li5/a0;->f()I

    move-result p1

    if-nez p1, :cond_4

    move v1, v3

    :cond_4
    or-int p1, v2, v1

    const v1, 0x8000

    or-int/2addr p1, v1

    or-int/2addr p1, v0

    iput p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    :cond_5
    :goto_2
    return-void
.end method

.method public instanceType()Li5/c0;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isNil()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final invalidate_element_order()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit16 v0, v0, 0x2a0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method public final invalidate_nilvalue()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit16 v0, v0, 0xa0

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method public final invalidate_value()V
    .locals 1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method public final isDefault()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isDefaultable()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_element_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFixed()Z
    .locals 0

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_element_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isImmutable()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInstanceOf(Li5/c0;)Z
    .locals 3

    invoke-interface {p1}, Li5/c0;->B0()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->instanceType()Li5/c0;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_3

    if-ne p1, p0, :cond_0

    return v2

    :cond_0
    invoke-interface {p0}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-interface {p1}, Li5/c0;->x()[Li5/c0;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->instanceType()Li5/c0;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    invoke-interface {p0}, Li5/c0;->getBaseType()Li5/c0;

    move-result-object p0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final isNil()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final isNillable()Z
    .locals 1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_element_dated()V

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public is_child_element_order_sensitive()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->b0()Z

    move-result p0

    return p0
.end method

.method public is_defaultable_ws(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final is_orphaned()Z
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final monitor()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->has_store()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->l()Lm5/z0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public newCursor()Li5/p0;
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getXmlLocale()Lj5/r;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lm5/z0;

    iget-boolean v2, v1, Lm5/z0;->a:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lm5/z0;->l()V

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->u()Lm5/y;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lm5/z0;->m()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lm5/z0;->m()V

    throw p0

    :cond_0
    monitor-enter v0

    :try_start_1
    move-object v1, v0

    check-cast v1, Lm5/z0;

    invoke-virtual {v1}, Lm5/z0;->l()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->u()Lm5/y;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Lm5/z0;->m()V

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {v1}, Lm5/z0;->m()V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "XML Value Objects cannot create cursors"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newCursorForce()Li5/p0;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->ensureStore()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-interface {p0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public newDomNode()Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->newDomNode(Li5/z1;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public newDomNode(Li5/z1;)Lorg/w3c/dom/Node;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/j2;->newDomNode(Li5/z1;)Lorg/w3c/dom/Node;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_0

    .line 6
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public newInputStream()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->newInputStream(Li5/z1;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public newInputStream(Li5/z1;)Ljava/io/InputStream;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/j2;->newInputStream(Li5/z1;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_0

    .line 6
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public newReader()Ljava/io/Reader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->newReader(Li5/z1;)Ljava/io/Reader;

    move-result-object p0

    return-object p0
.end method

.method public newReader(Li5/z1;)Ljava/io/Reader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/j2;->newReader(Li5/z1;)Ljava/io/Reader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_0

    .line 6
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public newXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/j2;->newXMLStreamReader(Li5/z1;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_0

    .line 6
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public new_visitor()Lorg/apache/xmlbeans/impl/values/d0;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->_isComplexContent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/schema/a0;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->W()Li5/z;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/xmlbeans/impl/schema/a0;-><init>(Li5/z;)V

    return-object v0
.end method

.method public save(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->save(Ljava/io/File;Li5/z1;)V

    return-void
.end method

.method public save(Ljava/io/File;Li5/z1;)V
    .locals 0

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 7
    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Li5/j2;->save(Ljava/io/File;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 10
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method

.method public save(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->save(Ljava/io/OutputStream;Li5/z1;)V

    return-void
.end method

.method public save(Ljava/io/OutputStream;Li5/z1;)V
    .locals 0

    .line 11
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 12
    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Li5/j2;->save(Ljava/io/OutputStream;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 15
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method

.method public save(Ljava/io/Writer;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->save(Ljava/io/Writer;Li5/z1;)V

    return-void
.end method

.method public save(Ljava/io/Writer;Li5/z1;)V
    .locals 0

    .line 16
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 17
    :try_start_0
    invoke-static {p2}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Li5/j2;->save(Ljava/io/Writer;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 20
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method

.method public save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/xmlbeans/impl/values/h2;->save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V

    return-void
.end method

.method public save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-static {p3}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Li5/j2;->save(Lorg/xml/sax/ContentHandler;Lorg/xml/sax/ext/LexicalHandler;Li5/z1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {p0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p1

    .line 4
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_0

    .line 5
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
.end method

.method public abstract schemaType()Li5/c0;
.end method

.method public selectAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 12
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->selectAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public selectAttribute(Ljavax/xml/namespace/QName;)Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-interface {p0}, Li5/p0;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p0}, Li5/p0;->close()V

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    invoke-interface {p0}, Li5/p0;->L0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    invoke-interface {p0}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 8
    :cond_2
    :try_start_2
    invoke-interface {p0}, Li5/p0;->k()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    .line 9
    :cond_3
    invoke-interface {p0}, Li5/p0;->close()V

    return-object v1

    .line 10
    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_4

    .line 11
    :try_start_4
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
.end method

.method public selectAttributes(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Li5/p0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Li5/p0;->L0()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-interface {p0}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {p0}, Li5/p0;->k()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :cond_4
    :try_start_2
    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/XmlObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_5

    :try_start_4
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public selectChildren(Li5/k;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    if-eqz p1, :cond_6

    .line 15
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object p0

    .line 16
    :try_start_0
    invoke-interface {p0}, Li5/p0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 18
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p0}, Li5/p0;->o0()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 20
    :cond_1
    invoke-interface {p0}, Li5/p0;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {p1, v1}, Li5/k;->a(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 21
    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_2
    invoke-interface {p0}, Li5/p0;->k0()Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :cond_4
    :try_start_2
    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    .line 25
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/XmlObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    .line 27
    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_5

    .line 28
    :try_start_4
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v0

    .line 29
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public selectChildren(Ljava/lang/String;Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 14
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1, p2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public selectChildren(Ljavax/xml/namespace/QName;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-interface {p0}, Li5/p0;->g()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p0, p1}, Li5/p0;->Z0(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    :cond_1
    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p0, p1}, Li5/p0;->B1(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :cond_3
    :try_start_2
    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/xmlbeans/XmlObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    .line 12
    :goto_0
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_4

    .line 13
    :try_start_4
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
.end method

.method public selectPath(Ljava/lang/String;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/apache/xmlbeans/impl/values/h2;->selectPath(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0
.end method

.method public selectPath(Ljava/lang/String;Li5/z1;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursor()Li5/p0;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 3
    :try_start_0
    invoke-interface {p0, p1, p2}, Li5/p0;->selectPath(Ljava/lang/String;Li5/z1;)V

    .line 4
    invoke-interface {p0}, Li5/p0;->S()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lorg/apache/xmlbeans/impl/values/h2;->EMPTY_RESULT:[Lorg/apache/xmlbeans/XmlObject;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 5
    :cond_0
    invoke-interface {p0}, Li5/p0;->u0()I

    move-result p1

    new-array p1, p1, [Lorg/apache/xmlbeans/XmlObject;

    const/4 p2, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Li5/p0;->a1()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    aput-object v0, p1, p2

    if-nez v0, :cond_2

    .line 8
    invoke-interface {p0}, Li5/p0;->X0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    aput-object v0, p1, p2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 9
    :cond_1
    new-instance p1, Li5/c2;

    const-string p2, "Path must select only elements and attributes"

    .line 10
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 11
    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_3
    :goto_2
    invoke-interface {p0}, Li5/p0;->close()V

    .line 13
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->_typedArray([Lorg/apache/xmlbeans/XmlObject;)[Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    return-object p0

    .line 14
    :cond_4
    :try_start_1
    new-instance p1, Lf3/a;

    .line 15
    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    .line 16
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :goto_3
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_5

    .line 18
    :try_start_3
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    throw p2
.end method

.method public final set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->underlying(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/values/h2;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->preCheck()Z

    move-result v0

    invoke-direct {p1}, Lorg/apache/xmlbeans/impl/values/h2;->preCheck()Z

    move-result v1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :cond_6
    const/4 v0, 0x0

    :try_start_3
    invoke-static {}, Lj5/c;->a()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    :try_start_5
    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-static {}, Lj5/c;->b()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setterHelper(Lorg/apache/xmlbeans/impl/values/h2;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_0
    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    return-object p0

    :catchall_3
    move-exception p0

    goto :goto_2

    :catchall_4
    move-exception p0

    goto :goto_1

    :catchall_5
    move-exception p0

    move v0, v1

    :goto_1
    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p0

    :catchall_6
    move-exception p0

    move v0, v1

    :goto_2
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw p0
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_8
    move-exception p0

    move v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move v0, v1

    :goto_3
    :try_start_c
    new-instance p1, Li5/c2;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :goto_4
    if-eqz v0, :cond_7

    invoke-static {}, Lj5/c;->b()V

    :cond_7
    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot set the value of an immutable XmlObject"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setBigDecimalValue(Ljava/math/BigDecimal;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigDecimal(Ljava/math/BigDecimal;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setBigIntegerValue(Ljava/math/BigInteger;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigInteger(Ljava/math/BigInteger;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setBooleanValue(Z)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_boolean(Z)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setByteArrayValue([B)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_ByteArray([B)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setByteValue(B)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_byte(B)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCalendarValue(Ljava/util/Calendar;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_Calendar(Ljava/util/Calendar;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDateValue(Ljava/util/Date;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_Date(Ljava/util/Date;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setDoubleValue(D)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->set_double(D)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setEnumValue(Li5/h0;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_enum(Li5/h0;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setFloatValue(F)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_float(F)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setGDateValue(Li5/d;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_GDate(Li5/f;)V

    .line 5
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    .line 6
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setGDateValue(Li5/f;)V
    .locals 1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_GDate(Li5/f;)V

    .line 11
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    .line 12
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setGDurationValue(Li5/g;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_GDuration(Li5/i;)V

    .line 5
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    .line 6
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setGDurationValue(Li5/i;)V
    .locals 1

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    .line 10
    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_GDuration(Li5/i;)V

    .line 11
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    .line 12
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setImmutable()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v0, 0x1010

    if-nez v1, :cond_0

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final setIntValue(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_int(I)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setListValue(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_list(Ljava/util/List;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setLongValue(J)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/h2;->set_long(J)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setNil()V
    .locals 3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lf3/f;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_nil()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/xmlbeans/impl/values/a0;->M()V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v1, -0x2a1

    iput v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->y()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setObjectValue(Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    return-void

    :cond_0
    instance-of v0, p1, Lorg/apache/xmlbeans/XmlObject;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/apache/xmlbeans/XmlObject;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    goto/16 :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setStringValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    instance-of v0, p1, Li5/h0;

    if-eqz v0, :cond_3

    check-cast p1, Li5/h0;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setEnumValue(Li5/h0;)V

    goto/16 :goto_0

    :cond_3
    instance-of v0, p1, Ljava/math/BigInteger;

    if-eqz v0, :cond_4

    check-cast p1, Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setBigIntegerValue(Ljava/math/BigInteger;)V

    goto/16 :goto_0

    :cond_4
    instance-of v0, p1, Ljava/math/BigDecimal;

    if-eqz v0, :cond_5

    check-cast p1, Ljava/math/BigDecimal;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setBigDecimalValue(Ljava/math/BigDecimal;)V

    goto/16 :goto_0

    :cond_5
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setByteValue(B)V

    goto/16 :goto_0

    :cond_6
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_7

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setShortValue(S)V

    goto/16 :goto_0

    :cond_7
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_8

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setIntValue(I)V

    goto/16 :goto_0

    :cond_8
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_9

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->setLongValue(J)V

    goto/16 :goto_0

    :cond_9
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_a

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setBooleanValue(Z)V

    goto :goto_0

    :cond_a
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_b

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setFloatValue(F)V

    goto :goto_0

    :cond_b
    instance-of v0, p1, Ljava/lang/Double;

    if-eqz v0, :cond_c

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->setDoubleValue(D)V

    goto :goto_0

    :cond_c
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_d

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setCalendarValue(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_d
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setDateValue(Ljava/util/Date;)V

    goto :goto_0

    :cond_e
    instance-of v0, p1, Li5/f;

    if-eqz v0, :cond_f

    check-cast p1, Li5/f;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setGDateValue(Li5/f;)V

    goto :goto_0

    :cond_f
    instance-of v0, p1, Li5/i;

    if-eqz v0, :cond_10

    check-cast p1, Li5/i;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setGDurationValue(Li5/i;)V

    goto :goto_0

    :cond_10
    instance-of v0, p1, Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_11

    check-cast p1, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setQNameValue(Ljavax/xml/namespace/QName;)V

    goto :goto_0

    :cond_11
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setListValue(Ljava/util/List;)V

    goto :goto_0

    :cond_12
    instance-of v0, p1, [B

    if-eqz v0, :cond_13

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->setByteArrayValue([B)V

    :goto_0
    return-void

    :cond_13
    new-instance p0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Can\'t set union object of class : "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setQNameValue(Ljavax/xml/namespace/QName;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_QName(Ljavax/xml/namespace/QName;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setShortValue(S)V
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_short(S)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setStringValue(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_String(Ljava/lang/String;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setValidateOnSet()V
    .locals 2

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    return-void
.end method

.method public set_BigDecimal(Ljava/math/BigDecimal;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "numeric"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_BigInteger(Ljava/math/BigInteger;)V
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set_ByteArray([B)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "byte[]"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_Calendar(Ljava/util/Calendar;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "Calendar"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_ComplexXml(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "complex content"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_Date(Ljava/util/Date;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "Date"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_GDate(Li5/f;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "Date"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_GDuration(Li5/i;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "Duration"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_QName(Ljavax/xml/namespace/QName;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "QName"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_String(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->apply_wscanon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->update_from_wscanon_text(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_2

    and-int/lit8 v2, v1, -0x21

    iput v2, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/xmlbeans/impl/values/a0;->G(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->y()V

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_textsource:Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public set_b64([B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_ByteArray([B)V

    return-void
.end method

.method public set_boolean(Z)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "boolean"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_byte(B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_int(I)V

    return-void
.end method

.method public set_char(C)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public set_double(D)V
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set_enum(Li5/h0;)V
    .locals 1

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "enum"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_float(F)V
    .locals 3

    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p1

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigDecimal(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public set_hex([B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_ByteArray([B)V

    return-void
.end method

.method public set_int(I)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/apache/xmlbeans/impl/values/h2;->set_long(J)V

    return-void
.end method

.method public set_list(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    new-instance p1, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "List"

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "exception.value.not.supported.j2s"

    invoke-direct {p1, v0, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set_long(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigInteger(Ljava/math/BigInteger;)V

    return-void
.end method

.method public final set_newValue(Lorg/apache/xmlbeans/XmlObject;)V
    .locals 4

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isNil()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, Li5/i0;

    if-eqz v0, :cond_9

    check-cast p1, Li5/i0;

    move-object v0, p1

    check-cast v0, Li5/g0;

    invoke-interface {v0}, Li5/g0;->instanceType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->B0()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->xgetListValue()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_list(Ljava/util/List;)V

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    invoke-interface {v0}, Li5/c0;->d0()Li5/c0;

    move-result-object v2

    invoke-interface {v2}, Li5/c0;->e()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    monitor-exit v1

    goto/16 :goto_3

    :catchall_1
    move-exception p0

    goto/16 :goto_2

    :pswitch_0
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getGDateValue()Li5/d;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_GDate(Li5/f;)V

    goto/16 :goto_1

    :pswitch_1
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getGDurationValue()Li5/g;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_GDuration(Li5/i;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_String(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-interface {v0}, Li5/c0;->z0()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_5

    const/16 v2, 0x10

    if-eq v0, v2, :cond_4

    const/16 v2, 0x20

    if-eq v0, v2, :cond_3

    const/16 v2, 0x40

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getBigDecimalValue()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigDecimal(Ljava/math/BigDecimal;)V

    goto/16 :goto_1

    :pswitch_5
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getBigIntegerValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_BigInteger(Ljava/math/BigInteger;)V

    goto/16 :goto_1

    :cond_2
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getLongValue()J

    move-result-wide v2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/values/h2;->set_long(J)V

    goto/16 :goto_1

    :cond_3
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getIntValue()I

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_int(I)V

    goto/16 :goto_1

    :cond_4
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getShortValue()S

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_short(S)V

    goto/16 :goto_1

    :cond_5
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getByteValue()B

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_byte(B)V

    goto/16 :goto_1

    :pswitch_6
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getDoubleValue()D

    move-result-wide v2

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, v2, v3}, Lorg/apache/xmlbeans/impl/values/h2;->set_double(D)V

    goto/16 :goto_1

    :pswitch_7
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getFloatValue()F

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_float(F)V

    goto :goto_1

    :pswitch_8
    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_notation(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_9
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getQNameValue()Ljavax/xml/namespace/QName;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_QName(Ljavax/xml/namespace/QName;)V

    goto :goto_1

    :pswitch_a
    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_text(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_b
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getByteArrayValue()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_hex([B)V

    goto :goto_1

    :pswitch_c
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getByteArrayValue()[B

    move-result-object p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_b64([B)V

    goto :goto_1

    :pswitch_d
    check-cast p1, Li5/g0;

    invoke-interface {p1}, Li5/g0;->getBooleanValue()Z

    move-result p1

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_boolean(Z)V

    goto :goto_1

    :pswitch_e
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/apache/xmlbeans/impl/values/x;

    invoke-direct {v0, p1}, Lorg/apache/xmlbeans/impl/values/x;-><init>(Lorg/apache/xmlbeans/XmlObject;)V

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/values/x;->t(Lorg/apache/xmlbeans/impl/values/x;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_prepare()V

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_xmlanysimple(Li5/i0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_7

    :try_start_3
    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_7
    :goto_1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->set_commit()V

    monitor-exit v1

    return-void

    :catchall_2
    move-exception p0

    if-eqz v0, :cond_8

    invoke-static {}, Lorg/apache/xmlbeans/impl/values/x;->k()V

    :cond_8
    throw p0

    :goto_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_9
    :goto_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Complex type unexpected"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->setNil()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf4240
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public abstract set_nil()V
.end method

.method public set_notation(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public set_short(S)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_int(I)V

    return-void
.end method

.method public abstract set_text(Ljava/lang/String;)V
.end method

.method public set_xmlanysimple(Li5/i0;)V
    .locals 0

    invoke-interface {p1}, Li5/i0;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->set_String(Ljava/lang/String;)V

    return-void
.end method

.method public substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/XmlObject;
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/a0;->substitute(Ljavax/xml/namespace/QName;Li5/c0;)Lorg/apache/xmlbeans/impl/values/b0;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XML Value Objects cannot be used with substitution"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid type (null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid name (null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->ensureStore()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    sget-object v1, Lorg/apache/xmlbeans/impl/values/h2;->_toStringOptions:Li5/z1;

    invoke-interface {p0, v1}, Li5/j2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public update_from_complex_content()V
    .locals 1

    new-instance p0, Lorg/apache/xmlbeans/impl/values/w2;

    const-string v0, "Complex content"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final uses_invalidate_value()Z
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->f0()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Li5/c0;->getContentType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public validate()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->validate(Li5/z1;)Z

    move-result p0

    return p0
.end method

.method public validate(Li5/z1;)Z
    .locals 5

    iget v0, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->validate_immutable(Li5/z1;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "XML objects with no underlying store cannot be validated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lorg/apache/xmlbeans/impl/values/h2;->_flags:I

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_3

    .line 5
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaField()Li5/s;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->schemaType()Li5/c0;

    move-result-object v2

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    .line 8
    new-instance v3, Lo5/a;

    .line 9
    invoke-interface {p0}, Lorg/apache/xmlbeans/impl/values/a0;->g()Li5/d0;

    move-result-object v4

    invoke-direct {v3, v2, v1, v4, p1}, Lo5/a;-><init>(Li5/c0;Li5/s;Li5/d0;Li5/z1;)V

    .line 10
    invoke-interface {p0, v3}, Lorg/apache/xmlbeans/impl/values/a0;->I(Lo5/a;)V

    iget-boolean p0, v3, Lo5/a;->b:Z

    if-nez p0, :cond_2

    iget-object p0, v3, Lo5/a;->m:Lj5/d;

    .line 11
    iget-boolean p0, p0, Lj5/d;->d:Z

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 13
    :cond_3
    new-instance p0, Lf3/a;

    .line 14
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 15
    throw p0

    .line 16
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public validate_now()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    return-void
.end method

.method public validate_simpleval(Ljava/lang/String;Lj5/m;)V
    .locals 0

    return-void
.end method

.method public final valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_1
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw p0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/XmlObject;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lj5/c;->a()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-interface {p1}, Li5/j2;->monitor()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    invoke-static {}, Lj5/c;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    return p0

    :catchall_2
    move-exception p0

    goto :goto_1

    :catchall_3
    move-exception p0

    goto :goto_0

    :catchall_4
    move-exception p0

    move v0, v1

    :goto_0
    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    throw p0

    :catchall_5
    move-exception p0

    move v0, v1

    :goto_1
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p0

    :catchall_6
    move-exception p0

    move v0, v1

    goto :goto_4

    :catch_1
    move-exception p0

    move v0, v1

    goto :goto_3

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/values/h2;->valueEqualsImpl(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    monitor-exit v1

    return p0

    :catchall_7
    move-exception p0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    throw p0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :goto_3
    :try_start_d
    new-instance p1, Li5/c2;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_4
    if-eqz v0, :cond_4

    invoke-static {}, Lj5/c;->b()V

    :cond_4
    throw p0
.end method

.method public valueHashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->value_hash_code()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract value_hash_code()I
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->isRootXmlObject()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xmlbeans/impl/values/h2$c;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {p0}, Lorg/apache/xmlbeans/XmlObject;->schemaType()Li5/c0;

    move-result-object p0

    invoke-interface {p0}, Li5/c0;->X()Ljava/lang/Class;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/values/h2$b;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getRootXmlObject()Lorg/apache/xmlbeans/XmlObject;

    move-result-object p0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lorg/apache/xmlbeans/impl/values/h2$b;->c:Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetArray(Li5/k;Ljava/util/function/IntFunction;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Li5/k;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->f(Li5/k;Ljava/util/ArrayList;)V

    .line 11
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetArray(Ljavax/xml/namespace/QName;Ljava/util/function/IntFunction;)[Lorg/apache/xmlbeans/XmlObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/xmlbeans/XmlObject;",
            ">(",
            "Ljavax/xml/namespace/QName;",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->monitor()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_orphaned()V

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->get_store()Lorg/apache/xmlbeans/impl/values/a0;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lorg/apache/xmlbeans/impl/values/a0;->b(Ljavax/xml/namespace/QName;Ljava/util/ArrayList;)V

    .line 5
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/xmlbeans/XmlObject;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public xgetListValue()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Li5/i0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/apache/xmlbeans/impl/values/w2;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/values/h2;->getPrimitiveTypeName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "List"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "exception.value.not.supported.s2j"

    invoke-direct {v0, v1, p0}, Lorg/apache/xmlbeans/impl/values/w2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public xmlText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/apache/xmlbeans/impl/values/h2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public xmlText(Li5/z1;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->newCursorForce()Li5/p0;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-static {p1}, Lorg/apache/xmlbeans/impl/values/h2;->makeInnerOptions(Li5/z1;)Li5/z1;

    move-result-object p1

    invoke-interface {p0, p1}, Li5/j2;->xmlText(Li5/z1;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {p0}, Li5/p0;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_0

    .line 6
    :try_start_2
    invoke-interface {p0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method
