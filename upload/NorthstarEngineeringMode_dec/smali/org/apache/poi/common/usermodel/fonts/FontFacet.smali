.class public interface abstract Lorg/apache/poi/common/usermodel/fonts/FontFacet;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getFontData()Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWeight()I
    .locals 0

    const/16 p0, 0x190

    return p0
.end method

.method public isItalic()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setItalic(Z)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontFacet is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWeight(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontFacet is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
