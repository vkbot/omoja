.class public Lorg/apache/poi/hpsf/CustomProperties;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:La5/d;


# instance fields
.field private codepage:I

.field private final dictionary:La4/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La4/b<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isPure:Z

.field private final props:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lorg/apache/poi/hpsf/CustomProperty;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/CustomProperties;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/CustomProperties;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    new-instance v0, La4/b;

    invoke-direct {v0}, La4/b;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return-void
.end method

.method private checkCodePage(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/CustomProperties;->getCodepage()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x4e4

    :cond_0
    const/16 v1, 0x4b0

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, v2}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lorg/apache/poi/hpsf/CustomProperties;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->h()La5/b;

    move-result-object v2

    invoke-static {v0}, Lg5/b0;->a(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "Codepage \'{}\' can\'t be found."

    invoke-interface {v2, v0, v3}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/charset/CharsetEncoder;->canEncode(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    sget-object v2, Lorg/apache/poi/hpsf/CustomProperties;->LOG:La5/d;

    invoke-interface {v2}, La5/d;->e()La5/b;

    move-result-object v2

    const-string v3, "Charset \'{}\' can\'t encode \'{}\' - switching to unicode."

    invoke-interface {v2, v0, v3, p1}, La5/b;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/hpsf/CustomProperties;->setCodepage(I)V

    return-void
.end method

.method private put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;
    .locals 5

    .line 35
    invoke-virtual {p1}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    .line 36
    invoke-virtual {v1, v0}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    :goto_0
    if-eqz v1, :cond_1

    .line 37
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/Property;->setID(J)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    .line 38
    invoke-virtual {v1}, La4/b;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/16 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    .line 39
    iget v2, v1, La4/b;->r:I

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 40
    iget-object v1, v1, La4/b;->c:[La4/b$g;

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-static {v1, v2}, La4/b;->r(La4/b$g;I)La4/b$g;

    move-result-object v1

    .line 41
    iget-object v1, v1, La4/b$g;->c:Ljava/lang/Comparable;

    .line 42
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1
    const-wide/16 v3, 0x1f

    .line 43
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    .line 44
    invoke-virtual {p1, v1, v2}, Lorg/apache/poi/hpsf/Property;->setID(J)V

    .line 45
    :goto_2
    invoke-virtual {p0, v0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object p0

    return-object p0

    .line 46
    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "Map is empty"

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    invoke-virtual {v0, p1}, La4/b;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    invoke-virtual {p0, p1}, La4/b;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lorg/apache/poi/hpsf/CustomProperties;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    check-cast p1, Lorg/apache/poi/hpsf/CustomProperties;

    iget-object p1, p1, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    invoke-virtual {v0, p1}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/CustomProperty;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCodepage()I
    .locals 0

    iget p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return p0
.end method

.method public getDictionary()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public idSet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    invoke-virtual {p0}, La4/b;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isPure()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    iget-object v0, p0, La4/b;->Z:La4/b$h;

    if-nez v0, :cond_0

    new-instance v0, La4/b$h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La4/b$h;-><init>(La4/b;I)V

    iput-object v0, p0, La4/b;->Z:La4/b$h;

    :cond_0
    iget-object p0, p0, La4/b;->Z:La4/b$h;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public nameSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    iget-object v0, p0, La4/b;->Z:La4/b$h;

    if-nez v0, :cond_0

    new-instance v0, La4/b$h;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, La4/b$h;-><init>(La4/b;I)V

    iput-object v0, p0, La4/b;->Z:La4/b$h;

    :cond_0
    iget-object p0, p0, La4/b;->Z:La4/b$h;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public properties()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/poi/hpsf/CustomProperty;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 21
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    .line 22
    :cond_0
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    .line 24
    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    const/16 v0, 0x14

    goto :goto_0

    .line 25
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    .line 26
    :cond_4
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_0

    .line 27
    :cond_5
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/16 v0, 0xb

    goto :goto_0

    .line 28
    :cond_6
    instance-of v0, p2, Ljava/math/BigInteger;

    const/16 v1, 0x40

    if-eqz v0, :cond_7

    move-object v0, p2

    check-cast v0, Ljava/math/BigInteger;

    .line 29
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-gt v2, v1, :cond_7

    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 30
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_7

    const/16 v0, 0x15

    goto :goto_0

    .line 31
    :cond_7
    instance-of v0, p2, Ljava/util/Date;

    if-eqz v0, :cond_8

    move v0, v1

    .line 32
    :goto_0
    new-instance v7, Lorg/apache/poi/hpsf/Property;

    const-wide/16 v2, -0x1

    int-to-long v4, v0

    move-object v1, v7

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/poi/hpsf/Property;-><init>(JJLjava/lang/Object;)V

    .line 33
    new-instance p2, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-direct {p2, v7, p1}, Lorg/apache/poi/hpsf/CustomProperty;-><init>(Lorg/apache/poi/hpsf/Property;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lorg/apache/poi/hpsf/CustomProperties;->put(Lorg/apache/poi/hpsf/CustomProperty;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "unsupported datatype - currently String,Short,Integer,Long,Float,Double,Boolean,BigInteger(unsigned long),Date can be processed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public put(Ljava/lang/String;Lorg/apache/poi/hpsf/CustomProperty;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->checkCodePage(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    .line 4
    invoke-virtual {v1, p1}, La4/b;->k(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    .line 5
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    .line 6
    invoke-static {v1, v2}, La4/b;->a(Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {v0, v1, v2}, La4/b;->v(Ljava/lang/Object;I)La4/b$g;

    .line 8
    invoke-virtual {v0, v1, p1}, La4/b;->d(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/Property;->getID()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/CustomProperty;

    return-object p0

    .line 10
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter \"name\" ("

    const-string v1, ") and custom property\'s name ("

    .line 11
    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 12
    invoke-virtual {p2}, Lorg/apache/poi/hpsf/CustomProperty;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") do not match."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/hpsf/CustomProperties;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/poi/hpsf/CustomProperties;->remove(Ljava/lang/Object;)Lorg/apache/poi/hpsf/CustomProperty;

    move-result-object p0

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/poi/hpsf/CustomProperty;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hpsf/CustomProperties;->dictionary:La4/b;

    .line 2
    invoke-virtual {v0, p1}, La4/b;->h(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object p1

    .line 3
    check-cast p1, Ljava/lang/Long;

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/poi/hpsf/CustomProperty;

    return-object p0
.end method

.method public setCodepage(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->codepage:I

    return-void
.end method

.method public setPure(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/CustomProperties;->isPure:Z

    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    return p0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lorg/apache/poi/hpsf/CustomProperties;->props:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/poi/hpsf/CustomProperty;

    invoke-virtual {v1}, Lorg/apache/poi/hpsf/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
