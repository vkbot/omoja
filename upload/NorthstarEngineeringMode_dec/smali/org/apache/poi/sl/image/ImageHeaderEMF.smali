.class public Lorg/apache/poi/sl/image/ImageHeaderEMF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field private static final EMF_SIGNATURE:Ljava/lang/String; = " EMF"

.field private static final LOG:La5/d;


# instance fields
.field private final deviceBounds:Ljava/awt/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:La5/d;

    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string p2, "Invalid EMF picture - invalid type"

    invoke-interface {p1, p2}, La5/b;->f(Ljava/lang/String;)V

    new-instance p1, Ljava/awt/Rectangle;

    const/16 p2, 0xc8

    invoke-direct {p1, v2, v2, p2, p2}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0xc

    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v1

    add-int/lit8 v3, p2, 0x10

    invoke-static {p1, v3}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v3

    add-int/lit8 v4, p2, 0x14

    invoke-static {p1, v4}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v4

    new-instance v5, Ljava/awt/Rectangle;

    sub-int/2addr v3, v0

    const/4 v6, -0x1

    if-ne v3, v6, :cond_1

    move v3, v2

    :cond_1
    sub-int/2addr v4, v1

    if-ne v4, v6, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_0
    invoke-direct {v5, v0, v1, v3, v2}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v5, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    add-int/lit8 p2, p2, 0x28

    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x4

    sget-object v1, Lorg/apache/poi/util/LocaleUtil;->CHARSET_1252:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string p1, " EMF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->LOG:La5/d;

    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "Invalid EMF picture - invalid signature"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    return-object p0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/sl/image/ImageHeaderEMF;->deviceBounds:Ljava/awt/Rectangle;

    invoke-virtual {p0}, Ljava/awt/Rectangle;->getSize()Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method
