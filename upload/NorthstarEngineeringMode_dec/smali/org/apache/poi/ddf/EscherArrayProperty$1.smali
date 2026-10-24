.class Lorg/apache/poi/ddf/EscherArrayProperty$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ddf/EscherArrayProperty;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "[B>;"
    }
.end annotation


# instance fields
.field idx:I

.field final synthetic this$0:Lorg/apache/poi/ddf/EscherArrayProperty;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherArrayProperty;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->this$0:Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    iget-object p0, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->this$0:Lorg/apache/poi/ddf/EscherArrayProperty;

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty;->getNumberOfElementsInArray()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;->next()[B

    move-result-object p0

    return-object p0
.end method

.method public next()[B
    .locals 3

    .line 2
    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherArrayProperty$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->this$0:Lorg/apache/poi/ddf/EscherArrayProperty;

    iget v1, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/poi/ddf/EscherArrayProperty$1;->idx:I

    .line 3
    invoke-virtual {v0, v1}, Lorg/apache/poi/ddf/EscherArrayProperty;->getElement(I)[B

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not yet implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
