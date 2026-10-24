.class public interface abstract Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 0

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object p0
.end method

.method public getFacets()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/apache/poi/common/usermodel/fonts/FontFacet;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 0

    sget-object p0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_DONTCARE:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object p0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPanose()[B
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getTypeface()Ljava/lang/String;
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontInfo is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontInfo is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIndex(I)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontInfo is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPanose([B)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontInfo is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontInfo is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "FontInfo is read-only."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
