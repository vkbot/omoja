.class public final Lk5/m$h;
.super Lk5/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk5/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "h"
.end annotation


# instance fields
.field public w1:Ljava/lang/String;

.field public final x1:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lk5/m;-><init>(I)V

    iput-object p3, p0, Lk5/m$h;->w1:Ljava/lang/String;

    iput p2, p0, Lk5/m$h;->x1:I

    return-void
.end method


# virtual methods
.method public final A(I)Ljava/lang/String;
    .locals 5

    iget p1, p0, Lk5/m;->c:I

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\\"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lk5/m$h;->x1:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lk5/m$h;->w1:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, ".*+?{[()|\\^$"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sub-int v4, p1, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    if-lez v2, :cond_1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v4, 0x5c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_5
    return-object p0
.end method

.method public final w()I
    .locals 0

    iget p0, p0, Lk5/m$h;->x1:I

    return p0
.end method

.method public final x()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lk5/m$h;->w1:Ljava/lang/String;

    return-object p0
.end method
