.class public abstract Ln0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/nio/ByteBuffer;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Ly1/e;->a:Ly1/e;

    if-nez p0, :cond_0

    new-instance p0, Ly1/e;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ly1/e;-><init>(I)V

    sput-object p0, Ly1/e;->a:Ly1/e;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    iget v0, p0, Ln0/c;->d:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ln0/c;->b:Ljava/nio/ByteBuffer;

    iget p0, p0, Ln0/c;->c:I

    add-int/2addr p0, p1

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final b(ILjava/nio/ByteBuffer;)V
    .locals 0

    iput-object p2, p0, Ln0/c;->b:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_0

    iput p1, p0, Ln0/c;->a:I

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Ln0/c;->c:I

    iget-object p2, p0, Ln0/c;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result p1

    iput p1, p0, Ln0/c;->d:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Ln0/c;->a:I

    iput p1, p0, Ln0/c;->c:I

    iput p1, p0, Ln0/c;->d:I

    :goto_0
    return-void
.end method
