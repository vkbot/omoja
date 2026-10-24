.class public Lorg/apache/poi/hpsf/VariantBool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final LOG:La5/d;

.field static final SIZE:I = 0x2


# instance fields
.field private _value:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hpsf/VariantBool;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hpsf/VariantBool;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return p0
.end method

.method public read(Lorg/apache/poi/util/LittleEndianByteArrayInputStream;)V
    .locals 3

    invoke-virtual {p1}, Lorg/apache/poi/util/LittleEndianByteArrayInputStream;->readShort()S

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/poi/hpsf/VariantBool;->LOG:La5/d;

    invoke-interface {v0}, La5/d;->g()La5/b;

    move-result-object v0

    invoke-static {p1}, Lg5/b0;->b(S)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "VARIANT_BOOL value \'{}\' is incorrect"

    invoke-interface {v0, p1, v2}, La5/b;->h(Ljava/lang/Object;Ljava/lang/String;)V

    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    :goto_0
    return-void
.end method

.method public setValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/poi/hpsf/VariantBool;->_value:Z

    return-void
.end method
