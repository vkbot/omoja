.class public Lorg/apache/poi/sl/image/ImageHeaderWMF;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field public static final APMHEADER_KEY:I = -0x65393229

.field private static final LOG:La5/d;


# instance fields
.field private final bottom:I

.field private checksum:I

.field private final handle:I

.field private final inch:I

.field private final left:I

.field private final reserved:I

.field private final right:I

.field private final top:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;

    invoke-static {v0}, La5/c;->a(Ljava/lang/Class;)Le5/g;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:La5/d;

    return-void
.end method

.method public constructor <init>(Ljava/awt/Rectangle;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    .line 2
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    .line 3
    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    .line 4
    iget v1, p1, Ljava/awt/Rectangle;->x:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    .line 5
    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    const/16 p1, 0x48

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0x4

    const v2, -0x65393229

    if-eq v0, v2, :cond_0

    sget-object p1, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:La5/d;

    .line 8
    invoke-interface {p1}, La5/d;->g()La5/b;

    move-result-object p1

    const-string p2, "WMF file doesn\'t contain a placeable header - ignore parsing"

    invoke-interface {p1, p2}, La5/b;->f(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    const/16 p2, 0xc8

    iput p2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    iput p2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    const/16 p2, 0x48

    iput p2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    return-void

    .line 9
    :cond_0
    invoke-static {p1, v1}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->handle:I

    add-int/lit8 v0, p2, 0x6

    .line 10
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    add-int/lit8 v0, p2, 0x8

    .line 11
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    add-int/lit8 v0, p2, 0xa

    .line 12
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    add-int/lit8 v0, p2, 0xc

    .line 13
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    add-int/lit8 v0, p2, 0xe

    .line 14
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getUShort([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    add-int/lit8 v0, p2, 0x10

    .line 15
    invoke-static {p1, v0}, Lorg/apache/poi/util/LittleEndian;->getInt([BI)I

    move-result v0

    iput v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->reserved:I

    add-int/lit8 p2, p2, 0x14

    .line 16
    invoke-static {p1, p2}, Lorg/apache/poi/util/LittleEndian;->getShort([BI)S

    move-result p1

    iput p1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->checksum:I

    .line 17
    invoke-virtual {p0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getChecksum()I

    move-result p0

    if-eq p1, p0, :cond_1

    sget-object p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->LOG:La5/d;

    .line 18
    invoke-interface {p0}, La5/d;->g()La5/b;

    move-result-object p0

    const-string p1, "WMF checksum does not match the header data"

    invoke-interface {p0, p1}, La5/b;->f(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getBounds()Ljava/awt/Rectangle;
    .locals 4

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    iget v2, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    sub-int/2addr v3, v1

    iget p0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    sub-int/2addr p0, v2

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getChecksum()I
    .locals 2

    const v0, -0xa8ef

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    xor-int/2addr v0, v1

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    xor-int/2addr v0, v1

    iget p0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public getLength()I
    .locals 0

    const/16 p0, 0x16

    return p0
.end method

.method public getSize()Ljava/awt/Dimension;
    .locals 6

    iget v0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4052000000000000L    # 72.0

    div-double/2addr v2, v0

    new-instance v0, Ljava/awt/Dimension;

    iget v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    sub-int/2addr v1, v4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    iget v4, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    iget p0, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    sub-int/2addr v4, p0

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int p0, v2

    invoke-direct {v0, v1, p0}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)V
    .locals 4

    const/16 v0, 0x16

    new-array v0, v0, [B

    const v1, -0x65393229

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/4 v1, 0x6

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->left:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v1, 0x8

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->top:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v1, 0xa

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->right:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v1, 0xc

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->bottom:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v1, 0xe

    iget v3, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->inch:I

    invoke-static {v0, v1, v3}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1, v2}, Lorg/apache/poi/util/LittleEndian;->putInt([BII)V

    invoke-virtual {p0}, Lorg/apache/poi/sl/image/ImageHeaderWMF;->getChecksum()I

    move-result v1

    iput v1, p0, Lorg/apache/poi/sl/image/ImageHeaderWMF;->checksum:I

    const/16 p0, 0x14

    invoke-static {v0, p0, v1}, Lorg/apache/poi/util/LittleEndian;->putUShort([BII)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
