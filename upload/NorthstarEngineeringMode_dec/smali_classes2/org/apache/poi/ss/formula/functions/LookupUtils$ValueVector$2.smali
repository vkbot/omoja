.class Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->reverseIndexIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private pos:I

.field final synthetic this$0:Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;


# direct methods
.method public constructor <init>(Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;->this$0:Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector;->getSize()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;->pos:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    iget p0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;->pos:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Integer;
    .locals 1

    iget v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;->pos:I

    if-ltz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/ss/formula/functions/LookupUtils$ValueVector$2;->next()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
