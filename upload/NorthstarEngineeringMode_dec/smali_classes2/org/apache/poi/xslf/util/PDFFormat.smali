.class public Lorg/apache/poi/xslf/util/PDFFormat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/xslf/util/OutputFormat;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private contentStream:Lorg/apache/pdfbox/pdmodel/PDPageContentStream;

.field private final document:Lorg/apache/pdfbox/pdmodel/PDDocument;

.field private fontTextDrawer:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;

.field private pdfBoxGraphics2D:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance p1, Lorg/apache/poi/xslf/util/PDFFontMapper;

    invoke-direct {p1, p2, p3}, Lorg/apache/poi/xslf/util/PDFFontMapper;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PDFFormat;->fontTextDrawer:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;

    :cond_0
    new-instance p1, Lorg/apache/pdfbox/pdmodel/PDDocument;

    invoke-direct {p1}, Lorg/apache/pdfbox/pdmodel/PDDocument;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xslf/util/PDFFormat;->document:Lorg/apache/pdfbox/pdmodel/PDDocument;

    return-void
.end method


# virtual methods
.method public addSlide(DD)Ljava/awt/Graphics2D;
    .locals 2

    new-instance v0, Lorg/apache/pdfbox/pdmodel/PDPage;

    new-instance v1, Lorg/apache/pdfbox/pdmodel/common/PDRectangle;

    double-to-float p1, p1

    double-to-float p2, p3

    invoke-direct {v1, p1, p2}, Lorg/apache/pdfbox/pdmodel/common/PDRectangle;-><init>(FF)V

    invoke-direct {v0, v1}, Lorg/apache/pdfbox/pdmodel/PDPage;-><init>(Lorg/apache/pdfbox/pdmodel/common/PDRectangle;)V

    iget-object p3, p0, Lorg/apache/poi/xslf/util/PDFFormat;->document:Lorg/apache/pdfbox/pdmodel/PDDocument;

    invoke-virtual {p3, v0}, Lorg/apache/pdfbox/pdmodel/PDDocument;->addPage(Lorg/apache/pdfbox/pdmodel/PDPage;)V

    new-instance p3, Lorg/apache/pdfbox/pdmodel/PDPageContentStream;

    iget-object p4, p0, Lorg/apache/poi/xslf/util/PDFFormat;->document:Lorg/apache/pdfbox/pdmodel/PDDocument;

    invoke-direct {p3, p4, v0}, Lorg/apache/pdfbox/pdmodel/PDPageContentStream;-><init>(Lorg/apache/pdfbox/pdmodel/PDDocument;Lorg/apache/pdfbox/pdmodel/PDPage;)V

    iput-object p3, p0, Lorg/apache/poi/xslf/util/PDFFormat;->contentStream:Lorg/apache/pdfbox/pdmodel/PDPageContentStream;

    new-instance p3, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;

    iget-object p4, p0, Lorg/apache/poi/xslf/util/PDFFormat;->document:Lorg/apache/pdfbox/pdmodel/PDDocument;

    invoke-direct {p3, p4, p1, p2}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;-><init>(Lorg/apache/pdfbox/pdmodel/PDDocument;FF)V

    iput-object p3, p0, Lorg/apache/poi/xslf/util/PDFFormat;->pdfBoxGraphics2D:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;

    iget-object p1, p0, Lorg/apache/poi/xslf/util/PDFFormat;->fontTextDrawer:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;

    if-eqz p1, :cond_0

    invoke-virtual {p3, p1}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;->setFontTextDrawer(Lde/rototor/pdfbox/graphics2d/IPdfBoxGraphics2DFontTextDrawer;)V

    :cond_0
    iget-object p0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->pdfBoxGraphics2D:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;

    return-object p0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->document:Lorg/apache/pdfbox/pdmodel/PDDocument;

    invoke-virtual {v0}, Lorg/apache/pdfbox/pdmodel/PDDocument;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->fontTextDrawer:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->fontTextDrawer:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2DFontTextDrawer;->close()V

    :cond_1
    throw v0
.end method

.method public writeDocument(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->document:Lorg/apache/pdfbox/pdmodel/PDDocument;

    new-instance p1, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/pdfbox/pdmodel/PDDocument;->save(Ljava/io/File;)V

    return-void
.end method

.method public writeSlide(Lorg/apache/poi/xslf/util/MFProxy;Ljava/io/File;)V
    .locals 0

    :try_start_0
    iget-object p1, p0, Lorg/apache/poi/xslf/util/PDFFormat;->pdfBoxGraphics2D:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;

    invoke-virtual {p1}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;->dispose()V

    iget-object p1, p0, Lorg/apache/poi/xslf/util/PDFFormat;->pdfBoxGraphics2D:Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;

    invoke-virtual {p1}, Lde/rototor/pdfbox/graphics2d/PdfBoxGraphics2D;->getXFormObject()Lorg/apache/pdfbox/pdmodel/graphics/form/PDFormXObject;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/xslf/util/PDFFormat;->contentStream:Lorg/apache/pdfbox/pdmodel/PDPageContentStream;

    invoke-virtual {p2, p1}, Lorg/apache/pdfbox/pdmodel/PDPageContentStream;->drawForm(Lorg/apache/pdfbox/pdmodel/graphics/form/PDFormXObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->contentStream:Lorg/apache/pdfbox/pdmodel/PDPageContentStream;

    invoke-virtual {p0}, Lorg/apache/pdfbox/pdmodel/PDPageContentStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lorg/apache/poi/xslf/util/PDFFormat;->contentStream:Lorg/apache/pdfbox/pdmodel/PDPageContentStream;

    invoke-virtual {p0}, Lorg/apache/pdfbox/pdmodel/PDPageContentStream;->close()V

    throw p1
.end method
