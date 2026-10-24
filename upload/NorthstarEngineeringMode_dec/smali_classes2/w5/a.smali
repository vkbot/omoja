.class public final Lw5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I


# instance fields
.field public a:Ljavax/xml/namespace/QName;

.field public b:[I

.field public c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lw5/a;->d:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lw5/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lw5/a;

    iget-object v1, p1, Lw5/a;->a:Ljavax/xml/namespace/QName;

    iget-object v3, p0, Lw5/a;->a:Ljavax/xml/namespace/QName;

    invoke-virtual {v3, v1}, Ljavax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lw5/a;->b:[I

    iget-object v3, p1, Lw5/a;->b:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lw5/a;->c:[I

    iget-object p1, p1, Lw5/a;->c:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lw5/a;->a:Ljavax/xml/namespace/QName;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->hashCode()I

    move-result v0

    iget-object v1, p0, Lw5/a;->c:[I

    array-length v2, v1

    add-int/2addr v0, v2

    iget-object p0, p0, Lw5/a;->b:[I

    array-length p0, p0

    add-int/2addr v0, p0

    array-length p0, v1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    aget v2, v1, v2

    :goto_0
    add-int/2addr v0, v2

    return v0
.end method
