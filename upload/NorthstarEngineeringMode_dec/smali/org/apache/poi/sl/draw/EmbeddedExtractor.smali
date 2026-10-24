.class public interface abstract Lorg/apache/poi/sl/draw/EmbeddedExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;
    }
.end annotation


# virtual methods
.method public getEmbeddings()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/apache/poi/sl/draw/EmbeddedExtractor$EmbeddedPart;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
