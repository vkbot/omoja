.class public final synthetic Ln5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ln5/d;

.field public final synthetic b:I

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Ln5/d;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/c;->a:Ln5/d;

    iput p2, p0, Ln5/c;->b:I

    iput-object p3, p0, Ln5/c;->c:[B

    return-void
.end method


# virtual methods
.method public final a([I[I[I)B
    .locals 6

    iget-object v0, p0, Ln5/c;->a:Ln5/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v2, p3, v1

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Ln5/c;->b:I

    if-gt v3, v4, :cond_1

    aget v3, p1, v1

    aget v5, p2, v1

    iget-object p0, p0, Ln5/c;->c:[B

    if-lt v3, v5, :cond_0

    array-length v3, p0

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p2, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    aput v1, p1, v1

    :cond_0
    aget p2, p3, v1

    add-int/lit8 p2, p2, 0x1

    aput p2, p3, v1

    aget p2, p1, v1

    add-int/lit8 p3, p2, 0x1

    aput p3, p1, v1

    aget-byte p0, p0, p2

    return p0

    :cond_1
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "malformed input: partial character at end"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
