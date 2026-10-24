.class public Lorg/apache/poi/ddf/EscherBoolProperty;
.super Lorg/apache/poi/ddf/EscherSimpleProperty;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lorg/apache/poi/ddf/EscherPropertyTypes;I)V
    .locals 0

    .line 2
    iget-short p1, p1, Lorg/apache/poi/ddf/EscherPropertyTypes;->propNumber:S

    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    return-void
.end method

.method public constructor <init>(SI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/poi/ddf/EscherSimpleProperty;-><init>(SI)V

    return-void
.end method


# virtual methods
.method public isTrue()Z
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/ddf/EscherSimpleProperty;->getPropertyValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
