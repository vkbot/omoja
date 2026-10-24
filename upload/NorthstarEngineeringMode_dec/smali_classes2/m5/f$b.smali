.class public final Lm5/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/Object;

.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILjava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm5/f$b;->a:Ljava/lang/Object;

    iput p2, p0, Lm5/f$b;->b:I

    iput p3, p0, Lm5/f$b;->c:I

    iput-object p4, p0, Lm5/f$b;->d:Ljava/lang/Object;

    iput p5, p0, Lm5/f$b;->e:I

    instance-of p2, p1, Lm5/f$b;

    if-eqz p2, :cond_0

    check-cast p1, Lm5/f$b;

    iget p1, p1, Lm5/f$b;->f:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    instance-of p2, p4, Lm5/f$b;

    if-eqz p2, :cond_1

    check-cast p4, Lm5/f$b;

    iget p2, p4, Lm5/f$b;->f:I

    if-le p2, p1, :cond_1

    move p1, p2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lm5/f$b;->f:I

    return-void
.end method

.method public static a(Lm5/f$b;Ljava/lang/StringBuffer;II)V
    .locals 4

    iget v0, p0, Lm5/f$b;->e:I

    iget-object v1, p0, Lm5/f$b;->d:Ljava/lang/Object;

    iget v2, p0, Lm5/f$b;->c:I

    if-ge p2, v2, :cond_0

    sub-int/2addr v2, p2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v3, p0, Lm5/f$b;->b:I

    add-int/2addr v3, p2

    iget-object p0, p0, Lm5/f$b;->a:Ljava/lang/Object;

    invoke-static {p1, p0, v3, v2}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    if-le p3, v2, :cond_1

    sub-int/2addr p3, v2

    invoke-static {p1, v1, v0, p3}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int/2addr v0, p2

    sub-int/2addr v0, v2

    invoke-static {p1, v1, v0, p3}, Lm5/f;->d(Ljava/lang/StringBuffer;Ljava/lang/Object;II)V

    :cond_1
    :goto_0
    return-void
.end method
