.class public Lorg/apache/poi/xssf/streaming/SXSSFDrawing;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/ss/usermodel/Drawing;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/poi/ss/usermodel/Drawing<",
        "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
        ">;"
    }
.end annotation


# instance fields
.field private final _drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

.field private final _wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFDrawing;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    iput-object p2, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    return-void
.end method


# virtual methods
.method public createAnchor(IIIIIIII)Lorg/apache/poi/ss/usermodel/ClientAnchor;
    .locals 9

    move-object v0, p0

    iget-object v0, v0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createAnchor(IIIIIIII)Lorg/apache/poi/xssf/usermodel/XSSFClientAnchor;

    move-result-object v0

    return-object v0
.end method

.method public createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/ss/usermodel/Comment;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {p0, p1}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createCellComment(Lorg/apache/poi/ss/usermodel/ClientAnchor;)Lorg/apache/poi/xssf/usermodel/XSSFComment;

    move-result-object p0

    return-object p0
.end method

.method public createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/ss/usermodel/ObjectData;
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createObjectData(Lorg/apache/poi/ss/usermodel/ClientAnchor;II)Lorg/apache/poi/xssf/usermodel/XSSFObjectData;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/ss/usermodel/Picture;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    move-result-object p0

    return-object p0
.end method

.method public createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/streaming/SXSSFPicture;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    .line 2
    invoke-virtual {v0, p1, p2}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->createPicture(Lorg/apache/poi/ss/usermodel/ClientAnchor;I)Lorg/apache/poi/xssf/usermodel/XSSFPicture;

    move-result-object p1

    .line 3
    new-instance p2, Lorg/apache/poi/xssf/streaming/SXSSFPicture;

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_wb:Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;

    invoke-direct {p2, p0, p1}, Lorg/apache/poi/xssf/streaming/SXSSFPicture;-><init>(Lorg/apache/poi/xssf/streaming/SXSSFWorkbook;Lorg/apache/poi/xssf/usermodel/XSSFPicture;)V

    return-object p2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Lorg/apache/poi/xssf/usermodel/XSSFShape;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/poi/xssf/streaming/SXSSFDrawing;->_drawing:Lorg/apache/poi/xssf/usermodel/XSSFDrawing;

    invoke-virtual {p0}, Lorg/apache/poi/xssf/usermodel/XSSFDrawing;->getShapes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->spliterator()Ljava/util/Spliterator;

    move-result-object p0

    return-object p0
.end method
