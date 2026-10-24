.class public final synthetic Lm5/h1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/g1$j;


# instance fields
.field public final synthetic c:Lm5/g1$e;

.field public final synthetic r:[B

.field public final synthetic x:I

.field public final synthetic y:I


# direct methods
.method public synthetic constructor <init>(Lm5/g1$e;[BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/h1;->c:Lm5/g1$e;

    iput-object p2, p0, Lm5/h1;->r:[B

    iput p3, p0, Lm5/h1;->x:I

    iput p4, p0, Lm5/h1;->y:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 7

    iget-object v0, p0, Lm5/h1;->c:Lm5/g1$e;

    iget-object v0, v0, Lm5/g1$e;->x:Lm5/g1$e$a;

    iget-object v1, v0, Lm5/g1$e$a;->Z:Lm5/g1$e;

    iget v2, p0, Lm5/h1;->y:I

    invoke-virtual {v1, v2}, Lm5/g1$e;->a(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, -0x1

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lm5/h1;->r:[B

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    if-ge v1, v2, :cond_2

    move v2, v1

    :cond_2
    iget v1, v0, Lm5/g1$e$a;->x:I

    iget v5, v0, Lm5/g1$e$a;->r:I

    iget p0, p0, Lm5/h1;->x:I

    if-ge v1, v5, :cond_3

    iget-object v4, v0, Lm5/g1$e$a;->y:[B

    invoke-static {v4, v1, v3, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lm5/g1$e$a;->y:[B

    array-length v6, v5

    sub-int/2addr v6, v1

    if-lt v6, v2, :cond_4

    invoke-static {v5, v1, v3, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    invoke-static {v5, v1, v3, p0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lm5/g1$e$a;->y:[B

    add-int/2addr p0, v6

    sub-int v5, v2, v6

    invoke-static {v1, v4, v3, p0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p0, v0, Lm5/g1$e$a;->x:I

    add-int/2addr p0, v2

    iget-object v1, v0, Lm5/g1$e$a;->y:[B

    array-length v1, v1

    rem-int/2addr p0, v1

    iput p0, v0, Lm5/g1$e$a;->x:I

    iget p0, v0, Lm5/g1$e$a;->c:I

    add-int/2addr p0, v2

    iput p0, v0, Lm5/g1$e$a;->c:I

    move p0, v2

    goto :goto_2

    :cond_5
    :goto_1
    move p0, v4

    :goto_2
    return p0
.end method
