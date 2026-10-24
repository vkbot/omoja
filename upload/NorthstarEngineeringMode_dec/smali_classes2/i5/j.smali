.class public final Li5/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public b:I

.field public c:I

.field public d:I

.field public e:[Ljavax/xml/namespace/QName;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Li5/j;->b:I

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Li5/j;->a:F

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Li5/j;->d:I

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, p0, Li5/j;->c:I

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    iput-object v0, p0, Li5/j;->e:[Ljavax/xml/namespace/QName;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/namespace/QName;
    .locals 9

    const-string v0, ""

    if-nez p1, :cond_0

    move-object p1, v0

    :cond_0
    if-nez p3, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    shl-int/lit8 v0, v0, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Li5/j;->d:I

    and-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Li5/j;->e:[Ljavax/xml/namespace/QName;

    aget-object v2, v1, v0

    if-nez v2, :cond_6

    iget v2, p0, Li5/j;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Li5/j;->b:I

    iget v3, p0, Li5/j;->c:I

    if-lt v2, v3, :cond_5

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [Ljavax/xml/namespace/QName;

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    :goto_1
    iget-object v5, p0, Li5/j;->e:[Ljavax/xml/namespace/QName;

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget-object v5, v5, v4

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v8

    shl-int/lit8 v8, v8, 0xa

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    shl-int/lit8 v6, v6, 0x5

    add-int/2addr v8, v6

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v6

    add-int/2addr v6, v8

    :goto_2
    and-int/2addr v6, v3

    aget-object v7, v2, v6

    if-eqz v7, :cond_2

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_2
    aput-object v5, v2, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iput-object v2, p0, Li5/j;->e:[Ljavax/xml/namespace/QName;

    iput v3, p0, Li5/j;->d:I

    int-to-float v1, v1

    iget v2, p0, Li5/j;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Li5/j;->c:I

    :cond_5
    iget-object p0, p0, Li5/j;->e:[Ljavax/xml/namespace/QName;

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p1, p2, p3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, p0, v0

    return-object v1

    :cond_6
    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Li5/j;->d:I

    and-int/2addr v0, v1

    goto/16 :goto_0
.end method
