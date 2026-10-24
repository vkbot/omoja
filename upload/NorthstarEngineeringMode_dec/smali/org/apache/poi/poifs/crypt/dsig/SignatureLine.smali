.class public abstract Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;
    }
.end annotation


# static fields
.field private static final MS_OFFICE_URN:Ljava/lang/String; = "urn:schemas-microsoft-com:office:office"

.field protected static final QNAME_SIGNATURE_LINE:Ljavax/xml/namespace/QName;


# instance fields
.field private allowComments:Ljava/lang/Boolean;

.field private caption:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private invalidStamp:Ljava/lang/String;

.field private plainSignature:[B

.field private setupId:Lorg/apache/poi/hpsf/ClassID;

.field private signatureShape:Ld3/e;

.field private signingInstructions:Ljava/lang/String;

.field private suggestedSigner:Ljava/lang/String;

.field private suggestedSigner2:Ljava/lang/String;

.field private suggestedSignerEmail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljavax/xml/namespace/QName;

    const-string/jumbo v1, "urn:schemas-microsoft-com:office:office"

    const-string/jumbo v2, "signatureline"

    invoke-direct {v0, v1, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->QNAME_SIGNATURE_LINE:Ljavax/xml/namespace/QName;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Before signing the document, verify that the content you are signing is correct."

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signingInstructions:Ljava/lang/String;

    const-string v0, "invalid"

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->invalidStamp:Ljava/lang/String;

    return-void
.end method

.method private determineContentType()V
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainSignature:[B

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/PictureType;->valueOf(Lorg/apache/poi/poifs/filesystem/FileMagic;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-eq v0, v1, :cond_0

    iget-object v0, v0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown image type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lorg/apache/xmlbeans/XmlObject;Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->generateImage(ZZ)[B

    move-result-object v0

    sget-object v1, Ld3/c;->n:Lorg/apache/xmlbeans/impl/schema/b;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/schema/b;->a()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Ld3/c;

    invoke-interface {v1}, Ld3/c;->addNewShape()Ld3/e;

    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p1}, Li5/p0;->P0()Li5/p0$a;

    invoke-interface {v1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1, p1}, Li5/p0;->K(Li5/p0;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v1}, Li5/p0;->close()V

    invoke-interface {p1}, Li5/p0;->q1()Z

    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v1

    check-cast v1, Ld3/e;

    iput-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p1}, Li5/p0;->close()V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    invoke-interface {p1}, Ld3/e;->r()V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    invoke-interface {p1}, Ld3/e;->s1()V

    iget-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    const-string/jumbo v1, "rect"

    invoke-interface {p1, v1}, Ld3/e;->setType(Ljava/lang/String;)V

    sget-object p1, Lorg/apache/poi/common/usermodel/PictureType;->PNG:Lorg/apache/poi/common/usermodel/PictureType;

    invoke-interface {p2, v0, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine$AddPictureData;->addPictureData([BLorg/apache/poi/common/usermodel/PictureType;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    invoke-interface {p2}, Ld3/e;->r1()Ld3/d;

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setRelationId(Ld3/d;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_4 .. :try_end_4} :catch_0

    throw p2

    :catch_0
    move-exception p0

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz v1, :cond_0

    :try_start_6
    invoke-interface {v1}, Li5/p0;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v0

    :try_start_7
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p1, :cond_1

    :try_start_9
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lorg/apache/poi/openxml4j/exceptions/InvalidFormatException; {:try_start_a .. :try_end_a} :catch_0

    :goto_3
    new-instance p1, Lorg/apache/poi/ooxml/POIXMLException;

    const-string p2, "Can\'t generate signature line image"

    invoke-direct {p1, p2, p0}, Lorg/apache/poi/ooxml/POIXMLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public generateImage(ZZ)[B
    .locals 23

    move-object/from16 v0, p0

    new-instance v1, Ljava/awt/image/BufferedImage;

    const/16 v2, 0x190

    const/16 v3, 0x96

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v2

    sget-object v3, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v3, Ljava/awt/RenderingHints;->KEY_ALPHA_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v3, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v3, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v5, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x1f4

    new-array v6, v6, [C

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const-string v6, "\u0000"

    const-string v7, " "

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getCaption()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getDefaultCaption()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getCaption()Ljava/lang/String;

    move-result-object v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "X\n"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(?m)^"

    const-string v7, "    "

    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/text/AttributedString;

    invoke-direct {v5, v3}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/awt/font/TextAttribute;->FAMILY:Ljava/awt/font/TextAttribute;

    const-string v7, "SansSerif"

    invoke-virtual {v5, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;)V

    sget-object v6, Ljava/awt/font/TextAttribute;->UNDERLINE:Ljava/awt/font/TextAttribute;

    sget-object v7, Ljava/awt/font/TextAttribute;->UNDERLINE_ON:Ljava/lang/Integer;

    const/16 v8, 0xa

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    invoke-virtual {v5, v6, v7, v4, v9}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    sget-object v6, Ljava/awt/font/TextAttribute;->SIZE:Ljava/awt/font/TextAttribute;

    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v9, v4}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v5, v6, v7, v4, v10}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    sget-object v6, Ljava/awt/Color;->BLACK:Ljava/awt/Color;

    invoke-virtual {v2, v6}, Ljava/awt/Graphics2D;->setColor(Ljava/awt/Color;)V

    invoke-virtual {v5}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v5

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v6

    new-instance v7, Ljava/awt/font/LineBreakMeasurer;

    invoke-direct {v7, v5, v6}, Ljava/awt/font/LineBreakMeasurer;-><init>(Ljava/text/AttributedCharacterIterator;Ljava/awt/font/FontRenderContext;)V

    const/high16 v6, 0x42a00000    # 80.0f

    move v10, v9

    :goto_1
    invoke-virtual {v7}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v11

    invoke-interface {v5}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v12

    if-ge v11, v12, :cond_3

    invoke-virtual {v7}, Ljava/awt/font/LineBreakMeasurer;->getPosition()I

    move-result v11

    invoke-virtual {v3, v8, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    :goto_2
    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x41200000    # 10.0f

    sub-float/2addr v12, v13

    invoke-virtual {v7, v12, v11, v9}, Ljava/awt/font/LineBreakMeasurer;->nextLayout(FIZ)Ljava/awt/font/TextLayout;

    move-result-object v11

    const/4 v12, 0x1

    if-eq v10, v12, :cond_2

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getAscent()F

    move-result v12

    add-float/2addr v6, v12

    :cond_2
    const/high16 v12, 0x40a00000    # 5.0f

    invoke-virtual {v11, v2, v12, v6}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getDescent()F

    move-result v12

    invoke-virtual {v11}, Ljava/awt/font/TextLayout;->getLeading()F

    move-result v11

    add-float/2addr v12, v11

    add-float/2addr v6, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_4

    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainSignature:[B

    if-eqz v3, :cond_4

    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_4

    invoke-static {v2, v3}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v3

    iget-object v5, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainSignature:[B

    iget-object v6, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    invoke-interface {v3, v5, v6}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v5

    int-to-double v5, v5

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    sub-double/2addr v5, v7

    invoke-interface {v3}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v10

    div-double/2addr v5, v10

    invoke-virtual {v9}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v10

    const-wide v14, 0x4057c00000000000L    # 95.0

    div-double/2addr v14, v10

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-virtual {v9}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v10

    mul-double v19, v10, v5

    invoke-virtual {v9}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v9

    mul-double v21, v9, v5

    new-instance v5, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v6

    int-to-double v9, v6

    sub-double v9, v9, v19

    div-double/2addr v9, v12

    add-double v15, v9, v7

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    sub-double v17, v6, v21

    move-object v14, v5

    invoke-direct/range {v14 .. v22}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v3, v2, v5}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z

    :cond_4
    if-eqz p2, :cond_5

    iget-object v3, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->invalidStamp:Ljava/lang/String;

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/awt/Font;

    const-string v5, "Lucida Bright"

    const/16 v6, 0x3c

    invoke-direct {v3, v5, v4, v6}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Ljava/awt/Graphics2D;->setFont(Ljava/awt/Font;)V

    const-wide/high16 v3, -0x3fd2000000000000L    # -15.0

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    int-to-double v3, v3

    div-double v8, v3, v12

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v3

    int-to-double v3, v3

    div-double v10, v3, v12

    move-object v5, v2

    invoke-virtual/range {v5 .. v11}, Ljava/awt/Graphics2D;->rotate(DDD)V

    new-instance v3, Ljava/awt/font/TextLayout;

    iget-object v0, v0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->invalidStamp:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->getFont()Ljava/awt/Font;

    move-result-object v4

    invoke-virtual {v2}, Ljava/awt/Graphics2D;->getFontRenderContext()Ljava/awt/font/FontRenderContext;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Ljava/awt/font/TextLayout;-><init>(Ljava/lang/String;Ljava/awt/Font;Ljava/awt/font/FontRenderContext;)V

    invoke-virtual {v3}, Ljava/awt/font/TextLayout;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getWidth()D

    move-result-wide v6

    sub-double/2addr v4, v6

    div-double/2addr v4, v12

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getX()D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-float v4, v4

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v5

    int-to-double v5, v5

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getHeight()D

    move-result-wide v7

    sub-double/2addr v5, v7

    div-double/2addr v5, v12

    invoke-virtual {v0}, Ljava/awt/geom/Rectangle2D;->getY()D

    move-result-wide v7

    sub-double/2addr v5, v7

    double-to-float v0, v5

    const/high16 v5, 0x40000000    # 2.0f

    add-float/2addr v5, v4

    float-to-double v5, v5

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v7, v0

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/awt/font/TextLayout;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v5

    const/4 v6, 0x3

    const v7, 0x3e99999a    # 0.3f

    invoke-static {v6, v7}, Ljava/awt/AlphaComposite;->getInstance(IF)Ljava/awt/AlphaComposite;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/awt/Graphics2D;->setComposite(Ljava/awt/Composite;)V

    sget-object v6, Ljava/awt/Color;->RED:Ljava/awt/Color;

    invoke-virtual {v2, v6}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {v2, v5}, Ljava/awt/Graphics2D;->draw(Ljava/awt/Shape;)V

    new-instance v5, Ljava/awt/GradientPaint;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Ljava/awt/Color;->RED:Ljava/awt/Color;

    const/high16 v11, 0x41f00000    # 30.0f

    const/high16 v12, 0x41a00000    # 20.0f

    new-instance v13, Ljava/awt/Color;

    const/16 v6, 0xff

    const/16 v7, 0x80

    invoke-direct {v13, v7, v7, v6}, Ljava/awt/Color;-><init>(III)V

    const/4 v14, 0x1

    move-object v7, v5

    invoke-direct/range {v7 .. v14}, Ljava/awt/GradientPaint;-><init>(FFLjava/awt/Color;FFLjava/awt/Color;Z)V

    invoke-virtual {v2, v5}, Ljava/awt/Graphics2D;->setPaint(Ljava/awt/Paint;)V

    invoke-virtual {v3, v2, v4, v0}, Ljava/awt/font/TextLayout;->draw(Ljava/awt/Graphics2D;FF)V

    :cond_5
    invoke-virtual {v2}, Ljava/awt/Graphics2D;->dispose()V

    sget v0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object v0

    const-string v2, "PNG"

    invoke-static {v1, v2, v0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-virtual {v0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v0

    return-object v0
.end method

.method public getAllowComments()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->allowComments:Ljava/lang/Boolean;

    return-object p0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->caption:Ljava/lang/String;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultCaption()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSigner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSigner2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSignerEmail:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInvalidStamp()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->invalidStamp:Ljava/lang/String;

    return-object p0
.end method

.method public getPlainSignature()[B
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainSignature:[B

    return-object p0
.end method

.method public getSetupId()Lorg/apache/poi/hpsf/ClassID;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setupId:Lorg/apache/poi/hpsf/ClassID;

    return-object p0
.end method

.method public getSignatureShape()Ld3/e;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    return-object p0
.end method

.method public getSigningInstructions()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signingInstructions:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestedSigner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSigner:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestedSigner2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSigner2:Ljava/lang/String;

    return-object p0
.end method

.method public getSuggestedSignerEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSignerEmail:Ljava/lang/String;

    return-object p0
.end method

.method public parse()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ld3/e;->E0()Lz2/b;

    move-result-object v0

    new-instance v1, Lorg/apache/poi/hpsf/ClassID;

    invoke-interface {v0}, Lz2/b;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/poi/hpsf/ClassID;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSetupId(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-interface {v0}, Lz2/b;->r0()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse;->TRUE:Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    invoke-interface {v0}, Lz2/b;->R()Lorg/openxmlformats/schemas/officeDocument/x2006/sharedTypes/STTrueFalse$Enum;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setAllowComments(Ljava/lang/Boolean;)V

    invoke-interface {v0}, Lz2/b;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSuggestedSigner(Ljava/lang/String;)V

    invoke-interface {v0}, Lz2/b;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSuggestedSigner2(Ljava/lang/String;)V

    invoke-interface {v0}, Lz2/b;->w0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSuggestedSignerEmail(Ljava/lang/String;)V

    invoke-interface {v0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/xml/namespace/QName;

    const-string/jumbo v2, "urn:schemas-microsoft-com:office:office"

    const-string/jumbo v3, "signinginstructions"

    invoke-direct {v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Li5/p0;->V(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setSigningInstructions(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-interface {v0}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public plainPng()[B
    .locals 13

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getPlainSignature()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf([B)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/poi/common/usermodel/PictureType;->valueOf(Lorg/apache/poi/poifs/filesystem/FileMagic;)Lorg/apache/poi/common/usermodel/PictureType;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/common/usermodel/PictureType;->UNKNOWN:Lorg/apache/poi/common/usermodel/PictureType;

    if-eq v0, v1, :cond_1

    iget-object v1, v0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/apache/poi/sl/draw/DrawPictureShape;->getImageRenderer(Ljava/awt/Graphics2D;Ljava/lang/String;)Lorg/apache/poi/sl/draw/ImageRenderer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getPlainSignature()[B

    move-result-object p0

    iget-object v0, v0, Lorg/apache/poi/common/usermodel/PictureType;->contentType:Ljava/lang/String;

    invoke-interface {v1, p0, v0}, Lorg/apache/poi/sl/draw/ImageRenderer;->loadImage([BLjava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/poi/sl/draw/ImageRenderer;->getDimension()Ljava/awt/geom/Dimension2D;

    move-result-object p0

    const/16 v0, 0x12c

    int-to-double v7, v0

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v2

    mul-double/2addr v2, v7

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-int p0, v2

    new-instance v11, Ljava/awt/image/BufferedImage;

    const/4 v2, 0x2

    invoke-direct {v11, v0, p0, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v11}, Ljava/awt/image/BufferedImage;->createGraphics()Ljava/awt/Graphics2D;

    move-result-object v0

    sget-object v2, Ljava/awt/RenderingHints;->KEY_FRACTIONALMETRICS:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_FRACTIONALMETRICS_ON:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v2, Ljava/awt/RenderingHints;->KEY_ALPHA_INTERPOLATION:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ALPHA_INTERPOLATION_QUALITY:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v2, Ljava/awt/RenderingHints;->KEY_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    sget-object v2, Ljava/awt/RenderingHints;->KEY_TEXT_ANTIALIASING:Ljava/awt/RenderingHints$Key;

    sget-object v3, Ljava/awt/RenderingHints;->VALUE_TEXT_ANTIALIAS_ON:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/awt/Graphics2D;->setRenderingHint(Ljava/awt/RenderingHints$Key;Ljava/lang/Object;)V

    new-instance v12, Ljava/awt/geom/Rectangle2D$Double;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    int-to-double v9, p0

    move-object v2, v12

    invoke-direct/range {v2 .. v10}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    invoke-interface {v1, v0, v12}, Lorg/apache/poi/sl/draw/ImageRenderer;->drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z

    invoke-virtual {v0}, Ljava/awt/Graphics2D;->dispose()V

    sget p0, Lorg/apache/commons/io/output/j;->c:I

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object p0

    const-string v0, "PNG"

    invoke-static {v11, v0, p0}, Ljavax/imageio/ImageIO;->write(Ljava/awt/image/RenderedImage;Ljava/lang/String;Ljava/io/OutputStream;)Z

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " can\'t be rendered - did you provide poi-scratchpad and its dependencies (batik et al.)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported picture format"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAllowComments(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->allowComments:Ljava/lang/Boolean;

    return-void
.end method

.method public setCaption(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->caption:Ljava/lang/String;

    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setInvalidStamp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->invalidStamp:Ljava/lang/String;

    return-void
.end method

.method public setPlainSignature([B)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainSignature:[B

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    return-void
.end method

.method public abstract setRelationId(Ld3/d;Ljava/lang/String;)V
.end method

.method public setSetupId(Lorg/apache/poi/hpsf/ClassID;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->setupId:Lorg/apache/poi/hpsf/ClassID;

    return-void
.end method

.method public setSignatureShape(Ld3/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;

    return-void
.end method

.method public setSignatureShape(Lz2/b;)V
    .locals 1

    .line 2
    invoke-interface {p1}, Li5/j2;->newCursor()Li5/p0;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-interface {p1}, Li5/p0;->X0()Z

    .line 4
    invoke-interface {p1}, Li5/p0;->Z()Lorg/apache/xmlbeans/XmlObject;

    move-result-object v0

    check-cast v0, Ld3/e;

    iput-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signatureShape:Ld3/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1}, Li5/p0;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_0

    .line 7
    :try_start_2
    invoke-interface {p1}, Li5/p0;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
.end method

.method public setSigningInstructions(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->signingInstructions:Ljava/lang/String;

    return-void
.end method

.method public setSuggestedSigner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSigner:Ljava/lang/String;

    return-void
.end method

.method public setSuggestedSigner2(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSigner2:Ljava/lang/String;

    return-void
.end method

.method public setSuggestedSignerEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->suggestedSignerEmail:Ljava/lang/String;

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateSignatureConfig(Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainSignature:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->contentType:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->determineContentType()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->generateImage(ZZ)[B

    move-result-object v0

    invoke-virtual {p0, v1, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->generateImage(ZZ)[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->getSetupId()Lorg/apache/poi/hpsf/ClassID;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureImageSetupId(Lorg/apache/poi/hpsf/ClassID;)V

    invoke-virtual {p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureLine;->plainPng()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureImage([B)V

    invoke-virtual {p1, v0}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureImageValid([B)V

    invoke-virtual {p1, v1}, Lorg/apache/poi/poifs/crypt/dsig/SignatureConfig;->setSignatureImageInvalid([B)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Plain signature not initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
