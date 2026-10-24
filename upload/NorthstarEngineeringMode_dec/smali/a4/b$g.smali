.class public final La4/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La4/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V::",
        "Ljava/lang/Comparable<",
        "TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final Z:[La4/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final b1:[Z

.field public final c:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public c1:I

.field public d1:Z

.field public final r:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field public final x:[La4/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final y:[La4/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "La4/b$g<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/b$g;->c:Ljava/lang/Comparable;

    iput-object p2, p0, La4/b$g;->r:Ljava/lang/Comparable;

    const/4 p1, 0x2

    new-array p2, p1, [La4/b$g;

    iput-object p2, p0, La4/b$g;->x:[La4/b$g;

    new-array p2, p1, [La4/b$g;

    iput-object p2, p0, La4/b$g;->y:[La4/b$g;

    new-array p2, p1, [La4/b$g;

    iput-object p2, p0, La4/b$g;->Z:[La4/b$g;

    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    iput-object p1, p0, La4/b$g;->b1:[Z

    const/4 p1, 0x0

    iput-boolean p1, p0, La4/b$g;->d1:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method public static a(La4/b$g;I)La4/b$g;
    .locals 0

    iget-object p0, p0, La4/b$g;->x:[La4/b$g;

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method

.method public static b(La4/b$g;I)Z
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    add-int/lit8 v1, p1, -0x1

    iget-object v2, p0, La4/b$g;->Z:[La4/b$g;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    iget-object v2, v2, La4/b$g;->x:[La4/b$g;

    if-eqz p1, :cond_0

    aget-object p1, v2, v1

    if-ne p1, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_3
    throw v0
.end method

.method public static c(La4/b$g;La4/b$g;I)V
    .locals 0

    iget-object p0, p0, La4/b$g;->Z:[La4/b$g;

    if-eqz p2, :cond_0

    add-int/lit8 p2, p2, -0x1

    aput-object p1, p0, p2

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Map$Entry;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, La4/b$g;->c:Ljava/lang/Comparable;

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, La4/b$g;->r:Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La4/b$g;->r:Ljava/lang/Comparable;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, La4/b$g;->d1:Z

    if-nez v0, :cond_0

    iget-object v0, p0, La4/b$g;->c:Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, La4/b$g;->r:Ljava/lang/Comparable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iput v0, p0, La4/b$g;->c1:I

    const/4 v0, 0x1

    iput-boolean v0, p0, La4/b$g;->d1:Z

    :cond_0
    iget p0, p0, La4/b$g;->c1:I

    return p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Map.Entry.setValue is not supported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
