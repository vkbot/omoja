.class public final Lm5/z0$i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/z0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "i"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:[C

.field public final d:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Lm5/z0$i;->c:[C

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lm5/z0$i;->b:I

    iget-object v1, p0, Lm5/z0$i;->d:Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {v1, p3, p1, p2}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    return-void

    :cond_1
    instance-of v0, p3, [C

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    check-cast p3, [C

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lm5/z0$i;->c:[C

    array-length v4, v0

    if-gt p2, v4, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x4000

    if-gt p2, v0, :cond_4

    new-array v0, v0, [C

    iput-object v0, p0, Lm5/z0$i;->c:[C

    goto :goto_0

    :cond_4
    new-array v0, p2, [C

    :goto_0
    invoke-static {v0, v3, p3, p1, p2}, Lm5/f;->b([CILjava/lang/Object;II)V

    move-object p3, v0

    move p1, v3

    :goto_1
    move v0, v3

    :goto_2
    if-ge v3, p2, :cond_a

    add-int v4, p1, v3

    aget-char v4, p3, v4

    const/4 v5, 0x2

    const/16 v6, 0x20

    if-eq v4, v6, :cond_7

    const/16 v7, 0xa

    if-eq v4, v7, :cond_7

    const/16 v7, 0xd

    if-eq v4, v7, :cond_7

    const/16 v7, 0x9

    if-ne v4, v7, :cond_5

    goto :goto_3

    :cond_5
    iget v4, p0, Lm5/z0$i;->a:I

    if-ne v4, v2, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    iput v5, p0, Lm5/z0$i;->a:I

    goto :goto_4

    :cond_7
    :goto_3
    add-int v4, p1, v0

    sub-int v0, v3, v0

    invoke-virtual {v1, p3, v4, v0}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v3, 0x1

    iget v4, p0, Lm5/z0$i;->b:I

    if-ne v4, v5, :cond_8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    iget v4, p0, Lm5/z0$i;->a:I

    if-ne v4, v5, :cond_9

    iput v2, p0, Lm5/z0$i;->a:I

    :cond_9
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    add-int/2addr p1, v0

    sub-int/2addr p2, v0

    invoke-virtual {v1, p3, p1, p2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method
