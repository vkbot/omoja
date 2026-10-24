.class public final Lj5/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lorg/apache/xmlbeans/XmlObject;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [Lorg/apache/xmlbeans/XmlObject;

    iput-object p1, p0, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method


# virtual methods
.method public final a(ILi5/i0;)Z
    .locals 1

    iget-object p0, p0, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    aput-object p2, p0, p1

    const/4 p0, 0x1

    return p0
.end method

.method public final b()I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lj5/s;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lj5/s;

    iget-object v0, p1, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    array-length v0, v0

    iget-object p0, p0, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    array-length v2, p0

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_5

    aget-object v2, p0, v0

    if-eqz v2, :cond_4

    iget-object v3, p1, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v2, v3}, Lorg/apache/xmlbeans/XmlObject;->valueEquals(Lorg/apache/xmlbeans/XmlObject;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    invoke-interface {v2}, Lorg/apache/xmlbeans/XmlObject;->valueHashCode()I

    move-result v2

    add-int/2addr v2, v1

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lj5/s;->a:[Lorg/apache/xmlbeans/XmlObject;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    if-eqz v2, :cond_0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v3, v3, v2

    check-cast v3, Li5/g0;

    invoke-interface {v3}, Li5/g0;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    :goto_1
    if-lez v4, :cond_2

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lj5/p;->c(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    move v5, v1

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lj5/p;->c(I)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
