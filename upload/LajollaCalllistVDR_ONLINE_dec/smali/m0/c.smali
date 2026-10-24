.class public abstract Lm0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg2/e;->b:Lg2/e;

    if-nez v0, :cond_0

    new-instance v0, Lg2/e;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lg2/e;-><init>(I)V

    sput-object v0, Lg2/e;->b:Lg2/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 2

    iget v0, p0, Lm0/c;->d:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lm0/c;->b:Ljava/nio/ByteBuffer;

    iget v1, p0, Lm0/c;->c:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(ILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p2, p0, Lm0/c;->b:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    iput p1, p0, Lm0/c;->a:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lm0/c;->c:I

    iget-object p2, p0, Lm0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Lm0/c;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lm0/c;->a:I

    iput p1, p0, Lm0/c;->c:I

    iput p1, p0, Lm0/c;->d:I

    :goto_0
    return-void
.end method
